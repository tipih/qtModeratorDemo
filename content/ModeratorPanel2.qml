import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1
import QtQuick.Controls.Private 1.0

Item {
    id:maderatorpanel1
    width: parent.width
    height: parent.height

    Rectangle {
        id: panel1
        width: parent.width
        height: parent.height / 3
        BorderImage {
            anchors.fill: parent
            border.bottom: 8
            source:  "../images/toolbar.png"
        }
        GroupBox{
            id:groupbox1left
            width: (parent.width/2)-10
            height:(parent.height-40)
            anchors.topMargin: 30
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top:parent.top
            title: "Box 1"
            style: Style {
                property Component panel: Item {

                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        anchors.bottom: parent.top
                        text: control.title
                        color: control.enabled ? "white" : "gray"
                        renderType: Text.NativeRendering
                        font.italic: !control.enabled
                        font.weight: Font.Bold
                        font.pointSize: 14
                    }
                    Rectangle{
                        anchors.fill: parent
                        color: "transparent"
                        border.color: "steelblue"
                        border.width: 2
                        radius: 5

                    }
                }
            }
            Column{
                id:columleft
                spacing: 20
                anchors.centerIn: parent

                Switch {

                    anchors.horizontalCenter: parent.horizontalCenter
                    id:switch1
                    style: SwitchButtonStyle {}
                    onCheckedChanged: {
                        console.log("Switch  change")

                    }
                }
                Switch {

                    anchors.horizontalCenter: parent.horizontalCenter
                    id:switch2
                    style: SwitchButtonStyle {}
                    onCheckedChanged: {
                        console.log("Switch  change")

                    }
                }
                Switch {

                    anchors.horizontalCenter: parent.horizontalCenter
                    id:switch3
                    style: SwitchButtonStyle {}
                    onCheckedChanged: {
                        console.log("Switch  change")

                    }
                }
            }
        }
        GroupBox{
            id:groupbox1right
            width: (parent.width/2)-10
            height:(parent.height-40)
            anchors.topMargin: 30
            anchors.right:parent.right
            anchors.rightMargin: 10
            anchors.top:parent.top
            title: "Box 2"
            style: Style {
                property Component panel: Item {

                    Text {
                        anchors.left: parent.left
                        anchors.leftMargin: 10
                        anchors.bottom: parent.top
                        text: control.title
                        color: control.enabled ? "white" : "gray"
                        renderType: Text.NativeRendering
                        font.italic: !control.enabled
                        font.weight: Font.Bold
                        font.pointSize: 14
                    }
                    Rectangle{
                        anchors.fill: parent
                        color: "transparent"
                        border.color: "steelblue"
                        border.width: 2
                        radius: 5

                    }
                }
            }
            Column{
                id:columright
                spacing: 20
                anchors.centerIn: parent

                Button {
                    id:button1
                    anchors.horizontalCenter: parent.horizontalCenter


                    text: "Button 1"
                    style: PushButtonStyles{}
                    onClicked: {
                        //Do something
                    }
                }
                Button {
                    id:button2
                    anchors.horizontalCenter: parent.horizontalCenter



                    text: "Button 2"
                    style: PushButtonStyles{}
                    onClicked: {
                        //Do something
                    }
                }
                Button {
                    id:button3
                    anchors.horizontalCenter: parent.horizontalCenter


                    text: "Button 3"
                    style: PushButtonStyles{}
                    onClicked: {
                        //Do something
                    }
                }
            }
        }
    }
    Rectangle {
        id: panel2
        width: parent.width
        height: parent.height / 3
        anchors.top:panel1.bottom
        BorderImage {
            anchors.fill: parent
            border.bottom: 8
            source:  "../images/toolbar.png"
        }
        Column {
            spacing: 12
            anchors.centerIn: parent

            Slider {
                anchors.margins: 20
                style: Sliderstyles{}
                value: 0
            }
            Slider {
                anchors.margins: 20
                style: Sliderstyles{}
                value: 0.5
            }
            Slider {
                anchors.margins: 20
                style: Sliderstyles{}
                value: 1.0
            }

        }
    }
}
