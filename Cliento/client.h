#ifndef CLIENT_H
#define CLIENT_H

#include <QObject>
#include <QTcpSocket>
#include <QDebug>
#include <QMutex>
#include <QThread>
#include <QHostAddress>
#include <QCoreApplication>
#include <QWebSocketServer>
#include <QWebSocket>



class Client : public QObject
{
    Q_OBJECT
    int waitForWritten;
    bool init ;
    bool is_conn_server;
    int waitForContct;
    QHostAddress host_adress = QHostAddress("192.168.1.132");
    int port = 5975;
public:
    Q_INVOKABLE QString readFile(QString path);
    Q_INVOKABLE void reconect();
    explicit Client();
    Q_INVOKABLE bool send_data(QString key , int state);

    ~Client();

Q_SIGNALS:
    void closed();
    void connected();

private Q_SLOTS:
    void onConnected();
    void onTextMessageReceived(QString message);

private:
    QWebSocket m_webSocket;
    QUrl m_url;
};

#endif // CLIENT_H
