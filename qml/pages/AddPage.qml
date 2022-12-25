import QtQuick 2.0
import Felgo 3.0
import "."
import "MyConstants.js" as Constants

Page {
    id: addingPage
    title: "Add to shopping list"
    property string productPhotos : "https://freephotos.cc/storage/preview/path/young-girl-enjoying-moment-and-looking-over-the-city-of-san-francisco_free_stock_photos_picjumbo_HNCK3432-2210x1474.jpg"
    property double productPrices: 0.0
    property int star: utils.generateRandomValueBetween(1,5)
    AppImage {
        id: productImage
        width: parent.width
        height: parent.height/3
        source: addingPage.productPhotos
        fillMode: Image.PreserveAspectCrop
    }
    Icon {
        anchors.top: productImage.bottom
        anchors.right: parent.right
        anchors.rightMargin: 5
        id: iconMark
        icon: IconType.bookmarko
        color: "gold"
        MouseArea {
            onClicked: {
                iconMark.icon = IconType.staro
            }
        }
    }
    Icon {
        anchors.top: productImage.bottom
        anchors.right: iconMark.left
        anchors.rightMargin: 9
        id: iconHeart
        icon: IconType.hearto
        color: "red"
        MouseArea {
            onClicked: {
                iconStar.icon = IconType.staro
            }
        }
    }
    Row {
        anchors.top: productImage.bottom
        anchors.left: parent.left
        anchors.leftMargin: 10
        spacing: 2
        Repeater {
            model: star
            Icon {
                id: iconStar
                icon: IconType.star
                color: "gold"
                MouseArea {
                    onClicked: {
                        iconStar.icon = IconType.staro
                    }
                }
            }
        }
    }

    Rectangle {
        id: spaceRect
        anchors.top: productImage.bottom
        width: 10
        height: 30
    }

    AppTextField {
        id: priceProduct
        anchors.top: spaceRect.bottom
        text: "Price :"
        color: "Purple"
        font: {
            font.bold = true
            font.family = "arial"
        }
    }
    AppText {
        id: priceValue
        anchors.top: priceProduct.bottom
        anchors.left: parent.left
        anchors.leftMargin: 5
        //        Connections {
        //                    target: kidsClothesMainPage
        //                    onSendMessage: { console.log("Hello by Comp 1") }
        //                }
        text: "$ "  + productPrices
    }

    Rectangle {
        id: spaceText
        anchors.top: priceValue.bottom
        width: 10
        height: 20
    }
    AppTextField {
        id: productInfo
        anchors.top: spaceText.bottom
        text: "Product Information :"
        color: "Purple"
        font: {
            font.bold = true
            font.family = "arial"
        }
    }
    AppText {
        id: infoText
        anchors.top: productInfo.bottom
        anchors.left: parent.left
        anchors.leftMargin: 5
        //anchors.leftMargin: parent.width*0.05
        text: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua."
        font.family: "Helvetica"
        font.pixelSize: 14
        fontSizeMode: Text.Fit
        //textFormat: Text.RichText
        //minimumPixelSize: 2; font.pixelSize: 12
    }

    AppButton {
        id: addButton
        text: "Add to list"
        anchors.topMargin: 30
        anchors.top: infoText.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        flat: false
        onClicked: {
            successfullyText.visible = true
            var component = Qt.createComponent("BuyPage.qml")
            //var loadwin = component.createObject(addingPage)//, {productPrices: 20})
            component.productItem++
            component.productValue = productPrices
            //loadwin.show()
            //productItem++

            Constants.currentItemPrice = productPrices
            Constants.sum += productPrices
            Constants.Items += 1
            Constants.allItems.push(Constants.Items)
            Constants.priceArray.push(productPrices)
            console.log(star)
        }
    }
    AppText {
        id: successfullyText
        anchors.top: addButton.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: addButton.horizontalCenter
        visible: false
        color: "green"
        text: "Successfully added"
    }

    FloatingActionButton {
        icon: IconType.creditcard
        visible: true // show on all platforms, default is only Android
        onClicked: navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("BuyPage.qml"))
    }
}
