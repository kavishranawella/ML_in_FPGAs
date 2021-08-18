/******************************************************************************
 * NAME:        activations.h
 * PROJECT:     nnet_stream
 * Description: definition and implementation of activation functions
 *******************************************************************************/

#ifndef F_INT_WIDTH

#include "ap_fixed.h"

#define EXP_WIDTH	32
#define F_INT_WIDTH	4

typedef ap_fixed<EXP_WIDTH, F_INT_WIDTH, AP_RND_INF> float32_type;
#endif

#ifndef INT_WIDTH


#include "ap_int.h"
#define INT_WIDTH	8
typedef ap_int<INT_WIDTH> int8_type;
typedef ap_uint<INT_WIDTH> uint8_type;
typedef ap_int<2*INT_WIDTH> int16_type;

#endif

#ifndef TEMP_INT_WIDTH

#define TEMP_INT_WIDTH	24
typedef ap_int<TEMP_INT_WIDTH> int24_type;
typedef ap_fixed<TEMP_INT_WIDTH, TEMP_INT_WIDTH, AP_RND_INF> fixed24_type;

#endif


#ifndef __ACTIVATIONS_H
#define __ACTIVATIONS_H



int24_type relu(fixed24_type a)
{	
	if	(a<(int24_type)(0))
	{
		return (fixed24_type)(0);
	}
	else
	{
		return (fixed24_type)(a);
	}
}

#endif
