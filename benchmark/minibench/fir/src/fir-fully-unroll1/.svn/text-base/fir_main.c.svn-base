#include <stdio.h>
#include "fir_ip.h"

const int coeff[N]={
  #include "fir_coeff.txt"
};

const int in[L+N]={
  #include "in_medium.txt"
};

const int out_expected[L+N]={
  #include "out_medium.txt"
};

int out[L+N];
int sub_in[L+N+N]; //input signals + coeff

int main(){


	int i;
	int j;

	//Complete Fir operation can be divided into two parts.
	//The first part has a branch in the loop and it influences the loop unrolling efficiency a lot.
	//Therefore it is removed from hardware acceleration and is left to the software.
	for(i=0; i<N; i++){
		out[i]=0;
		for(j=0; j<N; j++){
			if(i>=j){
			  out[i]+=coeff[j]*in[i-j];
			}
		}
	}

	//The major part of Fir that will be implemented on FPGA
	/*
	for(i=N; i<L+N; i++){
		out[i]=0;
		for(j=0; j<N; j++){
			out[i]+=coeff[j]*in[i-j];
		}
	}
	*/

	//Combine the input
	for(i=0; i<L+N+N; i++){
		if(i<L+N){
			sub_in[i]=in[i];
		}
		else {
			sub_in[i]=coeff[i-L-N];
		}
	}

	fir_ip(sub_in, &out[N]);

	for(i=0; i<L+N; i++){
		if(out[i]!=out_expected[i]){
			printf("Verification failed! out[%d]=%d, out_expected[%d]=%d\n", i, out[i], i, out_expected[i]);
			return 1;
		}
	}

	printf("Verification passed!\n");
	return 0;

}
