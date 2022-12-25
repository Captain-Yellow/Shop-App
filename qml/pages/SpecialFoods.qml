import QtQuick 2.0
import Felgo 3.0

Page {
    id: kidClothes
    title: "kids clothes"
    property var clothesPhoto: [
        "https://lp2.hm.com/hmgoepprod?set=source[/7c/f7/7cf72785155af51f36289fcf7831e7e11098e5e7.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/9f/0b/9f0ba9c0be588f5aa8e29d82f6ce7c47903926e6.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/db/a1/dba186d0ea11021ea025c2cd222bd36af53111e9.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://media.kohlsimg.com/is/image/kohls/dp-ki-dm-20210506-visnav-a-1?scl=1&fmt=pjpeg",
        "https://lp2.hm.com/hmgoepprod?set=source[/fa/40/fa40dce2116cd5b9fe66466437856adb0ca05573.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/82/69/8269f32bd5df0db893c7b90f52812270244a037f.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/7b/26/7b26068379bbc8b16b1a13422c2dd5bd7cd23e71.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/0d/80/0d802577ac00fe7fa938674515be734894fe216d.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/ae/05/ae05b695762accb75cf0f157e012e0c02b934194.jpg],origin[dam],category[kids_boy8y_blazersuits],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/94/d1/94d1ebac892a411984b4dfa6fc3aa4f70c7488f6.jpg],origin[dam],category[kids_boy8y_jeans_skinny],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/74/5e/745e3ce7b2df41a73a1b187739d8cdf534889a9a.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/b9/b0/b9b00990b56d58b71c02c56ffebbacb8fa45a585.jpg],origin[dam],category[kids_boy8y_jeans_skinny],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/78/75/7875be7b314b311efadbfe6302aee62598f03f84.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/b5/55/b555bdda857551b1e46352085888d36d1f87a823.jpg],origin[dam],category[kids_boys14y_trousers],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/a7/60/a7605689a8aff3f7312a07df439bd7cab2322a82.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/92/06/9206b8e663e5239ef607e8f5f3ecfb68aadefa8f.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/bd/42/bd42f83a621aca6eba84ddd32699c437dfe12b55.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://media.kohlsimg.com/is/image/kohls/dp-ki-d-20210506-landsend-half?scl=1&fmt=pjpeg",
        "https://media.kohlsimg.com/is/image/kohls/dp-ki-dm-20210708-stylitics-halves-1?scl=1&fmt=pjpeg",
        "https://media.kohlsimg.com/is/image/kohls/dp-ki-dm-20210708-stylitics-halves-2?scl=1&fmt=pjpeg",
        "https://media.kohlsimg.com/is/image/kohls/dp-ki-dm-20210506-visnav-b-1?scl=1&fmt=pjpeg",
        "https://lp2.hm.com/hmgoepprod?set=source[/f9/bc/f9bc285cbbaca8b011a60fe59b56c83525e32796.jpg],origin[dam],category[kids_boy8y_shirts],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/5e/02/5e022d95c47029837129448ffe589c9d33c151fa.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/13/74/1374dab350fe1bcb1219dba7875ee29ca45761c4.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/3e/5b/3e5b91b1de02ed87b54549ecdc1d23ae7d4f42ac.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/d4/38/d4387fd025bf7140c7bbe23ef1d1b78987f19860.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/02/1b/021ba3af79edf14b061836fa2f53ca4c3a16f789.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/01/aa/01aaa77e579da8516176783e2709b84dc3a8e470.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/9f/34/9f34b540f303ad70787551e76a9dcb481655d884.jpg],origin[dam],category[kids_boys14y_shorts],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/15/10/1510ef5091c9df1204cfa3e025f955ad6b3a6472.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/39/26/3926dd4726c6719216378bf24747d4532f79297d.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/3c/54/3c54c2986e9bc00beef88fbb34d89889cace3a17.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/95/ab/95ab96c78daf7751a77c0e8466dc5a9c89aed729.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://media.kohlsimg.com/is/image/kohls/lp-athleisure-girls-lp-20210311-baby?scl=1&fmt=pjpeg",
        "https://lp2.hm.com/hmgoepprod?set=source[/16/4e/164e26b17e4a5434568ec3b06cb91322598e9ed1.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/ef/65/ef657798ec996bdaead593c045427862b3238b04.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/28/80/288013dd76dac3cd056ec9c8a13868854f5b3312.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/7d/27/7d27d71588a90fc98454d6530c951017932845c5.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/2a/b8/2ab849963f742b36c339835533a734f65e06625c.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/b8/b4/b8b453a81959f5fde6cbd0e145179d7cb7e25035.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/85/84/85848bcc5c4f5e911c673cb0e79a4bec91928a6e.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/e2/6b/e26bbd947f7b17f12ccc6f96649785ab4c45358b.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/96/6c/966cc3c1567267d089b92458b0d333ae9334ef2d.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/20/09/20094298490ed985fd8d0c475c24c5bec115afd7.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/10/f5/10f5a0a941235217120856e36fb858a386edc0d4.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/a6/3b/a63b7ebc9ff25ede363b196415015f0f66650808.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/fa/7d/fa7d10cf323e284273487df35adcdf97d2e20c19.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/79/ad/79adb739bfa478abf84e7ede95679ee50a9c83f9.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]",
        "https://lp2.hm.com/hmgoepprod?set=source[/50/88/5088eec066eba77a557228a24e3c77a7ce657f91.jpg],origin[dam],category[],type[LOOKBOOK],res[z],hmver[1]&call=url[file:/product/main]"
    ]
    property int photoIndex: 0
    property double clothesPrice: [12.55, 19.85, 12.35, 19.45, 6.25, 15.75, 17.90, 18.15, 34.25, 14.35, 10.15, 11.25, 21.50, 12.35, 19.45, 6.25, 15.75, 17.90, 23.95, 18.15, 34.25, 14.35, 10.15, 11.25, 21.50,
        12.55, 19.85, 12.35, 19.45, 6.25, 15.75, 17.90, 18.15, 34.25, 14.35, 10.15, 11.25, 21.50, 12.35, 19.45, 6.25, 15.75, 17.90, 23.95, 18.15, 34.25, 14.35, 10.15, 11.25, 21.50]
    Item {
        id: main
        visible: true
        width: parent.width
        height: parent.height
        ListView {
            id: verticalList
            width: parent.width;
            height: parent.height;
            //contentY : flickable.contentY
            anchors.fill: parent
            spacing: 10
            orientation: ListView.Vertical
            model: 5
            delegate: ListView {
                id: horizontalList
                width: parent.width;
                height: 200;
                contentX : flickable.contentX
                spacing: 10
                orientation: ListView.Horizontal
                model: 9
                property var verticalIndex : index
                delegate: Rectangle {
                    id: rect1
                    property var colors : ["#ffa07a", "#add8e6", "#ffb6c1"]//['red', 'green', 'blue']
                    //property var widths : [100, 200, 300]
                    height: 200
                    width: 150
                    radius: 10
                    color: colors[model.index % colors.length]
                    MouseArea {
                        anchors.fill: boxOneBt
                        onClicked: {
                            var component = Qt.createComponent("AddPage.qml")
                            var loadwin = component.createObject(kidClothes)
                            loadwin.productPhotos = photo1.source
                            loadwin.productPrices = 9.45//kidClothes.clothesPrice[kidClothes.photoIndex]
                        }
                    }
                    RoundedImage {
                        id: photo1
                        anchors.top: rect1.top
                        width: 150
                        height: 150
                        fillMode: Image.PreserveAspectCrop
                        //anchors.fill:
                        radius: 200
                        smooth: true
                        source: clothesPhoto.pop()//clothesPhoto[photoIndex]
                        //Component.onCompleted: {kidClothes.photoIndex++}
                    }
                    AppButton {
                        id: boxOneBt
                        anchors.horizontalCenter: rect1.horizontalCenter
                        anchors.top: photo1.bottom
                        flat: false
                        text: "Add"
                        borderColor: "green"
                        textColor: "blue"
                        backgroundColor :"lightgreen"
                        //                                onClicked: {
                        //                                    console.log("ok")
                        //                                    var component = Qt.createComponent("AddPage.qml")
                        //                                    var loadwin = component.createObject(kidsClothesNavigationOne)//, {productPrices: 20})
                        //                                    loadwin.productPhotos = photo1.source
                        //                                    loadwin.productPrices = 0.0//price[]
                        //                                }
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
}
