cmake_minimum_required( VERSION 2.6 )

project( Transport )

set( CMAKE_DISABLE_IN_SOURCE_BUILD ON )
set( CMAKE_DISABLE_SOURCE_CHANGES  ON )

if( "${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_BINARY_DIR}" )
  message( SEND_ERROR "In-source builds are not allowed." )
endif ()

set( CMAKE_VERBOSE_MAKEFILE OFF )
set( CMAKE_COLOR_MAKEFILE ON )
set( CMAKE_VERBOSE_MAKEFILE ON )

execute_process (
    COMMAND 
    bash -c "${CMAKE_CURRENT_SOURCE_DIR}/compileCnP.sh ${CMAKE_CURRENT_SOURCE_DIR}/resource/*.capnp"
)


add_subdirectory(x86Test)