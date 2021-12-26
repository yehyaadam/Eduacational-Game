import Felgo 3.0
import QtQuick 2.0
import "../common"
import "../common" as Common
Common.LevelBase {
    levelName: "Level5"

   Grid {
        anchors.centerIn: parent
        spacing: 10
        columns: 2
        AlphabetButton {
            text: "Q"
            width: 50
            height: 45
            BackgroundMusic {
            id: qmusic
            source: "../../sounds/Q.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               qmusic.play()
               rmusic.stop()
               smusic.stop()
               tmusic.stop()
            }
        }
        AlphabetButton {
            text: "R"
            width: 50
            height: 45
            BackgroundMusic {
            id: rmusic
            source: "../../sounds/R.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               qmusic.stop()
               rmusic.play()
               smusic.stop()
               tmusic.stop()
            }
        }
        Image {
            id: qimage
            source: "../../BackGroundImages/Queen.jpg"
            height: 80
            width: 80
        }
        Image {
            id: rimage
            source: "../../BackGroundImages/Rainbow.jpg"
            height: 80
            width: 80
        }
        AlphabetButton {
            text: "S"
            width: 50
            height: 45
            BackgroundMusic {
            id: smusic
            source: "../../sounds/S.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               qmusic.stop()
               rmusic.stop()
               smusic.play()
               tmusic.stop()
            }
        }
        AlphabetButton {
            text: "T"
            width: 50
            height: 45
            BackgroundMusic {
            id: tmusic
            source: "../../sounds/T.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
               qmusic.stop()
               rmusic.stop()
               smusic.stop()
               tmusic.play()
            }
        }
        Image {
            id: simage
            source: "../../BackGroundImages/Spider.png"
            height: 80
            width: 80
        }
        Image {
            id: timage
            source: "../../BackGroundImages/Tiger.jpg"
            height: 80
            width: 80
        }
    }
}

