#include <stdio.h>
#include "mm_ip.h"

int main(){
	int i;
	int j;
	int id;


	const int a[N][N]={
    #include "in_a_medium.txt"
	};

	const int b[N][N]={
    #include "in_b_medium.txt"
	};

	const int out_expected[N][N]={
    #include "out_c_medium.txt"
	};

	int in[2*N][N];
	for(i=0; i<N; i++){
		for(j=0; j<N; j++){
			in[i][j]=a[i][j];
			in[i+N][j]=b[i][j];
		}
	}

	// HW computation
	int out[N][N];
	mm_ip(in, out);

	// Verification
	for(i=0; i<N; i++){
		for(j=0; j<N; j++){
			if(out[i][j]!=out_expected[i][j]){
				printf("Verification failed! out[%d][%d]=%d, out_expected[%d][%d]=%d\n", i, j, out[i][j], i, j, out_expected[i][j]);
				return -1;
			}
		}
	}
	printf("Verification passed!\n");
	return 0;

}
