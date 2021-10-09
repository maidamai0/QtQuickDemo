import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ApplicationWindow {
    width: 400
    height: 400
    visible: true

    title: "QtQuick demo"

    Flow {
        anchors.fill: parent
        anchors.margins: 4
        spacing: 10

        Button {
            id: button
            text: qsTr("Click Button")
        }

        ComboBox {
            model: ["First", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth", "Tenth"]
        }
    }
}
