const int S=10;

int matrixAdd(int a[S][S], int b[S][S]){
    int c[S][S];
    int s=0;

    for(int i=0; i<S; i++){
        for(int j=0; j<S; j++){
            c[i][j]=a[i][j]+b[i][j];
            s+=c[i][j];
        }
    }

    return s;
}


