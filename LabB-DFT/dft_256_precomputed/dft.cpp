#include<math.h>
#include "dft.h"
#include"coefficients256.h"

void dft(DTYPE real_sample[SIZE], DTYPE imag_sample[SIZE], DTYPE sum_r[SIZE], DTYPE sum_i[SIZE])
{
	//Write your code here
#pragma HLS DATAFLOW
	int n, k;
//	DTYPE sum_r[SIZE], sum_i[SIZE];
	DTYPE tmp_r, tmp_i;

	top_loop: for (k = 0; k < SIZE; k++)
	{
//#pragma HLS DATAFLOW
		real_part:for (n = 0; n < SIZE; n++){
#pragma HLS loop_flatten
#pragma HLS PIPELINE II=1
#pragma HLS UNROLL factor=16
			if (n == 0){
//				sum_r[k] = 0;
				tmp_r = 0;
				tmp_i = 0;
			}
			tmp_r += real_sample[n] * cos_coefficients_table[(k*n)%SIZE];
			tmp_i += real_sample[n] * sin_coefficients_table[(k*n)%SIZE];
			if (n == SIZE-1){
				sum_r[k] = tmp_r;
				sum_i[k] = tmp_i;
			}
//			sum_r[k] += real_sample[n] * cos_coefficients_table[(k*n)%SIZE];
//			sum_r[k] += real_sample[n] * cos((k*n)%SIZE);
		}

//		imag_part:for (n = 0; n < SIZE; n++){
//#pragma HLS PIPELINE II=1
//#pragma HLS UNROLL factor=16
//			if (n == 0){
////				sum_i[k] = 0;
//				tmp_i = 0;
//			}
//			tmp_i += real_sample[n] * sin_coefficients_table[(k*n)%SIZE];
//			if (n == SIZE-1){
//				sum_i[k] = tmp_i;
//			}
////			sum_i[k] += real_sample[n] * sin_coefficients_table[(k*n)%SIZE];
////			sum_i[k] += real_sample[n] * sin((k*n)%SIZE);
//		}
	}

//	for (n = 0; n < SIZE; n++){
//		real_sample[n] = sum_r[n];
//		imag_sample[n] = sum_i[n];
//	}

}
