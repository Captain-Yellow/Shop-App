import QtQuick 2.0
import Felgo 3.0

/*

// EXAMPLE USAGE:
// add the following piece of code inside your App { } to display the List Page

*/
Page {
    title: qsTr("Products List")

    ListPage {
        id: shopListPage
        //onItemSelected: console.log("Clicked Item #"+index+": "+JSON.stringify(item))

        // TODO add your model
        property var listData: [
            { type: "Foods", text: "Special foods", icon: IconType.heart, detailText: "Special and delicious food"},

            { type: "Clothing", text: "kids clothes", icon: IconType.child, detailText: "All sizes For all Seasons"},
            { type: "Clothing", text: "Menswear", icon: IconType.male, detailText: "All sizes For all Seasons"},
            { type: "Clothing", text: "women 's dress", icon: IconType.female, detailText: "All sizes For all Seasons"},

            { type: "Beverages", text: "Coffe", icon: IconType.coffee},
            { type: "Beverages", text: "Juce", icon: IconType.beer},

            { type: "Fruits", text: "Apple", detailText: "A delicious fruit with round shape", icon: IconType.apple },

            { type: "Tools", text: "Potato", icon: IconType.umbrella},

            { type: "image", text: "new one"},
            { type: "image", text: "new one"},

            { type: "photo", text: "new one"},
            { type: "photo", text: "new one"}]

        model: listData
        section.property: "type"
        onItemSelected: {
            //console.log(JSON.stringify(item.text))

            if (item.text === "Menswear"){
                navigation.currentIndex = 1
                navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("MenswearPage.qml"))
            }
            if (item.text === "women 's dress"){
                navigation.currentIndex = 1
                navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("WomensDressPage.qml"))
            }
            if (item.text === "Special foods"){
                //navigation.currentIndex = 1
                shopListPage.navigationStack.push(Qt.resolvedUrl("KidsClothesPage.qml"))
                //navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("KidsClothesPage.qml"))
            }
            if (item.text === "kids clothes"){
                shopListPage.navigationStack.push(Qt.resolvedUrl("SpecialFoods.qml"))
            }
            //shopListPage.listData.push(item) // add copy of clicked element at end of model
            //shopListPage.listDataChanged() // signal change of data to update the list
        }
    }
    FloatingActionButton {
             icon: IconType.creditcard
             visible: true // show on all platforms, default is only Android
             onClicked: {
                 navigation.currentIndex = 1
                 navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("BuyPage.qml"))
             }
           }
}
