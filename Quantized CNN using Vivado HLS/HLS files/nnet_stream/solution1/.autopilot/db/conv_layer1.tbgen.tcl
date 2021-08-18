set moduleName conv_layer1
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
set C_modelName {conv_layer1}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108"],
		"CDFG" : "conv_layer1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "413536", "EstimateLatencyMax" : "420264",
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
			{"Name" : "conv_layer1_weights_s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scale_1_V4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_layer1_bias_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scale_0_V3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_buff_val_V_1179", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_32", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_33", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_34", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_35", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_36", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_37", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_38", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_39", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_40", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_41", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_42", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_43", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_44", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_45", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_46", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_47", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_48", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_49", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_50", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_51", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_52", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_53", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_54", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_55", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_56", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_57", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_58", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_59", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_60", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_61", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_62", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_63", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_64", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_65", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_66", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_67", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_68", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_69", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_70", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_71", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_72", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_73", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_74", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_75", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_76", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_77", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_78", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_79", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_80", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_81", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_82", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_83", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_84", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_85", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_86", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_87", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_88", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_89", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_90", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_91", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_92", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_93", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_94", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_95", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_96", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_97", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_98", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "conv_buff_val_V_99", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer1_weights_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_1_V4_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer1_bias_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scale_0_V3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_1179_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_5_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_6_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_7_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_8_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_9_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_10_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_11_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_12_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_13_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_14_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_15_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_16_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_17_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_18_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_19_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_20_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_21_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_22_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_23_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_24_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_25_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_26_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_27_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_28_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_29_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_30_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_31_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_32_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_33_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_34_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_35_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_36_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_37_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_38_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_39_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_40_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_41_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_42_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_43_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_44_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_45_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_46_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_47_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_48_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_49_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_50_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_51_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_52_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_53_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_54_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_55_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_56_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_57_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_58_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_59_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_60_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_61_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_62_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_63_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_64_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_65_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_66_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_67_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_68_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_69_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_70_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_71_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_72_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_73_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_74_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_75_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_76_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_77_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_78_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_79_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_80_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_81_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_82_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_83_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_84_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_85_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_86_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_87_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_88_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_89_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_90_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_91_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_92_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_93_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_94_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_95_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_96_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_97_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_98_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_buff_val_V_99_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.kernel_sum_V_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mux_1007_8_1_1_U3", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mac_muladd_8bTr_U4", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.nnet_mul_mul_24nsbUr_U5", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	conv_layer1 {
		out_V_V {Type O LastRead -1 FirstWrite 9}
		in_V_V {Type I LastRead 7 FirstWrite -1}
		conv_layer1_weights_s {Type I LastRead -1 FirstWrite -1}
		scale_1_V4 {Type I LastRead -1 FirstWrite -1}
		conv_layer1_bias_V {Type I LastRead -1 FirstWrite -1}
		scale_0_V3 {Type I LastRead -1 FirstWrite -1}
		conv_buff_val_V_1179 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_0 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_2 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_3 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_4 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_5 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_6 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_7 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_8 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_9 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_10 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_11 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_12 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_13 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_14 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_15 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_16 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_17 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_18 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_19 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_20 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_21 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_22 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_23 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_24 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_25 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_26 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_27 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_28 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_29 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_30 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_31 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_32 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_33 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_34 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_35 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_36 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_37 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_38 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_39 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_40 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_41 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_42 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_43 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_44 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_45 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_46 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_47 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_48 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_49 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_50 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_51 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_52 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_53 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_54 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_55 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_56 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_57 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_58 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_59 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_60 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_61 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_62 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_63 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_64 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_65 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_66 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_67 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_68 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_69 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_70 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_71 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_72 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_73 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_74 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_75 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_76 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_77 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_78 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_79 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_80 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_81 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_82 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_83 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_84 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_85 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_86 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_87 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_88 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_89 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_90 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_91 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_92 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_93 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_94 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_95 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_96 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_97 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_98 {Type IO LastRead -1 FirstWrite -1}
		conv_buff_val_V_99 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "413536", "Max" : "420264"}
	, {"Name" : "Interval", "Min" : "413536", "Max" : "420264"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 8 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 8 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
}
