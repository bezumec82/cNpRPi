cmake_minimum_required( VERSION 3.14 FATAL_ERROR )

set( CMAKE_CUDA_COMPILER "/usr/local/cuda/bin/nvcc" )
set( CUDA_HOME "/usr/local/cuda" )

project( CudaTest LANGUAGES CXX CUDA )
# set( PROJECT_NAME CudaTest )
message( "${CYN}Configuring project : ${PROJECT_NAME}${NORM}" )

set( CMAKE_SYSTEM_NAME Linux )
set( CMAKE_BUILD_TYPE Debug )

set( CMAKE_INSTALL_PREFIX           ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )
set( CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/x86out )


set( LD_LIBRARY_PATH "${LD_LIBRARY_PATH}:/usr/local/cuda/lib64" )
set( LD_LIBRARY_PATH "${LD_LIBRARY_PATH}:/usr/local/cuda/extras/CUPTI/lib64" )
set( CMAKE_CUDA_FLAGS_DEBUG -g )
set( CMAKE_CUDA_FLAGS "-arch=sm_30" )

set( CMAKE_C_COMPILER   /usr/bin/gcc-8 )
set( CMAKE_CXX_COMPILER /usr/bin/g++-8 )

set( CMAKE_SYSTEM_NAME Linux )

# message( "${CYN}" "CMAKE_CXX_FLAGS : " ${CMAKE_CXX_FLAGS} "${NORM}" )
###########
### Library
###########
file( GLOB CUDA_SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/lib/*.cu )
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/lib )
add_library(
    lib${PROJECT_NAME}
    ${CUDA_SRC_FILES}
)
target_compile_features(
    lib${PROJECT_NAME}
PRIVATE 
    cxx_std_11
)
set_target_properties( lib${PROJECT_NAME} PROPERTIES CUDA_SEPARABLE_COMPILATION ON )
set_target_properties( lib${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE CXX)

##############
### Executable
##############
set( CMAKE_BUILD_TYPE Debug )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -std=c++17 -O0" )

file( GLOB CXX_TEST_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp )
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/src )
file( GLOB CXX_RESOURCE_FILES ${CMAKE_CURRENT_SOURCE_DIR}/../resource/*.c++ )
include_directories( ${CMAKE_CURRENT_SOURCE_DIR}/../resource )
# message( "${CYN}" "CMAKE_CXX_FLAGS : " ${CMAKE_CXX_FLAGS} "${NORM}" )
add_executable(
    ${PROJECT_NAME}.out
    ${CXX_TEST_FILES}
    ${CXX_RESOURCE_FILES}
)
target_link_libraries (
    ${PROJECT_NAME}.out
LINK_PRIVATE
    lib${PROJECT_NAME}
    capnp-rpc
    capnp
    kj
    kj-async
    Tools
)