#include "fir_ip.h"

void fir_ip(int sub_in[L+N+N], int sub_out[L]){
	int i;
	int j;

	fir_ip_label1:for(i=0; i<L; i++){
		sub_out[i]=0;
		fir_ip_label0:for(j=0; j<N; j++){
			sub_out[i]+=sub_in[j+L+N]*sub_in[i+N-j];
		}
	}
}
