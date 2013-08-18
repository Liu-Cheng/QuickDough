//////////////////////////////////////////////////
// Usage of the gen_network
//////////////////////////////////////////////////
1. Check the file template_net.v, you may add codes that will not be changed when the topology changes.
2. Provide a connection matrix as shown in link_matrix.txt. link_matrix(m,n)=1 means the node m provides data for node n.
3. The gen_network is written in Perl and you may run it directly
   e.g. ./gen_network
   e.g. perl ./gen_network
4. Make sure that the data width and port numer of PE keep coherent with the data you input according to the instruction.
5. You will get a file named as net<node_num>.v in the same directory.
6. Have fun!
