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

	//Combine the input
	for(i=0; i<L+N+N; i++){
		if(i<L+N){
			sub_in[i]=in[i];
		}
		else {
			sub_in[i]=coeff[i-L-N];
		}
	}

	fir_ip(sub_in, out);

	for(i=0; i<L+N; i++){
		if(out[i]!=out_expected[i]){
			printf("Verification failed! out[%d]=%d, out_expected[%d]=%d\n", i, out[i], i, out_expected[i]);
			return 1;
		}
	}

	printf("Verification passed!\n");
	return 0;

}
