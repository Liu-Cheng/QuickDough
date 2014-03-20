#include "math.h"
#include "stdio.h"

#define R 32
#define C 32

void sobel_ip(int sub_in[R*C/4+18], int sub_out[R*C/4]);
