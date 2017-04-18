This is DFG generation of matrix multiplication with fully loop unrolling.
You may change matrix configuration in mmm.h. The resulting dfg can be found in dump/dfg.s. 
It also dumps some files used for the CGRA scheduling. A dot file is also generated as well and you 
may see the dfg in a vivid figure when the size of the graph is not too large.

Getting started
$ make
$ ./dfg-gen

Contributors:
Cheng Liu (st.liucheng@gmail.com, The University of Hong Kong)
