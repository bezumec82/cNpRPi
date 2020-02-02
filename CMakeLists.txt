cmake_minimum_required( VERSION 3.14 )

if(NOT WIN32)
  string(ASCII 27 ESC)
  set( NORM "${ESC}[39m" )
  set( RED  "${ESC}[31m" ) 
  set( GRN  "${ESC}[32m" )
  set( CYN  "${ESC}[36m" )
  set( MAG  "${ESC}[35m" )
  set( YEL  "${ESC}[33m" )
  set( BLU  "${ESC}[34m" )
endif()

### Add this options before PROJECT keyword
set( CMAKE_DISABLE_IN_SOURCE_BUILD ON )
set( CMAKE_DISABLE_SOURCE_CHANGES  ON )

project( CnPtoCuda )
message( "${CYN}Configuring project : ${PROJECT_NAME}${NORM}" )

if( "${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_BINARY_DIR}" )
  message( SEND_ERROR "In-source builds are not allowed." )
endif ()

set( CMAKE_VERBOSE_MAKEFILE ON )
set( CMAKE_COLOR_MAKEFILE ON )


execute_process (
  COMMAND 
  bash -c "${CMAKE_CURRENT_SOURCE_DIR}/compileCnP.sh ${CMAKE_CURRENT_SOURCE_DIR}/resource/*.capnp"
)

add_subdirectory( Tools )
add_subdirectory( x86CnPtest )
add_subdirectory( x86server )
add_subdirectory( RPiClient )
add_subdirectory( cudaTest )