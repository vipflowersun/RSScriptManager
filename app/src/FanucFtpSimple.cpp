#include "FanucFtpSimple.h"
#include <QFile>
#include <QDebug>

FanucFtpSimple::FanucFtpSimple()
{
}

FanucFtpSimple::~FanucFtpSimple()
{
}

bool FanucFtpSimple::uploadLs(const QString& robotIp,
    const QString& localFilePath,
    const QString& remoteFileName)
{
    QTcpSocket ctrlSock;
    ctrlSock.connectToHost(robotIp, 21);
    if (!ctrlSock.waitForConnected(3000))
    {
        qWarning() << "[FanucFtpSimple] control socket connect failed";
        return false;
    }

    // 核心：不等220 banner，直接发USER，解决FANUC老FTP不主动回banner问题
    sendCmd(ctrlSock, "USER anonymous");
    QString resp = readResp(ctrlSock);
    qDebug() << "[FanucFtpSimple] USER resp:" << resp;
    if (!resp.startsWith("331"))
        return false;

    sendCmd(ctrlSock, "PASS anonymous@");
    resp = readResp(ctrlSock);
    qDebug() << "[FanucFtpSimple] PASS resp:" << resp;
    if (!resp.startsWith("230"))
        return false;

    sendCmd(ctrlSock, "TYPE I");
    readResp(ctrlSock);

    sendCmd(ctrlSock, "PASV");
    resp = readResp(ctrlSock);
    qDebug() << "[FanucFtpSimple] PASV resp:" << resp;
    if (!resp.startsWith("227"))
        return false;

    // 解析 227 Entering Passive Mode (h1,h2,h3,h4,p1,p2)
    int posLeft = resp.indexOf('(');
    int posRight = resp.indexOf(')');
    if (posLeft < 0 || posRight < 0)
        return false;

    QString content = resp.mid(posLeft + 1, posRight - posLeft - 1);
    QStringList parts = content.split(',');
    if (parts.size() != 6)
        return false;

    bool ok = false;
    int h1 = parts[0].toInt(&ok);
    int h2 = parts[1].toInt(&ok);
    int h3 = parts[2].toInt(&ok);
    int h4 = parts[3].toInt(&ok);
    int p1 = parts[4].toInt(&ok);
    int p2 = parts[5].toInt(&ok);
    if (!ok)
        return false;

    quint16 dataPort = static_cast<quint16>(p1 * 256 + p2);
    QString dataIp = QString("%1.%2.%3.%4").arg(h1).arg(h2).arg(h3).arg(h4);

    QString storCmd = QString("STOR md:/%1").arg(remoteFileName);
    sendCmd(ctrlSock, storCmd);
    resp = readResp(ctrlSock);
    qDebug() << "[FanucFtpSimple] STOR resp:" << resp;
    if (!resp.startsWith("150"))
        return false;

    QTcpSocket dataSock;
    dataSock.connectToHost(dataIp, dataPort);
    if (!dataSock.waitForConnected(3000))
    {
        qWarning() << "[FanucFtpSimple] data socket connect failed";
        return false;
    }

    QFile file(localFilePath);
    if (!file.open(QIODevice::ReadOnly))
    {
        qWarning() << "[FanucFtpSimple] open local file failed:" << file.errorString();
        return false;
    }
    QByteArray fileData = file.readAll();
    file.close();

    dataSock.write(fileData);
    if (!dataSock.waitForBytesWritten(5000))
    {
        qWarning() << "[FanucFtpSimple] send file data timeout";
        dataSock.close();
        return false;
    }
    dataSock.close();

    // 等待传输完成响应 226
    resp = readResp(ctrlSock);
    qDebug() << "[FanucFtpSimple] transfer finish resp:" << resp;
    ctrlSock.close();

    return resp.startsWith("226");
}

void FanucFtpSimple::sendCmd(QTcpSocket& sock, const QString& cmd)
{
    sock.write(cmd.toUtf8() + "\r\n");
    sock.waitForBytesWritten(1000);
}

QString FanucFtpSimple::readResp(QTcpSocket& sock)
{
    if (!sock.waitForReadyRead(3000))
        return {};
    QByteArray buf = sock.readAll();
    return QString::fromUtf8(buf).trimmed();
}
