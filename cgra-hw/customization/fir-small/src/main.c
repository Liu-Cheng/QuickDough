#include "fir_ip.h"
#include <stdlib.h>

int coeff[N];
int in[L];

int out[L];
int out_expected[L];
int sub_in[N+L+N];

int main(){

	int i;
	int j;
	for(i=0; i<N; i++){
		coeff[i] = rand()%10;
	}
	for(i=0; i<L; i++){
		in[i] = rand()%10;
	}

	for(i=0; i<N; i++){
		out_expected[i]=0;
		for(j=0; j<N; j++){
			if(i>=j){
			  out_expected[i] += coeff[j]*in[i-j];
			}
		}
	}

	//Combine the input
	for(i=0; i<L+N+N; i++){
		if(i<N){
			sub_in[i]=0;
		}
		else if(i<N+L){
			sub_in[i] = in[i-N];
		}
		else {
			sub_in[i]=coeff[i-L-N];
		}
	}

	fir_ip(sub_in, out);

	for(i=0; i<L; i++){
		if(out[i]!=out_expected[i]){
			printf("out[%d]=%d, out_expected[%d]=%d\n", i, out[i], i, out_expected[i]);
			return 0;
		}
	}

	printf("Computation matches!\n");
	return 0;

}
