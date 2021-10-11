import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

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
            title: qsTr("Container")
            GroupBox {
                title: qsTr("disable/enable checkbox")
                label: CheckBox {
                    id: _checkbox
                    checked: true
                    text: qsTr("Disable/Enable CheckBox")
                }
                ColumnLayout {
                    anchors.fill: parent
                    enabled: _checkbox.checked
                    CheckBox {
                        text: qsTr("E-mail")
                    }
                    CheckBox {
                        text: qsTr("Calendar")
                    }
                    CheckBox {
                        text: qsTr("Contacts")
                    }
                }
            }
        }

        Card {
            title: qsTr("Delegate")

            ItemDelegate {
                Layout.alignment: Qt.AlignHCenter
            }

            CheckDelegate {
                Layout.alignment: Qt.AlignHCenter
            }

            RadioDelegate {
                Layout.alignment: Qt.AlignHCenter
            }

            SwipeDelegate {
                Layout.alignment: Qt.AlignHCenter
            }

            SwitchDelegate {
                Layout.alignment: Qt.AlignHCenter
            }
        }

        Card {
            title: qsTr("Input")

            ComboBox {
                Layout.alignment: Qt.AlignHCenter
                model: ["First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth", "Tenth"]
            }

            Dial {
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredHeight: 100
                Layout.preferredWidth: 100
            }
            TextField {
                Layout.alignment: Qt.AlignHCenter
            }
            Slider {
                Layout.alignment: Qt.AlignHCenter
            }
            RangeSlider {
                Layout.alignment: Qt.AlignHCenter
            }
            Tumbler {
                Layout.alignment: Qt.AlignHCenter
                Layout.preferredHeight: 80
                model: 3
            }
        }

        Card {
            title: qsTr("Navigation")
            TabBar {
                TabButton {
                    text: qsTr("Home")
                    width: 100
                }
                ToolSeparator {}
                TabButton {
                    text: qsTr("Discover")
                    width: 100
                }
                TabButton {
                    text: qsTr("Activity")
                    width: 100
                }
            }
        }

        Card {
            title: qsTr("SplitView")

            Rectangle {
                Layout.preferredHeight: 200
                Layout.preferredWidth: 200

                SplitView {
                    anchors.fill: parent
                    orientation: Qt.Horizontal

                    Rectangle {
                        implicitWidth: 60
                        color: palette.window
                        Label {
                            text: "View 1"
                            anchors.centerIn: parent
                        }
                    }
                    Rectangle {
                        implicitWidth: 60
                        SplitView.fillWidth: true
                        color: palette.window
                        Label {
                            text: "View 2"
                            anchors.centerIn: parent
                        }
                    }
                    Rectangle {
                        implicitWidth: 60
                        color: palette.window
                        Label {
                            text: "View 3"
                            anchors.centerIn: parent
                        }
                    }
                }
            }
        }
    }
}
