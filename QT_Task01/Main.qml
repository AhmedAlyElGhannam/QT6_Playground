import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Task01")

    Row {
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            width: 100
            height: 100
            color: "red"
            border.color: "blue"
            border.width: 5
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "You"
                font.pixelSize: 20
            }
        }

        Rectangle {
            width: 100
            height: 100
            color: "green"
            border.color: "gray"
            border.width: 5
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "Fell"
                font.pixelSize: 20
            }
        }

        Rectangle {
            width: 100
            height: 100
            color: "blue"
            border.color: "yellow"
            border.width: 5
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "Into"
                font.pixelSize: 20
            }
        }

        Rectangle {
            width: 100
            height: 100
            color: "purple"
            border.color: "gray"
            border.width: 5
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "My"
                font.pixelSize: 20
            }
        }

        Rectangle {
            width: 100
            height: 100
            color: "pink"
            border.color: "black"
            border.width: 5
            radius: 50

            Text {
                anchors.centerIn: parent
                text: "Trap!"
                font.pixelSize: 20
            }
        }
    }
}
