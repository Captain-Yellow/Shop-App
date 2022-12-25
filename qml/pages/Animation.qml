import QtQuick 2.0
import Felgo 3.0

Page {
    id: loadingAnimation
    title: qsTr("Loading")

    Component {
        id: rect
        Rectangle {
            color: "red"
            width: 150
            height: 150
        }
    }

}
