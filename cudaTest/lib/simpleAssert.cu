#include <sys/utsname.h>

// Includes, system
#include <stdio.h>
#include <cassert>

// Includes CUDA
#include <cuda_runtime.h>

const char *sampleName = "simpleAssert";

////////////////////////////////////////////////////////////////////////////////
// Auto-Verification Code
bool testResult = true;

////////////////////////////////////////////////////////////////////////////////
// Kernels
////////////////////////////////////////////////////////////////////////////////
//! Tests assert function.
//! Thread whose id > N will print assertion failed error message.
////////////////////////////////////////////////////////////////////////////////
__global__ void testKernel(int N)
{
    int gtid = blockIdx.x*blockDim.x + threadIdx.x ;
    assert(gtid < N) ;
}

void simpleAssert( void )
{
    int Nblocks = 2;
    int Nthreads = 32;
    cudaError_t error ;

    // Kernel configuration, where a one-dimensional
    // grid and one-dimensional blocks are configured.
    dim3 dimGrid(Nblocks);
    dim3 dimBlock(Nthreads);

    printf("Launch kernel to generate assertion failures\n");
    testKernel<<<dimGrid, dimBlock>>>(60);

    //Synchronize (flushes assert output).
    printf("\n-- Begin assert output\n\n");
    error = cudaDeviceSynchronize();
    printf("\n-- End assert output\n\n");

    //Check for errors and failed asserts in asynchronous kernel launch.
    if (error == cudaErrorAssert)
    {
        printf("Device assert failed as expected, "
               "CUDA error message is: %s\n\n",
               cudaGetErrorString(error));
    }


    testResult = error == cudaErrorAssert;
}