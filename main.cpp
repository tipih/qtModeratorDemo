#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "mqtt/mqtt.h"
#include <QtQml>
#include <QQmlContext>
#include <QList>
#include <QScreen>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
     qmlRegisterType<MQTT>("mqtt", 1, 0, "MQTT");

    QList<QScreen*> screen = app.screens();
    qDebug()<<"Screen "<<screen;
    QScreen *myScreen = screen.at(0);
    qDebug()<<myScreen->name();


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
