import Felgo 3.0
import QtQuick 2.6
import QtQuick.Controls 2.0
//import io.qt.examples.backend 1.0
import "model"
import "logic"
import "pages"


App {
    id: rootWin

    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    // app initialization
    Component.onCompleted: {
        // if device has network connection, clear cache at startup
        // you'll probably implement a more intelligent cache cleanup for your app
        // e.g. to only clear the items that aren't required regularly
        if(isOnline) {
            logic.clearCache()
        }

        // fetch todo list data
        logic.fetchTodos()
        logic.fetchDraftTodos()
    }

    // business logic
    Logic {
        id: logic
    }

    // model
    DataModel {
        id: dataModel
        dispatcher: logic // data model handles actions sent by logic

        // global error handling
        onFetchTodosFailed: nativeUtils.displayMessageBox("Unable to load todos", error, 1)
        onFetchTodoDetailsFailed: nativeUtils.displayMessageBox("Unable to load todo "+id, error, 1)
        onStoreTodoFailed: nativeUtils.displayMessageBox("Failed to store "+viewHelper.formatTitle(todo))
    }

    // helper functions for view
    ViewHelper {
        id: viewHelper
    }

    Component{
        Rectangle {
            color: "red"
            width: 150
            height: 150

        }

    }

    // view
    Navigation {
        id: navigation

        // only enable if user is logged in
        // login page below overlays navigation then
        enabled: dataModel.userLoggedIn

        // our gallery tab
        NavigationItem {
            title: qsTr("Album")
            icon: IconType.image

            NavigationStack {
                splitView: tablet // use side-by-side view on tablets
                initialPage: GalleryPage { }
            }
        }

        // shopping tab
        NavigationItem {
            title: qsTr("Products")
            icon: IconType.shoppingcart

            NavigationStack {
                splitView: tablet // use side-by-side view on tablets
                initialPage: Shopping { }
            }
        }

        // todo list tab
        NavigationItem {
            title: qsTr("Contact us")
            icon: IconType.envelope
            NavigationStack {
                splitView: tablet // use side-by-side view on tablets
                initialPage: TodoListPage { }
            }
        }

        // profile tab
        NavigationItem {
            title: qsTr("Profile") // use qsTr for strings you want to translate
            icon: IconType.circle

            NavigationStack {
                initialPage: ProfilePage {
                    // handle logout
                    onLogoutClicked: {
                        logic.logout()

                        // jump to main page after logout
                        navigation.currentIndex = 0
                        navigation.currentNavigationItem.navigationStack.popAllExceptFirst()
                    }
                }
            }
        }
    }

    // login page lies on top of previous items and overlays if user is not logged in
    LoginPage {
        visible: opacity > 0
        enabled: visible
        opacity: dataModel.userLoggedIn ? 0 : 1 // hide if user is logged in

        Behavior on opacity { NumberAnimation { duration: 250 } } // page fade in/out
    }
//    FloatingActionButton {
//             icon: IconType.creditcard
//             anchors.bottom: navigation.bottom
//             onClicked: console.log("FloatingActionButton Clicked")
//             visible: true // show on all platforms, default is only Android
//           }
}
