cmake_minimum_required( VERSION 3.14 )

project( RPiClient LANGUAGES CXX )
# set( PROJECT_NAME RPiClient )
message( "${CYN}Configuring project : ${PROJECT_NAME}${NORM}" )

set( CMAKE_C_COMPILER   /usr/bin/gcc-8 )
set( CMAKE_CXX_COMPILER /usr/bin/g++-8 )

set( CMAKE_SYSTEM_NAME Linux )
set( CMAKE_SYSTEM_PROCESSOR arm )

set( RPI_PTH /media/constantine/Work/BOARDS/RASPBERRY )
set( PRI_TOOLS_PTH ${RPI_PTH}/tools-master )

###########
### Sysroot
###########
set( CMAKE_SYSROOT
    ${PRI_TOOLS_PTH}/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf/sysroot )
set( CMAKE_FIND_ROOT_PATH
    ${PRI_TOOLS_PTH}/arm-bcm2708/arm-linux-gnueabihf/arm-linux-gnueabihf )

set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM  NEVER )
set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY  ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE  ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_PACKAGE  ONLY )

set( CMAKE_LIBRARY_PATH     ${CMAKE_SYSROOT}/usr/lib64 )
set( CROSS_COMPILE_INCLUDES ${CMAKE_SYSROOT}/usr/include/linux )

message( "${RED}" "Sysroot path is set to : " ${CMAKE_SYSROOT} "${NORM}" )

############
### Compiler
############
set( GDB_PTH ${PRI_TOOLS_PTH}/arm-bcm2708/arm-linux-gnueabihf/bin )
set( CROSS_COMPILE ${GDB_PTH}/arm-linux-gnueabihf- )
message( "${RED}" "Cross compile is set to : " ${CROSS_COMPILE} "${NORM}" )

set( CC     ${CROSS_COMPILE}gcc )
set( CXX    ${CROSS_COMPILE}g++ )
set( CMAKE_CXX_COMPILER         ${CXX} )
set( CMAKE_CXX_COMPILER_WORKS   1 )
set( CMAKE_C_COMPILER           ${CC} )   
set( CMAKE_C_COMPILER_WORKS     1 )

set( CMAKE_BUILD_TYPE Debug )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -std=c++14 -O0 -mfpu=neon" )
# message( "${CYN}" "CMAKE_CXX_FLAGS : " ${CMAKE_CXX_FLAGS} "${NORM}")
set( CMAKE_INSTALL_PREFIX           ${CMAKE_SOURCE_DIR}/RPiOut )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/RPiOut )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/RPiOut )
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/RPiOut )

###########
### Sources
###########
# CnP generated files intentionally separated
file( GLOB CXX_TEST_FILES     ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp )
file( GLOB CXX_RESOURCE_FILES ${CMAKE_CURRENT_SOURCE_DIR}/../resource/*.c++ )
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/../resource )
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/../CapNprotoLib/CnPlibRPiInstall/include )
add_executable(
    ${PROJECT_NAME}.out
    ${CXX_TEST_FILES}
    ${CXX_RESOURCE_FILES}
)
link_directories( ${CMAKE_CURRENT_SOURCE_DIR}/../CapNprotoLib/CnPlibRPiInstall/lib )

set( CnP_LIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../CapNprotoLib/CnPlibRPiInstall/lib)
file( GLOB CnP_LIB_FILES  ${CnP_LIB_DIR}/*.a )
message( "${YEL}" "CapNproto libraries : " ${CnP_LIB_DIR} "${NORM}" )
execute_process (
    COMMAND 
    bash -c "ls -ls ${CnP_LIB_DIR}"
)

target_link_libraries (
    ${PROJECT_NAME}.out
LINK_PRIVATE
    ${CnP_LIB_FILES}
)