INCLUDEPATH += $$PWD/src
DEPENDPATH += $$PWD/src

win32-g++ {
    LIBS += $$PWD/libs/libcppfilt-win-$${QT_ARCH}.a
}
win32-msvc* {
    LIBS += $$PWD/libs/cppfilt-win-$${QT_ARCH}.lib
}
unix:!macx {
    LIBS += $$PWD/libs/libcppfilt-unix-$${QT_ARCH}.a
}
unix:macx {
    LIBS += $$PWD/libs/libcppfilt-macos-$${QT_ARCH}.a
}
