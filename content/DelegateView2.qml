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
            width: container.width/2
            height: container.height-10
            title: qsTr("Box")

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
    }

    Text {text:parent.width}
}



