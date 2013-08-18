/******************************************************************************
** File: ifft.c
**
** HPEC Challenge Benchmark Suite
** FDFIR Kernel Benchmark
**
** Contents: This file provides the definition for the ifft function in support
**           of the generic C Frequency-domain FIR filter bank implementation. 
**           This is a RADIX 4 implementation. The FIR filter has been 
**           optimized by performing a decimation-in-time FFT followed by a 
**           decimation-in-frequency iFFT to remove the need for bit-reversal.
**
** Author: Matthew A. Alexander
**         MIT Lincoln Laboratory
**
******************************************************************************/


#include "fdFir.h"



/*
  The fft and ifft differ in a couple ways. First, the input to the
  ifft has base-4 reversed indices. This rearranged input has been 
  formed by the output of the fft.  The nature of the fft and ifft
  is to have a base-4 reversed output.  With this said, the two 
  reversals between the fft and ifft undo each other.
  The other difference is in regards to the butterfly ordering.  In 
  the fft, we start with large butterflies and work our way down to 
  the point where the stride between elements is 1 (small butterflies).
  In the ifft, we work backwards.  We start where the stride is 1
  (small butterflies), and work to larger butterflies where the stride
  is equivalent to the inputLength / 4.
*/




void ifft(struct fdFirVariables *fdFirVars)
{

  int filter        = fdFirVars->currentFilter;  /*which filter in the bank*/
  int inputLength   = fdFirVars->inputLength;  /* input length */
  int phases        = fdFirVars->phases;    /* number of phases in the ifft */
  int butterflies   = fdFirVars->butterflies;  /* number of butterflies per phase */
  int stride        = 2;  /* stride between elements in the butterfly */
  int inc           = 4;  /*number of elements to increment after each butterfly */
  int reset         = inputLength / 4;  /* cntr determining how many butterflies to 
					   do before going to the second element of 
					   the input vector.  */
  int resetSave     = reset;/*  reset needs to be saved as we decrement it's value.  */
  int shift;   /*  Variable used to determine the exponent of the twiddle factors */
  float *dataPtr1   = (fdFirVars->input.data) + (inputLength * 2 * filter);/* pointers */
  float *dataPtr2   = (fdFirVars->input.data) + (inputLength * 2 * filter);/*    to    */
  float *dataPtr3   = (fdFirVars->input.data) + (inputLength * 2 * filter);/*   data   */
  float *twiddlePtr = fdFirVars->twiddleConjPtr;  /* point to the start of the twiddle 
						 factors vector.  */

  float ar,ai,br,bi,cr,ci,dr,di;  /*  butterfly input variables  */
  int phase;  /*  current phase variable */
  int butterfly;  /*  current butterfly variable  */
  int exp1, exp2, exp3;  /* exponent variables for twiddle factors */
  /*  int exp0;*/
  float twiddle1_r, twiddle1_i;/*  twiddle  */
  float twiddle2_r, twiddle2_i;/*  factor   */
  float twiddle3_r, twiddle3_i;/* variables */
  float twiddle4_r, twiddle4_i;/*           */

  float res1r, res1i, res2r, res2i;  /* butterfly result */
  float res3r, res3i, res4r, res4i;  /*   variables      */

  int tmp1,tmp2,tmp3;  /* temporary variables for utility use. */
  /*  
      Temporary variables for butterfly optimization below.  These are
      not needed unless the optimizations found below are uncommented.
  */
  /* float t1r, t1i, t2r, t2i, t3r, t3i, t4r, t4i;*/


  for(phase = phases-1; phase >= 0; phase--)
    {
      dataPtr1 = dataPtr2 = dataPtr3;

      for(butterfly = 0; butterfly < butterflies; butterfly++)
	{
	  if(reset == 0)
	    {
	      dataPtr2 = dataPtr2 + 2;
	      dataPtr1 = dataPtr2;
	      reset    = resetSave;
	    }
	  /*
	    Calculate the exponents for the twiddle factors.
	  */

	  if (phase == 0)
	    {
	      tmp1 = 1;
	    }
	  else
	    {
	      shift = (phase - 1) * 2;
	      tmp1 = 4<<shift;
  	    }

	  tmp2 = butterfly / tmp1;
	  tmp3 = tmp1 * tmp2;
	  /*exp0 = 0;*/
	  exp1 = 2 * tmp3;
	  exp2 = 4 * tmp3;
	  exp3 = 6 * tmp3;

	  /*
	    The following elements a,b,c,d (r,i) are the four inputs
	    to the butterfly operation below.
	  */
	  ar = *(dataPtr1);
	  ai = *(dataPtr1 + 1);
	  br = *(dataPtr1 + stride);
	  bi = *(dataPtr1 + stride + 1);
	  cr = *(dataPtr1 + 2 * stride);
	  ci = *(dataPtr1 + 2 * stride + 1);
	  dr = *(dataPtr1 + 3 * stride);
	  di = *(dataPtr1 + 3 * stride + 1);
	  

	  /*
	    The following for twiddle factors (r,i) are the four twiddle
	    factors for the butterfly operation below.
	  */
	  /*
	    note that these twiddle pointers actually point to the twiddle
	    factor's conjugate values in fdFirVars->twiddleConjPtr.
	  */
	  twiddle1_r = 1;
	  twiddle1_i = 0;
	  twiddle2_r = *(twiddlePtr + exp1);
	  twiddle2_i = *(twiddlePtr + exp1 + 1);
	  twiddle3_r = *(twiddlePtr + exp2);
	  twiddle3_i = *(twiddlePtr + exp2 + 1);
	  twiddle4_r = *(twiddlePtr + exp3);
	  twiddle4_i = *(twiddlePtr + exp3 + 1);
	 

	  
	  /* 
	    The following complex multiplies perform multiplications
	    of the butterfly results by the respective twiddle factors.
	    the results of the complex multiplies are placed back in
	    r and i.  The CPLX_MUL macro can be found in fdFir.h
	  */

	  CPLX_MUL(ar, ai, twiddle1_r, twiddle1_i );
	  CPLX_MUL(br, bi, twiddle2_r, twiddle2_i );
	  CPLX_MUL(cr, ci, twiddle3_r, twiddle3_i );
	  CPLX_MUL(dr, di, twiddle4_r, twiddle4_i );

 
	  /*
	    The following 8 operations make up a Radix 4 butterfly.
	  */
	  
	  res1r = ar + br + cr + dr;
	  res1i = ai + bi + ci + di;
	  res4r = ar + bi - cr - di;
	  res4i = ai - br - ci + dr;
	  res3r = ar - br + cr - dr;
	  res3i = ai - bi + ci - di;           
	  res2r = ar - bi - cr + di;           
	  res2i = ai + br - ci - dr;           
	  

	  /*
	    The following code could be an optimization for the above 8
	    operations. Below performs 16 adds/subtracts versus the code 
	    above performing 24 add/subtracts.  Unfortunatly the code below
	    did perform slower than the above code; however, this is often 
	    an optimization made to various fft implementations.
	    
	    To use this code, the temporary variables (t1r, t1i...) must be
	    uncommented above)
	  */
	  /*
	    t1r = ar + cr;
	    t1i = ai + ci;
	    t2r = br + dr;
	    t2i = bi + di;
	    t3r = ar - cr;
	    t3i = ai - ci;
	    t4r = br - dr;
	    t4i = bi - di;
	    
	    res1r = t1r + t2r;
	    res1i = t1i + t2i;
	    res4r = t3r + t4i;
	    res4i = t3i - t4r;
	    res3r = t1r - t2r;
	    res3i = t1i - t2i;
	    res2r = t3r - t4i;
	    res2i = t3i + t4r;
	  */


	  /*  Normally, we do a divide by inputLength on each
	      element in the LAST Phase.  For optimization 
	      purposes, I've moved the elDivide into the elDiv
	      routine in FDFIR.
	  */


	  /*
	    store the results.
	  */
	  *(dataPtr1)                  = res1r;
	  *(dataPtr1 + 1)              = res1i;
	  *(dataPtr1 + stride)         = res2r;
	  *(dataPtr1 + stride + 1)     = res2i;
	  *(dataPtr1 + 2 * stride)     = res3r;
	  *(dataPtr1 + 2 * stride + 1) = res3i;
	  *(dataPtr1 + 3 * stride)     = res4r;
	  *(dataPtr1 + 3 * stride + 1) = res4i;


	  dataPtr1 = dataPtr1 + inc*2;
	  reset--;
	}/*end butterflies*/
      stride    = stride    * RADIX;  /* 4X the stride as previous phase*/ 
      inc       = inc       * RADIX;  /* increment 4X as many elements after
				       each butterfly     */
      reset     = resetSave / RADIX;  /* reset 4X as often  */
      resetSave = resetSave / RADIX;  /* reset 4X as often  */
    }/* end phases*/

}


/* ----------------------------------------------------------------------------
Copyright (c) 2006, Massachusetts Institute of Technology
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are  
met:
     * Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
     * Neither the name of the Massachusetts Institute of Technology nor  
       the names of its contributors may be used to endorse or promote 
       products derived from this software without specific prior written 
       permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF  
THE POSSIBILITY OF SUCH DAMAGE.
---------------------------------------------------------------------------- */
