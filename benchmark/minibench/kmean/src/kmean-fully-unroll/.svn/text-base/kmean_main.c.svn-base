#include "stdio.h"
#include "kmean.h"

static int init_centroids[N][D]={
#include "init_centroids_medium.txt"
};

static int samples[S][D]={
#include "kmean_in_medium.txt"
};

int sub_in[S*D+N*D];
int sub_out[N*D+N];

int Verification(int computed_centroids[N][D], int expected_centroids[N][D]);

int main(){
    int expected_centroids[N][D]={ 
      #include "return_centroids_medium.txt"
    };
    int computed_centroids[N][D];

    int i;
    int j;
    int k;

    /*Input combination*/
    int id=0;
    for(i=0; i<S; i++){
        for(j=0; j<D; j++){
            sub_in[id]=samples[i][j];
            id++;
        }
    }

    for(i=0; i<N; i++){
        for(j=0; j<D; j++){
            sub_in[id]=init_centroids[i][j];
            id++;
        }
    }

    for(i=0; i<IT; i++){

        /* This function will be allocated to FPGA for acceleration. */
        kmean_ip(sub_in, sub_out);

        /* Move the result to init_centroids for the next iteration
         * The following part will be executed on ARM.*/
        for(j=0; j<N; j++){
            for(k=0; k<D; k++){
                sub_in[S*D+j*D+k]=sub_out[j*D+k]/sub_out[N*D+j];
            }
        }
    }

    /* Find out the nearest node and set it as final centroid */
    for(i=0; i<N; i++){
        int dist[S];
        int nid=0;
        int min=(sub_in[S*D+i*D]-samples[0][0])*(sub_in[S*D+i*D]-samples[0][0]);
        min+=(sub_in[S*D+i*D+1]-samples[0][1])*(sub_in[S*D+i*D+1]-samples[0][1]);

        for(j=1; j<S; j++){
            dist[j]=(sub_in[S*D+i*D]-samples[j][0])*(sub_in[S*D+i*D]-samples[j][0]);
            dist[j]+=(sub_in[S*D+i*D+1]-samples[j][1])*(sub_in[S*D+i*D+1]-samples[j][1]);
            if(min>dist[j]){
                nid=j;
                min=dist[j];
            }
        }
        computed_centroids[i][0]=samples[nid][0];
        computed_centroids[i][1]=samples[nid][1];
    }


    int pass=Verification(computed_centroids, expected_centroids);
    if(pass){
        printf("Veirification passed!\n");
    }
    else{
        printf("Verification failed!\n");
    }
}

int Verification(int computed_centroids[N][D], int expected_centroids[N][D]){
    int i;
    int j;

    for(i=0; i<N; i++){
        for(j=0; j<D; j++){
            if(computed_centroids[i][j]!=expected_centroids[i][j]){
                printf("computed_centroids[%d][%d]=%d, expected_centroids[%d][%d]=%d\n", i, j, computed_centroids[i][j], i, j, expected_centroids[i][j]);
                return 0;
            }
        }
    }
    return 1;
}
