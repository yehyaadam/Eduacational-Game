import Felgo 3.0
import QtQuick 2.0
import "../common"
import "../common" as Common
Common.LevelBase {
    levelName: "Level7"

   Grid {
        anchors.centerIn: parent
        spacing: 10
        columns: 2
        AlphabetButton {
            text: "Y"
            width: 50
            height: 45
            y: parent.y
            BackgroundMusic {
            id: ymusic
            source: "../../sounds/Y.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
              ymusic.play()
                zmusic.stop()
            }
        }
        AlphabetButton {
            text: "Z"
            width: 50
            height: 45
            x:parent.x + 120
            BackgroundMusic {
            id: zmusic
            source: "../../sounds/Z.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                zmusic.play()
                ymusic.stop()
            }
        }
        Image {
            id: uimage
            source: "../../BackGroundImages/Yoyo.png"
            height: 100
            width: 100
        }
        Image {
            id: vimage
            source: "../../BackGroundImages/Zebra.jpg"
            height: 100
            width: 100
        }
   }
}
