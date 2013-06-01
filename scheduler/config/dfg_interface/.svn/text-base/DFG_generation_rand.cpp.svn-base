#include <fstream>
#include <iostream>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <sstream>
#include "simplist.h"

using namespace std;

extern int num_input_data;
extern int num_operation;
extern int num_dod;
extern int num_ood;

int dod (int dest);

int *cand_dod;
int *destcnt;

#define ADD_DEP(from, to) {\
pdpmtx[from]->succ->append(pdpmtx[to + num_input_data]);\
pdpmtx[to + num_input_data]->pred->append(pdpmtx[from]);\
}

//#define LOGDFG

void DFG_generation_rand1_5 ()
{
  extern int rand_exp;
  extern int rand_alpha;
  extern int rand_n1;
  extern int rand_seed;

  //Generate the DFG from equation information
  cout<<endl << "=============================" <<endl;
  cout<<endl << "========== the DFG ==========" <<endl;
#ifdef LOGDFG
  ofstream output_file ( "DFG.txt", ios::app );
  output_file<<endl << "=============================" <<endl;
  output_file<<endl << "========== the DFG ==========" <<endl;
#endif
  //part 1: number of input data and operations
  num_input_data = rand_n1;
  cout<< "number_of_input_data is " << num_input_data <<endl;
  float n2tmp;
  n2tmp = pow(2,(double)rand_exp);
  num_operation = (int)n2tmp;
  cout<< "number_of_operations is " << num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_input_data is " << num_input_data <<endl;
  output_file<< "number_of_operations is " << num_operation <<endl;
#endif

  //part 2: data-operation dependencies
  cout<< "pencentage_of_data-operation_dependencies is " << rand_alpha <<endl;
  num_dod = 1.5 * num_operation * rand_alpha / 100;
  cout<< "number_of_data-operation_dependencies is " << num_dod <<endl;

#ifdef LOGDFG
  output_file<< "pencentage_of_data-operation_dependencies is " << rand_alpha <<endl;
  output_file<< "number_of_data-operation_dependencies is " << num_dod <<endl;
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

  //part 3: oepration-operation dependencies
  num_ood = 1.5 * num_operation - num_dod;
  cout<< "number_of_operation-operation_dependencies is " << num_ood <<endl;
#ifdef LOGDFG
  output_file<< "number_of_operation-operation_dependencies is " << num_ood <<endl;

  output_file<< "operation-operation_dependencies are " <<endl;
#endif

  // generate a random dfg here
  srand(rand_seed);

  // set maximum link in for operations
  int *maxinlink;
  maxinlink = (int*) calloc (num_operation,sizeof(int));
  int opcnt1 = 0;
  int opcnt2 = 0;
  for ( int i = 0; i < num_operation; i++) {
	  if ( i == 2662 )
		  i=2662;
	  if ( opcnt1 < num_operation / 2 && opcnt2 < num_operation / 2 ) {
		  maxinlink[i] = rand() % (2) + 1;
		  if ( maxinlink[i] == 1 ) opcnt1++;
		  else if ( maxinlink[i] == 2 ) opcnt2++;
	  }
	  else if ( opcnt1 == num_operation / 2 ) {
		  for ( i = i; i < num_operation; i++ ) {
			  maxinlink[i] = 2;
			  opcnt2++;
		  }
	  }
	  else if ( opcnt2 == num_operation / 2 ) {
		  for ( i = i; i < num_operation; i++ ) {
			  maxinlink[i] = 1;
			  opcnt1++;
		  }
	  }
  }

  // dod
  cand_dod = (int*) calloc (num_input_data*num_operation,sizeof(int)); // 0-cand,1-confirm,2-reject
  destcnt = (int*) calloc (num_operation,sizeof(int));
  int dodcnt = 0;

  int *srccand;
  srccand = (int*) calloc (num_input_data,sizeof(int));
  for ( int i = 0; i < num_input_data; i++ ) {
	  srccand[i] = num_operation;
  }

  int n2 = num_operation-1;
  int n2_exp = n2/32768;
  int n2_exp2 = n2_exp/32768;
  for ( int i = 0; i < num_input_data; i++ ) {
	  int j = n2+1;
	  while ( j > n2 ) {
		  j = rand() % (n2+1);
		  if ( n2_exp > 0 ) {
			  int j_exp = rand() % (n2_exp+1);
			  j = j_exp * 32768 + j;
		  }
		  if ( n2_exp2 > 0 ) {
			  int j_exp2 = rand() % (n2_exp2+1);
			  j = j_exp2 * 32768 * 32768 + j;
		  }
	  }

		  if ( cand_dod[i*num_operation+j] == 0 ) {
#ifdef LOGDFG
			  output_file<< "DOD(" << i << "," << j+num_input_data << ")" <<endl;
#endif
			  ADD_DEP(i,j);

			  cand_dod[i*num_operation+j] = 1;
			  destcnt[j]++;
			  dodcnt++;
			  srccand[i]--;
			  if ( destcnt[j] == maxinlink[j] ) {
				  for ( int i = 0; i < num_input_data; i++ ) {
					  if ( cand_dod[i*num_operation+j] == 0 ) {
						  cand_dod[i*num_operation+j] = 2;
						  srccand[i]--;
					  }
				  }
			  }
		  }

  }

  while ( dodcnt < num_dod ) {
  	int ncand = 0;
  	for ( int source = 0; source < num_input_data; source++ ) {
  		ncand = ncand + srccand[source];
  	}
	  int ncand_exp = ncand/32768;
	  int ncand_exp2 = ncand_exp/32768;
	  int offset = ncand+1;
	  while ( offset > ncand ) {
		  offset = rand() % (ncand+1);
		  if ( ncand_exp > 0 ) {
			  int offset_exp = rand() % (ncand_exp+1);
			  offset = offset_exp * 32768 + offset;
		  }
		  if ( ncand_exp2 > 0 ) {
			  int offset_exp2 = rand() % (ncand_exp2+1);
			  offset = offset_exp2 * 32768 * 32768 + offset;
		  }
	  }

	  int source = 0;
	  int dest = 0;
	  while ( offset >= srccand[source] ) {
		  offset = offset - srccand[source];
		  source++;
	  }
	  while ( offset >= 0 ) {
		  if ( cand_dod[source*num_operation+dest] == 0 ) {
			  offset--;
			  if ( offset == -1 ) {
				  if ( source == 2 && dest == 57 ) 
					  source = source;
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
				  srccand[source]--;
				  if ( destcnt[dest] == maxinlink[dest] ) {
					  for ( int i = 0; i < num_input_data; i++ ) {
						  if ( cand_dod[i*num_operation+dest] == 0 ) {
							  cand_dod[i*num_operation+dest] = 2;
							  srccand[i]--;
						  }
					  }
				  }
			  }
		  }
		  dest++;
	  }
	if ( maxinlink[0] == 2 && maxinlink[1] == 2 ) {
	  if ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] == 0 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-2 && destcnt[0] == 0 && destcnt[1] >= 1 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] == 0 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-1 && destcnt[0] == 1 && destcnt[1] >= 1 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-1 && destcnt[0] >= 2 && destcnt[1] == 0 ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 2 && maxinlink[1] == 1 ) {
	  if ( dodcnt == num_dod-2 && destcnt[0] == 0 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-1 && destcnt[0] == 1 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 1 && maxinlink[1] == 2 ) {
	  if ( dodcnt == num_dod-2 && destcnt[0] == 0 && destcnt[1] == 0 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-1 && destcnt[0] == 0 && destcnt[1] >= 1 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-1 && destcnt[0] >= 1 && destcnt[1] == 0 ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	if ( maxinlink[0] == 1 && maxinlink[1] == 1 ) {
	  if ( dodcnt == num_dod-1 && destcnt[0] == 0 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
  }

  free (cand_dod);
  free (srccand);

  // ood
  int *cand_ood;
  cand_ood = (int*) calloc (num_operation,sizeof(int));

  for ( int dest = 1; dest < num_operation; dest++ ) {
		  if ( dest == 1 ) {
			  dest = dest;
		  }

	  for ( int i = 0; i < num_operation; i++ ) {
		  if ( i < dest ) cand_ood[i] = 0;
		  else cand_ood[i] = 2;
	  }

	  int ncand = dest-1;
	  while ( destcnt[dest] < maxinlink[dest] ) {
		  int ncand_exp = ncand/32768;
		  int ncand_exp2 = ncand_exp/32768;
		  int offset = ncand+1;
		  while ( offset > ncand ) {
			  offset = rand() % (ncand+1);
			  if ( ncand_exp > 0 ) {
				  int offset_exp = rand() % (ncand_exp+1);
				  offset = offset_exp * 32768 + offset;
			  }
			  if ( ncand_exp2 > 0 ) {
				  int offset_exp2 = rand() % (ncand_exp2+1);
				  offset = offset_exp2 * 32768 * 32768 + offset;
			  }
		  }

		  int source = 0;
		  while ( offset >= 0 ) {
			  if ( cand_ood[source] == 0 ) {
				  offset--;
				  if ( offset == -1 ) {
	#ifdef LOGDFG
					  output_file<< "OOD(" << source+num_input_data << "," << dest+num_input_data << ")" <<endl;
	#endif
					  ADD_DEP(source+num_input_data,dest);
					  cand_ood[source] = 1;
					  ncand--;
					  destcnt[dest]++;
				  }
			  }
			  source++;
		  }
	  }
  }

  free (cand_ood);
  free (destcnt);

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

void DFG_generation_rand2_5 ()
{
  extern int rand_exp;
  extern int rand_alpha;
  extern int rand_n1;
  extern int rand_seed;

  //Generate the DFG from equation information
  cout<<endl << "=============================" <<endl;
  cout<<endl << "========== the DFG ==========" <<endl;
#ifdef LOGDFG
  ofstream output_file ( "DFG.txt", ios::app );
  output_file<<endl << "=============================" <<endl;
  output_file<<endl << "========== the DFG ==========" <<endl;
#endif
  //part 1: number of input data and operations
  num_input_data = rand_n1;
  cout<< "number_of_input_data is " << num_input_data <<endl;
  float n2tmp;
  n2tmp = pow(2,(double)rand_exp);
  num_operation = (int)n2tmp;
  cout<< "number_of_operations is " << num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_input_data is " << num_input_data <<endl;
  output_file<< "number_of_operations is " << num_operation <<endl;
#endif

  //part 2: data-operation dependencies
  cout<< "pencentage_of_data-operation_dependencies is " << rand_alpha <<endl;
  num_dod = 2.5 * num_operation * rand_alpha / 100;
  cout<< "number_of_data-operation_dependencies is " << num_dod <<endl;

#ifdef LOGDFG
  output_file<< "pencentage_of_data-operation_dependencies is " << rand_alpha <<endl;
  output_file<< "number_of_data-operation_dependencies is " << num_dod <<endl;
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

  //part 3: oepration-operation dependencies
  num_ood = 2.5 * num_operation - num_dod;
  cout<< "number_of_operation-operation_dependencies is " << num_ood <<endl;
#ifdef LOGDFG
  output_file<< "number_of_operation-operation_dependencies is " << num_ood <<endl;

  output_file<< "operation-operation_dependencies are " <<endl;
#endif

  // generate a random dfg here
  srand(rand_seed);

  // set maximum link in for operations
  int *maxinlink;
  maxinlink = (int*) calloc (num_operation,sizeof(int));
  int opcnt2 = 0;
  int opcnt3 = 0;
  for ( int i = 0; i < num_operation; i++) {
	  if ( opcnt2 < num_operation / 2 && opcnt3 < num_operation / 2 ) {
		  maxinlink[i] = rand() % (2) + 2;
		  if ( maxinlink[i] == 2 ) opcnt2++;
		  else if ( maxinlink[i] == 3 ) opcnt3++;
	  }
	  else if ( opcnt2 == num_operation / 2 ) {
		  for ( i = i; i < num_operation; i++ ) {
			  maxinlink[i] = 3;
			  opcnt3++;
		  }
	  }
	  else if ( opcnt3 == num_operation / 2 ) {
		  for ( i = i; i < num_operation; i++ ) {
			  maxinlink[i] = 2;
			  opcnt2++;
		  }
	  }
  }

  // dod
  cand_dod = (int*) calloc (num_input_data*num_operation,sizeof(int)); // 0-cand,1-confirm,2-reject
  destcnt = (int*) calloc (num_operation,sizeof(int));
  int dodcnt;

  int n2 = num_operation-1;
  int n2_exp = n2/32768;
  int n2_exp2 = n2_exp/32768;
  for ( int i = 0; i < num_input_data; i++ ) {
	  int j = n2+1;
	  while ( j > n2 ) {
		  j = rand() % (n2+1);
		  if ( n2_exp > 0 ) {
			  int j_exp = rand() % (n2_exp+1);
			  j = j_exp * 32768 + j;
		  }
		  if ( n2_exp2 > 0 ) {
			  int j_exp2 = rand() % (n2_exp2+1);
			  j = j_exp2 * 32768 * 32768 + j;
		  }
	  }

#ifdef LOGDFG
			  output_file<< "DOD(" << i << "," << j+num_input_data << ")" <<endl;
#endif
			  ADD_DEP(i,j);

	  cand_dod[i*num_operation+j] = 1;
	  destcnt[j]++;
  }
  dodcnt = num_input_data;

  int *srccand;
  srccand = (int*) calloc (num_input_data,sizeof(int));
  for ( int i = 0; i < num_input_data; i++ ) {
	  srccand[i] = num_operation-1;
  }
  while ( dodcnt < num_dod ) {
  	int ncand = 0;
  	for ( int source = 0; source < num_input_data; source++ ) {
  		ncand = ncand + srccand[source];
  	}
	  int ncand_exp = ncand/32768;
	  int ncand_exp2 = ncand_exp/32768;
	  int offset = ncand+1;
	  while ( offset > ncand ) {
		  offset = rand() % (ncand+1);
		  if ( ncand_exp > 0 ) {
			  int offset_exp = rand() % (ncand_exp+1);
			  offset = offset_exp * 32768 + offset;
		  }
		  if ( ncand_exp2 > 0 ) {
			  int offset_exp2 = rand() % (ncand_exp2+1);
			  offset = offset_exp2 * 32768 * 32768 + offset;
		  }
	  }

	  int source = 0;
	  int dest = 0;
	  while ( offset >= srccand[source] ) {
		  offset = offset - srccand[source];
		  source++;
	  }
	  while ( offset >= 0 ) {
		  if ( cand_dod[source*num_operation+dest] == 0 ) {
			  offset--;
			  if ( offset == -1 ) {
				  if ( source == 2 && dest == 57 ) 
					  source = source;
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
				  srccand[source]--;
				  if ( destcnt[dest] == maxinlink[dest] ) {
					  for ( int i = 0; i < num_input_data; i++ ) {
						  if ( cand_dod[i*num_operation+dest] == 0 ) {
							  cand_dod[i*num_operation+dest] = 2;
							  srccand[i]--;
						  }
					  }
				  }
			  }
		  }
		  dest++;
	  }
	if ( maxinlink[0] == 3 && maxinlink[1] == 3 && maxinlink[2] == 3 ) {
	  while (
		  ( dodcnt == num_dod-6 && destcnt[0] == 0 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-5 && destcnt[0] == 0 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-5 && destcnt[0] == 0 && destcnt[1] == 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-5 && destcnt[0] == 1 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] == 1 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] >= 2 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 1 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 1 && destcnt[1] == 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 2 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] >= 2 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] == 1 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] >= 2 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 2 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 2 && destcnt[1] == 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] >= 2 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] == 1 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] >= 2 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] >= 2 && destcnt[2] >= 1 )
		  ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-3 && destcnt[0] == 3 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 3 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 3 && destcnt[1] == 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 3 && destcnt[1] == 1 && destcnt[2] >= 1 )
		  ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-1 && destcnt[0] == 3 && destcnt[1] >= 2 && destcnt[2] == 0 )
		  ) {
		  dest = 2;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 3 && maxinlink[1] == 3 && maxinlink[2] == 2 ) {
	  if ( dodcnt >= num_dod-5 ) {
		  dodcnt = dodcnt;
	  }
	  while (
		  ( dodcnt == num_dod-5 && destcnt[0] == 0 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] == 1 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 1 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] >= 2 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] == 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 2 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] >= 2 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] == 1 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] >= 2 )
		  ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-2 && destcnt[0] == 3 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 3 && destcnt[1] == 1 )
		  ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 3 && maxinlink[1] == 2 && maxinlink[2] == 3 ) {
	  while (
		  ( dodcnt == num_dod-5 && destcnt[0] == 0 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] >= 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 1 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] >= 1 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] >= 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 2 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] >= 1 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] >= 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] >= 1 && destcnt[2] >= 1 )
		  ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-2 && destcnt[0] == 3 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 3 && destcnt[1] == 0 && destcnt[2] >= 1 )
		  ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-1 && destcnt[0] == 3 && destcnt[1] >= 1 && destcnt[2] == 0 )
		  ) {
		  dest = 2;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 2 && maxinlink[1] == 3 && maxinlink[2] == 3 ) {
	  while (
		  ( dodcnt == num_dod-5 && destcnt[0] == 0 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] == 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-4 && destcnt[0] == 1 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] == 1 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] >= 2 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] == 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 0 && destcnt[1] >= 2 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] == 1 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] >= 2 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 1 && destcnt[1] >= 2 && destcnt[2] >= 1 )
		  ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-3 && destcnt[0] == 2 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] == 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] == 1 && destcnt[2] >= 1 )
		  ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] >= 2 && destcnt[2] == 0 )
		  ) {
		  dest = 2;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 3 && maxinlink[1] == 2 && maxinlink[2] == 2 ) {
	  while (
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] >= 1 )
		  ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-1 && destcnt[0] == 3 && destcnt[1] == 0 )
		  ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 2 && maxinlink[1] == 3 && maxinlink[2] == 2 ) {
	  while (
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] == 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 0 && destcnt[1] >= 2 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] == 1 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 1 && destcnt[1] >= 2 )
		  ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] == 1 )
		  ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 2 && maxinlink[1] == 2 && maxinlink[2] == 3 ) {
	  while (
		  ( dodcnt == num_dod-4 && destcnt[0] == 0 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] >= 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-3 && destcnt[0] == 1 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 0 && destcnt[1] >= 1 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] == 0 && destcnt[2] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] >= 1 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 1 && destcnt[1] >= 1 && destcnt[2] >= 1 )
		  ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-2 && destcnt[0] == 2 && destcnt[1] == 0 && destcnt[2] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] == 0 && destcnt[2] >= 1 )
		  ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] >= 1 && destcnt[2] == 0 )
		  ) {
		  dest = 2;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
	else if ( maxinlink[0] == 2 && maxinlink[1] == 2 && maxinlink[2] == 2 ) {
	  while (
		  ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 0 && destcnt[1] >= 1 ) ||
		  ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] == 0 ) ||
		  ( dodcnt == num_dod-1 && destcnt[0] == 1 && destcnt[1] >= 1 )
		  ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  while (
		  ( dodcnt == num_dod-1 && destcnt[0] == 2 && destcnt[1] == 0 )
		  ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	}
  }

  free (cand_dod);
  free (srccand);

  // ood
  int *cand_ood;
  cand_ood = (int*) calloc (num_operation,sizeof(int));

  for ( int dest = 1; dest < num_operation; dest++ ) {
		  if ( dest == 1 ) {
			  dest = dest;
		  }

	  for ( int i = 0; i < num_operation; i++ ) {
		  if ( i < dest ) cand_ood[i] = 0;
		  else cand_ood[i] = 2;
	  }

	  int ncand = dest-1;
	  while ( destcnt[dest] < maxinlink[dest] ) {
		  int ncand_exp = ncand/32768;
		  int ncand_exp2 = ncand_exp/32768;
		  int offset = ncand+1;
		  while ( offset > ncand ) {
			  offset = rand() % (ncand+1);
			  if ( ncand_exp > 0 ) {
				  int offset_exp = rand() % (ncand_exp+1);
				  offset = offset_exp * 32768 + offset;
			  }
			  if ( ncand_exp2 > 0 ) {
				  int offset_exp2 = rand() % (ncand_exp2+1);
				  offset = offset_exp2 * 32768 * 32768 + offset;
			  }
		  }

		  int source = 0;
		  while ( offset >= 0 ) {
			  if ( cand_ood[source] == 0 ) {
				  offset--;
				  if ( offset == -1 ) {
	#ifdef LOGDFG
					  output_file<< "OOD(" << source+num_input_data << "," << dest+num_input_data << ")" <<endl;
	#endif
					  ADD_DEP(source+num_input_data,dest);
					  cand_ood[source] = 1;
					  ncand--;
					  destcnt[dest]++;
				  }
			  }
			  source++;
		  }
	  }
  }

  free (cand_ood);
  free (destcnt);

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

void DFG_generation_rand2 ()
{
  extern int rand_exp;
  extern int rand_alpha;
  extern int rand_n1;
  extern int rand_seed;

  //Generate the DFG from equation information
  cout<<endl << "=============================" <<endl;
  cout<<endl << "========== the DFG ==========" <<endl;
#ifdef LOGDFG
  ofstream output_file ( "DFG.txt", ios::app );
  output_file<<endl << "=============================" <<endl;
  output_file<<endl << "========== the DFG ==========" <<endl;
#endif
  //part 1: number of input data and operations
  num_input_data = rand_n1;
  cout<< "number_of_input_data is " << num_input_data <<endl;
  float n2tmp;
  n2tmp = pow(2,(double)rand_exp);
  num_operation = (int)n2tmp;
  cout<< "number_of_operations is " << num_operation <<endl;

#ifdef LOGDFG
  output_file<< "number_of_input_data is " << num_input_data <<endl;
  output_file<< "number_of_operations is " << num_operation <<endl;
#endif

  //part 2: data-operation dependencies
  cout<< "pencentage_of_data-operation_dependencies is " << rand_alpha <<endl;
  num_dod = 2 * num_operation * rand_alpha / 100;
  cout<< "number_of_data-operation_dependencies is " << num_dod <<endl;

#ifdef LOGDFG
  output_file<< "pencentage_of_data-operation_dependencies is " << rand_alpha <<endl;
  output_file<< "number_of_data-operation_dependencies is " << num_dod <<endl;
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

  //part 3: oepration-operation dependencies
  num_ood = 2 * num_operation - num_dod;
  cout<< "number_of_operation-operation_dependencies is " << num_ood <<endl;
#ifdef LOGDFG
  output_file<< "number_of_operation-operation_dependencies is " << num_ood <<endl;

  output_file<< "operation-operation_dependencies are " <<endl;
#endif

  // generate a random dfg here
  srand(rand_seed);

  // dod
  cand_dod = (int*) calloc (num_input_data*num_operation,sizeof(int)); // 0-cand,1-confirm,2-reject
  destcnt = (int*) calloc (num_operation,sizeof(int));
  int dodcnt;

  int n2 = num_operation-1;
  int n2_exp = n2/32768;
  int n2_exp2 = n2_exp/32768;
  for ( int i = 0; i < num_input_data; i++ ) {
	  int j = n2+1;
	  while ( j > n2 ) {
		  j = rand() % (n2+1);
		  if ( n2_exp > 0 ) {
			  int j_exp = rand() % (n2_exp+1);
			  j = j_exp * 32768 + j;
		  }
		  if ( n2_exp2 > 0 ) {
			  int j_exp2 = rand() % (n2_exp2+1);
			  j = j_exp2 * 32768 * 32768 + j;
		  }
	  }

#ifdef LOGDFG
			  output_file<< "DOD(" << i << "," << j+num_input_data << ")" <<endl;
#endif
			  ADD_DEP(i,j);

	  cand_dod[i*num_operation+j] = 1;
	  destcnt[j]++;
  }
  dodcnt = num_input_data;

  int *srccand;
  srccand = (int*) calloc (num_input_data,sizeof(int));
  for ( int i = 0; i < num_input_data; i++ ) {
	  srccand[i] = num_operation-1;
  }
  while ( dodcnt < num_dod ) {
  	int ncand = 0;
  	for ( int source = 0; source < num_input_data; source++ ) {
  		ncand = ncand + srccand[source];
  	}
	  int ncand_exp = ncand/32768;
	  int ncand_exp2 = ncand_exp/32768;
	  int offset = ncand+1;
	  while ( offset > ncand ) {
		  offset = rand() % (ncand+1);
		  if ( ncand_exp > 0 ) {
			  int offset_exp = rand() % (ncand_exp+1);
			  offset = offset_exp * 32768 + offset;
		  }
		  if ( ncand_exp2 > 0 ) {
			  int offset_exp2 = rand() % (ncand_exp2+1);
			  offset = offset_exp2 * 32768 * 32768 + offset;
		  }
	  }

	  int source = 0;
	  int dest = 0;
	  while ( offset >= srccand[source] ) {
		  offset = offset - srccand[source];
		  source++;
	  }
	  while ( offset >= 0 ) {
		  if ( cand_dod[source*num_operation+dest] == 0 ) {
			  offset--;
			  if ( offset == -1 ) {
				  if ( source == 2 && dest == 57 ) 
					  source = source;
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
				  srccand[source]--;
				  if ( destcnt[dest] == 2 ) {
					  for ( int i = 0; i < num_input_data; i++ ) {
						  if ( cand_dod[i*num_operation+dest] == 0 ) {
							  cand_dod[i*num_operation+dest] = 2;
							  srccand[i]--;
						  }
					  }
				  }
			  }
		  }
		  dest++;
	  }
	  if ( dodcnt == num_dod-3 && destcnt[0] == 0 && destcnt[1] == 0 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-2 && destcnt[0] == 0 && destcnt[1] >= 1 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-2 && destcnt[0] == 1 && destcnt[1] == 0 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-1 && destcnt[0] == 1 && destcnt[1] >= 1 ) {
		  dest = 0;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
	  if ( dodcnt == num_dod-1 && destcnt[0] >= 2 && destcnt[1] == 0 ) {
		  dest = 1;
		  source = dod(dest);
#ifdef LOGDFG
				  output_file<< "DOD(" << source << "," << dest+num_input_data << ")" <<endl;
#endif
				  ADD_DEP(source,dest);
				  cand_dod[source*num_operation+dest] = 1;
				  destcnt[dest]++;
				  dodcnt++;
	  }
  }

  free (cand_dod);
  free (srccand);

  // ood
  int *cand_ood;
  cand_ood = (int*) calloc (num_operation,sizeof(int));

  for ( int dest = 1; dest < num_operation; dest++ ) {
		  if ( dest == 1 ) {
			  dest = dest;
		  }

	  for ( int i = 0; i < num_operation; i++ ) {
		  if ( i < dest ) cand_ood[i] = 0;
		  else cand_ood[i] = 2;
	  }

	  int ncand = dest-1;
	  while ( destcnt[dest] < 2 ) {
		  int ncand_exp = ncand/32768;
		  int ncand_exp2 = ncand_exp/32768;
		  int offset = ncand+1;
		  while ( offset > ncand ) {
			  offset = rand() % (ncand+1);
			  if ( ncand_exp > 0 ) {
				  int offset_exp = rand() % (ncand_exp+1);
				  offset = offset_exp * 32768 + offset;
			  }
			  if ( ncand_exp2 > 0 ) {
				  int offset_exp2 = rand() % (ncand_exp2+1);
				  offset = offset_exp2 * 32768 * 32768 + offset;
			  }
		  }

		  int source = 0;
		  while ( offset >= 0 ) {
			  if ( cand_ood[source] == 0 ) {
				  offset--;
				  if ( offset == -1 ) {
	#ifdef LOGDFG
					  output_file<< "OOD(" << source+num_input_data << "," << dest+num_input_data << ")" <<endl;
	#endif
					  ADD_DEP(source+num_input_data,dest);
					  cand_ood[source] = 1;
					  ncand--;
					  destcnt[dest]++;
				  }
			  }
			  source++;
		  }
	  }
  }

  free (cand_ood);
  free (destcnt);

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

int dod (int dest) {
	  int ncand = num_input_data-destcnt[dest]-1;
	  int ncand_exp = ncand/32768;
	  int ncand_exp2 = ncand_exp/32768;
	  int offset = ncand+1;
	  while ( offset > ncand ) {
		  offset = rand() % (ncand+1);
		  if ( ncand_exp > 0 ) {
			  int offset_exp = rand() % (ncand_exp+1);
			  offset = offset_exp * 32768 + offset;
		  }
		  if ( ncand_exp2 > 0 ) {
			  int offset_exp2 = rand() % (ncand_exp2+1);
			  offset = offset_exp2 * 32768 * 32768 + offset;
		  }
	  }

	  int source = 0;
	  int ret_src;
	  while ( offset >= 0 ) {
		  if ( cand_dod[source*num_operation+dest] == 0 ) {
			  offset--;
			  if ( offset == -1 ) ret_src = source;
		  }
		  source++;
	  }
	  
	  return ret_src;
}
