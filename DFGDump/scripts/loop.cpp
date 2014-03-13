#define N 3

void loop(int a[N][N], int sum, int sum_init, int factor){
    sum=sum_init;
    for(int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            sum=sum+a[i][j]*factor;
        }
    }
}
