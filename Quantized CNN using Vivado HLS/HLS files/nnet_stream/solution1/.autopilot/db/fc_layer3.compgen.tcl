# This script segment is generated automatically by AutoPilot

set id 79
set name nnet_mac_muladd_4cgu
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 4
set in0_signed 0
set in1_width 8
set in1_signed 0
set in2_width 7
set in2_signed 0
set out_width 10
set exp i0*i1+i2
set arg_lists {i0 {4 0 +} i1 {8 0 +} m {10 0 +} i2 {7 0 +} p {10 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 80
set name nnet_mac_muladd_4chv
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 4
set in0_signed 0
set in1_width 8
set in1_signed 0
set in2_width 7
set in2_signed 0
set out_width 11
set exp i0*i1+i2
set arg_lists {i0 {4 0 +} i1 {8 0 +} m {11 0 +} i2 {7 0 +} p {11 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 81
set name nnet_mac_muladd_9civ
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 9
set in0_signed 1
set in1_width 8
set in1_signed 1
set in2_width 24
set in2_signed 0
set out_width 24
set exp i0*i1+i2
set arg_lists {i0 {9 1 +} i1 {8 1 +} m {17 1 +} i2 {24 0 +} p {24 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 83
set name nnet_mac_muladd_8cjv
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 8
set in0_signed 0
set in1_width 4
set in1_signed 0
set in2_width 7
set in2_signed 0
set out_width 11
set exp i0*i1+i2
set arg_lists {i0 {8 0 +} i1 {4 0 +} m {11 0 +} i2 {7 0 +} p {11 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 84
set name nnet_mac_muladd_8ckv
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 8
set in0_signed 0
set in1_width 3
set in1_signed 0
set in2_width 7
set in2_signed 0
set out_width 10
set exp i0*i1+i2
set arg_lists {i0 {8 0 +} i1 {3 0 +} m {10 0 +} i2 {7 0 +} p {10 0 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 87
set name nnet_mac_muladd_3clv
set corename simcore_mac
set op mac
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 31
set in0_signed 1
set in1_width 10
set in1_signed 1
set in2_width 44
set in2_signed 1
set out_width 44
set exp i0*i1+i2
set arg_lists {i0 {31 1 +} i1 {10 1 +} m {31 1 +} i2 {44 1 +} p {44 1 +} c_reg {1} rnd {0} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mac] == "ap_gen_simcore_mac"} {
eval "ap_gen_simcore_mac { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mac, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mac
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    in2_width ${in2_width} \
    in2_signed ${in2_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


set id 88
set name nnet_mul_mul_25nscmv
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 25
set in0_signed 0
set in1_width 8
set in1_signed 1
set out_width 32
set exp i0*i1
set arg_lists {i0 {25 0 +} i1 {8 1 +} p {32 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 96
set hasByteEnable 0
set MemName fc_layer3_fc_layeceu
set CoreName ap_simcore_mem
set PortList { 1 1 }
set DataWd 8
set AddrRange 840
set AddrWd 10
set TrueReset 0
set IsROM 1
set ROMData { "01010001" "01011100" "00101110" "00110100" "10111011" "00100011" "00111110" "10111101" "00001111" "01010011" "11001100" "11001100" "00111011" "00110110" "11010101" "11010111" "11011110" "01001111" "00110101" "11001111" "10100110" "01001011" "01001011" "00100001" "00010100" "10110110" "00011111" "00010001" "11001011" "11001010" "11100110" "01011001" "11101001" "00101010" "00001100" "00011111" "11000100" "00001110" "10110011" "11110010" "11000011" "11111110" "11101110" "00001101" "11011000" "00000101" "10111101" "01001001" "01011100" "00010010" "10110101" "10111010" "10100000" "10110000" "10001100" "00111010" "11111000" "11100000" "00001100" "11011110" "10000110" "01000001" "10011001" "00001110" "00010011" "10110000" "01100010" "01010110" "10111111" "11000101" "01001001" "01001010" "11001000" "11100101" "11000100" "01000111" "00101111" "01100010" "11000110" "01011110" "11100101" "10111100" "10011101" "01011110" "00101001" "10111010" "00001111" "10001100" "11101101" "11111011" "10111000" "11000111" "01001111" "11001100" "11011010" "10110100" "10100110" "11011010" "11010110" "00011100" "10110000" "00010110" "01011101" "00011010" "11000101" "11001110" "00110101" "00010010" "11010100" "01001001" "11101010" "00001001" "11101001" "00000110" "11011111" "11101000" "11111011" "01001100" "11111100" "00101111" "11011001" "00011101" "10110100" "00111000" "11100101" "10101111" "00000110" "11000111" "00000000" "00010111" "11110101" "00110110" "11111111" "10111001" "00100001" "00100110" "10101011" "01100100" "11110000" "01000100" "11100000" "01000001" "00011010" "10110101" "10100000" "00001110" "10101010" "01100010" "11100000" "11111100" "00110000" "00100011" "10110111" "01000101" "00010100" "10110110" "01001000" "10111101" "01000011" "11000011" "11111111" "00111010" "01001011" "00110111" "00111101" "01000001" "10101011" "01101010" "00101010" "01011100" "00000011" "10111110" "11000111" "11101111" "01001010" "10101100" "10100000" "11000101" "00011110" "11110110" "11101011" "00100000" "10110100" "11100010" "01010110" "01001011" "11011111" "11101111" "11011001" "11110100" "10110111" "10101101" "11100101" "00101011" "10011111" "11110110" "00010000" "01011001" "00001101" "00000011" "01010101" "11101101" "11101101" "10010101" "00010110" "00101110" "01011000" "00100110" "00000111" "11000100" "00101011" "01010000" "00101101" "00111011" "01000110" "00000111" "10111110" "00000000" "00001011" "00101101" "10110100" "01001111" "11111100" "00000010" "11100001" "11010011" "00110001" "00101011" "00111001" "10100110" "11011000" "10101111" "11000010" "10110000" "01011001" "01100011" "11011110" "11100001" "00111100" "00110100" "11011101" "11101011" "11011010" "11011011" "00111001" "00010101" "00111000" "11000010" "01010011" "10100010" "01001001" "11001100" "01010011" "11111110" "11111011" "00011100" "01011010" "11110000" "00101011" "01011100" "10100101" "10100010" "11011100" "00010101" "00110100" "00011000" "11110101" "10110111" "10111010" "10101010" "00110101" "11110001" "00111100" "10111101" "00100111" "10111010" "00000010" "11111010" "11000011" "00010101" "00000001" "10100101" "00000011" "00101011" "11100011" "01001010" "11001010" "01011100" "11100010" "11110011" "00100101" "11100001" "00101000" "00110011" "00101001" "00001010" "11001100" "11000101" "00010001" "11000110" "00011001" "10111111" "11011101" "11001011" "01100110" "11111101" "00010001" "00101101" "10101001" "01000011" "00100101" "11110000" "10111011" "00110101" "00010011" "11001001" "00110100" "00000010" "10011110" "00111011" "00001010" "10011010" "01011001" "01001001" "11111101" "11110100" "00000100" "11011110" "11010101" "00110110" "01100110" "00001000" "11111110" "01101101" "10100001" "01000000" "11011111" "01000110" "01000011" "00000100" "11101101" "11101010" "10111111" "00111001" "01011101" "00100010" "00001011" "01000100" "10011001" "00110110" "00011101" "00010011" "11011010" "01011100" "11001101" "10111000" "10101110" "00010111" "00111001" "11001111" "00100111" "11110110" "11011110" "11011101" "11110101" "00011010" "00101101" "00100111" "00101001" "00111000" "11111000" "10110101" "00111011" "11100100" "11101111" "01001101" "11101010" "00111111" "10111011" "01010100" "10100111" "00000010" "10111000" "11011011" "00010101" "11110111" "10100111" "11000100" "10111001" "10011100" "01100010" "00110111" "11110101" "11001101" "00000000" "00111100" "11111111" "00110000" "11100111" "01001111" "00101101" "11000111" "11110101" "01011000" "01010101" "01001011" "11100100" "11011100" "10100000" "00100010" "11001110" "01000110" "11010100" "10110011" "00111001" "00111110" "00110011" "00110101" "00010000" "11001100" "10101111" "01100001" "11001101" "10111001" "01010000" "10100110" "11010000" "00101101" "00010101" "11010110" "00001000" "10101110" "10010110" "11011101" "01000110" "11111001" "10111010" "01100011" "00101110" "00100000" "00001001" "00100001" "00111011" "00100011" "01100001" "00100010" "11001000" "01010110" "00010011" "11111001" "00101011" "10110101" "00001101" "00001101" "01001101" "10110101" "11001110" "01001010" "11011100" "11101111" "00100010" "00010111" "01010110" "00101101" "01001001" "01001010" "01000011" "00100000" "01011100" "00100011" "01000000" "00001100" "11111111" "11011100" "00001111" "00010110" "00110000" "11110011" "11111010" "00001111" "00100100" "11100011" "11010001" "11101111" "00111000" "00101101" "10111011" "11110001" "00001001" "11011000" "00000001" "00001010" "10111100" "10101111" "11100110" "01011100" "11010000" "00001101" "00111100" "10110011" "01101100" "00101000" "00111110" "10100000" "00010101" "00110101" "00010111" "10111011" "11111000" "00000011" "11101110" "01000100" "10101110" "10101110" "00000101" "00011111" "00101111" "11101000" "01010111" "11111100" "00011000" "01000110" "01000010" "00100000" "11001100" "11100001" "11110101" "10101011" "11001110" "11100001" "00100110" "11101001" "01011000" "11100101" "01101111" "00101100" "10110000" "01010100" "11111001" "01011011" "10110111" "00000111" "11001011" "11111001" "00011000" "10101001" "00000101" "01011110" "00101000" "11001111" "10000001" "11110000" "11110011" "01100011" "11111001" "11001011" "00011011" "00011110" "00100101" "01001111" "00110010" "10100010" "00001010" "00011010" "10111100" "11001110" "01001100" "11101001" "00001001" "10111001" "00100110" "00101100" "11011100" "10111101" "10100000" "11010010" "00110110" "00001011" "10101111" "00101000" "11011011" "11011111" "10110011" "01011100" "00110110" "11100111" "11110110" "11101010" "01000010" "01010001" "11010111" "10100100" "10110110" "11110111" "11100101" "01011000" "01100101" "00100000" "10110111" "00010011" "00111111" "01000011" "01011001" "10011101" "01011010" "00001110" "00110100" "00011110" "00011101" "10110101" "10110111" "00101110" "11100101" "11001000" "11000110" "11110111" "00110011" "11011011" "10100111" "11010111" "00010001" "00100110" "00001010" "00000100" "00001001" "01000111" "00110111" "00010000" "00000101" "11111101" "00010010" "00010001" "00010010" "11000111" "11110111" "01011110" "11111011" "11001011" "11101001" "00010100" "00001101" "00111100" "10100101" "11001111" "11110111" "00111011" "11011000" "00110011" "10100100" "00110011" "10111110" "11000000" "01001101" "01010101" "01001101" "01000100" "11111011" "11110110" "00101001" "10110100" "00101000" "01100101" "00011100" "01011101" "11000111" "10101111" "10111001" "10111101" "00011111" "11010001" "11010001" "10101111" "00100110" "00100100" "01000101" "00111010" "11101101" "01101000" "00001010" "11011010" "01011101" "11100101" "01000011" "11011110" "10110101" "11011011" "10110101" "10011001" "11000111" "01000000" "11011111" "10101011" "11101100" "00111101" "11010010" "01000101" "01010001" "10111000" "11111100" "11110000" "00000001" "10101110" "00011001" "11011111" "00101110" "11101011" "00001001" "01001001" "11111110" "11100001" "01000001" "00011100" "11100011" "11101110" "11100100" "10111100" "00010010" "11100001" "11101101" "00000011" "10110010" "00011010" "10100010" "10101001" "10110000" "11010010" "01001010" "11100000" "11100001" "11000101" "10100011" "11101010" "11010011" "01100010" "00110100" "10110101" "00000101" "00001010" "10100100" "11111011" "10100111" "00110000" "01011100" "10100001" "11011100" "00000111" "11100000" "10110001" "01011001" "11001010" "00011110" "11010000" "11110101" "01000010" "11111011" "00110000" "00110011" "11100011" "00001100" "11010000" "11111001" "11010110" "10111101" "11001011" "11110010" "00111110" "11000010" "10100000" "00011001" "00001110" "01011111" "01011101" "01000001" "11110110" "11101101" "10111010" "01000000" "00010011" "00001111" "00010001" "01010000" "00100111" "11011010" "10111111" "11001001" "00000110" "00100011" "01100010" "11111011" "01001111" "11110110" "00010010" "10110101" "11110000" "11100110" "10110100" "10001011" "10100110" "11100100" "00000010" "00000000" "00111000" "00000100" "00110111" "00010010" "11010011" "11100100" "00011111" "11111001" "11100001" "00111010" "01101000" "00000111" "11001000" "11000000" "00111100" "00000000" "00111000" "11010101" "10100000" "01010100" "01001010" "11001001" "10100110" "00011010" "00010010" "00100010" "01011011" "11100101" "11100010" "01000011" "00010011" "00111000" "00100010" "10100000" "10101001" "00000110" "11101011" "00011100" "10100110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 13
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 97
set hasByteEnable 0
set MemName fc_layer3_fc_layecfu
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 10
set AddrRange 10
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "1101101101" "0110010101" "0000011111" "0000110101" "0000101010" "0000000000" "1110010011" "0000101011" "1110110000" "0000011110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 13
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name out_V_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_out_V_V \
    op interface \
    ports { out_V_V_din { O 32 vector } out_V_V_full_n { I 1 bit } out_V_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name in_V_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_in_V_V \
    op interface \
    ports { in_V_V_dout { I 8 vector } in_V_V_empty_n { I 1 bit } in_V_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


