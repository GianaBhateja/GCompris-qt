/* GCompris - GCSliderStyle.qml
 *
 * Copyright (C) 2014 Holger Kaelberer
 *
 * Authors:
 *   Holger Kaelberer <holger.k@elberer.de>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program; if not, see <http://www.gnu.org/licenses/>.
 */
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.0
import GCompris 1.0

SliderStyle {
    groove: Item {
        anchors.verticalCenter: parent.verticalCenter
        implicitWidth: 250 * ApplicationInfo.ratio
        implicitHeight: 8 * ApplicationInfo.ratio
        Rectangle {
            radius: height/2
            anchors.fill: parent
            border.width: 1
            border.color: "#888"
            gradient: Gradient {
                GradientStop { color: "#bbb" ; position: 0 }
                GradientStop { color: "#ccc" ; position: 0.6 }
                GradientStop { color: "#ccc" ; position: 1 }
            }
        }
        Item {
            clip: true
            width: styleData.handlePosition
            height: parent.height
            Rectangle {
                anchors.fill: parent
                border.color: Qt.darker("#f8d600", 1.2)
                radius: height/2
                gradient: Gradient {
                    GradientStop {color: "#ffe85c"; position: 0}
                    GradientStop {color: "#f8d600"; position: 1.4}
                }
            }
        }
    }
}
