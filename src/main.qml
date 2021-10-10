import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "."

ApplicationWindow {
    width: 1280
    height: 720
    visible: true

    title: "QtQuick demo"
    font.family: "Noto Sans"
    font.pointSize: 10

    Flow {
        anchors.fill: parent
        anchors.margins: 4
        spacing: 10

        Card {
            title: qsTr("Button")

            Button {
                id: button
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("Button")
            }

            CheckBox {
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("CheckBox")
            }

            DelayButton {
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("DelayButton")
            }

            RadioButton {
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("RadioButton")
            }

            RoundButton {
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("RoundButton")
            }

            Switch {
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("Switch")
            }

            ToolButton {
                Layout.alignment: Qt.AlignHCenter
                text: qsTr("ToolButton")
            }
        }

        Card {
            title: qsTr("Delegate")

            ItemDelegate {}

            CheckDelegate {}

            RadioDelegate {}

            SwipeDelegate {}

            SwitchDelegate {}
        }

        Card {
            title: qsTr("Input")

            ComboBox {
                Layout.alignment: Qt.AlignHCenter
                model: ["First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth", "Tenth"]
            }

            Dial {}
            TextField {}
            Slider {}
            RangeSlider {}
            Tumbler {
                Layout.alignment: Qt.AlignHCenter
                model: 5
            }
        }
    }
}
