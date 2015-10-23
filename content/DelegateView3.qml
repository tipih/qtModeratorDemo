//This delegate shows how to create a more dynamic ui based on model
//So what happens is the following.
//This delegate is loaded from the ModeratorPanel3, it is populated in a listview using the model
//called delegatemodel, delegate model contain (Title,sourcedelegate name this file and a sourcemodel
//in this DelegateView3 we use a function called component.oncompleated to set the component source of
//our loader object called modelloader, it is done be this modelLoader.source = sourcemodel
//in the Loader object we use the signal OnLoaded to fetch the ListView called parameters, and this is a bit
//tricky, the qml file DynamicSliderModel contains a property alias called parameters, and therefor we are able
//to fetch the list by doing this
// root.model = modelLoader.item.parameters, root.model refreeres to a property ListModel
//so now root.model contains the Listmodel from the qmlfile DynamicSliderModel, and wupty, the repeater uses that one to generate
//a list of sliders, we are using the infomation inside the DynamicSliderModel, to customize the sliders, that is smart :)
//each slider will have a onValueChange signal handler, this we use to send signal on, but we also add a little extra info to the signal
//that we by the way call sendUpdate(), we add Eid, and the value of the slider, thereby, we ensure that anyone receiving the signal
//Can identify from wich slider it came from


import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.1
import QtQuick.Controls.Private 1.0



Item {
    id:root
    implicitHeight : 200
    implicitWidth:  500
    property int btnOffset : 10
    property ListModel model: ListModel { }
    signal sendUpdate(string id,int data)


    // property alias boxtext: groupBox1.title



    Loader {
        id: modelLoader

        onLoaded: {
            console.log("Test fra model 3")
            root.model = modelLoader.item.parameters
        }
    }




    Component.onCompleted: {
        console.log("Model 3 compleated")
        console.log("Model source ="+ sourcemodel)
        modelLoader.source = sourcemodel
    }

    Rectangle {
        id:container
        width: parent.width
        height: parent.height
        color: "green"
        border.color: "blue"
        border.width: 2
        radius: 10

        Column{
            spacing: 5
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 7
            Repeater{
                model:root.model
                Row{
                    spacing: 10

                    Text{

                        font.pixelSize: 16
                        text: EName
                    }
                    Slider{
                        objectName: Eid
                        style: Sliderstyles{}
                        minimumValue: min
                        maximumValue: max
                        value: startvalue

                        onValueChanged: {
                            sendUpdate(Eid,value)
                        }
                    }
                }
            }
        }

    }
}

