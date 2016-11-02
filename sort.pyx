cdef extern from "thrust.cuh" namespace "my_thrust":
    void cu_stable_sort "my_thrust::stable_sort" ()

def stable_sort():
    cu_stable_sort()
