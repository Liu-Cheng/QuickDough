This program is used to generate DFG of a fir with fully loop unrolling.
Meanwhile, you may set the first N-1 element of input vector to be 0, which could remove the
branch in the loop. When you split a larger input vector to a smaller one and complete the fir 
operation by repeatedly executing the smaller fir, the input element of each fir iteration shoud 
be propoerly assigned accordingly.

You may change the configuration in fir.h. The resulting dfg can be found in dump/dfg.s. 
It also dumps some files used for the CGRA scheduling. A dot file is also generated as well and you 
may see the dfg in a vivid figure when the size of the graph is not too large.

Getting started
$ make
$ ./dfg-gen

Convert dot file to pdf figure
$ cd dump
$ dot -Tpdf fir.dot > fir.pdf

Contributors:
Cheng Liu (st.liucheng@gmail.com, The University of Hong Kong)
