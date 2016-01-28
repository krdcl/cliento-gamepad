import QtQuick 2.4
import QtQuick.Window 2.2
//import QtLocation 5.3
import com.client 1.0
import QtQuick.Controls 1.3
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.3
import QtQuick.Window 2.2
import "KeyPress.js" as Keys


Rectangle {
    id: d_pad
    width: 100;
    height: 100;
    color: "transparent";
    border {
        width: 5;
        color: "cyan";
    }
    anchors.bottom: leftPart.bottom;


    Rectangle {
        id: d_left
        border {
            width: 5;
            color: "cyan";
        }
        width: d_pad.width/3
        height: width;
        color: d_pad.color;
        x: 0;
        y: width;
        MultiPointTouchArea {
            anchors.fill: parent
            onPressed: {
                parent.border.color = "deeppink";
                Keys.pressA();
            }
            onReleased: {
                 parent.border.color = d_pad.border.color;
                 Keys.releaseA();
            }
        }
    }
    Rectangle {
        id: d_up;
        border {
            width: 5;
            color: "cyan";
        }
        width: d_pad.width/3
        height: width;
        color: d_pad.color;
        x:width
        y: 0;
        MultiPointTouchArea {
            anchors.fill: parent
            onPressed: {
                parent.border.color = "deeppink";
                Keys.pressW();
            }
            onReleased: {
                 parent.border.color = d_pad.border.color;
                 Keys.releaseW();
            }
        }
    }
    Rectangle {
        id: d_right
        border {
            width: 5;
            color: "cyan";
        }
        width: d_pad.width/3
        height: width;
        color: d_pad.color;
        x:2*width;
        y:width;
        MultiPointTouchArea {
            anchors.fill: parent
            onPressed: {
                parent.border.color = "deeppink";
                Keys.pressS();
            }
            onReleased: {
                 parent.border.color = d_pad.border.color;
                 Keys.releaseS();
            }
        }
    }
    Rectangle {
        id: d_down
        border {
            width: 5;
            color: "cyan";
        }
        width: d_pad.width/3
        height: width;
        color: d_pad.color;
        x: width
        y: 2*width
        MultiPointTouchArea {
            anchors.fill: parent
            onPressed: {
                parent.border.color = "deeppink";
                Keys.pressS();
            }
            onReleased: {
                 parent.border.color = d_pad.border.color;
                 Keys.releaseS();
            }
        }
    }






}

