import Felgo 3.0
import QtQuick 2.0
import "../common"
import "../common" as Common

Common.LevelBase {
    levelName: "Level2"

    Grid {
        anchors.centerIn: parent
        spacing: 10
        columns: 2
        AlphabetButton {
            text: "E"
            width: 50
            height: 50
            BackgroundMusic {
            id: emusic
            source: "../../assets/sounds/E.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                emusic.play()
                fmusic.stop()
                gmusic.stop()
                hmusic.stop()
            }
        }
        AlphabetButton {
            text: "F"
            width: 50
            height: 50
            BackgroundMusic {
            id: fmusic
            source: "../../assets/sounds/F.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                emusic.stop()
                fmusic.play()
                gmusic.stop()
                hmusic.stop()
            }
        }
        Image {
            id: eimage
            source: "../../assets/img/Elephant.jpg"
            height: 80
            width: 80
        }
        Image {
            id: fimage
            source: "../../assets/img/Fairy.png"
            height: 80
            width: 80
        }
        AlphabetButton {
            text: "G"
            width: 50
            height: 50
            BackgroundMusic {
            id: gmusic
            source: "../../assets/sounds/G.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                emusic.stop()
                fmusic.stop()
                gmusic.play()
                hmusic.stop()
            }
        }
        AlphabetButton {
            text: "H"
            width: 50
            height: 50
            BackgroundMusic {
            id: hmusic
            source: "../../assets/sounds/H.mp3"
            volume: 0.01
            loops: 1
            }
            onClicked: {
                emusic.stop()
                fmusic.stop()
                gmusic.stop()
                hmusic.play()
            }
        }
        Image {
            id: gimage
            source: "../../assets/img/Glasses.jpg"
            height: 80
            width: 80
        }
        Image {
            id: himage
            source: "../../assets/img/Hand.jpg"
            height: 80
            width: 80
        }
}
}
