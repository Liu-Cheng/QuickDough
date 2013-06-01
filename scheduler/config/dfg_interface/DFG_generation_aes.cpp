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

void DFG_generation_aes ()
{
  extern int aes_num;

  //Generate the DFG from equation information
  cout<<endl << "=============================" <<endl;
  cout<<endl << "========== the DFG ==========" <<endl;
#ifdef LOGDFG
  ofstream output_file ( "DFG.txt", ios::app );
  output_file<<endl << "=============================" <<endl;
  output_file<<endl << "========== the DFG ==========" <<endl;
#endif
  //part 1: number of input data and operations
  num_input_data = 11 + aes_num * 32;
  cout<< "number_of_input_data is " << num_input_data <<endl;
  num_operation = 1266 * aes_num;
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

int opind = 0;
for ( int aes_ind = 0; aes_ind < aes_num; aes_ind++ ) {
  // to generate dependencies for keys
  // first key is input data from 27 to 42 by columns
  // the other keys are generated using fist key, data from 1 to 10, and s-box 0

  // key used in round 1
	  // column 1
	  // sub operation
#ifdef LOGDFG
				  output_file<< "DOD(" << 40 + aes_ind * 32 << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 41 + aes_ind * 32 << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 42 + aes_ind * 32 << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 39 + aes_ind * 32 << "," << opind + 3 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" <<  0 << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "DOD(" <<  0 << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" <<  0 << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" <<  0 << "," << opind + 3 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( 40 + aes_ind * 32 , opind     );
				  ADD_DEP( 41 + aes_ind * 32 , opind + 1 );
				  ADD_DEP( 42 + aes_ind * 32 , opind + 2 );
				  ADD_DEP( 39 + aes_ind * 32 , opind + 3 );
				  ADD_DEP(  0 , opind     );
				  ADD_DEP(  0 , opind + 1 );
				  ADD_DEP(  0 , opind + 2 );
				  ADD_DEP(  0 , opind + 3 );

		  opind = opind + 4;

	  // add operation
#ifdef LOGDFG
				  output_file<< "DOD(" << 27 + aes_ind * 32 << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "DOD(" <<  1                << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 28 + aes_ind * 32 << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 29 + aes_ind * 32 << "," << opind + 3 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 30 + aes_ind * 32 << "," << opind + 4 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( 27 + aes_ind * 32 , opind     );
				  ADD_DEP(  1                , opind + 1 );
				  ADD_DEP( 28 + aes_ind * 32 , opind + 2 );
				  ADD_DEP( 29 + aes_ind * 32 , opind + 3 );
				  ADD_DEP( 30 + aes_ind * 32 , opind + 4 );
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind     + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 3 + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + 3 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + 4 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind     );
				  ADD_DEP( ( opind     + num_input_data ) , opind + 1 );
				  ADD_DEP( ( opind - 3 + num_input_data ) , opind + 2 );
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind + 3 );
				  ADD_DEP( ( opind - 1 + num_input_data ) , opind + 4 );

		  opind = opind + 5;

	  // column 2-4
	  for ( int colind = 2; colind <=4; colind++ ) {
		  // add operation
#ifdef LOGDFG
				  output_file<< "DOD(" << 23 + colind * 4 + aes_ind * 32 << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 24 + colind * 4 + aes_ind * 32 << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 25 + colind * 4 + aes_ind * 32 << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 26 + colind * 4 + aes_ind * 32 << "," << opind + 3 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( 23 + colind * 4 + aes_ind * 32 , opind     );
				  ADD_DEP( 24 + colind * 4 + aes_ind * 32 , opind + 1 );
				  ADD_DEP( 25 + colind * 4 + aes_ind * 32 , opind + 2 );
				  ADD_DEP( 26 + colind * 4 + aes_ind * 32 , opind + 3 );
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 3 + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + 3 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind     );
				  ADD_DEP( ( opind - 3 + num_input_data ) , opind + 1 );
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind + 2 );
				  ADD_DEP( ( opind - 1 + num_input_data ) , opind + 3 );

		  opind = opind + 4;
	  }

  // key used in round 2-10
  for ( int ind = 2; ind <= 10; ind++ ) {
	  // column 1
	  // sub operation
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 3 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind + 3 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 0 << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 0 << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 0 << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 0 << "," << opind + 3 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 3 + num_input_data ) , opind     );
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind + 1 );
				  ADD_DEP( ( opind - 1 + num_input_data ) , opind + 2 );
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind + 3 );
				  ADD_DEP(  0 , opind     );
				  ADD_DEP(  0 , opind + 1 );
				  ADD_DEP(  0 , opind + 2 );
				  ADD_DEP(  0 , opind + 3 );

		  opind = opind + 4;

	  // add operation
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 20 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << ind                         << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 19 + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 18 + num_input_data << "," << opind + 3 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 17 + num_input_data << "," << opind + 4 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( opind - 20 + num_input_data , opind     );
				  ADD_DEP( ind                         , opind + 1 );
				  ADD_DEP( opind - 19 + num_input_data , opind + 2 );
				  ADD_DEP( opind - 18 + num_input_data , opind + 3 );
				  ADD_DEP( opind - 17 + num_input_data , opind + 4 );
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind     + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 3 + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + 3 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + 4 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind     );
				  ADD_DEP( ( opind     + num_input_data ) , opind + 1 );
				  ADD_DEP( ( opind - 3 + num_input_data ) , opind + 2 );
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind + 3 );
				  ADD_DEP( ( opind - 1 + num_input_data ) , opind + 4 );

		  opind = opind + 5;

	  // column 2-4
	  for ( int colind = 2; colind <=4; colind++ ) {
		  // add operation
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 21 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 20 + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 19 + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 18 + num_input_data << "," << opind + 3 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( opind - 21 + num_input_data , opind     );
				  ADD_DEP( opind - 20 + num_input_data , opind + 1 );
				  ADD_DEP( opind - 19 + num_input_data , opind + 2 );
				  ADD_DEP( opind - 18 + num_input_data , opind + 3 );
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 4 + num_input_data << "," << opind     + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 3 + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 2 + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 1 + num_input_data << "," << opind + 3 + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 4 + num_input_data ) , opind     );
				  ADD_DEP( ( opind - 3 + num_input_data ) , opind + 1 );
				  ADD_DEP( ( opind - 2 + num_input_data ) , opind + 2 );
				  ADD_DEP( ( opind - 1 + num_input_data ) , opind + 3 );

		  opind = opind + 4;
	  }
  }

  // to generate dependencies for input round
  // input data is from 0 to 15 by columns
  // the first key is from 16 to 31 by columns

	  // add operation
	  for ( int ind = 0; ind < 16; ind++ ) {
#ifdef LOGDFG
				  output_file<< "DOD(" << ind + 11 + aes_ind * 32 << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << ind + 27 + aes_ind * 32 << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ind + 11 + aes_ind * 32 , opind );
				  ADD_DEP( ind + 27 + aes_ind * 32 , opind );

			  opind++;
	  }

  // to generate dependencies for round 1-9
  for ( int ind = 0; ind < 9; ind++ ) {
	  // sub operation
	  for ( int dataind = 0; dataind < 16; dataind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 16 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 0 << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 16 + num_input_data ) , opind );
				  ADD_DEP( 0 , opind );

		  opind++;
	  }

	  // shift row has no operation!!!
	  // opind - x , and -x = 
	  //
	  // from
	  // -16 -12 -8 -4
	  // -15 -11 -7 -3
	  // -14 -10 -6 -2
	  // -13 - 9 -5 -1
	  //
	  // to
	  // -16 -12 - 8 - 4
	  // -11 - 7 - 3 -15
	  // - 6 - 2 -14 -10
	  // - 1 -13 - 9 - 5
	  //

	  // mixcolumn
	  // X2 operation
	  for ( int dataind = 0; dataind < 16; dataind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 16 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 16 + num_input_data ) , opind );

		  opind++;
	  }

	  // X3 operation
	  for ( int dataind = 0; dataind < 16; dataind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 32 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << opind - 16 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 32 + num_input_data ) , opind );
				  ADD_DEP( ( opind - 16 + num_input_data ) , opind );

		  opind++;
	  }

	  int offset[16] = { 16, 11, 6, 1, 12, 7, 2, 13, 8, 3, 14, 9, 4, 15, 10, 5 };
	  int offset2[16];
	  int offset3[16];
	  for ( int dataind = 0; dataind < 16; dataind++ ) {
		  offset3[dataind] = opind - offset[dataind];
		  offset2[dataind] = offset3[dataind] - 16;
		  offset[dataind] = offset2[dataind] - 16;
	  }

	  for ( int colind = 0; colind < 4; colind++ ) {
		  for ( int rowind = 0; rowind < 4; rowind++ ) {
			  int ind1 = offset2 [ colind * 4 + rowind ];
			  int ind2;
			  if ( rowind != 3 ) ind2 = offset3 [ colind * 4 + rowind + 1 ];
			  else ind2 = offset3 [ colind * 4 ];
#ifdef LOGDFG
				  output_file<< "OOD(" << ind1 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << ind2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( ind1 + num_input_data ) , opind );
				  ADD_DEP( ( ind2 + num_input_data ) , opind );

		  opind++;
		  }
	  }
	  for ( int colind = 0; colind < 4; colind++ ) {
		  for ( int rowind = 0; rowind < 4; rowind++ ) {
			  int ind1 = opind - 16;
			  int ind2;
			  if ( rowind <= 1 ) ind2 = offset [ colind * 4 + rowind + 2 ];
			  else ind2 = offset [ colind * 4 + rowind - 2 ];
#ifdef LOGDFG
				  output_file<< "OOD(" << ind1 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << ind2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( ind1 + num_input_data ) , opind );
				  ADD_DEP( ( ind2 + num_input_data ) , opind );

		  opind++;
		  }
	  }
	  for ( int colind = 0; colind < 4; colind++ ) {
		  for ( int rowind = 0; rowind < 4; rowind++ ) {
			  int ind1 = opind - 16;
			  int ind2;
			  if ( rowind >= 1 ) ind2 = offset [ colind * 4 + rowind - 1 ];
			  else ind2 = offset [ colind * 4 + 3 ];
#ifdef LOGDFG
				  output_file<< "OOD(" << ind1 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << ind2 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( ind1 + num_input_data ) , opind );
				  ADD_DEP( ( ind2 + num_input_data ) , opind );

		  opind++;
		  }
	  }
//	  // for each column
//	  for ( int colind = 0; colind < 4; colind++ ) {
//		  int ind1 = colind * 4;
//		  int ind2 = ind1 + 1;
//		  int ind3 = ind2 + 1;
//		  int ind4 = ind3 + 1;
//
//		  // 1st data
//		  // add operation
//#ifdef LOGDFG
//				  output_file<< "OOD(" << offset2[ind1] + num_input_data << "," << opind     + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset3[ind2] + num_input_data << "," << opind     + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << opind         + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset [ind3] + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << opind + 1     + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset [ind4] + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
//#endif
//				  ADD_DEP( ( offset2[ind1] + num_input_data ) , opind     );
//				  ADD_DEP( ( offset3[ind2] + num_input_data ) , opind     );
//				  ADD_DEP( ( opind         + num_input_data ) , opind + 1 );
//				  ADD_DEP( ( offset [ind3] + num_input_data ) , opind + 1 );
//				  ADD_DEP( ( opind + 1     + num_input_data ) , opind + 2 );
//				  ADD_DEP( ( offset [ind4] + num_input_data ) , opind + 2 );
//
//		  opind = opind + 3;
//
//		  // 2nd data
//		  // add operation
//#ifdef LOGDFG
//				  output_file<< "OOD(" << offset2[ind2] + num_input_data << "," << opind     + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset3[ind3] + num_input_data << "," << opind     + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << opind         + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset [ind4] + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << opind + 1     + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset [ind1] + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
//#endif
//				  ADD_DEP( ( offset2[ind2] + num_input_data ) , opind     );
//				  ADD_DEP( ( offset3[ind3] + num_input_data ) , opind     );
//				  ADD_DEP( ( opind         + num_input_data ) , opind + 1 );
//				  ADD_DEP( ( offset [ind4] + num_input_data ) , opind + 1 );
//				  ADD_DEP( ( opind + 1     + num_input_data ) , opind + 2 );
//				  ADD_DEP( ( offset [ind1] + num_input_data ) , opind + 2 );
//
//		  opind = opind + 3;
//
//		  // 3rd data
//		  // add operation
//#ifdef LOGDFG
//				  output_file<< "OOD(" << offset2[ind3] + num_input_data << "," << opind     + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset3[ind4] + num_input_data << "," << opind     + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << opind         + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset [ind1] + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << opind + 1     + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset [ind2] + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
//#endif
//				  ADD_DEP( ( offset2[ind3] + num_input_data ) , opind     );
//				  ADD_DEP( ( offset3[ind4] + num_input_data ) , opind     );
//				  ADD_DEP( ( opind         + num_input_data ) , opind + 1 );
//				  ADD_DEP( ( offset [ind1] + num_input_data ) , opind + 1 );
//				  ADD_DEP( ( opind + 1     + num_input_data ) , opind + 2 );
//				  ADD_DEP( ( offset [ind2] + num_input_data ) , opind + 2 );
//
//		  opind = opind + 3;
//
//		  // 4th data
//		  // add operation
//#ifdef LOGDFG
//				  output_file<< "OOD(" << offset2[ind4] + num_input_data << "," << opind     + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset3[ind1] + num_input_data << "," << opind     + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << opind         + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset [ind2] + num_input_data << "," << opind + 1 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << opind + 1     + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
//				  output_file<< "OOD(" << offset [ind3] + num_input_data << "," << opind + 2 + num_input_data << ")" <<endl;
//#endif
//				  ADD_DEP( ( offset2[ind4] + num_input_data ) , opind     );
//				  ADD_DEP( ( offset3[ind1] + num_input_data ) , opind     );
//				  ADD_DEP( ( opind         + num_input_data ) , opind + 1 );
//				  ADD_DEP( ( offset [ind2] + num_input_data ) , opind + 1 );
//				  ADD_DEP( ( opind + 1     + num_input_data ) , opind + 2 );
//				  ADD_DEP( ( offset [ind3] + num_input_data ) , opind + 2 );
//
//		  opind = opind + 3;
//	  }

	  // add operation
	  for ( int dataind = 0; dataind < 16; dataind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 16             + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << ind * 21 + dataind + 5 + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 16             + num_input_data ) , opind );
				  ADD_DEP( ( ind * 21 + dataind + 5 + num_input_data ) , opind );

		  opind++;
	  }
  }

  // to generate dependencies for round 10
	  // sub operation
	  for ( int dataind = 0; dataind < 16; dataind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << opind - 16 + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "DOD(" << 0 << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( opind - 16 + num_input_data ) , opind );
				  ADD_DEP( 0 , opind );

		  opind++;
	  }

	  // shift row has no operation!!!
	  // opind - x , and -x = 
	  //
	  // from
	  // -16 -12 -8 -4
	  // -15 -11 -7 -3
	  // -14 -10 -6 -2
	  // -13 - 9 -5 -1
	  //
	  // to
	  // -16 -12 - 8 - 4
	  // -11 - 7 - 3 -15
	  // - 6 - 2 -14 -10
	  // - 1 -13 - 9 - 5
	  //

	  int offset[16] = { 16, 11, 6, 1, 12, 7, 2, 13, 8, 3, 14, 9, 4, 15, 10, 5 };
	  for ( int dataind = 0; dataind < 16; dataind++ ) offset[dataind] = opind - offset[dataind];

	  for ( int dataind = 0; dataind < 16; dataind++ ) {
#ifdef LOGDFG
				  output_file<< "OOD(" << offset[dataind] + num_input_data << "," << opind + num_input_data << ")" <<endl;
				  output_file<< "OOD(" << dataind + 194   + num_input_data << "," << opind + num_input_data << ")" <<endl;
#endif
				  ADD_DEP( ( offset[dataind] + num_input_data ) , opind );
				  ADD_DEP( ( dataind + 194   + num_input_data ) , opind );

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
