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
        Text {
            id: _title
            Layout.alignment: Qt.AlignHCenter
            font.pixelSize: 16
            text: qsTr("Card")
        }

        Rectangle {
            id: _titleSeparator
            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: _root.contentWidth
            color: "black"
            height: 1
        }
    }

    background: Rectangle {
        anchors.fill: parent
        color: "#8E8E93"
        radius: 10

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
}
