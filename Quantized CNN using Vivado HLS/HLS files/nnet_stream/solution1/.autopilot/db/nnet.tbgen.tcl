set C_TypeInfoList {{ 
"nnet" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"fc3_out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_fixed<32, 4, 3, 3, 0> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_fixed<32, 4, 3, 3, 0>", {"hls_type": {"ap_fixed": [[[[], {"scalar": { "int": 32}}],[[], {"scalar": { "int": 4}}],[[], {"scalar": { "3": 3}}],[[], {"scalar": { "4": 3}}],[[], {"scalar": { "int": 0}}]],""]}}], 
"4": [ "ap_o_mode", {"enum": [[],[],[{"SC_SAT":  {"scalar": "__integer__"}},{"SC_SAT_ZERO":  {"scalar": "__integer__"}},{"SC_SAT_SYM":  {"scalar": "__integer__"}},{"SC_WRAP":  {"scalar": "__integer__"}},{"SC_WRAP_SM":  {"scalar": "__integer__"}}],""]}], 
"3": [ "ap_q_mode", {"enum": [[],[],[{"SC_RND":  {"scalar": "__integer__"}},{"SC_RND_ZERO":  {"scalar": "__integer__"}},{"SC_RND_MIN_INF":  {"scalar": "__integer__"}},{"SC_RND_INF":  {"scalar": "__integer__"}},{"SC_RND_CONV":  {"scalar": "__integer__"}},{"SC_TRN":  {"scalar": "__integer__"}},{"SC_TRN_ZERO":  {"scalar": "__integer__"}}],""]}],
"2": ["hls", ""]
}}
set moduleName nnet
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {nnet}
set C_modelType { void 0 }
set C_modelArgList {
	{ fc3_out_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "fc3_out_V_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "fc3_out.V.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ fc3_out_V_V_din sc_out sc_lv 32 signal 0 } 
	{ fc3_out_V_V_full_n sc_in sc_logic 1 signal 0 } 
	{ fc3_out_V_V_write sc_out sc_logic 1 signal 0 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
}
set NewPortList {[ 
	{ "name": "fc3_out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc3_out_V_V", "role": "din" }} , 
 	{ "name": "fc3_out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc3_out_V_V", "role": "full_n" }} , 
 	{ "name": "fc3_out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc3_out_V_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "112", "113", "140", "141", "150", "159", "173", "174", "175", "176", "177", "178", "179"],
		"CDFG" : "nnet",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "413538", "EstimateLatencyMax" : "420266",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [],
		"OutputProcess" : [
			{"ID" : "159", "Name" : "fc_layer3_U0"}],
		"Port" : [
			{"Name" : "fc3_out_V_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "fc_layer3_U0", "Port" : "out_V_V"}]},
			{"Name" : "input_activations_V_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "Loop_1_proc181_U0", "Port" : "input_activations_V_s"}]},
			{"Name" : "conv_layer1_weights_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_layer1_weights_s"}]},
			{"Name" : "scale_1_V4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "scale_1_V4"}]},
			{"Name" : "conv_layer1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_layer1_bias_V"}]},
			{"Name" : "scale_0_V3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "scale_0_V3"}]},
			{"Name" : "conv_buff_val_V_1179", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_1179"}]},
			{"Name" : "conv_buff_val_V_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_0"}]},
			{"Name" : "conv_buff_val_V_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_2"}]},
			{"Name" : "conv_buff_val_V_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_3"}]},
			{"Name" : "conv_buff_val_V_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_4"}]},
			{"Name" : "conv_buff_val_V_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_5"}]},
			{"Name" : "conv_buff_val_V_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_6"}]},
			{"Name" : "conv_buff_val_V_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_7"}]},
			{"Name" : "conv_buff_val_V_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_8"}]},
			{"Name" : "conv_buff_val_V_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_9"}]},
			{"Name" : "conv_buff_val_V_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_10"}]},
			{"Name" : "conv_buff_val_V_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_11"}]},
			{"Name" : "conv_buff_val_V_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_12"}]},
			{"Name" : "conv_buff_val_V_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_13"}]},
			{"Name" : "conv_buff_val_V_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_14"}]},
			{"Name" : "conv_buff_val_V_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_15"}]},
			{"Name" : "conv_buff_val_V_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_16"}]},
			{"Name" : "conv_buff_val_V_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_17"}]},
			{"Name" : "conv_buff_val_V_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_18"}]},
			{"Name" : "conv_buff_val_V_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_19"}]},
			{"Name" : "conv_buff_val_V_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_20"}]},
			{"Name" : "conv_buff_val_V_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_21"}]},
			{"Name" : "conv_buff_val_V_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_22"}]},
			{"Name" : "conv_buff_val_V_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_23"}]},
			{"Name" : "conv_buff_val_V_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_24"}]},
			{"Name" : "conv_buff_val_V_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_25"}]},
			{"Name" : "conv_buff_val_V_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_26"}]},
			{"Name" : "conv_buff_val_V_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_27"}]},
			{"Name" : "conv_buff_val_V_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_28"}]},
			{"Name" : "conv_buff_val_V_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_29"}]},
			{"Name" : "conv_buff_val_V_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_30"}]},
			{"Name" : "conv_buff_val_V_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_31"}]},
			{"Name" : "conv_buff_val_V_32", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_32"}]},
			{"Name" : "conv_buff_val_V_33", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_33"}]},
			{"Name" : "conv_buff_val_V_34", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_34"}]},
			{"Name" : "conv_buff_val_V_35", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_35"}]},
			{"Name" : "conv_buff_val_V_36", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_36"}]},
			{"Name" : "conv_buff_val_V_37", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_37"}]},
			{"Name" : "conv_buff_val_V_38", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_38"}]},
			{"Name" : "conv_buff_val_V_39", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_39"}]},
			{"Name" : "conv_buff_val_V_40", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_40"}]},
			{"Name" : "conv_buff_val_V_41", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_41"}]},
			{"Name" : "conv_buff_val_V_42", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_42"}]},
			{"Name" : "conv_buff_val_V_43", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_43"}]},
			{"Name" : "conv_buff_val_V_44", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_44"}]},
			{"Name" : "conv_buff_val_V_45", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_45"}]},
			{"Name" : "conv_buff_val_V_46", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_46"}]},
			{"Name" : "conv_buff_val_V_47", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_47"}]},
			{"Name" : "conv_buff_val_V_48", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_48"}]},
			{"Name" : "conv_buff_val_V_49", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_49"}]},
			{"Name" : "conv_buff_val_V_50", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_50"}]},
			{"Name" : "conv_buff_val_V_51", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_51"}]},
			{"Name" : "conv_buff_val_V_52", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_52"}]},
			{"Name" : "conv_buff_val_V_53", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_53"}]},
			{"Name" : "conv_buff_val_V_54", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_54"}]},
			{"Name" : "conv_buff_val_V_55", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_55"}]},
			{"Name" : "conv_buff_val_V_56", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_56"}]},
			{"Name" : "conv_buff_val_V_57", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_57"}]},
			{"Name" : "conv_buff_val_V_58", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_58"}]},
			{"Name" : "conv_buff_val_V_59", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_59"}]},
			{"Name" : "conv_buff_val_V_60", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_60"}]},
			{"Name" : "conv_buff_val_V_61", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_61"}]},
			{"Name" : "conv_buff_val_V_62", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_62"}]},
			{"Name" : "conv_buff_val_V_63", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_63"}]},
			{"Name" : "conv_buff_val_V_64", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_64"}]},
			{"Name" : "conv_buff_val_V_65", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_65"}]},
			{"Name" : "conv_buff_val_V_66", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_66"}]},
			{"Name" : "conv_buff_val_V_67", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_67"}]},
			{"Name" : "conv_buff_val_V_68", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_68"}]},
			{"Name" : "conv_buff_val_V_69", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_69"}]},
			{"Name" : "conv_buff_val_V_70", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_70"}]},
			{"Name" : "conv_buff_val_V_71", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_71"}]},
			{"Name" : "conv_buff_val_V_72", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_72"}]},
			{"Name" : "conv_buff_val_V_73", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_73"}]},
			{"Name" : "conv_buff_val_V_74", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_74"}]},
			{"Name" : "conv_buff_val_V_75", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_75"}]},
			{"Name" : "conv_buff_val_V_76", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_76"}]},
			{"Name" : "conv_buff_val_V_77", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_77"}]},
			{"Name" : "conv_buff_val_V_78", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_78"}]},
			{"Name" : "conv_buff_val_V_79", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_79"}]},
			{"Name" : "conv_buff_val_V_80", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_80"}]},
			{"Name" : "conv_buff_val_V_81", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_81"}]},
			{"Name" : "conv_buff_val_V_82", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_82"}]},
			{"Name" : "conv_buff_val_V_83", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_83"}]},
			{"Name" : "conv_buff_val_V_84", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_84"}]},
			{"Name" : "conv_buff_val_V_85", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_85"}]},
			{"Name" : "conv_buff_val_V_86", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_86"}]},
			{"Name" : "conv_buff_val_V_87", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_87"}]},
			{"Name" : "conv_buff_val_V_88", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_88"}]},
			{"Name" : "conv_buff_val_V_89", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_89"}]},
			{"Name" : "conv_buff_val_V_90", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_90"}]},
			{"Name" : "conv_buff_val_V_91", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_91"}]},
			{"Name" : "conv_buff_val_V_92", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_92"}]},
			{"Name" : "conv_buff_val_V_93", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_93"}]},
			{"Name" : "conv_buff_val_V_94", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_94"}]},
			{"Name" : "conv_buff_val_V_95", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_95"}]},
			{"Name" : "conv_buff_val_V_96", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_96"}]},
			{"Name" : "conv_buff_val_V_97", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_97"}]},
			{"Name" : "conv_buff_val_V_98", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_98"}]},
			{"Name" : "conv_buff_val_V_99", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "conv_layer1_U0", "Port" : "conv_buff_val_V_99"}]},
			{"Name" : "conv_layer2_weights_s", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_layer2_weights_s"}]},
			{"Name" : "conv_buff_val_V_1_1_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_1_s"}]},
			{"Name" : "conv_buff_val_V_1_0_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_0_s"}]},
			{"Name" : "conv_buff_val_V_1_2_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_2_s"}]},
			{"Name" : "conv_buff_val_V_1_3_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_3_s"}]},
			{"Name" : "conv_buff_val_V_1_4_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_4_s"}]},
			{"Name" : "conv_buff_val_V_1_5_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_5_s"}]},
			{"Name" : "conv_buff_val_V_1_6_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_6_s"}]},
			{"Name" : "conv_buff_val_V_1_7_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_7_s"}]},
			{"Name" : "conv_buff_val_V_1_8_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_8_s"}]},
			{"Name" : "conv_buff_val_V_1_9_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_9_s"}]},
			{"Name" : "conv_buff_val_V_1_10_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_10"}]},
			{"Name" : "conv_buff_val_V_1_11_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_10"}]},
			{"Name" : "conv_buff_val_V_1_12_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12_8"}]},
			{"Name" : "conv_buff_val_V_1_13", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_13"}]},
			{"Name" : "conv_buff_val_V_1_14", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_14"}]},
			{"Name" : "conv_buff_val_V_1_15", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_15"}]},
			{"Name" : "conv_buff_val_V_1_16", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_16"}]},
			{"Name" : "conv_buff_val_V_1_17", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_17"}]},
			{"Name" : "conv_buff_val_V_1_18", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_18"}]},
			{"Name" : "conv_buff_val_V_1_19", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_19"}]},
			{"Name" : "conv_buff_val_V_1_20", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_20"}]},
			{"Name" : "conv_buff_val_V_1_21", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_21"}]},
			{"Name" : "conv_buff_val_V_1_22", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_22"}]},
			{"Name" : "conv_buff_val_V_1_23", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_23"}]},
			{"Name" : "conv_buff_val_V_1_24", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_24"}]},
			{"Name" : "conv_buff_val_V_1_25", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_25"}]},
			{"Name" : "conv_buff_val_V_1_26", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_26"}]},
			{"Name" : "conv_buff_val_V_1_27", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_27"}]},
			{"Name" : "conv_buff_val_V_1_28", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_28"}]},
			{"Name" : "conv_buff_val_V_1_29", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_29"}]},
			{"Name" : "conv_buff_val_V_1_30", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_30"}]},
			{"Name" : "conv_buff_val_V_1_31", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_31"}]},
			{"Name" : "conv_buff_val_V_1_32", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_32"}]},
			{"Name" : "conv_buff_val_V_1_33", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_33"}]},
			{"Name" : "conv_buff_val_V_1_34", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_34"}]},
			{"Name" : "conv_buff_val_V_1_35", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_35"}]},
			{"Name" : "conv_buff_val_V_1_36", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_36"}]},
			{"Name" : "conv_buff_val_V_1_37", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_37"}]},
			{"Name" : "conv_buff_val_V_1_38", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_38"}]},
			{"Name" : "conv_buff_val_V_1_39", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_39"}]},
			{"Name" : "conv_buff_val_V_1_40", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_40"}]},
			{"Name" : "conv_buff_val_V_1_41", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_41"}]},
			{"Name" : "conv_buff_val_V_1_42", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_42"}]},
			{"Name" : "conv_buff_val_V_1_43", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_43"}]},
			{"Name" : "conv_buff_val_V_1_44", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_44"}]},
			{"Name" : "conv_buff_val_V_1_45", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_45"}]},
			{"Name" : "conv_buff_val_V_1_46", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_46"}]},
			{"Name" : "conv_buff_val_V_1_47", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_47"}]},
			{"Name" : "conv_buff_val_V_1_48", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_48"}]},
			{"Name" : "conv_buff_val_V_1_49", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_49"}]},
			{"Name" : "conv_buff_val_V_1_50", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_50"}]},
			{"Name" : "conv_buff_val_V_1_51", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_51"}]},
			{"Name" : "conv_buff_val_V_1_52", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_52"}]},
			{"Name" : "conv_buff_val_V_1_53", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_53"}]},
			{"Name" : "conv_buff_val_V_1_54", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_54"}]},
			{"Name" : "conv_buff_val_V_1_55", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_55"}]},
			{"Name" : "conv_buff_val_V_1_56", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_56"}]},
			{"Name" : "conv_buff_val_V_1_57", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_57"}]},
			{"Name" : "conv_buff_val_V_1_58", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_58"}]},
			{"Name" : "conv_buff_val_V_1_59", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_59"}]},
			{"Name" : "conv_buff_val_V_1_60", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_60"}]},
			{"Name" : "conv_buff_val_V_1_61", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_61"}]},
			{"Name" : "conv_buff_val_V_1_62", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_62"}]},
			{"Name" : "conv_buff_val_V_1_63", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_63"}]},
			{"Name" : "conv_buff_val_V_1_64", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_64"}]},
			{"Name" : "conv_buff_val_V_1_65", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_65"}]},
			{"Name" : "conv_buff_val_V_1_66", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_66"}]},
			{"Name" : "conv_buff_val_V_1_67", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_67"}]},
			{"Name" : "conv_buff_val_V_1_68", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_68"}]},
			{"Name" : "conv_buff_val_V_1_69", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_69"}]},
			{"Name" : "conv_buff_val_V_1_70", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_70"}]},
			{"Name" : "conv_buff_val_V_1_71", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_71"}]},
			{"Name" : "conv_buff_val_V_1_72", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_72"}]},
			{"Name" : "conv_buff_val_V_1_73", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_73"}]},
			{"Name" : "conv_buff_val_V_1_74", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_74"}]},
			{"Name" : "conv_buff_val_V_1_75", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_75"}]},
			{"Name" : "conv_buff_val_V_1_76", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_76"}]},
			{"Name" : "conv_buff_val_V_1_77", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_77"}]},
			{"Name" : "conv_buff_val_V_1_78", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_78"}]},
			{"Name" : "conv_buff_val_V_1_79", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_79"}]},
			{"Name" : "conv_buff_val_V_1_80", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_80"}]},
			{"Name" : "conv_buff_val_V_1_81", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_81"}]},
			{"Name" : "conv_buff_val_V_1_82", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_82"}]},
			{"Name" : "conv_buff_val_V_1_83", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_83"}]},
			{"Name" : "conv_buff_val_V_1_84", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_84"}]},
			{"Name" : "conv_buff_val_V_1_85", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_85"}]},
			{"Name" : "conv_buff_val_V_1_86", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_86"}]},
			{"Name" : "conv_buff_val_V_1_87", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_87"}]},
			{"Name" : "conv_buff_val_V_1_88", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_88"}]},
			{"Name" : "conv_buff_val_V_1_89", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_89"}]},
			{"Name" : "conv_buff_val_V_1_90", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_90"}]},
			{"Name" : "conv_buff_val_V_1_91", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_91"}]},
			{"Name" : "conv_buff_val_V_1_92", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_92"}]},
			{"Name" : "conv_buff_val_V_1_93", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_93"}]},
			{"Name" : "conv_buff_val_V_1_94", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_94"}]},
			{"Name" : "conv_buff_val_V_1_95", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_95"}]},
			{"Name" : "conv_buff_val_V_1_96", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_96"}]},
			{"Name" : "conv_buff_val_V_1_97", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_97"}]},
			{"Name" : "conv_buff_val_V_1_98", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_98"}]},
			{"Name" : "conv_buff_val_V_1_99", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_99"}]},
			{"Name" : "conv_buff_val_V_1_10_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_9"}]},
			{"Name" : "conv_buff_val_V_1_10_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_8"}]},
			{"Name" : "conv_buff_val_V_1_10_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_7"}]},
			{"Name" : "conv_buff_val_V_1_10_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_6"}]},
			{"Name" : "conv_buff_val_V_1_10_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_5"}]},
			{"Name" : "conv_buff_val_V_1_10_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_4"}]},
			{"Name" : "conv_buff_val_V_1_10_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_3"}]},
			{"Name" : "conv_buff_val_V_1_10_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_2"}]},
			{"Name" : "conv_buff_val_V_1_10_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10_1"}]},
			{"Name" : "conv_buff_val_V_1_10", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_10"}]},
			{"Name" : "conv_buff_val_V_1_11_9", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_9"}]},
			{"Name" : "conv_buff_val_V_1_11_8", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_8"}]},
			{"Name" : "conv_buff_val_V_1_11_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_7"}]},
			{"Name" : "conv_buff_val_V_1_11_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_6"}]},
			{"Name" : "conv_buff_val_V_1_11_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_5"}]},
			{"Name" : "conv_buff_val_V_1_11_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_4"}]},
			{"Name" : "conv_buff_val_V_1_11_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_3"}]},
			{"Name" : "conv_buff_val_V_1_11_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_2"}]},
			{"Name" : "conv_buff_val_V_1_11_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11_1"}]},
			{"Name" : "conv_buff_val_V_1_11", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_11"}]},
			{"Name" : "conv_buff_val_V_1_12_7", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12_7"}]},
			{"Name" : "conv_buff_val_V_1_12_6", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12_6"}]},
			{"Name" : "conv_buff_val_V_1_12_5", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12_5"}]},
			{"Name" : "conv_buff_val_V_1_12_4", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12_4"}]},
			{"Name" : "conv_buff_val_V_1_12_3", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12_3"}]},
			{"Name" : "conv_buff_val_V_1_12_2", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12_2"}]},
			{"Name" : "conv_buff_val_V_1_12_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12_1"}]},
			{"Name" : "conv_buff_val_V_1_12", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_buff_val_V_1_12"}]},
			{"Name" : "scale_1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "scale_1_V"}]},
			{"Name" : "conv_layer2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "conv_layer2_bias_V"}]},
			{"Name" : "scale_0_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "113", "SubInstance" : "conv_layer2_U0", "Port" : "scale_0_V"}]},
			{"Name" : "fc_layer1_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "fc_layer1_U0", "Port" : "fc_layer1_weights_V"}]},
			{"Name" : "fc_layer1_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "141", "SubInstance" : "fc_layer1_U0", "Port" : "fc_layer1_bias_V"}]},
			{"Name" : "fc_layer2_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "fc_layer2_U0", "Port" : "fc_layer2_weights_V"}]},
			{"Name" : "fc_layer2_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "150", "SubInstance" : "fc_layer2_U0", "Port" : "fc_layer2_bias_V"}]},
			{"Name" : "fc_layer3_weights_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "fc_layer3_U0", "Port" : "fc_layer3_weights_V"}]},
			{"Name" : "fc_layer3_bias_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "fc_layer3_U0", "Port" : "fc_layer3_bias_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc181_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "Loop_1_proc181",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2113", "EstimateLatencyMax" : "2113",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "image_in_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "173",
				"BlockSignal" : [
					{"Name" : "image_in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "input_activations_V_s", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc181_U0.input_activations_V_s_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111"],
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
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "112", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "173",
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_layer1_weights_s_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.scale_1_V4_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_layer1_bias_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.scale_0_V3_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_1179_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_0_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_2_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_3_U", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_4_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_5_U", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_6_U", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_7_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_8_U", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_9_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_10_U", "Parent" : "3"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_11_U", "Parent" : "3"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_12_U", "Parent" : "3"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_13_U", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_14_U", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_15_U", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_16_U", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_17_U", "Parent" : "3"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_18_U", "Parent" : "3"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_19_U", "Parent" : "3"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_20_U", "Parent" : "3"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_21_U", "Parent" : "3"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_22_U", "Parent" : "3"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_23_U", "Parent" : "3"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_24_U", "Parent" : "3"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_25_U", "Parent" : "3"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_26_U", "Parent" : "3"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_27_U", "Parent" : "3"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_28_U", "Parent" : "3"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_29_U", "Parent" : "3"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_30_U", "Parent" : "3"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_31_U", "Parent" : "3"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_32_U", "Parent" : "3"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_33_U", "Parent" : "3"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_34_U", "Parent" : "3"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_35_U", "Parent" : "3"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_36_U", "Parent" : "3"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_37_U", "Parent" : "3"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_38_U", "Parent" : "3"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_39_U", "Parent" : "3"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_40_U", "Parent" : "3"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_41_U", "Parent" : "3"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_42_U", "Parent" : "3"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_43_U", "Parent" : "3"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_44_U", "Parent" : "3"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_45_U", "Parent" : "3"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_46_U", "Parent" : "3"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_47_U", "Parent" : "3"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_48_U", "Parent" : "3"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_49_U", "Parent" : "3"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_50_U", "Parent" : "3"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_51_U", "Parent" : "3"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_52_U", "Parent" : "3"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_53_U", "Parent" : "3"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_54_U", "Parent" : "3"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_55_U", "Parent" : "3"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_56_U", "Parent" : "3"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_57_U", "Parent" : "3"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_58_U", "Parent" : "3"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_59_U", "Parent" : "3"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_60_U", "Parent" : "3"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_61_U", "Parent" : "3"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_62_U", "Parent" : "3"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_63_U", "Parent" : "3"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_64_U", "Parent" : "3"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_65_U", "Parent" : "3"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_66_U", "Parent" : "3"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_67_U", "Parent" : "3"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_68_U", "Parent" : "3"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_69_U", "Parent" : "3"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_70_U", "Parent" : "3"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_71_U", "Parent" : "3"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_72_U", "Parent" : "3"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_73_U", "Parent" : "3"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_74_U", "Parent" : "3"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_75_U", "Parent" : "3"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_76_U", "Parent" : "3"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_77_U", "Parent" : "3"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_78_U", "Parent" : "3"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_79_U", "Parent" : "3"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_80_U", "Parent" : "3"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_81_U", "Parent" : "3"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_82_U", "Parent" : "3"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_83_U", "Parent" : "3"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_84_U", "Parent" : "3"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_85_U", "Parent" : "3"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_86_U", "Parent" : "3"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_87_U", "Parent" : "3"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_88_U", "Parent" : "3"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_89_U", "Parent" : "3"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_90_U", "Parent" : "3"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_91_U", "Parent" : "3"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_92_U", "Parent" : "3"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_93_U", "Parent" : "3"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_94_U", "Parent" : "3"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_95_U", "Parent" : "3"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_96_U", "Parent" : "3"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_97_U", "Parent" : "3"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_98_U", "Parent" : "3"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.conv_buff_val_V_99_U", "Parent" : "3"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.kernel_sum_V_U", "Parent" : "3"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.nnet_mux_1007_8_1_1_U3", "Parent" : "3"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.nnet_mac_muladd_8bTr_U4", "Parent" : "3"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer1_U0.nnet_mul_mul_24nsbUr_U5", "Parent" : "3"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_layer1_U0", "Parent" : "0",
		"CDFG" : "pool_layer1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6728", "EstimateLatencyMax" : "6728",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "113", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0", "Parent" : "0", "Child" : ["114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139"],
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
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "140", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "112", "DependentChan" : "175",
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
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.conv_layer2_weights_s_U", "Parent" : "113"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.scale_1_V_U", "Parent" : "113"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.conv_layer2_bias_V_U", "Parent" : "113"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.scale_0_V_U", "Parent" : "113"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.kernel_sum_V_U", "Parent" : "113"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mul_mul_24s_b0s_U19", "Parent" : "113"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U20", "Parent" : "113"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U21", "Parent" : "113"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U22", "Parent" : "113"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b2s_U23", "Parent" : "113"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b3s_U24", "Parent" : "113"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b4t_U25", "Parent" : "113"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U26", "Parent" : "113"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U27", "Parent" : "113"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U28", "Parent" : "113"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U29", "Parent" : "113"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b3s_U30", "Parent" : "113"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U31", "Parent" : "113"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U32", "Parent" : "113"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U33", "Parent" : "113"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U34", "Parent" : "113"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U35", "Parent" : "113"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b1s_U36", "Parent" : "113"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b3s_U37", "Parent" : "113"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_8b5t_U38", "Parent" : "113"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.conv_layer2_U0.nnet_mac_muladd_1b6t_U39", "Parent" : "113"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool_layer2_U0", "Parent" : "0",
		"CDFG" : "pool_layer2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2705", "EstimateLatencyMax" : "2705",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "141", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "113", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0", "Parent" : "0", "Child" : ["142", "143", "144", "145", "146", "147", "148", "149"],
		"CDFG" : "fc_layer1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70873", "EstimateLatencyMax" : "70873",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "150", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "140", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fc_layer1_weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc_layer1_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0.fc_layer1_weights_V_U", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0.fc_layer1_bias_V_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0.output_V_U", "Parent" : "141"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0.nnet_mac_muladd_8b9t_U56", "Parent" : "141"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0.nnet_mac_muladd_8b9t_U57", "Parent" : "141"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0.nnet_mac_muladd_8b9t_U58", "Parent" : "141"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0.nnet_mac_muladd_8b9t_U59", "Parent" : "141"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer1_U0.nnet_mac_muladd_3cau_U60", "Parent" : "141"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0", "Parent" : "0", "Child" : ["151", "152", "153", "154", "155", "156", "157", "158"],
		"CDFG" : "fc_layer2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10741", "EstimateLatencyMax" : "10741",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "159", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "141", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fc_layer2_weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc_layer2_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0.fc_layer2_weights_V_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0.fc_layer2_bias_V_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0.output_V_U", "Parent" : "150"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0.nnet_mac_muladd_8b9t_U68", "Parent" : "150"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0.nnet_mac_muladd_8b9t_U69", "Parent" : "150"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0.nnet_mac_muladd_8b9t_U70", "Parent" : "150"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0.nnet_mac_muladd_8b9t_U71", "Parent" : "150"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer2_U0.nnet_mac_muladd_3cdu_U72", "Parent" : "150"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0", "Parent" : "0", "Child" : ["160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172"],
		"CDFG" : "fc_layer3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1235", "EstimateLatencyMax" : "1235",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "150", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "fc_layer3_weights_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc_layer3_bias_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.fc_layer3_weights_V_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.fc_layer3_bias_V_U", "Parent" : "159"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.output_V_U", "Parent" : "159"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_4cgu_U79", "Parent" : "159"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_4chv_U80", "Parent" : "159"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_9civ_U81", "Parent" : "159"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_9civ_U82", "Parent" : "159"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_8cjv_U83", "Parent" : "159"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_8ckv_U84", "Parent" : "159"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_9civ_U85", "Parent" : "159"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_9civ_U86", "Parent" : "159"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mac_muladd_3clv_U87", "Parent" : "159"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.fc_layer3_U0.nnet_mul_mul_25nscmv_U88", "Parent" : "159"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_in_V_V_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_out_V_V_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool1_out_V_V_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_out_V_V_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool2_out_V_V_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_out_V_V_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc2_out_V_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	nnet {
		fc3_out_V_V {Type O LastRead -1 FirstWrite 7}
		input_activations_V_s {Type I LastRead -1 FirstWrite -1}
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
		conv_buff_val_V_99 {Type IO LastRead -1 FirstWrite -1}
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
		scale_0_V {Type I LastRead -1 FirstWrite -1}
		fc_layer1_weights_V {Type I LastRead -1 FirstWrite -1}
		fc_layer1_bias_V {Type I LastRead -1 FirstWrite -1}
		fc_layer2_weights_V {Type I LastRead -1 FirstWrite -1}
		fc_layer2_bias_V {Type I LastRead -1 FirstWrite -1}
		fc_layer3_weights_V {Type I LastRead -1 FirstWrite -1}
		fc_layer3_bias_V {Type I LastRead -1 FirstWrite -1}}
	Loop_1_proc181 {
		image_in_V_V {Type O LastRead -1 FirstWrite 3}
		input_activations_V_s {Type I LastRead -1 FirstWrite -1}}
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
		conv_buff_val_V_99 {Type IO LastRead -1 FirstWrite -1}}
	pool_layer1 {
		out_V_V {Type O LastRead -1 FirstWrite 241}
		in_V_V {Type I LastRead 464 FirstWrite -1}}
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
		scale_0_V {Type I LastRead -1 FirstWrite -1}}
	pool_layer2 {
		out_V_V {Type O LastRead -1 FirstWrite 18}
		in_V_V {Type I LastRead 209 FirstWrite -1}}
	fc_layer1 {
		out_V_V {Type O LastRead -1 FirstWrite 6}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		fc_layer1_weights_V {Type I LastRead -1 FirstWrite -1}
		fc_layer1_bias_V {Type I LastRead -1 FirstWrite -1}}
	fc_layer2 {
		out_V_V {Type O LastRead -1 FirstWrite 6}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		fc_layer2_weights_V {Type I LastRead -1 FirstWrite -1}
		fc_layer2_bias_V {Type I LastRead -1 FirstWrite -1}}
	fc_layer3 {
		out_V_V {Type O LastRead -1 FirstWrite 7}
		in_V_V {Type I LastRead 2 FirstWrite -1}
		fc_layer3_weights_V {Type I LastRead -1 FirstWrite -1}
		fc_layer3_bias_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "413538", "Max" : "420266"}
	, {"Name" : "Interval", "Min" : "413537", "Max" : "420265"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	fc3_out_V_V { ap_fifo {  { fc3_out_V_V_din fifo_data 1 32 }  { fc3_out_V_V_full_n fifo_status 0 1 }  { fc3_out_V_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	fc3_out_V_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
