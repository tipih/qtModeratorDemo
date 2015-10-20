import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1

Component {
    id: touchStyle



    TextFieldStyle {
        textColor: "white"
        font.pixelSize: 16

        background: Item {
            implicitHeight: 50
            implicitWidth: 250
            Rectangle{
                anchors.fill: parent
                color: "transparent"
            }


        }
    }
}
