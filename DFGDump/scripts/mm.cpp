const int N=2;
int c[N][N];
void mm(int a[N][N], int b[N][N]){
    for (int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            c[i][j]=0;
            for(int k=0; k<N; k++){
                c[i][j]+=a[i][k]*b[k][j];
            }
        }
    }
}
