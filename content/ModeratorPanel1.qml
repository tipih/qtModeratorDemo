import QtQuick 2.4
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.2



Item {
    id:root
    width: parent.width
    height: parent.height
    signal sendMqtt(string topic,string message)

    function changeView(index){

    }

    Rectangle {
        id: panel1
        width: parent.width
        height: 150
        BorderImage {
            anchors.fill: parent
            border.bottom: 8
            source:  "../images/toolbar.png"
        }
        Row{
            id:pane1Row
            spacing: 20
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            Button {

                text: "Button 1"
                style: PushButtonStyles {}
                onClicked: {

                    stackView.sendMessage("mqttdemo/panel1/button1","true")
                }
            }
            Button {

                text: "Button 2"
                style: PushButtonStyles {}
                onClicked: {

                    stackView.sendMessage("mqttdemo/panel1/button2","true")
                }
            }
        }
    }
    Rectangle {
        id: panel2
        width: parent.width
        height: 350
        anchors.top: panel1.bottom
        BorderImage {
            anchors.fill: parent
            border.bottom: 8
            source:  "../images/toolbar.png"
        }
        Item {
            id:panel2left
            height: parent.height
            width: parent.width/2
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.topMargin: 10





            Column{
                spacing: 20
                anchors.left: parent.left
                anchors.margins: 20

                ExclusiveGroup { id: tabPositionGroup }

                RadioButton {
                    id:radiobutton1
                    text: "Mqtt Radio Button 1"
                    style: RadioButtonStyles{}
                    checked: true
                    exclusiveGroup: tabPositionGroup

                    onCheckedChanged: {
                        console.log("Radio Button 1 clicked")
                        stackView.sendMessage("mqttdemo/panel2left/radiobutton1",radiobutton1.checked.toString())
                    }
                }
                RadioButton {
                    id:radiobutton2
                    text: "Mqtt Radio Button 2"
                    exclusiveGroup: tabPositionGroup
                    style: RadioButtonStyles{}
                    onCheckedChanged: {
                        console.log("Radio Button  clicked")
                        stackView.sendMessage("mqttdemo/panel2left/radiobutton2",radiobutton2.checked.toString())
                    }

                }
                RadioButton {
                    id:radiobutton3
                    text: "Mqtt Radio Button 3"
                    exclusiveGroup: tabPositionGroup
                    style: RadioButtonStyles{}
                    onCheckedChanged: {
                        console.log("Radio Button 3 clicked")
                        stackView.sendMessage("mqttdemo/panel2left/radiobutton3",radiobutton3.checked.toString())

                    }

                }
                RadioButton {
                    id:radiobutton4
                    text: "Mqtt Radio Button 4"
                    exclusiveGroup: tabPositionGroup
                    style: RadioButtonStyles{}
                    onCheckedChanged: {
                        console.log("Radio Button 4 clicked")
                        stackView.sendMessage("mqttdemo/panel2left/radiobutton4",radiobutton4.checked.toString())
                    }

                }
                RadioButton {
                    id:radiobutton5
                    text: "Mqtt Radio Button 5"
                    exclusiveGroup: tabPositionGroup
                    style: RadioButtonStyles{}
                    onCheckedChanged: {
                        console.log("Radio Button 5 clicked")
                        stackView.sendMessage("mqttdemo/panel2left/radiobutton5",radiobutton5.checked.toString())
                    }

                }

            }


        }
        Item{
            id:panel2right
            height: parent.height-20
            width: parent.width/2
            anchors.top: parent.top
            anchors.right: parent.right

            anchors.margins: 10


            Column{
                spacing: 20
                anchors.left: parent.left
                anchors.margins: 20
                CheckBox{
                    id:checkbox1
                    text: "Mqtt Checkbox 1"
                    style: CheckBoxStyles {}
                    onCheckedChanged: {
                        stackView.sendMessage("mqttdemo/panel3/checkbox1",checkbox1.checked.toString())
                    }
                }
                CheckBox{
                    id:checkbox2
                    text: "Mqtt Checkbox 2"
                    style: CheckBoxStyles {}
                    onCheckedChanged: {
                        stackView.sendMessage("mqttdemo/panel3/checkbox2",checkbox2.checked.toString())
                    }
                }
                CheckBox{
                    id:checkbox3
                    text: "Mqtt Checkbox 3"
                    style: CheckBoxStyles {}
                    onCheckedChanged: {
                        stackView.sendMessage("mqttdemo/panel3/checkbox3",checkbox3.checked.toString())
                    }
                }
                CheckBox{
                    id:checkbox4
                    text: "Mqtt Checkbox 4"
                    style: CheckBoxStyles {}
                    onCheckedChanged: {
                        stackView.sendMessage("mqttdemo/panel3/checkbox4",checkbox4.checked.toString())
                    }
                }
                CheckBox{
                    id:checkbox5
                    text: "Mqtt Checkbox 5"
                    style: CheckBoxStyles {}
                    onCheckedChanged: {
                        stackView.sendMessage("mqttdemo/panel3/checkbox5",checkbox5.checked.toString())
                    }
                }
            }
        }
    }


    Rectangle {
        id: panel3
        anchors.top: panel2.bottom
        width: parent.width
        height: 175
        BorderImage {
            anchors.fill: parent
            border.bottom: 8
            source:  "../images/toolbar.png"
        }
        Column {
            id:panel3Col
            spacing: 20

            anchors.horizontalCenter: parent.horizontalCenter


            Row {
                id:panel3Row
                spacing: 20

                Item{
                    width: (panel3.width/4)
                    height: panel3.height-10
                    anchors.topMargin: 5
                    anchors.top:parent.top

                    Label{
                        id:text1
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                        color: "white"
                        text: "Mqtt Data 1"
                    }
                    Switch {
                        anchors.top: text1.bottom
                        anchors.topMargin: 30
                        anchors.horizontalCenter: parent.horizontalCenter
                        id:switch1
                        style: SwitchButtonStyle {}
                        onCheckedChanged: {
                            console.log("Switch  change")
                            stackView.sendMessage("mqttdemo/panel3/switch1",switch1.checked.toString())
                        }
                    }
                }
                Item{
                    width: (panel3.width/4)-10
                    height: panel3.height-10
                    anchors.topMargin: 5
                    anchors.top:parent.top

                    Label{
                        id:text2
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                        color: "white"
                        text: "Mqtt Data 2"
                    }
                    Switch {
                        anchors.top: text2.bottom
                        anchors.topMargin: 30
                        anchors.horizontalCenter: parent.horizontalCenter
                        id:switch2
                        style: SwitchButtonStyle {}
                        onCheckedChanged: {
                            console.log("Switch  change")
                            stackView.sendMessage("mqttdemo/panel3/switch2",switch2.checked.toString())
                        }
                    }
                }

                Item{
                    width: (panel3.width/4)-10
                    height: panel3.height-10
                    anchors.topMargin: 5
                    anchors.top:parent.top

                    Label{
                        id:text3
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                        color: "white"
                        text: "Mqtt Data 3"
                    }
                    Switch {
                        anchors.top: text3.bottom
                        anchors.topMargin: 30
                        anchors.horizontalCenter: parent.horizontalCenter
                        id:switch3
                        style: SwitchButtonStyle {}
                        onCheckedChanged: {
                            console.log("Switch  change")
                            stackView.sendMessage("mqttdemo/panel3/switch3",switch3.checked.toString())
                        }
                    }
                }
                Item{
                    width: (panel3.width/4)
                    height: panel3.height-10
                    anchors.topMargin: 5
                    anchors.top:parent.top

                    Label{
                        id:text4
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 20
                        color: "white"
                        text: "Mqtt Data 4"
                    }
                    Switch {
                        anchors.top: text4.bottom
                        anchors.topMargin: 30
                        anchors.horizontalCenter: parent.horizontalCenter
                        id:switch4
                        style: SwitchButtonStyle {}
                        onCheckedChanged: {
                            console.log("Switch  change")
                            stackView.sendMessage("mqttdemo/panel3/switch4",switch4.checked.toString())
                        }
                    }
                }

            }

        }
    }


    Rectangle {
        id: panel4
        anchors.top: panel3.bottom
        width: parent.width
        height: parent.height-(panel1.height+panel2.height+panel3.height)
        BorderImage {
            anchors.fill: parent
            border.bottom: 8
            source:  "../images/toolbar.png"
        }
        Button {
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 10
            anchors.left: parent.left
            text: "Reset all"
            style: PushButtonStyles {}
            onClicked: {
                console.log("Reset")
                stackView.sendMessage("mqttdemo/panel4/reset","true")
                checkbox1.checked=false
                checkbox2.checked=false
                checkbox3.checked=false
                checkbox4.checked=false
                checkbox5.checked=false
                radiobutton1.checked=true
                switch1.checked=false
                switch2.checked=false
                switch3.checked=false
                switch4.checked=false


            }
        }

    }


    Component.onCompleted: {
        //Init state, this will not work, as we do not have a connection up running yet :(
        stackView.sendMessage("mqttdemo/panel2left/radiobutton1",radiobutton1.checked.toString())
        //Connect a signal from stackview to a function in this view
        //   stackView.changeView.connect(root.changeView)
    }
}
