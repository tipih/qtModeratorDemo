import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1
import QtQuick.Controls.Private 1.0


Item {
    implicitHeight : 200
    implicitWidth:  500
    property int btnOffset : 10


    Rectangle {
        id:container
        width: parent.width
        height: parent.height
        color: "black"
        border.color: "blue"
        border.width: 2
        radius: 1


        GroupBox {
            id: groupBox1
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 10
            anchors.left: parent.left
            width: container.width/2-10
            height: container.height-45
            title: qsTr("Box")
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

            Column {
                id: column1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter



                Button {
                    id: button1
                    style: PushButtonStyles{}
                    text: qsTr("Button")
                }
                Button {
                    id: button2
                    style: PushButtonStyles{}
                    text: qsTr("Button")
                }

                Button {
                    id: button3
                    style: PushButtonStyles{}
                    text: qsTr("Button")
                }
            }
        }
        GroupBox {
            id: groupBox1right
            anchors.verticalCenter: parent.verticalCenter
            anchors.rightMargin: 10
            anchors.right: parent.right
            width: container.width/2-10
            height: container.height-45
            title: qsTr("Box1")
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
        }
    }


}



