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
    id: d_left
    border {
        width: 5;
        color: "cyan";
    }
    width:100
    height: 100;
    property string key: "A";
   color: "transparent";
    MultiPointTouchArea {
        anchors.fill: parent
        onPressed: {
            parent.border.color = "deeppink";
           // window["Keys"]("press" + parent.key)()
            var ret = eval("Keys.press" + parent.key +"()");
        }
        onReleased: {
             parent.border.color = "cyan";
            //window["Keys"]("release" + parent.key)()
            var ret = eval("Keys.release" + parent.key +"()");
        }
    }
}
