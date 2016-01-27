import QtQuick 2.4
import QtGraphicalEffects 1.0
import QtLocation 5.3


Rectangle {
    id: main
    width: 120
    height: 120
    color:"transparent"
    property color colorisha: "mediumspringgreen"
    property real init_shader_widtha: 50
    property int init_x;
    property int init_y;
    property string keyVK: "VK_DOWN"
    property string img_source:  "qrc:/pictures/Button-Download-icon.png";

    MultiPointTouchArea {
        anchors.fill: parent
        onPressed:  {
            main.width = init_shader_widtha * 1.5 ;
            main.height = main.width;
            main.x -=  main.width/6;
            myclient.send_data(keyVK, 1 ) ;

        }
        onReleased: {
            main.x = init_x;
            main.width = init_shader_widtha ;
             main.height = init_shader_widtha;
            myclient.send_data(keyVK, 0 )
        }
    }

    Image {
        id: img
        source: img_source;
        /*
          width: 200
          height: 200*/
        //color: main.colorisha
        width: main.width
        height: main.height
    }
    Timer {
        interval: 1; running: true; repeat: true
        onTriggered:{

            //  shader.time+=0.01

            //console.log("time: " + shader.time)
        }
    }


}
