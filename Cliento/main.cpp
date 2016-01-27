#include <QGuiApplication>
#include <QQmlApplicationEngine>
//#include <QtDeclarative/qdeclarative.h>
#include <client.h>
#include <QtQuick/QQuickView>
#include <QtQml/QQmlApplicationEngine>


 Q_DECL_EXPORT int main(int argc, char *argv[])
{
     // QScopedPointer<QApplication> app(createApplication(argc, argv));
      QGuiApplication app(argc, argv);
 //QtQuickControlsApplication app(argc, argv);

//Client client;


   //QQmlApplicationEngine engine;
   // QDeclarativeEngine   engine;
//  engine.rootContext()->setContextProperty("Client",&client);

   //qmlRegisterType<DocumentHandler>("org.qtproject.example", 1, 0, "DocumentHandler");
   QQmlApplicationEngine engine;//(QUrl("qrc:/qml/main.qml"));
qmlRegisterType<Client>("com.client", 1, 0, "Client");
//engine.setProperty("Client",&client);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));




    return app.exec();
}
