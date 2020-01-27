cmake_minimum_required( VERSION 3.14 )

set( PROJECT_NAME CnPtest )

message( "Configuring test : " ${PROJECT_NAME}.out )

set( CMAKE_C_COMPILER   /usr/bin/gcc )
set( CMAKE_CXX_COMPILER /usr/bin/g++ )

set( CMAKE_BUILD_TYPE Debug )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -std=c++17 -O0 -DLINUX_TERMINAL" )
set( CMAKE_INSTALL_PREFIX           ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )

execute_process (
    COMMAND 
    bash -c "
    cd ${CMAKE_CURRENT_SOURCE_DIR}/resource &&
    capnp compile -o c++ test.capnp"
)

# CnP generated files intentionally separated
file( GLOB CXX_TEST_FILES     ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp )
file( GLOB CXX_RESOURCE_FILES ${CMAKE_CURRENT_SOURCE_DIR}/resource/*.cpp )
include_directories( resource )

add_executable(
    ${PROJECT_NAME}.out
    ${CXX_TEST_FILES}
    ${CXX_RESOURCE_FILES}
)

target_link_libraries (
    ${PROJECT_NAME}.out
LINK_PRIVATE
    capnp
)