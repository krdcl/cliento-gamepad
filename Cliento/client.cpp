#include "client.h"

#include <iostream>
#include <QFile>


Client::~Client()
{

}

Client::Client()
{
    m_url =  QUrl("ws://192.168.1.132:1995");
    waitForContct = 100;
    connect(&m_webSocket, &QWebSocket::connected, this, &Client::onConnected);
    connect(&m_webSocket, &QWebSocket::disconnected, this, &Client::closed);
    m_webSocket.open(QUrl(m_url));
}


void Client::onConnected()
{
    emit connected();
    qDebug() << "WebSocket connected";
    /*connect(&m_webSocket, &QWebSocket::textMessageReceived,
            this, &Client::onTextMessageReceived);
    m_webSocket.sendTextMessage(QStringLiteral("Hello, world!"));*/
}

void Client::onTextMessageReceived(QString message)
{
    qDebug() << "Message received:" << message;
    // m_webSocket.close();
}


bool Client::send_data(QString key , int state)
{
    key =  QString::number(state) + QString(" ")  + key;

    qDebug() <<"Send data "/* << key.constData()*/ <<"; sended " << m_webSocket.sendTextMessage(key) << " b.";
    return true;
}

void Client::reconect()
{
    m_webSocket.open(QUrl(m_url));
}



QString Client::readFile(QString path)
{
    QString result=" ";
    QFile file(path);
    if(!file.open(QIODevice::ReadOnly)) return result;

    QTextStream in(&file);

    while(!in.atEnd()) {
        result+=(in.readLine());
    }

    file.close();
    return result;
}




