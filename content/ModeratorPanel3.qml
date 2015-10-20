import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1
import QtQuick.Controls.Private 1.0



Item {
    id:moderatorpanel3
    width: parent.width
    height: parent.height


    ListModel {
        id:delegatemodel
        ListElement {
            title: "View 1"
            sourcedelegate: "DelegateView1.qml"
        }
        ListElement {
            title: "View 2"
            sourcedelegate: "DelegateView2.qml"
        }
        ListElement {
            title: "View 3"
            sourcedelegate: "DelegateView3.qml"
        }
        ListElement {
            title: "View 4"
            sourcedelegate: "DelegateView4.qml"
        }
    }



    Rectangle {
        id: panel1

        width: parent.width
        height: parent.height
        BorderImage {
            anchors.fill: parent
            border.bottom: 8
            source:  "../images/toolbar.png"
        }
        TextField{
            id:textTest
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Test view"

            style: TextStyle{}




        }
        ListView{
            id:textlist
            anchors.top: textTest.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            width: panel1.width
            height: panel1.height-textTest.height
            spacing: 5

            clip: true

            model: delegatemodel
            delegate: Component {
                Loader {
                    width: textlist.width
                    source: sourcedelegate
                    onLoaded: { item.width= width }
                }
            }

            highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
            focus: true
        }


    }

}




