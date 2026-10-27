#pragma once
#include <QWidget>
class ScriptManager;
namespace Ui {
    class MainWindow;
}

class MainWindow : public QWidget
{
    Q_OBJECT
public:
    explicit MainWindow(QWidget* parent = nullptr);
    ~MainWindow() = default;
private:
    Ui::MainWindow* _ui{ nullptr };
	ScriptManager* _scriptManager{ nullptr };
};