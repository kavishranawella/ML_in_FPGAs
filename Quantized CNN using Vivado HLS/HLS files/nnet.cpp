/******************************************************************************
 * NAME:        nnet.cpp
 * PROJECT:     nnet_stream
 * Description: HLS implementation of the Quantized Convolutional Neural Network
 *******************************************************************************/


#include "gmp.h"
#define __gmp_const const
#include "headers/weights.h"
#include "headers/defines.h"
#include "headers/activations.h"
#include <hls_video.h>

#include "ap_fixed.h"

#define EXP_WIDTH	32
#define F_INT_WIDTH	4

typedef ap_fixed<EXP_WIDTH, F_INT_WIDTH, AP_RND_INF> float32_type;

#include "ap_int.h"
#define INT_WIDTH	8
#define TEMP_INT_WIDTH	24
typedef ap_uint<INT_WIDTH> uint8_type;
typedef ap_int<INT_WIDTH> int8_type;
typedef ap_int<2*INT_WIDTH> int16_type;
typedef ap_int<TEMP_INT_WIDTH> int24_type;
typedef ap_fixed<INT_WIDTH, INT_WIDTH, AP_RND_INF, AP_SAT> fixed8_type;
typedef ap_fixed<TEMP_INT_WIDTH, TEMP_INT_WIDTH, AP_RND_INF> fixed24_type;

#define CONV1_BUFFER_SIZE (IMAGE_SIZE * IMAGE_CHANNELS * (CONV1_KERNEL_SIZE -1) + CONV1_KERNEL_SIZE * IMAGE_CHANNELS)

void conv_layer1(hls::stream<int8_type> &out, hls::stream<int8_type> &in,
		int8_type weight[CONV1_FILTERS][CONV1_KERNEL_SIZE][CONV1_KERNEL_SIZE][CONV1_CHANNELS],
		int16_type bias[CONV1_BIAS_SIZE], int8_type in_zero_point,int8_type out_zero_point,
		float32_type in_scale,float32_type weight_scale[CONV1_FILTERS], float32_type bias_scale[CONV1_FILTERS],
		float32_type out_scale){
	int i, j, k, filter, a, b,c,d;
	int8_type  placeholder;
	int24_type kernel_sum[CONV1_FILTERS];
	float32_type scale[CONV1_FILTERS][2];
	int row_offset, col_offset, channel_offset;
	static hls::LineBuffer<CONV1_BUFFER_SIZE, 1, int8_type> conv_buff;


	fixed24_type rnd_val;
	fixed8_type out_val;
	int24_type sum;

	for (a=0; a<CONV1_FILTERS;a++)
	{
		kernel_sum[a]=(int24_type)0;
		for (b=0; b<CONV1_KERNEL_SIZE;b++)
		{	for (c=0; c<CONV1_KERNEL_SIZE;c++)
			{	for (d=0; d<CONV1_CHANNELS;d++)
				{
					kernel_sum[a]+=weight[a][b][c][d];
				}
			}
		}
		scale[a][0]=bias_scale[a]/out_scale;
		scale[a][1]=(in_scale*weight_scale[a])/out_scale;
		kernel_sum[a]*=fixed24_type(in_zero_point);
	}
	/*
	 * Read the initial buffer
	 * */

	for (i = 0; i < CONV1_BUFFER_SIZE; i++) {
		if (in.empty() == 0) {
			in >> placeholder;
			conv_buff.shift_up(0);
			conv_buff.insert_top(placeholder, 0);
		}
	}


	for (i = 0; i < (IMAGE_SIZE - CONV1_KERNEL_SIZE + 1); i += CONV1_STRIDE)
		conv_layer1_label9: for (j = 0;
				j < (IMAGE_SIZE - CONV1_KERNEL_SIZE + 1); j += CONV1_STRIDE)
				{

			conv_layer1_label2: for (filter = 0; filter < CONV1_FILTERS;
					filter++) {
				sum = 0;
				conv_layer1_label6: for (row_offset = 0;
						row_offset < CONV1_KERNEL_SIZE; row_offset++)
					conv_layer1_label7: for (col_offset = 0;
							col_offset < CONV1_KERNEL_SIZE; col_offset++)
						conv_layer1_label8: for (channel_offset = 0;
								channel_offset < CONV1_CHANNELS;
								channel_offset++) {
							static int8_type val1, val2;
							int t1, t2;

							t1 = row_offset * IMAGE_SIZE * IMAGE_CHANNELS;
							t2 = col_offset * IMAGE_CHANNELS;
							val1 = conv_buff.getval(t1 + t2 + channel_offset, 0);
							val2 = weight[filter][row_offset][col_offset][channel_offset];
							sum += val1 * val2;
						}
				rnd_val=fixed24_type((sum-kernel_sum[filter])*scale[filter][1] + (bias[filter])*scale[filter][0]);
				out_val=fixed8_type(relu(rnd_val)+out_zero_point);
				out << int8_type(out_val);
			}


			if ((j + CONV1_STRIDE < (IMAGE_SIZE - CONV1_KERNEL_SIZE + 1))) {
				conv_layer1_label1: for (int p = 0; p < IMAGE_CHANNELS; p++)
					if (in.empty() == 0) {
						in >> placeholder;
						conv_buff.shift_up(0);
						conv_buff.insert_top(placeholder, 0);
					}
			} else if ((i + CONV1_STRIDE < (IMAGE_SIZE - CONV1_KERNEL_SIZE + 1))
					&& (j + CONV1_STRIDE >= (IMAGE_SIZE - CONV1_KERNEL_SIZE + 1)))
				conv_layer1_label0: for (int p = 0;
						p < CONV1_KERNEL_SIZE * IMAGE_CHANNELS; p++)
					if (in.empty() == 0) {
						in >> placeholder;
						conv_buff.shift_up(0);
						conv_buff.insert_top(placeholder, 0);
					}
		}
}

#define CONV2_BUFFER_SIZE (P1_SIZE * P1_CHANNELS * (CONV2_KERNEL_SIZE -1) + CONV2_KERNEL_SIZE * P1_CHANNELS)

void conv_layer2(hls::stream<int8_type> &out, hls::stream<int8_type> &in,
		int8_type weight[CONV2_FILTERS][CONV2_KERNEL_SIZE][CONV2_KERNEL_SIZE][CONV2_CHANNELS],
		int16_type bias[CONV2_BIAS_SIZE], int8_type in_zero_point,int8_type out_zero_point,
		float32_type in_scale,float32_type weight_scale[CONV2_FILTERS], float32_type bias_scale[CONV2_FILTERS],
		float32_type out_scale){
	int i, j, k, filter, a, b,c,d;
	int8_type placeholder;
	int24_type kernel_sum[CONV2_FILTERS];
	float32_type scale[CONV2_FILTERS][2];
	int row_offset, col_offset, channel_offset;
	static hls::LineBuffer<CONV2_BUFFER_SIZE, 1, int8_type> conv_buff;

	fixed24_type rnd_val;
	fixed8_type out_val;
	int24_type sum;

	for (a=0; a<CONV2_FILTERS;a++)
	{
		kernel_sum[a]=(int24_type)0;
		for (b=0; b<CONV2_KERNEL_SIZE;b++)
		{	for (c=0; c<CONV2_KERNEL_SIZE;c++)
			{	for (d=0; d<CONV2_CHANNELS;d++)
				{
					kernel_sum[a]+=weight[a][b][c][d];
				}
			}
		}
		scale[a][0]=bias_scale[a]/out_scale;
		scale[a][1]=(in_scale*weight_scale[a])/out_scale;
		kernel_sum[a]*=fixed24_type(in_zero_point);
	}

	/*
	 * Read the initial buffer
	 * */

	for (i = 0; i < CONV2_BUFFER_SIZE; i++) {
		if (in.empty() == 0) {
			in >> placeholder;
			conv_buff.shift_up(0);
			conv_buff.insert_top(placeholder, 0);
		}
	}

	for (i = 0; i < (P1_SIZE - CONV2_KERNEL_SIZE + 1); i += CONV2_STRIDE)
		conv_layer2_label5: for (j = 0; j < (P1_SIZE - CONV2_KERNEL_SIZE + 1);
				j += CONV2_STRIDE)
				{
			conv_layer2_label12: for (filter = 0; filter < CONV2_FILTERS;
					filter++) {
				sum = 0;
				conv_layer2_label13: for (row_offset = 0;
						row_offset < CONV2_KERNEL_SIZE; row_offset++)
					conv_layer2_label10: for (col_offset = 0;
							col_offset < CONV2_KERNEL_SIZE; col_offset++)
						conv_layer2_label11: for (channel_offset = 0;
								channel_offset < CONV2_CHANNELS;
								channel_offset++) {
							int t1, t2;
							t1 = row_offset * P1_SIZE * P1_CHANNELS;
							t2 = col_offset * P1_CHANNELS;
							sum += conv_buff.getval(t1 + t2 + channel_offset, 0)
											* weight[filter][row_offset][col_offset][channel_offset];
						}
				rnd_val=fixed24_type((sum-kernel_sum[filter])*scale[filter][1] + (bias[filter])*scale[filter][0]);
				out_val=fixed8_type(relu(rnd_val)+out_zero_point);
				out << int8_type(out_val);
			}


			if ((j + CONV2_STRIDE < (P1_SIZE - CONV2_KERNEL_SIZE + 1))) {
				conv_layer2_label3: for (int p = 0; p < P1_CHANNELS; p++)
					if (in.empty() == 0) {
						in >> placeholder;
						conv_buff.shift_up(0);
						conv_buff.insert_top(placeholder, 0);
					}
			} else if ((i + CONV2_STRIDE < (P1_SIZE - CONV2_KERNEL_SIZE + 1))
					&& (j + CONV2_STRIDE >= (P1_SIZE - CONV2_KERNEL_SIZE + 1)))
				conv_layer2_label4: for (int p = 0;
						p < CONV2_KERNEL_SIZE * P1_CHANNELS; p++)
					if (in.empty() == 0) {
						in >> placeholder;
						conv_buff.shift_up(0);
						conv_buff.insert_top(placeholder, 0);
					}
		}
}

#define POOL1_BUFFER_SIZE (P1_SIZE*P1_CHANNELS)

void pool_layer1(hls::stream<int8_type> &out, hls::stream<int8_type> &in){

	int i, j, k, l, m;
	int8_type read;
	hls::LineBuffer<POOL1_BUFFER_SIZE, 1, int8_type> pool_buff;

	for (i = 0; i < P1_SIZE; i++)
		pool_layer1_label6: for (l = 0; l < P1_KERNEL_SIZE; l++) {
			pool_layer1_label14: for (j = 0; j < P1_SIZE; j++)
				pool_layer1_label15: for (m = 0; m < P1_KERNEL_SIZE; m++)
					pool_layer1_label19: pool_layer1_label18: for (k = 0;
							k < P1_CHANNELS; k++) {
						in >> read;
						if (l == 0 && m == 0)
							pool_buff.val[j * P1_CHANNELS + k][0] = read;

						else
							pool_buff.val[j * P1_CHANNELS + k][0] =
									pool_buff.val[j * P1_CHANNELS + k][0]
											> read ?
											pool_buff.val[j * P1_CHANNELS + k][0] :
											read;

						if (l == (P1_KERNEL_SIZE - 1)
								&& m == (P1_KERNEL_SIZE - 1))
							out << (pool_buff.val[j * P1_CHANNELS + k][0]);// + activation[i][j][k]);
					}
			pool_layer1_label20: for (int skip = P1_SIZE * P1_STRIDE;
					skip < A1_SIZE; skip++)
				pool_layer1_label16: for (int channel = 0;
						channel < P1_CHANNELS; channel++)
					in >> read;
		}
	pool_layer1_label7: for (int skip_row = P1_SIZE * P1_STRIDE;
			skip_row < A1_SIZE; skip_row++)
		pool_layer1_label33: for (int skip_col = 0; skip_col < A1_SIZE;
				skip_col++)
			pool_layer1_label35: for (int skip_channel = 0;
					skip_channel < A1_CHANNELS; skip_channel++)
				in >> read;
}

#define POOL2_BUFFER_SIZE (P2_SIZE*P2_CHANNELS)

void pool_layer2(hls::stream<int8_type> &out, hls::stream<int8_type> &in){//, int8_type activation[P2_SIZE][P2_SIZE][P2_CHANNELS]) {

	int i, j, k, l, m;
	int8_type read;
	hls::LineBuffer<POOL2_BUFFER_SIZE, 1, int8_type> pool_buff;

	for (i = 0; i < P2_SIZE; i++)
		pool_layer2_label28: for (l = 0; l < P2_KERNEL_SIZE; l++) {
			pool_layer2_label0: for (j = 0; j < P2_SIZE; j++)
				pool_layer2_label26: for (m = 0; m < P2_KERNEL_SIZE; m++)
					pool_layer2_label36: for (k = 0; k < P2_CHANNELS; k++) {
						in >> read;
						if (l == 0 && m == 0)
							pool_buff.val[j * P2_CHANNELS + k][0] = read;

						else
							pool_buff.val[j * P2_CHANNELS + k][0] =
									pool_buff.val[j * P2_CHANNELS + k][0]
											> read ?
											pool_buff.val[j * P2_CHANNELS + k][0] :
											read;

						if (l == (P2_KERNEL_SIZE - 1)
								&& m == (P2_KERNEL_SIZE - 1))
							out << (pool_buff.val[j * P2_CHANNELS + k][0]);// + activation[i][j][k]);
					}
			pool_layer2_label38: for (int skip = P2_SIZE * P2_STRIDE;
					skip < A2_SIZE; skip++)
				pool_layer2_label37: for (int channel = 0;
						channel < P2_CHANNELS; channel++)
					in >> read;
		}
	pool_layer2_label9: for (int skip_row = P2_SIZE * P2_STRIDE;
			skip_row < A2_SIZE; skip_row++)
		pool_layer2_label16: for (int skip_col = 0; skip_col < A2_SIZE;
				skip_col++)
			pool_layer2_label39: for (int skip_channel = 0;
					skip_channel < A2_CHANNELS; skip_channel++)
				in >> read;
}

void fc_layer1(hls::stream<int8_type> &out, hls::stream<int8_type> &in,
		int8_type weight[FC1_WEIGHTS_W][FC1_WEIGHTS_H],
		int16_type bias[FC1_BIAS_SIZE], int8_type in_zero_point,int8_type out_zero_point,
		float32_type in_scale,float32_type weight_scale, float32_type bias_scale,
		float32_type out_scale){
	int8_type read;
	int24_type read_temp;
	int24_type output[FC1_ACT_SIZE] = { 0 };
	float32_type scale[2];

	scale[0]=(weight_scale*in_scale)/out_scale;
	scale[1]=bias_scale/out_scale;

	in >> read;
	read_temp = int24_type(read - in_zero_point);
	for (int i = 0; i < FC1_WEIGHTS_W; i++)
		output[i] = weight[i][0] * read_temp;

	fc_layer1_label12: for (int j = 1; j < FC1_WEIGHTS_H; j++) {
		in >> read;
		read_temp = int24_type(read - in_zero_point);
		fc_layer1_label40: for (int i = 0; i < FC1_WEIGHTS_W; i++) {
			output[i] += weight[i][j] * read_temp;
		}
	}
	fc_layer1_label15: for (int i = 0; i < FC1_WEIGHTS_W; i++)
		out << int8_type(fixed8_type((relu(fixed24_type(output[i]*scale[0] + bias[i]*scale[1])))+out_zero_point));
}

void fc_layer2(hls::stream<int8_type> &out, hls::stream<int8_type> &in,
		int8_type weight[FC2_WEIGHTS_W][FC2_WEIGHTS_H],
		int16_type bias[FC2_BIAS_SIZE], int8_type in_zero_point,int8_type out_zero_point,
		float32_type in_scale,float32_type weight_scale, float32_type bias_scale,
		float32_type out_scale){
	int8_type read;
	int24_type read_temp;
	int24_type output[FC2_ACT_SIZE] = { 0 };
	float32_type scale[2];

	scale[0]=(weight_scale*in_scale)/out_scale;
	scale[1]=bias_scale/out_scale;

	in >> read;
	read_temp = int24_type(read - in_zero_point);
	for (int i = 0; i < FC2_WEIGHTS_W; i++)
		output[i] = weight[i][0] * read_temp;

	fc_layer2_label13: for (int j = 1; j < FC2_WEIGHTS_H; j++) {
		in >> read;
		read_temp = int24_type(read - in_zero_point);
		fc_layer2_label41: for (int i = 0; i < FC2_WEIGHTS_W; i++) {
			output[i] += weight[i][j] * read_temp;
		}
	}
	fc_layer2_label11: for (int i = 0; i < FC2_WEIGHTS_W; i++)
		out << int8_type(fixed8_type((relu(fixed24_type(output[i]*scale[0] + bias[i]*scale[1])))+out_zero_point));

}

void fc_layer3(hls::stream<float32_type> &out, hls::stream<int8_type> &in,
		int8_type weight[FC3_WEIGHTS_W][FC3_WEIGHTS_H],
		int16_type bias[FC3_BIAS_SIZE], int8_type in_zero_point,int8_type out_zero_point,
		float32_type in_scale,float32_type weight_scale, float32_type bias_scale,
		float32_type out_scale){
	int8_type read;
	int24_type read_temp;
	int24_type output[FC1_ACT_SIZE] = { 0 };
	float32_type scale[2];

	scale[0]=(weight_scale*in_scale)/out_scale;
	scale[1]=bias_scale/out_scale;

	in >> read;
	read_temp = int24_type(read - in_zero_point);
	for (int i = 0; i < FC3_WEIGHTS_W; i++)
		output[i] = weight[i][0] * read_temp;

	fc_layer3_label10: for (int j = 1; j < FC3_WEIGHTS_H; j++) {
		in >> read;
		read_temp = int24_type(read - in_zero_point);
		fc_layer3_label42: for (int i = 0; i < FC3_WEIGHTS_W; i++) {
			output[i] += weight[i][j] * read_temp;
		}
	}
	fc_layer3_label14: for (int i = 0; i < FC3_WEIGHTS_W; i++)

		out << float32_type(fixed24_type(((fixed8_type((fixed24_type(output[i]*scale[0] + bias[i]*scale[1]))+out_zero_point))-out_zero_point))*out_scale);

}

void nnet(hls::stream<float32_type> &fc3_out) {
	hls::stream<int8_type> conv1_out("conv1_out");
	hls::stream<int8_type> conv2_out("conv2_out");
	hls::stream<int8_type> pool1_out("pool1_out");
	hls::stream<int8_type> pool2_out("pool2_out");
	hls::stream<int8_type> fc1_out("fc1_out");
	hls::stream<int8_type> fc2_out("fc2_out");
	hls::stream<int8_type> image_in("image_in");

	for (int i = 0; i < IMAGE_SIZE; i++)
		for (int j = 0; j < IMAGE_SIZE; j++)
			for (int k = 0; k < IMAGE_CHANNELS; k++)
				image_in << input_activations[i][j][k];//(image[i] + input_activations[i]);

	conv_layer1(conv1_out, image_in, conv_layer1_weights, conv_layer1_bias, input_zero_point,
			conv_layer1_out_zero_point, input_scale, conv_layer1_weight_scale,
			conv_layer1_bias_scale, conv_layer1_out_scale);
	pool_layer1(pool1_out, conv1_out);

	conv_layer2(conv2_out, pool1_out, conv_layer2_weights, conv_layer2_bias, conv_layer1_out_zero_point,
			conv_layer2_out_zero_point,	conv_layer1_out_scale, conv_layer2_weight_scale,
			conv_layer2_bias_scale, conv_layer2_out_scale);
	pool_layer2(pool2_out, conv2_out);

	fc_layer1(fc1_out, pool2_out, fc_layer1_weights, fc_layer1_bias, conv_layer2_out_zero_point,
			fc_layer1_out_zero_point,	conv_layer2_out_scale, fc_layer1_weight_scale,
			fc_layer1_bias_scale, fc_layer1_out_scale);
	fc_layer2(fc2_out, fc1_out, fc_layer2_weights, fc_layer2_bias, fc_layer1_out_zero_point,
			fc_layer2_out_zero_point,	fc_layer1_out_scale, fc_layer2_weight_scale,
			fc_layer2_bias_scale, fc_layer2_out_scale);
	fc_layer3(fc3_out, fc2_out, fc_layer3_weights, fc_layer3_bias,fc_layer2_out_zero_point,
			fc_layer3_out_zero_point,	fc_layer2_out_scale, fc_layer3_weight_scale,
			fc_layer3_bias_scale, fc_layer3_out_scale);
}
