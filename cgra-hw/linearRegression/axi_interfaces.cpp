#include <ap_int.h>
#include "axi_interfaces.h"

#define MAX_DIM ((N-5)>>1)
#define ACC2

uint32_t reverseBytes32(uint32_t in);
uint64_t reverseBytes64(uint64_t in);

void axi_interfaces(uint32_t doutc[N], uint32_t dina[N], uint32_t dinb[N]) {
#pragma HLS PIPELINE II=128
#pragma HLS ARRAY_PARTITION variable=doutc cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=dinb cyclic factor=2 dim=1
#pragma HLS ARRAY_PARTITION variable=dina cyclic factor=2 dim=1

	int i, j;
	double dot_prod = 0.0;
	double omega = 0.0;
	double elem_mult[2][MAX_DIM];
#pragma HLS ARRAY_PARTITION variable=elem_mult complete dim=1
//#pragma HLS ARRAY_PARTITION variable=elem_mult cyclic factor=4 dim=2
	double a_double;

	bool pi;
	bool po;

	union64_t tmpa;
	union64_t tmpb;
	union64_t tmpc;
	union64_t a_label;
	double a_elem[MAX_DIM];
	union64_t b_elem;
	union64_t c_elem;

	uint32_t a_size = reverseBytes32(dina[0]);
	uint32_t a_keySize = reverseBytes32(dina[1]);
	uint32_t a_dim = reverseBytes32(dina[2]);
	// assumed keySize 0, value type is ArrayWritable(DoubleWritable)
	// always assume array dimension a_dim <= (N-3)/2

	tmpa.u[0] = dina[3];
	tmpa.u[1] = dina[4];
	a_label.lu = reverseBytes64(tmpa.lu);

	uint32_t b_size = reverseBytes32(dinb[0]);
	uint32_t b_keySize = reverseBytes32(dinb[1]);
	uint32_t b_dim = reverseBytes32(dinb[2]);
	// always assume b_dim is equal to a_dim - 1
	// so b_dim is at most (N-5)/2

	doutc[0] = dinb[0];
	doutc[1] = dinb[1];
	doutc[2] = dinb[2];

	Elem_Mult_Loop: for (i = 0; i < MAX_DIM; i++) {
#pragma HLS PIPELINE
		if (i < b_dim) {
			tmpa.u[0] = dina[2 * i + 5];
			tmpa.u[1] = dina[2 * i + 6];
			tmpb.u[0] = dinb[2 * i + 3];
			tmpb.u[1] = dinb[2 * i + 4];
			union64_t a_union;
			a_union.lu = reverseBytes64(tmpa.lu);
			a_elem[i] = a_union.d;
			b_elem.lu = reverseBytes64(tmpb.lu);
			elem_mult[0][i] = a_elem[i] * b_elem.d;
		}
	}

#ifdef ACC2

	pi = 0;
	po = 1;

#if MAX_DIM >= 32
	Add_Loop16: for (j = 0; j < 16; j++) {
#pragma HLS PIPELINE
		if (16 + j < b_dim)
			elem_mult[po][j] = elem_mult[pi][j] + elem_mult[pi][16 + j];
		else
			elem_mult[po][j] = elem_mult[pi][j];
	}
	pi = ~pi;
	po = ~po;
#endif

	// below assumed b_dim is always larger than 4
	elem_mult[po][0] = elem_mult[pi][0] + elem_mult[pi][2];
	elem_mult[po][1] = elem_mult[pi][1] + elem_mult[pi][3];
	dot_prod = elem_mult[po][0] + elem_mult[po][1];
	omega = dot_prod - a_label.d;
#endif

	Scalar_Product_Loop: for (i = 0; i < MAX_DIM; i++) {
#pragma HLS UNROLL factor=2
#pragma HLS PIPELINE
		if (i < b_dim) {
			tmpc.d = omega * a_elem[i];
			c_elem.lu = reverseBytes64(tmpc.lu);
			doutc[2 * i + 3] = c_elem.u[0];
			doutc[2 * i + 4] = c_elem.u[1];
		}
	}
}

uint32_t reverseBytes32(uint32_t in) {
	union32_t temp, out;
	temp.u = in;

	out.c[3] = temp.c[0];
	out.c[2] = temp.c[1];
	out.c[1] = temp.c[2];
	out.c[0] = temp.c[3];
	return out.u;
}

uint64_t reverseBytes64(uint64_t in) {
	union64_t temp, out;
	temp.lu = in;

	out.c[7] = temp.c[0];
	out.c[6] = temp.c[1];
	out.c[5] = temp.c[2];
	out.c[4] = temp.c[3];
	out.c[3] = temp.c[4];
	out.c[2] = temp.c[5];
	out.c[1] = temp.c[6];
	out.c[0] = temp.c[7];
	return out.lu;
}
