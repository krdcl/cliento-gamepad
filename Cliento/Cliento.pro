TEMPLATE = app

QT += qml quick network widgets declarative opengl websockets

SOURCES += main.cpp \
    client.cpp

RESOURCES += qml.qrc \
    pic.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    client.h

DISTFILES += \
    hblurvertexshader.vsh
