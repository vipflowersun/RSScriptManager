#include <QApplication>
#include <QScreen>
#include <QProcess>
#include <QMessageBox>
#include <QDebug>

#include "curl/curl.h"

#include <cstdio>
#include <filesystem>

#if defined(_WIN32)
#include <windows.h>
#if defined(NDEBUG)
#include <dbghelp.h>
#endif
#endif

#include "MainWindow.h"

static QtMessageHandler s_defaultHandler = nullptr;

#if defined(_WIN32) && defined(NDEBUG)
static LONG WINAPI writeMiniDump(EXCEPTION_POINTERS* exceptionPointers)
{
    wchar_t executablePath[MAX_PATH]{};
    const DWORD pathLength = GetModuleFileNameW(nullptr, executablePath, MAX_PATH);
    if (pathLength == 0 || pathLength == MAX_PATH)
        return EXCEPTION_EXECUTE_HANDLER;

    wchar_t* lastSeparator = wcsrchr(executablePath, L'\\');
    if (lastSeparator == nullptr)
        return EXCEPTION_EXECUTE_HANDLER;

    *lastSeparator = L'\0';

    wchar_t dumpDirectory[MAX_PATH]{};
    if (swprintf_s(dumpDirectory, L"%s\\dumps", executablePath) < 0)
        return EXCEPTION_EXECUTE_HANDLER;

    CreateDirectoryW(dumpDirectory, nullptr);

    SYSTEMTIME localTime{};
    GetLocalTime(&localTime);

    wchar_t dumpPath[MAX_PATH]{};
    if (swprintf_s(dumpPath, L"%s\\CoWeld_%04u%02u%02u_%02u%02u%02u_%lu.dmp",
            dumpDirectory,
            localTime.wYear,
            localTime.wMonth,
            localTime.wDay,
            localTime.wHour,
            localTime.wMinute,
            localTime.wSecond,
            GetCurrentProcessId()) < 0)
    {
        return EXCEPTION_EXECUTE_HANDLER;
    }

    const HANDLE dumpFile = CreateFileW(dumpPath, GENERIC_WRITE, 0, nullptr, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, nullptr);
    if (dumpFile == INVALID_HANDLE_VALUE)
        return EXCEPTION_EXECUTE_HANDLER;

    MINIDUMP_EXCEPTION_INFORMATION exceptionInfo{};
    exceptionInfo.ThreadId = GetCurrentThreadId();
    exceptionInfo.ExceptionPointers = exceptionPointers;
    exceptionInfo.ClientPointers = FALSE;

    MiniDumpWriteDump(
        GetCurrentProcess(),
        GetCurrentProcessId(),
        dumpFile,
        static_cast<MINIDUMP_TYPE>(MiniDumpNormal | MiniDumpWithThreadInfo | MiniDumpWithUnloadedModules),
        &exceptionInfo,
        nullptr,
        nullptr);

    CloseHandle(dumpFile);
    return EXCEPTION_EXECUTE_HANDLER;
}
#endif

static void customMessageHandler(QtMsgType type, const QMessageLogContext& context, const QString& msg)
{
    // 过滤 QWindowsWindow::setGeometry 警告
    if (type == QtWarningMsg && msg.contains("QWindowsWindow::setGeometry"))
        return;

    if (s_defaultHandler)
        s_defaultHandler(type, context, msg);
}

int main(int argc, char* argv[])
{
#if defined(_WIN32)
    if (AllocConsole() || GetLastError() == ERROR_ACCESS_DENIED) {
        FILE* stream = nullptr;
        const auto inputResult = freopen_s(&stream, "CONIN$", "r", stdin);
        const auto outputResult = freopen_s(&stream, "CONOUT$", "w", stdout);
        const auto errorResult = freopen_s(&stream, "CONOUT$", "w", stderr);
        SetConsoleCP(CP_UTF8);
        SetConsoleOutputCP(CP_UTF8);
        SetConsoleTitleW(L"RSScriptManager Console");
        qputenv("QT_FORCE_STDERR_LOGGING", "1");
        if (inputResult != 0 || outputResult != 0 || errorResult != 0)
            qWarning() << "Failed to redirect console streams";
    } else {
        qWarning() << "Failed to create console, Windows error:" << GetLastError();
    }
#endif

    const CURLcode curlResult = curl_global_init(CURL_GLOBAL_DEFAULT);
    if (curlResult != CURLE_OK) {
        qCritical() << "libcurl initialization failed:" << curl_easy_strerror(curlResult);
        return 1;
    }
    struct CurlGlobalCleanup
    {
        ~CurlGlobalCleanup() { curl_global_cleanup(); }
    } curlGlobalCleanup;

#if (QT_VERSION < QT_VERSION_CHECK(6, 0, 0))
    QGuiApplication::setAttribute(Qt::AA_UseHighDpiPixmaps);
#if (QT_VERSION >= QT_VERSION_CHECK(5, 14, 0))
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication::setHighDpiScaleFactorRoundingPolicy(Qt::HighDpiScaleFactorRoundingPolicy::PassThrough);
#else
    //根据实际屏幕缩放比例更改
    qputenv("QT_SCALE_FACTOR", "1.5");
#endif
#endif
    QApplication a(argc, argv);

#if defined(_WIN32) && defined(NDEBUG)
    SetUnhandledExceptionFilter(writeMiniDump);
#endif

    s_defaultHandler = qInstallMessageHandler(customMessageHandler);

    QFont f = a.font();
    f.setFamily("Microsoft YaHei");
    f.setPointSize(10);
    a.setFont(f);

    MainWindow w;
    w.show();

    return a.exec();
}
