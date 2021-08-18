############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project nnet_stream
set_top nnet
add_files nnet.cpp
add_files -tb nnet_test.cpp -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z010clg400-1}
create_clock -period 13 -name default
source "./nnet_stream/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
