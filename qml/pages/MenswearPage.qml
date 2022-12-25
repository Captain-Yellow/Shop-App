import QtQuick 2.0
import Felgo 3.0

Page {

    title: "Menswear"
    /*
            ListModel {
                id: modC
                ListElement { name: "Ch1" }
                ListElement { name: "Ch2" }
                ListElement { name: "Ch3" }
            }

            ListModel {
                id: modP1
                ListElement { name: "p1"; start: 0; duration: 6 }
                ListElement { name: "p2"; start: 6; duration: 6 }
                ListElement { name: "p3"; start: 12; duration: 6 }
                ListElement { name: "p4"; start: 18; duration: 6 }
            }
            ListModel {
                id: modP2
                ListElement { name: "p1"; start: 0; duration: 12 }
                ListElement { name: "p2"; start: 12; duration: 12 }
            }
            ListModel {
                id: modP3
                ListElement { name: "p1"; start: 0; duration: 8 }
                ListElement { name: "p2"; start: 8; duration: 8 }
                ListElement { name: "p3"; start: 16; duration: 8 }
            }

            property var subMod : [ modP1, modP2, modP3 ]

            Component {
                id: progDelegate
                Rectangle {
                    property var source
                    x: source.start * 50
                    width: source.duration * 50
                    height: 50
                    color: "lightblue"
                    border.color: "black"
                    Text {
                        text: source.name
                    }
                }
            }

            Row {
                anchors.fill: parent
                ListView {
                    id: list
                    height: parent.height
                    width: 100
                    model: modC

                    delegate: Item {
                        width: 100
                        height: 50
                        Rectangle {
                            anchors.fill: parent
                            color: "red"
                            border.color: "black"
                            Text {
                                anchors.centerIn: parent
                                text: name
                            }
                        }
                        Component.onCompleted: {
                            var mod = subMod[index]
                            for (var i = 0; i < mod.count; ++i) progDelegate.createObject(flick.contentItem, {"source": mod.get(i), "y": index * 50})
                        }
                    }
                }
                Flickable {
                    id: flick
                    height: parent.height
                    width: parent.width - list.width
                    contentWidth: 1200
                    contentHeight: contentItem.childrenRect.height
                    clip: true
                    flickableDirection: Flickable.HorizontalFlick
                    contentY: list.contentY
                }
            }
    */
    Item {
        id: main
        visible: true
        width: 600
        height: 600

        ListView {
            id: verticalList
            width: parent.width;
            height: parent.height;
            //contentY : flickable.contentY
            anchors.fill: parent
            spacing: 10
            orientation: ListView.Vertical
            model: 100
            delegate:
                ListView {
                    id: horizontalList
                    width: parent.width;
                    height: 100;
                    contentX : flickable.contentX
                    spacing: 10
                    orientation: ListView.Horizontal
                    model: 20
                    property var verticalIndex : index
                    delegate:
                        Rectangle
                        {
                            property var colors : ['#ffd700', '#ff69b4', '#ff8c00']
                            property var widths : [100, 200, 300]
                            height: 100
                            width: widths[(verticalIndex + model.index) % widths.length]
                            color: colors[model.index % colors.length]

                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    console.log("Rectangle.onClicked")
                                }

                            }
                        }

            //on top a Flickable
            Flickable {
               id: flickable
               flickableDirection : Flickable.HorizontalFlick
               height: parent.height
               width: parent.width
               contentHeight: 100*100 //nrOfRows * rowHeight
               contentWidth: 20*300 //nrOfEvent * max/averageEventWidth
               MouseArea {
                  anchors.fill: parent
                  //see http://stackoverflow.com/questions/29236762/mousearea-inside-flickable-is-preventing-it-from-flicking
                  onReleased: {
                     if (!propagateComposedEvents) {
                        propagateComposedEvents = true
                     }
                  }
               }
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
