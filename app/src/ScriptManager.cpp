#include "ScriptManager.h"

#include "nlohmann/json.hpp"

#include "curl/curl.h"

#include <algorithm>
#include <cstdint>
#include <filesystem>
#include <fstream>
#include <limits>
#include <memory>
#include <QDebug>

namespace {
struct ScriptUploadSource
{
	std::ifstream stream;
	curl_off_t remaining = 0;
};

size_t readScript(char* buffer, size_t size, size_t count, void* userdata)
{
	auto& source = *static_cast<ScriptUploadSource*>(userdata);
	if (source.remaining == 0 || size == 0 || count == 0)
		return 0;
	if (count > std::numeric_limits<size_t>::max() / size)
		return CURL_READFUNC_ABORT;
	const auto bytes = static_cast<std::streamsize>(std::min({
		static_cast<std::uintmax_t>(size * count),
		static_cast<std::uintmax_t>(source.remaining),
		static_cast<std::uintmax_t>(std::numeric_limits<std::streamsize>::max()) }));
	source.stream.read(buffer, bytes);
	if (source.stream.gcount() != bytes || source.stream.bad())
		return CURL_READFUNC_ABORT;
	source.remaining -= static_cast<curl_off_t>(bytes);
	return static_cast<size_t>(bytes);
}
}

ScriptManager::ScriptManager(QObject* parent)
    : QObject(parent)
{
	_httpClient = std::make_unique<httplib::Client>("http://" + _robotFtp.robotIp);
	_httpClient->set_keep_alive(true);
}

void ScriptManager::setScriptRootDir(const std::string& scriptRootDir)
{
	_scriptRootDir = scriptRootDir;
	if (!_scriptRootDir.empty() && _scriptRootDir.back() == '/')
		_scriptRootDir.pop_back();

	// only for test
	_scriptList.clear();
	if (_scriptRootDir.empty())
		return;

	for (const auto& entry : std::filesystem::directory_iterator(_scriptRootDir)) {
		if (entry.is_regular_file() && entry.path().extension() == ".ls") {
			_scriptList.push_back({ entry.path().filename().string(), 0 });
		}
	}
}

std::string ScriptManager::getScriptRootDir() const
{
	return _scriptRootDir;
}

void ScriptManager::setRobotFtp(const RobotFtp& robotFtp)
{
	_robotFtp = robotFtp;
	_httpClient->stop();
	_httpClient = std::make_unique<httplib::Client>("http://" + _robotFtp.robotIp);
	_httpClient->set_keep_alive(true);
}

ScriptManager::RobotFtp ScriptManager::getRobotFtp() const
{
	return _robotFtp;
}

std::list<ScriptManager::SrciptInfo> ScriptManager::getScriptList() const
{
	return _scriptList;
}

int ScriptManager::isScriptRunning(bool& running) const
{
	auto res = _httpClient->Get("/COMET/rpc?func=IOVALRD&type=35&index=11");
	if (res && res->status == 200) {
		try {
			const auto json = nlohmann::json::parse(res->body);
			const auto value = json.at("FANUC").at("RPC").at(0).at("value").get<std::string>();
			if (value != "0" && value != "1") {
				return -1;
			}
			running = (value == "1");
			return 0;
		}
		catch (const nlohmann::json::exception&) {
			return -1;
		}
	}
	return -1;
}

std::optional<std::string> ScriptManager::getCurrentRunningScript() const
{
	bool running = false;
	if(this->isScriptRunning(running) == 0 && running)
	{
		// 返回当前正在运行的脚本名
	}	

	return std::nullopt;
}

int ScriptManager::runAll()
{
	return 0;
}

int ScriptManager::runCertainScript(int index)
{
	int err = this->uploadScript(index);
	if (err)
		return err;

	err = this->sendScriptReady();
	if (err)
		return err;

	return 0;
}

int ScriptManager::pause()
{
	return 0;
}

int ScriptManager::stop()
{
	return 0;
}

int ScriptManager::uploadScript(int index)
{
	if (index < 0 || index >= static_cast<int>(_scriptList.size()))
		return -1;
	if (_robotFtp.robotIp.empty()) {
		qWarning() << "FTP upload failed: robot IP is empty";
		return -1;
	}

	std::string scriptPath = _scriptRootDir + "/" + std::next(_scriptList.begin(), index)->name;
	ScriptUploadSource source;
	source.stream.open(std::filesystem::path(scriptPath), std::ios::binary | std::ios::ate);
	if (!source.stream) {
		qWarning() << "FTP upload failed: cannot open script";
		return -1;
	}
	const auto fileSize = source.stream.tellg();
	if (fileSize < std::streampos(0) ||
		static_cast<std::uintmax_t>(static_cast<std::streamoff>(fileSize)) >
		static_cast<std::uintmax_t>(std::numeric_limits<curl_off_t>::max())) {
		qWarning() << "FTP upload failed: invalid file size";
		return -1;
	}
	source.remaining = static_cast<curl_off_t>(static_cast<std::streamoff>(fileSize));
	source.stream.seekg(0, std::ios::beg);
	if (!source.stream) {
		qWarning() << "FTP upload failed: cannot seek script";
		return -1;
	}

	std::unique_ptr<CURL, decltype(&curl_easy_cleanup)> curl(curl_easy_init(), &curl_easy_cleanup);
	if (!curl) {
		qWarning() << "FTP upload failed: cannot create curl handle";
		return -1;
	}
	const auto& filename = std::next(_scriptList.begin(), index)->name;
	if (filename.size() > static_cast<size_t>(std::numeric_limits<int>::max()))
		return -1;
	std::unique_ptr<char, decltype(&curl_free)> encodedName(
		curl_easy_escape(curl.get(), filename.c_str(), static_cast<int>(filename.size())), &curl_free);
	if (!encodedName) {
		qWarning() << "FTP upload failed: cannot encode filename";
		return -1;
	}
	const std::string url = "ftp://" + _robotFtp.robotIp + "//md:/" + encodedName.get();
	CURLcode optionResult = CURLE_OK;
	const auto setOption = [&](CURLoption option, auto value) {
		if (optionResult == CURLE_OK)
			optionResult = curl_easy_setopt(curl.get(), option, value);
	};
	setOption(CURLOPT_URL, url.c_str());
	setOption(CURLOPT_PROXY, "");
	setOption(CURLOPT_USERNAME, "anonymous");
	setOption(CURLOPT_PASSWORD, "anonymous@");
	setOption(CURLOPT_UPLOAD, 1L);
	setOption(CURLOPT_TRANSFERTEXT, 0L);
	setOption(CURLOPT_INFILESIZE_LARGE, source.remaining);
	setOption(CURLOPT_READFUNCTION, &readScript);
	setOption(CURLOPT_READDATA, &source);
	setOption(CURLOPT_FTPPORT, _robotFtp.IPCIp.empty() ? "-" : _robotFtp.IPCIp.c_str());
	setOption(CURLOPT_FTP_USE_EPRT, 0L);
	setOption(CURLOPT_CONNECTTIMEOUT, 10L);
	setOption(CURLOPT_ACCEPTTIMEOUT_MS, 10000L);
	setOption(CURLOPT_TIMEOUT, 120L);
	setOption(CURLOPT_NOSIGNAL, 1L);
	if (optionResult != CURLE_OK) {
		qWarning() << "FTP upload configuration failed:" << curl_easy_strerror(optionResult);
		return -1;
	}
	const CURLcode result = curl_easy_perform(curl.get());
	if (result != CURLE_OK) {
		qWarning() << "FTP upload failed:" << curl_easy_strerror(result)
			<< "code:" << static_cast<int>(result);
		return -1;
	}
	if (source.remaining != 0) {
		qWarning() << "FTP upload failed: incomplete file transfer";
		return -1;
	}

	return 0;
}

int ScriptManager::sendScriptReady()
{
	auto res = _httpClient->Get("/COMET/rpc?func=IOVALSET&type=35&index=10&value=1");
	if (res && res->status == 200) {
		return 0;
	}
	return -1;
}