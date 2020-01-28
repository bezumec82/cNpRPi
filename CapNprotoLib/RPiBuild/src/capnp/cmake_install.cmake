# Install script for directory: /media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp/libcapnp.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/capnp" TYPE FILE FILES
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/c++.capnp.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/common.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/blob.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/endian.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/layout.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/orphan.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/list.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/any.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/message.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/capability.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/membrane.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/dynamic.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/schema.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/schema.capnp.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/schema-lite.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/schema-loader.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/schema-parser.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/pretty-print.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/serialize.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/serialize-async.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/serialize-packed.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/serialize-text.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/pointer-helpers.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/generated-header-support.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/raw-schema.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/c++.capnp"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/schema.capnp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp/libcapnp-rpc.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/capnp" TYPE FILE FILES
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/rpc-prelude.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/rpc.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/rpc-twoparty.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/rpc.capnp.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/rpc-twoparty.capnp.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/persistent.capnp.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/ez-rpc.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/rpc.capnp"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/rpc-twoparty.capnp"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/persistent.capnp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp/libcapnp-json.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/capnp/compat" TYPE FILE FILES
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.capnp.h"
    "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/capnproto-c++-0.7.0/src/capnp/compat/json.capnp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp/libcapnpc.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnp")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnp"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp/capnp")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnp")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-c++" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-c++")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-c++"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp/capnpc-c++")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-c++" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-c++")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-c++")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-capnp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-capnp")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-capnp"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/RPiBuild/src/capnp/capnpc-capnp")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-capnp" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-capnp")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/media/constantine/Work/BOARDS/RASPBERRY/tools-master/arm-bcm2708/arm-linux-gnueabihf/bin/arm-linux-gnueabihf-strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/capnpc-capnp")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/local/bin/cmake" -E create_symlink capnp "$ENV{DESTDIR}/media/constantine/Work/BOARDS/RASPBERRY/workspace/CapNProto/CapNprotoLib/CnPlibRPiInstall/bin/capnpc")
endif()

