INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

HEADERS += \
    $$PWD/xcppfilt.h

SOURCES += \
    $$PWD/xcppfilt.cpp

!contains(XCONFIG, cppfilt) {
    XCONFIG += cppfilt
    include($$PWD/3rdparty/cppfilt/cppfilt.pri)
}

DISTFILES += \
    $$PWD/LICENSE \
    $$PWD/README.md \
    $$PWD/xcppfilt.cmake
