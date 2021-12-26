import Felgo 3.0
import QtQuick 2.0
import "../common"
import "../common" as Common
Common.LevelBase {
    levelName: "Level6"

   Grid {
        anchors.centerIn: parent
        spacing: 10
        columns: 2
        AlphabetButton {
            text: "U"
            width: 50
            height: 45
            BackgroundMusic {
            id: umusic
            source: "../../sounds/U.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               umusic.play()
               vmusic.stop()
               wmusic.stop()
               xmusic.stop()
            }
        }
        AlphabetButton {
            text: "V"
            width: 50
            height: 45
            BackgroundMusic {
            id: vmusic
            source: "../../sounds/V.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               umusic.stop()
               vmusic.play()
               wmusic.stop()
               xmusic.stop()
        }
        }
        Image {
            id: uimage
            source: "../../BackGroundImages/Umbrella.jpg"
            height: 80
            width: 80
        }
        Image {
            id: vimage
            source: "../../BackGroundImages/Violin.jpg"
            height: 80
            width: 80
        }
        AlphabetButton {
            text: "W"
            width: 50
            height: 45
            BackgroundMusic {
            id: wmusic
            source: "../../sounds/W.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               umusic.stop()
               vmusic.stop()
               wmusic.play()
               xmusic.stop()
        }
        }
        AlphabetButton {
            text: "X"
            width: 50
            height: 45
            BackgroundMusic {
            id: xmusic
            source: "../../sounds/X.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               umusic.stop()
               vmusic.stop()
               wmusic.stop()
               xmusic.play()
        }
        }
        Image {
            id: simage
            source: "../../BackGroundImages/Whale.png"
            height: 80
            width: 80
        }
        Image {
            id: timage
            source: "../../BackGroundImages/Xylophone.jpg"
            height: 80
            width: 80
        }
   }
}
