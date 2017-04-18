This is DFG generation of matrix multiplication with fully loop unrolling.
You may change matrix configuration in mmm.h. The resulting dfg can be found in dump/dfg.s. 
It also dumps some files used for the CGRA scheduling.

Getting started
$ make
$ ./dfg-gen

Contributors:
Cheng Liu (st.liucheng@gmail.com, The University of Hong Kong)
