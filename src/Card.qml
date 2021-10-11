import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtGraphicalEffects 1.15

Pane {
    id: _root
    property alias title: _title.text
    antialiasing: true
    contentItem: ColumnLayout {
        anchors.centerIn: parent

        RowLayout {
            Layout.alignment: Qt.AlignHCenter
            Layout.fillWidth: true
            Text {
                id: _title
                Layout.alignment: Qt.AlignHCenter
                Layout.fillWidth: true
                font.pixelSize: 16
                text: qsTr("Card")
                horizontalAlignment: Text.AlignHCenter
            }

            // Image {
            //     Layout.alignment: Qt.AlignVCenter | Qt.AlignRight
            //     source: "qrc:/qt-project.org/imports/QtQuick/Controls.2/images/double-arrow.png"
            // }
        }

        Rectangle {
            id: _titleSeparator
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: _root.contentWidth
            color: palette.button
            height: 1
        }
    }

    background: Rectangle {
        anchors.fill: parent
        color: "#f6f6f6"
        radius: 10
    }

    layer.enabled: true
    layer.effect: DropShadow {
        transparentBorder: true
        horizontalOffset: 3
        verticalOffset: 3
        samples: 25
        radius: 12
        color: "#aa000000"
    }
}
