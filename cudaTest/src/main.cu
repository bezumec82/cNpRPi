
#include <thrust/device_ptr.h>
#include <thrust/count.h>
#include <thrust/execution_policy.h>

#include <iostream>
#include <iterator>

using namespace std;

__global__ void add_block(int * a, int * b, int * sum)
{
    //Use 'blockIdx.x' to access block index
    sum[blockIdx.x] = a[blockIdx.x] + b[blockIdx.x];
}
/*--- End of the function ----------------------------------------------------*/

__global__ void add_thread(int * a, int * b, int * sum)
{
    //Use 'blockIdx.x' to access block index
    sum[threadIdx.x] = a[threadIdx.x] + b[threadIdx.x];
}
/*--- End of the function ----------------------------------------------------*/

__global__ void add_mixed(int * a, int * b, int * sum)
{
    int index = threadIdx.x + blockIdx.x * blockDim.x;
    sum[index] = a[index] + b[index];
}
/*--- End of the function ----------------------------------------------------*/

__global__ void add_safe(int *a, int * b, int * sum, int arr_size)
{
    int index = threadIdx.x + blockIdx.x * blockDim.x;
    if (index < arr_size)
    {
        sum[index] = a[index] + b[index];
    }
}
/*--- End of the function ----------------------------------------------------*/

void random_ints(int *arr_ptr, int arr_size)
{
   for (int i = 0; (i < arr_size)&&arr_ptr; ++i, arr_ptr++)
       *arr_ptr = rand() % 100;
}
/*--- End of the function ----------------------------------------------------*/

#define THREADS                 2
#define BLOCKS                  2
#define SIZE                    THREADS * BLOCKS

#define BLOCK_IMPLEMENTATION    false
#define MIXED_IMPLEMENTATION    false
#define SAFE_IMPLEMENTATION     false
int main(void) {

    //Host copies
	int     a   [SIZE] = {0};
	int     b   [SIZE] = {0};
	int     sum [SIZE] = {0};

    //Setup values
	random_ints(a, SIZE);
	random_ints(b, SIZE);

    for (auto iter : a     ){ cout << iter << " "; };  cout <<endl;
    for (auto iter : b     ){ cout << iter << " "; };  cout <<endl;
	//Device copies
	int * devp_a, * devp_b, * devp_sum;

	//Allocate space for device copies
	cudaMalloc((void **)&devp_a,    SIZE * sizeof(int));
    cudaMalloc((void **)&devp_b,    SIZE * sizeof(int));
    cudaMalloc((void **)&devp_sum,  SIZE * sizeof(int));

	//Copy inputs to the device
	cudaMemcpy(devp_a,  a,          SIZE * sizeof(int),   cudaMemcpyHostToDevice);
    cudaMemcpy(devp_b,  b,          SIZE * sizeof(int),   cudaMemcpyHostToDevice);

    //Launch N copies of 'add()' with 'add<<<N,1>>>(...)'
#if BLOCK_IMPLEMENTATION
    add_block<<<SIZE,1>>>(devp_a, devp_b, devp_sum);
#elif THREAD_IMPLEMENTATION
    add_thread<<<1,SIZE>>>(devp_a, devp_b, devp_sum);
#elif MIXED_IMPLEMENTATION
    add_mixed<<<BLOCKS,THREADS>>>(devp_a, devp_b, devp_sum);
#elif SAFE_IMPLEMENTATION
    add_safe<<<BLOCKS,THREADS>>>(devp_a, devp_b, devp_sum, SIZE * sizeof(int));
#endif

    //Copy result back to the host
    cudaMemcpy(&sum,    devp_sum,   SIZE * sizeof(int),   cudaMemcpyDeviceToHost );



    cout << "Result : " << endl;
    std::copy   (
                std::begin(sum),
                std::end(sum),
                std::ostream_iterator<int>(std::cout, " ")
                );

    //Cleanup
    cudaFree(devp_a);
    cudaFree(devp_b);
    cudaFree(devp_sum);

	return 0;
}
