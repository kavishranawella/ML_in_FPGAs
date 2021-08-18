// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __conv_layer2_scalebWr_H__
#define __conv_layer2_scalebWr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct conv_layer2_scalebWr_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 20;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(conv_layer2_scalebWr_ram) {
        ram[0] = "0b10010011011100101101";
        ram[1] = "0b10100001111000101000";
        ram[2] = "0b10100101001111110110";
        ram[3] = "0b10000111011010110110";
        ram[4] = "0b10001000010110000001";
        ram[5] = "0b10110001000100000011";
        ram[6] = "0b10010011111001011101";
        ram[7] = "0b10010110111000101001";
        ram[8] = "0b10001100011101100111";
        ram[9] = "0b10100010110110101000";
        ram[10] = "0b11011010110111000001";
        ram[11] = "0b10010111011110000010";
        ram[12] = "0b10100000101011101111";
        ram[13] = "0b10100010001000110000";
        ram[14] = "0b10011011100101010101";
        ram[15] = "0b10010000100010011111";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(conv_layer2_scalebWr) {


static const unsigned DataWidth = 20;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


conv_layer2_scalebWr_ram* meminst;


SC_CTOR(conv_layer2_scalebWr) {
meminst = new conv_layer2_scalebWr_ram("conv_layer2_scalebWr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~conv_layer2_scalebWr() {
    delete meminst;
}


};//endmodule
#endif