
import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1


Component {

    CheckBoxStyle {
        label: Text {
            text: control.text
            anchors.centerIn: parent
            color: "lightblue"
            font.pixelSize: 23
            renderType: Text.NativeRendering
        }

        indicator: Rectangle {
            implicitWidth: 30
            implicitHeight: 30
            radius: 5
            border.color: control.activeFocus ? "darkblue" : "gray"
            border.width: 1
            Rectangle {
                visible: control.checked
                color: "lightblue"
                border.color: "#333"
                radius: 1
                anchors.margins: 4
                anchors.fill: parent
            }
        }
    }
}

