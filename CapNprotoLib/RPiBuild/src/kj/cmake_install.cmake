# Install script for directory: /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/CnPlibRPiInstall")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/kj/libkj.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kj" TYPE FILE FILES
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/common.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/units.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/memory.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/refcount.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/array.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/vector.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/string.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/string-tree.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/hash.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/table.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/map.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/encoding.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/exception.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/debug.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/arena.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/io.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/tuple.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/one-of.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/function.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/mutex.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/thread.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/threadlocal.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/filesystem.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/time.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/main.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/windows-sanity.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kj/parse" TYPE FILE FILES
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/parse/common.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/parse/char.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kj/std" TYPE FILE FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/std/iostream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/kj/libkj-test.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kj" TYPE FILE FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/test.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kj/compat" TYPE FILE FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/compat/gtest.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/kj/libkj-async.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kj" TYPE FILE FILES
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/async-prelude.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/async.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/async-inl.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/async-unix.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/async-win32.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/async-io.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/timer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/kj/libkj-http.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kj/compat" TYPE FILE FILES
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/compat/url.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/compat/http.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/kj/libkj-gzip.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/kj/compat" TYPE FILE FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/kj/compat/gzip.h")
endif()

