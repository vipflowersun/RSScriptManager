#ifndef FANUCFTPSIMPLE_H
#define FANUCFTPSIMPLE_H

#include <QObject>
#include <QTcpSocket>
#include <QString>

/**
 * @brief FanucFtpSimple
 * 极简FTP上传，专门兼容FANUC机器人FTP：connect后不等220 banner，直接发USER
 * 匿名登录、PASV被动模式、二进制上传，目标路径固定 md:/
 * 仅用于上传LS程序文件，不支持下载、列表、删除等
 */
class FanucFtpSimple
{
public:
    FanucFtpSimple();
    ~FanucFtpSimple();

    /**
     * @brief uploadLs 上传本地LS文件到机器人 md:/
     * @param robotIp 机器人IP，如 "192.168.2.6"
     * @param localFilePath 本地完整文件路径
     * @param remoteFileName 远端文件名（如 "test.LS"，不要带路径）
     * @return 成功返回true
     */
    bool uploadLs(const QString& robotIp,
        const QString& localFilePath,
        const QString& remoteFileName);

private:
    /// 发送FTP命令，自动追加 \r\n
    void sendCmd(QTcpSocket& sock, const QString& cmd);

    /// 读取一行响应，超时3000ms
    QString readResp(QTcpSocket& sock);
};

#endif // FANUCFTPSIMPLE_H
