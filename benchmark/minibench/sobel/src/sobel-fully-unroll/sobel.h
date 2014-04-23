#include "math.h"
#include "stdio.h"

#define R 256
#define C 256

void sobel_ip(int sub_in[R*C/4+18], int sub_out[R*C/4]);
