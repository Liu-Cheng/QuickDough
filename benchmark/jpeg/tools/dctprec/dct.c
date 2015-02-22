#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "arch.h"
#include "dct.h"


#define PI  3.1415926535897932384626433832795
#define IDCTI_AMP 512


uint64_t dctclk = 0;
uint64_t idctclk = 0;


// DCT basis functions coeficients
int dct_tbl_i[8][8];
double dct_tbl[8][8];

CACHE_ALIGN short dct_tbl_s[8][8] =
{
	{362, 362, 362, 362, 362, 362, 362, 362},
	{502, 425, 284,  99, -99,-284,-425,-502},
	{473, 195,-195,-473,-473,-195, 195, 473},
	{425, -99,-502,-284, 284, 502,  99,-425},
	{362,-362,-362, 362, 362,-362,-362, 362},
	{284,-502, 99,  425,-425, -99, 502,-284},
	{195,-473, 473,-195,-195, 473,-473, 195},
	{ 99,-284, 425,-502, 502,-425, 284, -99}
};

CACHE_ALIGN short idct_tbl_s[8][8] =
{
	{362, 502, 473, 425, 362, 284, 195,  99},
	{362, 425, 195, -99,-362,-502,-473,-284},
	{362, 284,-195,-502,-362,  99, 473, 425},
	{362,  99,-473,-284, 362, 425,-195,-502},
	{362, -99,-473, 284, 362,-425,-195, 502},
	{362,-284,-195, 502,-362, -99, 473,-425},
	{362,-425, 195,  99,-362, 502,-473, 284},
	{362,-502, 473,-425, 362,-284, 195, -99}
};

//
void dct_fill_tab()
{
	unsigned u,x;

	for (u = 0; u < 8; u++)
	{
		printf("%d: ", u);
		for (x = 0; x < 8; x++)
		{
			double Cu = (u==0)? 1.0/sqrt(2.0): 1.0;

			double K = Cu * cos((double)(2*x+1) * (double)u * PI/16.0);
			dct_tbl[u][x] = K;
			dct_tbl_i[u][x] = K * IDCTI_AMP;
			//dct_tbl_s[u][x] = K * IDCTI_AMP;
			//idct_tbl_s[x][u] = K * IDCTI_AMP; // different order

			printf("%f(%d),", K, idct_tbl_s[u][x]);
		}
		printf("\n");
	}
} 

// real DCT
void dct(conv pixel[8][8], conv data[8][8])
{
	unsigned x, y, n;
	float tmp[8][8];

//	uint64_t a = __rdtsc();

	for (y = 0; y < 8; y++)
	for (x = 0; x < 8; x++)
	{
		float q = 0.0f;

		for (n = 0; n < 8; n++)
			q += pixel[y][n] * dct_tbl[x][n];

		tmp[y][x] = q/2;
	}
		
	for (x = 0; x < 8; x++)
	for (y = 0; y < 8; y++)
	{
		float q = 0.0f;

		for (n = 0; n < 8; n++)
			q += tmp[n][x] * dct_tbl[y][n];

		data[y][x] = q/2;
	}

//	idctclk += __rdtsc() - a;
}

void dct_1d(const short pixel[8], short data[8])
{
	unsigned x, n;

	for (x = 0; x < 8; x++)
	{
		float q = 0.0f;

		for (n = 0; n < 8; n++)
			q += pixel[n] * dct_tbl[x][n];

		data[x] = (q+0.5)/2;
	}
}


/******************************************************************************
**  dct
**  --------------------------------------------------------------------------
**  Fast DCT - Discrete Cosine Transform.
**  This function converts 8x8 pixel block into frequencies.
**  Lowest frequencies are at the upper-left corner.
**  The input and output could point at the same array, in this case the data
**  will be overwritten.
**  
**  ARGUMENTS:
**      pixels  - 8x8 pixel array;
**      data    - 8x8 freq block;
**
**  RETURN: -
******************************************************************************/
void dct0(conv pixels[8][8], conv data[8][8])
{
	short rows[8][8];
	unsigned i;

	static const int
				c1 = 1004,  /* cos(pi/16) << 10 */
				s1 = 200,   /* sin(pi/16) */
				c3 = 851,   /* cos(3pi/16) << 10 */
				s3 = 569,   /* sin(3pi/16) << 10 */
				r2c6 = 554, /* sqrt(2)*cos(6pi/16) << 10 */
				r2s6 = 1337,/* sqrt(2)*sin(6pi/16) << 10 */
				r2 = 181;   /* sqrt(2) << 7*/

	/* transform rows */
	for (i = 0; i < 8; i++)
	{
		int x0,x1,x2,x3,x4,x5,x6,x7,x8;

		x0 = pixels[i][0];
		x1 = pixels[i][1];
		x2 = pixels[i][2];
		x3 = pixels[i][3];
		x4 = pixels[i][4];
		x5 = pixels[i][5];
		x6 = pixels[i][6];
		x7 = pixels[i][7];

		/* Stage 1 */
		x8=x7+x0;
		x0-=x7;
		x7=x1+x6;
		x1-=x6;
		x6=x2+x5;
		x2-=x5;
		x5=x3+x4;
		x3-=x4;

		/* Stage 2 */
		x4=x8+x5;
		x8-=x5;
		x5=x7+x6;
		x7-=x6;
		x6=c1*(x1+x2);
		x2=(-s1-c1)*x2+x6;
		x1=(s1-c1)*x1+x6;
		x6=c3*(x0+x3);
		x3=(-s3-c3)*x3+x6;
		x0=(s3-c3)*x0+x6;

		/* Stage 3 */
		x6=x4+x5;
		x4-=x5;
		x5=r2c6*(x7+x8);
		x7=(-r2s6-r2c6)*x7+x5;
		x8=(r2s6-r2c6)*x8+x5;
		x5=x0+x2;
		x0-=x2;
		x2=x3+x1;
		x3-=x1;

		/* Stage 4 and output */
		rows[i][0]=x6;
		rows[i][4]=x4;
		rows[i][2]=x8>>10;
		rows[i][6]=x7>>10;
		rows[i][7]=(x2-x5)>>10;
		rows[i][1]=(x2+x5)>>10;
		rows[i][3]=(x3*r2)>>17;
		rows[i][5]=(x0*r2)>>17;
	}

	/* transform columns */
	for (i = 0; i < 8; i++)
	{
		int x0,x1,x2,x3,x4,x5,x6,x7,x8;

		x0 = rows[0][i];
		x1 = rows[1][i];
		x2 = rows[2][i];
		x3 = rows[3][i];
		x4 = rows[4][i];
		x5 = rows[5][i];
		x6 = rows[6][i];
		x7 = rows[7][i];

		/* Stage 1 */
		x8=x7+x0;
		x0-=x7;
		x7=x1+x6;
		x1-=x6;
		x6=x2+x5;
		x2-=x5;
		x5=x3+x4;
		x3-=x4;

		/* Stage 2 */
		x4=x8+x5;
		x8-=x5;
		x5=x7+x6;
		x7-=x6;
		x6=c1*(x1+x2);
		x2=(-s1-c1)*x2+x6;
		x1=(s1-c1)*x1+x6;
		x6=c3*(x0+x3);
		x3=(-s3-c3)*x3+x6;
		x0=(s3-c3)*x0+x6;

		/* Stage 3 */
		x6=x4+x5;
		x4-=x5;
		x5=r2c6*(x7+x8);
		x7=(-r2s6-r2c6)*x7+x5;
		x8=(r2s6-r2c6)*x8+x5;
		x5=x0+x2;
		x0-=x2;
		x2=x3+x1;
		x3-=x1;

		/* Stage 4 and output */
		data[0][i]=((x6+16)>>3);
		data[4][i]=((x4+16)>>3);
		data[2][i]=((x8+16384)>>13);
		data[6][i]=((x7+16384)>>13);
		data[7][i]=((x2-x5+16384)>>13);
		data[1][i]=((x2+x5+16384)>>13);
		data[3][i]=(((x3>>8)*r2+8192)>>12);
		data[5][i]=(((x0>>8)*r2+8192)>>12);
	}
}


__inline static int sdiv(const int data, const int quant, const unsigned mag)
{
	return data >> mag;
	//return (data + quant) >> mag;
	//return (data + ((data<0)? -quant: quant))/(1<<mag);
}
// simple but fast DCT
void dct3(conv pixels[8][8], conv data[8][8])
{
	CACHE_ALIGN int rows[8][8];
	unsigned i;

	static const int
		C1 = 1004,// cos(1*Pi/16) = 0.98078528 * 1024
		C2 = 946, // cos(2*Pi/16) = 0.92387953
		C3 = 852, // cos(3*Pi/16) = 0.83146961
		C4 = 724, // cos(4*Pi/16) = 0.70710678
		C5 = 569, // cos(5*Pi/16) = 0.55557023
		C6 = 392, // cos(6*Pi/16) = 0.38268343
		C7 = 200; // cos(7*Pi/16) = 0.19509032

	uint64_t a = __rdtsc();

	/* transform rows */
	for (i = 0; i < 8; i++)
	{
		int s07,s16,s25,s34,s0734,s1625;
		int d07,d16,d25,d34,d0734,d1625;

		s07 = pixels[i][0] + pixels[i][7];
		d07 = pixels[i][0] - pixels[i][7];
		s16 = pixels[i][1] + pixels[i][6];
		d16 = pixels[i][1] - pixels[i][6];
		s25 = pixels[i][2] + pixels[i][5];
		d25 = pixels[i][2] - pixels[i][5];
		s34 = pixels[i][3] + pixels[i][4];
		d34 = pixels[i][3] - pixels[i][4];

		rows[i][1] = sdiv(C1*d07 + C3*d16 + C5*d25 + C7*d34, 512, 10);
		rows[i][3] = sdiv(C3*d07 - C7*d16 - C1*d25 - C5*d34, 512, 10);
		rows[i][5] = sdiv(C5*d07 - C1*d16 + C7*d25 + C3*d34, 512, 10);
		rows[i][7] = sdiv(C7*d07 - C5*d16 + C3*d25 - C1*d34, 512, 10);

		s0734 = s07 + s34;
		d0734 = s07 - s34;
		s1625 = s16 + s25;
		d1625 = s16 - s25;

		rows[i][0] = sdiv(C4*(s0734 + s1625), 512, 10);
		rows[i][4] = sdiv(C4*(s0734 - s1625), 512, 10);

		rows[i][2] = sdiv(C2*d0734 + C6*d1625, 512, 10);
		rows[i][6] = sdiv(C6*d0734 - C2*d1625, 512, 10);
	}

	/* transform columns */
	for (i = 0; i < 8; i++)
	{
		int s07,s16,s25,s34,s0734,s1625;
		int d07,d16,d25,d34,d0734,d1625;

		s07 = rows[0][i] + rows[7][i];
		d07 = rows[0][i] - rows[7][i];
		s16 = rows[1][i] + rows[6][i];
		d16 = rows[1][i] - rows[6][i];
		s25 = rows[2][i] + rows[5][i];
		d25 = rows[2][i] - rows[5][i];
		s34 = rows[3][i] + rows[4][i];
		d34 = rows[3][i] - rows[4][i];

		data[1][i] = sdiv(C1*d07 + C3*d16 + C5*d25 + C7*d34, 2048, 12);
		data[3][i] = sdiv(C3*d07 - C7*d16 - C1*d25 - C5*d34, 2048, 12);
		data[5][i] = sdiv(C5*d07 - C1*d16 + C7*d25 + C3*d34, 2048, 12);
		data[7][i] = sdiv(C7*d07 - C5*d16 + C3*d25 - C1*d34, 2048, 12);

		s0734 = s07 + s34;
		d0734 = s07 - s34;
		s1625 = s16 + s25;
		d1625 = s16 - s25;

		data[0][i] = sdiv(C4*(s0734 + s1625), 2048, 12);
		data[4][i] = sdiv(C4*(s0734 - s1625), 2048, 12);

		data[2][i] = sdiv(C2*d0734 + C6*d1625, 2048, 12);
		data[6][i] = sdiv(C6*d0734 - C2*d1625, 2048, 12);
	}

	dctclk += __rdtsc() - a;
}
 
// simple but fast DCT
void dct31(short pixels[8][8], short data[8][8])
{
	CACHE_ALIGN short rows[8][8];
	unsigned i;

	static const short // Ci = cos(i*PI/16)*(1<<14);
        C1 = 16070,
        C2 = 15137,
        C3 = 13623,
        C4 = 11586,
        C5 = 9103,
        C6 = 6270,
        C7 = 3197;

	/* transform rows */
	for (i = 0; i < 8; i++)
	{
		short s07,s16,s25,s34,s0734,s1625;
		short d07,d16,d25,d34,d0734,d1625;

		s07 = pixels[i][0] + pixels[i][7];
		d07 = pixels[i][0] - pixels[i][7];
		s16 = pixels[i][1] + pixels[i][6];
		d16 = pixels[i][1] - pixels[i][6];
		s25 = pixels[i][2] + pixels[i][5];
		d25 = pixels[i][2] - pixels[i][5];
		s34 = pixels[i][3] + pixels[i][4];
		d34 = pixels[i][3] - pixels[i][4];

		rows[i][1] = (C1*d07 + C3*d16 + C5*d25 + C7*d34) >> 14;
		rows[i][3] = (C3*d07 - C7*d16 - C1*d25 - C5*d34) >> 14;
		rows[i][5] = (C5*d07 - C1*d16 + C7*d25 + C3*d34) >> 14;
		rows[i][7] = (C7*d07 - C5*d16 + C3*d25 - C1*d34) >> 14;

		s0734 = s07 + s34;
		d0734 = s07 - s34;
		s1625 = s16 + s25;
		d1625 = s16 - s25;

		rows[i][0] = (C4*(s0734 + s1625)) >> 14;
		rows[i][4] = (C4*(s0734 - s1625)) >> 14;

		rows[i][2] = (C2*d0734 + C6*d1625) >> 14;
		rows[i][6] = (C6*d0734 - C2*d1625) >> 14;
	}

	/* transform columns */
	for (i = 0; i < 8; i++)
	{
		short s07,s16,s25,s34,s0734,s1625;
		short d07,d16,d25,d34,d0734,d1625;

		s07 = rows[0][i] + rows[7][i];
		d07 = rows[0][i] - rows[7][i];
		s16 = rows[1][i] + rows[6][i];
		d16 = rows[1][i] - rows[6][i];
		s25 = rows[2][i] + rows[5][i];
		d25 = rows[2][i] - rows[5][i];
		s34 = rows[3][i] + rows[4][i];
		d34 = rows[3][i] - rows[4][i];

		data[1][i] = (C1*d07 + C3*d16 + C5*d25 + C7*d34) >> 16;
		data[3][i] = (C3*d07 - C7*d16 - C1*d25 - C5*d34) >> 16;
		data[5][i] = (C5*d07 - C1*d16 + C7*d25 + C3*d34) >> 16;
		data[7][i] = (C7*d07 - C5*d16 + C3*d25 - C1*d34) >> 16;

		s0734 = s07 + s34;
		d0734 = s07 - s34;
		s1625 = s16 + s25;
		d1625 = s16 - s25;

		data[0][i] = (C4*(s0734 + s1625)) >> 16;
		data[4][i] = (C4*(s0734 - s1625)) >> 16;

		data[2][i] = (C2*d0734 + C6*d1625) >> 16;
		data[6][i] = (C6*d0734 - C2*d1625) >> 16;
	}
}


// integer DCT 
void dct2_i(conv pixel[8][8], conv data[8][8])
{
	unsigned x, y, n;
	conv tmp[8][8];

	//uint64_t a = __rdtsc();

	// process rows
	for (y = 0; y < 8; y++)
	for (x = 0; x < 8; x++)
	{
		int q = 0;

		for (n = 0; n < 8; n++)
			q += pixel[y][n] * dct_tbl_i[x][n];

		tmp[y][x] = (q + ((q<0)? -IDCTI_AMP: IDCTI_AMP))/(IDCTI_AMP*2);
	}
		
	// process columns
	for (x = 0; x < 8; x++)
	for (y = 0; y < 8; y++)
	{
		int q = 0;

		for (n = 0; n < 8; n++)
			q += tmp[n][x] * dct_tbl_i[y][n];

		data[y][x] = (q + ((q<0)? -IDCTI_AMP: IDCTI_AMP))/(IDCTI_AMP*2);
	}

	//idctclk += __rdtsc() - a;
} 

#ifdef _MSC_VER

void dct2_s(conv pixel[8][8], conv data[8][8])
{
	CACHE_ALIGN conv tmp[8][8];
	unsigned x, y;

	//uint64_t t = __rdtsc();

	// process rows
	for (y = 0; y < 8; y++) {

		__m128i a = _mm_loadu_si128 ((__m128i*)pixel[y]);

		for (x = 0; x < 8; x++) {
			__m128i b, c;

			b = _mm_load_si128 ((__m128i*)dct_tbl_s[x]);
			b = _mm_madd_epi16 (a, b);
			c = _mm_shuffle_epi32 (b, 0xB1);
			c = _mm_add_epi32 (b, c);
			b = _mm_shuffle_epi32 (c, 0x27);
			c = _mm_add_epi32 (b, c);
			tmp[x][y] = _mm_cvtsi128_si32(c)/(IDCTI_AMP*2);
		}
	}

	// process columns
	for (y = 0; y < 8; y++) {

		__m128i a = _mm_loadu_si128 ((__m128i*)tmp[y]);

		for (x = 0; x < 8; x++) {
			__m128i b, c;

			b = _mm_load_si128 ((__m128i*)dct_tbl_s[x]);
			b = _mm_madd_epi16 (a, b);
			c = _mm_shuffle_epi32 (b, 0xB1);
			c = _mm_add_epi32 (b, c);
			b = _mm_shuffle_epi32 (c, 0x27);
			c = _mm_add_epi32 (b, c);

			data[x][y] = _mm_cvtsi128_si32(c)/(IDCTI_AMP*2);
		}
	}

	//idctclk += __rdtsc() - t;
}

#endif//_MSC_VER


// fast DCT, Vetterli & Ligtenberg
void dct4(conv pixels[8][8], conv data[8][8])
{
	short rows[8][8];
	unsigned i;

	static const short
		C1 = 16070,// cos(1*Pi/16) = 0.9808 * 16384
		S6 = 15137,// sin(6*Pi/16) = 0.9239
		C3 = 13623,// cos(3*Pi/16) = 0.8315
		C4 = 11586,// cos(4*Pi/16) = 0.7071
		S3 = 9102, // sin(3*Pi/16) = 0.5556
		C6 = 6270, // cos(6*Pi/16) = 0.3827
		S1 = 3196; // sin(1*Pi/16) = 0.1951

	/* transform rows */
	for (i = 0; i < 8; i++)
	{
		short s07,s12,s34,s56;
		short d07,d12,d34,d56;
		short x, y;

		s07 = pixels[i][0] + pixels[i][7];
		d07 = pixels[i][0] - pixels[i][7];
		s12 = pixels[i][1] + pixels[i][2];
		d12 = pixels[i][1] - pixels[i][2];
		s34 = pixels[i][3] + pixels[i][4];
		d34 = pixels[i][3] - pixels[i][4];
		s56 = pixels[i][5] + pixels[i][6];
		d56 = pixels[i][5] - pixels[i][6];

		x = s07 + s34;
		y = s12 + s56;
		rows[i][0] = C4*(x + y) >> 14;
		rows[i][4] = C4*(x - y) >> 14;

		x = d12 - d56;
		y = s07 - s34;
		rows[i][2] = (C6*x + S6*y) >> 14;
		rows[i][6] = (C6*y - S6*x) >> 14;

		x = d07 - (C4*(s12 - s56) >> 14);
		y = d34 - (C4*(d12 + d56) >> 14);
		rows[i][3] = (C3*x - S3*y) >> 14;
		rows[i][5] = (S3*x + C3*y) >> 14;

		x = (d07 << 1) - x;
		y = (d34 << 1) - y;
		rows[i][1] = (C1*x + S1*y) >> 14;
		rows[i][7] = (S1*x - C1*y) >> 14;
	}

	/* transform columns */
	for (i = 0; i < 8; i++)
	{
		short s07,s12,s34,s56;
		short d07,d12,d34,d56;
		short x, y;

		s07 = rows[0][i] + rows[7][i];
		d07 = rows[0][i] - rows[7][i];
		s12 = rows[1][i] + rows[2][i];
		d12 = rows[1][i] - rows[2][i];
		s34 = rows[3][i] + rows[4][i];
		d34 = rows[3][i] - rows[4][i];
		s56 = rows[5][i] + rows[6][i];
		d56 = rows[5][i] - rows[6][i];

		x = s07 + s34;
		y = s12 + s56;
		data[0][i] = C4*(x + y) >> 16;
		data[4][i] = C4*(x - y) >> 16;

		x = d12 - d56;
		y = s07 - s34;
		data[2][i] = (C6*x + S6*y) >> 16;
		data[6][i] = (C6*y - S6*x) >> 16;

		x = d07 - (C4*(s12 - s56) >> 14);
		y = d34 - (C4*(d12 + d56) >> 14);
		data[3][i] = (C3*x - S3*y) >> 16;
		data[5][i] = (S3*x + C3*y) >> 16;

		x = (d07 << 1) - x;
		y = (d34 << 1) - y;
		data[1][i] = (C1*x + S1*y) >> 16;
		data[7][i] = (S1*x - C1*y) >> 16;
	}
}

void dct5(conv pixels[8][8], conv data[8][8])
{
	short rows[8][8];
	unsigned i;

	static const int
				c1 = 1004,  /* cos(pi/16) << 10 */
				s1 = 200,   /* sin(pi/16) */
				c3 = 851,   /* cos(3pi/16) << 10 */
				s3 = 569,   /* sin(3pi/16) << 10 */
				r2c6 = 554, /* sqrt(2)*cos(6pi/16) << 10 */
				r2s6 = 1337,/* sqrt(2)*sin(6pi/16) << 10 */
				r2 = 181;   /* sqrt(2) << 7*/

	uint64_t a = __rdtsc();

	/* transform rows */
	for (i = 0; i < 8; i++)
	{
		int x0,x1,x2,x3,x4,x5,x6,x7,x8;

		x0 = pixels[i][0];
		x1 = pixels[i][1];
		x2 = pixels[i][2];
		x3 = pixels[i][3];
		x4 = pixels[i][4];
		x5 = pixels[i][5];
		x6 = pixels[i][6];
		x7 = pixels[i][7];

		/* Stage 1 */
		x8=x7+x0;		// s07 = x0 + x7
		x0-=x7;			// d07 = x0 - x7
		x7=x1+x6;		// s16 = x1 + x6
		x1-=x6;			// d16 = x1 - x6
		x6=x2+x5;		// s25 = x2 + x5
		x2-=x5;			// d25 = x2 - x5
		x5=x3+x4;		// s34 = x3 + x4
		x3-=x4;			// d34 = x3 - x4

		/* Stage 2 */
		x4=x8+x5;		// s0734 = s07 + s34
		x8-=x5;			// d0734 = s07 - s34
		x5=x7+x6;		// s1625 = s16 + s25
		x7-=x6;			// d1625 = s16 - s25
		x6=c1*(x1+x2);		// C1*(d16 + d25)
		x2=(-s1-c1)*x2+x6;	// (-S1 - C1)*d25 + C1*(d16 + d25) = C1*d16 - S1*d25
		x1=(s1-c1)*x1+x6;	//  (S1 - C1)*d16 + C1*(d16 + d25) = C1*d25 + S1*d16
		x6=c3*(x0+x3);		// C3*(d07 + d34)
		x3=(-s3-c3)*x3+x6;	// (-S3 - C3)*d34 + C3*(d07 + d34) = C3*d07 - S3*d34
		x0=(s3-c3)*x0+x6;	//  (S3 - C3)*d07 + C3*(d07 + d34) = C3*d34 + S3*d07

		/* Stage 3 */
		x6=x4+x5;				// s0734 + s1625
		x4-=x5;					// s0734 - s1625
		x5=r2c6*(x7+x8);		// 1024*sqrt(2)*cos(6pi/16)*(d1625 + d0734)
		x7=(-r2s6-r2c6)*x7+x5;	// -1024*sqrt(2)*(sin(6pi/16)+cos(6pi/16))*d1625 + 1024*sqrt(2)*cos(6pi/16)*(d1625 + d0734)
		x8=(r2s6-r2c6)*x8+x5;	// 1024*sqrt(2)*(sin(6pi/16)-cos(6pi/16))*d0734 + 1024*sqrt(2)*cos(6pi/16)*(d1625 + d0734)
		x5=x0+x2;	// (S3 - C3)*d34 + C3*(d07 + d34) + (-S1 - C1)*d25 + C1*(d16 + d25) = C3*d34 + S3*d07 + C1*d16 - S1*d25
		x0-=x2;		// (S3 - C3)*d34 + C3*(d07 + d34) - (-S1 - C1)*d25 - C1*(d16 + d25) = C3*d34 + S3*d07 - C1*d16 + S1*d25
		x2=x3+x1;	// (-S3 - C3)*d34 + C3*(d07 + d34) + (S1 - C1)*d16 + C1*(d16 + d25) = C3*d07 - S3*d34 + C1*d25 + S1*d16
		x3-=x1;		// (-S3 - C3)*d34 + C3*(d07 + d34) - (S1 - C1)*d16 - C1*(d16 + d25) = C3*d07 - S3*d34 - C1*d25 - S1*d16

		/* Stage 4 and output */
		rows[i][0]=x6;
		rows[i][4]=x4;
		rows[i][2]=x8>>10;
		rows[i][6]=x7>>10;
		rows[i][7]=(x2-x5)>>10; // C3*d07 - S3*d34 + C1*d25 + S1*d16 - C3*d34 - S3*d07 - C1*d16 + S1*d25
		rows[i][1]=(x2+x5)>>10;
		rows[i][3]=(x3*r2)>>17;
		rows[i][5]=(x0*r2)>>17;
	}

	/* transform columns */
	for (i = 0; i < 8; i++)
	{
		int x0,x1,x2,x3,x4,x5,x6,x7,x8;

		x0 = rows[0][i];
		x1 = rows[1][i];
		x2 = rows[2][i];
		x3 = rows[3][i];
		x4 = rows[4][i];
		x5 = rows[5][i];
		x6 = rows[6][i];
		x7 = rows[7][i];

		/* Stage 1 */
		x8=x7+x0;
		x0-=x7;
		x7=x1+x6;
		x1-=x6;
		x6=x2+x5;
		x2-=x5;
		x5=x3+x4;
		x3-=x4;

		/* Stage 2 */
		x4=x8+x5;
		x8-=x5;
		x5=x7+x6;
		x7-=x6;
		x6=c1*(x1+x2);
		x2=(-s1-c1)*x2+x6;
		x1=(s1-c1)*x1+x6;
		x6=c3*(x0+x3);
		x3=(-s3-c3)*x3+x6;
		x0=(s3-c3)*x0+x6;

		/* Stage 3 */
		x6=x4+x5;
		x4-=x5;
		x5=r2c6*(x7+x8);
		x7=(-r2s6-r2c6)*x7+x5;
		x8=(r2s6-r2c6)*x8+x5;
		x5=x0+x2;
		x0-=x2;
		x2=x3+x1;
		x3-=x1;

		/* Stage 4 and output */
		data[0][i]=((x6+16)>>3);
		data[4][i]=((x4+16)>>3);
		data[2][i]=((x8+16384)>>13);
		data[6][i]=((x7+16384)>>13);
		data[7][i]=((x2-x5+16384)>>13);
		data[1][i]=((x2+x5+16384)>>13);
		data[3][i]=(((x3>>8)*r2+8192)>>12);
		data[5][i]=(((x0>>8)*r2+8192)>>12);
	}

	dctclk += __rdtsc() - a;
}

/* inverse real DCT */
void idct(conv data[8][8], conv pixel[8][8])
{
	unsigned x, y, n;
	float tmp[8][8];

	for (y = 0; y < 8; y++)
	{
		for (x = 0; x < 8; x++)
		{
			float q = 0.0f;

			for (n = 0; n < 8; n++)
				q += data[y][n] * dct_tbl[n][x];

			tmp[y][x] = (q+0.5)/2;
		}
	}
		
	for (x = 0; x < 8; x++)
	{
		for (y = 0; y < 8; y++)
		{
			float q = 0.0f;

			for (n = 0; n < 8; n++)
				q += tmp[n][x] * dct_tbl[n][y];

			pixel[y][x] = (q+0.5)/2;
		}
	}
}


/* inverse integer DCT 
void idct2_i(conv data[8][8], conv pixel[8][8])
{
	unsigned x, y, n;
	conv tmp[8][8];

	uint64_t a = __rdtsc();

	// process rows
	for (y = 0; y < 8; y++)
	for (x = 0; x < 8; x++)
	{
		int q = 0;

		for (n = 0; n < 8; n++)
			q += data[y][n] * dct_tbl_i[n][x];

		tmp[y][x] = q/(IDCTI_AMP*2);
	}
		
	// process columns
	for (x = 0; x < 8; x++)
	for (y = 0; y < 8; y++)
	{
		int q = 0;

		for (n = 0; n < 8; n++)
			q += tmp[n][x] * dct_tbl_i[n][y];

		pixel[y][x] = q/(IDCTI_AMP*2);
	}

	idctclk += __rdtsc() - a;
} 
*/

#ifdef _MSC_VER

/*
void test_idct2_s()
{
	int data[4] = {1,2,3,4};
	int res;

	// process rows
	__m128i b = _mm_loadu_si128 ((__m128i*)data);

	__m128i c = _mm_shuffle_epi32 (b, 0xB1);
	c = _mm_add_epi32 (b, c);

	b = _mm_shuffle_epi32 (c, 0x27);
	c = _mm_add_epi32 (b, c);

	res = _mm_cvtsi128_si32 (c);
}
*/

void idct2_s(conv data[8][8], conv pixel[8][8])
{
	CACHE_ALIGN conv tmp[8][8];
	unsigned x, y;

	uint64_t t = __rdtsc();

	// process rows
	for (y = 0; y < 8; y++) {

		__m128i r0 = _mm_loadu_si128 ((__m128i*)data[y]);

		for (x = 0; x < 8; x++)
		{
			__m128i r1, r2, r3, r4;

			r1 = _mm_load_si128 ((__m128i*)idct_tbl_s[x]);
			r2 = _mm_madd_epi16 (r0, r1);
			r3 = _mm_shuffle_epi32 (r2, 0xB1);
			r4 = _mm_add_epi32 (r2, r3);
			r1 = _mm_shuffle_epi32 (r4, 0x27);
			r2 = _mm_add_epi32 (r1, r4);
			tmp[x][y] = _mm_cvtsi128_si32(r2)/(IDCTI_AMP*2);
		}
	}

	// process columns
	for (y = 0; y < 8; y++) {

		__m128i r0 = _mm_loadu_si128 ((__m128i*)tmp[y]);

		for (x = 0; x < 8; x += 2)
		{
			__m128i r1, r2, r3, r4, r5, r6;

			r1 = _mm_load_si128 ((__m128i*)idct_tbl_s[x]);
			r2 = _mm_madd_epi16 (r0, r1);
			r4 = _mm_load_si128 ((__m128i*)idct_tbl_s[x+1]);
			r1 = _mm_shuffle_epi32 (r2, 0xB1);
			r5 = _mm_madd_epi16 (r0, r4);
			r3 = _mm_add_epi32 (r1, r2);
			r4 = _mm_shuffle_epi32 (r5, 0xB1);
			r2 = _mm_shuffle_epi32 (r3, 0x27);
			r6 = _mm_add_epi32 (r4, r5);
			r1 = _mm_add_epi32 (r2, r3);
			r5 = _mm_shuffle_epi32 (r6, 0x27);
			pixel[x][y] = _mm_cvtsi128_si32(r1)/(IDCTI_AMP*2);
			r4 = _mm_add_epi32 (r5, r6);
			pixel[x+1][y] = _mm_cvtsi128_si32(r4)/(IDCTI_AMP*2);
		}
	}
	idctclk += __rdtsc() - t;
}

#endif//_MSC_VER

// simple but fast IDCT
void idct3(short data[8][8], short pixel[8][8])
{
	CACHE_ALIGN short rows[8][8];
	unsigned i;

	static const short // Ci = cos(i*PI/16)*(1<<14);
        C1 = 16070,
        C2 = 15137,
        C3 = 13623,
        C4 = 11586,
        C5 = 9103,
        C6 = 6270,
        C7 = 3196;

	/* transform rows */
	for (i = 0; i < 8; i++)
	{
		const short x0 = data[i][0];
		const short x4 = data[i][4];
		const short t0 = C4*(x0 + x4) >> 15;
		const short t4 = C4*(x0 - x4) >> 15;

		const short x2 = data[i][2];
		const short x6 = data[i][6];
		const short t2 = (C2*x2 + C6*x6) >> 15; 
		const short t6 = (C6*x2 - C2*x6) >> 15; 

		const short e0 = t0 + t2; 
		const short e3 = t0 - t2; 
		const short e1 = t4 + t6; 
		const short e2 = t4 - t6; 

		const short x1 = data[i][1];
		const short x3 = data[i][3];
		const short x5 = data[i][5];
		const short x7 = data[i][7];
		const short o0 = (C1*x1 + C5*x5 + C3*x3 + C7*x7) >> 15;
		const short o1 = (C3*x1 - C1*x5 - C7*x3 - C5*x7) >> 15;
		const short o2 = (C5*x1 + C7*x5 - C1*x3 + C3*x7) >> 15;
		const short o3 = (C7*x1 + C3*x5 - C5*x3 - C1*x7) >> 15;

		rows[i][0] = e0 + o0;
		rows[i][7] = e0 - o0;
		rows[i][1] = e1 + o1;
		rows[i][6] = e1 - o1;
		rows[i][2] = e2 + o2;
		rows[i][5] = e2 - o2;
		rows[i][3] = e3 + o3;
		rows[i][4] = e3 - o3;
	}

	/* transform columns */
	for (i = 0; i < 8; i++)
	{
		const short x0 = rows[0][i];
		const short x4 = rows[4][i];
		const short t0 = C4*(x0 + x4) >> 15;
		const short t4 = C4*(x0 - x4) >> 15;

		const short x2 = rows[2][i];
		const short x6 = rows[6][i];
		const short t2 = (C2*x2 + C6*x6) >> 15; 
		const short t6 = (C6*x2 - C2*x6) >> 15; 

		const short e0 = t0 + t2; 
		const short e3 = t0 - t2; 
		const short e1 = t4 + t6; 
		const short e2 = t4 - t6; 

		const short x1 = rows[1][i];
		const short x3 = rows[3][i];
		const short x5 = rows[5][i];
		const short x7 = rows[7][i];
		const short o0 = (C1*x1 + C5*x5 + C3*x3 + C7*x7) >> 15;
		const short o1 = (C3*x1 - C1*x5 - C7*x3 - C5*x7) >> 15;
		const short o2 = (C5*x1 + C7*x5 - C1*x3 + C3*x7) >> 15;
		const short o3 = (C7*x1 + C3*x5 - C5*x3 - C1*x7) >> 15;

		pixel[0][i] = e0 + o0;
		pixel[7][i] = e0 - o0;
		pixel[1][i] = e1 + o1;
		pixel[6][i] = e1 - o1;
		pixel[2][i] = e2 + o2;
		pixel[5][i] = e2 - o2;
		pixel[3][i] = e3 + o3;
		pixel[4][i] = e3 - o3;
	}
}

void idct_1d(const short data[8], short pixel[8])
{
	unsigned x, n;

	for (x = 0; x < 8; x++)
	{
		float q = 0.0f;

		for (n = 0; n < 8; n++)
			q += data[n] * dct_tbl[n][x];

		pixel[x] = (q+0.5)/2;
	}
}

// simple but fast DCT
/*
	1D has 4 stages, 22 multiplication 28 additions and 8 shifts.
*/
void dct_1d_31(short pixels[8], short data[8])
{
	static const short // Ci = cos(i*PI/16)*(1<<14);
        C1 = 16070,
        C2 = 15137,
        C3 = 13623,
        C4 = 11586,
        C5 = 9103,
        C6 = 6270,
        C7 = 3196;

	short s07,s16,s25,s34,s0734,s1625;
	short d07,d16,d25,d34,d0734,d1625;

	s07 = pixels[0] + pixels[7];
	d07 = pixels[0] - pixels[7];
	s16 = pixels[1] + pixels[6];
	d16 = pixels[1] - pixels[6];
	s25 = pixels[2] + pixels[5];
	d25 = pixels[2] - pixels[5];
	s34 = pixels[3] + pixels[4];
	d34 = pixels[3] - pixels[4];

	data[1] = (C1*d07 + C3*d16 + C5*d25 + C7*d34 + (1<<14)) >> 15;
	data[3] = (C3*d07 - C7*d16 - C1*d25 - C5*d34 + (1<<14)) >> 15;
	data[5] = (C5*d07 - C1*d16 + C7*d25 + C3*d34 + (1<<14)) >> 15;
	data[7] = (C7*d07 - C5*d16 + C3*d25 - C1*d34 + (1<<14)) >> 15;

	s0734 = s07 + s34;
	d0734 = s07 - s34;
	s1625 = s16 + s25;
	d1625 = s16 - s25;

	data[0] = (C4*(s0734 + s1625) + (1<<14)) >> 15;
	data[4] = (C4*(s0734 - s1625) + (1<<14)) >> 15;

	data[2] = (C2*d0734 + C6*d1625 + (1<<14)) >> 15;
	data[6] = (C6*d0734 - C2*d1625 + (1<<14)) >> 15;
}

// fast 1D DCT, Vetterli & Ligtenberg. 16 multiplications, 26 additions and 12 shifts
void dct_1d_4(short pixels[8], short data[8])
{
	static const short
		C1 = 16070,// cos(1*Pi/16) = 0.9808 * 16384
		S6 = 15137,// sin(6*Pi/16) = 0.9239
		C3 = 13623,// cos(3*Pi/16) = 0.8315
		C4 = 11586,// cos(4*Pi/16) = 0.7071
		S3 = 9102, // sin(3*Pi/16) = 0.5556
		C6 = 6270, // cos(6*Pi/16) = 0.3827
		S1 = 3196; // sin(1*Pi/16) = 0.1951

	short t0,t1,t2,t3,t4,t5,t6,t7;
	short x, y;

	t0 = pixels[0] + pixels[7];
	t7 = pixels[0] - pixels[7];
	t1 = pixels[1] + pixels[2];
	t2 = pixels[1] - pixels[2];
	t3 = pixels[3] + pixels[4];
	t4 = pixels[3] - pixels[4];
	t5 = pixels[5] + pixels[6];
	t6 = pixels[5] - pixels[6];

	x = t0 + t3;
	y = t1 + t5;
	data[0] = C4*(x + y) >> 15;
	data[4] = C4*(x - y) >> 15;

	x = t2 - t6;
	y = t0 - t3;
	data[2] = (C6*x + S6*y) >> 15;
	data[6] = (C6*y - S6*x) >> 15;

	x = t7 - (C4*(t1 - t5) >> 14);
	y = t4 - (C4*(t2 + t6) >> 14);
	data[3] = (C3*x - S3*y) >> 15;
	data[5] = (S3*x + C3*y) >> 15;

	x = (t7 << 1) - x;
	y = (t4 << 1) - y;
	data[1] = (C1*x + S1*y) >> 15;
	data[7] = (S1*x - C1*y) >> 15;
}

void idct_1d_3(short data[8], short pixels[8])
{
	static const short // Ci = cos(i*PI/16)*(1<<14);
        C1 = 16070,
        C2 = 15137,
        C3 = 13623,
        C4 = 11586,
        C5 = 9103,
        C6 = 6270,
        C7 = 3196;

	const short x0 = data[0];
	const short x4 = data[4];
	const short t0 = C4*(x0 + x4) >> 15;
	const short t4 = C4*(x0 - x4) >> 15;

	const short x2 = data[2];
	const short x6 = data[6];
	const short t2 = (C2*x2 + C6*x6) >> 15; 
	const short t6 = (C6*x2 - C2*x6) >> 15; 

	const short e0 = t0 + t2; 
	const short e3 = t0 - t2; 
	const short e1 = t4 + t6; 
	const short e2 = t4 - t6; 

	const short x1 = data[1];
	const short x3 = data[3];
	const short x5 = data[5];
	const short x7 = data[7];
	const short o0 = (C1*x1 + C5*x5 + C3*x3 + C7*x7) >> 15;
	const short o1 = (C3*x1 - C1*x5 - C7*x3 - C5*x7) >> 15;
	const short o2 = (C5*x1 + C7*x5 - C1*x3 + C3*x7) >> 15;
	const short o3 = (C7*x1 + C3*x5 - C5*x3 - C1*x7) >> 15;

	pixels[0] = e0 + o0;
	pixels[7] = e0 - o0;
	pixels[1] = e1 + o1;
	pixels[6] = e1 - o1;
	pixels[2] = e2 + o2;
	pixels[5] = e2 - o2;
	pixels[3] = e3 + o3;
	pixels[4] = e3 - o3;
}

// binDCT
void dct_1d_5(const short pixel[8], short data[8])
{
	short t0,t7,t1,t6,t2,t4,t3,t5;
	short t;

	t0 = pixel[0] + pixel[7];
	t7 = pixel[0] - pixel[7];
	t1 = pixel[1] + pixel[6];
	t6 = pixel[1] - pixel[6];
	t2 = pixel[2] + pixel[5];
	t5 = pixel[2] - pixel[5];
	t3 = pixel[3] + pixel[4];
	t4 = pixel[3] - pixel[4];

	t6 = t6 + t5*3/8;
	t5 = t6*5/8 - t5;

	t = t7;
	t7 = t7 + t6;
	t6 = t - t6;

	t = t5;
	t5 = t4 - t5;
	t4 = t4 + t - t7/8;

	data[1] = t7;
	data[7] = t4;

	t5 = t5 + t6*7/8;
	t6 = t6 - t5/2;

	data[5] = t5;
	data[3] = t6;

	t = t3;
	t3 = t0 - t3;
	t0 = t0 + t;

	t = t2;
	t2 = t1 - t2;
	t1 = t1 + t;

	t0 = t0 + t1;
	t1 = t0/2 - t1;

	data[0] = t0;
	data[4] = t1;

	t2 = t2 - t3*3/8;
	t3 = t3 + t2*3/8;

	data[6] = t2;
	data[2] = t3;
}

// binIDCT
void idct_1d_5(const short data[8], short pixel[8])
{
	short t0,t4,t2,t6,t5,t3,t1,t7;
	short t;

	t0 = data[0];
	t4 = t0/2 - data[4];
	t0 = t0 - t4;
	
	t6 = data[6];
	t2 = data[2] - t6*3/8;
	t6 = t6 + t2*3/8;

	t = t6;
	t6 = t4 - t6;
	t4 = t4 + t;

	t = t2;
	t2 = t0 - t2;
	t0 = t0 + t;

	t5 = data[5];
	t3 = data[3] + t5/2;
	t5 = t5 - t3*7/8;

	t1 = data[1];
	t7 = data[7] + t1/8;

	t = t5;
	t5 = t7 - t5;
	t7 = t7 + t;

	t = t1;
	t1 = t1 + t3;
	t3 = t - t3;

	t5 = t3*5/8 - t5;
	t3 = t3 - t5*3/8;

	pixel[0] = (t0 + t1);
	pixel[7] = (t0 - t1);
	pixel[1] = (t4 + t3);
	pixel[6] = (t4 - t3);
	pixel[2] = (t6 + t5);
	pixel[5] = (t6 - t5);
	pixel[3] = (t2 + t7);
	pixel[4] = (t2 - t7);
}

#define butterfly(a, b) t = a, a = a + b, b = t - b

#define rotation(k, c, a, b) t = a, a = (k*C##c)*a + (k*S##c)*b, b = (k*C##c)*b - (k*S##c)*t

#define rotation1(k, c, a, b) t = a, a = (k*C##c)*b - (k*S##c)*a, b = (k*C##c)*t + (k*S##c)*b

#define rotation2(k, c, a, b) t = a, a = (k*C##c)*b + (k*S##c)*a, b = (k*S##c)*b - (k*C##c)*t

void dct_1d_6(const short pixel[8], short data[8])
{
	static const float
		SR = 1.4142135624,
        C1 = 0.9807852804,
        C2 = 0.9238795325,
        C3 = 0.8314696123,
		S1 = 0.1950903220,
        S2 = 0.3826834323,
		S3 = 0.5555702330;

	float t0,t7,t1,t6,t2,t4,t3,t5;
	float t;

	t0 = pixel[0] + pixel[7];
	t7 = pixel[0] - pixel[7];
	t1 = pixel[1] + pixel[6];
	t6 = pixel[1] - pixel[6];
	t2 = pixel[2] + pixel[5];
	t5 = pixel[2] - pixel[5];
	t3 = pixel[3] + pixel[4];
	t4 = pixel[3] - pixel[4];

	butterfly(t0, t3);
	butterfly(t1, t2);
	butterfly(t0, t1);
	data[0] = t0*SR/4;
	data[4] = t1*SR/4;

	rotation2(1, 2, t2, t3);
	data[2] = t2/2;
	data[6] = t3/2;

	rotation(1, 3, t4, t7);
	rotation(1, 1, t5, t6);
	butterfly(t4, t6);
	butterfly(t7, t5);
	data[3] = t5/2;
	data[5] = t6/2;

	butterfly(t7, t4);
	data[7] = t4*SR/4;
	data[1] = t7*SR/4;
}

void dct_1d_61(const short pixel[8], short data[8])
{
	static const float
        C1 = 0.9807852804,
        C2 = 0.9238795325,
        C3 = 0.8314696123,
		C4 = 0.7071067812, // cos(4*P/16) = sqrt(2)
		S1 = 0.1950903220,
        S2 = 0.3826834323,
		S3 = 0.5555702330;

	float t0,t7,t1,t6,t2,t4,t3,t5;
	float t;

	t0 = pixel[0] + pixel[7];
	t7 = pixel[0] - pixel[7];
	t1 = pixel[1] + pixel[6];
	t6 = pixel[1] - pixel[6];
	t2 = pixel[2] + pixel[5];
	t5 = pixel[2] - pixel[5];
	t3 = pixel[3] + pixel[4];
	t4 = pixel[3] - pixel[4];

	butterfly(t0, t3);
	butterfly(t1, t2);
	butterfly(t0, t1);
	data[0] = t0*C4/2;
	data[4] = t1*C4/2;

//	t = t2;
//	t2 = S2*t2 + C2*t3;
//	t3 = S2*t3 - C2*t;
	t = C2*(t2 + t3);
	t2 = (S2 - C2)*t2 + t;
	t3 = (S2 + C2)*t3 - t;
	data[2] = t2/2;
	data[6] = t3/2;

//	t = t4;
//	t4 = C3*t4 + S3*t7,
//	t7 = C3*t7 - S3*t;
	t = C3*(t4 - t7);
	t4 = (S3 + C3)*t7 + t,
	t7 = (C3 - S3)*t4 - t;

//	t = t5;
//	t5 = C1*t5 + S1*t6,
//	t6 = C1*t6 - S1*t;
	t = C1*(t5 - t6);
	t5 = (S1 + C1)*t6 + t,
	t6 = (C1 - S1)*t5 - t;

	butterfly(t4, t6);
	butterfly(t7, t5);
	data[3] = t5/2;
	data[5] = t6/2;

	butterfly(t7, t4);
	data[7] = t4*C4/2;
	data[1] = t7*C4/2;
}

void dct_1d_62(const short pixel[8], short data[8])
{
	static const float
        C1 = 0.9807852804,
        C2 = 0.9238795325,
        C3 = 0.8314696123,
		C4 = 0.7071067812, // cos(4*P/16) = sqrt(2)
		//S1 = 0.1950903220,
        //S2 = 0.3826834323,
		//S3 = 0.5555702330,
		K1 = 1.1758756024, // C1 + S1
		K2 = 0.7856949584, // C1 - S1
		K3 =-0.5411961002, // S2 - C2
		K4 = 1.3065629648, // S2 + C2
		K5 = 1.3870398453, // C3 + S3
		K6 = 0.2758993793; // C3 - S3

	float t0,t7,t1,t6,t2,t5,t3,t4;
	float t;

	t0 = pixel[0] + pixel[7];
	t7 = pixel[0] - pixel[7];
	t1 = pixel[1] + pixel[6];
	t6 = pixel[1] - pixel[6];
	t2 = pixel[2] + pixel[5];
	t5 = pixel[2] - pixel[5];
	t3 = pixel[3] + pixel[4];
	t4 = pixel[3] - pixel[4];

	butterfly(t0, t3);
	butterfly(t1, t2);
	butterfly(t0, t1);
	data[0] = t0*C4/2;
	data[4] = t1*C4/2;

	t = C2*(t2 + t3);
	t2 = K3*t2 + t;
	t3 = K4*t3 - t;
	data[2] = t2/2;
	data[6] = t3/2;

	t = C3*(t4 - t7);
	t4 = K5*t7 + t,
	t7 = K6*t4 - t;

	t = C1*(t5 - t6);
	t5 = K1*t6 + t,
	t6 = K2*t5 - t;

	butterfly(t4, t6);
	butterfly(t7, t5);
	data[3] = t5/2;
	data[5] = t6/2;

	butterfly(t7, t4);
	data[7] = t4*C4/2;
	data[1] = t7*C4/2;
}

// 13 multiplications, 29 additions, 12 shifts
void dct_1d_63(const short pixel[8], short data[8])
{
	static const short
        C1 = 16070,
        C2 = 15137,
        C3 = 13623,
		C4 = 11586, // cos(4*P/16) = sqrt(2)
		K1 = 19266, // C1 + S1
		K2 = 12873, // C1 - S1
		K3 = -8867, // S2 - C2
		K4 = 21407, // S2 + C2
		K5 = 22725, // C3 + S3
		K6 =  4520; // C3 - S3

	short t0,t7,t1,t6,t2,t5,t3,t4;
	short t;
	int   tt;

	t0 = pixel[0] + pixel[7];
	t7 = pixel[0] - pixel[7];
	t1 = pixel[1] + pixel[6];
	t6 = pixel[1] - pixel[6];
	t2 = pixel[2] + pixel[5];
	t5 = pixel[2] - pixel[5];
	t3 = pixel[3] + pixel[4];
	t4 = pixel[3] - pixel[4];

	butterfly(t0, t3);
	butterfly(t1, t2);
	butterfly(t0, t1);
	data[0] = t0*C4 >> 15;
	data[4] = t1*C4 >> 15;

	tt = C2*(t2 + t3);
	t2 = (K3*t2 + tt) >> 15;
	t3 = (K4*t3 - tt) >> 15;
	data[2] = t2;
	data[6] = t3;

	tt = C3*(t4 - t7);
	t4 = (K5*t7 + tt) >> 14;
	t7 = (K6*t4 - tt) >> 14;

	tt = C1*(t5 - t6);
	t5 = (K1*t6 + tt) >> 14;
	t6 = (K2*t5 - tt) >> 14;

	butterfly(t4, t6);
	butterfly(t7, t5);
	data[3] = t5 >> 1;
	data[5] = t6 >> 1;

	butterfly(t7, t4);
	data[7] = t4*C4 >> 15;
	data[1] = t7*C4 >> 15;
}
