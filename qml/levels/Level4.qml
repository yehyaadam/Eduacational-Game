import Felgo 3.0
import QtQuick 2.0
import "../common"
import "../common" as Common
Common.LevelBase {
    levelName: "Level4"

    Grid {
        anchors.centerIn: parent
        spacing: 10
        columns: 2
        AlphabetButton {
            text: "M"
            width: 50
            height: 50
            BackgroundMusic {
            id: mmusic
            source: "../../sounds/M.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               mmusic.play()
               nmusic.stop()
               omusic.stop()
               pmusic.stop()
            }
        }
        AlphabetButton {
            text: "N"
            width: 50
            height: 50
            BackgroundMusic {
            id: nmusic
            source: "../../sounds/N.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               mmusic.stop()
               nmusic.play()
               omusic.stop()
               pmusic.stop()
            }
        }
        Image {
            id: mimage
            source: "../../BackGroundImages/Monkey.png"
            height: 80
            width: 80
        }
        Image {
            id: nimage
            source: "../../BackGroundImages/Needle.png"
            height: 80
            width: 80
        }
        AlphabetButton {
            text: "O"
            width: 50
            height: 50
            BackgroundMusic {
            id: omusic
            source: "../../sounds/O.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               mmusic.stop()
               nmusic.stop()
               omusic.play()
               pmusic.stop()
            }
        }
        AlphabetButton {
            text: "P"
            width: 50
            height: 50
            BackgroundMusic {
            id: pmusic
            source: "../../sounds/P.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               mmusic.stop()
               nmusic.stop()
               omusic.stop()
               pmusic.play()
            }
        }
        Image {
            id: oimage
            source: "../../BackGroundImages/Orange.jpg"
            height: 80
            width: 80
        }
        Image {
            id: pimage
            source: "../../BackGroundImages/Pony.jpg"
            height: 80
            width: 80
        }
    }
}

