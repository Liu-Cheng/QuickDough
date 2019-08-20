#include <stdio.h>
#include <stdlib.h>
#include "kmean.h"

int init_centroids[N][D];
int samples[S][D];
int sub_in[S*D+N*D];
int sub_out[N*D+N];
int expected_centroids[N][D];
int computed_centroids[N][D];

void Verification();
void Init();
void Kmean_Kernel();

int main(){

	Init();

	int i;
	int j;
	int id=0;
	for(i=0; i<S; i++){
		for(j=0; j<D; j++){
			sub_in[id] =  samples[i][j];
			id++;
		}
	}

	for(i=0; i<N; i++){
		for(j=0; j<D; j++){
			sub_in[id] = init_centroids[i][j];
			id++;
		}
	}


	/* This function will be allocated to FPGA for acceleration. */
	kmean_ip(sub_in, sub_out);

	/* Calculate the centroids */
	for(i=0; i<N; i++){
		for(j=0; j<D; j++){
			computed_centroids[i][j] = sub_out[i*D+j]/sub_out[N*D+i];
		}
	}

	Verification();

}

void Init(){
	int i;
	int j;

	for(i=0; i<S; i++){
		for(j=0; j<D; j++){
			samples[i][j] = rand()%100;
		}
	}

	for(i=0; i<N; i++){
		for(j=0; j<D; j++){
			init_centroids[i][j] = rand()%100;
		}
	}

	Kmean_Kernel();
}
void Verification(){
	int i;
	int j;

	for(i=0; i<N; i++){
		for(j=0; j<D; j++){
			if(computed_centroids[i][j]!=expected_centroids[i][j]){
				printf("computed_centroids[%d][%d]=%d, expected_centroids[%d][%d]=%d\n", i, j, computed_centroids[i][j], i, j, expected_centroids[i][j]);
				exit();
			}
		}
	}
	printf("Verification passed!\n");

}

void Kmean_Kernel(){

	int i;
	int j;
	int k;
	int Centroids_Num[N];
	int Centroids_Sum[N][D];
    for(i=0; i<N; i++){
        Centroids_Num[i] = 0;
        for(int j=0; j<D; j++){
            Centroids_Sum[i][j] = 0;
        }
    }

    int Dist[N];
    for(i=0; i<S; i++){
        for(j=0; j<N; j++){
            Dist[j] = 0;
            for(int k=0; k<D; k++){
                Dist[j] += (samples[i][k]-init_centroids[j][k])*(samples[i][k]-init_centroids[j][k]);
            }
        }


        for(j=0; j<N; j++){
            int flag=1;
            for(k=0; k<N; k++){
                if(j<k){
                    flag = (flag==1) && (Dist[j]<=Dist[k]);
                }
                else if(j>k){
                    flag = (flag==1) && (Dist[j]<Dist[k]);
                }
            }
            if(flag==1){
                Centroids_Num[j]++;
                for(int k=0; k<D; k++){
                    Centroids_Sum[j][k] += samples[i][k];
                }
            }
        }
    }

	/* Calculate the centroids */
	for(i=0; i<N; i++){
		for(j=0; j<D; j++){
			expected_centroids[i][j] = Centroids_Sum[i][j]/Centroids_Num[i];
		}
	}

}
