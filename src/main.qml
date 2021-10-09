import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "."

ApplicationWindow {
    width: 400
    height: 400
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
                text: qsTr("Button")
            }

            CheckBox {
                text: qsTr("CheckBox")
            }

            DelayButton {
                text: qsTr("DelayButton")
            }

            RadioButton {
                text: qsTr("RadioButton")
            }

            RoundButton {
                text: qsTr("RoundButton")
            }

            Switch {
                text: qsTr("Switch")
            }

            ToolButton {
                text: qsTr("ToolButton")
            }
        }

        Card {
            title: qsTr("ComboBox")

            ComboBox {
                model: ["First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth", "Tenth"]
            }
        }
    }
}
