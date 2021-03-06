// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __fc_layer3_fc_layecfu_H__
#define __fc_layer3_fc_layecfu_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct fc_layer3_fc_layecfu_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 10;
  static const unsigned AddressRange = 10;
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


   SC_CTOR(fc_layer3_fc_layecfu_ram) {
        ram[0] = "0b1101101101";
        ram[1] = "0b0110010101";
        ram[2] = "0b0000011111";
        ram[3] = "0b0000110101";
        ram[4] = "0b0000101010";
        ram[5] = "0b0000000000";
        ram[6] = "0b1110010011";
        ram[7] = "0b0000101011";
        ram[8] = "0b1110110000";
        ram[9] = "0b0000011110";


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


SC_MODULE(fc_layer3_fc_layecfu) {


static const unsigned DataWidth = 10;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


fc_layer3_fc_layecfu_ram* meminst;


SC_CTOR(fc_layer3_fc_layecfu) {
meminst = new fc_layer3_fc_layecfu_ram("fc_layer3_fc_layecfu_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~fc_layer3_fc_layecfu() {
    delete meminst;
}


};//endmodule
#endif
