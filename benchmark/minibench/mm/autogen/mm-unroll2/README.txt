When the matrix size is large, we may probably only be able to perform
a vector multiplication on a single CGRA iteration. In this case, the natural
DFG is an extremely slim DFG and it is not even be able to schduled on the CGRA due
to the limited instruction rom and data memory. To escape this problem, a flatten DFG is generated
here.
