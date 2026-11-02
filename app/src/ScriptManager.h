/*ScriptReady: F[10](RW), ScriptRunning: F[11](RO)*/
#pragma once
#include <QObject>

#include <optional>
#include <list>
#include <string>
#include <functional>
#include <mutex>
#include <atomic>
#include <memory>
#include <thread>

#include "httplib.h"

class ScriptManager : public QObject
{
    Q_OBJECT
private:
	static constexpr int ERROR_CONECT_FAILED = -1;
	static constexpr int ERROR_FILE_NOT_EXIST = -2;
	static constexpr int ERROR_TASK_RUNNING = -3;
	static constexpr int ERROR_ROBOT_ERROR = -4;
public:
	// 脚本文件、关联参数文件及运行状态。
	struct SrciptInfo
	{
		std::string lsName;  // 不带路径的脚本文件名
		std::list<std::string> jsNames;  // 不带路径的参数文件名
		int status; // 0: 空闲，1: 运行中，2: 已运行，3: 错误
	};
public:
    explicit ScriptManager(QObject* parent = nullptr);
    ~ScriptManager();
public:
	// 设置脚本根目录，并从其中的 sequence.json 加载脚本列表。
    int setScriptRootDir(const std::string& scriptRootDir);
	// 通过获取脚本根目录。
    int getScriptRootDir(std::string& scriptRootDir);
	// 设置 CAM_GW 脚本路径。
	int setCAM_GWScriptDir(const std::string& camGwScriptDir);
	// 通过获取 CAM_GW 脚本路径。
	int getCAM_GWScriptDir(std::string& camGwScriptDir);
	// 设置机器人 IP 地址。
	int setRobotIp(const std::string& robotIp);
	// 通过获取机器人 IP 地址。
	int getRobotIp(std::string& robotIp);
	// 获取脚本列表及各脚本状态。
	int getScriptList(std::list<SrciptInfo>& scriptList);
	// 获取脚本是否正在运行。
    int isScriptRunning(bool& running) const;
	// 获取单腔正在运行的脚本名，若无脚本运行则返回 std::nullopt。
	int getCurrentRunningScript(std::optional<std::string>& currentRunningScript);
	// 获取机器人连接状态。
	int isRobotConnected(bool& connected) const;
	// 启动机器人主程序 LX_MAIN。
	int start();
	// 终止机器人上的所有任务。
	int stop();
	// 暂停机器人上的所有任务。
	int pause();
	// 恢复执行机器人主程序 LX_MAIN。
	int resume();
	// 向机器人发送报警复位命令。
	int clearAlarm();
	// 完整流程接口：粗定位及焊接，wpNum 为工件编号。
	int runAll(int wpNum);
	// 执行指定索引的脚本。
	int runCertainScript(int index);
	// 执行初定位脚本 wpNum为工位号。
	int runCAM_GW(int wpNum);
	// 错误码查询接口。
	int getErrorCode(int& errorCode) const;
	// 配置序列化接口，filePath 为目标文件路径。
	int serialize(const std::string& filePath);
	// 配置反序列化接口，filePath 为源文件路径。
	int deserialize(const std::string& filePath);
signals:
	// 当前脚本运行状态的变化通知：0 为空闲，1 为运行中，2 为错误。
	void statusChanged(int status);
	// 脚本列表状态变化通知。
	void scriptListStatusChanged();
private:
	httplib::Result httpGet(const std::string& path) const;
	int runScript(const std::string& scriptPath);
	int makeTaskRunScriptTempFile(const std::string& scriptDir, const QString& targetPath);
	int uploadScript(const std::string& scriptDir);
    int sendScriptReady();  //通知机器人脚本就绪
	int waitForScriptFinish();  //等待脚本运行完成
	void printServerFileList();
private:
	std::string _scriptRootDir;
	std::string _camGwScriptDir;
	std::list<SrciptInfo> _scriptList;
	std::string _robotIp;
	std::unique_ptr<httplib::Client> _httpClient;
	std::mutex _mutex;
	mutable std::mutex _httpMutex;
	std::mutex _scriptExecutionMutex;
	// 工作线程不获取生命周期锁，持有此锁时可以安全 join。
	std::mutex _taskMutex;
	std::thread _taskThread;
	std::atomic<bool> _taskRunning{ false };
	std::atomic<bool> _scriptRootDirReady{ false };
	std::atomic<bool> _quitTaskThread{ false };
	std::string _currentUploadedScript;
	std::atomic<int> _errorCode{ 0 };
};