set moduleName conv_layer2
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {conv_layer2}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_V_V int 8 regular {fifo 1 volatile }  }
	{ in_V_V int 8 regular {fifo 0 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_V_V_din sc_out sc_lv 8 signal 0 } 
	{ out_V_V_full_n sc_in sc_logic 1 signal 0 } 
	{ out_V_V_write sc_out sc_logic 1 signal 0 } 
	{ in_V_V_dout sc_in sc_lv 8 signal 1 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ in_V_V_read sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }} , 
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "conv_layer2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5789", "EstimateLatencyMax" : "8155",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"Port" : [
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_layer2_weights_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_buff_val_V_1_1_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_0_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_2_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_3_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_4_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_5_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_6_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_7_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_8_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_9_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_1_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "scale_1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_layer2_bias_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scale_0_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer2_weights_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer2_bias_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_0_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_sum_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mul_mul_24s_b0s_U19", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U20", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U21", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U22", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b2s_U23", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b3s_U24", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b4t_U25", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U26", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U27", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U28", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U29", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b3s_U30", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U31", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U32", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U33", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U34", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U35", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b1s_U36", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b3s_U37", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8b5t_U38", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_1b6t_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_layer2 {
		out_V_V {Type O LastRead -1 FirstWrite 11}
		in_V_V {Type I LastRead 20 FirstWrite -1}
		conv_layer2_weights_s {Type I LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_1_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_0_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_2_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_3_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_4_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_5_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_6_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_7_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_8_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_9_s {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_10 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_10 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12_8 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_13 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_14 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_15 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_16 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_17 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_18 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_19 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_20 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_21 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_22 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_23 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_24 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_25 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_26 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_27 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_28 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_29 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_30 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_31 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_32 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_33 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_34 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_35 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_36 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_37 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_38 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_39 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_40 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_41 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_42 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_43 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_44 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_45 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_46 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_47 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_48 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_49 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_50 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_51 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_52 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_53 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_54 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_55 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_56 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_57 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_58 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_59 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_60 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_61 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_62 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_63 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_64 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_65 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_66 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_67 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_68 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_69 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_70 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_71 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_72 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_73 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_74 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_75 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_76 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_77 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_78 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_79 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_80 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_81 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_82 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_83 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_84 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_85 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_86 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_87 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_88 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_89 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_90 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_91 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_92 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_93 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_94 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_95 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_96 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_97 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_98 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_99 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_9 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_8 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_7 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_6 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_5 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_4 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_3 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_2 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10_1 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_10 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_9 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_8 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_7 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_6 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_5 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_4 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_3 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_2 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11_1 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_11 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12_7 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12_6 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12_5 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12_4 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12_3 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12_2 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12_1 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_1_12 {Type IO LastRead -1 FirstWrite -1}
		scale_1_V {Type I LastRead -1 FirstWrite -1}
		conv_layer2_bias_V {Type I LastRead -1 FirstWrite -1}
		scale_0_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5789", "Max" : "8155"}
	, {"Name" : "Interval", "Min" : "5789", "Max" : "8155"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 8 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 8 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
}
