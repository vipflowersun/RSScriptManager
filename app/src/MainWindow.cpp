#include "MainWindow.h"
#include "ui_MainWindowUi.h"

#include "ScriptManager.h"

#include <QFileDialog>

MainWindow::MainWindow(QWidget* parent)
    : QWidget(parent)
{
	_ui = new Ui::MainWindow();
	_ui->setupUi(this);

	_scriptManager = new ScriptManager(this);

	ScriptManager::RobotFtp robotFtp;
	robotFtp.robotIp = _ui->editRobotIP->text().toStdString();
	robotFtp.IPCIp = _ui->editPCIP->text().toStdString();
	_scriptManager->setRobotsFtp({ robotFtp });

    connect(_ui->btnReset, &QPushButton::clicked, this, [this]() {
		QString dir = QFileDialog::getExistingDirectory(this, tr("Select Script Root Directory"), QString(), QFileDialog::ShowDirsOnly | QFileDialog::DontResolveSymlinks);
		if (dir.isEmpty())
			return;
		_scriptManager->setScriptRootDir(dir.toLocal8Bit().constData());
		auto scriptList = _scriptManager->getScriptList();
		for (const auto& script : scriptList)
		{
			auto* item = new QListWidgetItem(QString::fromLocal8Bit(script.name.c_str()));
			item->setData(Qt::UserRole, QString::fromLocal8Bit(script.name.c_str()));
			_ui->listScript->addItem(item);
		}
    });
	connect(_ui->editRobotIP, &QLineEdit::editingFinished, this, [this]() {
		ScriptManager::RobotFtp robotFtp;
		robotFtp.robotIp = _ui->editRobotIP->text().toStdString();
		robotFtp.IPCIp = _ui->editPCIP->text().toStdString();
		_scriptManager->setRobotsFtp({ robotFtp });
	});
	connect(_ui->editPCIP, &QLineEdit::editingFinished, this, [this]() {
		ScriptManager::RobotFtp robotFtp;
		robotFtp.robotIp = _ui->editRobotIP->text().toStdString();
		robotFtp.IPCIp = _ui->editPCIP->text().toStdString();
		_scriptManager->setRobotsFtp({ robotFtp });
	});
}