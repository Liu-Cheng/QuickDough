void matrixMul(int a00, int a01, int a10, int a11, int b00, int b01, int b10, int b11){
    int c00;
    int c01;
    int c10;
    int c11;
    c00=a00*b00+a01*b10;
    c01=a00*b01+a01*b11;
    c10=a10*b00+a11*b10;
    c11=a10*b01+a11*b11;
}


