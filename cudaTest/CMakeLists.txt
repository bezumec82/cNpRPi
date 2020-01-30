cmake_minimum_required( VERSION 3.14 FATAL_ERROR )

set( CMAKE_CUDA_COMPILER "/usr/local/cuda/bin/nvcc" )
set( CUDA_HOME "/usr/local/cuda" )

project( CudaTest LANGUAGES CXX CUDA )
# set( PROJECT_NAME CudaTest )

set( LD_LIBRARY_PATH "${LD_LIBRARY_PATH}:/usr/local/cuda/lib64" )
set( LD_LIBRARY_PATH "${LD_LIBRARY_PATH}:/usr/local/cuda/extras/CUPTI/lib64" )
set( CMAKE_CUDA_FLAGS_DEBUG -g )
set( CMAKE_CUDA_FLAGS "-arch=sm_30" )


file( GLOB CUDA_SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cu )
message( "${CYN}Configuring project : ${PROJECT_NAME}${NORM}" )
add_executable(
    ${PROJECT_NAME}.out
    ${CUDA_SRC_FILES}
)

target_compile_features(
    ${PROJECT_NAME}.out
PUBLIC 
    cxx_std_11
)

set_target_properties( ${PROJECT_NAME}.out PROPERTIES CUDA_SEPARABLE_COMPILATION ON )
set_target_properties( ${PROJECT_NAME}.out PROPERTIES LINKER_LANGUAGE CXX)

