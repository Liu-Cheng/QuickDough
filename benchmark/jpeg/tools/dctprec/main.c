#include <stdlib.h>
#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <math.h>
#include <memory.h>
#include <string.h>
#include <errno.h>

#include "arch.h"
#include "dct.h"

const double PI = 3.1415926535897932384626433832795;

void print_dct_coef(unsigned n)
{
	unsigned i;

	for (i = 1; i < 8; i++)
		printf("\tC%d = %d,\n", i, (int)ceil(cos(i*PI/16) * (1 << n)));
}

int main0 (int argc, char *argv[])
{
	uint64_t clk[2];
	CACHE_ALIGN conv Yin[8][8] =
	{
		{  0, 10, 20, 30, 40, 50, 60, 70},
		{  0, 10, 20, 30, 40, 50, 60, 70},
		{  0, 10, 20, 30, 40, 50, 60, 70},
		{ 10, 20, 30, 40, 50, 60, 70, 80},
		{ 20, 30, 40, 50, 60, 70, 80, 90},
		{ 30, 40, 50, 60, 70, 80, 90,100},
		{ 40, 50, 60, 70, 80, 90,100,110},
		{ 50, 60, 70, 80, 90,100,110,-110}
	};
	CACHE_ALIGN conv Yout[2][8][8];
	uint64_t tm;
	unsigned i, j;

	dct_fill_tab(); 

	print_dct_coef(14);

	// 1 Y-compression
	tm = __rdtsc();
	dct31(Yin, Yout[0]);
	clk[0] = __rdtsc() - tm;

	// 2 Y-compression
	tm = __rdtsc();
	dct4(Yin, Yout[1]);
	clk[1] = __rdtsc() - tm;

	printf(" DCT1 MIPS:\t\t%f\n", clk[0]/1.e6);
	printf(" DCT2 MIPS:\t\t%f\n", clk[1]/1.e6);

	printf("DCT1:\n");
	for (i = 0; i < 8; i++)	{
		for (j = 0; j < 8; j++)
			printf(" %3d", Yout[0][i][j]);
		printf("\n");
	}

	printf("DCT2:\n");
	for (i = 0; i < 8; i++)	{
		for (j = 0; j < 8; j++)
			printf(" %3d", Yout[1][i][j]);
		printf("\n");
	}

	//idct3(Yout[0], Yout[0]);
	idct(Yout[0], Yout[0]);
	idct(Yout[1], Yout[1]);

	printf("Input1:\n");
	for (i = 0; i < 8; i++)	{
		for (j = 0; j < 8; j++)
			printf(" %3d", Yout[0][i][j]);
		printf("\n");
	}

	printf("Input2:\n");
	for (i = 0; i < 8; i++)	{
		for (j = 0; j < 8; j++)
			printf(" %3d", Yout[1][i][j]);
		printf("\n");
	}

	return 0;
} 

int main (int argc, char *argv[])
{
	uint64_t clk[2];
	CACHE_ALIGN short in[8] = {	10, 10, 255, 10, 10, 10, 10, 10 };
	CACHE_ALIGN short out[3][8];
	uint64_t tm;
	unsigned i;

	dct_fill_tab(); 

	//print_dct_coef(14);

	// 1 Y-compression
	tm = __rdtsc();
	dct_1d(in, out[0]);
	clk[0] = __rdtsc() - tm;

	// 2 Y-compression
	tm = __rdtsc();
	dct_1d_31(in, out[1]);
	clk[1] = __rdtsc() - tm;

	printf(" DCT1 MIPS:\t\t%f\n", clk[0]/1.e6);
	printf(" DCT2 MIPS:\t\t%f\n", clk[1]/1.e6);

	printf("DCT1:\n");
	for (i = 0; i < 8; i++)
		printf(" %3d", out[0][i]);
	printf("\n");

	printf("DCT2:\n");
	for (i = 0; i < 8; i++)
		printf(" %3d", out[1][i]);
	printf("\n");

	tm = __rdtsc();
	idct_1d(out[0], out[2]);
	clk[0] = __rdtsc() - tm;

	printf("Input1:\n");
	for (i = 0; i < 8; i++)
		printf(" %3d", out[2][i]);
	printf("\n");

	tm = __rdtsc();
	idct_1d(out[1], out[2]);
	clk[1] = __rdtsc() - tm;

	printf("Input2:\n");
	for (i = 0; i < 8; i++)
		printf(" %3d", out[2][i]);
	printf("\n");

	printf(" IDCT1 MIPS:\t\t%f\n", clk[0]/1.e6);
	printf(" IDCT2 MIPS:\t\t%f\n", clk[1]/1.e6);

	return 0;
}