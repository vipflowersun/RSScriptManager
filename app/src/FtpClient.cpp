#include "FtpClient.h"
#include "curl/curl.h"

#include <fstream>
#include <string>
#include <list>
#include <vector>
#include <cstdio>

std::shared_ptr<FtpClient> FtpClient::_instance;

static std::vector<std::string> splitNoEmpty(const std::string& s, char delim)
{
    std::vector<std::string> parts;
    std::string::size_type start = 0;
    while (true) 
    {
        auto pos = s.find(delim, start);
        auto len = (pos == std::string::npos) ? s.size() - start : pos - start;
        if (len > 0)
            parts.emplace_back(s.substr(start, len));
        if (pos == std::string::npos) break;
        start = pos + 1;
    }
    return parts;
}

FtpClient::FtpClient()
{
}

FtpClient::~FtpClient() = default;

// 写入 std::string 的回调
static size_t CurlWriteToString(void* ptr, size_t size, size_t nmemb, void* userdata)
{
    const size_t total = size * nmemb;
    auto* out = static_cast<std::string*>(userdata);
    out->append(static_cast<const char*>(ptr), total);
    return total;
}

// 写入 std::ofstream 的回调
static size_t CurlWriteToOfstream(void* ptr, size_t size, size_t nmemb, void* userdata)
{
    const size_t total = size * nmemb;
    auto* ofs = static_cast<std::ofstream*>(userdata);
    ofs->write(static_cast<const char*>(ptr), static_cast<std::streamsize>(total));
    if (!*ofs) return 0; // 让 libcurl 失败
    return total;
}

// 读入 std::ifstream 的回调
static size_t CurlReadFromIfstream(void* ptr, size_t size, size_t nmemb, void* userdata)
{
    const size_t max = size * nmemb;
    auto* ifs = static_cast<std::ifstream*>(userdata);
    if (!ifs || !ifs->good()) return 0;
    ifs->read(static_cast<char*>(ptr), static_cast<std::streamsize>(max));
    const std::streamsize got = ifs->gcount();
    return static_cast<size_t>(got);
}

static inline void trim_crlf(std::string& s)
{
    while (!s.empty() && (s.back() == '\r' || s.back() == '\n')) s.pop_back();
}

static std::string buildFtpUrl(const std::string& host, const std::string& path)
{
    std::string url = "ftp://" + host;
    if (path.empty() || path[0] != '/') url.push_back('/');
    url += path; // 如需严格编码，可额外做百分号编码
    return url;
}

static int CurlVerboseDebug(CURL* /*handle*/, curl_infotype type, char* data, size_t size, void* /*userptr*/)
{
    const char* pfx = "";
    switch (type) {
    case CURLINFO_TEXT:        pfx = "* "; break;
    case CURLINFO_HEADER_IN:   pfx = "< "; break;
    case CURLINFO_HEADER_OUT:  pfx = "> "; break;
    case CURLINFO_DATA_IN:     pfx = "<< "; break;
    case CURLINFO_DATA_OUT:    pfx = ">> "; break;
    default:                   pfx = "* "; break;
    }
    std::fprintf(stderr, "%s", pfx);
    std::fwrite(data, 1, size, stderr);
    return 0;
}

static void enableCurlVerbose(CURL* curl)
{
    curl_easy_setopt(curl, CURLOPT_VERBOSE, 1L);
    curl_easy_setopt(curl, CURLOPT_DEBUGFUNCTION, &CurlVerboseDebug);
    // 如需写入文件而非控制台：
    // FILE* log = std::fopen("curl_verbose.log", "ab");
    // curl_easy_setopt(curl, CURLOPT_STDERR, log);
    // 注意在适当位置 fclose(log)。
}

bool FtpClient::listDirectory(const std::string& host,
                              const std::string& user,
                              const std::string& pass,
                              const std::string& path,
                              std::list<FtpClient::FileInfo>& out)
{
    CURL* curl = curl_easy_init();
    if (!curl)
        return false;
    //enableCurlVerbose(curl);

    const std::string url = buildFtpUrl(host, path);
    std::string buffer;

    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_USERNAME, user.c_str());
    curl_easy_setopt(curl, CURLOPT_PASSWORD, pass.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, &CurlWriteToString);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &buffer);

    // 兼容性/健壮性设置
    curl_easy_setopt(curl, CURLOPT_FTP_USE_EPSV, 0L);
    curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 1L);
    curl_easy_setopt(curl, CURLOPT_FAILONERROR, 1L);
    /*if (namesOnly) 
        curl_easy_setopt(curl, CURLOPT_DIRLISTONLY, 1L);*/

    const CURLcode rc = curl_easy_perform(curl);
    curl_easy_cleanup(curl);
    if (rc != CURLE_OK) return false;

    // 解析行
    size_t start = 0;
    while (start < buffer.size())
    {
        size_t pos = buffer.find('\n', start);
        if (pos == std::string::npos) pos = buffer.size();
        std::string line = buffer.substr(start, pos - start);
        trim_crlf(line);
        std::vector<std::string> vecLine = splitNoEmpty(line, ' ');
        FtpClient::FileInfo fileInfo;
        fileInfo.isDir = (vecLine[4] == "4096" ? true : false);
        fileInfo.lastModifyTime = vecLine[5] + "/" + vecLine[6] + "/" + vecLine[7];
        fileInfo.name = vecLine[8];
        fileInfo.size = std::atoi(vecLine[4].c_str());
        if (!fileInfo.name.empty())
			out.push_back(std::move(fileInfo));
        //if (!line.empty()) out.push_back(std::move(line));
        start = pos + 1;
    }


    return true;
}

bool FtpClient::downloadFile(const std::string& host,
                             const std::string& user,
                             const std::string& pass,
                             const std::string& remotePath,
                             const std::string& localPath)
{
    CURL* curl = curl_easy_init();
    if (!curl) return false;

    const std::string url = buildFtpUrl(host, remotePath);
    std::ofstream ofs(localPath, std::ios::binary);
    if (!ofs.is_open()) {
        curl_easy_cleanup(curl);
        return false;
    }

    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_USERNAME, user.c_str());
    curl_easy_setopt(curl, CURLOPT_PASSWORD, pass.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, &CurlWriteToOfstream);
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &ofs);

    // 兼容性/健壮性设置
    curl_easy_setopt(curl, CURLOPT_FTP_USE_EPSV, 0L);
    curl_easy_setopt(curl, CURLOPT_TRANSFERTEXT, 0L);   // 二进制
    curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 1L);
    curl_easy_setopt(curl, CURLOPT_FAILONERROR, 1L);

    const CURLcode rc = curl_easy_perform(curl);
    ofs.flush();
    ofs.close();
    curl_easy_cleanup(curl);

    if (rc != CURLE_OK) {
        std::remove(localPath.c_str()); // 清理不完整文件
        return false;
    }
    return true;
}

bool FtpClient::uploadFile(const std::string& host, const std::string& user, const std::string& pass, const std::string& localPath, const std::string& remotePath)
{
    CURL* curl = curl_easy_init();
    if (!curl) return false;

    std::ifstream ifs(localPath, std::ios::binary);
    if (!ifs.is_open()) {
        curl_easy_cleanup(curl);
        return false;
    }

    // 计算文件大小
    ifs.seekg(0, std::ios::end);
    std::ifstream::pos_type endPos = ifs.tellg();
    if (endPos < 0) {
        ifs.close();
        curl_easy_cleanup(curl);
        return false;
    }
    const curl_off_t fileSize = static_cast<curl_off_t>(endPos);
    ifs.seekg(0, std::ios::beg);

    const std::string url = buildFtpUrl(host, remotePath);

    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_USERNAME, user.c_str());
    curl_easy_setopt(curl, CURLOPT_PASSWORD, pass.c_str());

    // 上传设置
    curl_easy_setopt(curl, CURLOPT_UPLOAD, 1L);
    curl_easy_setopt(curl, CURLOPT_READFUNCTION, &CurlReadFromIfstream);
    curl_easy_setopt(curl, CURLOPT_READDATA, &ifs);
    curl_easy_setopt(curl, CURLOPT_INFILESIZE_LARGE, fileSize);

    // 兼容性/健壮性设置
    curl_easy_setopt(curl, CURLOPT_FTP_USE_EPSV, 0L);
    curl_easy_setopt(curl, CURLOPT_TRANSFERTEXT, 0L);      // 二进制
    curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 1L);
    curl_easy_setopt(curl, CURLOPT_FAILONERROR, 1L);
    // 如需自动创建远端目录：
    curl_easy_setopt(curl, CURLOPT_FTP_CREATE_MISSING_DIRS, 1L);

    const CURLcode rc = curl_easy_perform(curl);

    ifs.close();
    curl_easy_cleanup(curl);

    return rc == CURLE_OK;
}

//bool FtpClient::removeServerFile(const std::string& host, const std::string& user, const std::string& pass, const std::string& remotePath)
//{
//    CURL* curl = curl_easy_init();
//    if (!curl) return false;
//    const std::string url = buildFtpUrl(host, remotePath);
//    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
//    curl_easy_setopt(curl, CURLOPT_USERNAME, user.c_str());
//    curl_easy_setopt(curl, CURLOPT_PASSWORD, pass.c_str());
//    // 删除文件命令
//    curl_easy_setopt(curl, CURLOPT_QUOTE, nullptr);
//    struct curl_slist* headerlist = nullptr;
//    std::string deleCmd = "DELE " + remotePath;
//    headerlist = curl_slist_append(headerlist, deleCmd.c_str());
//    curl_easy_setopt(curl, CURLOPT_QUOTE, headerlist);
//    // 兼容性/健壮性设置
//    curl_easy_setopt(curl, CURLOPT_FTP_USE_EPSV, 0L);
//    curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 1L);
//    curl_easy_setopt(curl, CURLOPT_FAILONERROR, 1L);
//    const CURLcode rc = curl_easy_perform(curl);
//    curl_slist_free_all(headerlist);
//    curl_easy_cleanup(curl);
//    return rc == CURLE_OK;
//}

bool FtpClient::removeServerFile(const std::string& host,
    const std::string& user,
    const std::string& pass,
    const std::string& remotePath)
{
    // 若以'/'结尾，按目录处理（支持递归删除非空目录）
    const bool isDirPath = !remotePath.empty() && remotePath.back() == '/';
    if (isDirPath)
    {
        // 规范化目录名：去掉末尾所有'/'，避免 RMD 失败
        std::string dir = remotePath;
        while (!dir.empty() && dir.back() == '/')
            dir.pop_back();

        // 防止误删根目录或空路径
        if (dir.empty() || dir == "/")
            return false;

        // 列出目录内容（使用带末尾'/'的路径）
        std::list<FtpClient::FileInfo> entries;
        const std::string listPath = dir + "/";
        if (!this->listDirectory(host, user, pass, listPath, entries)) {
            // 无法列出时，尝试直接删除空目录
            CURL* curl = curl_easy_init();
            if (!curl) return false;
            const std::string url = buildFtpUrl(host, dir);
            curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
            curl_easy_setopt(curl, CURLOPT_USERNAME, user.c_str());
            curl_easy_setopt(curl, CURLOPT_PASSWORD, pass.c_str());
            struct curl_slist* headerlist = nullptr;
            std::string rmdCmd = "RMD " + dir;
            headerlist = curl_slist_append(headerlist, rmdCmd.c_str());
            curl_easy_setopt(curl, CURLOPT_QUOTE, headerlist);
            curl_easy_setopt(curl, CURLOPT_FTP_USE_EPSV, 0L);
            curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 1L);
            curl_easy_setopt(curl, CURLOPT_FAILONERROR, 1L);
            const CURLcode rc = curl_easy_perform(curl);
            curl_slist_free_all(headerlist);
            curl_easy_cleanup(curl);
            return rc == CURLE_OK;
        }

        // 递归删除子项
        for (const auto& e : entries) {
            if (e.name.empty() || e.name == "." || e.name == "..")
                continue;
            std::string child = listPath + e.name;
            if (e.isDir)
                child.push_back('/'); // 传入目录标记，递归删除
            this->removeServerFile(host, user, pass, child);
        }

        // 子项清空后删除目录本身（RMD）
        {
            CURL* curl = curl_easy_init();
            if (!curl) return false;
            const std::string url = buildFtpUrl(host, dir);
            curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
            curl_easy_setopt(curl, CURLOPT_USERNAME, user.c_str());
            curl_easy_setopt(curl, CURLOPT_PASSWORD, pass.c_str());
            struct curl_slist* headerlist = nullptr;
            std::string rmdCmd = "RMD " + dir;
            headerlist = curl_slist_append(headerlist, rmdCmd.c_str());
            curl_easy_setopt(curl, CURLOPT_QUOTE, headerlist);
            curl_easy_setopt(curl, CURLOPT_FTP_USE_EPSV, 0L);
            curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 1L);
            curl_easy_setopt(curl, CURLOPT_FAILONERROR, 1L);
            const CURLcode rc = curl_easy_perform(curl);
            curl_slist_free_all(headerlist);
            curl_easy_cleanup(curl);
            return rc == CURLE_OK;
        }
    }

    // 非目录：删除文件（DELE）
    {
        CURL* curl = curl_easy_init();
        if (!curl) return false;

        const std::string url = buildFtpUrl(host, remotePath);
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
        curl_easy_setopt(curl, CURLOPT_USERNAME, user.c_str());
        curl_easy_setopt(curl, CURLOPT_PASSWORD, pass.c_str());

        struct curl_slist* headerlist = nullptr;
        std::string deleCmd = "DELE " + remotePath;
        headerlist = curl_slist_append(headerlist, deleCmd.c_str());
        curl_easy_setopt(curl, CURLOPT_QUOTE, headerlist);

        curl_easy_setopt(curl, CURLOPT_FTP_USE_EPSV, 0L);
        curl_easy_setopt(curl, CURLOPT_CONNECTTIMEOUT, 1L);
        curl_easy_setopt(curl, CURLOPT_FAILONERROR, 1L);

        const CURLcode rc = curl_easy_perform(curl);
        curl_slist_free_all(headerlist);
        curl_easy_cleanup(curl);
        return rc == CURLE_OK;
    }
}
