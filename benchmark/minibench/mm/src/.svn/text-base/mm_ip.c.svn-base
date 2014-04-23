#include "mm_ip.h"

void mm_ip(int in[2*N][N], int out[N][N]){
	int i;
	int j;
	int k;
	mm_label2:for(i=0; i<N; i++){
		mm_label1:for(j=0; j<N; j++){
			out[i][j]=0;
			mm_label0:for(k=0; k<N; k++){
				out[i][j]+=in[i][k]*in[k+N][j];
			}
		}
	}
}
