import Felgo 3.0
import QtQuick 2.0
import "../common"
import "../common" as Common
Common.LevelBase {
    levelName: "Level3"

    Grid {
        anchors.centerIn: parent
        spacing: 10
        columns: 2
        AlphabetButton {
            text: "I"
            width: 50
            height: 50
            BackgroundMusic {
            id: imusic
            source: "../../sounds/I.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                imusic.play()
                jmusic.stop()
                kmusic.stop()
                lmusic.stop()
            }
        }
        AlphabetButton {
            text: "J"
            width: 50
            height: 50
            BackgroundMusic {
            id: jmusic
            source: "../../sounds/J.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                imusic.stop()
                jmusic.play()
                kmusic.stop()
                lmusic.stop()
            }
        }
        Image {
            id: iimage
            source: "../../BackGroundImages/Igloo.jpg"
            height: 80
            width: 80
        }
        Image {
            id: jimage
            source: "../../BackGroundImages/Jelly.jpg"
            height: 80
            width: 80
        }
        AlphabetButton {
            text: "K"
            width: 50
            height: 50
            BackgroundMusic {
            id: kmusic
            source: "../../sounds/K.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                imusic.stop()
                jmusic.stop()
                kmusic.play()
                lmusic.stop()
            }
        }
        AlphabetButton {
            text: "L"
            width: 50
            height: 50
            BackgroundMusic {
            id: lmusic
            source: "../../sounds/L.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                imusic.stop()
                jmusic.stop()
                kmusic.stop()
                lmusic.play()
            }
        }
        Image {
            id: kimage
            source: "../../BackGroundImages/Keyboard.png"
            height: 80
            width: 80
        }
        Image {
            id: limage
            source: "../../BackGroundImages/LadyBug.png"
            height: 80
            width: 80
        }

    }
}

