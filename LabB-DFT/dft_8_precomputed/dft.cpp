#include<math.h>
#include "dft.h"
#include"coefficients8.h"

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE])
{
	//Write your code here
	int k, n;
	float sum_r[SIZE], sum_i[SIZE]; 
	for (k = 0; k < SIZE; k++)
	{
		sum_r[k] = 0;
		for (n = 0; n < SIZE; n++){
			sum_r[k] += real_sample[n] * cos_coefficients_table[k*n%SIZE];
		}
		sum_i[k] = 0;
		for (n = 0; n < SIZE; n++){
			sum_i[k] += real_sample[n] * sin_coefficients_table[k*n%SIZE];
		}
	}
	for (n = 0; n < SIZE; n++){
		real_sample[n] = sum_r[n];
		imag_sample[n] = sum_i[n];
	}
}
