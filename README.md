# cython-thrust
A sample code to use Thrust via Cython.

This sample code allocates some device memory with initializing it, sorting the content of the device memory, printing the sorted result.

To build a Python extension from the sample code with Cython, run `setup.py` as following:

    $ python setup.py build_ext --inplace

Then, a Python extension is generated as `sort.so` shared library:

    $ ls *.so
    sort.so

The following runs the generated Python extension:

    $ python
    >>> import sort
    sort.stable_sort()
    1, 2, 3
