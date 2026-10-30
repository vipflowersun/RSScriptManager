/*ScriptReady: F[10](RW), ScriptRunning: F[11](RO)*/
#pragma once
#include <QObject>

#include <optional>
#include <list>
#include <string>

#include "httplib.h"


class ScriptManager : public QObject
{
    Q_OBJECT
public:
	struct RobotFtp
	{
		std::string robotIp;
		std::string IPCIp;
	};
	struct SrciptInfo
	{
		std::string lsName;  // 不带路径的脚本文件名
		std::list<std::string> jsNames;  // 不带路径的参数文件名
		int status; // 0: idle, 1: running, 2: runned, 3: error
	};
public:
    explicit ScriptManager(QObject* parent = nullptr);
    ~ScriptManager() = default;
public:
    int setScriptRootDir(const std::string& scriptRootDir);
    std::string getScriptRootDir() const;
	void setRobotFtp(const RobotFtp& robotFtp);
	RobotFtp getRobotFtp() const;
	std::list<SrciptInfo> getScriptList() const;
    int isScriptRunning(bool& running) const;
	std::optional<std::string> getCurrentRunningScript() const;
	int start();
	int stop();
	int pause();
	int resume();
	int clearAlarm();
	int runAll();
	int runCertainScript(int index);
	void runCAM_GW(int wpNum);
signals:
	void statusChanged(int status);  // 0: idle, 1: running, 2: error
	void scriptListStatusChanged();
	void CAM_GWDone(int errorCode);  //初定位完成
private:
	int uploadScript(const std::string& scriptDir);
    int sendScriptReady();  //通知机器人脚本就绪
	void printServerFileList();
private:
	std::string _scriptRootDir;
	std::list<SrciptInfo> _scriptList;
	RobotFtp _robotFtp;
	std::unique_ptr<httplib::Client> _httpClient;
};