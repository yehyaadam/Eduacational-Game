import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: selectLevelScene

    // signal indicating that a level has been selected
    signal levelPressed(string selectedLevel)

    // background
    Image {
        id: selectscenebg
        source: "../../BackGroundImages/SceneSelectBG.jpg"
        anchors.fill: parent
    }

    // back button to leave scene
    MenuButton {
        text: "Back"
        // anchor the button to the gameWindowAnchorItem to be on the edge of the screen on any device
        anchors.right: selectLevelScene.gameWindowAnchorItem.right
        anchors.rightMargin: 10
        anchors.top: selectLevelScene.gameWindowAnchorItem.top
        anchors.topMargin: 10
        onClicked: backButtonPressed()
    }
    Text {
        id: leveltext
        text: qsTr("Select Level of Alphabets")
        color: "Lightsalmon"
        x : 100
        y : 55
        font.pixelSize: 28
    }

    // levels to be selected
    Grid {
        anchors.centerIn: parent
        spacing: 10
        columns: 4
       MenuButton {
            text: "1"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level1.qml")
            }
        }
        MenuButton {
            text: "2"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level2.qml")
            }
        }
        MenuButton {
            text: "3"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level3.qml")
            }
        }
        MenuButton {
            text: "4"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level4.qml")
            }
        }
        MenuButton {
            text: "5"
            width: 50
            height: 50
            onClicked: {
                levelPressed("Level5.qml")
            }
        }
            MenuButton {
                text: "6"
                width: 50
                height: 50
                onClicked: {
                    levelPressed("Level6.qml")
                }
            }
                MenuButton {
                    text: "7"
                    width: 50
                    height: 50
                    onClicked: {
                        levelPressed("Level7.qml")
                    }
             }
          }
    BackgroundMusic {
    id: mainmusic
    source: "../../Sounds/ABC.mp3"
    volume: 0.01
    }
    onLevelPressed: mainmusic.stop()
        }
