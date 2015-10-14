TEMPLATE = app

QT += qml quick

SOURCES += main.cpp \
    mqtt/mqtt.cpp \
    mqtt/qmqtt_client.cpp \
    mqtt/qmqtt_client_p.cpp \
    mqtt/qmqtt_frame.cpp \
    mqtt/qmqtt_message.cpp \
    mqtt/qmqtt_network.cpp \
    mqtt/qmqtt_will.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

OTHER_FILES += \
    main.qml \
    content/ModeratorPanel1.qml \
    content/ModeratorPanel1.qml \
    content/SettingsPanel.qml \
    content/Button1.qml \
    content/TabBarPage.qml

DISTFILES += \
    content/AndroidDelegate.qml

HEADERS += \
    mqtt/mqtt.h \
    mqtt/qmqtt.h \
    mqtt/qmqtt_client.h \
    mqtt/qmqtt_client_p.h \
    mqtt/qmqtt_frame.h \
    mqtt/qmqtt_global.h \
    mqtt/qmqtt_message.h \
    mqtt/qmqtt_network.h \
    mqtt/qmqtt_will.h

