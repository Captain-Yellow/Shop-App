import QtQuick 2.0
import Felgo 3.0

Page {
    title: "women 's dress"

    Item {
    id: main
    visible: true
    width: 600
    height: 600

    ListView {
        id: verticalList
        width: parent.width;
        height: parent.height;
        anchors.fill: parent
        spacing: 10
        cacheBuffer: 500 // in pixels
        orientation: ListView.Vertical
        model: 100
        property var activeIndex : 0
        property var lastContentX : 0
        delegate:
            ListView {
                id: horizontalList
                width: parent.width;
                height: 100;
                spacing: 10
                cacheBuffer: 500 // in pixels
                orientation: ListView.Horizontal
                model: 20
                property var verticalIndex : index
                delegate:
                    Rectangle
                    {
                        property var colors : ['red', 'green', 'blue']
                        color: colors[model.index % colors.length]

                        height: 100
                        property var widths : [100, 200, 300]
                        width: widths[(verticalIndex + model.index ) % widths.length]

                        MouseArea {
                            z:10
                            anchors.fill: parent
                            onClicked: {
                                console.log("Rectangle.onClicked")
                            }
                            onPressed: {
                                console.log("Rectangle.onPressed")
                            }
                            onReleased: {
                                console.log("Rectangle.onReleased")
                            }

                        }
                    }

            onContentXChanged: {
                if(model.index === verticalList.activeIndex)
                {
                    verticalList.lastContentX = contentX
                }
            }
            onMovementStarted: {
                verticalList.activeIndex = model.index
                unbind();
            }
            onMovementEnded: {
                bind();
            }

            Component.onCompleted: {
                bind();
            }

            function bind()
            {
                contentX = Qt.binding(function() { return verticalList.lastContentX })
            }
            function unbind()
            {
                contentX = contentX ;
            }
           }
      }
    }
    FloatingActionButton {
             icon: IconType.creditcard
             onClicked: console.log("FloatingActionButton Clicked")
             visible: true // show on all platforms, default is only Android
           }
}
// https://stackoverflow.com/questions/33671087/qml-scroll-multiple-listviews-synchronously
