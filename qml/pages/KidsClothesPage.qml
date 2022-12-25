import QtQuick 2.0
import Felgo 3.0

Page {
    id: kidsClothesMainPage
    title: "Special Foods"

    property var photos: [
    "https://freephotos.cc/storage/preview/path/IuaswKLqaAXV8iXIfMUoeyAypxJ3VZ56UjsPueoa.jpeg",
    "https://freephotos.cc/storage/preview/path/fiVlwiNVY1nGVIye9DpNRyrK2W38wou7AqEf5Nwo.jpeg",
    "https://freephotos.cc/storage/preview/path/adding-apple-to-make-christmas-gingerbread-cookies-more-soft-2210x1473.jpg",
    "https://freephotos.cc/storage/preview/path/I03XZYbfxDVkKe5L3QQRZZMayU2DltAQ8r4Pki1E.jpeg",
    "https://freephotos.cc/storage/preview/path/WSdvQtsojr4CxSO20dx2rnb8C0tU2iNM01ksjTNs.jpeg",
    "https://freephotos.cc/storage/preview/path/bOE4onLaz5FGq8NFtXCbfrvlED76HseTSkto22FX.jpeg",
    "https://freephotos.cc/storage/preview/path/healthy-pancakes-with-cottage-cheese-and-blueberries-2210x1473.jpg",
    "https://freephotos.cc/storage/preview/path/TbWI93goHTyRmuY05HGYxsFX9UBPLVV9OZ001XDq.jpeg",
    "https://freephotos.cc/storage/preview/path/7nOX4M25hYMybmOJ3Fu9JadokmqYgGSJwBnI8ULI.jpeg",
    "https://freephotos.cc/storage/preview/path/js1sry3iRtKa3zyRn1Gb3K5PSCTrTPkE0Dis2gFA.jpeg",
    "https://freephotos.cc/storage/preview/path/woman-holding-a-halloween-pumpkin-2210x3205.jpg",
    "https://freephotos.cc/storage/preview/path/lX50HZzHoEHDcI4X1toNZB2fdIwzNO4l9RIpPAvp.jpeg",]

    property var price: [12.35, 19.45, 6.25, 15.75, 17.90, 23.95, 18.15, 34.25, 14.35, 10.15, 11.25, 21.50]

    //navigationBarHidden: true
    NavigationStack {
        id: kidsClothesNavigationOne
        anchors.top: parent.top

        Page {
            id: pageOne
            navigationBarHidden: true
            //title: qsTr("Summer")
            //height: 300
            //backgroundColor: "gray"
            AppFlickable {
                id: kidsClothesFlickOne
                anchors.fill: parent
                anchors.top: parent.top
                contentHeight: columnMain.height //1000
                contentWidth: contentRowOne.width
                flickableDirection: Flickable.HorizontalFlick
                //boundsBehavior: "StopAtBounds"

                Column {
                    id: columnMain
                    spacing: 7
                    AppTextField {
                        text: "Old Products"
                    }

                    Row {
                        id: contentRowOne
                        spacing: 5
                        Rectangle {
                            id: rect1
                            width: 150
                            height: 200
                            color: "lightgray"
                            radius: 20
                            RoundedImage {
                                id: photo1
                                anchors.top: rect1.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect1.horizontalCenter
                                anchors.top: photo1.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                //signal sendMessage(int price)
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo1.source
                                    loadwin.productPrices = price[0]
                                    //loadwin.show()
                                    //component.addingPage.productPrices = 20
                                    //addingPage.priceValue.text = "cool"
                                    //sendMessage(kidsClothesMainPage.price[0])
                                }
                            }
                        }
                        Rectangle {
                            id: rect2
                            width: 150
                            height: 200
                            color: "lightgray"
                            radius: 20
                            RoundedImage {
                                id: photo2
                                anchors.top: rect2.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect2.horizontalCenter
                                anchors.top: photo2.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo2.source
                                    loadwin.productPrices = price[1]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect3
                            width: 150
                            height: 200
                            color: "lightgray"
                            radius: 20
                            RoundedImage {
                                id: photo3
                                anchors.top: rect3.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect3.horizontalCenter
                                anchors.top: photo3.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo3.source
                                    loadwin.productPrices = price[2]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect4
                            width: 150
                            height: 200
                            color: "lightgray"
                            radius: 20
                            RoundedImage {
                                id: photo4
                                anchors.top: rect4.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect4.horizontalCenter
                                anchors.top: photo4.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo4.source
                                    loadwin.productPrices = price[3]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect5
                            width: 150
                            height: 200
                            color: "lightgray"
                            radius: 20
                            RoundedImage {
                                id: photo5
                                anchors.top: rect5.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect5.horizontalCenter
                                anchors.top: photo5.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo5.source
                                    loadwin.productPrices = price[4]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect6
                            width: 150
                            height: 200
                            color: "lightgray"
                            radius: 20
                            RoundedImage {
                                id: photo6
                                anchors.top: rect6.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect6.horizontalCenter
                                anchors.top: photo6.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo6.source
                                    loadwin.productPrices = price[5]
                                    //loadwin.show()
                                }
                            }
                        }
                    }
                    Rectangle {
                        width: 10
                        height: 10
                    }
                    AppTextField {
                        id: name
                        text: qsTr("New Products")
                        color: "black"
//                        font: {
//                            font.bold = true
//                            font.family = "arial"
//                        }
                    }

                    Row {
                        id: contentRowTwo
                        spacing: 5
                        Rectangle {
                            id: rect7
                            width: 150
                            height: 200
                            color: "#f0e68c"
                            radius: 20
                            RoundedImage {
                                id: photo7
                                anchors.top: rect7.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect7.horizontalCenter
                                anchors.top: photo7.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo7.source
                                    loadwin.productPrices = price[6]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect8
                            width: 150
                            height: 200
                            color: "#f0e68c"
                            radius: 20
                            RoundedImage {
                                id: photo8
                                anchors.top: rect8.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect8.horizontalCenter
                                anchors.top: photo8.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo8.source
                                    loadwin.productPrices = price[7]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect9
                            width: 150
                            height: 200
                            color: "#f0e68c"
                            radius: 20
                            RoundedImage {
                                id: photo9
                                anchors.top: rect9.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect9.horizontalCenter
                                anchors.top: photo9.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo9.source
                                    loadwin.productPrices = price[8]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect10
                            width: 150
                            height: 200
                            color: "#f0e68c"
                            radius: 20
                            RoundedImage {
                                id: photo10
                                anchors.top: rect10.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect10.horizontalCenter
                                anchors.top: photo10.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo10.source
                                    loadwin.productPrices = price[9]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect11
                            width: 150
                            height: 200
                            color: "#f0e68c"
                            radius: 20
                            RoundedImage {
                                id: photo11
                                anchors.top: rect11.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect11.horizontalCenter
                                anchors.top: photo11.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo11.source
                                    loadwin.productPrices = price[10]
                                    //loadwin.show()
                                }
                            }
                        }
                        Rectangle {
                            id: rect12
                            width: 150
                            height: 200
                            color: "#f0e68c"
                            radius: 20
                            RoundedImage {
                                id: photo12
                                anchors.top: rect12.top
                                width: 150
                                height: 150
                                fillMode: Image.PreserveAspectCrop
                                //anchors.fill:
                                radius: 200
                                smooth: true
                                source: photos.pop()
                            }
                            AppButton {
                                anchors.horizontalCenter: rect12.horizontalCenter
                                anchors.top: photo12.bottom
                                flat: false
                                text: "Add"
                                borderColor: "green"
                                textColor: "blue"
                                backgroundColor :"lightgreen"
                                onClicked: {
                                    //logic.showProduct()
                                    var component = Qt.createComponent("AddPage.qml")
                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                                    loadwin.productPhotos = photo12.source
                                    loadwin.productPrices = price[11]
                                    //loadwin.show()
                                }
                            }
                        }
                    }
//                    Row {
//                        id: contentRowTwo
//                        spacing: 5
//                        Repeater {
//                            model: 6
//                            Rectangle {
//                                width: 150
//                                height: 200
//                                color: "gray"
//                                radius: 20
//                            }
//                        }
//                    }
                }
            }
        }  // inside page
    }  // navigationStack
    FloatingActionButton {
             icon: IconType.creditcard
             visible: true // show on all platforms, default is only Android
             onClicked: {
                 navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("BuyPage.qml"))
             }
           }
}  // page main
