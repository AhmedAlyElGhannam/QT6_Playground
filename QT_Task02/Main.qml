import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtCore

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("َQt_Task02")

    // an array to hold the paths of memes
    property var memePathArr: [
        "qrc:/Images/fool.png",
        "qrc:/Images/ourmeme.jpg",
        "qrc:/Images/sneakytom.jpg",
        "qrc:/Images/squidwaaaaard.jpg"
    ]

    property int btnWidth: 350
    property int btnHeight: 120

    property int containerWidth: 300
    property int containerHeight: 150

    GridLayout {
        id: btnsLayout
        columns: 2
        rows: 2
        columnSpacing: 20
        rowSpacing: 20
        anchors.centerIn: parent

        Item {
            id: memeContainerNo1
            width: containerWidth
            height: containerHeight
            property bool showImage: false

            StackLayout {
                id: btnPlusMeme1
                anchors.fill: parent
                currentIndex: memeContainerNo1.showImage ? 1 : 0

                Button {
                    id: jojoMemeBtn
                    text: "Press Me!"
                    width: btnWidth
                    height: btnHeight
                    background: Rectangle {
                        color: "blue"
                    }
                    onClicked: {
                        memeContainerNo1.showImage = true
                        jojoMemeTimer.restart()
                    }
                }

                Image {
                    id: jojoMeme
                    source: memePathArr[0]
                    fillMode: Image.PreserveAspectFit
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent
                }
            }

            Timer {
                id: jojoMemeTimer
                interval: 10000
                onTriggered: memeContainerNo1.showImage = false
                repeat: false
            }
        }

        Item {
            id: memeContainerNo2
            width: containerWidth
            height: containerHeight
            property bool showImage: false

            StackLayout {
                id: btnPlusMeme2
                anchors.fill: parent
                currentIndex: memeContainerNo2.showImage ? 1 : 0

                Button {
                    id: ourMemeBtn
                    text: "Your Button?!"
                    width: btnWidth
                    height: btnHeight
                    background: Rectangle {
                        color: "red"
                    }
                    onClicked: {
                        memeContainerNo2.showImage = true
                        ourMemeTimer.restart()
                    }
                }

                Image {
                    id: ourMeme
                    source: memePathArr[1]
                    fillMode: Image.PreserveAspectFit
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent
                }
            }

            Timer {
                id: ourMemeTimer
                interval: 10000
                onTriggered: memeContainerNo2.showImage = false
                repeat: false
            }
        }

        Item {
            id: memeContainerNo3
            width: containerWidth
            height: containerHeight
            property bool showImage: false

            StackLayout {
                id: btnPlusMeme3
                anchors.fill: parent
                currentIndex: memeContainerNo3.showImage ? 1 : 0

                Button {
                    id: sneakyTomMemeBtn
                    text: "HEHEHEHEHE!"
                    width: btnWidth
                    height: btnHeight
                    background: Rectangle {
                        color: "green"
                    }
                    onClicked: {
                        memeContainerNo3.showImage = true
                        sneakyTomMemeTimer.restart()
                    }
                }

                Image {
                    id: sneakyTomMeme
                    source: memePathArr[2]
                    fillMode: Image.PreserveAspectFit
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent
                }
            }

            Timer {
                id: sneakyTomMemeTimer
                interval: 10000
                onTriggered: memeContainerNo3.showImage = false
                repeat: false
            }
        }

        Item {
            id: memeContainerNo4
            width: containerWidth
            height: containerHeight
            property bool showImage: false

            StackLayout {
                id: btnPlusMeme4
                anchors.fill: parent
                currentIndex: memeContainerNo4.showImage ? 1 : 0

                Button {
                    id: squidwaaaardBtn
                    text: "OH MY GOODNESS!"
                    width: btnWidth
                    height: btnHeight
                    background: Rectangle {
                        color: "cyan"
                    }
                    onClicked: {
                        memeContainerNo4.showImage = true
                        squidwaaaardTimer.restart()
                    }
                }

                Image {
                    id: squidwaaaard
                    source: memePathArr[3]
                    fillMode: Image.PreserveAspectFit
                    width: parent.width
                    height: parent.height
                    anchors.fill: parent
                }
            }

            Timer {
                id: squidwaaaardTimer
                interval: 10000
                onTriggered: memeContainerNo4.showImage = false
                repeat: false
            }
        }
    }
}
