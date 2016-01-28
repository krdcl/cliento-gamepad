import QtQuick 2.4
import QtQuick.Window 2.2
//import QtLocation 5.3
import com.client 1.0
import QtQuick.Controls 1.3
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.3
import QtQuick.Window 2.2
import "KeyPress.js" as Keys

Window {
    //    Rectangle {
    visible: true

    width: 840
    height: 480
    /* Component.onCompleted: {
              mainwindow.visible = false
            lost_con_rect.visible = true
    }*/

    Client {
        id: myclient
    }




    Timer {
        id: reconect_timer
        interval: 1000; running: false; repeat: true
        onTriggered:  {
            running = false;
            myclient.reconect();
        }
    }
    Timer {
        interval: 10; running: true; repeat: true
        onTriggered: {
            if ( touch.prev_pos.x !== touch.mouseX || touch.prev_pos.y !== touch.mouseY)
            {
                myclient.send_data(((touch.mouseX -  touch.prev_pos.x)) + " " + ((touch.mouseY -  touch.prev_pos.y)), 55 );
                touch.prev_pos.x = touch.mouseX;
                touch.prev_pos.y = touch.mouseY;
            }
        }
    }



    Connections {
        target: myclient

        onClosed: {
            mainwindow.visible = false
            lost_con_rect.visible = true
            reconect_timer.running = true;
        }

        onConnected: {
            mainwindow.visible = true
            lost_con_rect.visible = false
            reconect_timer.running = false;
        }
    }
    Rectangle {
        id: lost_con_rect
        property int time : 1000
        anchors.fill: parent
        border {color: lost_con_rectTA.textColor ; width: 10}

        color: "black"
        visible : false
        TextArea {
            id: lost_con_rectTA

            textColor: "green"
            width: parent.width*0.7
            height: parent.height*0.3
            horizontalAlignment: TextEdit.AlignHCenter
            font.pointSize: 30;
            font.family : "Arial black"
            anchors.centerIn: parent
            text: "Connection lost\nTouch to reconnect"
            style:  TextAreaStyle {
                backgroundColor : lost_con_rect.color
                renderType: Text.NativeRendering
            }
            SequentialAnimation on textColor  {
                id: text_area_Anim

                // Animations on properties start running by default
                running: true
                loops: Animation.Infinite // The animation is set to loop indefinitely
                ColorAnimation  { from: "green"; to: "black"; duration: lost_con_rect.time; easing.type: Easing.InOutQuad }
                ColorAnimation  { from: "black"; to: "green"; duration: lost_con_rect.time; easing.type: Easing.InOutQuad }
                PauseAnimation { duration: lost_con_rect.time/2 } // This puts a bit of time between the loop
            }
        }
        MouseArea
        {
            id: lost_con_rectMA
            anchors.fill: parent
            onClicked: {
                // myclient.reconect();
            }
        }
        SequentialAnimation on border.color  {
            id: lost_con_rect_Anim

            // Animations on properties start running by default
            running: true
            loops: Animation.Infinite // The animation is set to loop indefinitely
            ColorAnimation  { from: "black"; to: "green"; duration: lost_con_rect.time; easing.type: Easing.InOutQuad }
            ColorAnimation  { from: "green"; to: "black"; duration: lost_con_rect.time; easing.type: Easing.InOutQuad }
            PauseAnimation { duration: lost_con_rect.time/2 } // This puts a bit of time between the loop
        }

    }

    Rectangle {
        id: mainwindow
        anchors.fill:  parent
        color: "blue"
        visible: true
        Image {
            source: "qrc:/pictures/cvr3Swqf-bw.jpg";
            anchors.fill: parent;
        }

        Rectangle {
            id: touch_rec
            width: mainwindow.width/20
            height: width
            color: "cyan"
            visible: false
            radius: 1000;
        }

        MouseArea {
            id: touch
            anchors.fill: parent;
            property point prev_pos
            onPressed:  {
                prev_pos.x = mouseX;
                prev_pos.y = mouseY;

                touch_rec.visible = true;
            }

            onReleased: {
                touch_rec.visible = false;
            }

            Component.onCompleted:   {
                prev_pos.x = mouseX;
                prev_pos.y = mouseY;
                touch_rec.visible = false;
            }

            onPositionChanged: {
                touch_rec.x = mouseX - touch_rec.width/2
                touch_rec.y = mouseY - touch_rec.width/2
            }
        }

        Rectangle {
            color : "transparent"
            id: leftPart
            anchors.left: mainwindow.left
            anchors.bottom: mainwindow.bottom
            anchors.top: mainwindow.top
            anchors.right: mainwindow.horizontalCenter



            Batton {
                x: leftPart.width *0.1;
                y: leftPart.height * 0.05
                width: leftPart.width *0.4;
                height: leftPart.height * 0.2
                key: "LB"
            }

           Dpad {
               width: leftPart.width/2.5;
               height: width;
               anchors.bottom: leftPart.bottom
               anchors.left: leftPart.left
               anchors.margins: width/5
           }
        }

        Rectangle {
            color : "transparent"
            id: rigthPart
            anchors.left: mainwindow.horizontalCenter
            anchors.bottom: mainwindow.bottom
            anchors.top: mainwindow.top
            anchors.right: mainwindow.right



            Batton {
                x: rigthPart.width *0.5;
                y: rigthPart.height * 0.05
                key: "RB"
                width: rigthPart.width *0.4;
                height: rigthPart.height * 0.2
            }

            Batton {
                x: rigthPart.width *0.7;
                y: rigthPart.height * 0.75
                key: "SPACE"
                width: rigthPart.width *0.25;
                height: width
            }

            Batton {
                x: rigthPart.width *0.7;
                y: rigthPart.height * 0.5
                key: "SHIFT"
                width: rigthPart.width *0.25;
                height: width
            }

            Batton {
                x: rigthPart.width *0.4;
                y: rigthPart.height * 0.75
                key: "CTRL"
                width: rigthPart.width *0.25;
                height: width
            }

            Batton {
                x: rigthPart.width *0.4;
                y: rigthPart.height * 0.5
                key: "R"
                width: rigthPart.width *0.25;
                height: width
            }

            Batton {
                x: rigthPart.width *0.1;
                y: rigthPart.height * 0.75
                key: "E"
                width: rigthPart.width *0.25;
                height: width
            }







        }
    }
}
