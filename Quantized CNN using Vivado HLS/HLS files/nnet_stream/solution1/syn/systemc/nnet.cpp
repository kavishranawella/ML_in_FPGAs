// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "nnet.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<32> nnet::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_logic nnet::ap_const_logic_0 = sc_dt::Log_0;
const sc_logic nnet::ap_const_logic_1 = sc_dt::Log_1;

nnet::nnet(sc_module_name name) : sc_module(name), mVcdFile(0) {
    Loop_1_proc181_U0 = new Loop_1_proc181("Loop_1_proc181_U0");
    Loop_1_proc181_U0->ap_clk(ap_clk);
    Loop_1_proc181_U0->ap_rst(ap_rst);
    Loop_1_proc181_U0->ap_start(Loop_1_proc181_U0_ap_start);
    Loop_1_proc181_U0->ap_done(Loop_1_proc181_U0_ap_done);
    Loop_1_proc181_U0->ap_continue(Loop_1_proc181_U0_ap_continue);
    Loop_1_proc181_U0->ap_idle(Loop_1_proc181_U0_ap_idle);
    Loop_1_proc181_U0->ap_ready(Loop_1_proc181_U0_ap_ready);
    Loop_1_proc181_U0->image_in_V_V_din(Loop_1_proc181_U0_image_in_V_V_din);
    Loop_1_proc181_U0->image_in_V_V_full_n(image_in_V_V_full_n);
    Loop_1_proc181_U0->image_in_V_V_write(Loop_1_proc181_U0_image_in_V_V_write);
    conv_layer1_U0 = new conv_layer1("conv_layer1_U0");
    conv_layer1_U0->ap_clk(ap_clk);
    conv_layer1_U0->ap_rst(ap_rst);
    conv_layer1_U0->ap_start(conv_layer1_U0_ap_start);
    conv_layer1_U0->ap_done(conv_layer1_U0_ap_done);
    conv_layer1_U0->ap_continue(conv_layer1_U0_ap_continue);
    conv_layer1_U0->ap_idle(conv_layer1_U0_ap_idle);
    conv_layer1_U0->ap_ready(conv_layer1_U0_ap_ready);
    conv_layer1_U0->out_V_V_din(conv_layer1_U0_out_V_V_din);
    conv_layer1_U0->out_V_V_full_n(conv1_out_V_V_full_n);
    conv_layer1_U0->out_V_V_write(conv_layer1_U0_out_V_V_write);
    conv_layer1_U0->in_V_V_dout(image_in_V_V_dout);
    conv_layer1_U0->in_V_V_empty_n(image_in_V_V_empty_n);
    conv_layer1_U0->in_V_V_read(conv_layer1_U0_in_V_V_read);
    pool_layer1_U0 = new pool_layer1("pool_layer1_U0");
    pool_layer1_U0->ap_clk(ap_clk);
    pool_layer1_U0->ap_rst(ap_rst);
    pool_layer1_U0->ap_start(pool_layer1_U0_ap_start);
    pool_layer1_U0->ap_done(pool_layer1_U0_ap_done);
    pool_layer1_U0->ap_continue(pool_layer1_U0_ap_continue);
    pool_layer1_U0->ap_idle(pool_layer1_U0_ap_idle);
    pool_layer1_U0->ap_ready(pool_layer1_U0_ap_ready);
    pool_layer1_U0->out_V_V_din(pool_layer1_U0_out_V_V_din);
    pool_layer1_U0->out_V_V_full_n(pool1_out_V_V_full_n);
    pool_layer1_U0->out_V_V_write(pool_layer1_U0_out_V_V_write);
    pool_layer1_U0->in_V_V_dout(conv1_out_V_V_dout);
    pool_layer1_U0->in_V_V_empty_n(conv1_out_V_V_empty_n);
    pool_layer1_U0->in_V_V_read(pool_layer1_U0_in_V_V_read);
    conv_layer2_U0 = new conv_layer2("conv_layer2_U0");
    conv_layer2_U0->ap_clk(ap_clk);
    conv_layer2_U0->ap_rst(ap_rst);
    conv_layer2_U0->ap_start(conv_layer2_U0_ap_start);
    conv_layer2_U0->ap_done(conv_layer2_U0_ap_done);
    conv_layer2_U0->ap_continue(conv_layer2_U0_ap_continue);
    conv_layer2_U0->ap_idle(conv_layer2_U0_ap_idle);
    conv_layer2_U0->ap_ready(conv_layer2_U0_ap_ready);
    conv_layer2_U0->out_V_V_din(conv_layer2_U0_out_V_V_din);
    conv_layer2_U0->out_V_V_full_n(conv2_out_V_V_full_n);
    conv_layer2_U0->out_V_V_write(conv_layer2_U0_out_V_V_write);
    conv_layer2_U0->in_V_V_dout(pool1_out_V_V_dout);
    conv_layer2_U0->in_V_V_empty_n(pool1_out_V_V_empty_n);
    conv_layer2_U0->in_V_V_read(conv_layer2_U0_in_V_V_read);
    pool_layer2_U0 = new pool_layer2("pool_layer2_U0");
    pool_layer2_U0->ap_clk(ap_clk);
    pool_layer2_U0->ap_rst(ap_rst);
    pool_layer2_U0->ap_start(pool_layer2_U0_ap_start);
    pool_layer2_U0->ap_done(pool_layer2_U0_ap_done);
    pool_layer2_U0->ap_continue(pool_layer2_U0_ap_continue);
    pool_layer2_U0->ap_idle(pool_layer2_U0_ap_idle);
    pool_layer2_U0->ap_ready(pool_layer2_U0_ap_ready);
    pool_layer2_U0->out_V_V_din(pool_layer2_U0_out_V_V_din);
    pool_layer2_U0->out_V_V_full_n(pool2_out_V_V_full_n);
    pool_layer2_U0->out_V_V_write(pool_layer2_U0_out_V_V_write);
    pool_layer2_U0->in_V_V_dout(conv2_out_V_V_dout);
    pool_layer2_U0->in_V_V_empty_n(conv2_out_V_V_empty_n);
    pool_layer2_U0->in_V_V_read(pool_layer2_U0_in_V_V_read);
    fc_layer1_U0 = new fc_layer1("fc_layer1_U0");
    fc_layer1_U0->ap_clk(ap_clk);
    fc_layer1_U0->ap_rst(ap_rst);
    fc_layer1_U0->ap_start(fc_layer1_U0_ap_start);
    fc_layer1_U0->ap_done(fc_layer1_U0_ap_done);
    fc_layer1_U0->ap_continue(fc_layer1_U0_ap_continue);
    fc_layer1_U0->ap_idle(fc_layer1_U0_ap_idle);
    fc_layer1_U0->ap_ready(fc_layer1_U0_ap_ready);
    fc_layer1_U0->out_V_V_din(fc_layer1_U0_out_V_V_din);
    fc_layer1_U0->out_V_V_full_n(fc1_out_V_V_full_n);
    fc_layer1_U0->out_V_V_write(fc_layer1_U0_out_V_V_write);
    fc_layer1_U0->in_V_V_dout(pool2_out_V_V_dout);
    fc_layer1_U0->in_V_V_empty_n(pool2_out_V_V_empty_n);
    fc_layer1_U0->in_V_V_read(fc_layer1_U0_in_V_V_read);
    fc_layer2_U0 = new fc_layer2("fc_layer2_U0");
    fc_layer2_U0->ap_clk(ap_clk);
    fc_layer2_U0->ap_rst(ap_rst);
    fc_layer2_U0->ap_start(fc_layer2_U0_ap_start);
    fc_layer2_U0->ap_done(fc_layer2_U0_ap_done);
    fc_layer2_U0->ap_continue(fc_layer2_U0_ap_continue);
    fc_layer2_U0->ap_idle(fc_layer2_U0_ap_idle);
    fc_layer2_U0->ap_ready(fc_layer2_U0_ap_ready);
    fc_layer2_U0->out_V_V_din(fc_layer2_U0_out_V_V_din);
    fc_layer2_U0->out_V_V_full_n(fc2_out_V_V_full_n);
    fc_layer2_U0->out_V_V_write(fc_layer2_U0_out_V_V_write);
    fc_layer2_U0->in_V_V_dout(fc1_out_V_V_dout);
    fc_layer2_U0->in_V_V_empty_n(fc1_out_V_V_empty_n);
    fc_layer2_U0->in_V_V_read(fc_layer2_U0_in_V_V_read);
    fc_layer3_U0 = new fc_layer3("fc_layer3_U0");
    fc_layer3_U0->ap_clk(ap_clk);
    fc_layer3_U0->ap_rst(ap_rst);
    fc_layer3_U0->ap_start(fc_layer3_U0_ap_start);
    fc_layer3_U0->ap_done(fc_layer3_U0_ap_done);
    fc_layer3_U0->ap_continue(fc_layer3_U0_ap_continue);
    fc_layer3_U0->ap_idle(fc_layer3_U0_ap_idle);
    fc_layer3_U0->ap_ready(fc_layer3_U0_ap_ready);
    fc_layer3_U0->out_V_V_din(fc_layer3_U0_out_V_V_din);
    fc_layer3_U0->out_V_V_full_n(fc3_out_V_V_full_n);
    fc_layer3_U0->out_V_V_write(fc_layer3_U0_out_V_V_write);
    fc_layer3_U0->in_V_V_dout(fc2_out_V_V_dout);
    fc_layer3_U0->in_V_V_empty_n(fc2_out_V_V_empty_n);
    fc_layer3_U0->in_V_V_read(fc_layer3_U0_in_V_V_read);
    image_in_V_V_U = new fifo_w8_d2_A("image_in_V_V_U");
    image_in_V_V_U->clk(ap_clk);
    image_in_V_V_U->reset(ap_rst);
    image_in_V_V_U->if_read_ce(ap_var_for_const0);
    image_in_V_V_U->if_write_ce(ap_var_for_const0);
    image_in_V_V_U->if_din(Loop_1_proc181_U0_image_in_V_V_din);
    image_in_V_V_U->if_full_n(image_in_V_V_full_n);
    image_in_V_V_U->if_write(Loop_1_proc181_U0_image_in_V_V_write);
    image_in_V_V_U->if_dout(image_in_V_V_dout);
    image_in_V_V_U->if_empty_n(image_in_V_V_empty_n);
    image_in_V_V_U->if_read(conv_layer1_U0_in_V_V_read);
    conv1_out_V_V_U = new fifo_w8_d2_A("conv1_out_V_V_U");
    conv1_out_V_V_U->clk(ap_clk);
    conv1_out_V_V_U->reset(ap_rst);
    conv1_out_V_V_U->if_read_ce(ap_var_for_const0);
    conv1_out_V_V_U->if_write_ce(ap_var_for_const0);
    conv1_out_V_V_U->if_din(conv_layer1_U0_out_V_V_din);
    conv1_out_V_V_U->if_full_n(conv1_out_V_V_full_n);
    conv1_out_V_V_U->if_write(conv_layer1_U0_out_V_V_write);
    conv1_out_V_V_U->if_dout(conv1_out_V_V_dout);
    conv1_out_V_V_U->if_empty_n(conv1_out_V_V_empty_n);
    conv1_out_V_V_U->if_read(pool_layer1_U0_in_V_V_read);
    pool1_out_V_V_U = new fifo_w8_d2_A("pool1_out_V_V_U");
    pool1_out_V_V_U->clk(ap_clk);
    pool1_out_V_V_U->reset(ap_rst);
    pool1_out_V_V_U->if_read_ce(ap_var_for_const0);
    pool1_out_V_V_U->if_write_ce(ap_var_for_const0);
    pool1_out_V_V_U->if_din(pool_layer1_U0_out_V_V_din);
    pool1_out_V_V_U->if_full_n(pool1_out_V_V_full_n);
    pool1_out_V_V_U->if_write(pool_layer1_U0_out_V_V_write);
    pool1_out_V_V_U->if_dout(pool1_out_V_V_dout);
    pool1_out_V_V_U->if_empty_n(pool1_out_V_V_empty_n);
    pool1_out_V_V_U->if_read(conv_layer2_U0_in_V_V_read);
    conv2_out_V_V_U = new fifo_w8_d2_A("conv2_out_V_V_U");
    conv2_out_V_V_U->clk(ap_clk);
    conv2_out_V_V_U->reset(ap_rst);
    conv2_out_V_V_U->if_read_ce(ap_var_for_const0);
    conv2_out_V_V_U->if_write_ce(ap_var_for_const0);
    conv2_out_V_V_U->if_din(conv_layer2_U0_out_V_V_din);
    conv2_out_V_V_U->if_full_n(conv2_out_V_V_full_n);
    conv2_out_V_V_U->if_write(conv_layer2_U0_out_V_V_write);
    conv2_out_V_V_U->if_dout(conv2_out_V_V_dout);
    conv2_out_V_V_U->if_empty_n(conv2_out_V_V_empty_n);
    conv2_out_V_V_U->if_read(pool_layer2_U0_in_V_V_read);
    pool2_out_V_V_U = new fifo_w8_d2_A("pool2_out_V_V_U");
    pool2_out_V_V_U->clk(ap_clk);
    pool2_out_V_V_U->reset(ap_rst);
    pool2_out_V_V_U->if_read_ce(ap_var_for_const0);
    pool2_out_V_V_U->if_write_ce(ap_var_for_const0);
    pool2_out_V_V_U->if_din(pool_layer2_U0_out_V_V_din);
    pool2_out_V_V_U->if_full_n(pool2_out_V_V_full_n);
    pool2_out_V_V_U->if_write(pool_layer2_U0_out_V_V_write);
    pool2_out_V_V_U->if_dout(pool2_out_V_V_dout);
    pool2_out_V_V_U->if_empty_n(pool2_out_V_V_empty_n);
    pool2_out_V_V_U->if_read(fc_layer1_U0_in_V_V_read);
    fc1_out_V_V_U = new fifo_w8_d2_A("fc1_out_V_V_U");
    fc1_out_V_V_U->clk(ap_clk);
    fc1_out_V_V_U->reset(ap_rst);
    fc1_out_V_V_U->if_read_ce(ap_var_for_const0);
    fc1_out_V_V_U->if_write_ce(ap_var_for_const0);
    fc1_out_V_V_U->if_din(fc_layer1_U0_out_V_V_din);
    fc1_out_V_V_U->if_full_n(fc1_out_V_V_full_n);
    fc1_out_V_V_U->if_write(fc_layer1_U0_out_V_V_write);
    fc1_out_V_V_U->if_dout(fc1_out_V_V_dout);
    fc1_out_V_V_U->if_empty_n(fc1_out_V_V_empty_n);
    fc1_out_V_V_U->if_read(fc_layer2_U0_in_V_V_read);
    fc2_out_V_V_U = new fifo_w8_d2_A("fc2_out_V_V_U");
    fc2_out_V_V_U->clk(ap_clk);
    fc2_out_V_V_U->reset(ap_rst);
    fc2_out_V_V_U->if_read_ce(ap_var_for_const0);
    fc2_out_V_V_U->if_write_ce(ap_var_for_const0);
    fc2_out_V_V_U->if_din(fc_layer2_U0_out_V_V_din);
    fc2_out_V_V_U->if_full_n(fc2_out_V_V_full_n);
    fc2_out_V_V_U->if_write(fc_layer2_U0_out_V_V_write);
    fc2_out_V_V_U->if_dout(fc2_out_V_V_dout);
    fc2_out_V_V_U->if_empty_n(fc2_out_V_V_empty_n);
    fc2_out_V_V_U->if_read(fc_layer3_U0_in_V_V_read);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Loop_1_proc181_U0_ap_continue);

    SC_METHOD(thread_Loop_1_proc181_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_Loop_1_proc181_U0_start_full_n);

    SC_METHOD(thread_Loop_1_proc181_U0_start_write);

    SC_METHOD(thread_ap_done);
    sensitive << ( fc_layer3_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( Loop_1_proc181_U0_ap_idle );
    sensitive << ( conv_layer1_U0_ap_idle );
    sensitive << ( pool_layer1_U0_ap_idle );
    sensitive << ( conv_layer2_U0_ap_idle );
    sensitive << ( pool_layer2_U0_ap_idle );
    sensitive << ( fc_layer1_U0_ap_idle );
    sensitive << ( fc_layer2_U0_ap_idle );
    sensitive << ( fc_layer3_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( fc_layer3_U0_ap_done );

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( fc_layer3_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_conv_layer1_U0_ap_continue);

    SC_METHOD(thread_conv_layer1_U0_start_full_n);

    SC_METHOD(thread_conv_layer1_U0_start_write);

    SC_METHOD(thread_conv_layer2_U0_ap_continue);

    SC_METHOD(thread_conv_layer2_U0_start_full_n);

    SC_METHOD(thread_conv_layer2_U0_start_write);

    SC_METHOD(thread_fc3_out_V_V_din);
    sensitive << ( fc_layer3_U0_out_V_V_din );

    SC_METHOD(thread_fc3_out_V_V_write);
    sensitive << ( fc_layer3_U0_out_V_V_write );

    SC_METHOD(thread_fc_layer1_U0_ap_continue);

    SC_METHOD(thread_fc_layer1_U0_start_full_n);

    SC_METHOD(thread_fc_layer1_U0_start_write);

    SC_METHOD(thread_fc_layer2_U0_ap_continue);

    SC_METHOD(thread_fc_layer2_U0_start_full_n);

    SC_METHOD(thread_fc_layer2_U0_start_write);

    SC_METHOD(thread_fc_layer3_U0_ap_continue);

    SC_METHOD(thread_fc_layer3_U0_start_full_n);

    SC_METHOD(thread_fc_layer3_U0_start_write);

    SC_METHOD(thread_pool_layer1_U0_ap_continue);

    SC_METHOD(thread_pool_layer1_U0_start_full_n);

    SC_METHOD(thread_pool_layer1_U0_start_write);

    SC_METHOD(thread_pool_layer2_U0_ap_continue);

    SC_METHOD(thread_pool_layer2_U0_start_full_n);

    SC_METHOD(thread_pool_layer2_U0_start_write);

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    conv_layer1_U0_ap_start = SC_LOGIC_0;
    pool_layer1_U0_ap_start = SC_LOGIC_0;
    conv_layer2_U0_ap_start = SC_LOGIC_0;
    pool_layer2_U0_ap_start = SC_LOGIC_0;
    fc_layer1_U0_ap_start = SC_LOGIC_0;
    fc_layer2_U0_ap_start = SC_LOGIC_0;
    fc_layer3_U0_ap_start = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "nnet_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, fc3_out_V_V_din, "(port)fc3_out_V_V_din");
    sc_trace(mVcdFile, fc3_out_V_V_full_n, "(port)fc3_out_V_V_full_n");
    sc_trace(mVcdFile, fc3_out_V_V_write, "(port)fc3_out_V_V_write");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, Loop_1_proc181_U0_ap_start, "Loop_1_proc181_U0_ap_start");
    sc_trace(mVcdFile, Loop_1_proc181_U0_ap_done, "Loop_1_proc181_U0_ap_done");
    sc_trace(mVcdFile, Loop_1_proc181_U0_ap_continue, "Loop_1_proc181_U0_ap_continue");
    sc_trace(mVcdFile, Loop_1_proc181_U0_ap_idle, "Loop_1_proc181_U0_ap_idle");
    sc_trace(mVcdFile, Loop_1_proc181_U0_ap_ready, "Loop_1_proc181_U0_ap_ready");
    sc_trace(mVcdFile, Loop_1_proc181_U0_image_in_V_V_din, "Loop_1_proc181_U0_image_in_V_V_din");
    sc_trace(mVcdFile, Loop_1_proc181_U0_image_in_V_V_write, "Loop_1_proc181_U0_image_in_V_V_write");
    sc_trace(mVcdFile, conv_layer1_U0_ap_start, "conv_layer1_U0_ap_start");
    sc_trace(mVcdFile, conv_layer1_U0_ap_done, "conv_layer1_U0_ap_done");
    sc_trace(mVcdFile, conv_layer1_U0_ap_continue, "conv_layer1_U0_ap_continue");
    sc_trace(mVcdFile, conv_layer1_U0_ap_idle, "conv_layer1_U0_ap_idle");
    sc_trace(mVcdFile, conv_layer1_U0_ap_ready, "conv_layer1_U0_ap_ready");
    sc_trace(mVcdFile, conv_layer1_U0_out_V_V_din, "conv_layer1_U0_out_V_V_din");
    sc_trace(mVcdFile, conv_layer1_U0_out_V_V_write, "conv_layer1_U0_out_V_V_write");
    sc_trace(mVcdFile, conv_layer1_U0_in_V_V_read, "conv_layer1_U0_in_V_V_read");
    sc_trace(mVcdFile, pool_layer1_U0_ap_start, "pool_layer1_U0_ap_start");
    sc_trace(mVcdFile, pool_layer1_U0_ap_done, "pool_layer1_U0_ap_done");
    sc_trace(mVcdFile, pool_layer1_U0_ap_continue, "pool_layer1_U0_ap_continue");
    sc_trace(mVcdFile, pool_layer1_U0_ap_idle, "pool_layer1_U0_ap_idle");
    sc_trace(mVcdFile, pool_layer1_U0_ap_ready, "pool_layer1_U0_ap_ready");
    sc_trace(mVcdFile, pool_layer1_U0_out_V_V_din, "pool_layer1_U0_out_V_V_din");
    sc_trace(mVcdFile, pool_layer1_U0_out_V_V_write, "pool_layer1_U0_out_V_V_write");
    sc_trace(mVcdFile, pool_layer1_U0_in_V_V_read, "pool_layer1_U0_in_V_V_read");
    sc_trace(mVcdFile, conv_layer2_U0_ap_start, "conv_layer2_U0_ap_start");
    sc_trace(mVcdFile, conv_layer2_U0_ap_done, "conv_layer2_U0_ap_done");
    sc_trace(mVcdFile, conv_layer2_U0_ap_continue, "conv_layer2_U0_ap_continue");
    sc_trace(mVcdFile, conv_layer2_U0_ap_idle, "conv_layer2_U0_ap_idle");
    sc_trace(mVcdFile, conv_layer2_U0_ap_ready, "conv_layer2_U0_ap_ready");
    sc_trace(mVcdFile, conv_layer2_U0_out_V_V_din, "conv_layer2_U0_out_V_V_din");
    sc_trace(mVcdFile, conv_layer2_U0_out_V_V_write, "conv_layer2_U0_out_V_V_write");
    sc_trace(mVcdFile, conv_layer2_U0_in_V_V_read, "conv_layer2_U0_in_V_V_read");
    sc_trace(mVcdFile, pool_layer2_U0_ap_start, "pool_layer2_U0_ap_start");
    sc_trace(mVcdFile, pool_layer2_U0_ap_done, "pool_layer2_U0_ap_done");
    sc_trace(mVcdFile, pool_layer2_U0_ap_continue, "pool_layer2_U0_ap_continue");
    sc_trace(mVcdFile, pool_layer2_U0_ap_idle, "pool_layer2_U0_ap_idle");
    sc_trace(mVcdFile, pool_layer2_U0_ap_ready, "pool_layer2_U0_ap_ready");
    sc_trace(mVcdFile, pool_layer2_U0_out_V_V_din, "pool_layer2_U0_out_V_V_din");
    sc_trace(mVcdFile, pool_layer2_U0_out_V_V_write, "pool_layer2_U0_out_V_V_write");
    sc_trace(mVcdFile, pool_layer2_U0_in_V_V_read, "pool_layer2_U0_in_V_V_read");
    sc_trace(mVcdFile, fc_layer1_U0_ap_start, "fc_layer1_U0_ap_start");
    sc_trace(mVcdFile, fc_layer1_U0_ap_done, "fc_layer1_U0_ap_done");
    sc_trace(mVcdFile, fc_layer1_U0_ap_continue, "fc_layer1_U0_ap_continue");
    sc_trace(mVcdFile, fc_layer1_U0_ap_idle, "fc_layer1_U0_ap_idle");
    sc_trace(mVcdFile, fc_layer1_U0_ap_ready, "fc_layer1_U0_ap_ready");
    sc_trace(mVcdFile, fc_layer1_U0_out_V_V_din, "fc_layer1_U0_out_V_V_din");
    sc_trace(mVcdFile, fc_layer1_U0_out_V_V_write, "fc_layer1_U0_out_V_V_write");
    sc_trace(mVcdFile, fc_layer1_U0_in_V_V_read, "fc_layer1_U0_in_V_V_read");
    sc_trace(mVcdFile, fc_layer2_U0_ap_start, "fc_layer2_U0_ap_start");
    sc_trace(mVcdFile, fc_layer2_U0_ap_done, "fc_layer2_U0_ap_done");
    sc_trace(mVcdFile, fc_layer2_U0_ap_continue, "fc_layer2_U0_ap_continue");
    sc_trace(mVcdFile, fc_layer2_U0_ap_idle, "fc_layer2_U0_ap_idle");
    sc_trace(mVcdFile, fc_layer2_U0_ap_ready, "fc_layer2_U0_ap_ready");
    sc_trace(mVcdFile, fc_layer2_U0_out_V_V_din, "fc_layer2_U0_out_V_V_din");
    sc_trace(mVcdFile, fc_layer2_U0_out_V_V_write, "fc_layer2_U0_out_V_V_write");
    sc_trace(mVcdFile, fc_layer2_U0_in_V_V_read, "fc_layer2_U0_in_V_V_read");
    sc_trace(mVcdFile, fc_layer3_U0_ap_start, "fc_layer3_U0_ap_start");
    sc_trace(mVcdFile, fc_layer3_U0_ap_done, "fc_layer3_U0_ap_done");
    sc_trace(mVcdFile, fc_layer3_U0_ap_continue, "fc_layer3_U0_ap_continue");
    sc_trace(mVcdFile, fc_layer3_U0_ap_idle, "fc_layer3_U0_ap_idle");
    sc_trace(mVcdFile, fc_layer3_U0_ap_ready, "fc_layer3_U0_ap_ready");
    sc_trace(mVcdFile, fc_layer3_U0_out_V_V_din, "fc_layer3_U0_out_V_V_din");
    sc_trace(mVcdFile, fc_layer3_U0_out_V_V_write, "fc_layer3_U0_out_V_V_write");
    sc_trace(mVcdFile, fc_layer3_U0_in_V_V_read, "fc_layer3_U0_in_V_V_read");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, image_in_V_V_full_n, "image_in_V_V_full_n");
    sc_trace(mVcdFile, image_in_V_V_dout, "image_in_V_V_dout");
    sc_trace(mVcdFile, image_in_V_V_empty_n, "image_in_V_V_empty_n");
    sc_trace(mVcdFile, conv1_out_V_V_full_n, "conv1_out_V_V_full_n");
    sc_trace(mVcdFile, conv1_out_V_V_dout, "conv1_out_V_V_dout");
    sc_trace(mVcdFile, conv1_out_V_V_empty_n, "conv1_out_V_V_empty_n");
    sc_trace(mVcdFile, pool1_out_V_V_full_n, "pool1_out_V_V_full_n");
    sc_trace(mVcdFile, pool1_out_V_V_dout, "pool1_out_V_V_dout");
    sc_trace(mVcdFile, pool1_out_V_V_empty_n, "pool1_out_V_V_empty_n");
    sc_trace(mVcdFile, conv2_out_V_V_full_n, "conv2_out_V_V_full_n");
    sc_trace(mVcdFile, conv2_out_V_V_dout, "conv2_out_V_V_dout");
    sc_trace(mVcdFile, conv2_out_V_V_empty_n, "conv2_out_V_V_empty_n");
    sc_trace(mVcdFile, pool2_out_V_V_full_n, "pool2_out_V_V_full_n");
    sc_trace(mVcdFile, pool2_out_V_V_dout, "pool2_out_V_V_dout");
    sc_trace(mVcdFile, pool2_out_V_V_empty_n, "pool2_out_V_V_empty_n");
    sc_trace(mVcdFile, fc1_out_V_V_full_n, "fc1_out_V_V_full_n");
    sc_trace(mVcdFile, fc1_out_V_V_dout, "fc1_out_V_V_dout");
    sc_trace(mVcdFile, fc1_out_V_V_empty_n, "fc1_out_V_V_empty_n");
    sc_trace(mVcdFile, fc2_out_V_V_full_n, "fc2_out_V_V_full_n");
    sc_trace(mVcdFile, fc2_out_V_V_dout, "fc2_out_V_V_dout");
    sc_trace(mVcdFile, fc2_out_V_V_empty_n, "fc2_out_V_V_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, Loop_1_proc181_U0_start_full_n, "Loop_1_proc181_U0_start_full_n");
    sc_trace(mVcdFile, Loop_1_proc181_U0_start_write, "Loop_1_proc181_U0_start_write");
    sc_trace(mVcdFile, conv_layer1_U0_start_full_n, "conv_layer1_U0_start_full_n");
    sc_trace(mVcdFile, conv_layer1_U0_start_write, "conv_layer1_U0_start_write");
    sc_trace(mVcdFile, pool_layer1_U0_start_full_n, "pool_layer1_U0_start_full_n");
    sc_trace(mVcdFile, pool_layer1_U0_start_write, "pool_layer1_U0_start_write");
    sc_trace(mVcdFile, conv_layer2_U0_start_full_n, "conv_layer2_U0_start_full_n");
    sc_trace(mVcdFile, conv_layer2_U0_start_write, "conv_layer2_U0_start_write");
    sc_trace(mVcdFile, pool_layer2_U0_start_full_n, "pool_layer2_U0_start_full_n");
    sc_trace(mVcdFile, pool_layer2_U0_start_write, "pool_layer2_U0_start_write");
    sc_trace(mVcdFile, fc_layer1_U0_start_full_n, "fc_layer1_U0_start_full_n");
    sc_trace(mVcdFile, fc_layer1_U0_start_write, "fc_layer1_U0_start_write");
    sc_trace(mVcdFile, fc_layer2_U0_start_full_n, "fc_layer2_U0_start_full_n");
    sc_trace(mVcdFile, fc_layer2_U0_start_write, "fc_layer2_U0_start_write");
    sc_trace(mVcdFile, fc_layer3_U0_start_full_n, "fc_layer3_U0_start_full_n");
    sc_trace(mVcdFile, fc_layer3_U0_start_write, "fc_layer3_U0_start_write");
#endif

    }
    mHdltvinHandle.open("nnet.hdltvin.dat");
    mHdltvoutHandle.open("nnet.hdltvout.dat");
}

nnet::~nnet() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete Loop_1_proc181_U0;
    delete conv_layer1_U0;
    delete pool_layer1_U0;
    delete conv_layer2_U0;
    delete pool_layer2_U0;
    delete fc_layer1_U0;
    delete fc_layer2_U0;
    delete fc_layer3_U0;
    delete image_in_V_V_U;
    delete conv1_out_V_V_U;
    delete pool1_out_V_V_U;
    delete conv2_out_V_V_U;
    delete pool2_out_V_V_U;
    delete fc1_out_V_V_U;
    delete fc2_out_V_V_U;
}

void nnet::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void nnet::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        conv_layer1_U0_ap_start = ap_const_logic_0;
    } else {
        conv_layer1_U0_ap_start = ap_const_logic_1;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        conv_layer2_U0_ap_start = ap_const_logic_0;
    } else {
        conv_layer2_U0_ap_start = ap_const_logic_1;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        fc_layer1_U0_ap_start = ap_const_logic_0;
    } else {
        fc_layer1_U0_ap_start = ap_const_logic_1;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        fc_layer2_U0_ap_start = ap_const_logic_0;
    } else {
        fc_layer2_U0_ap_start = ap_const_logic_1;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        fc_layer3_U0_ap_start = ap_const_logic_0;
    } else {
        fc_layer3_U0_ap_start = ap_const_logic_1;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        pool_layer1_U0_ap_start = ap_const_logic_0;
    } else {
        pool_layer1_U0_ap_start = ap_const_logic_1;
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        pool_layer2_U0_ap_start = ap_const_logic_0;
    } else {
        pool_layer2_U0_ap_start = ap_const_logic_1;
    }
}

void nnet::thread_Loop_1_proc181_U0_ap_continue() {
    Loop_1_proc181_U0_ap_continue = ap_const_logic_1;
}

void nnet::thread_Loop_1_proc181_U0_ap_start() {
    Loop_1_proc181_U0_ap_start = ap_start.read();
}

void nnet::thread_Loop_1_proc181_U0_start_full_n() {
    Loop_1_proc181_U0_start_full_n = ap_const_logic_1;
}

void nnet::thread_Loop_1_proc181_U0_start_write() {
    Loop_1_proc181_U0_start_write = ap_const_logic_0;
}

void nnet::thread_ap_done() {
    ap_done = fc_layer3_U0_ap_done.read();
}

void nnet::thread_ap_idle() {
    ap_idle = (Loop_1_proc181_U0_ap_idle.read() & conv_layer1_U0_ap_idle.read() & pool_layer1_U0_ap_idle.read() & conv_layer2_U0_ap_idle.read() & pool_layer2_U0_ap_idle.read() & fc_layer1_U0_ap_idle.read() & fc_layer2_U0_ap_idle.read() & fc_layer3_U0_ap_idle.read());
}

void nnet::thread_ap_ready() {
    ap_ready = fc_layer3_U0_ap_done.read();
}

void nnet::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_1;
}

void nnet::thread_ap_sync_done() {
    ap_sync_done = fc_layer3_U0_ap_done.read();
}

void nnet::thread_ap_sync_ready() {
    ap_sync_ready = ap_sync_done.read();
}

void nnet::thread_conv_layer1_U0_ap_continue() {
    conv_layer1_U0_ap_continue = ap_const_logic_1;
}

void nnet::thread_conv_layer1_U0_start_full_n() {
    conv_layer1_U0_start_full_n = ap_const_logic_1;
}

void nnet::thread_conv_layer1_U0_start_write() {
    conv_layer1_U0_start_write = ap_const_logic_0;
}

void nnet::thread_conv_layer2_U0_ap_continue() {
    conv_layer2_U0_ap_continue = ap_const_logic_1;
}

void nnet::thread_conv_layer2_U0_start_full_n() {
    conv_layer2_U0_start_full_n = ap_const_logic_1;
}

void nnet::thread_conv_layer2_U0_start_write() {
    conv_layer2_U0_start_write = ap_const_logic_0;
}

void nnet::thread_fc3_out_V_V_din() {
    fc3_out_V_V_din = fc_layer3_U0_out_V_V_din.read();
}

void nnet::thread_fc3_out_V_V_write() {
    fc3_out_V_V_write = fc_layer3_U0_out_V_V_write.read();
}

void nnet::thread_fc_layer1_U0_ap_continue() {
    fc_layer1_U0_ap_continue = ap_const_logic_1;
}

void nnet::thread_fc_layer1_U0_start_full_n() {
    fc_layer1_U0_start_full_n = ap_const_logic_1;
}

void nnet::thread_fc_layer1_U0_start_write() {
    fc_layer1_U0_start_write = ap_const_logic_0;
}

void nnet::thread_fc_layer2_U0_ap_continue() {
    fc_layer2_U0_ap_continue = ap_const_logic_1;
}

void nnet::thread_fc_layer2_U0_start_full_n() {
    fc_layer2_U0_start_full_n = ap_const_logic_1;
}

void nnet::thread_fc_layer2_U0_start_write() {
    fc_layer2_U0_start_write = ap_const_logic_0;
}

void nnet::thread_fc_layer3_U0_ap_continue() {
    fc_layer3_U0_ap_continue = ap_const_logic_1;
}

void nnet::thread_fc_layer3_U0_start_full_n() {
    fc_layer3_U0_start_full_n = ap_const_logic_1;
}

void nnet::thread_fc_layer3_U0_start_write() {
    fc_layer3_U0_start_write = ap_const_logic_0;
}

void nnet::thread_pool_layer1_U0_ap_continue() {
    pool_layer1_U0_ap_continue = ap_const_logic_1;
}

void nnet::thread_pool_layer1_U0_start_full_n() {
    pool_layer1_U0_start_full_n = ap_const_logic_1;
}

void nnet::thread_pool_layer1_U0_start_write() {
    pool_layer1_U0_start_write = ap_const_logic_0;
}

void nnet::thread_pool_layer2_U0_ap_continue() {
    pool_layer2_U0_ap_continue = ap_const_logic_1;
}

void nnet::thread_pool_layer2_U0_start_full_n() {
    pool_layer2_U0_start_full_n = ap_const_logic_1;
}

void nnet::thread_pool_layer2_U0_start_write() {
    pool_layer2_U0_start_write = ap_const_logic_0;
}

void nnet::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvoutHandle << mComma << "{"  <<  " \"fc3_out_V_V_din\" :  \"" << fc3_out_V_V_din.read() << "\" ";
        mHdltvinHandle << mComma << "{"  <<  " \"fc3_out_V_V_full_n\" :  \"" << fc3_out_V_V_full_n.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"fc3_out_V_V_write\" :  \"" << fc3_out_V_V_write.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst\" :  \"" << ap_rst.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

