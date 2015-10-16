import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1
Component {
    id: touchStyle
    SliderStyle {
        handle: Rectangle {
            width: 30
            height: 30
            radius: height
            antialiasing: true
            color: Qt.lighter("#468bb7", 1.2)
        }

        groove: Item {
            implicitHeight: 50
            implicitWidth: 400
            Rectangle {
                height: 8
                width: parent.width
                anchors.verticalCenter: parent.verticalCenter
                color: "#444"
                opacity: 0.8
                Rectangle {
                    antialiasing: true
                    radius: 1
                    color: "#468bb7"
                    height: parent.height
                    width: parent.width * control.value / control.maximumValue
                }
            }
        }
    }
}

