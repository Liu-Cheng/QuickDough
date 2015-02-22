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

typedef struct rgb_s
{
	float R, G, B;
}
rgb_t;

typedef struct ybr_s
{
	float Y, Cb, Cr;
}
ybr_t;

static ybr_t rgb2ybr0(rgb_t *rgb)
{
	ybr_t ybr;
	color r = rgb->R;
	color g = rgb->G;
	color b = rgb->B;

	ybr.Y = 0.299*r + 0.587*g + 0.114*b;
	ybr.Cb = -0.1687*r - 0.3313*g + 0.5*b + 128;
	ybr.Cr = 0.5*r - 0.4187*g - 0.0813*b + 128;

	return ybr;
}

static ybr_t rgb2ybr1(rgb_t *rgb)
{
	ybr_t ybr;
	color r = rgb->R;
	color g = rgb->G;
	color b = rgb->B;
#	define K	((1<<8)-1)
#	define K2	((1<<8)-1)

	ybr.Y = (K2 + 153*r + 301*g + 58*b) >> 9;
	ybr.Cb = (65536+K - 86*r - 170*g + 256*b) >> 9;
	ybr.Cr = (65536+K + 256*r - 214*g - 42*b) >> 9;

	return ybr;
}

static ybr_t rgb2ybr2(rgb_t *rgb)
{
	ybr_t ybr;
	color r = rgb->R;
	color g = rgb->G;
	color b = rgb->B;

	ybr.Y  = (  32768 + 19595*r + 38470*g +  7471*b) >> 16;
	ybr.Cb = (8421376 - 11058*r - 21709*g + 32767*b) >> 16;
	ybr.Cr = (8421376 + 32767*r - 27438*g -  5329*b) >> 16;

	return ybr;
}

static rgb_t ybr02rgb(ybr_t *ybr)
{
	rgb_t rgb;

	float y = ybr->Y;
	float cb = ybr->Cb;
	float cr = ybr->Cr;

	rgb.R = y + 1.402*(cr-128) + 0.5;
	rgb.G = y - 0.34414*(cb-128) - 0.71414*(cr-128) + 0.5;
	rgb.B = y + 1.772*(cb-128) + 0.5;

	return rgb;
} 

static rgb_t ybr2rgb(ybr_t *ybr)
{
	rgb_t rgb;

	color y = ybr->Y;
	color cb = ybr->Cb;
	color cr = ybr->Cr;

	rgb.R = y + 1.402*(cr-128) + 0.5;
	rgb.G = y - 0.34414*(cb-128) - 0.71414*(cr-128) + 0.5;
	rgb.B = y + 1.772*(cb-128) + 0.5;

	return rgb;
} 

#define QTAB_SCALE	10

static short quantize0(const short data, const unsigned short qt)
{
	return (data*qt - (data>>15) + ((1<<(QTAB_SCALE-1))-1)) >> QTAB_SCALE;
}

static short quantize1(const short data, const unsigned short qt)
{
	return (data*qt + ((1<<(QTAB_SCALE-1))-1)) / (1<<QTAB_SCALE);
}

static short quantize(const short data, const unsigned short qt)
{
	return (data < 0)?
		((data*qt - (1<<(QTAB_SCALE-1))) >> QTAB_SCALE) + 1:
		((data*qt + (1<<(QTAB_SCALE-1))-1) >> QTAB_SCALE);
}


int main0 (int argc, char *argv[])
{
	rgb_t rgb;
	rgb_t rgb2;
	ybr_t ybr;

	rgb.R = atoi(argv[1]);
	rgb.G = atoi(argv[2]);
	rgb.B = atoi(argv[3]);

	printf("RGB: %f,%f,%f\n", rgb.R, rgb.G, rgb.B);
	ybr = rgb2ybr0(&rgb);
	rgb2 = ybr02rgb(&ybr);
	printf("YCbCr0: %f,%f,%f RGB: %f,%f,%f\n", ybr.Y, ybr.Cb, ybr.Cr, rgb2.R, rgb2.G, rgb2.B);
	ybr = rgb2ybr1(&rgb);
	rgb2 = ybr2rgb(&ybr);
	printf("YCbCr1: %f,%f,%f RGB: %f,%f,%f\n", ybr.Y, ybr.Cb, ybr.Cr, rgb2.R, rgb2.G, rgb2.B);
	ybr = rgb2ybr2(&rgb);
	rgb2 = ybr2rgb(&ybr);
	printf("YCbCr2: %f,%f,%f RGB: %f,%f,%f\n", ybr.Y, ybr.Cb, ybr.Cr, rgb2.R, rgb2.G, rgb2.B);

	return 0;
}

int main (int argc, char *argv[])
{
	short val, q1, q2;
	unsigned short qt;

	val = atoi(argv[1]);
	qt = atoi(argv[2]);

	q1 = quantize0(val, qt);
	q2 = quantize(val, qt);
	printf("Val: %d q1=%d q2=%d\n", val, q1, q2);

	val = - val;
	q1 = quantize0(val, qt);
	q2 = quantize(val, qt);
	printf("Val: %d q1=%d q2=%d\n", val, q1, q2);

	return 0;
}
