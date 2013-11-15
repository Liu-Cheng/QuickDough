//-------------------------------------------------------------------------
//
// 1) Initialization must be done out of the function.
//
// 2) Constant assignment is not supported. If there are 
// constant operation in the function, put it in the function argument list.
//
// 3) The argument must be either pure input or output. Inout is not allowed.
//
// 4) All the variables in the argument list that are modified will be 
// considered as output and will be moved from FPGA back to main memory. 
// All the variables in the argument list that are referenced but are not 
// modified are taken as input. 
//
// 5) Branch in loop is not supported.
//
//--------------------------------------------------------------------------

const int N=20;
int c[N][N];
void mm20x20(int a[N][N], int b[N][N], int init, int c[N][N]){
    for (int i=0; i<N; i++){
        for(int j=0; j<N; j++){
            c[i][j]=init;
            for(int k=0; k<N; k++){
                c[i][j]+=a[i][k]*b[k][j];
            }
        }
    }
}
