

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
    property real init_width: 200;
    property real init_height: 50;
    property string text_value
    property string keyVK: "VK_DOWN"
    property int init_x;
    property int init_y;
    property real y_scale : 1.05
    x: init_x
    y: init_y
    width: 200;
    height: 50;
    color: "transparent";
    border {
        width: 5;
        color: "cyan";
    }

    Component.onCompleted: {
        width = init_width;
        height = init_height;
    }

    TextArea {
        enabled: false;
        anchors.centerIn: parent
        width : buton.width  ;
        height: buton.height*1.2;
        text: text_value;
        horizontalAlignment: TextEdit.AlignHCenter;
        backgroundVisible: false;
        font.pixelSize: buton.height*0.7;
        textColor: "cyan";
        readOnly: true;
    }

    MultiPointTouchArea {
        anchors.fill: parent
        onPressed:  {
            buton.width = buton.init_width * 1.2 ;
            buton.height = buton.init_height * 1.2;
            buton.x = init_x - buton.width/11;
            buton.y = init_y* 0.7;
            myclient.send_data(keyVK, 1 ) ;

        }
        onReleased: {
            buton.x = init_x;
            buton.y = init_y
            buton.width = buton.init_width ;
            buton.height = buton.init_height;
            myclient.send_data(keyVK, 0 )
        }
    }

}

