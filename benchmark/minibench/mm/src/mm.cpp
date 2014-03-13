#include "mm.h"

void mm(int a[N][N], int b[N][N], int c[N][N]){
    for(i=0; i<N; i++){
        for(j=0; j<N; j++){
            c[i][j]=0;
            for(k=0; k<N; k++){
                c[i][j]=a[i][k]*b[k][j];
            }
        }
    }
}

