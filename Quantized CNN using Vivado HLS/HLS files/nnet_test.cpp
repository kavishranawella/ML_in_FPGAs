/******************************************************************************
 * NAME:        nnet_test.cpp
 * PROJECT:     nnet_stream
 * Description: Basic test that sends an image to the Quantized Convolutional Neural Network
 *              and checks that the output matches the python reference
 *******************************************************************************/

#include "gmp.h"
#define __gmp_const const
#include <stdio.h>
#include <stdlib.h>
#include "headers/defines.h"
#include "ref/reference.h"
#include <hls_video.h>


#include "ap_fixed.h"

#define EXP_WIDTH	32
#define F_INT_WIDTH	4

typedef ap_fixed<EXP_WIDTH, F_INT_WIDTH, AP_RND_INF> float32_type;

#include "ap_int.h"
#define INT_WIDTH	8
#define TEMP_INT_WIDTH	24
typedef ap_int<INT_WIDTH> int8_type;
typedef ap_uint<INT_WIDTH> uint8_type;
typedef ap_int<2*INT_WIDTH> int16_type;
typedef ap_int<TEMP_INT_WIDTH> int24_type;
typedef ap_fixed<INT_WIDTH, INT_WIDTH, AP_RND_INF, AP_SAT> fixed8_type;
typedef ap_fixed<TEMP_INT_WIDTH, TEMP_INT_WIDTH, AP_RND_INF> fixed24_type;

#define eps 0.1

void nnet(hls::stream<float32_type> &fc3_out);

int main()
{

	hls::stream<float32_type> FC3_out("test_FC3_out");
/*
	int8_type fc_layer3_out[FC3_ACT_SIZE];
	float fc_layer3_ref[FC3_ACT_SIZE];
	int8_type placeholder;
*/
	int i,j,k;
	int correct_values, total_values;
/*
	nnet(FC3_out);

	for(i = 0; i < FC3_ACT_SIZE; i++) {
		FC3_out>>fc_layer3_out[i];
	}*/

	float32_type test[FC3_ACT_SIZE];//[P2_SIZE][P2_CHANNELS];
	nnet(FC3_out);
	for(i = 0; i < FC3_ACT_SIZE; i++) {
		//for(j = 0; j < P2_SIZE; j++) {
			//for(k = 0; k < P2_CHANNELS; k++) {
			FC3_out>>test[i];//[j][k];
		}//}}
/*
	FILE* fc_layer3_content = fopen("../../../../ref/fc_layer3_py.out","r");
	if(fc_layer3_content == NULL)
	{
		printf("Couldn't open ref/fc_layer3_py.out");
	    exit(1);
	}

	for(i = 0; i < FC3_ACT_SIZE; i++)
	{
		fscanf(fc_layer3_content,"%f",&fc_layer3_ref[i]);
	}
*/

	correct_values = 0;
	total_values = 0;

	printf("\n\n\n\n");

	printf("Checking FC Layer 3 ...\n");

	for(i = 0; i < FC3_ACT_SIZE; i++)
		//{for(j = 0; j< P2_SIZE; j++)
		//{for(k = 0; k < P2_CHANNELS; k++)
		{


		printf("Calculated int value = %f \n", (float)test[i]);//[j][k]);
		printf("Real int value = %f \n \n", (float)final_output[i]);//[j][k]);
			total_values++;
			if((((float)test[i]/*[j][k]*/ - final_output[i]/*[j][k]*/) > eps) || ((final_output[i] - (float)test[i]) > eps))
			{
				if(correct_values + 1 == total_values)
					printf("Missmatch in FC3 check\n");
			}
				else
					correct_values++;
		//}}
	/*
	for(i = 0; i < FC3_ACT_SIZE; i++)
	{
		total_values++;
		printf("Calculated int value = %i \n", (int)fc_layer3_out[i]);
		printf("Real float value = %f \n \n", fc_layer3_ref[i]);
		if((float)fc_layer3_out[i] - fc_layer3_ref[i] > eps || fc_layer3_ref[i] - (float)fc_layer3_out[i] > eps)
		{
			if(correct_values + 1 == total_values)
				printf("Missmatch in FC3 check\n");
		}
			else
				correct_values++;*/

	}

	printf("DONE: %d out of %d are correct\n\n", correct_values, total_values);


	return 0;



}
