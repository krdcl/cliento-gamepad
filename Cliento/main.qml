import QtQuick 2.4
import QtQuick.Window 2.2
//import QtLocation 5.3
import com.client 1.0
import QtQuick.Controls 1.3
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.3
import QtQuick.Window 2.2


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
        onTriggered: myclient.reconect();
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

        /*onClosed: {
            mainwindow.visible = false
            lost_con_rect.visible = true
            reconect_timer.running = true;
        }

        onConnected: {
            mainwindow.visible = true
            lost_con_rect.visible = false
            reconect_timer.running = false;
        }*/
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

        MouseArea {
            id: touch
            anchors.fill: parent;
            property point prev_pos
            onPressed:  {
                prev_pos.x = mouseX;
                prev_pos.y = mouseY;
            }
            Component.onCompleted:   {
                prev_pos.x = mouseX;
                prev_pos.y = mouseY;
            }

            onPositionChanged: {
                //var str = (mouseX -  prev_pos.x) + " " + (mouseY -  prev_pos.y);
                //  var str = ((mouseX -  prev_pos.x)) + " " + ((mouseY -  prev_pos.y));
                // myclient.send_data(str, 55 );

                /* prev_pos.x = mouseX;
        prev_pos.y = mouseY;*/
            }
        }

        Rectangle {
            color : "olivedrab"
            id: leftPart
            anchors.left: mainwindow.left
            anchors.bottom: mainwindow.bottom
            anchors.top: mainwindow.top
            anchors.right: mainwindow.horizontalCenter



            RB {
                init_x: leftPart.width *0.1;
                init_y: leftPart.height * 0.05
                text_value: "LBUTTON"
                keyVK: "VK_LBUTTON"
            }

            Rectangle {
                id: l_circle
                property int radiusa : 100
                width: radiusa * 2;
                height: width;
                color: "transparent";
                //radius: radiusa;
                border {
                    width: 5;
                    color: "cyan";
                }
                anchors.bottom: leftPart.bottom;

                property bool pressUp : false;
                property bool pressDown : false;
                property bool pressLeft : false;
                property bool pressRight : false;
                Rectangle {
                    id: l_stick

                    width: l_circle.radiusa;
                    height: l_circle.radiusa;
                    color: "cyan";
                    radius: l_circle.radiusa/2
                    x: l_circle.radiusa - width/2;
                    y: x;

                    function pressUp()
                    {
                        if ( l_circle.pressUp === false)
                        {
                            l_circle.pressUp = true;
                            myclient.send_data("VK_UP", 1 );
                        }
                    }
                    function releaseUp()
                    {
                        if ( l_circle.pressUp === true)
                        {
                            l_circle.pressUp = false
                            myclient.send_data("VK_UP", 0 );
                        }
                    }
                    function pressDOWN()
                    {
                        if ( l_circle.pressDOWN === false)
                        {
                            l_circle.pressDOWN = true;
                            myclient.send_data("VK_DOWN", 1 );
                        }
                    }
                    function releaseDOWN()
                    {
                        if ( l_circle.pressDOWN === true)
                        {
                            l_circle.pressDOWN = false
                            myclient.send_data("VK_DOWN", 0 );
                        }
                    }
                    function pressLEFT()
                    {
                        if ( l_circle.pressLEFT === false)
                        {
                            l_circle.pressLEFT = true;
                            myclient.send_data("VK_LEFT", 1 );
                        }
                    }
                    function releaseLEFT()
                    {
                        if ( l_circle.pressLEFT === true)
                        {
                            l_circle.pressLEFT = false
                            myclient.send_data("VK_LEFT", 0 );
                        }
                    }
                    function pressRIGHT()
                    {
                        if ( l_circle.pressRIGHT === false)
                        {
                            l_circle.pressRIGHT = true;
                            myclient.send_data("VK_RIGHT", 1 );
                        }
                    }
                    function releaseRIGHT()
                    {
                        if ( l_circle.pressRIGHT === true)
                        {
                            l_circle.pressRIGHT = false
                            myclient.send_data("VK_RIGHT", 0 );
                        }
                    }

                    onXChanged: {
                        if (x < 0)
                            x = 0;
                        else
                        {
                            var max = l_circle.radiusa ;///- l_stick.width;
                            if (x > max)
                                x = max;
                        }

                        if (x < l_circle.radiusa/3 )
                        {
                            releaseRIGHT();
                            pressLEFT();
                        }
                        else
                            if (x > l_circle.radiusa*2/3 )
                            {
                                releaseLEFT();
                                pressRIGHT();
                            }
                    }
                    onYChanged: {

                        var form = Math.sqrt(Math.pow(l_circle.radiusa, 2) - Math.pow(l_stick.x + l_stick.width/2 - l_circle.radiusa , 2) +
                                             l_circle.radiusa - l_stick.width/2);// + l_circle.radiusa;
                        var min = -form + l_circle.radiusa;
                        console.log( min);//Math.pow(l_stick.x + l_circle.radiusa + l_stick.width/2));

                        if (y < min)
                            y = min;
                        else
                        {
                            var max = form ;//+ l_circle.radiusa;
                            if (y > max)
                                y = max;
                        }

                        if (y < l_circle.radiusa/3 )
                        {
                            releaseDOWN();
                            pressUp();
                        }
                        else
                            if (y > l_circle.radiusa*2/3 )
                            {
                                releaseUp();
                                pressDOWN();
                            }
                    }

                }
                MouseArea {
                    anchors.fill: parent;
                    drag.target: l_stick;
                    onReleased: {
                        l_stick.x = l_circle.radiusa - l_stick.width/2;
                        l_stick.y =  l_stick.x;

                        l_stick.releaseUp();
                        l_stick.releaseLEFT();
                        l_stick.releaseRIGHT();
                        l_stick.releaseDOWN();

                    }

                }
            }

        }

        Rectangle {
            color : "olivedrab"
            id: rigthPart
            anchors.left: mainwindow.horizontalCenter
            anchors.bottom: mainwindow.bottom
            anchors.top: mainwindow.top
            anchors.right: mainwindow.right

            RB {
                init_x: rigthPart.width *0.5;
                init_y: rigthPart.height * 0.05
                text_value: "RBUTTON"
                keyVK: "VK_RBUTTON"
            }

            ABXY {
                id: butonA;
                init_x: rigthPart.width * 0.4
                init_y: rigthPart.height - 1.5 *height;
                text_value: "F"
                keyVK: "VK_F"
            }
            ABXY {
                id: butonB;
                init_x: rigthPart.width * 0.7
                init_y: rigthPart.height -height * 1.2;
                text_value: "S"
                keyVK: "VK_S"
            }

            ABXY {
                id: butonX;
                init_x: rigthPart.width * 0.4
                init_y: rigthPart.height - 3 *height;
                text_value: "A"
                y_scale : 1.5
                keyVK: "VK_A"
            }
            ABXY {
                id: butonY;
                init_x: rigthPart.width * 0.7
                init_y: rigthPart.height - height * 2.7;
                text_value: "D"
                y_scale : 1.2;
                keyVK: "VK_D"
            }





        }
    }
}
