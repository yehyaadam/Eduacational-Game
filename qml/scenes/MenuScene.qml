import Felgo 3.0
import QtQuick 2.0
import "../common"

SceneBase {
    id: menuScene

    // signal indicating that the selectLevelScene should be displayed
    signal selectLevelPressed
    signal levelPressed(string selectedLevel)

    // background
    Image {
        id: menubg
        anchors.fill: parent
        source : "../../assets/img/MenuBG"
    }

    // the "logo"
    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 75
        font.pixelSize: 25
        color: "White"
        text: "Welcome To Our Game"
    }
    // menu
    Column {
        anchors.centerIn: parent
        spacing: 10
        MenuButton {
            text: "Start"
            color: "Lightsalmon"
            radius: 10
            onClicked: selectLevelPressed()
        }
        MenuButton {
            text: "Exit"
            color: "Lightsalmon"
            radius: 10
            onClicked: Qt.quit()
        }
    }
}
