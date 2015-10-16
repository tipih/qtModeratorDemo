import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1

Component {
    id: textfieldstyle

    TextFieldStyle {
        textColor: "white"
        font.pixelSize: 18
        background: Item {
            implicitHeight: 50
            implicitWidth: 250
            BorderImage {
                source: "../images/textinput.png"
                border.left: 8
                border.right: 8
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
            }
        }
    }
}

