#define L 1024 // Length of the input signal
#define N 64 // The number of fir taps + 1

void fir_ip(int sub_in[L+N+N], int sub_out[L]);
