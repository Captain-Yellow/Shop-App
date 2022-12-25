import Felgo 3.0
import QtQuick 2.0
import QtQuick.Layouts 1.1

Page {
    id: registerPage

    signal registerClicked

    title: qsTr("Register")

    backgroundColor: Qt.rgba(1,1,1) // page background is translucent, we can see other items beneath the page
    useSafeArea: false // do not consider safe area insets of screen

    // login form background
    Rectangle {
        id: registerForm
        anchors.centerIn: parent
        color: "white"
        width: content.width + dp(48)
        height: content.height + dp(26)
        radius: dp(4)
    }

    // register form content
    GridLayout {
        id: content
        anchors.centerIn: registerForm
        columnSpacing: dp(20)
        rowSpacing: dp(10)
        columns: 2

        // headline
        AppText {
            Layout.topMargin: dp(8)
            Layout.bottomMargin: dp(12)
            Layout.columnSpan: 2
            Layout.alignment: Qt.AlignHCenter
            text: "Register"
        }

        // user name field
        AppText {
            text: qsTr("User name")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: username
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
        }

        // card ID field
        AppText {
            text: qsTr("Crad number")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: cardID
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
        }

        // email text and field
        AppText {
            text: qsTr("E-mail")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: txtUsername
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
        }

        // password text and field
        AppText {
            text: qsTr("Password")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: txtPassword
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
            echoMode: TextInput.Password
        }

        // column for buttons, we use column here to avoid additional spacing between buttons
        Column {
            Layout.fillWidth: true
            Layout.columnSpan: 2
            Layout.topMargin: dp(12)

            // buttons
            AppButton {
                text: qsTr("Register")
                flat: false
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    navigation.currentIndex = 0
                    navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("../pages/ProfilePage.qml"))
                }
            }
        }
    }
}
