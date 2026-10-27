#include "ScriptManager.h"
#include "httplib.h"

ScriptManager::ScriptManager(QObject* parent)
    : QObject(parent)
{
	
}

void ScriptManager::setScriptRootDir(const std::string& scriptRootDir)
{
	_scriptRootDir = scriptRootDir;
}

std::string ScriptManager::getScriptRootDir() const
{
	return _scriptRootDir;
}

void ScriptManager::setRobotsFtp(const std::vector<RobotFtp>& robotFtp)
{
	_robotsFtp = robotFtp;
}

std::vector<ScriptManager::RobotFtp> ScriptManager::getRobotsFtp() const
{
	return _robotsFtp;
}

std::list<ScriptManager::SrciptInfo> ScriptManager::getScriptList() const
{
	return _scriptList;
}

int ScriptManager::isScriptRunning(std::string& running) const
{
	httplib::Client client("http://127.0.0.1/COMET/rpc?func=IOVALRD&type=35&index=12");
	auto res = client.Get("/");
	if (res && res->status == 200) {
		return 0;
	}
	return -1;
}

std::optional<std::string> ScriptManager::getCurrentRunningScript() const
{
	return std::nullopt;
}

int ScriptManager::runAll()
{
	return 0;
}

int ScriptManager::runCertainScript(int index)
{
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

int ScriptManager::sendScriptReady()
{
	httplib::Client client("http://127.0.0.1/COMET/rpc?func=IOVALRD&type=35&index=11");
	auto res = client.Get("/");
	if (res && res->status == 200) {
		return 0;
	}
	return -1;
}