import QtQuick 2.0
import Felgo 3.0
import QtQuick.Layouts 1.1


Page {
    id: profileSetting
    title: "Profile Setting"

    RoundedImage {
        id: profilePhoto
        anchors.left: parent.left
        anchors.right: parent.right
        width: dp(200)
        height: dp(200)
        fillMode: Image.PreserveAspectCrop
        source: "https://freephotos.cc/storage/preview/path/little-girl-with-sunflower-in-a-sunflower-field_free_stock_photos_picjumbo_HNCK4557-2210x1474.jpg"
        // Using half the width as radius causes a full circle
        radius: width/2

    }


    //    Text {
    //        text: "Your Name"
    //        font.family: "Helvetica"
    //        font.pointSize: 24
    //        anchors.top: profilePhoto.bottom
    //        anchors.left: parent.left
    //        //anchors.right: parent.right
    //        color: "red"
    //    }


    GridLayout {
        id: profileSettingContent
        anchors.top: profilePhoto.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: +dp(10)
        columnSpacing: dp(20)
        rowSpacing: dp(10)
        columns: 2

        // first box
        AppText {
            id: fullnameLabel
            anchors.right: txtFullname.left
            anchors.margins: +dp(10)
            text: qsTr("Full Name")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: txtFullname
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
        }
        // second box
        // first box
        AppText {
            id: phoneNumberLabel
            anchors.right: txtPhoneNumber.left
            anchors.margins: +dp(10)
            text: qsTr("Phone Number")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: txtPhoneNumber
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
        }
        Rectangle {
            anchors.top: txtPhoneNumber.bottom
            width: 10
            height: 10
            color: "white"
        }
    }


    NavigationStack {
        id: navigationStackProfileSetting
        anchors.top: profileSettingContent.bottom
        Page {
            title: "Address"
            backgroundColor: Theme.secondaryBackgroundColor

            // Container for the text field
            Item {
                width: parent.width
                height: dp(150)

                // Background and bottom divider for the scrollable text field
                Rectangle {
                    anchors.fill: parent
                    color: "#fff"

                    Rectangle {
                        width: parent.width
                        height: px(1)
                        anchors.bottom: parent.bottom
                        color: Theme.listItem.dividerColor
                    }
                }

                // Flickable for scrolling, with text field inside
                AppFlickable {
                    id: flick
                    anchors.fill: parent
                    contentWidth: width
                    contentHeight: appTextEdit.height

                    AppTextEdit {
                        id: appTextEdit
                        width: parent.width
                        height: Math.max(appTextEdit.contentHeight, flick.height)
                        verticalAlignment: TextEdit.AlignTop
                        // This enables the text field to automatically scroll if cursor moves outside while typing
                        cursorInView: true
                        cursorInViewBottomPadding: dp(25)
                        cursorInViewTopPadding: dp(25)
                        flickable: flick

                        text: "test1\ntest2\ntest3\ntest4\ntest5\ntest6\ntest7\ntest8\ntest9\ntest10"
                    }
                }

                ScrollIndicator {
                    flickable: flick
                }
            }
        }
    }

    AppButton {
        text: "Save"
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        onClicked: {
            console.log("Profile Setting Saved")
        }
    }
}
