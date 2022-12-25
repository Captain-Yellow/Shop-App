import QtQuick 2.0
import Felgo 3.0

Page {
    id: galleryPage
    title: "Gallery"

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
        "https://freephotos.cc/storage/preview/path/lX50HZzHoEHDcI4X1toNZB2fdIwzNO4l9RIpPAvp.jpeg",
        "https://freephotos.cc/storage/preview/path/GZKephvqpGpWJpIn3wstGkuHMCTf4ui4zBmBmjwm.jpeg",
        "https://freephotos.cc/storage/preview/path/4wnOzTmWGJPWrbefwJ3QK4yIByfJ6Q9MUU26zoQ0.jpeg",
        "https://freephotos.cc/storage/preview/path/DSC05145-2210x1473.jpg",
        "https://freephotos.cc/storage/preview/path/kkwOahuwrVwcvcxk4FQs4cZS5jU7SKzxaEOcYcMq.jpeg",
        "https://freephotos.cc/storage/preview/path/ax48cPKUrpCCz8XeCyJZ0dZ5KEf4ykT8bToYyRc3.jpeg",
        "https://freephotos.cc/storage/preview/path/lazy-sunday-healthy-breakfast-2210x1475.jpg",
        "https://freephotos.cc/storage/preview/path/E8Kb2H8vleSZJIGHuAPp1yTJFvrmA4FUzcz2qKeA.jpeg",
        "https://freephotos.cc/storage/preview/path/VZtZW1W8BqVDqEPbBvDEPC0BNo2vmcct8OUGnBp4.jpeg",
        "https://freephotos.cc/storage/preview/path/fresh-romantic-morning-breakfast-in-bed-2210x1473.jpg",
        "https://freephotos.cc/storage/preview/path/fQKtfXnvYxt4gEhbpHMXtmy6rlm38JcNpx8PqGAF.jpeg",
        "https://freephotos.cc/storage/preview/path/jsKcq6fJut7VxCczHaaDOQhyuGuKZFsLVc9FrTO3.jpeg",
        "https://freephotos.cc/storage/preview/path/E4U3MsaTaiVAGVyTURjRr7uLXi66IkTwvh8QjvhE.jpeg",
        "https://freephotos.cc/storage/preview/path/new-years-eve-party-2210x1473.jpg",
        "https://freephotos.cc/storage/preview/path/Rwbg4zDgDzbOpbg7e474hdxzvdC26bp3ymiVNU5x.jpeg",
        "https://freephotos.cc/storage/preview/path/TuLeKHJJTkR36X8xQrNMcGBgfEZTgevXkyef38dB.jpeg",
        "https://freephotos.cc/storage/preview/path/DWr5RoQl9dniVlpD6DsgVLmCMKIVIZqTVz5xtGi8.jpeg",
        "https://freephotos.cc/storage/preview/path/healthy-taco-with-place-for-text-free-photo-2210x1473.jpg",
        "https://freephotos.cc/storage/preview/path/BId8s64z6CKOTpWQXlPhhLs2dhJwScIpRZ0PopYg.jpeg",
        "https://freephotos.cc/storage/preview/path/x46DCd432jwY401qYT5pTiyvZBNgv6msxiixJdB6.jpeg",
        "https://freephotos.cc/storage/preview/path/birthday-cake-with-chocolate-decorations-2210x1473.jpg",
        "https://freephotos.cc/storage/preview/path/N6oTQPJsf8XhHwElknpA5Re0yMVSCoSSTvSulREv.jpeg",
        "https://freephotos.cc/storage/preview/path/sweet-healthy-buckwheat-dumplings-with-strawberries-2210x1473.jpg",
        "https://freephotos.cc/storage/preview/path/slicing-bread-knife-close-up-2210x1473.jpg",
        "https://freephotos.cc/storage/preview/path/WebOpFqcGtnuRktcFYTxg0OV5D79sYsmQJS49l1P.jpeg",
        "https://freephotos.cc/storage/preview/path/hkiQ0TYwxzJPa0htUw8Qbum0paZimTi8yb0Q6Csy.jpeg",
        "https://freephotos.cc/storage/preview/path/chocolate-cereal-balls-breakfast_free_stock_photos_picjumbo_HNCK1995-2210x1473.jpg",
        "https://freephotos.cc/storage/preview/path/24kzha5bKFqa2lcSMhq5BDCGYjk9GQymWHzhmikJ.jpeg",
        "https://freephotos.cc/storage/preview/path/traditional-italian-tiramisu-trifles-2210x3315.jpg",
        "https://freephotos.cc/storage/preview/path/9H0yUDCcmj2wEPhl2RoyTlLAm8fkG1if3JYdgSSk.jpeg",
        "https://freephotos.cc/storage/preview/path/XE0AAaLP4NS1MMvCyVpsbQja3NLAdYsw3SYKVcoB.jpeg",
        "https://freephotos.cc/storage/preview/path/7loVnWaqXMvpsmu7QDlQ68EGK8Gmcec1P53EYSDa.jpeg",
        "https://freephotos.cc/storage/preview/path/w0Zj0FmM8yVbmrcLmgxXnRtnKsvL8jz9cmmFlKrc.jpeg",
        "https://freephotos.cc/storage/preview/path/P1020985-2210x1474.jpg"
    ]



    //backgroundColor: Qt.rgba(1,1,1, 0.75)
    backgroundColor: "#f2f2f2"
    RoundedImage {
        id: galleryPagePhoto
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: dp(150)
        height: dp(150)
        fillMode: Image.PreserveAspectCrop
        source: "https://freephotos.cc/storage/preview/path/woman-shopping-christmas-gifts-2210x1473.jpg"
        // Using half the width as radius causes a full circle
        radius: width/2
    }

    //    Text {
    //        id: shopNameText
    //        anchors.top: galleryPagePhoto.bottom
    //        anchors.horizontalCenter: parent.horizontalCenter
    //        text: qsTr("Please see Our shop Gallery")
    //        color: "black"
    //    }
    //    Rectangle {
    //        id: spaceRect
    //        anchors.top: shopNameText.bottom
    //        width: 10
    //        height: 10
    //        color: galleryPage.backgroundColor
    //    }
    Page {
        id: fullscreenPhotoPage
        visible: false
        backgroundColor: Qt.rgba(0.0,0.0,0.0, 0.75)
        Image {
            id: newPageImage
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: ""
        }
}


    NavigationStack {
        id: galleryNavigation
        anchors.top: galleryPagePhoto.bottom
        Page {


            title: qsTr("Please see Our shop Gallery")
            backgroundColor: "gray"
            AppFlickable {
                id: galleryFlick
                anchors.fill: parent
                contentHeight: contentColumn.height //1000
                contentWidth: contentColumn.width

                Column {
                    id: contentColumn
                    width: parent.width
                    spacing: 3

                    Repeater {
                        model: 15

                        Row {
                            AppImage {
                                id: firstPhoto
                                x: 0
                                y: 0
                                width: galleryNavigation.width/3
                                height: galleryNavigation.width/3
                                source: photos.pop()
                                horizontalAlignment: Text.AlignHCenter
                                fillMode: Image.PreserveAspectCrop
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        recImage.source = firstPhoto.source
                                        fullscreenImage.visible == false ? fullscreenImage.visible = true : fullscreenImage.visible = false
                                        //backImage.visible == false ? backImage.visible = true : backImage.visible = false
                                        newPageImage.source = firstPhoto.source
                                        navigation.currentIndex = 0
                                        navigation.currentNavigationItem.navigationStack.push(fullscreenPhotoPage)
                                    }
                                }
                            }
                            AppImage {
                                id: secondPhoto
                                x: galleryNavigation.width/3
                                y: 0
                                width: galleryNavigation.width/3
                                height: galleryNavigation.width/3
                                source: photos.pop()
                                horizontalAlignment: Text.AlignHCenter
                                fillMode: Image.PreserveAspectCrop
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        recImage.source = secondPhoto.source
                                        fullscreenImage.visible == false ? fullscreenImage.visible = true : fullscreenImage.visible = false
                                        //backImage.visible == false ? backImage.visible = true : backImage.visible = false
                                    }
                                }
                            }
                            AppImage {
                                id: threedPhoto
                                x: galleryNavigation.width/3 + galleryNavigation.width/3
                                y: 0
                                width: galleryNavigation.width/3//galleryNavigation.width/3
                                height: galleryNavigation.width/3//galleryNavigation.height/3//dp(50)
                                source: photos.pop()
                                horizontalAlignment: Text.AlignHCenter
                                fillMode: Image.PreserveAspectCrop
                                MouseArea {
                                    anchors.fill: parent
                                    onClicked: {
                                        recImage.source = threedPhoto.source
                                        fullscreenImage.visible == false ? fullscreenImage.visible = true : fullscreenImage.visible = false
                                        //backImage.visible == false ? backImage.visible = true : backImage.visible = false
                                    }
                                }
                            }
                        }
                    }
                }
            }
            Rectangle {
                id: fullscreenImage
                visible: false
                width: 300
                height: 300
                anchors.top: galleryPagePhoto.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                color: "transparent"
                //this Rectangle is needed to keep the source image's fillMode
                Rectangle {
                    id: imageSource
                    anchors.fill: parent
                    Image {
                        id: recImage
                        anchors.fill: parent
                        source: ""
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
                id: backImage
                visible: false
                flat: false
                iconSource: IconType.arrowleft
                text: "back"
                iconSize: 100
                anchors.bottom: parent.bottom
                onClicked: {
                    backImage.visible = false
                    fullscreenImage.visible = false
                }
            }
        }
        ScrollIndicator {
            flickable: galleryFlick
        }
    }
}


