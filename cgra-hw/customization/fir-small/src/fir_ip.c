#include "fir_ip.h"

void fir_ip(int sub_in[N+L+N], int sub_out[L]){
	int i;
	int j;

	fir_ip_label1:for(i=0; i<L; i++){
		int tmp = 0;
		fir_ip_label0:for(j=0; j<N; j++){
			tmp += sub_in[j+N+L]*sub_in[i+N-j];
		}
		sub_out[i]=tmp;
	}
}
