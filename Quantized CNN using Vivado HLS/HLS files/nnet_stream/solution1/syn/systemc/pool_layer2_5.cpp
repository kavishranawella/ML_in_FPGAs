#include "pool_layer2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void pool_layer2::thread_tmp_10_4_1_s_fu_3869_p2() {
    tmp_10_4_1_s_fu_3869_p2 = (!pool_buff_val_74_V_2_fu_3862_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_74_V_2_fu_3862_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_4_fu_3408_p2() {
    tmp_10_4_fu_3408_p2 = (!pool_buff_val_64_V_s_fu_332.read().is_01() || !reg_496.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_64_V_s_fu_332.read()) > sc_bigint<8>(reg_496.read()));
}

void pool_layer2::thread_tmp_10_5_0_10_fu_4594_p2() {
    tmp_10_5_0_10_fu_4594_p2 = (!pool_buff_val_91_V_s_fu_440.read().is_01() || !reg_540.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_91_V_s_fu_440.read()) > sc_bigint<8>(reg_540.read()));
}

void pool_layer2::thread_tmp_10_5_0_11_fu_4638_p2() {
    tmp_10_5_0_11_fu_4638_p2 = (!pool_buff_val_92_V_s_fu_444.read().is_01() || !reg_544.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_92_V_s_fu_444.read()) > sc_bigint<8>(reg_544.read()));
}

void pool_layer2::thread_tmp_10_5_0_12_fu_4682_p2() {
    tmp_10_5_0_12_fu_4682_p2 = (!pool_buff_val_93_V_s_fu_448.read().is_01() || !reg_548.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_93_V_s_fu_448.read()) > sc_bigint<8>(reg_548.read()));
}

void pool_layer2::thread_tmp_10_5_0_13_fu_4726_p2() {
    tmp_10_5_0_13_fu_4726_p2 = (!pool_buff_val_94_V_s_fu_452.read().is_01() || !reg_552.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_94_V_s_fu_452.read()) > sc_bigint<8>(reg_552.read()));
}

void pool_layer2::thread_tmp_10_5_0_14_fu_4750_p2() {
    tmp_10_5_0_14_fu_4750_p2 = (!pool_buff_val_95_V_s_fu_456.read().is_01() || !reg_556.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_95_V_s_fu_456.read()) > sc_bigint<8>(reg_556.read()));
}

void pool_layer2::thread_tmp_10_5_0_1_fu_4154_p2() {
    tmp_10_5_0_1_fu_4154_p2 = (!pool_buff_val_81_V_s_fu_400.read().is_01() || !reg_500.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_81_V_s_fu_400.read()) > sc_bigint<8>(reg_500.read()));
}

void pool_layer2::thread_tmp_10_5_0_2_fu_4198_p2() {
    tmp_10_5_0_2_fu_4198_p2 = (!pool_buff_val_82_V_s_fu_404.read().is_01() || !reg_504.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_82_V_s_fu_404.read()) > sc_bigint<8>(reg_504.read()));
}

void pool_layer2::thread_tmp_10_5_0_3_fu_4242_p2() {
    tmp_10_5_0_3_fu_4242_p2 = (!pool_buff_val_83_V_s_fu_408.read().is_01() || !reg_508.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_83_V_s_fu_408.read()) > sc_bigint<8>(reg_508.read()));
}

void pool_layer2::thread_tmp_10_5_0_4_fu_4286_p2() {
    tmp_10_5_0_4_fu_4286_p2 = (!pool_buff_val_84_V_s_fu_412.read().is_01() || !reg_512.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_84_V_s_fu_412.read()) > sc_bigint<8>(reg_512.read()));
}

void pool_layer2::thread_tmp_10_5_0_5_fu_4330_p2() {
    tmp_10_5_0_5_fu_4330_p2 = (!pool_buff_val_85_V_s_fu_416.read().is_01() || !reg_516.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_85_V_s_fu_416.read()) > sc_bigint<8>(reg_516.read()));
}

void pool_layer2::thread_tmp_10_5_0_6_fu_4374_p2() {
    tmp_10_5_0_6_fu_4374_p2 = (!pool_buff_val_86_V_s_fu_420.read().is_01() || !reg_520.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_86_V_s_fu_420.read()) > sc_bigint<8>(reg_520.read()));
}

void pool_layer2::thread_tmp_10_5_0_7_fu_4418_p2() {
    tmp_10_5_0_7_fu_4418_p2 = (!pool_buff_val_87_V_s_fu_424.read().is_01() || !reg_524.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_87_V_s_fu_424.read()) > sc_bigint<8>(reg_524.read()));
}

void pool_layer2::thread_tmp_10_5_0_8_fu_4462_p2() {
    tmp_10_5_0_8_fu_4462_p2 = (!pool_buff_val_88_V_s_fu_428.read().is_01() || !reg_528.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_88_V_s_fu_428.read()) > sc_bigint<8>(reg_528.read()));
}

void pool_layer2::thread_tmp_10_5_0_9_fu_4506_p2() {
    tmp_10_5_0_9_fu_4506_p2 = (!pool_buff_val_89_V_s_fu_432.read().is_01() || !reg_532.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_89_V_s_fu_432.read()) > sc_bigint<8>(reg_532.read()));
}

void pool_layer2::thread_tmp_10_5_0_s_fu_4550_p2() {
    tmp_10_5_0_s_fu_4550_p2 = (!pool_buff_val_90_V_s_fu_436.read().is_01() || !reg_536.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_90_V_s_fu_436.read()) > sc_bigint<8>(reg_536.read()));
}

void pool_layer2::thread_tmp_10_5_1_10_fu_4615_p2() {
    tmp_10_5_1_10_fu_4615_p2 = (!pool_buff_val_91_V_2_fu_4608_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_91_V_2_fu_4608_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_11_fu_4659_p2() {
    tmp_10_5_1_11_fu_4659_p2 = (!pool_buff_val_92_V_2_fu_4652_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_92_V_2_fu_4652_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_12_fu_4703_p2() {
    tmp_10_5_1_12_fu_4703_p2 = (!pool_buff_val_93_V_2_fu_4696_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_93_V_2_fu_4696_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_13_fu_4771_p2() {
    tmp_10_5_1_13_fu_4771_p2 = (!pool_buff_val_94_V_2_fu_4740_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_94_V_2_fu_4740_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_14_fu_4791_p2() {
    tmp_10_5_1_14_fu_4791_p2 = (!pool_buff_val_95_V_2_reg_5539.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_95_V_2_reg_5539.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_1_fu_4175_p2() {
    tmp_10_5_1_1_fu_4175_p2 = (!pool_buff_val_81_V_2_fu_4168_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_81_V_2_fu_4168_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_2_fu_4219_p2() {
    tmp_10_5_1_2_fu_4219_p2 = (!pool_buff_val_82_V_2_fu_4212_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_82_V_2_fu_4212_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_3_fu_4263_p2() {
    tmp_10_5_1_3_fu_4263_p2 = (!pool_buff_val_83_V_2_fu_4256_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_83_V_2_fu_4256_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_4_fu_4307_p2() {
    tmp_10_5_1_4_fu_4307_p2 = (!pool_buff_val_84_V_2_fu_4300_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_84_V_2_fu_4300_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_5_fu_4351_p2() {
    tmp_10_5_1_5_fu_4351_p2 = (!pool_buff_val_85_V_2_fu_4344_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_85_V_2_fu_4344_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_6_fu_4395_p2() {
    tmp_10_5_1_6_fu_4395_p2 = (!pool_buff_val_86_V_2_fu_4388_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_86_V_2_fu_4388_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_7_fu_4439_p2() {
    tmp_10_5_1_7_fu_4439_p2 = (!pool_buff_val_87_V_2_fu_4432_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_87_V_2_fu_4432_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_8_fu_4483_p2() {
    tmp_10_5_1_8_fu_4483_p2 = (!pool_buff_val_88_V_2_fu_4476_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_88_V_2_fu_4476_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_9_fu_4527_p2() {
    tmp_10_5_1_9_fu_4527_p2 = (!pool_buff_val_89_V_2_fu_4520_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_89_V_2_fu_4520_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_fu_4131_p2() {
    tmp_10_5_1_fu_4131_p2 = (!pool_buff_val_80_V_2_fu_4124_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_80_V_2_fu_4124_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_1_s_fu_4571_p2() {
    tmp_10_5_1_s_fu_4571_p2 = (!pool_buff_val_90_V_2_fu_4564_p3.read().is_01() || !in_V_V_dout.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_90_V_2_fu_4564_p3.read()) > sc_bigint<8>(in_V_V_dout.read()));
}

void pool_layer2::thread_tmp_10_5_fu_4110_p2() {
    tmp_10_5_fu_4110_p2 = (!pool_buff_val_80_V_s_fu_396.read().is_01() || !reg_496.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_80_V_s_fu_396.read()) > sc_bigint<8>(reg_496.read()));
}

void pool_layer2::thread_tmp_2_fu_586_p2() {
    tmp_2_fu_586_p2 = (!l_mid2_reg_5399.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(l_mid2_reg_5399.read() == ap_const_lv2_1);
}

void pool_layer2::thread_tmp_3_fu_591_p2() {
    tmp_3_fu_591_p2 = (!l_mid2_reg_5399.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(l_mid2_reg_5399.read() == ap_const_lv2_0);
}

void pool_layer2::thread_tmp_V_18_fu_627_p3() {
    tmp_V_18_fu_627_p3 = (!tmp_10_0_1_fu_621_p2.read()[0].is_01())? sc_lv<8>(): ((tmp_10_0_1_fu_621_p2.read()[0].to_bool())? pool_buff_val_0_V_0_2_fu_613_p3.read(): in_V_V_dout.read());
}

void pool_layer2::thread_tmp_s_fu_599_p2() {
    tmp_s_fu_599_p2 = (!pool_buff_val_0_V_0_fu_76.read().is_01() || !reg_496.read().is_01())? sc_lv<1>(): (sc_bigint<8>(pool_buff_val_0_V_0_fu_76.read()) > sc_bigint<8>(reg_496.read()));
}

}

