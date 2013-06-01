#include <fstream>
#include <iostream>
#include <sstream>
#include <string>
#include <stdio.h>
#include <stdlib.h>
#include "simplist.h"
#include <time.h>
#include <math.h>

using namespace std;

  extern int num_input_data;
  extern int num_operation;

void dfg_interface ()
{
  extern VNode** pdpmtx;

	ofstream output_file ( "dfg_interface.txt" );

	for ( int nodeind = num_input_data; nodeind < num_input_data + num_operation; nodeind++ ) {

	  output_file<< nodeind+1 << " 0 ";

	  int prenum = 0;
	  SimpleListNode *ptr;
	  VNode* opnode = pdpmtx[nodeind];
	  for (ptr = opnode->pred->head;
		  ptr != NULL;
		  ptr = ptr->next) {
			  int pre = ptr->vnode->num;
			  if (ptr->vnode->type == 'o') {
				  pre = pre + num_input_data;
			  }

			  output_file<< pre+1;
			  prenum++;
			  if ( prenum < 3 ) output_file<< " ";
			  else output_file<<endl;
	  }

	  while ( prenum < 3 ) {
		  prenum++;
		  output_file<< "0";
		  if ( prenum < 3 ) output_file<< " ";
		  else output_file<<endl;
	  }

	}

	output_file.close();
}
