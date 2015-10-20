import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1
import QtQuick.Controls.Private 1.0


    Item {
        implicitHeight : 100
        implicitWidth:  500
        property int btnOffset : 10


        Rectangle {
           id:container
            width: parent.width
            height: parent.height
            color: "black"
            border.color: "blue"
            border.width: 2
            radius: 10


            Row{
                spacing: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter

                Button {
                    id:button1
                    width: container.width /4
                    text: "Button 1"
                    style: PushButtonStyles{}
                    onClicked: {
                        //Do something
                    }
                }
                Button {
                    id:button2

                    width: container.width /4
                    text: "Button 2"
                    style: PushButtonStyles{}
                    onClicked: {
                        //Do something
                    }
                }
                Button {
                    id:button3
                    width: container.width /4
                    text: "Button 3"
                    style: PushButtonStyles{}
                    onClicked: {
                        //Do something
                    }
                }
            }
        }

        Text {text:parent.width}
    }


