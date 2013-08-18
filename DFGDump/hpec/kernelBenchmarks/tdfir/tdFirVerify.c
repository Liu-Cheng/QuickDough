/******************************************************************************
** File: tdFirVerify.c
**
** HPEC Challenge Benchmark Suite
** TDFIR Kernel Benchmark
**
** Contents:
** Desc    : This file delivers a verification untility to assure the 
**           functionality of the time-domain FIR filter bank implementation.                                   
**            Inputs: ./data/<dataset>-tdFir-output.dat         
**                    ./data/<dataset>-tdFir-answer.dat         
**
** Author: Matthew A. Alexander 
**         MIT Lincoln Laboratory
**
******************************************************************************/

#define EPS .00000011921


#include <math.h>
#include <stdio.h>
#include "tdFir.h"
/*
  Need to include tdFir.h to used the tdFirVars structure.
*/

void tdFirVerify(struct tdFirVariables *tdFirVars);
void tdFirComplete(struct tdFirVariables *tdFirVars);


int main(int argc, char **argv)
{
  /*

  */
  char argPtr[2];
  sprintf(argPtr, "0");
  if (argc == 1)
    {
      printf("No dataset provided\n");
      printf("Usage: tdFirVerify <dataset> \n");
      exit(-1);
    }
  else
    {
      tdFirVars.dataSet = argv[1];
    }
  
  tdFirVerify(&tdFirVars);
  tdFirComplete(&tdFirVars);

  return 0;
}






void tdFirVerify(struct tdFirVariables *tdFirVars)
{
  int inputLength, resultLength, index, filterLength;
  int failed = 0;
  int numFilters;
  int filter;
  float * expectedPtr_r;
  float * expectedPtr_i;
  float * kernelResPtr_r;
  float * kernelResPtr_i;
  float tmp, bottom;
  float t;
  char dataSetString[100];
  char resultString[100];
  char filterString[100];

 
  sprintf(  filterString,"./data/%s-tdFir-filter.dat",tdFirVars->dataSet);
  readFromFile(float, filterString, tdFirVars->result);    
  filterLength = tdFirVars->result.size[1];

  t = filterLength * 10 * EPS;  /* compute the tolerance */


  sprintf(  dataSetString,"./data/%s-tdFir-answer.dat",tdFirVars->dataSet);
  sprintf(  resultString,"./data/%s-tdFir-output.dat",tdFirVars->dataSet);


  readFromFile(float, dataSetString, tdFirVars->result);    
  readFromFile(float, resultString, tdFirVars->input);
  inputLength = tdFirVars->result.size[1];
  resultLength = tdFirVars->input.size[1];
  numFilters  = tdFirVars->result.size[0];
  expectedPtr_r = tdFirVars->result.data;
  expectedPtr_i = expectedPtr_r+1;
  kernelResPtr_r = tdFirVars->input.data;
  kernelResPtr_i = kernelResPtr_r+1;
  


  if(resultLength != inputLength)
    {
#ifdef VERBOSE
      printf("Kernel output length does not match correct result length\n");
#endif
      return;
    }



  /*
    Verify that both the real and imaginary values are equal to the
    expected result.  If they're not, print out the index and values, then
    set a flag so that we don't print out success at the end.
  */
  for (filter = 0 ; filter < numFilters; filter++)
    {
      for (index = 0; index < inputLength; index++)
	{
	  if((*expectedPtr_r) == 0 && (*expectedPtr_i) == 0)
	    {
	      if(fabs(*kernelResPtr_r) > t)
		{
#ifdef VERBOSE
		  printf("%%%%%%  Error %%%%%% \n");
		  printf("result differs at index %d (real)\n",index);
		  printf("result:%1.9f ,correctResult:%1.9f \n",*kernelResPtr_r, *expectedPtr_r);
#endif
		  failed = 1;
		}
	      if(fabs(*kernelResPtr_i) > t)
		{
#ifdef VERBOSE
		  printf("%%%%%%  Error %%%%%% \n");
		  printf("result differs at index %d (imag)\n",index);
		  printf("result:%1.9f ,correctResult:%1.9f \n",*kernelResPtr_i, *expectedPtr_i);
#endif
		  failed = 1;
		}
	    }
	  else
	    {
	      bottom = sqrt(     (*expectedPtr_r) * (*expectedPtr_r)   +   (*expectedPtr_i) * (*expectedPtr_i)  );
	      tmp = ((*expectedPtr_r) - (*kernelResPtr_r)) / bottom;
	      if(fabs(tmp) > t)
		{
#ifdef VERBOSE
		  printf("%%%%%%  Error %%%%%% \n");
		  printf("result differs at index %d (real)\n",index);
		  printf("result:%1.9f ,correctResult:%1.9f \n",*kernelResPtr_r, *expectedPtr_r);
#endif
		  failed = 1;
		}
	      tmp = ((*expectedPtr_i) - (*kernelResPtr_i)) / bottom; 
	      if(fabs(tmp) > t)
		{
#ifdef VERBOSE
		  printf("%%%%%%  Error %%%%%% \n");
		  printf("result differs at index %d (imag)\n",index);
		  printf("result:%1.9f ,correctResult:%1.9f \n",*kernelResPtr_i, *expectedPtr_i);
#endif
		  failed = 1;
		}
	    }
	  expectedPtr_r += 2; kernelResPtr_r += 2;
	  expectedPtr_i += 2; kernelResPtr_i += 2;
	}
    }/* end for each filter*/
  printf("Verification: ");
  if(failed==1)
    {
      printf("FAIL \n");
    }
  else
    {
      printf("PASS \n");
    }


}



void tdFirComplete(struct tdFirVariables *tdFirVars)
{
  clean_mem(float, tdFirVars->input);
  clean_mem(float, tdFirVars->result);
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
