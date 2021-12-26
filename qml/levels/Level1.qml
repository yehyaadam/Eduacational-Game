import Felgo 3.0
import QtQuick 2.0
import "../common"
import "../common" as Common

Common.LevelBase {
    levelName: "Level1"
    signal levelPressed(string selectedLevel)

   Grid {
        anchors.centerIn: parent
        spacing: 10
        columns: 2
        AlphabetButton {
            id: abtn
            text: "A"
            width: 50
            height: 50
            BackgroundMusic {
            id: amusic
            source: "../../sounds/A.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {

                amusic.play()
                bmusic.stop()
                cmusic.stop()
                dmusic.stop()

            }
        }
        AlphabetButton {
            text: "B"
            width: 50
            height: 50
            BackgroundMusic {
            id: bmusic
            source: "../../sounds/B.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                amusic.stop()
                bmusic.play()
                cmusic.stop()
                dmusic.stop()

            }
        }
        Image {
            id: aimage
            source: "../../BackGroundImages/Apple.jpg"
            height: 80
            width: 80
        }
        Image {
            id: bimage
            source: "../../BackGroundImages/Baby.jpg"
            height: 80
            width: 80
        }
        AlphabetButton {
            text: "C"
            width: 50
            height: 50
            BackgroundMusic {
            id: cmusic
            source: "../../sounds/C.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                amusic.stop()
                bmusic.stop()
                cmusic.play()
                dmusic.stop()
            }
        }
        AlphabetButton {
            text: "D"
            width: 50
            height: 50
            BackgroundMusic {
            id: dmusic
            source: "../../sounds/D.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                amusic.stop()
                bmusic.stop()
                cmusic.stop()
                dmusic.play()

            }
        }
        Image {
            id: cimage
            source: "../../BackGroundImages/Candy.jpg"
            height: 80
            width: 80
        }
        Image {
            id: dimage
            source: "../../BackGroundImages/Diamond.jpg"
            height: 80
            width: 80
        }
    }
}
