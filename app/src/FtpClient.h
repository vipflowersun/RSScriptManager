#pragma once
#include <memory>
#include <string>
#include <list>

class FtpClient
{
public:
	struct FileInfo
	{
		std::string name;
		bool isDir{ false };
		size_t size{ 0 };
		std::string lastModifyTime;
	};
private:
	FtpClient();
	~FtpClient();
	static void destroy(FtpClient* p) { delete p; }
public:
	bool listDirectory(const std::string& host,
		const std::string& user,
		const std::string& pass,
		const std::string& path,
		std::list<FtpClient::FileInfo>& out);
	bool downloadFile(const std::string& host,
		const std::string& user,
		const std::string& pass,
		const std::string& remotePath,
		const std::string& localPath);
	bool uploadFile(const std::string& host,
		const std::string& user,
		const std::string& pass,
		const std::string& localPath,
		const std::string& remotePath);
	bool removeServerFile(const std::string& host,
		const std::string& user,
		const std::string& pass,
		const std::string& remotePath);
public:
	static std::shared_ptr<FtpClient> instance()
	{
		if (!_instance)
			_instance = std::shared_ptr<FtpClient>(new FtpClient, &FtpClient::destroy);
		return _instance;
	}
private:
	static std::shared_ptr<FtpClient> _instance;
};
