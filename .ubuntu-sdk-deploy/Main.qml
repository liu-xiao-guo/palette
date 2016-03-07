import QtQuick 2.0
import Ubuntu.Components 1.1
import Ubuntu.Components.Themes 0.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "palette.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        title: i18n.tr("palette")

        Palette {
            id: theme
        }

        SystemPalette {
            id: palette
        }

        Column {
            anchors.fill: parent
            spacing: units.gu(2)

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: Theme.palette.selected.background
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: Theme.palette.selected.overlay
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: Theme.palette.selected.foreground
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: Theme.palette.selected.selection
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: Theme.palette.normal.overlay
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: Theme.palette.normal.foreground
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: Theme.palette.normal.background
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: Theme.palette.normal.selection
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: palette.highlight
            }

            Rectangle {
                width: parent.width
                height: units.gu(5)
                color: palette.button
            }

            Text {
                text: "this is good"
                color: Theme.palette.normal.baseText
            }
        }
    }
}

