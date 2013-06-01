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

void DFG_generation_vd ()
{
  extern int vd_size;

  //Generate the DFG from equation information
  cout<<endl << "=============================" <<endl;
  cout<<endl << "========== the DFG ==========" <<endl;
#ifdef LOGDFG
  ofstream output_file ( "DFG.txt", ios::app );
  output_file<<endl << "=============================" <<endl;
  output_file<<endl << "========== the DFG ==========" <<endl;
#endif
  //part 1: number of input data and operations
  vd_size = vd_size + 2;
  num_input_data = vd_size + 4;
  cout<< "number_of_input_data is " << num_input_data <<endl;
  num_operation = vd_size * 20 - 51;
  cout<< "number_of_operations is " << num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_input_data is " << num_input_data <<endl;
  output_file<< "number_of_operations is " << num_operation <<endl;
#endif

//  //part 2: data-operation dependencies
//  cout<< "number_of_data-operation_dependencies is " << ??? <<endl;
//
//#ifdef LOGDFG
//  output_file<< "number_of_data-operation_dependencies is " << ??? <<endl;
//  output_file<< "data-operation_dependencies are " <<endl;
//#endif
//
//  //part 3: oepration-operation dependencies
//  cout<< "number_of_operation-operation_dependencies is " << ??? <<endl;
//#ifdef LOGDFG
//  output_file<< "number_of_operation-operation_dependencies is " << ??? <<endl;
//
//  output_file<< "operation-operation_dependencies are " <<endl;
//#endif

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

// data 0 to (vd_size-1) are input data
// the values of data (vd_size) to (vd_size+3) are 0 to 3
int opind = 0;

// history table starts
// t = 1
// XOR+ operation
#ifdef LOGDFG
				  output_file<< "DOD(" << 0         << "," <<     num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size   << "," <<     num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 0         << "," << 1 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size+3 << "," << 1 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( 0         , 0 );
				  ADD_DEP( vd_size   , 0 );
				  ADD_DEP( 0         , 1 );
				  ADD_DEP( vd_size+3 , 1 );

		  opind = opind + 2;

// t = 2
// XOR+ operation
  for ( int ind = 0; ind < 4; ind++ ) {
#ifdef LOGDFG
				  output_file<< "DOD(" << 1           << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size+ind << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( 1		   , opind );
				  ADD_DEP( vd_size+ind , opind );

		  opind++;
  }

// error operation
  for ( int ind = 0; ind < 2; ind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" <<         0 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" <<         1 + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 3 + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( (         0 + num_input_data ) , opind     );
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind     );
				  ADD_DEP( (         1 + num_input_data ) , opind + 1 );
				  ADD_DEP( ( opind - 3 + num_input_data ) , opind + 1 );

		  opind = opind + 2;
  }

// t = 3 to (vd_size-2)
// XOR+ operation
for ( int tind = 3; tind <= vd_size-2; tind++ ) {
  for ( int ind = 0; ind < 4; ind++ ) {
#ifdef LOGDFG
				  output_file<< "DOD(" << tind - 1    << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size+ind << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( tind - 1    , opind );
				  ADD_DEP( vd_size+ind , opind );

		  opind++;
  }

// error operation 1
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind );

		  opind++;

// error operation 2
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind );

		  opind++;

// error operation 3
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind );

		  opind++;

// error operation 4
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 6 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 6 + num_input_data ) , opind );

		  opind++;

// error operation 5
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 12 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind -  5 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 12 + num_input_data ) , opind );
				  ADD_DEP( ( opind -  5 + num_input_data ) , opind );

		  opind++;

// error operation 6
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 12 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind -  9 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 12 + num_input_data ) , opind );
				  ADD_DEP( ( opind -  9 + num_input_data ) , opind );

		  opind++;

// error operation 7
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 12 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind -  9 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 12 + num_input_data ) , opind );
				  ADD_DEP( ( opind -  9 + num_input_data ) , opind );

		  opind++;

// error operation 8
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 12 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind -  9 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 12 + num_input_data ) , opind );
				  ADD_DEP( ( opind -  9 + num_input_data ) , opind );

		  opind++;

// comp operation
  for ( int ind = 0; ind < 4; ind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + ind + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 7 + ind + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + ind + num_input_data ) , opind );
				  ADD_DEP( ( opind - 7 + ind + num_input_data ) , opind );

		  opind++;
  }
}

// t = (vd_size-1)
// XOR+ operation
  for ( int ind = 0; ind < 4; ind++ ) {
#ifdef LOGDFG
				  output_file<< "DOD(" << vd_size - 2 << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size+ind << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( vd_size - 2 , opind );
				  ADD_DEP( vd_size+ind , opind );

		  opind++;
  }

// error operation 1
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind );

		  opind++;

// error operation 2
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind );

		  opind++;

// error operation 3
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind );

		  opind++;

// error operation 4
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 8 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 6 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 8 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 6 + num_input_data ) , opind );

		  opind++;

// comp operation
  for ( int ind = 0; ind < 2; ind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 4 + ind + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 3 + ind + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 4 + ind + num_input_data ) , opind );
				  ADD_DEP( ( opind - 3 + ind + num_input_data ) , opind );

		  opind++;
  }

// t = vd_size
// XOR+ operation
#ifdef LOGDFG
				  output_file<< "DOD(" << vd_size - 1 << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size     << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size - 1 << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size + 3 << "," << opind + 1 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( vd_size - 1 , opind     );
				  ADD_DEP( vd_size     , opind     );
				  ADD_DEP( vd_size - 1 , opind + 1 );
				  ADD_DEP( vd_size + 3 , opind + 1 );

		  opind = opind + 2;

// error operation
  for ( int ind = 0; ind < 2; ind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind );

		  opind++;
  }

// comp operation
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 1 + num_input_data ) , opind );

		  opind++;
// history table ends

// traceback starts
// t = (vd_size-2)
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 7 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 6 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 1 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 7 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 6 + num_input_data ) , opind );

		  opind++;

// t = (vd_size-3) to 2
for ( int tind = vd_size-3; tind >= 2; tind-- ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 1      + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << tind * 16 - 10 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << tind * 16 -  9 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 1      + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << tind * 16 -  8 + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << tind * 16 -  7 + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 1      + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind          + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind + 1      + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 1      + num_input_data ) , opind     );
				  ADD_DEP( ( tind * 16 - 10 + num_input_data ) , opind     );
				  ADD_DEP( ( tind * 16 -  9 + num_input_data ) , opind     );
				  ADD_DEP( ( opind - 1      + num_input_data ) , opind + 1 );
				  ADD_DEP( ( tind * 16 -  8 + num_input_data ) , opind + 1 );
				  ADD_DEP( ( tind * 16 -  7 + num_input_data ) , opind + 1 );
				  ADD_DEP( ( opind - 1      + num_input_data ) , opind + 2 );
				  ADD_DEP( ( opind          + num_input_data ) , opind + 2 );
				  ADD_DEP( ( opind + 1      + num_input_data ) , opind + 2 );

		  opind = opind + 3;
}

// t = 1
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size     << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size + 2 << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 1 + num_input_data ) , opind );
				  ADD_DEP( vd_size     , opind );
				  ADD_DEP( vd_size + 2 , opind );

		  opind++;
// traceback ends

// transition operation
// t = (vd_size-2) to 3
for ( int tind = vd_size-2; tind >= 3; tind-- ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - vd_size + 6 - tind * 2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - vd_size + 9 - tind * 2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - vd_size + 6 - tind * 2 + num_input_data ) , opind );
				  ADD_DEP( ( opind - vd_size + 9 - tind * 2 + num_input_data ) , opind );

		  opind++;
}

// t = 2
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - vd_size + 2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - vd_size + 3 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - vd_size + 2 + num_input_data ) , opind );
				  ADD_DEP( ( opind - vd_size + 3 + num_input_data ) , opind );

		  opind++;

// t = 1
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - vd_size + 2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << vd_size << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - vd_size + 2 + num_input_data ) , opind );
				  ADD_DEP( vd_size , opind );

		  opind++;

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
