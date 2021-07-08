#-------------------------------------------------
#
# Project created by QtCreator 2019-02-01T10:50:10
#
#-------------------------------------------------

QT       -= core gui

TARGET = cppfilt
TEMPLATE = lib
CONFIG += staticlib

include(../../build.pri)

CONFIG(debug, debug|release) {
    TARGET = cppfiltd
} else {
    TARGET = cppfilt
}

DEFINES += "HAVE_STDLIB_H"
DEFINES += "HAVE_STRING_H"

INCLUDEPATH += $$PWD/src
DEPENDPATH += $$PWD/src

TARGETLIB_PATH = $$PWD

win32-g++ {
    contains(QT_ARCH, i386) {
        DESTDIR=$${TARGETLIB_PATH}/libs/win32-g++
    } else {
        DESTDIR=$${TARGETLIB_PATH}/libs/win64-g++
    }
}
win32-msvc* {
    contains(QMAKE_TARGET.arch, x86_64) {
        DESTDIR=$${TARGETLIB_PATH}/libs/win64-msvc
    } else {
        DESTDIR=$${TARGETLIB_PATH}/libs/win32-msvc
    }
}
unix:!macx {
    BITSIZE = $$system(getconf LONG_BIT)
    if (contains(BITSIZE, 64)) {
        DESTDIR=$${TARGETLIB_PATH}/libs/lin64
    }
    if (contains(BITSIZE, 32)) {
        DESTDIR=$${TARGETLIB_PATH}/libs/lin32
    }
}
unix:macx {
    DESTDIR=$${TARGETLIB_PATH}/libs/mac
}

SOURCES += \
    src/cp-demangle.c \
    src/cplus-dem.c \
    src/d-demangle.c \
    src/rust-demangle.c \
    src/safe-ctype.c \
    src/xexit.c \
    src/xmalloc.c \
    src/xstrdup.c

HEADERS += \
    src/ansidecl.h \
    src/cp-demangle.h \
    src/demangle.h \
    src/environ.h \
    src/libiberty.h \
    src/safe-ctype.h
