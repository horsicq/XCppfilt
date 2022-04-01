INCLUDEPATH += $$PWD/src
DEPENDPATH += $$PWD/src

# TODO ARM
win32-g++ {
    contains(QT_ARCH, i386) {
        LIBS += $$PWD/libs/win32-g++/libcppfilt.a
    } else {
        LIBS += $$PWD/libs/win64-g++/libcppfilt.a
    }
}
win32-msvc* {
    contains(QMAKE_TARGET.arch, x86_64) {
        LIBS += $$PWD/libs/win64-msvc/cppfilt.lib
    } else {
        LIBS += $$PWD/libs/win32-msvc/cppfilt.lib
    }
}
unix:!macx {
    BITSIZE = $$system(getconf LONG_BIT)
    if (contains(BITSIZE, 64)) {
        LIBS +=  $$PWD/libs/lin64/libcppfilt.a
    }
    if (contains(BITSIZE, 32)) {
        LIBS +=  $$PWD/libs/lin32/libcppfilt.a
    }
}
# TODO ARM
unix:macx {
    LIBS +=  $$PWD/libs/mac/libcppfilt.a
}
