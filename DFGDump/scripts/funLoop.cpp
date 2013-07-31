inline int elementAdd(int x, int y);
int vecAdd(int a[100], int N){
    int sum=0;
    for(int i=0; i<N; i++){
        sum=elementAdd(a[i],sum);
    }
    return sum;
}

inline int elementAdd(int x, int y){
    return x+y;
}
