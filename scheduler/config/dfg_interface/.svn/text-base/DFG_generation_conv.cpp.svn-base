#include <fstream>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <sstream>
#include "simplist.h"

using namespace std;

extern int num_input_data;
extern int num_operation;

#define ADD_DEP(from, to) {\
pdpmtx[from]->succ->append(pdpmtx[to + num_input_data]);\
pdpmtx[to + num_input_data]->pred->append(pdpmtx[from]);\
}

#define LOGDFG

void DFG_generation_conv ()
{
  extern int conv_size;
  extern int conv_halfsize;

  //Generate the DFG from equation information
  cout<<endl << "=============================" <<endl;
  cout<<endl << "========== the DFG ==========" <<endl;
#ifdef LOGDFG
  ofstream output_file ( "DFG.txt", ios::app );
  output_file<<endl << "=============================" <<endl;
  output_file<<endl << "========== the DFG ==========" <<endl;
#endif
  //part 1: number of input data and operations
  num_input_data = 2 * conv_size;
  cout<< "number_of_input_data is " << num_input_data <<endl;
  num_operation = conv_halfsize * conv_halfsize * 3 + conv_halfsize * 3 + 1;
  cout<< "number_of_operations is " << num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_input_data is " << num_input_data <<endl;
  output_file<< "number_of_operations is " << num_operation <<endl;
#endif

  //part 2: data-operation dependencies
  cout<< "number_of_data-operation_dependencies is " << 2 * num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_data-operation_dependencies is " << 2 * num_operation <<endl;
  output_file<< "data-operation_dependencies are " <<endl;
#endif

  //part 3: oepration-operation dependencies
  cout<< "number_of_operation-operation_dependencies is " << conv_halfsize * conv_halfsize * 3 + conv_halfsize <<endl;
#ifdef LOGDFG
  output_file<< "number_of_operation-operation_dependencies is " << conv_halfsize * conv_halfsize * 3 + conv_halfsize <<endl;

  output_file<< "operation-operation_dependencies are " <<endl;
#endif

  extern VNode** pdpmtx; //dependencies matrix
  pdpmtx = (VNode**) malloc((num_input_data + num_operation) * sizeof(VNode*));
  if (!pdpmtx) {
	  cerr << "Error allocating memory for VNode* array" << endl;
	  exit(1);
  }
  for (int i = 0; i < (num_input_data + num_operation); i++) {
	  if (i < num_input_data) {
		  pdpmtx[i] = new VNode('d', i);
	  } else {
		  pdpmtx[i] = new VNode('o', i - num_input_data);
	  }
  }

  // to generate dependencies here!!!
  // N = conv_halfsize
  // y[n] = sum_k ( h[k] * x[n-k] ), -N <= n <= N, n is a integer

  // index for x[n] is d[n+N], that is from d[0] to d[2N]
  // index for h[n] is d[n+3N+1], that is from d[2N+1] to d[4N+1]

  // then y[n] = sum_k ( d[k+3N+1] * d[n-k+N] ), -N <= n <= N, n is a integer
 
  // when n <= 0,   -N <= k <= N+n
  // when n > 0,  -N+n <= k <= N

  // for each -N <= n <= 0
  int opind = 0; // target operation
  for ( int yind = -conv_halfsize; yind <= 0; yind++ ) {
	  // for each operation
	  for ( int ind = -conv_halfsize; ind <= conv_halfsize+yind; ind++ ) {
		  int dind1 = yind - ind + conv_halfsize; // d[n-k+N]
		  int dind2 = ind + 3 * conv_halfsize + 1;    // d[k+3N+1]
#ifdef LOGDFG
				  output_file<< "DOD(" << dind1 << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << dind2 << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( dind1 , opind );
				  ADD_DEP( dind2 , opind );
		  if ( ind != -conv_halfsize ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 1 + num_input_data ),opind );
		  }
		  opind++;
	  }
  }

  // for each 0 < n <= N
  for ( int yind = 1; yind <= conv_halfsize; yind++ ) {
	  // for each operation
	  for ( int ind = -conv_halfsize+yind; ind <= conv_halfsize; ind++ ) {
		  int dind1 = yind - ind + conv_halfsize; // d[n-k+N]
		  int dind2 = ind + 3 * conv_halfsize + 1;    // d[k+3N+1]
#ifdef LOGDFG
				  output_file<< "DOD(" << dind1 << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << dind2 << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( dind1 , opind );
				  ADD_DEP( dind2 , opind );
		  if ( ind != -conv_halfsize+yind ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 1 + num_input_data ),opind );
		  }
		  opind++;
	  }
  }

  cout<<endl << "========== end of the DFG ==========" <<endl;
  cout<<endl << "====================================" <<endl;
#ifdef LOGDFG
  output_file<<endl << "========== end of the DFG ==========" <<endl;
  output_file<<endl << "====================================" <<endl;
  // Close the file stream explicitly
  output_file.close();
#endif
  //cin.get();    // wait for a keypress
#ifdef DEBUG
  for (int x = 0; x < num_input_data + num_operation; x++) {
	  cout << "HHH: " << x << ": ";
	  for (SimpleListNode* ptr = pdpmtx[x]->succ->head;
	       ptr != NULL; ptr = ptr->next) {
		  cout << ptr->vnode->num << " ";
	  }
	  cout << endl;
  }
#endif
}
