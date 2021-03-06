// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _nnet_HH_
#define _nnet_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Loop_1_proc181.h"
#include "conv_layer1.h"
#include "pool_layer1.h"
#include "conv_layer2.h"
#include "pool_layer2.h"
#include "fc_layer1.h"
#include "fc_layer2.h"
#include "fc_layer3.h"
#include "fifo_w8_d2_A.h"

namespace ap_rtl {

struct nnet : public sc_module {
    // Port declarations 9
    sc_out< sc_lv<32> > fc3_out_V_V_din;
    sc_in< sc_logic > fc3_out_V_V_full_n;
    sc_out< sc_logic > fc3_out_V_V_write;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    nnet(sc_module_name name);
    SC_HAS_PROCESS(nnet);

    ~nnet();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Loop_1_proc181* Loop_1_proc181_U0;
    conv_layer1* conv_layer1_U0;
    pool_layer1* pool_layer1_U0;
    conv_layer2* conv_layer2_U0;
    pool_layer2* pool_layer2_U0;
    fc_layer1* fc_layer1_U0;
    fc_layer2* fc_layer2_U0;
    fc_layer3* fc_layer3_U0;
    fifo_w8_d2_A* image_in_V_V_U;
    fifo_w8_d2_A* conv1_out_V_V_U;
    fifo_w8_d2_A* pool1_out_V_V_U;
    fifo_w8_d2_A* conv2_out_V_V_U;
    fifo_w8_d2_A* pool2_out_V_V_U;
    fifo_w8_d2_A* fc1_out_V_V_U;
    fifo_w8_d2_A* fc2_out_V_V_U;
    sc_signal< sc_logic > Loop_1_proc181_U0_ap_start;
    sc_signal< sc_logic > Loop_1_proc181_U0_ap_done;
    sc_signal< sc_logic > Loop_1_proc181_U0_ap_continue;
    sc_signal< sc_logic > Loop_1_proc181_U0_ap_idle;
    sc_signal< sc_logic > Loop_1_proc181_U0_ap_ready;
    sc_signal< sc_lv<8> > Loop_1_proc181_U0_image_in_V_V_din;
    sc_signal< sc_logic > Loop_1_proc181_U0_image_in_V_V_write;
    sc_signal< sc_logic > conv_layer1_U0_ap_start;
    sc_signal< sc_logic > conv_layer1_U0_ap_done;
    sc_signal< sc_logic > conv_layer1_U0_ap_continue;
    sc_signal< sc_logic > conv_layer1_U0_ap_idle;
    sc_signal< sc_logic > conv_layer1_U0_ap_ready;
    sc_signal< sc_lv<8> > conv_layer1_U0_out_V_V_din;
    sc_signal< sc_logic > conv_layer1_U0_out_V_V_write;
    sc_signal< sc_logic > conv_layer1_U0_in_V_V_read;
    sc_signal< sc_logic > pool_layer1_U0_ap_start;
    sc_signal< sc_logic > pool_layer1_U0_ap_done;
    sc_signal< sc_logic > pool_layer1_U0_ap_continue;
    sc_signal< sc_logic > pool_layer1_U0_ap_idle;
    sc_signal< sc_logic > pool_layer1_U0_ap_ready;
    sc_signal< sc_lv<8> > pool_layer1_U0_out_V_V_din;
    sc_signal< sc_logic > pool_layer1_U0_out_V_V_write;
    sc_signal< sc_logic > pool_layer1_U0_in_V_V_read;
    sc_signal< sc_logic > conv_layer2_U0_ap_start;
    sc_signal< sc_logic > conv_layer2_U0_ap_done;
    sc_signal< sc_logic > conv_layer2_U0_ap_continue;
    sc_signal< sc_logic > conv_layer2_U0_ap_idle;
    sc_signal< sc_logic > conv_layer2_U0_ap_ready;
    sc_signal< sc_lv<8> > conv_layer2_U0_out_V_V_din;
    sc_signal< sc_logic > conv_layer2_U0_out_V_V_write;
    sc_signal< sc_logic > conv_layer2_U0_in_V_V_read;
    sc_signal< sc_logic > pool_layer2_U0_ap_start;
    sc_signal< sc_logic > pool_layer2_U0_ap_done;
    sc_signal< sc_logic > pool_layer2_U0_ap_continue;
    sc_signal< sc_logic > pool_layer2_U0_ap_idle;
    sc_signal< sc_logic > pool_layer2_U0_ap_ready;
    sc_signal< sc_lv<8> > pool_layer2_U0_out_V_V_din;
    sc_signal< sc_logic > pool_layer2_U0_out_V_V_write;
    sc_signal< sc_logic > pool_layer2_U0_in_V_V_read;
    sc_signal< sc_logic > fc_layer1_U0_ap_start;
    sc_signal< sc_logic > fc_layer1_U0_ap_done;
    sc_signal< sc_logic > fc_layer1_U0_ap_continue;
    sc_signal< sc_logic > fc_layer1_U0_ap_idle;
    sc_signal< sc_logic > fc_layer1_U0_ap_ready;
    sc_signal< sc_lv<8> > fc_layer1_U0_out_V_V_din;
    sc_signal< sc_logic > fc_layer1_U0_out_V_V_write;
    sc_signal< sc_logic > fc_layer1_U0_in_V_V_read;
    sc_signal< sc_logic > fc_layer2_U0_ap_start;
    sc_signal< sc_logic > fc_layer2_U0_ap_done;
    sc_signal< sc_logic > fc_layer2_U0_ap_continue;
    sc_signal< sc_logic > fc_layer2_U0_ap_idle;
    sc_signal< sc_logic > fc_layer2_U0_ap_ready;
    sc_signal< sc_lv<8> > fc_layer2_U0_out_V_V_din;
    sc_signal< sc_logic > fc_layer2_U0_out_V_V_write;
    sc_signal< sc_logic > fc_layer2_U0_in_V_V_read;
    sc_signal< sc_logic > fc_layer3_U0_ap_start;
    sc_signal< sc_logic > fc_layer3_U0_ap_done;
    sc_signal< sc_logic > fc_layer3_U0_ap_continue;
    sc_signal< sc_logic > fc_layer3_U0_ap_idle;
    sc_signal< sc_logic > fc_layer3_U0_ap_ready;
    sc_signal< sc_lv<32> > fc_layer3_U0_out_V_V_din;
    sc_signal< sc_logic > fc_layer3_U0_out_V_V_write;
    sc_signal< sc_logic > fc_layer3_U0_in_V_V_read;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > image_in_V_V_full_n;
    sc_signal< sc_lv<8> > image_in_V_V_dout;
    sc_signal< sc_logic > image_in_V_V_empty_n;
    sc_signal< sc_logic > conv1_out_V_V_full_n;
    sc_signal< sc_lv<8> > conv1_out_V_V_dout;
    sc_signal< sc_logic > conv1_out_V_V_empty_n;
    sc_signal< sc_logic > pool1_out_V_V_full_n;
    sc_signal< sc_lv<8> > pool1_out_V_V_dout;
    sc_signal< sc_logic > pool1_out_V_V_empty_n;
    sc_signal< sc_logic > conv2_out_V_V_full_n;
    sc_signal< sc_lv<8> > conv2_out_V_V_dout;
    sc_signal< sc_logic > conv2_out_V_V_empty_n;
    sc_signal< sc_logic > pool2_out_V_V_full_n;
    sc_signal< sc_lv<8> > pool2_out_V_V_dout;
    sc_signal< sc_logic > pool2_out_V_V_empty_n;
    sc_signal< sc_logic > fc1_out_V_V_full_n;
    sc_signal< sc_lv<8> > fc1_out_V_V_dout;
    sc_signal< sc_logic > fc1_out_V_V_empty_n;
    sc_signal< sc_logic > fc2_out_V_V_full_n;
    sc_signal< sc_lv<8> > fc2_out_V_V_dout;
    sc_signal< sc_logic > fc2_out_V_V_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > Loop_1_proc181_U0_start_full_n;
    sc_signal< sc_logic > Loop_1_proc181_U0_start_write;
    sc_signal< sc_logic > conv_layer1_U0_start_full_n;
    sc_signal< sc_logic > conv_layer1_U0_start_write;
    sc_signal< sc_logic > pool_layer1_U0_start_full_n;
    sc_signal< sc_logic > pool_layer1_U0_start_write;
    sc_signal< sc_logic > conv_layer2_U0_start_full_n;
    sc_signal< sc_logic > conv_layer2_U0_start_write;
    sc_signal< sc_logic > pool_layer2_U0_start_full_n;
    sc_signal< sc_logic > pool_layer2_U0_start_write;
    sc_signal< sc_logic > fc_layer1_U0_start_full_n;
    sc_signal< sc_logic > fc_layer1_U0_start_write;
    sc_signal< sc_logic > fc_layer2_U0_start_full_n;
    sc_signal< sc_logic > fc_layer2_U0_start_write;
    sc_signal< sc_logic > fc_layer3_U0_start_full_n;
    sc_signal< sc_logic > fc_layer3_U0_start_write;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_logic ap_const_logic_0;
    static const sc_logic ap_const_logic_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Loop_1_proc181_U0_ap_continue();
    void thread_Loop_1_proc181_U0_ap_start();
    void thread_Loop_1_proc181_U0_start_full_n();
    void thread_Loop_1_proc181_U0_start_write();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_conv_layer1_U0_ap_continue();
    void thread_conv_layer1_U0_start_full_n();
    void thread_conv_layer1_U0_start_write();
    void thread_conv_layer2_U0_ap_continue();
    void thread_conv_layer2_U0_start_full_n();
    void thread_conv_layer2_U0_start_write();
    void thread_fc3_out_V_V_din();
    void thread_fc3_out_V_V_write();
    void thread_fc_layer1_U0_ap_continue();
    void thread_fc_layer1_U0_start_full_n();
    void thread_fc_layer1_U0_start_write();
    void thread_fc_layer2_U0_ap_continue();
    void thread_fc_layer2_U0_start_full_n();
    void thread_fc_layer2_U0_start_write();
    void thread_fc_layer3_U0_ap_continue();
    void thread_fc_layer3_U0_start_full_n();
    void thread_fc_layer3_U0_start_write();
    void thread_pool_layer1_U0_ap_continue();
    void thread_pool_layer1_U0_start_full_n();
    void thread_pool_layer1_U0_start_write();
    void thread_pool_layer2_U0_ap_continue();
    void thread_pool_layer2_U0_start_full_n();
    void thread_pool_layer2_U0_start_write();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
