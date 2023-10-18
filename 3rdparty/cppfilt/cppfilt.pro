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

win32{
    TARGET = cppfilt-win-$${QT_ARCH}
}
unix:!macx {
    TARGET = cppfilt-unix-$${QT_ARCH}
}
unix:macx {
    TARGET = cppfilt-macos-$${QT_ARCH}
}

DEFINES += "HAVE_STDLIB_H"
DEFINES += "HAVE_STRING_H"

INCLUDEPATH += $$PWD/src
DEPENDPATH += $$PWD/src

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

TARGETLIB_PATH = $$PWD

DESTDIR=$${TARGETLIB_PATH}/libs