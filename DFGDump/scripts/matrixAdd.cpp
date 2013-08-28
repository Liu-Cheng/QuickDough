const int S=10;

void matrixAdd(int a[S][S], int b[S][S], int c[S][S]){
    for(int i=0; i<S; i++){
        for(int j=0; j<S; j++){
            c[i][j]=a[i][j]+b[i][j];
        }
    }
}


