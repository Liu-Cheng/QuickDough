#ifndef __DCT_H__
#define __DCT_H__

void dct_fill_tab(); 

// integer DCT 
void dct(conv pixel[8][8], conv data[8][8]);
void dct2(conv pixel[8][8], conv data[8][8]);
void dct3(conv pixel[8][8], conv data[8][8]);
void dct31(conv pixel[8][8], conv data[8][8]);
void dct4(conv pixel[8][8], conv data[8][8]);
void dct5(conv pixel[8][8], conv data[8][8]);
void dct2_i(conv pixel[8][8], conv data[8][8]);
void dct2_s(conv pixel[8][8], conv data[8][8]);

void dct_1d(const short pixel[8], short data[8]);
void dct_1d_31(conv pixel[8], conv data[8]);
void dct_1d_4(const short pixel[8], short data[8]);
void dct_1d_5(const short pixel[8], short data[8]);
void dct_1d_6(const short pixel[8], short data[8]);

void idct(conv data[8][8], conv pixel[8][8]);
void idct3(conv data[8][8], conv pixel[8][8]);
void idct_1d(short data[8], short pixels[8]);
void idct_1d_3(short data[8], short pixels[8]);
void idct_1d_5(const short data[8], short pixel[8]);

#endif//__DCT_H__
