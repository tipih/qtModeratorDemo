
import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1


Component {
    RadioButtonStyle {

        label: Text {
            text: control.text
            anchors.centerIn: parent
            color: "white"
            font.pixelSize: 23
            renderType: Text.NativeRendering
        }

        indicator: Rectangle {
            implicitWidth: 35
            implicitHeight: 35
            radius: 17
            border.color: control.activeFocus ? "darkblue" : "gray"
            border.width: 1
            Rectangle {
                anchors.fill: parent
                visible: control.checked
                color: "lightblue"
                radius: 17
                anchors.margins: 4
            }
        }

    }
}
