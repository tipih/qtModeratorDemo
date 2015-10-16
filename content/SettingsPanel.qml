import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.1


Item {
    id:rootsettings
    width: parent.width
    height: parent.height



    Rectangle {
        id: panel1
        width: parent.width
        height: parent.height / 2
        BorderImage {
            anchors.fill: parent
            border.bottom: 8
            source:  "../images/toolbar.png"
        }

        Row{
           id:row1
            spacing: 20
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter

            TextField {
                id:ipadress
                anchors.margins: 20
                text: "127.0.0.1"
                style: TextFieldStyles{}

            }
            Button {
                id:sendipadress
                text: "Connect to host"
                style: PushButtonStyles {}
                onClicked: {

                    stackView.setipadress(ipadress.text)
                }
            }
        }
        Button {
            id:senddisconnect
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: row1.bottom
            anchors.topMargin: 10
            width: row1.width

            text: "Disconnect from host"
            style: PushButtonStyles{}
            onClicked: {
                stackView.disconnectfromhost()
            }
        }
        Button {
            id:setscreenori
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: senddisconnect.bottom
            anchors.topMargin: 10
            width: row1.width

            text: "Toggle fullscreen"
            style: PushButtonStyles{}
            onClicked: {
                stackView.setScreenOri()
            }
        }
    }
}
