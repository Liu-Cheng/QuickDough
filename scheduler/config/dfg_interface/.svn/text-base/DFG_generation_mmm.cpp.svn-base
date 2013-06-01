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

void DFG_generation_mmm ()
{
  extern int matrix_rank;

  //Generate the DFG from equation information
  cout<<endl << "=============================" <<endl;
  cout<<endl << "========== the DFG ==========" <<endl;
#ifdef LOGDFG
  ofstream output_file ( "DFG.txt", ios::app );
  output_file<<endl << "=============================" <<endl;
  output_file<<endl << "========== the DFG ==========" <<endl;
#endif
  //part 1: number of input data and operations
  num_input_data = 2 * matrix_rank * matrix_rank;
  cout<< "number_of_input_data is " << num_input_data <<endl;
  num_operation = matrix_rank * matrix_rank * matrix_rank;
  cout<< "number_of_operations is " << num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_input_data is " << num_input_data <<endl;
  output_file<< "number_of_operations is " << num_operation <<endl;
#endif

  //part 2: data-operation dependencies
  cout<< "number_of_data-operation_dependencies is " << 2 * matrix_rank * matrix_rank * matrix_rank <<endl;

#ifdef LOGDFG
  output_file<< "number_of_data-operation_dependencies is " << 2 * matrix_rank * matrix_rank * matrix_rank <<endl;
  output_file<< "data-operation_dependencies are " <<endl;
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

  //first input matrix
	  //for row x
	  for ( int x = 1; x < matrix_rank + 1; x++ ) {
		  //each row runs matrix_rank iterations
		  for ( int y = 1; y < matrix_rank + 1; y++ ) {
			  //for iteration y
			  for ( int z = 1; z < matrix_rank + 1; z++ ) {
#ifdef LOGDFG
				  output_file<< "DOD(" << ( x - 1 ) * matrix_rank + z - 1 << "," 
					  << ( x - 1 ) * matrix_rank * matrix_rank + ( y - 1 ) * matrix_rank + z + num_input_data - 1 << ")" <<endl;
#endif
				  ADD_DEP( ( ( x - 1 ) * matrix_rank + z - 1 ),( ( x - 1 ) * matrix_rank * matrix_rank + ( y - 1 ) * matrix_rank + z - 1 ) );
			  }
		  }
	  }

  //second input matrix
		  //for iteration x, each iteration goes from up to down and then left to right
		  for ( int x = 1; x < matrix_rank + 1; x++ ) {
			  //for column y
			  for ( int y = 1; y < matrix_rank + 1; y++ ) {
				  //for row z in column y
				  for ( int z = 1; z < matrix_rank + 1; z++ ) {
#ifdef LOGDFG
					  output_file<< "DOD(" << matrix_rank * matrix_rank + y + ( z - 1 ) * matrix_rank - 1 << "," 
						  << ( x - 1 ) * matrix_rank * matrix_rank + ( y - 1 ) * matrix_rank + z + num_input_data - 1 << ")" <<endl;
#endif
					  ADD_DEP( ( matrix_rank * matrix_rank + y + ( z - 1 ) * matrix_rank - 1 ),( ( x - 1 ) * matrix_rank * matrix_rank + ( y - 1 ) * matrix_rank + z - 1 ) );
				  }
			  }
		  }

  //part 3: oepration-operation dependencies
  cout<< "number_of_operation-operation_dependencies is " << matrix_rank * matrix_rank * ( matrix_rank - 1 ) <<endl;
#ifdef LOGDFG
  output_file<< "number_of_operation-operation_dependencies is " << matrix_rank * matrix_rank * 2 * ( matrix_rank - 1 ) <<endl;

  output_file<< "operation-operation_dependencies are " <<endl;
#endif
  //inside each matrix-matrix-multiplication
	  // for each result element chain
	  for ( int x = 1; x < matrix_rank * matrix_rank + 1; x++ ) {
		  // ( n - 1 ) operation-operation dependencies in each chain
		  for ( int y = 1; y < matrix_rank; y++ ) {
#ifdef LOGDFG
			  output_file<< "OOD(" << ( x - 1 ) * matrix_rank + y + num_input_data - 1 << "," << ( x - 1 ) * matrix_rank + y + 1 + num_input_data - 1 << ")" <<endl;
#endif
			  ADD_DEP( ( ( ( x - 1 ) * matrix_rank + y - 1 ) + num_input_data ),( x - 1 ) * matrix_rank + y );
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
