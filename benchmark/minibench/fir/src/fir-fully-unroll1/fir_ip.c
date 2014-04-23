#include "fir_ip.h"

void fir_ip(int sub_in[L+N+N], int sub_out[L+N]){
	int i;
	int j;

	for(i=0; i<L+N; i++){
		sub_out[i]=0;
		for(j=0; j<N; j++){
            if(i >= j){
                sub_out[i] += sub_in[j+L+N]*sub_in[i-j];
            }
		}
	}
}
