// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fc_layer3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        out_V_V_din,
        out_V_V_full_n,
        out_V_V_write,
        in_V_V_dout,
        in_V_V_empty_n,
        in_V_V_read
);

parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [31:0] out_V_V_din;
input   out_V_V_full_n;
output   out_V_V_write;
input  [7:0] in_V_V_dout;
input   in_V_V_empty_n;
output   in_V_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg out_V_V_write;
reg in_V_V_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [9:0] fc_layer3_weights_V_address0;
reg    fc_layer3_weights_V_ce0;
wire   [7:0] fc_layer3_weights_V_q0;
reg   [9:0] fc_layer3_weights_V_address1;
reg    fc_layer3_weights_V_ce1;
wire   [7:0] fc_layer3_weights_V_q1;
wire   [3:0] fc_layer3_bias_V_address0;
reg    fc_layer3_bias_V_ce0;
wire   [9:0] fc_layer3_bias_V_q0;
reg    out_V_V_blk_n;
wire    ap_CS_fsm_state14;
reg    in_V_V_blk_n;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond2_fu_400_p2;
reg  signed [7:0] reg_336;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state8;
reg  signed [7:0] reg_340;
wire  signed [16:0] read_temp_V_cast_fu_354_p1;
reg  signed [16:0] read_temp_V_cast_reg_843;
reg    ap_block_state1;
wire   [3:0] i_2_fu_369_p2;
reg   [3:0] i_2_reg_851;
wire    ap_CS_fsm_state2;
wire   [9:0] next_mul_fu_375_p2;
reg   [9:0] next_mul_reg_856;
wire   [0:0] exitcond1_fu_363_p2;
wire   [10:0] tmp_1_cast1_fu_416_p1;
reg   [10:0] tmp_1_cast1_reg_869;
reg    ap_block_state4;
wire   [9:0] tmp_1_cast_fu_420_p1;
reg   [9:0] tmp_1_cast_reg_875;
wire  signed [16:0] p_2_cast_fu_424_p1;
reg  signed [16:0] p_2_cast_reg_881;
wire    ap_CS_fsm_state5;
wire   [3:0] i_4_s_fu_436_p2;
reg   [3:0] i_4_s_reg_894;
reg   [6:0] output_V_addr_3_reg_904;
reg   [6:0] output_V_addr_4_reg_910;
wire   [3:0] i_4_1_fu_467_p2;
reg   [3:0] i_4_1_reg_916;
wire    ap_CS_fsm_state7;
wire   [0:0] exitcond17_2_fu_473_p2;
wire   [2:0] i_4_2_fu_491_p2;
reg   [2:0] i_4_2_reg_929;
wire   [3:0] i_4_3_fu_505_p2;
reg   [3:0] i_4_3_reg_939;
wire   [6:0] j_1_fu_511_p2;
reg   [6:0] output_V_addr_5_reg_949;
reg   [6:0] output_V_addr_6_reg_954;
wire   [3:0] i_3_fu_539_p2;
reg   [3:0] i_3_reg_962;
wire    ap_CS_fsm_state10;
wire   [0:0] exitcond_fu_533_p2;
wire   [43:0] p_Val2_s_fu_555_p2;
reg  signed [43:0] p_Val2_s_reg_977;
wire    ap_CS_fsm_state11;
reg  signed [9:0] f_op_V_1_reg_982;
wire   [0:0] qb_assign_1_fu_612_p2;
reg   [0:0] qb_assign_1_reg_987;
wire    ap_CS_fsm_state12;
reg   [7:0] tmp_7_reg_992;
reg   [0:0] isneg_reg_997;
wire   [0:0] p_not_i_fu_655_p2;
reg   [0:0] p_not_i_reg_1003;
wire   [0:0] p_not38_i_fu_661_p2;
reg   [0:0] p_not38_i_reg_1008;
wire   [7:0] this_assign_1_fu_749_p3;
reg  signed [7:0] this_assign_1_reg_1013;
wire    ap_CS_fsm_state13;
reg   [6:0] output_V_address0;
reg    output_V_ce0;
reg    output_V_we0;
reg   [23:0] output_V_d0;
wire   [23:0] output_V_q0;
reg   [6:0] output_V_address1;
reg    output_V_ce1;
reg    output_V_we1;
reg   [23:0] output_V_d1;
wire   [23:0] output_V_q1;
reg   [3:0] i_reg_278;
wire    ap_CS_fsm_state3;
reg   [9:0] phi_mul_reg_290;
reg   [6:0] j_reg_301;
reg   [3:0] i1_reg_313;
wire    ap_CS_fsm_state9;
reg   [3:0] i2_reg_325;
wire   [63:0] phi_mul_cast_fu_358_p1;
wire   [63:0] tmp_s_fu_381_p1;
wire   [63:0] tmp_12_cast_fu_432_p1;
wire  signed [63:0] tmp_14_cast_fu_446_p1;
wire   [63:0] tmp_3_fu_450_p1;
wire   [63:0] tmp_48_1_fu_455_p1;
wire  signed [63:0] tmp_16_cast_fu_483_p1;
wire   [63:0] tmp_18_cast_fu_501_p1;
wire   [63:0] tmp_48_2_fu_517_p1;
wire   [63:0] tmp_48_3_fu_521_p1;
wire   [63:0] tmp_2_fu_545_p1;
wire  signed [31:0] tmp_V_fu_836_p2;
wire  signed [23:0] p_1_cast_fu_395_p1;
wire  signed [23:0] grp_fu_776_p3;
wire  signed [23:0] grp_fu_784_p3;
wire  signed [23:0] grp_fu_808_p3;
wire  signed [23:0] grp_fu_816_p3;
wire  signed [7:0] lhs_V_fu_344_p0;
wire  signed [8:0] lhs_V_fu_344_p1;
wire   [8:0] r_V_fu_348_p2;
wire  signed [8:0] p_1_fu_390_p0;
wire  signed [7:0] p_1_fu_390_p1;
wire   [16:0] p_1_fu_390_p2;
wire  signed [8:0] lhs_V_1_fu_406_p1;
wire   [8:0] r_V_1_fu_410_p2;
wire   [9:0] grp_fu_760_p3;
wire   [10:0] grp_fu_768_p3;
wire   [10:0] grp_fu_792_p3;
wire   [2:0] tmp_22_fu_487_p1;
wire   [9:0] grp_fu_800_p3;
wire  signed [23:0] p_Val2_s_fu_555_p1;
wire  signed [43:0] grp_fu_824_p3;
wire   [15:0] tmp_6_fu_571_p4;
wire   [26:0] tmp_19_fu_591_p1;
wire   [0:0] tmp_13_fu_564_p3;
wire   [0:0] r_fu_594_p2;
wire   [0:0] not_s_i_i1_fu_600_p2;
wire   [0:0] r_i_i1_fu_606_p2;
wire   [0:0] qbit_fu_584_p3;
wire  signed [16:0] p_Val2_3_cast_fu_580_p1;
wire   [16:0] tmp_6_cast_fu_618_p1;
wire   [16:0] p_Val2_3_fu_631_p2;
wire   [8:0] tmp_10_fu_645_p4;
wire   [7:0] tmp_8_fu_667_p1;
wire   [7:0] p_Val2_4_fu_670_p2;
wire   [0:0] newsignbit_fu_675_p3;
wire   [0:0] brmerge_i_fu_683_p2;
wire   [0:0] tmp_9_fu_688_p2;
wire   [0:0] newsignbit_0_not_i_fu_699_p2;
wire   [0:0] brmerge39_i_fu_705_p2;
wire   [0:0] underflow_fu_710_p2;
wire   [0:0] overflow_fu_693_p2;
wire   [0:0] underflow_not_fu_721_p2;
wire   [0:0] brmerge_i_i_fu_715_p2;
wire   [0:0] brmerge_fu_727_p2;
wire   [7:0] p_Val2_11_mux_fu_733_p3;
wire   [7:0] p_Val2_s_511_fu_741_p3;
wire   [3:0] grp_fu_760_p0;
wire   [7:0] grp_fu_760_p1;
wire   [6:0] grp_fu_760_p2;
wire   [3:0] grp_fu_768_p0;
wire   [7:0] grp_fu_768_p1;
wire   [6:0] grp_fu_768_p2;
wire  signed [8:0] grp_fu_776_p0;
wire  signed [8:0] grp_fu_784_p0;
wire   [7:0] grp_fu_792_p0;
wire   [3:0] grp_fu_792_p1;
wire   [6:0] grp_fu_792_p2;
wire   [7:0] grp_fu_800_p0;
wire   [2:0] grp_fu_800_p1;
wire   [6:0] grp_fu_800_p2;
wire  signed [8:0] grp_fu_808_p0;
wire  signed [8:0] grp_fu_816_p0;
wire   [24:0] tmp_V_fu_836_p0;
reg   [13:0] ap_NS_fsm;
wire   [9:0] grp_fu_760_p00;
wire   [10:0] grp_fu_768_p00;
wire   [10:0] grp_fu_792_p10;
wire   [9:0] grp_fu_800_p10;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 14'd1;
end

fc_layer3_fc_layeceu #(
    .DataWidth( 8 ),
    .AddressRange( 840 ),
    .AddressWidth( 10 ))
fc_layer3_weights_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fc_layer3_weights_V_address0),
    .ce0(fc_layer3_weights_V_ce0),
    .q0(fc_layer3_weights_V_q0),
    .address1(fc_layer3_weights_V_address1),
    .ce1(fc_layer3_weights_V_ce1),
    .q1(fc_layer3_weights_V_q1)
);

fc_layer3_fc_layecfu #(
    .DataWidth( 10 ),
    .AddressRange( 10 ),
    .AddressWidth( 4 ))
fc_layer3_bias_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fc_layer3_bias_V_address0),
    .ce0(fc_layer3_bias_V_ce0),
    .q0(fc_layer3_bias_V_q0)
);

fc_layer1_output_V #(
    .DataWidth( 24 ),
    .AddressRange( 120 ),
    .AddressWidth( 7 ))
output_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(output_V_address0),
    .ce0(output_V_ce0),
    .we0(output_V_we0),
    .d0(output_V_d0),
    .q0(output_V_q0),
    .address1(output_V_address1),
    .ce1(output_V_ce1),
    .we1(output_V_we1),
    .d1(output_V_d1),
    .q1(output_V_q1)
);

nnet_mac_muladd_4cgu #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 4 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 7 ),
    .dout_WIDTH( 10 ))
nnet_mac_muladd_4cgu_U79(
    .din0(grp_fu_760_p0),
    .din1(grp_fu_760_p1),
    .din2(grp_fu_760_p2),
    .dout(grp_fu_760_p3)
);

nnet_mac_muladd_4chv #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 4 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 7 ),
    .dout_WIDTH( 11 ))
nnet_mac_muladd_4chv_U80(
    .din0(grp_fu_768_p0),
    .din1(grp_fu_768_p1),
    .din2(grp_fu_768_p2),
    .dout(grp_fu_768_p3)
);

nnet_mac_muladd_9civ #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
nnet_mac_muladd_9civ_U81(
    .din0(grp_fu_776_p0),
    .din1(reg_336),
    .din2(output_V_q0),
    .dout(grp_fu_776_p3)
);

nnet_mac_muladd_9civ #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
nnet_mac_muladd_9civ_U82(
    .din0(grp_fu_784_p0),
    .din1(reg_340),
    .din2(output_V_q1),
    .dout(grp_fu_784_p3)
);

nnet_mac_muladd_8cjv #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 4 ),
    .din2_WIDTH( 7 ),
    .dout_WIDTH( 11 ))
nnet_mac_muladd_8cjv_U83(
    .din0(grp_fu_792_p0),
    .din1(grp_fu_792_p1),
    .din2(grp_fu_792_p2),
    .dout(grp_fu_792_p3)
);

nnet_mac_muladd_8ckv #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 3 ),
    .din2_WIDTH( 7 ),
    .dout_WIDTH( 10 ))
nnet_mac_muladd_8ckv_U84(
    .din0(grp_fu_800_p0),
    .din1(grp_fu_800_p1),
    .din2(grp_fu_800_p2),
    .dout(grp_fu_800_p3)
);

nnet_mac_muladd_9civ #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
nnet_mac_muladd_9civ_U85(
    .din0(grp_fu_808_p0),
    .din1(reg_336),
    .din2(output_V_q1),
    .dout(grp_fu_808_p3)
);

nnet_mac_muladd_9civ #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
nnet_mac_muladd_9civ_U86(
    .din0(grp_fu_816_p0),
    .din1(reg_340),
    .din2(output_V_q0),
    .dout(grp_fu_816_p3)
);

nnet_mac_muladd_3clv #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 31 ),
    .din1_WIDTH( 10 ),
    .din2_WIDTH( 44 ),
    .dout_WIDTH( 44 ))
nnet_mac_muladd_3clv_U87(
    .din0(31'd647673),
    .din1(f_op_V_1_reg_982),
    .din2(p_Val2_s_reg_977),
    .dout(grp_fu_824_p3)
);

nnet_mul_mul_25nscmv #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 25 ),
    .din1_WIDTH( 8 ),
    .dout_WIDTH( 32 ))
nnet_mul_mul_25nscmv_U88(
    .din0(tmp_V_fu_836_p0),
    .din1(this_assign_1_reg_1013),
    .dout(tmp_V_fu_836_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state10) & (exitcond_fu_533_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i1_reg_313 <= i_4_3_reg_939;
    end else if ((~((exitcond2_fu_400_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond2_fu_400_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i1_reg_313 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond2_fu_400_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond2_fu_400_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i2_reg_325 <= 4'd0;
    end else if (((out_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        i2_reg_325 <= i_3_reg_962;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_278 <= i_2_reg_851;
    end else if ((~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_278 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_363_p2 == 1'd1))) begin
        j_reg_301 <= 7'd1;
    end else if (((1'b1 == ap_CS_fsm_state7) & (exitcond17_2_fu_473_p2 == 1'd1))) begin
        j_reg_301 <= j_1_fu_511_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        phi_mul_reg_290 <= next_mul_reg_856;
    end else if ((~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_reg_290 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        f_op_V_1_reg_982 <= fc_layer3_bias_V_q0;
        p_Val2_s_reg_977 <= p_Val2_s_fu_555_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_2_reg_851 <= i_2_fu_369_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        i_3_reg_962 <= i_3_fu_539_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        i_4_1_reg_916[0] <= i_4_1_fu_467_p2[0];
i_4_1_reg_916[3 : 2] <= i_4_1_fu_467_p2[3 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond17_2_fu_473_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        i_4_2_reg_929[2] <= i_4_2_fu_491_p2[2];
        i_4_3_reg_939 <= i_4_3_fu_505_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        i_4_s_reg_894[3 : 1] <= i_4_s_fu_436_p2[3 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        isneg_reg_997 <= p_Val2_3_fu_631_p2[32'd16];
        p_not38_i_reg_1008 <= p_not38_i_fu_661_p2;
        p_not_i_reg_1003 <= p_not_i_fu_655_p2;
        qb_assign_1_reg_987 <= qb_assign_1_fu_612_p2;
        tmp_7_reg_992 <= {{grp_fu_824_p3[35:28]}};
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond1_fu_363_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        next_mul_reg_856 <= next_mul_fu_375_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        output_V_addr_3_reg_904[3 : 0] <= tmp_3_fu_450_p1[3 : 0];
        output_V_addr_4_reg_910[3 : 1] <= tmp_48_1_fu_455_p1[3 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_V_addr_5_reg_949[0] <= tmp_48_2_fu_517_p1[0];
output_V_addr_5_reg_949[3 : 2] <= tmp_48_2_fu_517_p1[3 : 2];
        output_V_addr_6_reg_954[2] <= tmp_48_3_fu_521_p1[2];
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond2_fu_400_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond2_fu_400_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        p_2_cast_reg_881 <= p_2_cast_fu_424_p1;
        tmp_1_cast1_reg_869[6 : 0] <= tmp_1_cast1_fu_416_p1[6 : 0];
        tmp_1_cast_reg_875[6 : 0] <= tmp_1_cast_fu_420_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        read_temp_V_cast_reg_843 <= read_temp_V_cast_fu_354_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        reg_336 <= fc_layer3_weights_V_q0;
        reg_340 <= fc_layer3_weights_V_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        this_assign_1_reg_1013 <= this_assign_1_fu_749_p3;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (exitcond_fu_533_p2 == 1'd1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (exitcond_fu_533_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        fc_layer3_bias_V_ce0 = 1'b1;
    end else begin
        fc_layer3_bias_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        fc_layer3_weights_V_address0 = tmp_16_cast_fu_483_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        fc_layer3_weights_V_address0 = tmp_12_cast_fu_432_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        fc_layer3_weights_V_address0 = phi_mul_cast_fu_358_p1;
    end else begin
        fc_layer3_weights_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        fc_layer3_weights_V_address1 = tmp_18_cast_fu_501_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        fc_layer3_weights_V_address1 = tmp_14_cast_fu_446_p1;
    end else begin
        fc_layer3_weights_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state2))) begin
        fc_layer3_weights_V_ce0 = 1'b1;
    end else begin
        fc_layer3_weights_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state5))) begin
        fc_layer3_weights_V_ce1 = 1'b1;
    end else begin
        fc_layer3_weights_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond2_fu_400_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((exitcond2_fu_400_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond2_fu_400_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        out_V_V_write = 1'b1;
    end else begin
        out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_address0 = output_V_addr_6_reg_954;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_V_address0 = tmp_48_3_fu_521_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_address0 = output_V_addr_4_reg_910;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_V_address0 = tmp_3_fu_450_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_V_address0 = tmp_s_fu_381_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_V_address0 = 64'd0;
    end else begin
        output_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        output_V_address1 = tmp_2_fu_545_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_address1 = output_V_addr_5_reg_949;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_V_address1 = tmp_48_2_fu_517_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_address1 = output_V_addr_3_reg_904;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_V_address1 = tmp_48_1_fu_455_p1;
    end else begin
        output_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7) | (~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state7))) begin
        output_V_ce1 = 1'b1;
    end else begin
        output_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_d0 = grp_fu_816_p3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_d0 = grp_fu_784_p3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_V_d0 = p_1_cast_fu_395_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_V_d0 = 24'd0;
    end else begin
        output_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_d1 = grp_fu_808_p3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_d1 = grp_fu_776_p3;
    end else begin
        output_V_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7) | (~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7))) begin
        output_V_we1 = 1'b1;
    end else begin
        output_V_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond1_fu_363_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if ((~((exitcond2_fu_400_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond2_fu_400_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if ((~((exitcond2_fu_400_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond2_fu_400_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (exitcond17_2_fu_473_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (exitcond_fu_533_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((out_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state4 = ((exitcond2_fu_400_p2 == 1'd0) & (in_V_V_empty_n == 1'b0));
end

assign brmerge39_i_fu_705_p2 = (p_not38_i_reg_1008 | newsignbit_0_not_i_fu_699_p2);

assign brmerge_fu_727_p2 = (underflow_not_fu_721_p2 | overflow_fu_693_p2);

assign brmerge_i_fu_683_p2 = (p_not_i_reg_1003 | newsignbit_fu_675_p3);

assign brmerge_i_i_fu_715_p2 = (underflow_fu_710_p2 | overflow_fu_693_p2);

assign exitcond17_2_fu_473_p2 = ((i_4_1_fu_467_p2 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond1_fu_363_p2 = ((i_reg_278 == 4'd10) ? 1'b1 : 1'b0);

assign exitcond2_fu_400_p2 = ((j_reg_301 == 7'd84) ? 1'b1 : 1'b0);

assign exitcond_fu_533_p2 = ((i2_reg_325 == 4'd10) ? 1'b1 : 1'b0);

assign fc_layer3_bias_V_address0 = tmp_2_fu_545_p1;

assign grp_fu_760_p0 = grp_fu_760_p00;

assign grp_fu_760_p00 = i1_reg_313;

assign grp_fu_760_p1 = 10'd84;

assign grp_fu_760_p2 = tmp_1_cast_reg_875;

assign grp_fu_768_p0 = grp_fu_768_p00;

assign grp_fu_768_p00 = i_4_s_fu_436_p2;

assign grp_fu_768_p1 = 11'd84;

assign grp_fu_768_p2 = tmp_1_cast1_reg_869;

assign grp_fu_776_p0 = p_2_cast_reg_881;

assign grp_fu_784_p0 = p_2_cast_reg_881;

assign grp_fu_792_p0 = 11'd84;

assign grp_fu_792_p1 = grp_fu_792_p10;

assign grp_fu_792_p10 = i_4_1_fu_467_p2;

assign grp_fu_792_p2 = tmp_1_cast1_reg_869;

assign grp_fu_800_p0 = 10'd84;

assign grp_fu_800_p1 = grp_fu_800_p10;

assign grp_fu_800_p10 = i_4_2_fu_491_p2;

assign grp_fu_800_p2 = tmp_1_cast_reg_875;

assign grp_fu_808_p0 = p_2_cast_reg_881;

assign grp_fu_816_p0 = p_2_cast_reg_881;

assign i_2_fu_369_p2 = (i_reg_278 + 4'd1);

assign i_3_fu_539_p2 = (i2_reg_325 + 4'd1);

assign i_4_1_fu_467_p2 = (i1_reg_313 | 4'd2);

assign i_4_2_fu_491_p2 = (tmp_22_fu_487_p1 | 3'd3);

assign i_4_3_fu_505_p2 = (4'd4 + i1_reg_313);

assign i_4_s_fu_436_p2 = (i1_reg_313 | 4'd1);

assign j_1_fu_511_p2 = (j_reg_301 + 7'd1);

assign lhs_V_1_fu_406_p1 = $signed(in_V_V_dout);

assign lhs_V_fu_344_p0 = in_V_V_dout;

assign lhs_V_fu_344_p1 = lhs_V_fu_344_p0;

assign newsignbit_0_not_i_fu_699_p2 = (newsignbit_fu_675_p3 ^ 1'd1);

assign newsignbit_fu_675_p3 = p_Val2_4_fu_670_p2[32'd7];

assign next_mul_fu_375_p2 = (phi_mul_reg_290 + 10'd84);

assign not_s_i_i1_fu_600_p2 = (tmp_13_fu_564_p3 ^ 1'd1);

assign out_V_V_din = tmp_V_fu_836_p2;

assign overflow_fu_693_p2 = (tmp_9_fu_688_p2 & brmerge_i_fu_683_p2);

assign p_1_cast_fu_395_p1 = $signed(p_1_fu_390_p2);

assign p_1_fu_390_p0 = read_temp_V_cast_reg_843;

assign p_1_fu_390_p1 = fc_layer3_weights_V_q0;

assign p_1_fu_390_p2 = ($signed(p_1_fu_390_p0) * $signed(p_1_fu_390_p1));

assign p_2_cast_fu_424_p1 = $signed(r_V_1_fu_410_p2);

assign p_Val2_11_mux_fu_733_p3 = ((brmerge_i_i_fu_715_p2[0:0] === 1'b1) ? 8'd127 : p_Val2_4_fu_670_p2);

assign p_Val2_3_cast_fu_580_p1 = $signed(tmp_6_fu_571_p4);

assign p_Val2_3_fu_631_p2 = ($signed(p_Val2_3_cast_fu_580_p1) + $signed(tmp_6_cast_fu_618_p1));

assign p_Val2_4_fu_670_p2 = (tmp_7_reg_992 + tmp_8_fu_667_p1);

assign p_Val2_s_511_fu_741_p3 = ((underflow_fu_710_p2[0:0] === 1'b1) ? 8'd128 : p_Val2_4_fu_670_p2);

assign p_Val2_s_fu_555_p1 = output_V_q1;

assign p_Val2_s_fu_555_p2 = ($signed({{1'b0}, {44'd647684}}) * $signed(p_Val2_s_fu_555_p1));

assign p_not38_i_fu_661_p2 = ((tmp_10_fu_645_p4 != 9'd511) ? 1'b1 : 1'b0);

assign p_not_i_fu_655_p2 = ((tmp_10_fu_645_p4 != 9'd0) ? 1'b1 : 1'b0);

assign phi_mul_cast_fu_358_p1 = phi_mul_reg_290;

assign qb_assign_1_fu_612_p2 = (r_i_i1_fu_606_p2 & qbit_fu_584_p3);

assign qbit_fu_584_p3 = grp_fu_824_p3[32'd27];

assign r_V_1_fu_410_p2 = ($signed(lhs_V_1_fu_406_p1) + $signed(9'd2));

assign r_V_fu_348_p2 = ($signed(lhs_V_fu_344_p1) + $signed(9'd2));

assign r_fu_594_p2 = ((tmp_19_fu_591_p1 != 27'd0) ? 1'b1 : 1'b0);

assign r_i_i1_fu_606_p2 = (r_fu_594_p2 | not_s_i_i1_fu_600_p2);

assign read_temp_V_cast_fu_354_p1 = $signed(r_V_fu_348_p2);

assign this_assign_1_fu_749_p3 = ((brmerge_fu_727_p2[0:0] === 1'b1) ? p_Val2_11_mux_fu_733_p3 : p_Val2_s_511_fu_741_p3);

assign tmp_10_fu_645_p4 = {{p_Val2_3_fu_631_p2[16:8]}};

assign tmp_12_cast_fu_432_p1 = grp_fu_760_p3;

assign tmp_13_fu_564_p3 = grp_fu_824_p3[32'd43];

assign tmp_14_cast_fu_446_p1 = $signed(grp_fu_768_p3);

assign tmp_16_cast_fu_483_p1 = $signed(grp_fu_792_p3);

assign tmp_18_cast_fu_501_p1 = grp_fu_800_p3;

assign tmp_19_fu_591_p1 = grp_fu_824_p3[26:0];

assign tmp_1_cast1_fu_416_p1 = j_reg_301;

assign tmp_1_cast_fu_420_p1 = j_reg_301;

assign tmp_22_fu_487_p1 = i1_reg_313[2:0];

assign tmp_2_fu_545_p1 = i2_reg_325;

assign tmp_3_fu_450_p1 = i1_reg_313;

assign tmp_48_1_fu_455_p1 = i_4_s_reg_894;

assign tmp_48_2_fu_517_p1 = i_4_1_reg_916;

assign tmp_48_3_fu_521_p1 = i_4_2_reg_929;

assign tmp_6_cast_fu_618_p1 = qb_assign_1_fu_612_p2;

assign tmp_6_fu_571_p4 = {{grp_fu_824_p3[43:28]}};

assign tmp_8_fu_667_p1 = qb_assign_1_reg_987;

assign tmp_9_fu_688_p2 = (isneg_reg_997 ^ 1'd1);

assign tmp_V_fu_836_p0 = 32'd12600860;

assign tmp_s_fu_381_p1 = i_reg_278;

assign underflow_fu_710_p2 = (isneg_reg_997 & brmerge39_i_fu_705_p2);

assign underflow_not_fu_721_p2 = (underflow_fu_710_p2 ^ 1'd1);

always @ (posedge ap_clk) begin
    tmp_1_cast1_reg_869[10:7] <= 4'b0000;
    tmp_1_cast_reg_875[9:7] <= 3'b000;
    i_4_s_reg_894[0] <= 1'b1;
    output_V_addr_3_reg_904[6:4] <= 3'b000;
    output_V_addr_4_reg_910[0] <= 1'b1;
    output_V_addr_4_reg_910[6:4] <= 3'b000;
    i_4_1_reg_916[1] <= 1'b1;
    i_4_2_reg_929[1:0] <= 2'b11;
    output_V_addr_5_reg_949[1] <= 1'b1;
    output_V_addr_5_reg_949[6:4] <= 3'b000;
    output_V_addr_6_reg_954[1:0] <= 2'b11;
    output_V_addr_6_reg_954[6:3] <= 4'b0000;
end

endmodule //fc_layer3
