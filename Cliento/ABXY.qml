

import QtQuick 2.4
import QtQuick.Window 2.2
//import QtLocation 5.3
import com.client 1.0
import QtQuick.Controls 1.3
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.3
import QtQml 2.1

Rectangle {
    id: buton;

    onWidthChanged: {
        height = width;
    }
     property real init_width: 100;
    property string text_value
     property string keyVK: "VK_DOWN"
    property int init_x;
    property int init_y;
    property real y_scale : 1.05
    x: init_x
    y: init_y
    width: init_width;
    height: init_width;
    color: "transparent";
    border {
        width: 5;
        color: "cyan";
    }
    radius: width * 0.5;
    Component.onCompleted: {

    }

    TextArea {
        enabled: false;
        x: buton.width * 0.2
        width : buton.width  ;
        height: width;
        text: text_value;
        backgroundVisible: false;
        font.pixelSize: buton.width*0.7;
        textColor: "cyan";
        readOnly: true;
    }

    MultiPointTouchArea {
        anchors.fill: parent
        onPressed:  {
            buton.width = buton.init_width * 1.2 ;
            buton.height = buton.width;
             buton.x = init_x* 0.95;
            buton.y = init_y* buton.y_scale;
            myclient.send_data(keyVK, 1 ) ;

        }
        onReleased: {
            buton.x = init_x;
            buton.y = init_y
            buton.width = buton.init_width ;
             buton.height = buton.init_width;
            myclient.send_data(keyVK, 0 )
        }
    }

}

