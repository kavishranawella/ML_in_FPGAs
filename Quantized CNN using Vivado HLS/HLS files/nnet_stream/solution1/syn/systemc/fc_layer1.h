// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _fc_layer1_HH_
#define _fc_layer1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "nnet_mac_muladd_8b9t.h"
#include "nnet_mac_muladd_3cau.h"
#include "fc_layer1_fc_layeb7t.h"
#include "fc_layer1_fc_layeb8t.h"
#include "fc_layer1_output_V.h"

namespace ap_rtl {

struct fc_layer1 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > out_V_V_din;
    sc_in< sc_logic > out_V_V_full_n;
    sc_out< sc_logic > out_V_V_write;
    sc_in< sc_lv<8> > in_V_V_dout;
    sc_in< sc_logic > in_V_V_empty_n;
    sc_out< sc_logic > in_V_V_read;
    sc_signal< sc_lv<31> > ap_var_for_const0;


    // Module declarations
    fc_layer1(sc_module_name name);
    SC_HAS_PROCESS(fc_layer1);

    ~fc_layer1();

    sc_trace_file* mVcdFile;

    fc_layer1_fc_layeb7t* fc_layer1_weights_V_U;
    fc_layer1_fc_layeb8t* fc_layer1_bias_V_U;
    fc_layer1_output_V* output_V_U;
    nnet_mac_muladd_8b9t<1,1,8,9,24,24>* nnet_mac_muladd_8b9t_U56;
    nnet_mac_muladd_8b9t<1,1,8,9,24,24>* nnet_mac_muladd_8b9t_U57;
    nnet_mac_muladd_8b9t<1,1,8,9,24,24>* nnet_mac_muladd_8b9t_U58;
    nnet_mac_muladd_8b9t<1,1,8,9,24,24>* nnet_mac_muladd_8b9t_U59;
    nnet_mac_muladd_3cau<1,1,31,10,44,44>* nnet_mac_muladd_3cau_U60;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<12> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<17> > fc_layer1_weights_V_address0;
    sc_signal< sc_logic > fc_layer1_weights_V_ce0;
    sc_signal< sc_lv<8> > fc_layer1_weights_V_q0;
    sc_signal< sc_lv<17> > fc_layer1_weights_V_address1;
    sc_signal< sc_logic > fc_layer1_weights_V_ce1;
    sc_signal< sc_lv<8> > fc_layer1_weights_V_q1;
    sc_signal< sc_lv<7> > fc_layer1_bias_V_address0;
    sc_signal< sc_logic > fc_layer1_bias_V_ce0;
    sc_signal< sc_lv<10> > fc_layer1_bias_V_q0;
    sc_signal< sc_logic > out_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > in_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > exitcond6_fu_411_p2;
    sc_signal< sc_lv<17> > read_temp_V_cast_fu_341_p1;
    sc_signal< sc_lv<17> > read_temp_V_cast_reg_953;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<7> > i_6_fu_351_p2;
    sc_signal< sc_lv<7> > i_6_reg_961;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > exitcond5_fu_345_p2;
    sc_signal< sc_lv<17> > tmp_4_cast_fu_427_p1;
    sc_signal< sc_lv<17> > tmp_4_cast_reg_974;
    sc_signal< bool > ap_block_state4;
    sc_signal< sc_lv<17> > p_1_cast_fu_431_p1;
    sc_signal< sc_lv<17> > p_1_cast_reg_982;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond2_fu_435_p2;
    sc_signal< sc_lv<7> > output_V_addr_11_reg_998;
    sc_signal< sc_lv<7> > output_V_addr_12_reg_1009;
    sc_signal< sc_lv<10> > j_3_fu_537_p2;
    sc_signal< sc_lv<24> > grp_fu_914_p3;
    sc_signal< sc_lv<24> > tmp_9_reg_1020;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<24> > grp_fu_921_p3;
    sc_signal< sc_lv<24> > tmp_104_1_reg_1025;
    sc_signal< sc_lv<7> > output_V_addr_13_reg_1035;
    sc_signal< sc_lv<7> > output_V_addr_14_reg_1045;
    sc_signal< sc_lv<7> > i_10_3_fu_653_p2;
    sc_signal< sc_lv<7> > i_10_3_reg_1050;
    sc_signal< sc_lv<24> > grp_fu_928_p3;
    sc_signal< sc_lv<24> > tmp_104_2_reg_1055;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<24> > grp_fu_935_p3;
    sc_signal< sc_lv<24> > tmp_104_3_reg_1060;
    sc_signal< sc_lv<7> > i_7_fu_673_p2;
    sc_signal< sc_lv<7> > i_7_reg_1068;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<1> > exitcond_fu_667_p2;
    sc_signal< sc_lv<44> > p_Val2_s_fu_689_p2;
    sc_signal< sc_lv<44> > p_Val2_s_reg_1083;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<10> > f_op_V_3_reg_1088;
    sc_signal< sc_lv<8> > tmp_61_fu_786_p1;
    sc_signal< sc_lv<8> > tmp_61_reg_1093;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > isneg_reg_1098;
    sc_signal< sc_lv<16> > tmp_14_reg_1104;
    sc_signal< sc_lv<7> > output_V_address0;
    sc_signal< sc_logic > output_V_ce0;
    sc_signal< sc_logic > output_V_we0;
    sc_signal< sc_lv<24> > output_V_d0;
    sc_signal< sc_lv<24> > output_V_q0;
    sc_signal< sc_lv<7> > output_V_address1;
    sc_signal< sc_logic > output_V_ce1;
    sc_signal< sc_logic > output_V_we1;
    sc_signal< sc_lv<24> > output_V_d1;
    sc_signal< sc_lv<24> > output_V_q1;
    sc_signal< sc_lv<7> > i_reg_284;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<10> > j_reg_296;
    sc_signal< sc_lv<7> > i1_reg_308;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<7> > i2_reg_320;
    sc_signal< sc_lv<64> > tmp_40_cast_fu_387_p1;
    sc_signal< sc_lv<64> > tmp_s_fu_392_p1;
    sc_signal< sc_lv<64> > tmp_44_cast_fu_481_p1;
    sc_signal< sc_lv<64> > tmp_8_fu_441_p1;
    sc_signal< sc_lv<64> > tmp_48_cast_fu_532_p1;
    sc_signal< sc_lv<64> > tmp_103_1_fu_492_p1;
    sc_signal< sc_lv<64> > tmp_52_cast_fu_597_p1;
    sc_signal< sc_lv<64> > tmp_103_2_fu_557_p1;
    sc_signal< sc_lv<64> > tmp_56_cast_fu_648_p1;
    sc_signal< sc_lv<64> > tmp_103_3_fu_608_p1;
    sc_signal< sc_lv<64> > tmp_5_fu_679_p1;
    sc_signal< sc_lv<24> > p_9_cast_fu_406_p1;
    sc_signal< sc_lv<8> > lhs_V_fu_331_p0;
    sc_signal< sc_lv<9> > lhs_V_fu_331_p1;
    sc_signal< sc_lv<9> > r_V_fu_335_p2;
    sc_signal< sc_lv<16> > tmp_37_fu_357_p3;
    sc_signal< sc_lv<13> > tmp_38_fu_369_p3;
    sc_signal< sc_lv<17> > p_shl1_cast_fu_377_p1;
    sc_signal< sc_lv<17> > p_shl_cast_fu_365_p1;
    sc_signal< sc_lv<17> > tmp_39_fu_381_p2;
    sc_signal< sc_lv<8> > p_9_fu_401_p0;
    sc_signal< sc_lv<9> > p_9_fu_401_p1;
    sc_signal< sc_lv<17> > p_9_fu_401_p2;
    sc_signal< sc_lv<9> > lhs_V_3_fu_417_p1;
    sc_signal< sc_lv<9> > r_V_5_fu_421_p2;
    sc_signal< sc_lv<16> > tmp_40_fu_446_p3;
    sc_signal< sc_lv<13> > tmp_41_fu_458_p3;
    sc_signal< sc_lv<17> > p_shl9_cast_fu_466_p1;
    sc_signal< sc_lv<17> > p_shl8_cast_fu_454_p1;
    sc_signal< sc_lv<17> > tmp_42_fu_470_p2;
    sc_signal< sc_lv<17> > tmp_43_fu_476_p2;
    sc_signal< sc_lv<7> > i_10_s_fu_486_p2;
    sc_signal< sc_lv<16> > tmp_44_fu_497_p3;
    sc_signal< sc_lv<13> > tmp_45_fu_509_p3;
    sc_signal< sc_lv<17> > p_shl7_cast_fu_517_p1;
    sc_signal< sc_lv<17> > p_shl6_cast_fu_505_p1;
    sc_signal< sc_lv<17> > tmp_46_fu_521_p2;
    sc_signal< sc_lv<17> > tmp_47_fu_527_p2;
    sc_signal< sc_lv<7> > i_10_1_fu_551_p2;
    sc_signal< sc_lv<16> > tmp_48_fu_562_p3;
    sc_signal< sc_lv<13> > tmp_49_fu_574_p3;
    sc_signal< sc_lv<17> > p_shl5_cast_fu_582_p1;
    sc_signal< sc_lv<17> > p_shl4_cast_fu_570_p1;
    sc_signal< sc_lv<17> > tmp_50_fu_586_p2;
    sc_signal< sc_lv<17> > tmp_51_fu_592_p2;
    sc_signal< sc_lv<7> > i_10_2_fu_602_p2;
    sc_signal< sc_lv<16> > tmp_52_fu_613_p3;
    sc_signal< sc_lv<13> > tmp_53_fu_625_p3;
    sc_signal< sc_lv<17> > p_shl3_cast_fu_633_p1;
    sc_signal< sc_lv<17> > p_shl2_cast_fu_621_p1;
    sc_signal< sc_lv<17> > tmp_54_fu_637_p2;
    sc_signal< sc_lv<17> > tmp_55_fu_643_p2;
    sc_signal< sc_lv<24> > p_Val2_s_fu_689_p1;
    sc_signal< sc_lv<44> > grp_fu_942_p3;
    sc_signal< sc_lv<16> > tmp_13_fu_705_p4;
    sc_signal< sc_lv<27> > tmp_59_fu_725_p1;
    sc_signal< sc_lv<1> > tmp_57_fu_698_p3;
    sc_signal< sc_lv<1> > r_fu_728_p2;
    sc_signal< sc_lv<1> > not_s_i_i3_fu_734_p2;
    sc_signal< sc_lv<1> > r_i_i3_fu_740_p2;
    sc_signal< sc_lv<1> > qbit_fu_718_p3;
    sc_signal< sc_lv<1> > qb_assign_3_fu_746_p2;
    sc_signal< sc_lv<17> > tmp_16_cast_fu_752_p1;
    sc_signal< sc_lv<17> > p_Val2_15_cast_fu_714_p1;
    sc_signal< sc_lv<17> > p_Val2_13_fu_756_p2;
    sc_signal< sc_lv<1> > tmp_60_fu_762_p3;
    sc_signal< sc_lv<17> > p_a_V_i_fu_770_p3;
    sc_signal< sc_lv<23> > p_a_V_i_cast1_fu_778_p1;
    sc_signal< sc_lv<24> > p_a_V_i_cast_fu_782_p1;
    sc_signal< sc_lv<24> > r_V_7_fu_790_p2;
    sc_signal< sc_lv<8> > p_Val2_15_fu_814_p2;
    sc_signal< sc_lv<1> > newsignbit_fu_819_p3;
    sc_signal< sc_lv<1> > p_not_i_i_fu_827_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_fu_832_p2;
    sc_signal< sc_lv<1> > tmp_7_fu_838_p2;
    sc_signal< sc_lv<1> > p_not38_i_i_fu_855_p2;
    sc_signal< sc_lv<1> > newsignbit_0_not_i_i_fu_849_p2;
    sc_signal< sc_lv<1> > brmerge39_i_i_fu_860_p2;
    sc_signal< sc_lv<1> > underflow_fu_866_p2;
    sc_signal< sc_lv<1> > overflow_fu_843_p2;
    sc_signal< sc_lv<1> > underflow_not_fu_877_p2;
    sc_signal< sc_lv<1> > brmerge_i_i_i_fu_871_p2;
    sc_signal< sc_lv<1> > brmerge_fu_883_p2;
    sc_signal< sc_lv<8> > p_Val2_35_mux_fu_889_p3;
    sc_signal< sc_lv<8> > p_Val2_s_525_fu_897_p3;
    sc_signal< sc_lv<9> > grp_fu_914_p1;
    sc_signal< sc_lv<9> > grp_fu_921_p1;
    sc_signal< sc_lv<9> > grp_fu_928_p1;
    sc_signal< sc_lv<9> > grp_fu_935_p1;
    sc_signal< sc_lv<12> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<12> ap_ST_fsm_state1;
    static const sc_lv<12> ap_ST_fsm_state2;
    static const sc_lv<12> ap_ST_fsm_state3;
    static const sc_lv<12> ap_ST_fsm_state4;
    static const sc_lv<12> ap_ST_fsm_state5;
    static const sc_lv<12> ap_ST_fsm_state6;
    static const sc_lv<12> ap_ST_fsm_state7;
    static const sc_lv<12> ap_ST_fsm_state8;
    static const sc_lv<12> ap_ST_fsm_state9;
    static const sc_lv<12> ap_ST_fsm_state10;
    static const sc_lv<12> ap_ST_fsm_state11;
    static const sc_lv<12> ap_ST_fsm_state12;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<9> ap_const_lv9_2;
    static const sc_lv<7> ap_const_lv7_78;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<10> ap_const_lv10_240;
    static const sc_lv<7> ap_const_lv7_2;
    static const sc_lv<7> ap_const_lv7_3;
    static const sc_lv<7> ap_const_lv7_4;
    static const sc_lv<44> ap_const_lv44_8169D;
    static const sc_lv<32> ap_const_lv32_2B;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<27> ap_const_lv27_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<17> ap_const_lv17_0;
    static const sc_lv<24> ap_const_lv24_FFFFFE;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<8> ap_const_lv8_FE;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<16> ap_const_lv16_FFFF;
    static const sc_lv<8> ap_const_lv8_7F;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<31> ap_const_lv31_816A0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_block_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_brmerge39_i_i_fu_860_p2();
    void thread_brmerge_fu_883_p2();
    void thread_brmerge_i_i_fu_832_p2();
    void thread_brmerge_i_i_i_fu_871_p2();
    void thread_exitcond2_fu_435_p2();
    void thread_exitcond5_fu_345_p2();
    void thread_exitcond6_fu_411_p2();
    void thread_exitcond_fu_667_p2();
    void thread_fc_layer1_bias_V_address0();
    void thread_fc_layer1_bias_V_ce0();
    void thread_fc_layer1_weights_V_address0();
    void thread_fc_layer1_weights_V_address1();
    void thread_fc_layer1_weights_V_ce0();
    void thread_fc_layer1_weights_V_ce1();
    void thread_grp_fu_914_p1();
    void thread_grp_fu_921_p1();
    void thread_grp_fu_928_p1();
    void thread_grp_fu_935_p1();
    void thread_i_10_1_fu_551_p2();
    void thread_i_10_2_fu_602_p2();
    void thread_i_10_3_fu_653_p2();
    void thread_i_10_s_fu_486_p2();
    void thread_i_6_fu_351_p2();
    void thread_i_7_fu_673_p2();
    void thread_in_V_V_blk_n();
    void thread_in_V_V_read();
    void thread_j_3_fu_537_p2();
    void thread_lhs_V_3_fu_417_p1();
    void thread_lhs_V_fu_331_p0();
    void thread_lhs_V_fu_331_p1();
    void thread_newsignbit_0_not_i_i_fu_849_p2();
    void thread_newsignbit_fu_819_p3();
    void thread_not_s_i_i3_fu_734_p2();
    void thread_out_V_V_blk_n();
    void thread_out_V_V_din();
    void thread_out_V_V_write();
    void thread_output_V_address0();
    void thread_output_V_address1();
    void thread_output_V_ce0();
    void thread_output_V_ce1();
    void thread_output_V_d0();
    void thread_output_V_d1();
    void thread_output_V_we0();
    void thread_output_V_we1();
    void thread_overflow_fu_843_p2();
    void thread_p_1_cast_fu_431_p1();
    void thread_p_9_cast_fu_406_p1();
    void thread_p_9_fu_401_p0();
    void thread_p_9_fu_401_p1();
    void thread_p_9_fu_401_p2();
    void thread_p_Val2_13_fu_756_p2();
    void thread_p_Val2_15_cast_fu_714_p1();
    void thread_p_Val2_15_fu_814_p2();
    void thread_p_Val2_35_mux_fu_889_p3();
    void thread_p_Val2_s_525_fu_897_p3();
    void thread_p_Val2_s_fu_689_p1();
    void thread_p_Val2_s_fu_689_p2();
    void thread_p_a_V_i_cast1_fu_778_p1();
    void thread_p_a_V_i_cast_fu_782_p1();
    void thread_p_a_V_i_fu_770_p3();
    void thread_p_not38_i_i_fu_855_p2();
    void thread_p_not_i_i_fu_827_p2();
    void thread_p_shl1_cast_fu_377_p1();
    void thread_p_shl2_cast_fu_621_p1();
    void thread_p_shl3_cast_fu_633_p1();
    void thread_p_shl4_cast_fu_570_p1();
    void thread_p_shl5_cast_fu_582_p1();
    void thread_p_shl6_cast_fu_505_p1();
    void thread_p_shl7_cast_fu_517_p1();
    void thread_p_shl8_cast_fu_454_p1();
    void thread_p_shl9_cast_fu_466_p1();
    void thread_p_shl_cast_fu_365_p1();
    void thread_qb_assign_3_fu_746_p2();
    void thread_qbit_fu_718_p3();
    void thread_r_V_5_fu_421_p2();
    void thread_r_V_7_fu_790_p2();
    void thread_r_V_fu_335_p2();
    void thread_r_fu_728_p2();
    void thread_r_i_i3_fu_740_p2();
    void thread_read_temp_V_cast_fu_341_p1();
    void thread_tmp_103_1_fu_492_p1();
    void thread_tmp_103_2_fu_557_p1();
    void thread_tmp_103_3_fu_608_p1();
    void thread_tmp_13_fu_705_p4();
    void thread_tmp_16_cast_fu_752_p1();
    void thread_tmp_37_fu_357_p3();
    void thread_tmp_38_fu_369_p3();
    void thread_tmp_39_fu_381_p2();
    void thread_tmp_40_cast_fu_387_p1();
    void thread_tmp_40_fu_446_p3();
    void thread_tmp_41_fu_458_p3();
    void thread_tmp_42_fu_470_p2();
    void thread_tmp_43_fu_476_p2();
    void thread_tmp_44_cast_fu_481_p1();
    void thread_tmp_44_fu_497_p3();
    void thread_tmp_45_fu_509_p3();
    void thread_tmp_46_fu_521_p2();
    void thread_tmp_47_fu_527_p2();
    void thread_tmp_48_cast_fu_532_p1();
    void thread_tmp_48_fu_562_p3();
    void thread_tmp_49_fu_574_p3();
    void thread_tmp_4_cast_fu_427_p1();
    void thread_tmp_50_fu_586_p2();
    void thread_tmp_51_fu_592_p2();
    void thread_tmp_52_cast_fu_597_p1();
    void thread_tmp_52_fu_613_p3();
    void thread_tmp_53_fu_625_p3();
    void thread_tmp_54_fu_637_p2();
    void thread_tmp_55_fu_643_p2();
    void thread_tmp_56_cast_fu_648_p1();
    void thread_tmp_57_fu_698_p3();
    void thread_tmp_59_fu_725_p1();
    void thread_tmp_5_fu_679_p1();
    void thread_tmp_60_fu_762_p3();
    void thread_tmp_61_fu_786_p1();
    void thread_tmp_7_fu_838_p2();
    void thread_tmp_8_fu_441_p1();
    void thread_tmp_s_fu_392_p1();
    void thread_underflow_fu_866_p2();
    void thread_underflow_not_fu_877_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
