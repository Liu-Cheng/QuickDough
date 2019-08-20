#include "math.h"
#include "stdio.h"

#define R 128
#define C 8

void sobel_ip(int sub_in[R*C/4+18], int sub_out[R*C/4]);
