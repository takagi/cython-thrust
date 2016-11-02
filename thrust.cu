#include <thrust/device_ptr.h>
#include <thrust/device_malloc.h>
#include <thrust/device_free.h>
#include <thrust/sort.h>
#include "thrust.cuh"

void my_thrust::stable_sort() {
    thrust::device_ptr<float> d_ptr = thrust::device_malloc<float>(3);

    thrust::device_ptr<float> first = d_ptr;
    thrust::device_ptr<float> last  = d_ptr + 3;

    d_ptr[0] = 3.0; d_ptr[1] = 2.0; d_ptr[2] = 1.0;

    thrust::stable_sort(first, last);

    std::cout << d_ptr[0] << ", " << d_ptr[1] << ", " << d_ptr[2] << std::endl;

    thrust::device_free(d_ptr);
}
