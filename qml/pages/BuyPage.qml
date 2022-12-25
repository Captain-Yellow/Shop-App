import QtQuick 2.0
import Felgo 3.0
import "MyConstants.js" as Constants

Page {
    id: buyingPage
    title: "Shoping list"

    property double sum: Constants.sum
    property int productItem: Constants.Items
    property double productValue: 0.0
    property int counter: 0

    Rectangle {
        id: itemName
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        width: parent.width/3
        height: 30
        radius: 10
        color: "#ff9203"
        AppText {
            anchors.horizontalCenter: itemName.horizontalCenter
            anchors.verticalCenter: itemName.verticalCenter
            text: "Item"
        }
    }
    Rectangle {
        id: itemPrice
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: itemName.right
        anchors.leftMargin: 10
        width: parent.width/3
        height: 30
        radius: 10
        color: "#99f503"
        AppText {
            anchors.horizontalCenter: itemPrice.horizontalCenter
            anchors.verticalCenter: itemPrice.verticalCenter
            text: "Price"
        }
    }
    Rectangle {
        id: itemRemove
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: itemPrice.right
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        width: parent.width/5
        height: 30
        radius: 10
        color: "#E9514C"
        AppText {
            anchors.horizontalCenter: itemRemove.horizontalCenter
            anchors.verticalCenter: itemRemove.verticalCenter
            text: "Remove"
        }
    }
    Rectangle {
        id: itemCount
        anchors.top: itemName.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        width: parent.width/3
        height: 30
        radius: 10
        color: "lightgray"
        AppText {
            id: productItemText
            anchors.horizontalCenter: itemCount.horizontalCenter
            anchors.verticalCenter: itemCount.verticalCenter
            text: Constants.Items
        }
    }
    Rectangle {
        id: itemsSum
        anchors.top: itemPrice.bottom
        anchors.topMargin: 10
        anchors.left: itemCount.right
        anchors.leftMargin: 10
        width: parent.width/3
        height: 30
        radius: 10
        color: "lightgray"
        AppText {
            id: showSumText
            anchors.horizontalCenter: itemsSum.horizontalCenter
            anchors.verticalCenter: itemsSum.verticalCenter
            text: Constants.sum.toFixed(2)
        }
    }
    Rectangle {
        id: itemsDelete
        anchors.top: itemRemove.bottom
        anchors.topMargin: 10
        anchors.left: itemsSum.right
        anchors.leftMargin: 10
        width: parent.width/5
        height: 30
        radius: 10
        color: "lightgray"
        Icon {
            anchors.horizontalCenter: itemsDelete.horizontalCenter
            anchors.verticalCenter: itemsDelete.verticalCenter
            icon: IconType.remove
            color: "red"
        }
        MouseArea {
            anchors.fill: itemsDelete
            onClicked: {
                Constants.Items = 0
                Constants.sum = 0
                showSumText.text = Constants.sum.toFixed(2)
                productItemText.text = Constants.Items
                dinamicPage.listData = []
                Constants.currentItemPrice = 0.0
                buyingPage.counter = 0
            }
        }
    }

    NavigationStack {
        id: itemNavigate
        anchors.top: itemsSum.bottom
        anchors.topMargin: 15
        ListPage {
            title: "Your basket"
            id: dinamicPage
            anchors.top: itemNavigate.bottom
            anchors.topMargin: 10
            section.property: "type"
            //anchors.bottom: buyButton.top
            //anchors.bottomMargin: 15
            //property Rectangle rc1: Rectangle{height: 100; width: 100; color: "red";AppText{text: "one wow"}}
            //property list<Rectangle> listRect: [Rectangle{height: 100; width: 100; color: "red";AppText{text: "twoo"}}]
            property var listData: [
                    {
                      text: qsTr("item " + Constants.Items),
                      detailText: Constants.currentItemPrice.toFixed(2)
                }]
            model: listData
//            onItemSelected: {
//                //console.log(listData.length)
//                console.log(Constants.allItems)
//                dinamicPage.listData.push(item) // add copy of clicked element at end of model
//                dinamicPage.listDataChanged() // signal change of data to update the list
//            }
            Component.onCompleted: {
                while (listData.length < Constants.Items){
                    dinamicPage.listData.push({text: qsTr("item " + Constants.allItems[buyingPage.counter]) ,detailText: Constants.priceArray[buyingPage.counter]})
                    buyingPage.counter++
                    dinamicPage.listDataChanged()
                }
                buyingPage.counter = 0
            }
        }// list page
    }// NavigationStack

    AppButton {
        id: buyButton
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height/10
        anchors.horizontalCenter: parent.horizontalCenter
        flat: false
        text: "Buy"
        onClicked: {
            confirmBuy.visible = true
        }
    }
    AppText {
        id: confirmBuy
        anchors.top: buyButton.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        color: "green"
        visible: false
        Timer {
            interval: 500; running: true; repeat: true
            onTriggered: confirmBuy.text = Date().toString()
        }
        text: ""
    }
}
/*
    #D0C91F #85C4B9 #008BBA #E9514C #DC403B.
    #00C8F8 #59C4C5 #FFC33C #FBE2B4 #FF4C65.
    #5E412F #FCEBB6 #78C0A8 #F07818 #F0A830.
*/
