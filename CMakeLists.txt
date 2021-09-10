cmake_minimum_required(VERSION 3.14)

project(cppfilt LANGUAGES C)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

message(${PROJECT_SOURCE_DIR})

add_definitions(
    -DHAVE_STDLIB_H
    -DHAVE_STRING_H
    )

include_directories(${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/)

add_library(cppfilt STATIC
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/cp-demangle.c 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/cplus-dem.c 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/d-demangle.c
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/rust-demangle.c 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/safe-ctype.c 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/xexit.c 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/xmalloc.c 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/xstrdup.c
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/ansidecl.h 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/cp-demangle.h 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/demangle.h 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/environ.h 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/libiberty.h 
${PROJECT_SOURCE_DIR}/3rdparty/cppfilt/src/safe-ctype.h
)

set_target_properties(cppfilt PROPERTIES LINKER_LANGUAGE C)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
