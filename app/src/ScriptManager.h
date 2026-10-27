#pragma once
#include <QObject>

#include <optional>
#include <list>
#include <string>

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
		std::string name;
		int status; // 0: idle, 1: running, 2: runned, 3: error
	};
public:
    explicit ScriptManager(QObject* parent = nullptr);
    ~ScriptManager() = default;
public:
    void setScriptRootDir(const std::string& scriptRootDir);
    std::string getScriptRootDir() const;
	void setRobotsFtp(const std::vector<RobotFtp>& robotFtp);
	std::vector<RobotFtp> getRobotsFtp() const;
	std::list<SrciptInfo> getScriptList() const;
    int isScriptRunning(std::string& running) const;
	std::optional<std::string> getCurrentRunningScript() const;
	int runAll();
	int runCertainScript(int index);
	int pause();
	int stop();
signals:
	void statusChanged(int status);  // 0: idle, 1: running, 2: error
	void scriptListStatusChanged();
private:
    int sendScriptReady();  //通知机器人脚本就绪
private:
	std::string _scriptRootDir;
	std::list<SrciptInfo> _scriptList;
	std::vector<RobotFtp> _robotsFtp;
};