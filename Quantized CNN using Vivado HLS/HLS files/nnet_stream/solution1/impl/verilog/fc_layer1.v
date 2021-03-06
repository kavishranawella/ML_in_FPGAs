// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fc_layer1 (
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

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [7:0] out_V_V_din;
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
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [16:0] fc_layer1_weights_V_address0;
reg    fc_layer1_weights_V_ce0;
wire  signed [7:0] fc_layer1_weights_V_q0;
reg   [16:0] fc_layer1_weights_V_address1;
reg    fc_layer1_weights_V_ce1;
wire  signed [7:0] fc_layer1_weights_V_q1;
wire   [6:0] fc_layer1_bias_V_address0;
reg    fc_layer1_bias_V_ce0;
wire   [9:0] fc_layer1_bias_V_q0;
reg    out_V_V_blk_n;
wire    ap_CS_fsm_state12;
reg    in_V_V_blk_n;
wire    ap_CS_fsm_state4;
wire   [0:0] exitcond6_fu_411_p2;
wire  signed [16:0] read_temp_V_cast_fu_341_p1;
reg  signed [16:0] read_temp_V_cast_reg_953;
reg    ap_block_state1;
wire   [6:0] i_6_fu_351_p2;
reg   [6:0] i_6_reg_961;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond5_fu_345_p2;
wire   [16:0] tmp_4_cast_fu_427_p1;
reg   [16:0] tmp_4_cast_reg_974;
reg    ap_block_state4;
wire  signed [16:0] p_1_cast_fu_431_p1;
reg  signed [16:0] p_1_cast_reg_982;
wire    ap_CS_fsm_state5;
wire   [0:0] exitcond2_fu_435_p2;
reg   [6:0] output_V_addr_11_reg_998;
reg   [6:0] output_V_addr_12_reg_1009;
wire   [9:0] j_3_fu_537_p2;
wire  signed [23:0] grp_fu_914_p3;
reg  signed [23:0] tmp_9_reg_1020;
wire    ap_CS_fsm_state6;
wire  signed [23:0] grp_fu_921_p3;
reg  signed [23:0] tmp_104_1_reg_1025;
reg   [6:0] output_V_addr_13_reg_1035;
reg   [6:0] output_V_addr_14_reg_1045;
wire   [6:0] i_10_3_fu_653_p2;
reg   [6:0] i_10_3_reg_1050;
wire  signed [23:0] grp_fu_928_p3;
reg  signed [23:0] tmp_104_2_reg_1055;
wire    ap_CS_fsm_state7;
wire  signed [23:0] grp_fu_935_p3;
reg  signed [23:0] tmp_104_3_reg_1060;
wire   [6:0] i_7_fu_673_p2;
reg   [6:0] i_7_reg_1068;
wire    ap_CS_fsm_state9;
wire   [0:0] exitcond_fu_667_p2;
wire   [43:0] p_Val2_s_fu_689_p2;
reg   [43:0] p_Val2_s_reg_1083;
wire    ap_CS_fsm_state10;
reg  signed [9:0] f_op_V_3_reg_1088;
wire   [7:0] tmp_61_fu_786_p1;
reg   [7:0] tmp_61_reg_1093;
wire    ap_CS_fsm_state11;
reg   [0:0] isneg_reg_1098;
reg   [15:0] tmp_14_reg_1104;
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
reg   [6:0] i_reg_284;
wire    ap_CS_fsm_state3;
reg   [9:0] j_reg_296;
reg   [6:0] i1_reg_308;
wire    ap_CS_fsm_state8;
reg   [6:0] i2_reg_320;
wire   [63:0] tmp_40_cast_fu_387_p1;
wire   [63:0] tmp_s_fu_392_p1;
wire   [63:0] tmp_44_cast_fu_481_p1;
wire   [63:0] tmp_8_fu_441_p1;
wire   [63:0] tmp_48_cast_fu_532_p1;
wire   [63:0] tmp_103_1_fu_492_p1;
wire   [63:0] tmp_52_cast_fu_597_p1;
wire   [63:0] tmp_103_2_fu_557_p1;
wire   [63:0] tmp_56_cast_fu_648_p1;
wire   [63:0] tmp_103_3_fu_608_p1;
wire   [63:0] tmp_5_fu_679_p1;
wire  signed [23:0] p_9_cast_fu_406_p1;
wire  signed [7:0] lhs_V_fu_331_p0;
wire  signed [8:0] lhs_V_fu_331_p1;
wire   [8:0] r_V_fu_335_p2;
wire   [15:0] tmp_37_fu_357_p3;
wire   [12:0] tmp_38_fu_369_p3;
wire   [16:0] p_shl1_cast_fu_377_p1;
wire   [16:0] p_shl_cast_fu_365_p1;
wire   [16:0] tmp_39_fu_381_p2;
wire  signed [7:0] p_9_fu_401_p0;
wire  signed [8:0] p_9_fu_401_p1;
wire   [16:0] p_9_fu_401_p2;
wire  signed [8:0] lhs_V_3_fu_417_p1;
wire   [8:0] r_V_5_fu_421_p2;
wire   [15:0] tmp_40_fu_446_p3;
wire   [12:0] tmp_41_fu_458_p3;
wire   [16:0] p_shl9_cast_fu_466_p1;
wire   [16:0] p_shl8_cast_fu_454_p1;
wire   [16:0] tmp_42_fu_470_p2;
wire   [16:0] tmp_43_fu_476_p2;
wire   [6:0] i_10_s_fu_486_p2;
wire   [15:0] tmp_44_fu_497_p3;
wire   [12:0] tmp_45_fu_509_p3;
wire   [16:0] p_shl7_cast_fu_517_p1;
wire   [16:0] p_shl6_cast_fu_505_p1;
wire   [16:0] tmp_46_fu_521_p2;
wire   [16:0] tmp_47_fu_527_p2;
wire   [6:0] i_10_1_fu_551_p2;
wire   [15:0] tmp_48_fu_562_p3;
wire   [12:0] tmp_49_fu_574_p3;
wire   [16:0] p_shl5_cast_fu_582_p1;
wire   [16:0] p_shl4_cast_fu_570_p1;
wire   [16:0] tmp_50_fu_586_p2;
wire   [16:0] tmp_51_fu_592_p2;
wire   [6:0] i_10_2_fu_602_p2;
wire   [15:0] tmp_52_fu_613_p3;
wire   [12:0] tmp_53_fu_625_p3;
wire   [16:0] p_shl3_cast_fu_633_p1;
wire   [16:0] p_shl2_cast_fu_621_p1;
wire   [16:0] tmp_54_fu_637_p2;
wire   [16:0] tmp_55_fu_643_p2;
wire  signed [23:0] p_Val2_s_fu_689_p1;
wire  signed [43:0] grp_fu_942_p3;
wire   [15:0] tmp_13_fu_705_p4;
wire   [26:0] tmp_59_fu_725_p1;
wire   [0:0] tmp_57_fu_698_p3;
wire   [0:0] r_fu_728_p2;
wire   [0:0] not_s_i_i3_fu_734_p2;
wire   [0:0] r_i_i3_fu_740_p2;
wire   [0:0] qbit_fu_718_p3;
wire   [0:0] qb_assign_3_fu_746_p2;
wire   [16:0] tmp_16_cast_fu_752_p1;
wire  signed [16:0] p_Val2_15_cast_fu_714_p1;
wire   [16:0] p_Val2_13_fu_756_p2;
wire   [0:0] tmp_60_fu_762_p3;
wire  signed [16:0] p_a_V_i_fu_770_p3;
wire  signed [22:0] p_a_V_i_cast1_fu_778_p1;
wire   [23:0] p_a_V_i_cast_fu_782_p1;
wire   [23:0] r_V_7_fu_790_p2;
wire   [7:0] p_Val2_15_fu_814_p2;
wire   [0:0] newsignbit_fu_819_p3;
wire   [0:0] p_not_i_i_fu_827_p2;
wire   [0:0] brmerge_i_i_fu_832_p2;
wire   [0:0] tmp_7_fu_838_p2;
wire   [0:0] p_not38_i_i_fu_855_p2;
wire   [0:0] newsignbit_0_not_i_i_fu_849_p2;
wire   [0:0] brmerge39_i_i_fu_860_p2;
wire   [0:0] underflow_fu_866_p2;
wire   [0:0] overflow_fu_843_p2;
wire   [0:0] underflow_not_fu_877_p2;
wire   [0:0] brmerge_i_i_i_fu_871_p2;
wire   [0:0] brmerge_fu_883_p2;
wire   [7:0] p_Val2_35_mux_fu_889_p3;
wire   [7:0] p_Val2_s_525_fu_897_p3;
wire  signed [8:0] grp_fu_914_p1;
wire  signed [8:0] grp_fu_921_p1;
wire  signed [8:0] grp_fu_928_p1;
wire  signed [8:0] grp_fu_935_p1;
reg   [11:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 12'd1;
end

fc_layer1_fc_layeb7t #(
    .DataWidth( 8 ),
    .AddressRange( 69120 ),
    .AddressWidth( 17 ))
fc_layer1_weights_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fc_layer1_weights_V_address0),
    .ce0(fc_layer1_weights_V_ce0),
    .q0(fc_layer1_weights_V_q0),
    .address1(fc_layer1_weights_V_address1),
    .ce1(fc_layer1_weights_V_ce1),
    .q1(fc_layer1_weights_V_q1)
);

fc_layer1_fc_layeb8t #(
    .DataWidth( 10 ),
    .AddressRange( 120 ),
    .AddressWidth( 7 ))
fc_layer1_bias_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(fc_layer1_bias_V_address0),
    .ce0(fc_layer1_bias_V_ce0),
    .q0(fc_layer1_bias_V_q0)
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

nnet_mac_muladd_8b9t #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
nnet_mac_muladd_8b9t_U56(
    .din0(fc_layer1_weights_V_q0),
    .din1(grp_fu_914_p1),
    .din2(output_V_q0),
    .dout(grp_fu_914_p3)
);

nnet_mac_muladd_8b9t #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
nnet_mac_muladd_8b9t_U57(
    .din0(fc_layer1_weights_V_q1),
    .din1(grp_fu_921_p1),
    .din2(output_V_q1),
    .dout(grp_fu_921_p3)
);

nnet_mac_muladd_8b9t #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
nnet_mac_muladd_8b9t_U58(
    .din0(fc_layer1_weights_V_q0),
    .din1(grp_fu_928_p1),
    .din2(output_V_q1),
    .dout(grp_fu_928_p3)
);

nnet_mac_muladd_8b9t #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
nnet_mac_muladd_8b9t_U59(
    .din0(fc_layer1_weights_V_q1),
    .din1(grp_fu_935_p1),
    .din2(output_V_q0),
    .dout(grp_fu_935_p3)
);

nnet_mac_muladd_3cau #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 31 ),
    .din1_WIDTH( 10 ),
    .din2_WIDTH( 44 ),
    .dout_WIDTH( 44 ))
nnet_mac_muladd_3cau_U60(
    .din0(31'd530080),
    .din1(f_op_V_3_reg_1088),
    .din2(p_Val2_s_reg_1083),
    .dout(grp_fu_942_p3)
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
        end else if (((1'b1 == ap_CS_fsm_state9) & (exitcond_fu_667_p2 == 1'd1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i1_reg_308 <= i_10_3_reg_1050;
    end else if ((~((exitcond6_fu_411_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond6_fu_411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        i1_reg_308 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond6_fu_411_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond6_fu_411_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        i2_reg_320 <= 7'd0;
    end else if (((out_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        i2_reg_320 <= i_7_reg_1068;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        i_reg_284 <= i_6_reg_961;
    end else if ((~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        i_reg_284 <= 7'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond5_fu_345_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_296 <= 10'd1;
    end else if (((1'b1 == ap_CS_fsm_state5) & (exitcond2_fu_435_p2 == 1'd1))) begin
        j_reg_296 <= j_3_fu_537_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        f_op_V_3_reg_1088 <= fc_layer1_bias_V_q0;
        p_Val2_s_reg_1083 <= p_Val2_s_fu_689_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        i_10_3_reg_1050 <= i_10_3_fu_653_p2;
        output_V_addr_13_reg_1035[0] <= tmp_103_2_fu_557_p1[0];
output_V_addr_13_reg_1035[6 : 2] <= tmp_103_2_fu_557_p1[6 : 2];
        output_V_addr_14_reg_1045[6 : 2] <= tmp_103_3_fu_608_p1[6 : 2];
        tmp_104_1_reg_1025 <= grp_fu_921_p3;
        tmp_9_reg_1020 <= grp_fu_914_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_6_reg_961 <= i_6_fu_351_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        i_7_reg_1068 <= i_7_fu_673_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        isneg_reg_1098 <= r_V_7_fu_790_p2[32'd23];
        tmp_14_reg_1104 <= {{r_V_7_fu_790_p2[23:8]}};
        tmp_61_reg_1093 <= tmp_61_fu_786_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((exitcond2_fu_435_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        output_V_addr_11_reg_998 <= tmp_8_fu_441_p1;
        output_V_addr_12_reg_1009[6 : 1] <= tmp_103_1_fu_492_p1[6 : 1];
    end
end

always @ (posedge ap_clk) begin
    if ((~((exitcond6_fu_411_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond6_fu_411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        p_1_cast_reg_982 <= p_1_cast_fu_431_p1;
        tmp_4_cast_reg_974[9 : 0] <= tmp_4_cast_fu_427_p1[9 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        read_temp_V_cast_reg_953 <= read_temp_V_cast_fu_341_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_104_2_reg_1055 <= grp_fu_928_p3;
        tmp_104_3_reg_1060 <= grp_fu_935_p3;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (exitcond_fu_667_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state9) & (exitcond_fu_667_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        fc_layer1_bias_V_ce0 = 1'b1;
    end else begin
        fc_layer1_bias_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fc_layer1_weights_V_address0 = tmp_52_cast_fu_597_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        fc_layer1_weights_V_address0 = tmp_44_cast_fu_481_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        fc_layer1_weights_V_address0 = tmp_40_cast_fu_387_p1;
    end else begin
        fc_layer1_weights_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        fc_layer1_weights_V_address1 = tmp_56_cast_fu_648_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        fc_layer1_weights_V_address1 = tmp_48_cast_fu_532_p1;
    end else begin
        fc_layer1_weights_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        fc_layer1_weights_V_ce0 = 1'b1;
    end else begin
        fc_layer1_weights_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        fc_layer1_weights_V_ce1 = 1'b1;
    end else begin
        fc_layer1_weights_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((((exitcond6_fu_411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        in_V_V_blk_n = in_V_V_empty_n;
    end else begin
        in_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((~((exitcond6_fu_411_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond6_fu_411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4)) | (~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        in_V_V_read = 1'b1;
    end else begin
        in_V_V_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        out_V_V_blk_n = out_V_V_full_n;
    end else begin
        out_V_V_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((out_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
        out_V_V_write = 1'b1;
    end else begin
        out_V_V_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_V_address0 = output_V_addr_14_reg_1045;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_address0 = output_V_addr_12_reg_1009;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_V_address0 = tmp_103_3_fu_608_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_V_address0 = tmp_8_fu_441_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_V_address0 = tmp_s_fu_392_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_V_address0 = 64'd0;
    end else begin
        output_V_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        output_V_address1 = tmp_5_fu_679_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        output_V_address1 = output_V_addr_13_reg_1035;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_address1 = output_V_addr_11_reg_998;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        output_V_address1 = tmp_103_2_fu_557_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        output_V_address1 = tmp_103_1_fu_492_p1;
    end else begin
        output_V_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5))) begin
        output_V_ce1 = 1'b1;
    end else begin
        output_V_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_V_d0 = tmp_104_3_reg_1060;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_d0 = tmp_104_1_reg_1025;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        output_V_d0 = p_9_cast_fu_406_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        output_V_d0 = 24'd0;
    end else begin
        output_V_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        output_V_d1 = tmp_104_2_reg_1055;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        output_V_d1 = tmp_9_reg_1020;
    end else begin
        output_V_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state7) | (~((in_V_V_empty_n == 1'b0) | (ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)))) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
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
            if (((exitcond5_fu_345_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if ((~((exitcond6_fu_411_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond6_fu_411_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else if ((~((exitcond6_fu_411_p2 == 1'd0) & (in_V_V_empty_n == 1'b0)) & (exitcond6_fu_411_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (exitcond2_fu_435_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (exitcond_fu_667_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((out_V_V_full_n == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
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
    ap_block_state4 = ((exitcond6_fu_411_p2 == 1'd0) & (in_V_V_empty_n == 1'b0));
end

assign brmerge39_i_i_fu_860_p2 = (p_not38_i_i_fu_855_p2 | newsignbit_0_not_i_i_fu_849_p2);

assign brmerge_fu_883_p2 = (underflow_not_fu_877_p2 | overflow_fu_843_p2);

assign brmerge_i_i_fu_832_p2 = (p_not_i_i_fu_827_p2 | newsignbit_fu_819_p3);

assign brmerge_i_i_i_fu_871_p2 = (underflow_fu_866_p2 | overflow_fu_843_p2);

assign exitcond2_fu_435_p2 = ((i1_reg_308 == 7'd120) ? 1'b1 : 1'b0);

assign exitcond5_fu_345_p2 = ((i_reg_284 == 7'd120) ? 1'b1 : 1'b0);

assign exitcond6_fu_411_p2 = ((j_reg_296 == 10'd576) ? 1'b1 : 1'b0);

assign exitcond_fu_667_p2 = ((i2_reg_320 == 7'd120) ? 1'b1 : 1'b0);

assign fc_layer1_bias_V_address0 = tmp_5_fu_679_p1;

assign grp_fu_914_p1 = p_1_cast_reg_982;

assign grp_fu_921_p1 = p_1_cast_reg_982;

assign grp_fu_928_p1 = p_1_cast_reg_982;

assign grp_fu_935_p1 = p_1_cast_reg_982;

assign i_10_1_fu_551_p2 = (i1_reg_308 | 7'd2);

assign i_10_2_fu_602_p2 = (i1_reg_308 | 7'd3);

assign i_10_3_fu_653_p2 = (i1_reg_308 + 7'd4);

assign i_10_s_fu_486_p2 = (i1_reg_308 | 7'd1);

assign i_6_fu_351_p2 = (i_reg_284 + 7'd1);

assign i_7_fu_673_p2 = (i2_reg_320 + 7'd1);

assign j_3_fu_537_p2 = (j_reg_296 + 10'd1);

assign lhs_V_3_fu_417_p1 = $signed(in_V_V_dout);

assign lhs_V_fu_331_p0 = in_V_V_dout;

assign lhs_V_fu_331_p1 = lhs_V_fu_331_p0;

assign newsignbit_0_not_i_i_fu_849_p2 = (newsignbit_fu_819_p3 ^ 1'd1);

assign newsignbit_fu_819_p3 = p_Val2_15_fu_814_p2[32'd7];

assign not_s_i_i3_fu_734_p2 = (tmp_57_fu_698_p3 ^ 1'd1);

assign out_V_V_din = ((brmerge_fu_883_p2[0:0] === 1'b1) ? p_Val2_35_mux_fu_889_p3 : p_Val2_s_525_fu_897_p3);

assign overflow_fu_843_p2 = (tmp_7_fu_838_p2 & brmerge_i_i_fu_832_p2);

assign p_1_cast_fu_431_p1 = $signed(r_V_5_fu_421_p2);

assign p_9_cast_fu_406_p1 = $signed(p_9_fu_401_p2);

assign p_9_fu_401_p0 = fc_layer1_weights_V_q0;

assign p_9_fu_401_p1 = read_temp_V_cast_reg_953;

assign p_9_fu_401_p2 = ($signed(p_9_fu_401_p0) * $signed(p_9_fu_401_p1));

assign p_Val2_13_fu_756_p2 = ($signed(tmp_16_cast_fu_752_p1) + $signed(p_Val2_15_cast_fu_714_p1));

assign p_Val2_15_cast_fu_714_p1 = $signed(tmp_13_fu_705_p4);

assign p_Val2_15_fu_814_p2 = ($signed(8'd254) + $signed(tmp_61_reg_1093));

assign p_Val2_35_mux_fu_889_p3 = ((brmerge_i_i_i_fu_871_p2[0:0] === 1'b1) ? 8'd127 : p_Val2_15_fu_814_p2);

assign p_Val2_s_525_fu_897_p3 = ((underflow_fu_866_p2[0:0] === 1'b1) ? 8'd128 : p_Val2_15_fu_814_p2);

assign p_Val2_s_fu_689_p1 = output_V_q1;

assign p_Val2_s_fu_689_p2 = ($signed({{1'b0}, {44'd530077}}) * $signed(p_Val2_s_fu_689_p1));

assign p_a_V_i_cast1_fu_778_p1 = p_a_V_i_fu_770_p3;

assign p_a_V_i_cast_fu_782_p1 = $unsigned(p_a_V_i_cast1_fu_778_p1);

assign p_a_V_i_fu_770_p3 = ((tmp_60_fu_762_p3[0:0] === 1'b1) ? 17'd0 : p_Val2_13_fu_756_p2);

assign p_not38_i_i_fu_855_p2 = ((tmp_14_reg_1104 != 16'd65535) ? 1'b1 : 1'b0);

assign p_not_i_i_fu_827_p2 = ((tmp_14_reg_1104 != 16'd0) ? 1'b1 : 1'b0);

assign p_shl1_cast_fu_377_p1 = tmp_38_fu_369_p3;

assign p_shl2_cast_fu_621_p1 = tmp_52_fu_613_p3;

assign p_shl3_cast_fu_633_p1 = tmp_53_fu_625_p3;

assign p_shl4_cast_fu_570_p1 = tmp_48_fu_562_p3;

assign p_shl5_cast_fu_582_p1 = tmp_49_fu_574_p3;

assign p_shl6_cast_fu_505_p1 = tmp_44_fu_497_p3;

assign p_shl7_cast_fu_517_p1 = tmp_45_fu_509_p3;

assign p_shl8_cast_fu_454_p1 = tmp_40_fu_446_p3;

assign p_shl9_cast_fu_466_p1 = tmp_41_fu_458_p3;

assign p_shl_cast_fu_365_p1 = tmp_37_fu_357_p3;

assign qb_assign_3_fu_746_p2 = (r_i_i3_fu_740_p2 & qbit_fu_718_p3);

assign qbit_fu_718_p3 = grp_fu_942_p3[32'd27];

assign r_V_5_fu_421_p2 = ($signed(lhs_V_3_fu_417_p1) + $signed(9'd2));

assign r_V_7_fu_790_p2 = ($signed(24'd16777214) + $signed(p_a_V_i_cast_fu_782_p1));

assign r_V_fu_335_p2 = ($signed(lhs_V_fu_331_p1) + $signed(9'd2));

assign r_fu_728_p2 = ((tmp_59_fu_725_p1 != 27'd0) ? 1'b1 : 1'b0);

assign r_i_i3_fu_740_p2 = (r_fu_728_p2 | not_s_i_i3_fu_734_p2);

assign read_temp_V_cast_fu_341_p1 = $signed(r_V_fu_335_p2);

assign tmp_103_1_fu_492_p1 = i_10_s_fu_486_p2;

assign tmp_103_2_fu_557_p1 = i_10_1_fu_551_p2;

assign tmp_103_3_fu_608_p1 = i_10_2_fu_602_p2;

assign tmp_13_fu_705_p4 = {{grp_fu_942_p3[43:28]}};

assign tmp_16_cast_fu_752_p1 = qb_assign_3_fu_746_p2;

assign tmp_37_fu_357_p3 = {{i_reg_284}, {9'd0}};

assign tmp_38_fu_369_p3 = {{i_reg_284}, {6'd0}};

assign tmp_39_fu_381_p2 = (p_shl1_cast_fu_377_p1 + p_shl_cast_fu_365_p1);

assign tmp_40_cast_fu_387_p1 = tmp_39_fu_381_p2;

assign tmp_40_fu_446_p3 = {{i1_reg_308}, {9'd0}};

assign tmp_41_fu_458_p3 = {{i1_reg_308}, {6'd0}};

assign tmp_42_fu_470_p2 = (p_shl9_cast_fu_466_p1 + p_shl8_cast_fu_454_p1);

assign tmp_43_fu_476_p2 = (tmp_42_fu_470_p2 + tmp_4_cast_reg_974);

assign tmp_44_cast_fu_481_p1 = tmp_43_fu_476_p2;

assign tmp_44_fu_497_p3 = {{i_10_s_fu_486_p2}, {9'd0}};

assign tmp_45_fu_509_p3 = {{i_10_s_fu_486_p2}, {6'd0}};

assign tmp_46_fu_521_p2 = (p_shl7_cast_fu_517_p1 + p_shl6_cast_fu_505_p1);

assign tmp_47_fu_527_p2 = (tmp_46_fu_521_p2 + tmp_4_cast_reg_974);

assign tmp_48_cast_fu_532_p1 = tmp_47_fu_527_p2;

assign tmp_48_fu_562_p3 = {{i_10_1_fu_551_p2}, {9'd0}};

assign tmp_49_fu_574_p3 = {{i_10_1_fu_551_p2}, {6'd0}};

assign tmp_4_cast_fu_427_p1 = j_reg_296;

assign tmp_50_fu_586_p2 = (p_shl5_cast_fu_582_p1 + p_shl4_cast_fu_570_p1);

assign tmp_51_fu_592_p2 = (tmp_50_fu_586_p2 + tmp_4_cast_reg_974);

assign tmp_52_cast_fu_597_p1 = tmp_51_fu_592_p2;

assign tmp_52_fu_613_p3 = {{i_10_2_fu_602_p2}, {9'd0}};

assign tmp_53_fu_625_p3 = {{i_10_2_fu_602_p2}, {6'd0}};

assign tmp_54_fu_637_p2 = (p_shl3_cast_fu_633_p1 + p_shl2_cast_fu_621_p1);

assign tmp_55_fu_643_p2 = (tmp_54_fu_637_p2 + tmp_4_cast_reg_974);

assign tmp_56_cast_fu_648_p1 = tmp_55_fu_643_p2;

assign tmp_57_fu_698_p3 = grp_fu_942_p3[32'd43];

assign tmp_59_fu_725_p1 = grp_fu_942_p3[26:0];

assign tmp_5_fu_679_p1 = i2_reg_320;

assign tmp_60_fu_762_p3 = p_Val2_13_fu_756_p2[32'd16];

assign tmp_61_fu_786_p1 = p_a_V_i_fu_770_p3[7:0];

assign tmp_7_fu_838_p2 = (isneg_reg_1098 ^ 1'd1);

assign tmp_8_fu_441_p1 = i1_reg_308;

assign tmp_s_fu_392_p1 = i_reg_284;

assign underflow_fu_866_p2 = (isneg_reg_1098 & brmerge39_i_i_fu_860_p2);

assign underflow_not_fu_877_p2 = (underflow_fu_866_p2 ^ 1'd1);

always @ (posedge ap_clk) begin
    tmp_4_cast_reg_974[16:10] <= 7'b0000000;
    output_V_addr_12_reg_1009[0] <= 1'b1;
    output_V_addr_13_reg_1035[1] <= 1'b1;
    output_V_addr_14_reg_1045[1:0] <= 2'b11;
end

endmodule //fc_layer1
