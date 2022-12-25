import QtQuick 2.0
import Felgo 3.0


Page {
    id: profilePage
    title: qsTr("Profile")

    signal logoutClicked
    useSafeArea: false

    AppCard {
        id: card
        width: parent.width
        margin: dp(15)
        paper.radius: dp(5)

        // We use a slightly adapted SimpleRow as header cell, this gives us nice styling with low effort
        header: SimpleRow {
            imageSource: "https://felgo.com/web-assets/girl.jpg"
            text: "Your Name"
            detailText: "Detail Text can be anything"

            enabled: false
            image.radius: image.width/2
            image.fillMode: Image.PreserveAspectCrop
            style: StyleSimpleRow {
                showDisclosure: false
                backgroundColor: "transparent"
            }
        }

        // Some useless buttons to display in the actions cell
        actions: Row {
            IconButton {
                icon: IconType.send
            }
            IconButton {
                icon: IconType.sharealt
            }
            IconButton {
                icon: IconType.user
            }
            AppButton {
                text: "Edit Address"
                flat: true
                onClicked: {
                    navigation.currentIndex = 3
                    navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("MapAddress.qml"))
                }
            }
        }

        media: AppImage {
            id: profileImage
            width: parent.width
            fillMode: Image.PreserveAspectFit
            source: "https://www.google.com/maps/vt/data=gSOC7g_4HeyATf4uIpYX9zoYyqlf5CXIYrgjUvAJX2t12IR4tg5wnK-feVxXB8_FVWqyDOqy2xVPbutKJJo6qGpUQRayI8u1qYp09zyWn4gF7tm7ZqAOqZUj4sNDfoz2ALd6aTsG2BLZ"
                //"https://freephotos.cc/storage/preview/path/young-girl-enjoying-moment-and-looking-over-the-city-of-san-francisco_free_stock_photos_picjumbo_HNCK3432-2210x1474.jpg"
        }

        // For the content cell, we use some placeholder text
        content: AppText{
            width: parent.width
            padding: dp(15)
            text: "Address\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        }
    }

    Rectangle {
        id: fullscreenImage
        visible: false
        width: 250
        height: 250
        anchors.centerIn: parent
        color: "transparent"

        //this Rectangle is needed to keep the source image's fillMode
        Rectangle {
            id: imageSource


            anchors.fill: parent
            Image {
                anchors.fill: parent
                source: "https://felgo.com/web-assets/girl.jpg"

                fillMode: Image.PreserveAspectCrop
            }
            visible: false

            layer.enabled: true
        }

        Rectangle {
            id: maskLayer
            anchors.fill: parent
            radius: parent.width / 2

            color: "red"

            border.color: "black"

            layer.enabled: true
            layer.samplerName: "maskSource"
            layer.effect: ShaderEffect {

                property var colorSource: imageSource
                fragmentShader: "
                    uniform lowp sampler2D colorSource;
                    uniform lowp sampler2D maskSource;
                    uniform lowp float qt_Opacity;
                    varying highp vec2 qt_TexCoord0;
                    void main() {
                        gl_FragColor =
                            texture2D(colorSource, qt_TexCoord0)
                            * texture2D(maskSource, qt_TexCoord0).a
                            * qt_Opacity;
                    }
                "
            }

        }

        // only draw border line
        Rectangle {
            anchors.fill: parent

            radius: parent.width / 2

            border.color: "black"
            border.width: 2

            color: "transparent"
        }
    }


    AppButton {
        id: logoutBt
        //anchors.centerIn: parent
        anchors.top: card.bottom
        anchors.right: card.right
        text: qsTr("Logout")
        flat: false
        onClicked: logoutClicked()
    }
    AppButton {
        id: settingBt
        anchors.top: card.bottom
        anchors.left: card.left
        text: "Setting"
        flat: false

        onClicked: {
            navigation.currentIndex = 3
            navigation.currentNavigationItem.navigationStack.push(Qt.resolvedUrl("SettingProfile.qml"))
        }
    }

    AppButton {
        text: "Show Photo"
        anchors.top: card.bottom
        anchors.right: logoutBt.left
        flat: false
        onClicked: {
            fullscreenImage.visible == false ? fullscreenImage.visible = true : fullscreenImage.visible = false
            //PictureViewer.show(profilePage, "https://felgo.com/web-assets/girl.jpg")
        }
    }

}
