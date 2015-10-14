import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import mqtt 1.0
import "content"


ApplicationWindow {
    id:rootItem
    visible: true
    width: 800
    height: 900




    Component.onCompleted: {
        console.log("are we connected "+_MQTT.connectedtohost)
        if (_MQTT.connectedtohost===false) {

            trytoconnect.running= true
            stackView.changeView(2)
        }
    }

    MQTT {
        id: _MQTT
        host: "localhost"
        port: 1883
        topic: "speed"
        onDisconnected: {

            console.log("Lost connection")
            stackView.changeView(2)
            trytoconnect.running= true
        }
        onConnected: {
            trytoconnect.running = false
            stackView.changeView(0)

        }
    }
    Timer {
        id: trytoconnect
        interval: 1000; running: false; repeat: true
        onTriggered: _MQTT.connect()
    }

    Rectangle {
        color: "#212126"
        anchors.fill: parent
    }



    toolBar: BorderImage {
        border.bottom: 8
        source: "images/toolbar.png"
        width: parent.width
        height: 100

        Button1   {
            id: backButton
            onButtonClick: {
                console.log("Button clicked")
            }
        }
        Text {
            id:topText
            font.pixelSize: 42
            Behavior on x { NumberAnimation{ easing.type: Easing.OutCubic} }
            x: backButton.x + backButton.width + 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            text: "Modarator Panel Demo"
        }
    }

    ListModel {
        id: pageModel


        ListElement {
            title: "Tabs"
            page: "content/TabBarPage.qml"
        }
    }


    StackView {
        id: stackView
        signal changeView(int index)
        anchors.fill: parent
        // Implements back key navigation
        focus: true
        Keys.onReleased: if (event.key === Qt.Key_Back && stackView.depth > 1) {
                             stackView.pop();
                             event.accepted = true;
                         }
        function sendMessage(topic,message){
            console.log(topic+"  "+message)
            _MQTT.topic=topic
            _MQTT.publishMessage(message)
        }
        function updateText(headertext){
            console.log("Update header text")
            topText.text=headertext
        }



        initialItem: {

            "item" : Qt.resolvedUrl("content/TabBarPage.qml")



        }




    }


}

