cmake_minimum_required( VERSION 3.14 )

project( x86server LANGUAGES CXX )
# set( PROJECT_NAME x86server )

message( "Configuring : " ${PROJECT_NAME}.out )

set( CMAKE_C_COMPILER   /usr/bin/gcc-8 )
set( CMAKE_CXX_COMPILER /usr/bin/g++-8 )

set( CMAKE_SYSTEM_NAME Linux )
set( CMAKE_BUILD_TYPE Debug )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -std=c++17 -O0" )
set( CMAKE_INSTALL_PREFIX           ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )

# CnP generated files intentionally separated
file( GLOB CXX_TEST_FILES     ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp )
file( GLOB CXX_RESOURCE_FILES ${CMAKE_CURRENT_SOURCE_DIR}/../resource/*.c++ )
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/../resource )
message( "${CYN}Configuring project : ${PROJECT_NAME}${NORM}" )
add_executable(
    ${PROJECT_NAME}.out
    ${CXX_TEST_FILES}
    ${CXX_RESOURCE_FILES}
)

target_link_libraries (
    ${PROJECT_NAME}.out
LINK_PRIVATE
    capnp-rpc
    capnp
    kj
    kj-async
)