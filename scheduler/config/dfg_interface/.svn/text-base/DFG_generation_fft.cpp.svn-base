#include <fstream>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <sstream>
#include "simplist.h"
#include <math.h>

using namespace std;

extern int num_input_data;
extern int num_operation;

#define ADD_DEP(from, to) {\
pdpmtx[from]->succ->append(pdpmtx[to + num_input_data]);\
pdpmtx[to + num_input_data]->pred->append(pdpmtx[from]);\
}

#define LOGDFG

void DFG_generation_fft ()
{
  extern double fft_size;
  extern int fft_level;

  //Generate the DFG from equation information
  cout<<endl << "=============================" <<endl;
  cout<<endl << "========== the DFG ==========" <<endl;
#ifdef LOGDFG
  ofstream output_file ( "DFG.txt", ios::app );
  output_file<<endl << "=============================" <<endl;
  output_file<<endl << "========== the DFG ==========" <<endl;
#endif
  //part 1: number of input data and operations
  num_input_data = fft_size*3/2;
  cout<< "number_of_input_data is " << num_input_data <<endl;
  fft_level = log(fft_size) / log(double(2));
  num_operation = fft_size*fft_level;
  cout<< "number_of_operations is " << num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_input_data is " << num_input_data <<endl;
  output_file<< "number_of_operations is " << num_operation <<endl;
#endif

  //part 2: data-operation dependencies
  cout<< "number_of_data-operation_dependencies is " << (int)fft_size*2 + num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_data-operation_dependencies is " << (int)fft_size*2 + num_operation <<endl;
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

  // reoder-matrix used to dertermin data-op dependencies
  int * reodermatrix;
  reodermatrix = (int*) calloc (fft_size,sizeof(int));
  // first, operations are stored in a column in order of index
  // now the DYNAMIC-MATRIX is fft_size by 1
  int row = fft_size;
  int col = 1;
  for ( int rowind = 0; rowind < row; rowind++ ) {
	  for ( int colind = 0; colind < col; colind++ ) {
		  int ind = rowind*col;
		  reodermatrix[ind] = rowind;
	  }
  }
  // then, move bottom half (*) of the DYNAMIC-MATRIX to the right (#) for (fft_level-1) times
  // after each move, row number of the DYNAMIC-MATRIX = /2, column number = *2
  //						|  column0 ----> columnlastt
  //						| startcolumn -> endcolumn
  // ----------------------------------------------------------------------------
  //   row0					|							#########################
  //	|					|							#########################
  //	|					|							#########################
  //    |					|							#########################
  //	|		 startrow	|*************************
  //	|			|		|*************************
  //	v			v		|*************************
  // rowlast	  endrow	|*************************
  // ----------------------------------------------------------------------------
  // (startrow,endrow,startcol,endcol) are used to stored the * matrix
  // then, # matrix should be (0,startrow-1,endcol+1,endcol*2+1)
  int startrow = row/2;
  int endrow = row-1;
  int startcol = 0;
  int endcol = 0;
  int * matrixtmp;
  matrixtmp = (int*) calloc (fft_size,sizeof(int));
  for ( int reoderind = 0; reoderind < fft_level-1; reoderind++ ) {
	  for ( int rowind = 0; rowind < startrow; rowind++ ) {
		  for ( int colind = 0; colind <= endcol; colind++ ) {
			  int targetind = rowind*col*2+colind;
			  int sourceind = rowind*col+colind;
			  matrixtmp[targetind] = reodermatrix[sourceind];
		  }
		  for ( int colind = endcol+1; colind < (endcol+1)*2; colind++ ) {
			  int targetind = rowind*col*2+colind;
			  int sourceind = (startrow+rowind)*col+(colind-endcol-1);
			  matrixtmp[targetind] = reodermatrix[sourceind];
		  }
	  }
	  for ( int ind = 0; ind < fft_size; ind++ ) {
		  reodermatrix[ind] = matrixtmp[ind];
	  }
	  // update (startrow,endrow,startcol,endcol)
	  if ( reoderind < fft_level ) {
		  row = row/2;
		  col = col*2;
		  endrow = startrow-1;
		  startrow = startrow/2;
		  endcol = endcol*2+1;
	  }
  }
  free(matrixtmp);
  // finally, the first two rows of the reoder-matrix is the reodered op vectors

  // use the reodered op vectors to set data-op dependency matrix
  for ( int dataind = 0; dataind < fft_size; dataind++ ) {
	  int colind = dataind;
	  if ( colind >= fft_size/2 ) colind = colind-(fft_size/2);
#ifdef LOGDFG
	  output_file<< "DOD(" << dataind << "," << num_input_data+reodermatrix[colind] << ")" <<endl;
	  output_file<< "DOD(" << dataind << "," << num_input_data+reodermatrix[col+colind] << ")" <<endl;
#endif
	  ADD_DEP( dataind, reodermatrix[colind] );
	  ADD_DEP( dataind, reodermatrix[col+colind] );
  }

  free(reodermatrix);

  // for constant data
  int data = fft_size;
  int inc = fft_size/2;
  for ( int level = 1; level <= fft_level; level++ ) {
	  for ( int opind = 0; opind < fft_size/2; opind++ ) {
		  int op = (level-1)*fft_size + opind*2;

#ifdef LOGDFG
		  output_file<< "DOD(" << data << "," << num_input_data+op << ")" <<endl;
		  output_file<< "DOD(" << data << "," << num_input_data+op+1 << ")" <<endl;
#endif
		  ADD_DEP(data,op);
		  ADD_DEP(data,op+1);

		  data = data + inc;
		  while ( data >= num_input_data ) data = data - fft_size/2;
	  }
	  inc = inc/2;
  }

  //part 3: oepration-operation dependencies
  cout<< "number_of_operation-operation_dependencies is " << (int)(num_operation-fft_size)*2 <<endl;
#ifdef LOGDFG
  output_file<< "number_of_operation-operation_dependencies is " << (int)(num_operation-fft_size)*2 <<endl;

  output_file<< "operation-operation_dependencies are " <<endl;
#endif

  int source = 0;
  int dest = fft_size;
  int offset = 0;
  int cnt = 0;
  for ( int level = 1; level < fft_level; level++ ) {
	  int length = (int) pow( 2, (double)(level+1) );
	  for ( int opind = 0; opind < fft_size; opind++ ) {
#ifdef LOGDFG
		  output_file<< "OOD(" << source + num_input_data << "," << dest + offset + num_input_data << ")" <<endl;
#endif
		  ADD_DEP( source+num_input_data , dest+offset );
		  offset++;

#ifdef LOGDFG
		  output_file<< "OOD(" << source + num_input_data << "," << dest + offset + num_input_data << ")" <<endl;
#endif
		  ADD_DEP( source+num_input_data , dest+offset );
		  offset++;

		  if ( offset % length == 0 ) {
			  if ( cnt == 1 ) cnt = 0;
			  else {
				  offset = offset - length;
				  cnt = 1;
			  }
		  }

		  source++;
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
