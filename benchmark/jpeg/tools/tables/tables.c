#include <stdlib.h>
#include <stdio.h>

#include "tables.h"

/******************************************************************************
**  huffman_tree_print
**  --------------------------------------------------------------------------
**  Print huffman info (number of  bits, bits itself) for the given codes.
**  There is no error check here so the input should be correct.
**  
**  ARGUMENTS:
**      ncodes    - pointer "number of codes" array;
**      nmax      - the array size;
**      codes     - pointer "codes" array;
**      cmax      - the array size;
**
**  RETURN: -
******************************************************************************/
static void huffman_tree_print(
	const unsigned char ncodes[], const unsigned nmax,
	const unsigned char codes[],  const unsigned cmax)
{
	unsigned     skip = 0;
	unsigned     i, j, k;

	for (k = 0, i = 0; i < nmax && k < cmax; i++)
	{
		for(j = 0; j < ncodes[i]; j++)
		{
			unsigned char code = codes[k++];
			unsigned bits = skip+j;
			unsigned nbits = i+1;

			printf("code=%3d nbits=%2d bits=0x%04x\n", code, nbits, bits);
		}

		skip += ncodes[i];
		skip *= 2;
	}
}

typedef struct element_s
{
	unsigned char  pos;
	unsigned char  nbits;
	unsigned short bits;
}
element_t;

static void huffman_tree_print_sorted(
	const unsigned char ncodes[], const unsigned nmax,
	const unsigned char codes[],  const unsigned cmax)
{
	unsigned     skip = 0;
	unsigned     i, j, k;
	unsigned     elmax = 0;
	element_t    el[1024];

	memset(el, 0, sizeof(el));

	for (k = 0, i = 0; i < nmax && k < cmax; i++)
	{
		for(j = 0; j < ncodes[i]; j++, k++)
		{
			unsigned n = codes[k];

			el[n].pos   = k;
			el[n].nbits = i+1;
			el[n].bits  = skip+j;

			elmax = max(elmax, n);
		}

		skip += ncodes[i];
		skip *= 2;
	}

	for (k = 0; k < elmax; k++)
	{
		printf("code=%02x nbits=%2d bits=0x%04x\n", k, el[k].nbits, el[k].bits);
	}
}

#define SIZEA(_array_)	(sizeof(_array_)/sizeof(_array_[0])) 

void jpegenc_print_tables1(void)
{
	printf("DC Luminance:\n");
	huffman_tree_print(
		std_dc_luminance_nrcodes, SIZEA(std_dc_luminance_nrcodes),
		std_dc_luminance_values,  SIZEA(std_dc_luminance_values));

	printf("\nDC Chrominance:\n");
	huffman_tree_print(
		std_dc_chrominance_nrcodes, SIZEA(std_dc_chrominance_nrcodes),
		std_dc_chrominance_values,  SIZEA(std_dc_chrominance_values));

	printf("\nAC Luminance:\n");
	huffman_tree_print(
		std_ac_luminance_nrcodes, SIZEA(std_ac_luminance_nrcodes),
		std_ac_luminance_values,  SIZEA(std_ac_luminance_values));

	printf("\nAC Chrominance:\n");
	huffman_tree_print(
		std_ac_chrominance_nrcodes, SIZEA(std_ac_chrominance_nrcodes),
		std_ac_chrominance_values,  SIZEA(std_ac_chrominance_values));
}

void jpegenc_print_tables2(void)
{
	printf("DC Luminance:\n");
	huffman_tree_print_sorted(
		std_dc_luminance_nrcodes, SIZEA(std_dc_luminance_nrcodes),
		std_dc_luminance_values,  SIZEA(std_dc_luminance_values));

	printf("\nDC Chrominance:\n");
	huffman_tree_print_sorted(
		std_dc_chrominance_nrcodes, SIZEA(std_dc_chrominance_nrcodes),
		std_dc_chrominance_values,  SIZEA(std_dc_chrominance_values));

	printf("\nAC Luminance:\n");
	huffman_tree_print_sorted(
		std_ac_luminance_nrcodes, SIZEA(std_ac_luminance_nrcodes),
		std_ac_luminance_values,  SIZEA(std_ac_luminance_values));

	printf("\nAC Chrominance:\n");
	huffman_tree_print_sorted(
		std_ac_chrominance_nrcodes, SIZEA(std_ac_chrominance_nrcodes),
		std_ac_chrominance_values,  SIZEA(std_ac_chrominance_values));
}

int main (int argc, char *argv[])
{
	jpegenc_print_tables2();

	return 0;
}