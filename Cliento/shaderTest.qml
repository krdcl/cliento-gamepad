import QtQuick 2.4
import QtQuick 2.0
import QtQuick.Window 2.2
//import QtLocation 5.3
import com.client 1.0
import QtQuick.Controls 1.3
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.3
Window {
//    Rectangle {
    visible: true

    width: 400
    height: 400
    id: main
     property real init_shader_radius: 0.3
Image {
    id: img
    width: 400
    height: 400

    source: "qrc:/../../27372627-blaze-fire-flame-texture-background-Stock-Photo.jpg"

    /*MouseArea {
       anchors.fill: parent
       onClicked: {
           shader.enabled = !shader.enabled

       }
    }*/
}





/*ShaderEffect {
        id: blurfragmentshader
        anchors.fill:  img
        fragmentShader: "blurfragmentshader.fsh"

        property variant source: ShaderEffectSource {
             sourceItem: img;
             hideSource: true
              smooth: true
        }
    }*/
Client {
      id: myclient
   }

ShaderEffect {
        id: verticalShader
        anchors.fill:  img
        QtObject {
              id: d
              property string fragmentShaderCommon: "
                  #ifdef GL_ES
                      precision mediump float;
                  #else
                  #   define lowp
                  #   define mediump
                  #   define highp
                  #endif // GL_ES
              "
          }
        //vertexShader: "hblurvertexshader.vsh"
        fragmentShader: d.fragmentShaderCommon + myclient.readFile("blurfragmentshader.fsh")
        property variant source: ShaderEffectSource {
             sourceItem: img;
             hideSource: true
    }
}
/*
    ShaderEffect {
        id: horizontalShader
        anchors.fill: img
        vertexShader: "hblurvertexshader.vsh"
 property variant source:  verticalShader

    }*/



}

