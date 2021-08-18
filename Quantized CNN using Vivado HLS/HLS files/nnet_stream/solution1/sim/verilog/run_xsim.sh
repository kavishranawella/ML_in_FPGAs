
/home/kavish/opt2/Xilinx/Vivado/2018.2/bin/xelab xil_defaultlib.apatb_nnet_top glbl -prj nnet.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm --initfile "/home/kavish/opt2/Xilinx/Vivado/2018.2/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s nnet 
/home/kavish/opt2/Xilinx/Vivado/2018.2/bin/xsim --noieeewarnings nnet -tclbatch nnet.tcl

