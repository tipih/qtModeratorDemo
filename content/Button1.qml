import QtQuick 2.0

Rectangle {
    id: backButton
    width: opacity ? 60 : 0
    anchors.left: parent.left
    anchors.leftMargin: 20
    opacity: 1
    anchors.verticalCenter: parent.verticalCenter
    antialiasing: true
    height: 60
    radius: 4
    color: backmouse.pressed ? "#222" : "transparent"
    Behavior on opacity { NumberAnimation{} }
    signal buttonClick()
    Image {
        anchors.verticalCenter: parent.verticalCenter
        source: "../images/navigation_previous_item.png"
    }
    MouseArea {
        id: backmouse
        anchors.fill: parent
        anchors.margins: -10
        onClicked: buttonClick()
    }
}

