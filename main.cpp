#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "mqtt/mqtt.h"
#include <QtQml>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
     qmlRegisterType<MQTT>("mqtt", 1, 0, "MQTT");

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
