#include "sobel_ip.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void sobel_ip::thread_Gx_address0() {
    if (esl_seteq<1,6,6>(ap_ST_st5_fsm_4, ap_CS_fsm.read())) {
        Gx_address0 =  (sc_lv<4>) (tmp_47_fu_771_p1.read());
    } else if (esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        Gx_address0 =  (sc_lv<4>) (ap_const_lv64_7);
    } else if (esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        Gx_address0 =  (sc_lv<4>) (ap_const_lv64_5);
    } else if (esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        Gx_address0 =  (sc_lv<4>) (ap_const_lv64_3);
    } else if (esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        Gx_address0 =  (sc_lv<4>) (ap_const_lv64_1);
    } else if (esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        Gx_address0 =  (sc_lv<4>) (ap_const_lv64_0);
    } else {
        Gx_address0 = "XXXX";
    }
}

void sobel_ip::thread_Gx_address1() {
    if (esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        Gx_address1 =  (sc_lv<4>) (ap_const_lv64_8);
    } else if (esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        Gx_address1 =  (sc_lv<4>) (ap_const_lv64_6);
    } else if (esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        Gx_address1 =  (sc_lv<4>) (ap_const_lv64_4);
    } else if (esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        Gx_address1 =  (sc_lv<4>) (ap_const_lv64_2);
    } else {
        Gx_address1 = "XXXX";
    }
}

void sobel_ip::thread_Gx_ce0() {
    if (((esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(exitcond1_fu_672_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st5_fsm_4, ap_CS_fsm.read()))) {
        Gx_ce0 = ap_const_logic_1;
    } else {
        Gx_ce0 = ap_const_logic_0;
    }
}

void sobel_ip::thread_Gx_ce1() {
    if ((esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read()))) {
        Gx_ce1 = ap_const_logic_1;
    } else {
        Gx_ce1 = ap_const_logic_0;
    }
}

void sobel_ip::thread_Gx_d0() {
    Gx_d0 = sub_in_load_reg_5485.read();
}

void sobel_ip::thread_Gx_we0() {
    if ((esl_seteq<1,6,6>(ap_ST_st5_fsm_4, ap_CS_fsm.read()))) {
        Gx_we0 = ap_const_logic_1;
    } else {
        Gx_we0 = ap_const_logic_0;
    }
}

void sobel_ip::thread_Gy_address0() {
    if (esl_seteq<1,6,6>(ap_ST_st5_fsm_4, ap_CS_fsm.read())) {
        Gy_address0 =  (sc_lv<4>) (tmp_47_fu_771_p1.read());
    } else if (esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        Gy_address0 =  (sc_lv<4>) (ap_const_lv64_7);
    } else if (esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        Gy_address0 =  (sc_lv<4>) (ap_const_lv64_5);
    } else if (esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        Gy_address0 =  (sc_lv<4>) (ap_const_lv64_3);
    } else if (esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        Gy_address0 =  (sc_lv<4>) (ap_const_lv64_1);
    } else if (esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        Gy_address0 =  (sc_lv<4>) (ap_const_lv64_0);
    } else {
        Gy_address0 = "XXXX";
    }
}

void sobel_ip::thread_Gy_address1() {
    if (esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        Gy_address1 =  (sc_lv<4>) (ap_const_lv64_8);
    } else if (esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        Gy_address1 =  (sc_lv<4>) (ap_const_lv64_6);
    } else if (esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        Gy_address1 =  (sc_lv<4>) (ap_const_lv64_4);
    } else if (esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        Gy_address1 =  (sc_lv<4>) (ap_const_lv64_2);
    } else {
        Gy_address1 = "XXXX";
    }
}

void sobel_ip::thread_Gy_ce0() {
    if (((esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
          !esl_seteq<1,1,1>(exitcond1_fu_672_p2.read(), ap_const_lv1_0)) || 
         esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st5_fsm_4, ap_CS_fsm.read()))) {
        Gy_ce0 = ap_const_logic_1;
    } else {
        Gy_ce0 = ap_const_logic_0;
    }
}

void sobel_ip::thread_Gy_ce1() {
    if ((esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read()) || 
         esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read()))) {
        Gy_ce1 = ap_const_logic_1;
    } else {
        Gy_ce1 = ap_const_logic_0;
    }
}

void sobel_ip::thread_Gy_d0() {
    Gy_d0 = sub_in_q0.read();
}

void sobel_ip::thread_Gy_we0() {
    if ((esl_seteq<1,6,6>(ap_ST_st5_fsm_4, ap_CS_fsm.read()))) {
        Gy_we0 = ap_const_logic_1;
    } else {
        Gy_we0 = ap_const_logic_0;
    }
}

void sobel_ip::thread_abs1_1_fu_5145_p3() {
    abs1_1_fu_5145_p3 = (!abscond1_1_fu_5139_p2.read()[0].is_01())? sc_lv<32>(): ((abscond1_1_fu_5139_p2.read()[0].to_bool())? sumy0_2_1_2_2_fu_5083_p3.read(): neg1_1_fu_5133_p2.read());
}

void sobel_ip::thread_abs2_1_fu_5307_p3() {
    abs2_1_fu_5307_p3 = (!abscond2_1_fu_5301_p2.read()[0].is_01())? sc_lv<32>(): ((abscond2_1_fu_5301_p2.read()[0].to_bool())? sumx1_2_1_2_2_fu_5289_p3.read(): neg2_1_fu_5295_p2.read());
}

void sobel_ip::thread_abs2_fu_4971_p3() {
    abs2_fu_4971_p3 = (!abscond2_fu_4965_p2.read()[0].is_01())? sc_lv<32>(): ((abscond2_fu_4965_p2.read()[0].to_bool())? sumx1_2_0_2_2_fu_4953_p3.read(): neg2_fu_4959_p2.read());
}

void sobel_ip::thread_abs3_1_fu_5327_p3() {
    abs3_1_fu_5327_p3 = (!abscond3_1_fu_5321_p2.read()[0].is_01())? sc_lv<32>(): ((abscond3_1_fu_5321_p2.read()[0].to_bool())? sumy1_2_1_2_2_fu_5283_p3.read(): neg3_1_fu_5315_p2.read());
}

void sobel_ip::thread_abs3_fu_4991_p3() {
    abs3_fu_4991_p3 = (!abscond3_fu_4985_p2.read()[0].is_01())? sc_lv<32>(): ((abscond3_fu_4985_p2.read()[0].to_bool())? sumy1_2_0_2_2_fu_4947_p3.read(): neg3_fu_4979_p2.read());
}

void sobel_ip::thread_abs4_1_fu_5171_p3() {
    abs4_1_fu_5171_p3 = (!abscond4_1_fu_5165_p2.read()[0].is_01())? sc_lv<32>(): ((abscond4_1_fu_5165_p2.read()[0].to_bool())? sumx2_2_1_2_2_fu_5107_p3.read(): neg4_1_fu_5159_p2.read());
}

void sobel_ip::thread_abs4_fu_4808_p3() {
    abs4_fu_4808_p3 = (!abscond4_fu_4803_p2.read()[0].is_01())? sc_lv<32>(): ((abscond4_fu_4803_p2.read()[0].to_bool())? sumx2_2_0_2_2_reg_7271.read(): neg4_fu_4798_p2.read());
}

void sobel_ip::thread_abs5_1_fu_5191_p3() {
    abs5_1_fu_5191_p3 = (!abscond5_1_fu_5185_p2.read()[0].is_01())? sc_lv<32>(): ((abscond5_1_fu_5185_p2.read()[0].to_bool())? sumy2_2_1_2_2_fu_5101_p3.read(): neg5_1_fu_5179_p2.read());
}

void sobel_ip::thread_abs5_fu_4825_p3() {
    abs5_fu_4825_p3 = (!abscond5_fu_4820_p2.read()[0].is_01())? sc_lv<32>(): ((abscond5_fu_4820_p2.read()[0].to_bool())? sumy2_2_0_2_2_reg_7264.read(): neg5_fu_4815_p2.read());
}

void sobel_ip::thread_abs6_fu_5010_p3() {
    abs6_fu_5010_p3 = (!abscond6_reg_7330.read()[0].is_01())? sc_lv<32>(): ((abscond6_reg_7330.read()[0].to_bool())? sumx3_2_0_2_2_reg_7313.read(): neg6_fu_5005_p2.read());
}

void sobel_ip::thread_abs7_fu_5021_p3() {
    abs7_fu_5021_p3 = (!abscond7_reg_7335.read()[0].is_01())? sc_lv<32>(): ((abscond7_reg_7335.read()[0].to_bool())? sumy3_2_0_2_2_reg_7319.read(): neg7_fu_5016_p2.read());
}

void sobel_ip::thread_abs_1_fu_5125_p3() {
    abs_1_fu_5125_p3 = (!abscond_1_fu_5119_p2.read()[0].is_01())? sc_lv<32>(): ((abscond_1_fu_5119_p2.read()[0].to_bool())? sumx0_2_1_2_2_fu_5089_p3.read(): neg_1_fu_5113_p2.read());
}

void sobel_ip::thread_abscond1_1_fu_5139_p2() {
    abscond1_1_fu_5139_p2 = (!sumy0_2_1_2_2_fu_5083_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumy0_2_1_2_2_fu_5083_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond2_1_fu_5301_p2() {
    abscond2_1_fu_5301_p2 = (!sumx1_2_1_2_2_fu_5289_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumx1_2_1_2_2_fu_5289_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond2_fu_4965_p2() {
    abscond2_fu_4965_p2 = (!sumx1_2_0_2_2_fu_4953_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumx1_2_0_2_2_fu_4953_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond3_1_fu_5321_p2() {
    abscond3_1_fu_5321_p2 = (!sumy1_2_1_2_2_fu_5283_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumy1_2_1_2_2_fu_5283_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond3_fu_4985_p2() {
    abscond3_fu_4985_p2 = (!sumy1_2_0_2_2_fu_4947_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumy1_2_0_2_2_fu_4947_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond4_1_fu_5165_p2() {
    abscond4_1_fu_5165_p2 = (!sumx2_2_1_2_2_fu_5107_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumx2_2_1_2_2_fu_5107_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond4_fu_4803_p2() {
    abscond4_fu_4803_p2 = (!sumx2_2_0_2_2_reg_7271.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumx2_2_0_2_2_reg_7271.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond5_1_fu_5185_p2() {
    abscond5_1_fu_5185_p2 = (!sumy2_2_1_2_2_fu_5101_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumy2_2_1_2_2_fu_5101_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond5_fu_4820_p2() {
    abscond5_fu_4820_p2 = (!sumy2_2_0_2_2_reg_7264.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumy2_2_0_2_2_reg_7264.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond6_fu_4838_p2() {
    abscond6_fu_4838_p2 = (!sumx3_2_0_2_2_fu_4784_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumx3_2_0_2_2_fu_4784_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond7_fu_4844_p2() {
    abscond7_fu_4844_p2 = (!sumy3_2_0_2_2_fu_4791_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumy3_2_0_2_2_fu_4791_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_abscond_1_fu_5119_p2() {
    abscond_1_fu_5119_p2 = (!sumx0_2_1_2_2_fu_5089_p3.read().is_01() || !ap_const_lv32_0.is_01())? sc_lv<1>(): (sc_bigint<32>(sumx0_2_1_2_2_fu_5089_p3.read()) > sc_bigint<32>(ap_const_lv32_0));
}

void sobel_ip::thread_addrCmp10_fu_3482_p2() {
    addrCmp10_fu_3482_p2 = (!tmp_44_reg_6824.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<1>(): (sc_biguint<9>(tmp_44_reg_6824.read()) < sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_addrCmp11_fu_3627_p2() {
    addrCmp11_fu_3627_p2 = (!tmp_49_reg_6895.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<1>(): (sc_biguint<9>(tmp_49_reg_6895.read()) < sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_addrCmp12_fu_3826_p2() {
    addrCmp12_fu_3826_p2 = (!tmp_53_reg_6951.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<1>(): (sc_biguint<9>(tmp_53_reg_6951.read()) < sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_addrCmp13_fu_830_p2() {
    addrCmp13_fu_830_p2 = (!mem_index_gep8_fu_825_p2.read().is_01() || !ap_const_lv9_15A.is_01())? sc_lv<1>(): (sc_biguint<9>(mem_index_gep8_fu_825_p2.read()) < sc_biguint<9>(ap_const_lv9_15A));
}

void sobel_ip::thread_addrCmp14_fu_1695_p2() {
    addrCmp14_fu_1695_p2 = (!tmp_60_fu_1675_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_60_fu_1675_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp15_fu_1788_p2() {
    addrCmp15_fu_1788_p2 = (!mem_index_gep9_reg_6139.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep9_reg_6139.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp16_fu_1168_p2() {
    addrCmp16_fu_1168_p2 = (!tmp_64_fu_1148_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_64_fu_1148_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp17_fu_1275_p2() {
    addrCmp17_fu_1275_p2 = (!mem_index_gep10_reg_5987.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep10_reg_5987.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp18_fu_1336_p2() {
    addrCmp18_fu_1336_p2 = (!tmp_68_fu_1316_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_68_fu_1316_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp19_fu_1445_p2() {
    addrCmp19_fu_1445_p2 = (!mem_index_gep11_reg_6030.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep11_reg_6030.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp1_fu_2893_p2() {
    addrCmp1_fu_2893_p2 = (!mem_index_gep_reg_6608.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep_reg_6608.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp20_fu_1940_p2() {
    addrCmp20_fu_1940_p2 = (!mem_index_gep12_fu_1930_p2.read().is_01() || !ap_const_lv10_15A.is_01())? sc_lv<1>(): (sc_biguint<10>(mem_index_gep12_fu_1930_p2.read()) < sc_biguint<10>(ap_const_lv10_15A));
}

void sobel_ip::thread_addrCmp21_fu_2026_p2() {
    addrCmp21_fu_2026_p2 = (!mem_index_gep13_fu_2021_p2.read().is_01() || !ap_const_lv10_15A.is_01())? sc_lv<1>(): (sc_biguint<10>(mem_index_gep13_fu_2021_p2.read()) < sc_biguint<10>(ap_const_lv10_15A));
}

void sobel_ip::thread_addrCmp22_fu_2774_p2() {
    addrCmp22_fu_2774_p2 = (!tmp_81_fu_2754_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_81_fu_2754_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp23_fu_2859_p2() {
    addrCmp23_fu_2859_p2 = (!mem_index_gep14_reg_6591.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep14_reg_6591.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp24_fu_3188_p2() {
    addrCmp24_fu_3188_p2 = (!tmp_84_fu_3171_p3.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<1>(): (sc_biguint<9>(tmp_84_fu_3171_p3.read()) < sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_addrCmp25_fu_3282_p2() {
    addrCmp25_fu_3282_p2 = (!mem_index_gep15_reg_6752.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep15_reg_6752.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp26_fu_957_p2() {
    addrCmp26_fu_957_p2 = (!tmp_87_reg_5810.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<1>(): (sc_biguint<9>(tmp_87_reg_5810.read()) < sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_addrCmp27_fu_1083_p2() {
    addrCmp27_fu_1083_p2 = (!tmp_91_reg_5944.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<1>(): (sc_biguint<9>(tmp_91_reg_5944.read()) < sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_addrCmp28_fu_1237_p2() {
    addrCmp28_fu_1237_p2 = (!tmp_95_reg_5975.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<1>(): (sc_biguint<9>(tmp_95_reg_5975.read()) < sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_addrCmp29_fu_1517_p2() {
    addrCmp29_fu_1517_p2 = (!tmp_99_fu_1497_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_99_fu_1497_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp2_fu_2352_p2() {
    addrCmp2_fu_2352_p2 = (!tmp_19_fu_2332_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_19_fu_2332_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp30_fu_1587_p2() {
    addrCmp30_fu_1587_p2 = (!mem_index_gep19_reg_6084.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep19_reg_6084.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp31_fu_2089_p2() {
    addrCmp31_fu_2089_p2 = (!tmp_103_fu_2069_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_103_fu_2069_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp32_fu_2160_p2() {
    addrCmp32_fu_2160_p2 = (!mem_index_gep20_reg_6258.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep20_reg_6258.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp33_fu_1648_p2() {
    addrCmp33_fu_1648_p2 = (!tmp_107_fu_1628_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_107_fu_1628_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp34_fu_1754_p2() {
    addrCmp34_fu_1754_p2 = (!mem_index_gep21_reg_6122.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep21_reg_6122.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp35_fu_2286_p2() {
    addrCmp35_fu_2286_p2 = (!mem_index_gep22_fu_2276_p2.read().is_01() || !ap_const_lv10_15A.is_01())? sc_lv<1>(): (sc_biguint<10>(mem_index_gep22_fu_2276_p2.read()) < sc_biguint<10>(ap_const_lv10_15A));
}

void sobel_ip::thread_addrCmp3_fu_2409_p2() {
    addrCmp3_fu_2409_p2 = (!mem_index_gep1_reg_6360.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep1_reg_6360.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp4_fu_2470_p2() {
    addrCmp4_fu_2470_p2 = (!tmp_29_fu_2450_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_29_fu_2450_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp5_fu_2566_p2() {
    addrCmp5_fu_2566_p2 = (!mem_index_gep2_reg_6438.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep2_reg_6438.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp6_fu_2624_p2() {
    addrCmp6_fu_2624_p2 = (!tmp_35_fu_2607_p3.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<1>(): (sc_biguint<9>(tmp_35_fu_2607_p3.read()) < sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_addrCmp7_fu_2697_p2() {
    addrCmp7_fu_2697_p2 = (!mem_index_gep3_reg_6509.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep3_reg_6509.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp8_fu_2981_p2() {
    addrCmp8_fu_2981_p2 = (!tmp_38_fu_2961_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_38_fu_2961_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_addrCmp9_fu_3140_p2() {
    addrCmp9_fu_3140_p2 = (!mem_index_gep4_reg_6695.read().is_01() || !ap_const_lv12_15A.is_01())? sc_lv<1>(): (sc_biguint<12>(mem_index_gep4_reg_6695.read()) < sc_biguint<12>(ap_const_lv12_15A));
}

void sobel_ip::thread_addrCmp_fu_2821_p2() {
    addrCmp_fu_2821_p2 = (!tmp_11_fu_2801_p4.read().is_01() || !ap_const_lv10_3B8.is_01())? sc_lv<1>(): (sc_biguint<10>(tmp_11_fu_2801_p4.read()) < sc_biguint<10>(ap_const_lv10_3B8));
}

void sobel_ip::thread_adjSize1_fu_3376_p3() {
    adjSize1_fu_3376_p3 = esl_concat<7,1>(tmp_41_reg_5772.read(), ap_const_lv1_1);
}

void sobel_ip::thread_adjSize2_fu_2265_p3() {
    adjSize2_fu_2265_p3 = esl_concat<8,1>(i_3_reg_5759.read(), ap_const_lv1_1);
}

void sobel_ip::thread_adjSize511_cast_fu_1926_p1() {
    adjSize511_cast_fu_1926_p1 = esl_zext<10,9>(adjSize_fu_1919_p3.read());
}

void sobel_ip::thread_adjSize548_cast_fu_2272_p1() {
    adjSize548_cast_fu_2272_p1 = esl_zext<10,9>(adjSize2_fu_2265_p3.read());
}

void sobel_ip::thread_adjSize558_cast_fu_2890_p1() {
    adjSize558_cast_fu_2890_p1 = esl_zext<13,12>(mem_index_gep_reg_6608.read());
}

void sobel_ip::thread_adjSize561_cast_fu_2406_p1() {
    adjSize561_cast_fu_2406_p1 = esl_zext<13,12>(mem_index_gep1_reg_6360.read());
}

void sobel_ip::thread_adjSize573_cast_fu_2563_p1() {
    adjSize573_cast_fu_2563_p1 = esl_zext<13,12>(mem_index_gep2_reg_6438.read());
}

void sobel_ip::thread_adjSize585_cast_fu_2694_p1() {
    adjSize585_cast_fu_2694_p1 = esl_zext<13,12>(mem_index_gep3_reg_6509.read());
}

void sobel_ip::thread_adjSize597_cast_fu_3137_p1() {
    adjSize597_cast_fu_3137_p1 = esl_zext<13,12>(mem_index_gep4_reg_6695.read());
}

void sobel_ip::thread_adjSize609_cast_fu_3478_p1() {
    adjSize609_cast_fu_3478_p1 = esl_zext<13,12>(mem_index_gep5_fu_3472_p2.read());
}

void sobel_ip::thread_adjSize621_cast_fu_3623_p1() {
    adjSize621_cast_fu_3623_p1 = esl_zext<13,12>(mem_index_gep6_fu_3617_p2.read());
}

void sobel_ip::thread_adjSize633_cast_fu_3822_p1() {
    adjSize633_cast_fu_3822_p1 = esl_zext<13,12>(mem_index_gep7_fu_3816_p2.read());
}

void sobel_ip::thread_adjSize693_cast_fu_1785_p1() {
    adjSize693_cast_fu_1785_p1 = esl_zext<13,12>(mem_index_gep9_reg_6139.read());
}

void sobel_ip::thread_adjSize705_cast_fu_1272_p1() {
    adjSize705_cast_fu_1272_p1 = esl_zext<13,12>(mem_index_gep10_reg_5987.read());
}

void sobel_ip::thread_adjSize717_cast_fu_1442_p1() {
    adjSize717_cast_fu_1442_p1 = esl_zext<13,12>(mem_index_gep11_reg_6030.read());
}

void sobel_ip::thread_adjSize777_cast_fu_2856_p1() {
    adjSize777_cast_fu_2856_p1 = esl_zext<13,12>(mem_index_gep14_reg_6591.read());
}

void sobel_ip::thread_adjSize789_cast_fu_3279_p1() {
    adjSize789_cast_fu_3279_p1 = esl_zext<13,12>(mem_index_gep15_reg_6752.read());
}

void sobel_ip::thread_adjSize813_cast_fu_953_p1() {
    adjSize813_cast_fu_953_p1 = esl_zext<13,12>(mem_index_gep16_fu_947_p2.read());
}

void sobel_ip::thread_adjSize825_cast_fu_1079_p1() {
    adjSize825_cast_fu_1079_p1 = esl_zext<13,12>(mem_index_gep17_fu_1073_p2.read());
}

void sobel_ip::thread_adjSize837_cast_fu_1233_p1() {
    adjSize837_cast_fu_1233_p1 = esl_zext<13,12>(mem_index_gep18_fu_1227_p2.read());
}

void sobel_ip::thread_adjSize885_cast_fu_1584_p1() {
    adjSize885_cast_fu_1584_p1 = esl_zext<13,12>(mem_index_gep19_reg_6084.read());
}

void sobel_ip::thread_adjSize897_cast_fu_2157_p1() {
    adjSize897_cast_fu_2157_p1 = esl_zext<13,12>(mem_index_gep20_reg_6258.read());
}

void sobel_ip::thread_adjSize909_cast_fu_1751_p1() {
    adjSize909_cast_fu_1751_p1 = esl_zext<13,12>(mem_index_gep21_reg_6122.read());
}

void sobel_ip::thread_adjSize_fu_1919_p3() {
    adjSize_fu_1919_p3 = esl_concat<8,1>(i_3_reg_5759.read(), ap_const_lv1_0);
}

void sobel_ip::thread_ap_done() {
    if (esl_seteq<1,6,6>(ap_ST_st47_fsm_35, ap_CS_fsm.read())) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void sobel_ip::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void sobel_ip::thread_ap_ready() {
    if (esl_seteq<1,6,6>(ap_ST_st47_fsm_35, ap_CS_fsm.read())) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void sobel_ip::thread_call_get_range10_fu_1545_p4() {
    call_get_range10_fu_1545_p4 = (!start_pos726_cast_fu_1530_p1.read().is_01() || !end_pos727971_cast_fu_1541_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos727971_cast_fu_1541_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos726_cast_fu_1530_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos727971_cast_fu_1541_p1.read()).to_uint(), sc_biguint<64>(start_pos726_cast_fu_1530_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range11_fu_2129_p4() {
    call_get_range11_fu_2129_p4 = (!start_pos774_cast_fu_2114_p1.read().is_01() || !end_pos775975_cast_fu_2125_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos775975_cast_fu_2125_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos774_cast_fu_2114_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos775975_cast_fu_2125_p1.read()).to_uint(), sc_biguint<64>(start_pos774_cast_fu_2114_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range12_fu_3009_p4() {
    call_get_range12_fu_3009_p4 = (!start_pos786_cast_fu_2994_p1.read().is_01() || !end_pos787976_cast_fu_3005_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos787976_cast_fu_3005_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos786_cast_fu_2994_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos787976_cast_fu_3005_p1.read()).to_uint(), sc_biguint<64>(start_pos786_cast_fu_2994_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range13_fu_1042_p4() {
    call_get_range13_fu_1042_p4 = (!start_pos822_cast_fu_1027_p1.read().is_01() || !end_pos823979_cast_fu_1038_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos823979_cast_fu_1038_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos822_cast_fu_1027_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos823979_cast_fu_1038_p1.read()).to_uint(), sc_biguint<64>(start_pos822_cast_fu_1027_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range14_fu_1196_p4() {
    call_get_range14_fu_1196_p4 = (!start_pos834_cast_fu_1181_p1.read().is_01() || !end_pos835980_cast_fu_1192_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos835980_cast_fu_1192_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos834_cast_fu_1181_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos835980_cast_fu_1192_p1.read()).to_uint(), sc_biguint<64>(start_pos834_cast_fu_1181_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range15_fu_1364_p4() {
    call_get_range15_fu_1364_p4 = (!start_pos846_cast_fu_1349_p1.read().is_01() || !end_pos847981_cast_fu_1360_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos847981_cast_fu_1360_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos846_cast_fu_1349_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos847981_cast_fu_1360_p1.read()).to_uint(), sc_biguint<64>(start_pos846_cast_fu_1349_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range16_fu_1723_p4() {
    call_get_range16_fu_1723_p4 = (!start_pos894_cast_fu_1708_p1.read().is_01() || !end_pos895985_cast_fu_1719_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos895985_cast_fu_1719_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos894_cast_fu_1708_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos895985_cast_fu_1719_p1.read()).to_uint(), sc_biguint<64>(start_pos894_cast_fu_1708_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range17_fu_2229_p4() {
    call_get_range17_fu_2229_p4 = (!start_pos906_cast_fu_2214_p1.read().is_01() || !end_pos907986_cast_fu_2225_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos907986_cast_fu_2225_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos906_cast_fu_2214_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos907986_cast_fu_2225_p1.read()).to_uint(), sc_biguint<64>(start_pos906_cast_fu_2214_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range18_fu_1841_p4() {
    call_get_range18_fu_1841_p4 = (!start_pos918_cast_fu_1826_p1.read().is_01() || !end_pos919987_cast_fu_1837_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos919987_cast_fu_1837_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos918_cast_fu_1826_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos919987_cast_fu_1837_p1.read()).to_uint(), sc_biguint<64>(start_pos918_cast_fu_1826_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range1_fu_2535_p4() {
    call_get_range1_fu_2535_p4 = (!start_pos570_cast_fu_2520_p1.read().is_01() || !end_pos571958_cast_fu_2531_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos571958_cast_fu_2531_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos570_cast_fu_2520_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos571958_cast_fu_2531_p1.read()).to_uint(), sc_biguint<64>(start_pos570_cast_fu_2520_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range2_fu_2656_p4() {
    call_get_range2_fu_2656_p4 = (!start_pos582_cast_fu_2641_p1.read().is_01() || !end_pos583959_cast_fu_2652_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos583959_cast_fu_2652_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos582_cast_fu_2641_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos583959_cast_fu_2652_p1.read()).to_uint(), sc_biguint<64>(start_pos582_cast_fu_2641_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range3_fu_3236_p4() {
    call_get_range3_fu_3236_p4 = (!start_pos606_cast_fu_3221_p1.read().is_01() || !end_pos607961_cast_fu_3232_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos607961_cast_fu_3232_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos606_cast_fu_3221_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos607961_cast_fu_3232_p1.read()).to_uint(), sc_biguint<64>(start_pos606_cast_fu_3221_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range4_fu_3586_p4() {
    call_get_range4_fu_3586_p4 = (!start_pos618_cast_fu_3571_p1.read().is_01() || !end_pos619962_cast_fu_3582_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos619962_cast_fu_3582_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos618_cast_fu_3571_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos619962_cast_fu_3582_p1.read()).to_uint(), sc_biguint<64>(start_pos618_cast_fu_3571_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range5_fu_3785_p4() {
    call_get_range5_fu_3785_p4 = (!start_pos630_cast_fu_3770_p1.read().is_01() || !end_pos631963_cast_fu_3781_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos631963_cast_fu_3781_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos630_cast_fu_3770_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos631963_cast_fu_3781_p1.read()).to_uint(), sc_biguint<64>(start_pos630_cast_fu_3770_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range6_fu_4007_p4() {
    call_get_range6_fu_4007_p4 = (!start_pos642_cast_fu_3992_p1.read().is_01() || !end_pos643964_cast_fu_4003_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos643964_cast_fu_4003_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos642_cast_fu_3992_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos643964_cast_fu_4003_p1.read()).to_uint(), sc_biguint<64>(start_pos642_cast_fu_3992_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range7_fu_919_p4() {
    call_get_range7_fu_919_p4 = (!start_pos690_cast_fu_904_p1.read().is_01() || !end_pos691968_cast_fu_915_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos691968_cast_fu_915_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos690_cast_fu_904_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos691968_cast_fu_915_p1.read()).to_uint(), sc_biguint<64>(start_pos690_cast_fu_904_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range8_fu_1891_p4() {
    call_get_range8_fu_1891_p4 = (!start_pos702_cast_fu_1876_p1.read().is_01() || !end_pos703969_cast_fu_1887_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos703969_cast_fu_1887_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos702_cast_fu_1876_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos703969_cast_fu_1887_p1.read()).to_uint(), sc_biguint<64>(start_pos702_cast_fu_1876_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range9_fu_1414_p4() {
    call_get_range9_fu_1414_p4 = (!start_pos714_cast_fu_1399_p1.read().is_01() || !end_pos715970_cast_fu_1410_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos715970_cast_fu_1410_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos714_cast_fu_1399_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos715970_cast_fu_1410_p1.read()).to_uint(), sc_biguint<64>(start_pos714_cast_fu_1399_p1.read()).to_uint())));
}

void sobel_ip::thread_call_get_range_fu_3069_p4() {
    call_get_range_fu_3069_p4 = (!start_pos_cast_fu_3054_p1.read().is_01() || !end_pos957_cast_fu_3065_p1.read().is_01())? sc_lv<32>(): ((sc_biguint<64>(end_pos957_cast_fu_3065_p1.read()).to_uint() >= 32 || sc_biguint<64>(start_pos_cast_fu_3054_p1.read()).to_uint() >= 32)? sc_lv<32>():(sub_in_q0.read().range(sc_biguint<64>(end_pos957_cast_fu_3065_p1.read()).to_uint(), sc_biguint<64>(start_pos_cast_fu_3054_p1.read()).to_uint())));
}

void sobel_ip::thread_end_pos10_fu_1534_p3() {
    end_pos10_fu_1534_p3 = esl_concat<2,3>(tmp_67_reg_6024.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos11_fu_2118_p3() {
    end_pos11_fu_2118_p3 = esl_concat<2,3>(tmp_72_reg_6203.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos12_fu_2998_p3() {
    end_pos12_fu_2998_p3 = esl_concat<2,3>(tmp_80_reg_6585.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos13_fu_1031_p3() {
    end_pos13_fu_1031_p3 = esl_concat<2,3>(tmp_86_reg_5804.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos14_fu_1185_p3() {
    end_pos14_fu_1185_p3 = esl_concat<2,3>(tmp_90_reg_5938.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos15_fu_1353_p3() {
    end_pos15_fu_1353_p3 = esl_concat<2,3>(tmp_94_reg_5969.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos16_fu_1712_p3() {
    end_pos16_fu_1712_p3 = esl_concat<2,3>(tmp_98_reg_6078.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos17_fu_2218_p3() {
    end_pos17_fu_2218_p3 = esl_concat<2,3>(tmp_102_reg_6252.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos18_fu_1830_p3() {
    end_pos18_fu_1830_p3 = esl_concat<2,3>(tmp_106_reg_6116.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos1_fu_2524_p3() {
    end_pos1_fu_2524_p3 = esl_concat<2,3>(tmp_18_reg_6354.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos2_fu_2645_p3() {
    end_pos2_fu_2645_p3 = esl_concat<2,3>(tmp_28_reg_6432.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos3_fu_3225_p3() {
    end_pos3_fu_3225_p3 = esl_concat<2,3>(tmp_37_reg_6689.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos4_fu_3575_p3() {
    end_pos4_fu_3575_p3 = esl_concat<2,3>(tmp_43_reg_6818.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos571958_cast_fu_2531_p1() {
    end_pos571958_cast_fu_2531_p1 = esl_zext<64,5>(end_pos1_fu_2524_p3.read());
}

void sobel_ip::thread_end_pos583959_cast_fu_2652_p1() {
    end_pos583959_cast_fu_2652_p1 = esl_zext<64,5>(end_pos2_fu_2645_p3.read());
}

void sobel_ip::thread_end_pos5_fu_3774_p3() {
    end_pos5_fu_3774_p3 = esl_concat<2,3>(tmp_48_reg_6889.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos607961_cast_fu_3232_p1() {
    end_pos607961_cast_fu_3232_p1 = esl_zext<64,5>(end_pos3_fu_3225_p3.read());
}

void sobel_ip::thread_end_pos619962_cast_fu_3582_p1() {
    end_pos619962_cast_fu_3582_p1 = esl_zext<64,5>(end_pos4_fu_3575_p3.read());
}

void sobel_ip::thread_end_pos631963_cast_fu_3781_p1() {
    end_pos631963_cast_fu_3781_p1 = esl_zext<64,5>(end_pos5_fu_3774_p3.read());
}

void sobel_ip::thread_end_pos643964_cast_fu_4003_p1() {
    end_pos643964_cast_fu_4003_p1 = esl_zext<64,5>(end_pos6_fu_3996_p3.read());
}

void sobel_ip::thread_end_pos691968_cast_fu_915_p1() {
    end_pos691968_cast_fu_915_p1 = esl_zext<64,5>(end_pos7_fu_908_p3.read());
}

void sobel_ip::thread_end_pos6_fu_3996_p3() {
    end_pos6_fu_3996_p3 = esl_concat<2,3>(tmp_52_reg_6945.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos703969_cast_fu_1887_p1() {
    end_pos703969_cast_fu_1887_p1 = esl_zext<64,5>(end_pos8_fu_1880_p3.read());
}

void sobel_ip::thread_end_pos715970_cast_fu_1410_p1() {
    end_pos715970_cast_fu_1410_p1 = esl_zext<64,5>(end_pos9_fu_1403_p3.read());
}

void sobel_ip::thread_end_pos727971_cast_fu_1541_p1() {
    end_pos727971_cast_fu_1541_p1 = esl_zext<64,5>(end_pos10_fu_1534_p3.read());
}

void sobel_ip::thread_end_pos775975_cast_fu_2125_p1() {
    end_pos775975_cast_fu_2125_p1 = esl_zext<64,5>(end_pos11_fu_2118_p3.read());
}

void sobel_ip::thread_end_pos787976_cast_fu_3005_p1() {
    end_pos787976_cast_fu_3005_p1 = esl_zext<64,5>(end_pos12_fu_2998_p3.read());
}

void sobel_ip::thread_end_pos7_fu_908_p3() {
    end_pos7_fu_908_p3 = esl_concat<2,3>(tmp_57_reg_5787.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos823979_cast_fu_1038_p1() {
    end_pos823979_cast_fu_1038_p1 = esl_zext<64,5>(end_pos13_fu_1031_p3.read());
}

void sobel_ip::thread_end_pos835980_cast_fu_1192_p1() {
    end_pos835980_cast_fu_1192_p1 = esl_zext<64,5>(end_pos14_fu_1185_p3.read());
}

void sobel_ip::thread_end_pos847981_cast_fu_1360_p1() {
    end_pos847981_cast_fu_1360_p1 = esl_zext<64,5>(end_pos15_fu_1353_p3.read());
}

void sobel_ip::thread_end_pos895985_cast_fu_1719_p1() {
    end_pos895985_cast_fu_1719_p1 = esl_zext<64,5>(end_pos16_fu_1712_p3.read());
}

void sobel_ip::thread_end_pos8_fu_1880_p3() {
    end_pos8_fu_1880_p3 = esl_concat<2,3>(tmp_59_reg_6133.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos907986_cast_fu_2225_p1() {
    end_pos907986_cast_fu_2225_p1 = esl_zext<64,5>(end_pos17_fu_2218_p3.read());
}

void sobel_ip::thread_end_pos919987_cast_fu_1837_p1() {
    end_pos919987_cast_fu_1837_p1 = esl_zext<64,5>(end_pos18_fu_1830_p3.read());
}

void sobel_ip::thread_end_pos957_cast_fu_3065_p1() {
    end_pos957_cast_fu_3065_p1 = esl_zext<64,5>(end_pos_fu_3058_p3.read());
}

void sobel_ip::thread_end_pos9_fu_1403_p3() {
    end_pos9_fu_1403_p3 = esl_concat<2,3>(tmp_63_reg_5981.read(), ap_const_lv3_7);
}

void sobel_ip::thread_end_pos_fu_3058_p3() {
    end_pos_fu_3058_p3 = esl_concat<2,3>(tmp_6_reg_6602.read(), ap_const_lv3_7);
}

void sobel_ip::thread_exitcond1_fu_672_p2() {
    exitcond1_fu_672_p2 = (!i_reg_603.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_603.read() == ap_const_lv2_3);
}

void sobel_ip::thread_exitcond2_fu_777_p2() {
    exitcond2_fu_777_p2 = (!i_1_phi_fu_629_p4.read().is_01() || !ap_const_lv8_80.is_01())? sc_lv<1>(): sc_lv<1>(i_1_phi_fu_629_p4.read() == ap_const_lv8_80);
}

void sobel_ip::thread_exitcond3_fu_710_p2() {
    exitcond3_fu_710_p2 = (!j_reg_614.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(j_reg_614.read() == ap_const_lv2_3);
}

void sobel_ip::thread_gepindex10_fu_2708_p3() {
    gepindex10_fu_2708_p3 = (!addrCmp6_reg_6515.read()[0].is_01())? sc_lv<13>(): ((addrCmp6_reg_6515.read()[0].to_bool())? gepindex9_fu_2702_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex11_fu_2715_p3() {
    gepindex11_fu_2715_p3 = (!addrCmp7_fu_2697_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp7_fu_2697_p2.read()[0].to_bool())? gepindex10_fu_2708_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex12_fu_3145_p2() {
    gepindex12_fu_3145_p2 = (!adjSize597_cast_fu_3137_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize597_cast_fu_3137_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex13_fu_3151_p3() {
    gepindex13_fu_3151_p3 = (!addrCmp8_reg_6701.read()[0].is_01())? sc_lv<13>(): ((addrCmp8_reg_6701.read()[0].to_bool())? gepindex12_fu_3145_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex14_fu_3158_p3() {
    gepindex14_fu_3158_p3 = (!addrCmp9_fu_3140_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp9_fu_3140_p2.read()[0].to_bool())? gepindex13_fu_3151_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex15_fu_3487_p2() {
    gepindex15_fu_3487_p2 = (!adjSize609_cast_fu_3478_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize609_cast_fu_3478_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex16_fu_3493_p3() {
    gepindex16_fu_3493_p3 = (!addrCmp10_fu_3482_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp10_fu_3482_p2.read()[0].to_bool())? gepindex15_fu_3487_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex17_fu_3632_p2() {
    gepindex17_fu_3632_p2 = (!adjSize621_cast_fu_3623_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize621_cast_fu_3623_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex18_fu_3638_p3() {
    gepindex18_fu_3638_p3 = (!addrCmp11_fu_3627_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp11_fu_3627_p2.read()[0].to_bool())? gepindex17_fu_3632_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex19_fu_3831_p2() {
    gepindex19_fu_3831_p2 = (!adjSize633_cast_fu_3822_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize633_cast_fu_3822_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex1_fu_2904_p3() {
    gepindex1_fu_2904_p3 = (!addrCmp_reg_6614.read()[0].is_01())? sc_lv<13>(): ((addrCmp_reg_6614.read()[0].to_bool())? gepindex_fu_2898_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex20_fu_3837_p3() {
    gepindex20_fu_3837_p3 = (!addrCmp12_fu_3826_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp12_fu_3826_p2.read()[0].to_bool())? gepindex19_fu_3831_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex21_fu_836_p3() {
    gepindex21_fu_836_p3 = (!addrCmp13_fu_830_p2.read()[0].is_01())? sc_lv<9>(): ((addrCmp13_fu_830_p2.read()[0].to_bool())? adjSize503_cast_reg_5793.read(): ap_const_lv9_111);
}

void sobel_ip::thread_gepindex22_fu_1793_p2() {
    gepindex22_fu_1793_p2 = (!adjSize693_cast_fu_1785_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize693_cast_fu_1785_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex23_fu_1799_p3() {
    gepindex23_fu_1799_p3 = (!addrCmp14_reg_6145.read()[0].is_01())? sc_lv<13>(): ((addrCmp14_reg_6145.read()[0].to_bool())? gepindex22_fu_1793_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex24_fu_1806_p3() {
    gepindex24_fu_1806_p3 = (!addrCmp15_fu_1788_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp15_fu_1788_p2.read()[0].to_bool())? gepindex23_fu_1799_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex2567_cast_fu_2435_p1() {
    gepindex2567_cast_fu_2435_p1 = esl_sext<64,13>(gepindex5_fu_2427_p3.read());
}

void sobel_ip::thread_gepindex2579_cast_fu_2592_p1() {
    gepindex2579_cast_fu_2592_p1 = esl_sext<64,13>(gepindex8_fu_2584_p3.read());
}

void sobel_ip::thread_gepindex2591_cast_fu_2723_p1() {
    gepindex2591_cast_fu_2723_p1 = esl_sext<64,13>(gepindex11_fu_2715_p3.read());
}

void sobel_ip::thread_gepindex25_fu_1280_p2() {
    gepindex25_fu_1280_p2 = (!adjSize705_cast_fu_1272_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize705_cast_fu_1272_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex2603_cast_fu_3166_p1() {
    gepindex2603_cast_fu_3166_p1 = esl_sext<64,13>(gepindex14_fu_3158_p3.read());
}

void sobel_ip::thread_gepindex2615_cast_fu_3501_p1() {
    gepindex2615_cast_fu_3501_p1 = esl_sext<64,13>(gepindex16_fu_3493_p3.read());
}

void sobel_ip::thread_gepindex2627_cast_fu_3646_p1() {
    gepindex2627_cast_fu_3646_p1 = esl_sext<64,13>(gepindex18_fu_3638_p3.read());
}

void sobel_ip::thread_gepindex2639_cast_fu_3845_p1() {
    gepindex2639_cast_fu_3845_p1 = esl_sext<64,13>(gepindex20_fu_3837_p3.read());
}

void sobel_ip::thread_gepindex2651_cast_fu_2358_p1() {
    gepindex2651_cast_fu_2358_p1 = esl_zext<64,8>(tmp_56_reg_6312.read());
}

void sobel_ip::thread_gepindex2687_cast_fu_843_p1() {
    gepindex2687_cast_fu_843_p1 = esl_zext<64,9>(gepindex21_fu_836_p3.read());
}

void sobel_ip::thread_gepindex2699_cast_fu_1814_p1() {
    gepindex2699_cast_fu_1814_p1 = esl_sext<64,13>(gepindex24_fu_1806_p3.read());
}

void sobel_ip::thread_gepindex26_fu_1286_p3() {
    gepindex26_fu_1286_p3 = (!addrCmp16_reg_5993.read()[0].is_01())? sc_lv<13>(): ((addrCmp16_reg_5993.read()[0].to_bool())? gepindex25_fu_1280_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex2711_cast_fu_1301_p1() {
    gepindex2711_cast_fu_1301_p1 = esl_sext<64,13>(gepindex27_fu_1293_p3.read());
}

void sobel_ip::thread_gepindex2723_cast_fu_1471_p1() {
    gepindex2723_cast_fu_1471_p1 = esl_sext<64,13>(gepindex30_fu_1463_p3.read());
}

void sobel_ip::thread_gepindex2735_cast_fu_1960_p1() {
    gepindex2735_cast_fu_1960_p1 = esl_zext<64,9>(gepindex32_fu_1952_p3.read());
}

void sobel_ip::thread_gepindex2771_cast_fu_2043_p1() {
    gepindex2771_cast_fu_2043_p1 = esl_zext<64,14>(gepindex33_fu_2035_p3.read());
}

void sobel_ip::thread_gepindex2783_cast_fu_2885_p1() {
    gepindex2783_cast_fu_2885_p1 = esl_sext<64,13>(gepindex36_fu_2877_p3.read());
}

void sobel_ip::thread_gepindex2795_cast_fu_3308_p1() {
    gepindex2795_cast_fu_3308_p1 = esl_sext<64,13>(gepindex39_fu_3300_p3.read());
}

void sobel_ip::thread_gepindex27_fu_1293_p3() {
    gepindex27_fu_1293_p3 = (!addrCmp17_fu_1275_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp17_fu_1275_p2.read()[0].to_bool())? gepindex26_fu_1286_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex2819_cast_fu_976_p1() {
    gepindex2819_cast_fu_976_p1 = esl_sext<64,13>(gepindex41_fu_968_p3.read());
}

void sobel_ip::thread_gepindex2831_cast_fu_1102_p1() {
    gepindex2831_cast_fu_1102_p1 = esl_sext<64,13>(gepindex43_fu_1094_p3.read());
}

void sobel_ip::thread_gepindex2843_cast_fu_1256_p1() {
    gepindex2843_cast_fu_1256_p1 = esl_sext<64,13>(gepindex45_fu_1248_p3.read());
}

void sobel_ip::thread_gepindex2855_cast_fu_3383_p1() {
    gepindex2855_cast_fu_3383_p1 = esl_zext<64,8>(adjSize1_fu_3376_p3.read());
}

void sobel_ip::thread_gepindex2891_cast_fu_1613_p1() {
    gepindex2891_cast_fu_1613_p1 = esl_sext<64,13>(gepindex48_fu_1605_p3.read());
}

void sobel_ip::thread_gepindex28_fu_1450_p2() {
    gepindex28_fu_1450_p2 = (!adjSize717_cast_fu_1442_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize717_cast_fu_1442_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex2903_cast_fu_2186_p1() {
    gepindex2903_cast_fu_2186_p1 = esl_sext<64,13>(gepindex51_fu_2178_p3.read());
}

void sobel_ip::thread_gepindex2915_cast_fu_1780_p1() {
    gepindex2915_cast_fu_1780_p1 = esl_sext<64,13>(gepindex54_fu_1772_p3.read());
}

void sobel_ip::thread_gepindex2927_cast_fu_2306_p1() {
    gepindex2927_cast_fu_2306_p1 = esl_zext<64,9>(gepindex56_fu_2298_p3.read());
}

void sobel_ip::thread_gepindex29_fu_1456_p3() {
    gepindex29_fu_1456_p3 = (!addrCmp18_reg_6036.read()[0].is_01())? sc_lv<13>(): ((addrCmp18_reg_6036.read()[0].to_bool())? gepindex28_fu_1450_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex2_cast_fu_2919_p1() {
    gepindex2_cast_fu_2919_p1 = esl_sext<64,13>(gepindex2_fu_2911_p3.read());
}

void sobel_ip::thread_gepindex2_fu_2911_p3() {
    gepindex2_fu_2911_p3 = (!addrCmp1_fu_2893_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp1_fu_2893_p2.read()[0].to_bool())? gepindex1_fu_2904_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex30_fu_1463_p3() {
    gepindex30_fu_1463_p3 = (!addrCmp19_fu_1445_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp19_fu_1445_p2.read()[0].to_bool())? gepindex29_fu_1456_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex31_fu_1946_p2() {
    gepindex31_fu_1946_p2 = (!tmp_71_fu_1936_p1.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<9>(): (sc_bigint<9>(tmp_71_fu_1936_p1.read()) + sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_gepindex32_fu_1952_p3() {
    gepindex32_fu_1952_p3 = (!addrCmp20_fu_1940_p2.read()[0].is_01())? sc_lv<9>(): ((addrCmp20_fu_1940_p2.read()[0].to_bool())? gepindex31_fu_1946_p2.read(): ap_const_lv9_111);
}

void sobel_ip::thread_gepindex33_fu_2035_p3() {
    gepindex33_fu_2035_p3 = (!addrCmp21_fu_2026_p2.read()[0].is_01())? sc_lv<14>(): ((addrCmp21_fu_2026_p2.read()[0].to_bool())? gepindex769_cast_fu_2032_p1.read(): ap_const_lv14_111);
}

void sobel_ip::thread_gepindex34_fu_2864_p2() {
    gepindex34_fu_2864_p2 = (!adjSize777_cast_fu_2856_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize777_cast_fu_2856_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex35_fu_2870_p3() {
    gepindex35_fu_2870_p3 = (!addrCmp22_reg_6597.read()[0].is_01())? sc_lv<13>(): ((addrCmp22_reg_6597.read()[0].to_bool())? gepindex34_fu_2864_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex36_fu_2877_p3() {
    gepindex36_fu_2877_p3 = (!addrCmp23_fu_2859_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp23_fu_2859_p2.read()[0].to_bool())? gepindex35_fu_2870_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex37_fu_3287_p2() {
    gepindex37_fu_3287_p2 = (!adjSize789_cast_fu_3279_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize789_cast_fu_3279_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex38_fu_3293_p3() {
    gepindex38_fu_3293_p3 = (!addrCmp24_reg_6758.read()[0].is_01())? sc_lv<13>(): ((addrCmp24_reg_6758.read()[0].to_bool())? gepindex37_fu_3287_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex39_fu_3300_p3() {
    gepindex39_fu_3300_p3 = (!addrCmp25_fu_3282_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp25_fu_3282_p2.read()[0].to_bool())? gepindex38_fu_3293_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex3_fu_2414_p2() {
    gepindex3_fu_2414_p2 = (!adjSize561_cast_fu_2406_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize561_cast_fu_2406_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex40_fu_962_p2() {
    gepindex40_fu_962_p2 = (!adjSize813_cast_fu_953_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize813_cast_fu_953_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex41_fu_968_p3() {
    gepindex41_fu_968_p3 = (!addrCmp26_fu_957_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp26_fu_957_p2.read()[0].to_bool())? gepindex40_fu_962_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex42_fu_1088_p2() {
    gepindex42_fu_1088_p2 = (!adjSize825_cast_fu_1079_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize825_cast_fu_1079_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex43_fu_1094_p3() {
    gepindex43_fu_1094_p3 = (!addrCmp27_fu_1083_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp27_fu_1083_p2.read()[0].to_bool())? gepindex42_fu_1088_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex44_fu_1242_p2() {
    gepindex44_fu_1242_p2 = (!adjSize837_cast_fu_1233_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize837_cast_fu_1233_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex45_fu_1248_p3() {
    gepindex45_fu_1248_p3 = (!addrCmp28_fu_1237_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp28_fu_1237_p2.read()[0].to_bool())? gepindex44_fu_1242_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex46_fu_1592_p2() {
    gepindex46_fu_1592_p2 = (!adjSize885_cast_fu_1584_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize885_cast_fu_1584_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex47_fu_1598_p3() {
    gepindex47_fu_1598_p3 = (!addrCmp29_reg_6090.read()[0].is_01())? sc_lv<13>(): ((addrCmp29_reg_6090.read()[0].to_bool())? gepindex46_fu_1592_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex48_fu_1605_p3() {
    gepindex48_fu_1605_p3 = (!addrCmp30_fu_1587_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp30_fu_1587_p2.read()[0].to_bool())? gepindex47_fu_1598_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex49_fu_2165_p2() {
    gepindex49_fu_2165_p2 = (!adjSize897_cast_fu_2157_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize897_cast_fu_2157_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex4_fu_2420_p3() {
    gepindex4_fu_2420_p3 = (!addrCmp2_reg_6366.read()[0].is_01())? sc_lv<13>(): ((addrCmp2_reg_6366.read()[0].to_bool())? gepindex3_fu_2414_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex50_fu_2171_p3() {
    gepindex50_fu_2171_p3 = (!addrCmp31_reg_6264.read()[0].is_01())? sc_lv<13>(): ((addrCmp31_reg_6264.read()[0].to_bool())? gepindex49_fu_2165_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex51_fu_2178_p3() {
    gepindex51_fu_2178_p3 = (!addrCmp32_fu_2160_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp32_fu_2160_p2.read()[0].to_bool())? gepindex50_fu_2171_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex52_fu_1759_p2() {
    gepindex52_fu_1759_p2 = (!adjSize909_cast_fu_1751_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize909_cast_fu_1751_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex53_fu_1765_p3() {
    gepindex53_fu_1765_p3 = (!addrCmp33_reg_6128.read()[0].is_01())? sc_lv<13>(): ((addrCmp33_reg_6128.read()[0].to_bool())? gepindex52_fu_1759_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex54_fu_1772_p3() {
    gepindex54_fu_1772_p3 = (!addrCmp34_fu_1754_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp34_fu_1754_p2.read()[0].to_bool())? gepindex53_fu_1765_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex55_fu_2292_p2() {
    gepindex55_fu_2292_p2 = (!tmp_110_fu_2282_p1.read().is_01() || !ap_const_lv9_1B8.is_01())? sc_lv<9>(): (sc_bigint<9>(tmp_110_fu_2282_p1.read()) + sc_biguint<9>(ap_const_lv9_1B8));
}

void sobel_ip::thread_gepindex56_fu_2298_p3() {
    gepindex56_fu_2298_p3 = (!addrCmp35_fu_2286_p2.read()[0].is_01())? sc_lv<9>(): ((addrCmp35_fu_2286_p2.read()[0].to_bool())? gepindex55_fu_2292_p2.read(): ap_const_lv9_111);
}

void sobel_ip::thread_gepindex5_fu_2427_p3() {
    gepindex5_fu_2427_p3 = (!addrCmp3_fu_2409_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp3_fu_2409_p2.read()[0].to_bool())? gepindex4_fu_2420_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex6_fu_2571_p2() {
    gepindex6_fu_2571_p2 = (!adjSize573_cast_fu_2563_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize573_cast_fu_2563_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex769_cast_fu_2032_p1() {
    gepindex769_cast_fu_2032_p1 = esl_zext<14,10>(cast_gep_index242_cast_reg_6209.read());
}

void sobel_ip::thread_gepindex7_fu_2577_p3() {
    gepindex7_fu_2577_p3 = (!addrCmp4_reg_6444.read()[0].is_01())? sc_lv<13>(): ((addrCmp4_reg_6444.read()[0].to_bool())? gepindex6_fu_2571_p2.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex8_fu_2584_p3() {
    gepindex8_fu_2584_p3 = (!addrCmp5_fu_2566_p2.read()[0].is_01())? sc_lv<13>(): ((addrCmp5_fu_2566_p2.read()[0].to_bool())? gepindex7_fu_2577_p3.read(): ap_const_lv13_111);
}

void sobel_ip::thread_gepindex9_fu_2702_p2() {
    gepindex9_fu_2702_p2 = (!adjSize585_cast_fu_2694_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize585_cast_fu_2694_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_gepindex_fu_2898_p2() {
    gepindex_fu_2898_p2 = (!adjSize558_cast_fu_2890_p1.read().is_01() || !ap_const_lv13_1FB8.is_01())? sc_lv<13>(): (sc_bigint<13>(adjSize558_cast_fu_2890_p1.read()) + sc_biguint<13>(ap_const_lv13_1FB8));
}

void sobel_ip::thread_grp_fu_1004_ce() {
    grp_fu_1004_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1004_p0() {
    grp_fu_1004_p0 = Gy_load_5_reg_5665.read();
}

void sobel_ip::thread_grp_fu_1004_p1() {
    grp_fu_1004_p1 =  (sc_lv<8>) (grp_fu_1004_p10.read());
}

void sobel_ip::thread_grp_fu_1004_p10() {
    grp_fu_1004_p10 = esl_zext<32,8>(tmp_58_reg_5928.read());
}

void sobel_ip::thread_grp_fu_1060_ce() {
    grp_fu_1060_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1060_p0() {
    grp_fu_1060_p0 = Gx_load_3_reg_5595.read();
}

void sobel_ip::thread_grp_fu_1060_p1() {
    grp_fu_1060_p1 =  (sc_lv<8>) (tmp_41_1_1_fu_1056_p1.read());
}

void sobel_ip::thread_grp_fu_1065_ce() {
    grp_fu_1065_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1065_p0() {
    grp_fu_1065_p0 = Gy_load_3_reg_5605.read();
}

void sobel_ip::thread_grp_fu_1065_p1() {
    grp_fu_1065_p1 =  (sc_lv<8>) (tmp_41_1_1_fu_1056_p1.read());
}

void sobel_ip::thread_grp_fu_1214_ce() {
    grp_fu_1214_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1214_p0() {
    grp_fu_1214_p0 = Gx_load_3_reg_5595.read();
}

void sobel_ip::thread_grp_fu_1214_p1() {
    grp_fu_1214_p1 =  (sc_lv<8>) (tmp_48_1_1_fu_1210_p1.read());
}

void sobel_ip::thread_grp_fu_1219_ce() {
    grp_fu_1219_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1219_p0() {
    grp_fu_1219_p0 = Gy_load_3_reg_5605.read();
}

void sobel_ip::thread_grp_fu_1219_p1() {
    grp_fu_1219_p1 =  (sc_lv<8>) (tmp_48_1_1_fu_1210_p1.read());
}

void sobel_ip::thread_grp_fu_1382_ce() {
    grp_fu_1382_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1382_p0() {
    grp_fu_1382_p0 = Gx_load_3_reg_5595.read();
}

void sobel_ip::thread_grp_fu_1382_p1() {
    grp_fu_1382_p1 =  (sc_lv<8>) (tmp_55_1_1_fu_1378_p1.read());
}

void sobel_ip::thread_grp_fu_1387_ce() {
    grp_fu_1387_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1387_p0() {
    grp_fu_1387_p0 = Gy_load_3_reg_5605.read();
}

void sobel_ip::thread_grp_fu_1387_p1() {
    grp_fu_1387_p1 =  (sc_lv<8>) (tmp_55_1_1_fu_1378_p1.read());
}

void sobel_ip::thread_grp_fu_1432_ce() {
    grp_fu_1432_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1432_p0() {
    grp_fu_1432_p0 = Gx_load_6_reg_5675.read();
}

void sobel_ip::thread_grp_fu_1432_p1() {
    grp_fu_1432_p1 =  (sc_lv<8>) (tmp_55_0_2_fu_1428_p1.read());
}

void sobel_ip::thread_grp_fu_1437_ce() {
    grp_fu_1437_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1437_p0() {
    grp_fu_1437_p0 = Gy_load_6_reg_5685.read();
}

void sobel_ip::thread_grp_fu_1437_p1() {
    grp_fu_1437_p1 =  (sc_lv<8>) (tmp_55_0_2_fu_1428_p1.read());
}

void sobel_ip::thread_grp_fu_1563_ce() {
    grp_fu_1563_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1563_p0() {
    grp_fu_1563_p0 = Gx_load_6_reg_5675.read();
}

void sobel_ip::thread_grp_fu_1563_p1() {
    grp_fu_1563_p1 =  (sc_lv<8>) (tmp_62_0_2_fu_1559_p1.read());
}

void sobel_ip::thread_grp_fu_1568_ce() {
    grp_fu_1568_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1568_p0() {
    grp_fu_1568_p0 = Gy_load_6_reg_5685.read();
}

void sobel_ip::thread_grp_fu_1568_p1() {
    grp_fu_1568_p1 =  (sc_lv<8>) (tmp_62_0_2_fu_1559_p1.read());
}

void sobel_ip::thread_grp_fu_1741_ce() {
    grp_fu_1741_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1741_p0() {
    grp_fu_1741_p0 = Gx_load_6_reg_5675.read();
}

void sobel_ip::thread_grp_fu_1741_p1() {
    grp_fu_1741_p1 =  (sc_lv<8>) (tmp_41_1_2_fu_1737_p1.read());
}

void sobel_ip::thread_grp_fu_1746_ce() {
    grp_fu_1746_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1746_p0() {
    grp_fu_1746_p0 = Gy_load_6_reg_5685.read();
}

void sobel_ip::thread_grp_fu_1746_p1() {
    grp_fu_1746_p1 =  (sc_lv<8>) (tmp_41_1_2_fu_1737_p1.read());
}

void sobel_ip::thread_grp_fu_1859_ce() {
    grp_fu_1859_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1859_p0() {
    grp_fu_1859_p0 = Gx_load_6_reg_5675.read();
}

void sobel_ip::thread_grp_fu_1859_p1() {
    grp_fu_1859_p1 =  (sc_lv<8>) (tmp_55_1_2_fu_1855_p1.read());
}

void sobel_ip::thread_grp_fu_1864_ce() {
    grp_fu_1864_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1864_p0() {
    grp_fu_1864_p0 = Gy_load_6_reg_5685.read();
}

void sobel_ip::thread_grp_fu_1864_p1() {
    grp_fu_1864_p1 =  (sc_lv<8>) (tmp_55_1_2_fu_1855_p1.read());
}

void sobel_ip::thread_grp_fu_1909_ce() {
    grp_fu_1909_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1909_p0() {
    grp_fu_1909_p0 = Gx_load_6_reg_5675.read();
}

void sobel_ip::thread_grp_fu_1909_p1() {
    grp_fu_1909_p1 =  (sc_lv<8>) (tmp_48_0_2_fu_1905_p1.read());
}

void sobel_ip::thread_grp_fu_1914_ce() {
    grp_fu_1914_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1914_p0() {
    grp_fu_1914_p0 = Gy_load_6_reg_5685.read();
}

void sobel_ip::thread_grp_fu_1914_p1() {
    grp_fu_1914_p1 =  (sc_lv<8>) (tmp_48_0_2_fu_1905_p1.read());
}

void sobel_ip::thread_grp_fu_1988_ce() {
    grp_fu_1988_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1988_p0() {
    grp_fu_1988_p0 = Gx_load_7_reg_5715.read();
}

void sobel_ip::thread_grp_fu_1988_p1() {
    grp_fu_1988_p1 =  (sc_lv<8>) (tmp_48_0_2_1_fu_1984_p1.read());
}

void sobel_ip::thread_grp_fu_1993_ce() {
    grp_fu_1993_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_1993_p0() {
    grp_fu_1993_p0 = Gy_load_7_reg_5725.read();
}

void sobel_ip::thread_grp_fu_1993_p1() {
    grp_fu_1993_p1 =  (sc_lv<8>) (tmp_48_0_2_1_fu_1984_p1.read());
}

void sobel_ip::thread_grp_fu_2002_ce() {
    grp_fu_2002_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2002_p0() {
    grp_fu_2002_p0 = Gx_load_7_reg_5715.read();
}

void sobel_ip::thread_grp_fu_2002_p1() {
    grp_fu_2002_p1 =  (sc_lv<8>) (tmp_55_0_2_1_fu_1998_p1.read());
}

void sobel_ip::thread_grp_fu_2007_ce() {
    grp_fu_2007_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2007_p0() {
    grp_fu_2007_p0 = Gy_load_7_reg_5725.read();
}

void sobel_ip::thread_grp_fu_2007_p1() {
    grp_fu_2007_p1 =  (sc_lv<8>) (tmp_55_0_2_1_fu_1998_p1.read());
}

void sobel_ip::thread_grp_fu_2016_ce() {
    grp_fu_2016_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2016_p0() {
    grp_fu_2016_p0 = Gx_load_7_reg_5715.read();
}

void sobel_ip::thread_grp_fu_2016_p1() {
    grp_fu_2016_p1 =  (sc_lv<8>) (grp_fu_2016_p10.read());
}

void sobel_ip::thread_grp_fu_2016_p10() {
    grp_fu_2016_p10 = esl_zext<32,8>(grp_fu_658_p4.read());
}

void sobel_ip::thread_grp_fu_2095_ce() {
    grp_fu_2095_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2095_p0() {
    grp_fu_2095_p0 = Gy_load_7_reg_5725.read();
}

void sobel_ip::thread_grp_fu_2095_p1() {
    grp_fu_2095_p1 =  (sc_lv<8>) (tmp_62_0_2_1_reg_6239.read());
}

void sobel_ip::thread_grp_fu_2099_ce() {
    grp_fu_2099_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2099_p0() {
    grp_fu_2099_p0 = Gx_load_8_reg_5735.read();
}

void sobel_ip::thread_grp_fu_2099_p1() {
    grp_fu_2099_p1 =  (sc_lv<8>) (tmp_62_0_2_1_reg_6239.read());
}

void sobel_ip::thread_grp_fu_2103_ce() {
    grp_fu_2103_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2103_p0() {
    grp_fu_2103_p0 = Gy_load_8_reg_5745.read();
}

void sobel_ip::thread_grp_fu_2103_p1() {
    grp_fu_2103_p1 =  (sc_lv<8>) (tmp_62_0_2_1_reg_6239.read());
}

void sobel_ip::thread_grp_fu_2147_ce() {
    grp_fu_2147_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2147_p0() {
    grp_fu_2147_p0 = Gx_load_8_reg_5735.read();
}

void sobel_ip::thread_grp_fu_2147_p1() {
    grp_fu_2147_p1 =  (sc_lv<8>) (tmp_62_0_2_2_fu_2143_p1.read());
}

void sobel_ip::thread_grp_fu_2152_ce() {
    grp_fu_2152_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2152_p0() {
    grp_fu_2152_p0 = Gy_load_8_reg_5745.read();
}

void sobel_ip::thread_grp_fu_2152_p1() {
    grp_fu_2152_p1 =  (sc_lv<8>) (tmp_62_0_2_2_fu_2143_p1.read());
}

void sobel_ip::thread_grp_fu_2203_ce() {
    grp_fu_2203_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2203_p0() {
    grp_fu_2203_p0 = Gx_load_8_reg_5735.read();
}

void sobel_ip::thread_grp_fu_2203_p1() {
    grp_fu_2203_p1 =  (sc_lv<8>) (tmp_55_0_2_1_reg_6231.read());
}

void sobel_ip::thread_grp_fu_2247_ce() {
    grp_fu_2247_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2247_p0() {
    grp_fu_2247_p0 = Gx_load_6_reg_5675.read();
}

void sobel_ip::thread_grp_fu_2247_p1() {
    grp_fu_2247_p1 =  (sc_lv<8>) (tmp_48_1_2_fu_2243_p1.read());
}

void sobel_ip::thread_grp_fu_2252_ce() {
    grp_fu_2252_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2252_p0() {
    grp_fu_2252_p0 = Gy_load_6_reg_5685.read();
}

void sobel_ip::thread_grp_fu_2252_p1() {
    grp_fu_2252_p1 =  (sc_lv<8>) (tmp_48_1_2_fu_2243_p1.read());
}

void sobel_ip::thread_grp_fu_2257_ce() {
    grp_fu_2257_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2257_p0() {
    grp_fu_2257_p0 = Gx_load_7_reg_5715.read();
}

void sobel_ip::thread_grp_fu_2257_p1() {
    grp_fu_2257_p1 =  (sc_lv<8>) (tmp_62_0_2_2_reg_6289.read());
}

void sobel_ip::thread_grp_fu_2261_ce() {
    grp_fu_2261_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2261_p0() {
    grp_fu_2261_p0 = Gy_load_7_reg_5725.read();
}

void sobel_ip::thread_grp_fu_2261_p1() {
    grp_fu_2261_p1 =  (sc_lv<8>) (tmp_62_0_2_2_reg_6289.read());
}

void sobel_ip::thread_grp_fu_2366_ce() {
    grp_fu_2366_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2366_p0() {
    grp_fu_2366_p0 = Gx_load_7_reg_5715.read();
}

void sobel_ip::thread_grp_fu_2366_p1() {
    grp_fu_2366_p1 =  (sc_lv<8>) (tmp_48_1_2_1_fu_2362_p1.read());
}

void sobel_ip::thread_grp_fu_2371_ce() {
    grp_fu_2371_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2371_p0() {
    grp_fu_2371_p0 = Gy_load_7_reg_5725.read();
}

void sobel_ip::thread_grp_fu_2371_p1() {
    grp_fu_2371_p1 =  (sc_lv<8>) (tmp_48_1_2_1_fu_2362_p1.read());
}

void sobel_ip::thread_grp_fu_2380_ce() {
    grp_fu_2380_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2380_p0() {
    grp_fu_2380_p0 = Gx_load_7_reg_5715.read();
}

void sobel_ip::thread_grp_fu_2380_p1() {
    grp_fu_2380_p1 =  (sc_lv<8>) (tmp_55_1_2_1_fu_2376_p1.read());
}

void sobel_ip::thread_grp_fu_2385_ce() {
    grp_fu_2385_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2385_p0() {
    grp_fu_2385_p0 = Gy_load_7_reg_5725.read();
}

void sobel_ip::thread_grp_fu_2385_p1() {
    grp_fu_2385_p1 =  (sc_lv<8>) (tmp_55_1_2_1_fu_2376_p1.read());
}

void sobel_ip::thread_grp_fu_2390_ce() {
    grp_fu_2390_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2390_p0() {
    grp_fu_2390_p0 = Gx_load_8_reg_5735.read();
}

void sobel_ip::thread_grp_fu_2390_p1() {
    grp_fu_2390_p1 =  (sc_lv<8>) (tmp_48_1_2_1_fu_2362_p1.read());
}

void sobel_ip::thread_grp_fu_2480_ce() {
    grp_fu_2480_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2480_p0() {
    grp_fu_2480_p0 = Gx_load_4_reg_5615.read();
}

void sobel_ip::thread_grp_fu_2480_p1() {
    grp_fu_2480_p1 =  (sc_lv<8>) (grp_fu_2480_p10.read());
}

void sobel_ip::thread_grp_fu_2480_p10() {
    grp_fu_2480_p10 = esl_zext<32,8>(grp_fu_638_p4.read());
}

void sobel_ip::thread_grp_fu_2489_ce() {
    grp_fu_2489_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2489_p0() {
    grp_fu_2489_p0 = Gx_load_4_reg_5615.read();
}

void sobel_ip::thread_grp_fu_2489_p1() {
    grp_fu_2489_p1 =  (sc_lv<8>) (tmp_55_0_1_1_fu_2485_p1.read());
}

void sobel_ip::thread_grp_fu_2494_ce() {
    grp_fu_2494_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2494_p0() {
    grp_fu_2494_p0 = Gy_load_4_reg_5625.read();
}

void sobel_ip::thread_grp_fu_2494_p1() {
    grp_fu_2494_p1 =  (sc_lv<8>) (tmp_55_0_1_1_fu_2485_p1.read());
}

void sobel_ip::thread_grp_fu_2503_ce() {
    grp_fu_2503_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2503_p0() {
    grp_fu_2503_p0 = Gx_load_4_reg_5615.read();
}

void sobel_ip::thread_grp_fu_2503_p1() {
    grp_fu_2503_p1 =  (sc_lv<8>) (tmp_62_0_1_1_fu_2499_p1.read());
}

void sobel_ip::thread_grp_fu_2508_ce() {
    grp_fu_2508_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2508_p0() {
    grp_fu_2508_p0 = Gy_load_4_reg_5625.read();
}

void sobel_ip::thread_grp_fu_2508_p1() {
    grp_fu_2508_p1 =  (sc_lv<8>) (tmp_62_0_1_1_fu_2499_p1.read());
}

void sobel_ip::thread_grp_fu_2553_ce() {
    grp_fu_2553_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2553_p0() {
    grp_fu_2553_p0 = Gx_load_reg_5495.read();
}

void sobel_ip::thread_grp_fu_2553_p1() {
    grp_fu_2553_p1 =  (sc_lv<8>) (tmp_24_fu_2549_p1.read());
}

void sobel_ip::thread_grp_fu_2558_ce() {
    grp_fu_2558_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2558_p0() {
    grp_fu_2558_p0 = Gy_load_reg_5505.read();
}

void sobel_ip::thread_grp_fu_2558_p1() {
    grp_fu_2558_p1 =  (sc_lv<8>) (tmp_24_fu_2549_p1.read());
}

void sobel_ip::thread_grp_fu_2597_ce() {
    grp_fu_2597_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2597_p0() {
    grp_fu_2597_p0 = Gx_load_1_reg_5535.read();
}

void sobel_ip::thread_grp_fu_2597_p1() {
    grp_fu_2597_p1 =  (sc_lv<8>) (tmp_24_fu_2549_p1.read());
}

void sobel_ip::thread_grp_fu_2602_ce() {
    grp_fu_2602_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2602_p0() {
    grp_fu_2602_p0 = Gy_load_1_reg_5545.read();
}

void sobel_ip::thread_grp_fu_2602_p1() {
    grp_fu_2602_p1 =  (sc_lv<8>) (tmp_24_fu_2549_p1.read());
}

void sobel_ip::thread_grp_fu_2630_ce() {
    grp_fu_2630_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2630_p0() {
    grp_fu_2630_p0 = Gy_load_4_reg_5625.read();
}

void sobel_ip::thread_grp_fu_2630_p1() {
    grp_fu_2630_p1 =  (sc_lv<8>) (tmp_48_0_1_1_reg_6449.read());
}

void sobel_ip::thread_grp_fu_2674_ce() {
    grp_fu_2674_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2674_p0() {
    grp_fu_2674_p0 = Gx_load_reg_5495.read();
}

void sobel_ip::thread_grp_fu_2674_p1() {
    grp_fu_2674_p1 =  (sc_lv<8>) (tmp_32_fu_2670_p1.read());
}

void sobel_ip::thread_grp_fu_2679_ce() {
    grp_fu_2679_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2679_p0() {
    grp_fu_2679_p0 = Gy_load_reg_5505.read();
}

void sobel_ip::thread_grp_fu_2679_p1() {
    grp_fu_2679_p1 =  (sc_lv<8>) (tmp_32_fu_2670_p1.read());
}

void sobel_ip::thread_grp_fu_2684_ce() {
    grp_fu_2684_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2684_p0() {
    grp_fu_2684_p0 = Gx_load_1_reg_5535.read();
}

void sobel_ip::thread_grp_fu_2684_p1() {
    grp_fu_2684_p1 =  (sc_lv<8>) (tmp_32_fu_2670_p1.read());
}

void sobel_ip::thread_grp_fu_2689_ce() {
    grp_fu_2689_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2689_p0() {
    grp_fu_2689_p0 = Gy_load_1_reg_5545.read();
}

void sobel_ip::thread_grp_fu_2689_p1() {
    grp_fu_2689_p1 =  (sc_lv<8>) (tmp_32_fu_2670_p1.read());
}

void sobel_ip::thread_grp_fu_2728_ce() {
    grp_fu_2728_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2728_p0() {
    grp_fu_2728_p0 = Gx_load_2_reg_5555.read();
}

void sobel_ip::thread_grp_fu_2728_p1() {
    grp_fu_2728_p1 =  (sc_lv<8>) (tmp_32_fu_2670_p1.read());
}

void sobel_ip::thread_grp_fu_2831_ce() {
    grp_fu_2831_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2831_p0() {
    grp_fu_2831_p0 = Gx_load_1_reg_5535.read();
}

void sobel_ip::thread_grp_fu_2831_p1() {
    grp_fu_2831_p1 =  (sc_lv<8>) (tmp_62_0_0_1_fu_2827_p1.read());
}

void sobel_ip::thread_grp_fu_2836_ce() {
    grp_fu_2836_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2836_p0() {
    grp_fu_2836_p0 = Gy_load_1_reg_5545.read();
}

void sobel_ip::thread_grp_fu_2836_p1() {
    grp_fu_2836_p1 =  (sc_lv<8>) (tmp_62_0_0_1_fu_2827_p1.read());
}

void sobel_ip::thread_grp_fu_2841_ce() {
    grp_fu_2841_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2841_p0() {
    grp_fu_2841_p0 = Gx_load_2_reg_5555.read();
}

void sobel_ip::thread_grp_fu_2841_p1() {
    grp_fu_2841_p1 =  (sc_lv<8>) (tmp_62_0_0_1_fu_2827_p1.read());
}

void sobel_ip::thread_grp_fu_2846_ce() {
    grp_fu_2846_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2846_p0() {
    grp_fu_2846_p0 = Gx_load_reg_5495.read();
}

void sobel_ip::thread_grp_fu_2846_p1() {
    grp_fu_2846_p1 =  (sc_lv<8>) (tmp_62_0_0_1_fu_2827_p1.read());
}

void sobel_ip::thread_grp_fu_2851_ce() {
    grp_fu_2851_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2851_p0() {
    grp_fu_2851_p0 = Gy_load_reg_5505.read();
}

void sobel_ip::thread_grp_fu_2851_p1() {
    grp_fu_2851_p1 =  (sc_lv<8>) (tmp_62_0_0_1_fu_2827_p1.read());
}

void sobel_ip::thread_grp_fu_2948_ce() {
    grp_fu_2948_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_2948_p0() {
    grp_fu_2948_p0 = Gy_load_2_reg_5565.read();
}

void sobel_ip::thread_grp_fu_2948_p1() {
    grp_fu_2948_p1 =  (sc_lv<8>) (tmp_62_0_0_1_reg_6639.read());
}

void sobel_ip::thread_grp_fu_3027_ce() {
    grp_fu_3027_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3027_p0() {
    grp_fu_3027_p0 = Gx_load_reg_5495.read();
}

void sobel_ip::thread_grp_fu_3027_p1() {
    grp_fu_3027_p1 =  (sc_lv<8>) (tmp_55_1_fu_3023_p1.read());
}

void sobel_ip::thread_grp_fu_3032_ce() {
    grp_fu_3032_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3032_p0() {
    grp_fu_3032_p0 = Gy_load_reg_5505.read();
}

void sobel_ip::thread_grp_fu_3032_p1() {
    grp_fu_3032_p1 =  (sc_lv<8>) (tmp_55_1_fu_3023_p1.read());
}

void sobel_ip::thread_grp_fu_3037_ce() {
    grp_fu_3037_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3037_p0() {
    grp_fu_3037_p0 = Gx_load_1_reg_5535.read();
}

void sobel_ip::thread_grp_fu_3037_p1() {
    grp_fu_3037_p1 =  (sc_lv<8>) (tmp_55_1_fu_3023_p1.read());
}

void sobel_ip::thread_grp_fu_3042_ce() {
    grp_fu_3042_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3042_p0() {
    grp_fu_3042_p0 = Gy_load_1_reg_5545.read();
}

void sobel_ip::thread_grp_fu_3042_p1() {
    grp_fu_3042_p1 =  (sc_lv<8>) (tmp_55_1_fu_3023_p1.read());
}

void sobel_ip::thread_grp_fu_3087_ce() {
    grp_fu_3087_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3087_p0() {
    grp_fu_3087_p0 = Gx_load_reg_5495.read();
}

void sobel_ip::thread_grp_fu_3087_p1() {
    grp_fu_3087_p1 =  (sc_lv<8>) (tmp_14_fu_3083_p1.read());
}

void sobel_ip::thread_grp_fu_3092_ce() {
    grp_fu_3092_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3092_p0() {
    grp_fu_3092_p0 = Gy_load_reg_5505.read();
}

void sobel_ip::thread_grp_fu_3092_p1() {
    grp_fu_3092_p1 =  (sc_lv<8>) (tmp_14_fu_3083_p1.read());
}

void sobel_ip::thread_grp_fu_3127_ce() {
    grp_fu_3127_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3127_p0() {
    grp_fu_3127_p0 = Gy_load_2_reg_5565.read();
}

void sobel_ip::thread_grp_fu_3127_p1() {
    grp_fu_3127_p1 =  (sc_lv<8>) (tmp_32_reg_6545.read());
}

void sobel_ip::thread_grp_fu_3194_ce() {
    grp_fu_3194_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3194_p0() {
    grp_fu_3194_p0 = Gx_load_2_reg_5555.read();
}

void sobel_ip::thread_grp_fu_3194_p1() {
    grp_fu_3194_p1 =  (sc_lv<8>) (tmp_55_1_reg_6706.read());
}

void sobel_ip::thread_grp_fu_3198_ce() {
    grp_fu_3198_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3198_p0() {
    grp_fu_3198_p0 = Gy_load_2_reg_5565.read();
}

void sobel_ip::thread_grp_fu_3198_p1() {
    grp_fu_3198_p1 =  (sc_lv<8>) (tmp_55_1_reg_6706.read());
}

void sobel_ip::thread_grp_fu_3254_ce() {
    grp_fu_3254_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3254_p0() {
    grp_fu_3254_p0 = Gx_load_2_reg_5555.read();
}

void sobel_ip::thread_grp_fu_3254_p1() {
    grp_fu_3254_p1 =  (sc_lv<8>) (tmp_62_0_0_2_fu_3250_p1.read());
}

void sobel_ip::thread_grp_fu_3259_ce() {
    grp_fu_3259_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3259_p0() {
    grp_fu_3259_p0 = Gy_load_2_reg_5565.read();
}

void sobel_ip::thread_grp_fu_3259_p1() {
    grp_fu_3259_p1 =  (sc_lv<8>) (tmp_62_0_0_2_fu_3250_p1.read());
}

void sobel_ip::thread_grp_fu_3264_ce() {
    grp_fu_3264_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3264_p0() {
    grp_fu_3264_p0 = Gx_load_reg_5495.read();
}

void sobel_ip::thread_grp_fu_3264_p1() {
    grp_fu_3264_p1 =  (sc_lv<8>) (tmp_62_0_0_2_fu_3250_p1.read());
}

void sobel_ip::thread_grp_fu_3269_ce() {
    grp_fu_3269_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3269_p0() {
    grp_fu_3269_p0 = Gy_load_reg_5505.read();
}

void sobel_ip::thread_grp_fu_3269_p1() {
    grp_fu_3269_p1 =  (sc_lv<8>) (tmp_62_0_0_2_fu_3250_p1.read());
}

void sobel_ip::thread_grp_fu_3274_ce() {
    grp_fu_3274_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3274_p0() {
    grp_fu_3274_p0 = Gx_load_1_reg_5535.read();
}

void sobel_ip::thread_grp_fu_3274_p1() {
    grp_fu_3274_p1 =  (sc_lv<8>) (tmp_62_0_0_2_fu_3250_p1.read());
}

void sobel_ip::thread_grp_fu_3344_ce() {
    grp_fu_3344_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3344_p0() {
    grp_fu_3344_p0 = Gy_load_1_reg_5545.read();
}

void sobel_ip::thread_grp_fu_3344_p1() {
    grp_fu_3344_p1 =  (sc_lv<8>) (tmp_62_0_0_2_reg_6768.read());
}

void sobel_ip::thread_grp_fu_3352_ce() {
    grp_fu_3352_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3352_p0() {
    grp_fu_3352_p0 = Gx_load_1_reg_5535.read();
}

void sobel_ip::thread_grp_fu_3352_p1() {
    grp_fu_3352_p1 =  (sc_lv<8>) (tmp_55_1_0_1_fu_3348_p1.read());
}

void sobel_ip::thread_grp_fu_3357_ce() {
    grp_fu_3357_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3357_p0() {
    grp_fu_3357_p0 = Gy_load_1_reg_5545.read();
}

void sobel_ip::thread_grp_fu_3357_p1() {
    grp_fu_3357_p1 =  (sc_lv<8>) (tmp_55_1_0_1_fu_3348_p1.read());
}

void sobel_ip::thread_grp_fu_3366_ce() {
    grp_fu_3366_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3366_p0() {
    grp_fu_3366_p0 = Gx_load_2_reg_5555.read();
}

void sobel_ip::thread_grp_fu_3366_p1() {
    grp_fu_3366_p1 =  (sc_lv<8>) (tmp_55_1_0_2_fu_3362_p1.read());
}

void sobel_ip::thread_grp_fu_3371_ce() {
    grp_fu_3371_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3371_p0() {
    grp_fu_3371_p0 = Gy_load_2_reg_5565.read();
}

void sobel_ip::thread_grp_fu_3371_p1() {
    grp_fu_3371_p1 =  (sc_lv<8>) (tmp_55_1_0_2_fu_3362_p1.read());
}

void sobel_ip::thread_grp_fu_3526_ce() {
    grp_fu_3526_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3526_p0() {
    grp_fu_3526_p0 = Gx_load_5_reg_5655.read();
}

void sobel_ip::thread_grp_fu_3526_p1() {
    grp_fu_3526_p1 =  (sc_lv<8>) (tmp_55_0_1_1_reg_6455.read());
}

void sobel_ip::thread_grp_fu_3542_ce() {
    grp_fu_3542_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3542_p0() {
    grp_fu_3542_p0 = Gx_load_2_reg_5555.read();
}

void sobel_ip::thread_grp_fu_3542_p1() {
    grp_fu_3542_p1 =  (sc_lv<8>) (tmp_55_1_0_1_reg_6830.read());
}

void sobel_ip::thread_grp_fu_3546_ce() {
    grp_fu_3546_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3546_p0() {
    grp_fu_3546_p0 = Gy_load_2_reg_5565.read();
}

void sobel_ip::thread_grp_fu_3546_p1() {
    grp_fu_3546_p1 =  (sc_lv<8>) (tmp_55_1_0_1_reg_6830.read());
}

void sobel_ip::thread_grp_fu_3554_ce() {
    grp_fu_3554_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3554_p0() {
    grp_fu_3554_p0 = Gx_load_4_reg_5615.read();
}

void sobel_ip::thread_grp_fu_3554_p1() {
    grp_fu_3554_p1 =  (sc_lv<8>) (tmp_55_1_1_1_fu_3550_p1.read());
}

void sobel_ip::thread_grp_fu_3559_ce() {
    grp_fu_3559_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3559_p0() {
    grp_fu_3559_p0 = Gy_load_4_reg_5625.read();
}

void sobel_ip::thread_grp_fu_3559_p1() {
    grp_fu_3559_p1 =  (sc_lv<8>) (tmp_55_1_1_1_fu_3550_p1.read());
}

void sobel_ip::thread_grp_fu_3604_ce() {
    grp_fu_3604_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3604_p0() {
    grp_fu_3604_p0 = Gx_load_3_reg_5595.read();
}

void sobel_ip::thread_grp_fu_3604_p1() {
    grp_fu_3604_p1 =  (sc_lv<8>) (tmp_48_0_1_fu_3600_p1.read());
}

void sobel_ip::thread_grp_fu_3609_ce() {
    grp_fu_3609_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3609_p0() {
    grp_fu_3609_p0 = Gy_load_3_reg_5605.read();
}

void sobel_ip::thread_grp_fu_3609_p1() {
    grp_fu_3609_p1 =  (sc_lv<8>) (tmp_48_0_1_fu_3600_p1.read());
}

void sobel_ip::thread_grp_fu_3670_ce() {
    grp_fu_3670_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3670_p0() {
    grp_fu_3670_p0 = Gy_load_5_reg_5665.read();
}

void sobel_ip::thread_grp_fu_3670_p1() {
    grp_fu_3670_p1 =  (sc_lv<8>) (tmp_55_0_1_1_reg_6455.read());
}

void sobel_ip::thread_grp_fu_3674_ce() {
    grp_fu_3674_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3674_p0() {
    grp_fu_3674_p0 = Gx_load_5_reg_5655.read();
}

void sobel_ip::thread_grp_fu_3674_p1() {
    grp_fu_3674_p1 =  (sc_lv<8>) (tmp_62_0_1_1_reg_6463.read());
}

void sobel_ip::thread_grp_fu_3678_ce() {
    grp_fu_3678_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3678_p0() {
    grp_fu_3678_p0 = Gy_load_5_reg_5665.read();
}

void sobel_ip::thread_grp_fu_3678_p1() {
    grp_fu_3678_p1 =  (sc_lv<8>) (tmp_62_0_1_1_reg_6463.read());
}

void sobel_ip::thread_grp_fu_3803_ce() {
    grp_fu_3803_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3803_p0() {
    grp_fu_3803_p0 = Gx_load_3_reg_5595.read();
}

void sobel_ip::thread_grp_fu_3803_p1() {
    grp_fu_3803_p1 =  (sc_lv<8>) (tmp_55_0_1_fu_3799_p1.read());
}

void sobel_ip::thread_grp_fu_3808_ce() {
    grp_fu_3808_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3808_p0() {
    grp_fu_3808_p0 = Gy_load_3_reg_5605.read();
}

void sobel_ip::thread_grp_fu_3808_p1() {
    grp_fu_3808_p1 =  (sc_lv<8>) (tmp_55_0_1_fu_3799_p1.read());
}

void sobel_ip::thread_grp_fu_3946_ce() {
    grp_fu_3946_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3946_p0() {
    grp_fu_3946_p0 = Gx_load_4_reg_5615.read();
}

void sobel_ip::thread_grp_fu_3946_p1() {
    grp_fu_3946_p1 =  (sc_lv<8>) (tmp_48_1_1_1_fu_3943_p1.read());
}

void sobel_ip::thread_grp_fu_3951_ce() {
    grp_fu_3951_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3951_p0() {
    grp_fu_3951_p0 = Gy_load_4_reg_5625.read();
}

void sobel_ip::thread_grp_fu_3951_p1() {
    grp_fu_3951_p1 =  (sc_lv<8>) (tmp_48_1_1_1_fu_3943_p1.read());
}

void sobel_ip::thread_grp_fu_3956_ce() {
    grp_fu_3956_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_3956_p0() {
    grp_fu_3956_p0 = Gx_load_5_reg_5655.read();
}

void sobel_ip::thread_grp_fu_3956_p1() {
    grp_fu_3956_p1 =  (sc_lv<8>) (tmp_48_1_1_1_fu_3943_p1.read());
}

void sobel_ip::thread_grp_fu_4025_ce() {
    grp_fu_4025_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4025_p0() {
    grp_fu_4025_p0 = Gx_load_3_reg_5595.read();
}

void sobel_ip::thread_grp_fu_4025_p1() {
    grp_fu_4025_p1 =  (sc_lv<8>) (tmp_62_0_1_fu_4021_p1.read());
}

void sobel_ip::thread_grp_fu_4030_ce() {
    grp_fu_4030_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4030_p0() {
    grp_fu_4030_p0 = Gy_load_3_reg_5605.read();
}

void sobel_ip::thread_grp_fu_4030_p1() {
    grp_fu_4030_p1 =  (sc_lv<8>) (tmp_62_0_1_fu_4021_p1.read());
}

void sobel_ip::thread_grp_fu_4079_ce() {
    grp_fu_4079_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4079_p0() {
    grp_fu_4079_p0 = Gy_load_5_reg_5665.read();
}

void sobel_ip::thread_grp_fu_4079_p1() {
    grp_fu_4079_p1 =  (sc_lv<8>) (tmp_48_1_1_1_reg_7038.read());
}

void sobel_ip::thread_grp_fu_4083_ce() {
    grp_fu_4083_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4083_p0() {
    grp_fu_4083_p0 = Gx_load_5_reg_5655.read();
}

void sobel_ip::thread_grp_fu_4083_p1() {
    grp_fu_4083_p1 =  (sc_lv<8>) (tmp_55_1_1_1_reg_6921.read());
}

void sobel_ip::thread_grp_fu_4087_ce() {
    grp_fu_4087_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4087_p0() {
    grp_fu_4087_p0 = Gy_load_5_reg_5665.read();
}

void sobel_ip::thread_grp_fu_4087_p1() {
    grp_fu_4087_p1 =  (sc_lv<8>) (tmp_55_1_1_1_reg_6921.read());
}

void sobel_ip::thread_grp_fu_4161_ce() {
    grp_fu_4161_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4161_p0() {
    grp_fu_4161_p0 = Gx_load_5_reg_5655.read();
}

void sobel_ip::thread_grp_fu_4161_p1() {
    grp_fu_4161_p1 =  (sc_lv<8>) (tmp_62_0_1_2_reg_5950.read());
}

void sobel_ip::thread_grp_fu_4177_ce() {
    grp_fu_4177_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4177_p0() {
    grp_fu_4177_p0 = Gx_load_4_reg_5615.read();
}

void sobel_ip::thread_grp_fu_4177_p1() {
    grp_fu_4177_p1 =  (sc_lv<8>) (tmp_62_0_1_2_reg_5950.read());
}

void sobel_ip::thread_grp_fu_4181_ce() {
    grp_fu_4181_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4181_p0() {
    grp_fu_4181_p0 = Gy_load_4_reg_5625.read();
}

void sobel_ip::thread_grp_fu_4181_p1() {
    grp_fu_4181_p1 =  (sc_lv<8>) (tmp_62_0_1_2_reg_5950.read());
}

void sobel_ip::thread_grp_fu_4200_ce() {
    grp_fu_4200_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4200_p0() {
    grp_fu_4200_p0 = Gx_load_5_reg_5655.read();
}

void sobel_ip::thread_grp_fu_4200_p1() {
    grp_fu_4200_p1 =  (sc_lv<8>) (tmp_55_1_1_2_fu_4197_p1.read());
}

void sobel_ip::thread_grp_fu_4205_ce() {
    grp_fu_4205_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4205_p0() {
    grp_fu_4205_p0 = Gy_load_5_reg_5665.read();
}

void sobel_ip::thread_grp_fu_4205_p1() {
    grp_fu_4205_p1 =  (sc_lv<8>) (tmp_55_1_1_2_fu_4197_p1.read());
}

void sobel_ip::thread_grp_fu_4350_ce() {
    grp_fu_4350_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4350_p0() {
    grp_fu_4350_p0 = Gy_load_8_reg_5745.read();
}

void sobel_ip::thread_grp_fu_4350_p1() {
    grp_fu_4350_p1 =  (sc_lv<8>) (tmp_48_1_2_1_reg_6401.read());
}

void sobel_ip::thread_grp_fu_4357_ce() {
    grp_fu_4357_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4357_p0() {
    grp_fu_4357_p0 = Gx_load_8_reg_5735.read();
}

void sobel_ip::thread_grp_fu_4357_p1() {
    grp_fu_4357_p1 =  (sc_lv<8>) (grp_fu_4357_p10.read());
}

void sobel_ip::thread_grp_fu_4357_p10() {
    grp_fu_4357_p10 = esl_zext<32,8>(call_get_range956_part_reg_6417.read());
}

void sobel_ip::thread_grp_fu_4466_ce() {
    grp_fu_4466_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4466_p0() {
    grp_fu_4466_p0 = Gy_load_8_reg_5745.read();
}

void sobel_ip::thread_grp_fu_4466_p1() {
    grp_fu_4466_p1 =  (sc_lv<8>) (tmp_55_0_2_1_reg_6231.read());
}

void sobel_ip::thread_grp_fu_4564_ce() {
    grp_fu_4564_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4564_p0() {
    grp_fu_4564_p0 = Gx_load_8_reg_5735.read();
}

void sobel_ip::thread_grp_fu_4564_p1() {
    grp_fu_4564_p1 =  (sc_lv<8>) (tmp_55_1_2_1_reg_6409.read());
}

void sobel_ip::thread_grp_fu_4568_ce() {
    grp_fu_4568_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4568_p0() {
    grp_fu_4568_p0 = Gy_load_8_reg_5745.read();
}

void sobel_ip::thread_grp_fu_4568_p1() {
    grp_fu_4568_p1 =  (sc_lv<8>) (tmp_55_1_2_2_reg_7193.read());
}

void sobel_ip::thread_grp_fu_4746_ce() {
    grp_fu_4746_ce = ap_const_logic_1;
}

void sobel_ip::thread_grp_fu_4746_p0() {
    grp_fu_4746_p0 = Gy_load_8_reg_5745.read();
}

void sobel_ip::thread_grp_fu_4746_p1() {
    grp_fu_4746_p1 =  (sc_lv<8>) (tmp_55_1_2_1_reg_6409.read());
}

void sobel_ip::thread_grp_fu_638_p4() {
    grp_fu_638_p4 = sub_in_q0.read().range(15, 8);
}

void sobel_ip::thread_grp_fu_648_p4() {
    grp_fu_648_p4 = sub_in_q0.read().range(23, 16);
}

void sobel_ip::thread_grp_fu_658_p4() {
    grp_fu_658_p4 = sub_in_q0.read().range(31, 24);
}

void sobel_ip::thread_i_1_phi_fu_629_p4() {
    if ((esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()))) {
        i_1_phi_fu_629_p4 = i_3_reg_5759.read();
    } else {
        i_1_phi_fu_629_p4 = i_1_reg_625.read();
    }
}

void sobel_ip::thread_i_2_fu_678_p2() {
    i_2_fu_678_p2 = (!i_reg_603.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_bigint<2>(i_reg_603.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void sobel_ip::thread_i_3_fu_783_p2() {
    i_3_fu_783_p2 = (!i_1_phi_fu_629_p4.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_bigint<8>(i_1_phi_fu_629_p4.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void sobel_ip::thread_i_cast_fu_668_p1() {
    i_cast_fu_668_p1 = esl_zext<5,2>(i_reg_603.read());
}

void sobel_ip::thread_icmp1_fu_4860_p2() {
    icmp1_fu_4860_p2 = (!tmp_75_fu_4850_p4.read().is_01() || !ap_const_lv24_0.is_01())? sc_lv<1>(): (sc_bigint<24>(tmp_75_fu_4850_p4.read()) > sc_bigint<24>(ap_const_lv24_0));
}

void sobel_ip::thread_icmp2_fu_5065_p2() {
    icmp2_fu_5065_p2 = (!tmp_76_fu_5055_p4.read().is_01() || !ap_const_lv24_0.is_01())? sc_lv<1>(): (sc_bigint<24>(tmp_76_fu_5055_p4.read()) > sc_bigint<24>(ap_const_lv24_0));
}

void sobel_ip::thread_icmp3_fu_5341_p2() {
    icmp3_fu_5341_p2 = (!tmp_111_reg_7410.read().is_01() || !ap_const_lv24_0.is_01())? sc_lv<1>(): (sc_bigint<24>(tmp_111_reg_7410.read()) > sc_bigint<24>(ap_const_lv24_0));
}

void sobel_ip::thread_icmp4_fu_5399_p2() {
    icmp4_fu_5399_p2 = (!tmp_112_reg_7425.read().is_01() || !ap_const_lv24_0.is_01())? sc_lv<1>(): (sc_bigint<24>(tmp_112_reg_7425.read()) > sc_bigint<24>(ap_const_lv24_0));
}

void sobel_ip::thread_icmp5_fu_5369_p2() {
    icmp5_fu_5369_p2 = (!tmp_113_reg_7415.read().is_01() || !ap_const_lv24_0.is_01())? sc_lv<1>(): (sc_bigint<24>(tmp_113_reg_7415.read()) > sc_bigint<24>(ap_const_lv24_0));
}

void sobel_ip::thread_icmp_fu_5225_p2() {
    icmp_fu_5225_p2 = (!tmp_74_reg_7375.read().is_01() || !ap_const_lv24_0.is_01())? sc_lv<1>(): (sc_bigint<24>(tmp_74_reg_7375.read()) > sc_bigint<24>(ap_const_lv24_0));
}

void sobel_ip::thread_j_1_fu_716_p2() {
    j_1_fu_716_p2 = (!j_reg_614.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_bigint<2>(j_reg_614.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void sobel_ip::thread_j_cast_fu_706_p1() {
    j_cast_fu_706_p1 = esl_zext<9,2>(j_reg_614.read());
}

void sobel_ip::thread_mem_index_gep10_fu_1162_p0() {
    mem_index_gep10_fu_1162_p0 = esl_sext<12,10>(tmp_64_fu_1148_p4.read());
}

void sobel_ip::thread_mem_index_gep10_fu_1162_p2() {
    mem_index_gep10_fu_1162_p2 = (!mem_index_gep10_fu_1162_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep10_fu_1162_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep11_fu_1330_p0() {
    mem_index_gep11_fu_1330_p0 = esl_sext<12,10>(tmp_68_fu_1316_p4.read());
}

void sobel_ip::thread_mem_index_gep11_fu_1330_p2() {
    mem_index_gep11_fu_1330_p2 = (!mem_index_gep11_fu_1330_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep11_fu_1330_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep12_fu_1930_p2() {
    mem_index_gep12_fu_1930_p2 = (!adjSize511_cast_fu_1926_p1.read().is_01() || !ap_const_lv10_48.is_01())? sc_lv<10>(): (sc_bigint<10>(adjSize511_cast_fu_1926_p1.read()) + sc_biguint<10>(ap_const_lv10_48));
}

void sobel_ip::thread_mem_index_gep13_fu_2021_p2() {
    mem_index_gep13_fu_2021_p2 = (!cast_gep_index242_cast_reg_6209.read().is_01() || !ap_const_lv10_48.is_01())? sc_lv<10>(): (sc_bigint<10>(cast_gep_index242_cast_reg_6209.read()) + sc_biguint<10>(ap_const_lv10_48));
}

void sobel_ip::thread_mem_index_gep14_fu_2768_p0() {
    mem_index_gep14_fu_2768_p0 = esl_sext<12,10>(tmp_81_fu_2754_p4.read());
}

void sobel_ip::thread_mem_index_gep14_fu_2768_p2() {
    mem_index_gep14_fu_2768_p2 = (!mem_index_gep14_fu_2768_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep14_fu_2768_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep15_fu_3182_p0() {
    mem_index_gep15_fu_3182_p0 = esl_sext<12,9>(tmp_84_fu_3171_p3.read());
}

void sobel_ip::thread_mem_index_gep15_fu_3182_p2() {
    mem_index_gep15_fu_3182_p2 = (!mem_index_gep15_fu_3182_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep15_fu_3182_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep16_fu_947_p0() {
    mem_index_gep16_fu_947_p0 = esl_sext<12,9>(tmp_87_reg_5810.read());
}

void sobel_ip::thread_mem_index_gep16_fu_947_p2() {
    mem_index_gep16_fu_947_p2 = (!mem_index_gep16_fu_947_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep16_fu_947_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep17_fu_1073_p0() {
    mem_index_gep17_fu_1073_p0 = esl_sext<12,9>(tmp_91_reg_5944.read());
}

void sobel_ip::thread_mem_index_gep17_fu_1073_p2() {
    mem_index_gep17_fu_1073_p2 = (!mem_index_gep17_fu_1073_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep17_fu_1073_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep18_fu_1227_p0() {
    mem_index_gep18_fu_1227_p0 = esl_sext<12,9>(tmp_95_reg_5975.read());
}

void sobel_ip::thread_mem_index_gep18_fu_1227_p2() {
    mem_index_gep18_fu_1227_p2 = (!mem_index_gep18_fu_1227_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep18_fu_1227_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep19_fu_1511_p0() {
    mem_index_gep19_fu_1511_p0 = esl_sext<12,10>(tmp_99_fu_1497_p4.read());
}

void sobel_ip::thread_mem_index_gep19_fu_1511_p2() {
    mem_index_gep19_fu_1511_p2 = (!mem_index_gep19_fu_1511_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep19_fu_1511_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep1_fu_2346_p0() {
    mem_index_gep1_fu_2346_p0 = esl_sext<12,10>(tmp_19_fu_2332_p4.read());
}

void sobel_ip::thread_mem_index_gep1_fu_2346_p2() {
    mem_index_gep1_fu_2346_p2 = (!mem_index_gep1_fu_2346_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep1_fu_2346_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep20_fu_2083_p0() {
    mem_index_gep20_fu_2083_p0 = esl_sext<12,10>(tmp_103_fu_2069_p4.read());
}

void sobel_ip::thread_mem_index_gep20_fu_2083_p2() {
    mem_index_gep20_fu_2083_p2 = (!mem_index_gep20_fu_2083_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep20_fu_2083_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep21_fu_1642_p0() {
    mem_index_gep21_fu_1642_p0 = esl_sext<12,10>(tmp_107_fu_1628_p4.read());
}

void sobel_ip::thread_mem_index_gep21_fu_1642_p2() {
    mem_index_gep21_fu_1642_p2 = (!mem_index_gep21_fu_1642_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep21_fu_1642_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep22_fu_2276_p2() {
    mem_index_gep22_fu_2276_p2 = (!adjSize548_cast_fu_2272_p1.read().is_01() || !ap_const_lv10_48.is_01())? sc_lv<10>(): (sc_bigint<10>(adjSize548_cast_fu_2272_p1.read()) + sc_biguint<10>(ap_const_lv10_48));
}

void sobel_ip::thread_mem_index_gep2_fu_2464_p0() {
    mem_index_gep2_fu_2464_p0 = esl_sext<12,10>(tmp_29_fu_2450_p4.read());
}

void sobel_ip::thread_mem_index_gep2_fu_2464_p2() {
    mem_index_gep2_fu_2464_p2 = (!mem_index_gep2_fu_2464_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep2_fu_2464_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep3_fu_2618_p0() {
    mem_index_gep3_fu_2618_p0 = esl_sext<12,9>(tmp_35_fu_2607_p3.read());
}

void sobel_ip::thread_mem_index_gep3_fu_2618_p2() {
    mem_index_gep3_fu_2618_p2 = (!mem_index_gep3_fu_2618_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep3_fu_2618_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep4_fu_2975_p0() {
    mem_index_gep4_fu_2975_p0 = esl_sext<12,10>(tmp_38_fu_2961_p4.read());
}

void sobel_ip::thread_mem_index_gep4_fu_2975_p2() {
    mem_index_gep4_fu_2975_p2 = (!mem_index_gep4_fu_2975_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep4_fu_2975_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep5_fu_3472_p0() {
    mem_index_gep5_fu_3472_p0 = esl_sext<12,9>(tmp_44_reg_6824.read());
}

void sobel_ip::thread_mem_index_gep5_fu_3472_p2() {
    mem_index_gep5_fu_3472_p2 = (!mem_index_gep5_fu_3472_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep5_fu_3472_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep6_fu_3617_p0() {
    mem_index_gep6_fu_3617_p0 = esl_sext<12,9>(tmp_49_reg_6895.read());
}

void sobel_ip::thread_mem_index_gep6_fu_3617_p2() {
    mem_index_gep6_fu_3617_p2 = (!mem_index_gep6_fu_3617_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep6_fu_3617_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep7_fu_3816_p0() {
    mem_index_gep7_fu_3816_p0 = esl_sext<12,9>(tmp_53_reg_6951.read());
}

void sobel_ip::thread_mem_index_gep7_fu_3816_p2() {
    mem_index_gep7_fu_3816_p2 = (!mem_index_gep7_fu_3816_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep7_fu_3816_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep8_fu_825_p2() {
    mem_index_gep8_fu_825_p2 = (!adjSize503_cast_reg_5793.read().is_01() || !ap_const_lv9_48.is_01())? sc_lv<9>(): (sc_bigint<9>(adjSize503_cast_reg_5793.read()) + sc_biguint<9>(ap_const_lv9_48));
}

void sobel_ip::thread_mem_index_gep9_fu_1689_p0() {
    mem_index_gep9_fu_1689_p0 = esl_sext<12,10>(tmp_60_fu_1675_p4.read());
}

void sobel_ip::thread_mem_index_gep9_fu_1689_p2() {
    mem_index_gep9_fu_1689_p2 = (!mem_index_gep9_fu_1689_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep9_fu_1689_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_mem_index_gep_fu_2815_p0() {
    mem_index_gep_fu_2815_p0 = esl_sext<12,10>(tmp_11_fu_2801_p4.read());
}

void sobel_ip::thread_mem_index_gep_fu_2815_p2() {
    mem_index_gep_fu_2815_p2 = (!mem_index_gep_fu_2815_p0.read().is_01() || !ap_const_lv12_48.is_01())? sc_lv<12>(): (sc_bigint<12>(mem_index_gep_fu_2815_p0.read()) + sc_biguint<12>(ap_const_lv12_48));
}

void sobel_ip::thread_neg1_1_fu_5133_p2() {
    neg1_1_fu_5133_p2 = (!ap_const_lv32_0.is_01() || !sumy0_2_1_2_2_fu_5083_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumy0_2_1_2_2_fu_5083_p3.read()));
}

void sobel_ip::thread_neg2_1_fu_5295_p2() {
    neg2_1_fu_5295_p2 = (!ap_const_lv32_0.is_01() || !sumx1_2_1_2_2_fu_5289_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumx1_2_1_2_2_fu_5289_p3.read()));
}

void sobel_ip::thread_neg2_fu_4959_p2() {
    neg2_fu_4959_p2 = (!ap_const_lv32_0.is_01() || !sumx1_2_0_2_2_fu_4953_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumx1_2_0_2_2_fu_4953_p3.read()));
}

void sobel_ip::thread_neg3_1_fu_5315_p2() {
    neg3_1_fu_5315_p2 = (!ap_const_lv32_0.is_01() || !sumy1_2_1_2_2_fu_5283_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumy1_2_1_2_2_fu_5283_p3.read()));
}

void sobel_ip::thread_neg3_fu_4979_p2() {
    neg3_fu_4979_p2 = (!ap_const_lv32_0.is_01() || !sumy1_2_0_2_2_fu_4947_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumy1_2_0_2_2_fu_4947_p3.read()));
}

void sobel_ip::thread_neg4_1_fu_5159_p2() {
    neg4_1_fu_5159_p2 = (!ap_const_lv32_0.is_01() || !sumx2_2_1_2_2_fu_5107_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumx2_2_1_2_2_fu_5107_p3.read()));
}

void sobel_ip::thread_neg4_fu_4798_p2() {
    neg4_fu_4798_p2 = (!ap_const_lv32_0.is_01() || !sumx2_2_0_2_2_reg_7271.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumx2_2_0_2_2_reg_7271.read()));
}

void sobel_ip::thread_neg5_1_fu_5179_p2() {
    neg5_1_fu_5179_p2 = (!ap_const_lv32_0.is_01() || !sumy2_2_1_2_2_fu_5101_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumy2_2_1_2_2_fu_5101_p3.read()));
}

void sobel_ip::thread_neg5_fu_4815_p2() {
    neg5_fu_4815_p2 = (!ap_const_lv32_0.is_01() || !sumy2_2_0_2_2_reg_7264.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumy2_2_0_2_2_reg_7264.read()));
}

void sobel_ip::thread_neg6_fu_5005_p2() {
    neg6_fu_5005_p2 = (!ap_const_lv32_0.is_01() || !sumx3_2_0_2_2_reg_7313.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumx3_2_0_2_2_reg_7313.read()));
}

void sobel_ip::thread_neg7_fu_5016_p2() {
    neg7_fu_5016_p2 = (!ap_const_lv32_0.is_01() || !sumy3_2_0_2_2_reg_7319.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumy3_2_0_2_2_reg_7319.read()));
}

void sobel_ip::thread_neg_1_fu_5113_p2() {
    neg_1_fu_5113_p2 = (!ap_const_lv32_0.is_01() || !sumx0_2_1_2_2_fu_5089_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_0) - sc_biguint<32>(sumx0_2_1_2_2_fu_5089_p3.read()));
}

void sobel_ip::thread_p_addr1_fu_747_p0() {
    p_addr1_fu_747_p0 = esl_sext<6,5>(tmp_reg_5441.read());
}

void sobel_ip::thread_p_addr1_fu_747_p2() {
    p_addr1_fu_747_p2 = (!p_addr1_fu_747_p0.read().is_01() || !tmp_trn_cast_fu_740_p1.read().is_01())? sc_lv<6>(): (sc_bigint<6>(p_addr1_fu_747_p0.read()) + sc_biguint<6>(tmp_trn_cast_fu_740_p1.read()));
}

void sobel_ip::thread_p_op7_1_fu_5404_p2() {
    p_op7_1_fu_5404_p2 = (!ap_const_lv32_FF.is_01() || !sum1_s_reg_7420.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_FF) - sc_biguint<32>(sum1_s_reg_7420.read()));
}

void sobel_ip::thread_p_op7_fu_5230_p2() {
    p_op7_fu_5230_p2 = (!ap_const_lv32_FF.is_01() || !sum1_reg_7370.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_FF) - sc_biguint<32>(sum1_reg_7370.read()));
}

void sobel_ip::thread_p_op8_1_fu_5374_p2() {
    p_op8_1_fu_5374_p2 = (!ap_const_lv32_FF.is_01() || !sum2_s_reg_7405.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_FF) - sc_biguint<32>(sum2_s_reg_7405.read()));
}

void sobel_ip::thread_p_op8_fu_5043_p2() {
    p_op8_fu_5043_p2 = (!ap_const_lv32_FF.is_01() || !sum2_reg_7325.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_FF) - sc_biguint<32>(sum2_reg_7325.read()));
}

void sobel_ip::thread_p_op9_fu_5071_p2() {
    p_op9_fu_5071_p2 = (!ap_const_lv32_FF.is_01() || !sum3_fu_5027_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_FF) - sc_biguint<32>(sum3_fu_5027_p2.read()));
}

void sobel_ip::thread_p_op_1_fu_5346_p2() {
    p_op_1_fu_5346_p2 = (!ap_const_lv32_FF.is_01() || !sum0_s_reg_7400.read().is_01())? sc_lv<32>(): (sc_bigint<32>(ap_const_lv32_FF) - sc_biguint<32>(sum0_s_reg_7400.read()));
}

void sobel_ip::thread_p_shl_cast_fu_692_p1() {
    p_shl_cast_fu_692_p1 = esl_zext<5,4>(p_shl_fu_684_p3.read());
}

void sobel_ip::thread_p_shl_fu_684_p3() {
    p_shl_fu_684_p3 = esl_concat<2,2>(i_reg_603.read(), ap_const_lv2_0);
}

void sobel_ip::thread_sel_tmp1_fu_885_p2() {
    sel_tmp1_fu_885_p2 = (!i_1_reg_625.read().is_01() || !ap_const_lv8_0.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_625.read() == ap_const_lv8_0);
}

void sobel_ip::thread_sel_tmp2_fu_891_p2() {
    sel_tmp2_fu_891_p2 = (sel_tmp_fu_879_p2.read() | sel_tmp1_fu_885_p2.read());
}

void sobel_ip::thread_sel_tmp_fu_879_p2() {
    sel_tmp_fu_879_p2 = (!i_1_reg_625.read().is_01() || !ap_const_lv8_7F.is_01())? sc_lv<1>(): sc_lv<1>(i_1_reg_625.read() == ap_const_lv8_7F);
}

void sobel_ip::thread_start_pos10_fu_1523_p3() {
    start_pos10_fu_1523_p3 = esl_concat<2,3>(tmp_67_reg_6024.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos11_fu_2107_p3() {
    start_pos11_fu_2107_p3 = esl_concat<2,3>(tmp_72_reg_6203.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos12_fu_2987_p3() {
    start_pos12_fu_2987_p3 = esl_concat<2,3>(tmp_80_reg_6585.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos13_fu_1020_p3() {
    start_pos13_fu_1020_p3 = esl_concat<2,3>(tmp_86_reg_5804.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos14_fu_1174_p3() {
    start_pos14_fu_1174_p3 = esl_concat<2,3>(tmp_90_reg_5938.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos15_fu_1342_p3() {
    start_pos15_fu_1342_p3 = esl_concat<2,3>(tmp_94_reg_5969.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos16_fu_1701_p3() {
    start_pos16_fu_1701_p3 = esl_concat<2,3>(tmp_98_reg_6078.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos17_fu_2207_p3() {
    start_pos17_fu_2207_p3 = esl_concat<2,3>(tmp_102_reg_6252.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos18_fu_1819_p3() {
    start_pos18_fu_1819_p3 = esl_concat<2,3>(tmp_106_reg_6116.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos1_fu_2513_p3() {
    start_pos1_fu_2513_p3 = esl_concat<2,3>(tmp_18_reg_6354.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos2_fu_2634_p3() {
    start_pos2_fu_2634_p3 = esl_concat<2,3>(tmp_28_reg_6432.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos3_fu_3214_p3() {
    start_pos3_fu_3214_p3 = esl_concat<2,3>(tmp_37_reg_6689.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos4_fu_3564_p3() {
    start_pos4_fu_3564_p3 = esl_concat<2,3>(tmp_43_reg_6818.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos570_cast_fu_2520_p1() {
    start_pos570_cast_fu_2520_p1 = esl_zext<64,5>(start_pos1_fu_2513_p3.read());
}

void sobel_ip::thread_start_pos582_cast_fu_2641_p1() {
    start_pos582_cast_fu_2641_p1 = esl_zext<64,5>(start_pos2_fu_2634_p3.read());
}

void sobel_ip::thread_start_pos5_fu_3763_p3() {
    start_pos5_fu_3763_p3 = esl_concat<2,3>(tmp_48_reg_6889.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos606_cast_fu_3221_p1() {
    start_pos606_cast_fu_3221_p1 = esl_zext<64,5>(start_pos3_fu_3214_p3.read());
}

void sobel_ip::thread_start_pos618_cast_fu_3571_p1() {
    start_pos618_cast_fu_3571_p1 = esl_zext<64,5>(start_pos4_fu_3564_p3.read());
}

void sobel_ip::thread_start_pos630_cast_fu_3770_p1() {
    start_pos630_cast_fu_3770_p1 = esl_zext<64,5>(start_pos5_fu_3763_p3.read());
}

void sobel_ip::thread_start_pos642_cast_fu_3992_p1() {
    start_pos642_cast_fu_3992_p1 = esl_zext<64,5>(start_pos6_fu_3985_p3.read());
}

void sobel_ip::thread_start_pos690_cast_fu_904_p1() {
    start_pos690_cast_fu_904_p1 = esl_zext<64,5>(start_pos7_fu_897_p3.read());
}

void sobel_ip::thread_start_pos6_fu_3985_p3() {
    start_pos6_fu_3985_p3 = esl_concat<2,3>(tmp_52_reg_6945.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos702_cast_fu_1876_p1() {
    start_pos702_cast_fu_1876_p1 = esl_zext<64,5>(start_pos8_fu_1869_p3.read());
}

void sobel_ip::thread_start_pos714_cast_fu_1399_p1() {
    start_pos714_cast_fu_1399_p1 = esl_zext<64,5>(start_pos9_fu_1392_p3.read());
}

void sobel_ip::thread_start_pos726_cast_fu_1530_p1() {
    start_pos726_cast_fu_1530_p1 = esl_zext<64,5>(start_pos10_fu_1523_p3.read());
}

void sobel_ip::thread_start_pos774_cast_fu_2114_p1() {
    start_pos774_cast_fu_2114_p1 = esl_zext<64,5>(start_pos11_fu_2107_p3.read());
}

void sobel_ip::thread_start_pos786_cast_fu_2994_p1() {
    start_pos786_cast_fu_2994_p1 = esl_zext<64,5>(start_pos12_fu_2987_p3.read());
}

void sobel_ip::thread_start_pos7_fu_897_p3() {
    start_pos7_fu_897_p3 = esl_concat<2,3>(tmp_57_reg_5787.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos822_cast_fu_1027_p1() {
    start_pos822_cast_fu_1027_p1 = esl_zext<64,5>(start_pos13_fu_1020_p3.read());
}

void sobel_ip::thread_start_pos834_cast_fu_1181_p1() {
    start_pos834_cast_fu_1181_p1 = esl_zext<64,5>(start_pos14_fu_1174_p3.read());
}

void sobel_ip::thread_start_pos846_cast_fu_1349_p1() {
    start_pos846_cast_fu_1349_p1 = esl_zext<64,5>(start_pos15_fu_1342_p3.read());
}

void sobel_ip::thread_start_pos894_cast_fu_1708_p1() {
    start_pos894_cast_fu_1708_p1 = esl_zext<64,5>(start_pos16_fu_1701_p3.read());
}

void sobel_ip::thread_start_pos8_fu_1869_p3() {
    start_pos8_fu_1869_p3 = esl_concat<2,3>(tmp_59_reg_6133.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos906_cast_fu_2214_p1() {
    start_pos906_cast_fu_2214_p1 = esl_zext<64,5>(start_pos17_fu_2207_p3.read());
}

void sobel_ip::thread_start_pos918_cast_fu_1826_p1() {
    start_pos918_cast_fu_1826_p1 = esl_zext<64,5>(start_pos18_fu_1819_p3.read());
}

void sobel_ip::thread_start_pos9_fu_1392_p3() {
    start_pos9_fu_1392_p3 = esl_concat<2,3>(tmp_63_reg_5981.read(), ap_const_lv3_0);
}

void sobel_ip::thread_start_pos_cast_fu_3054_p1() {
    start_pos_cast_fu_3054_p1 = esl_zext<64,5>(start_pos_fu_3047_p3.read());
}

void sobel_ip::thread_start_pos_fu_3047_p3() {
    start_pos_fu_3047_p3 = esl_concat<2,3>(tmp_6_reg_6602.read(), ap_const_lv3_0);
}

void sobel_ip::thread_sub_in_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,6,6>(ap_ST_pp0_stg11_fsm_11, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2639_cast_fu_3845_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg10_fsm_34, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2627_cast_fu_3646_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg9_fsm_33, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2615_cast_fu_3501_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg8_fsm_32, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2855_cast_fu_3383_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg7_fsm_31, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2795_cast_fu_3308_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg6_fsm_30, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2603_cast_fu_3166_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg5_fsm_29, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2_cast_fu_2919_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg4_fsm_28, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2783_cast_fu_2885_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg3_fsm_27, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2591_cast_fu_2723_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg2_fsm_26, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2579_cast_fu_2592_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg1_fsm_25, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2567_cast_fu_2435_p1.read());
    } else if ((esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2651_cast_fu_2358_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg24_fsm_24, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2927_cast_fu_2306_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg23_fsm_23, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2903_cast_fu_2186_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg22_fsm_22, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2771_cast_fu_2043_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg21_fsm_21, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2735_cast_fu_1960_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg20_fsm_20, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2699_cast_fu_1814_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2915_cast_fu_1780_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg18_fsm_18, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2891_cast_fu_1613_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg17_fsm_17, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2723_cast_fu_1471_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg16_fsm_16, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2711_cast_fu_1301_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg15_fsm_15, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2843_cast_fu_1256_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg14_fsm_14, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2831_cast_fu_1102_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg13_fsm_13, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2819_cast_fu_976_p1.read());
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
                esl_seteq<1,6,6>(ap_ST_pp0_stg12_fsm_12, ap_CS_fsm.read()))) {
        sub_in_address0 =  (sc_lv<9>) (gepindex2687_cast_fu_843_p1.read());
    } else if (esl_seteq<1,6,6>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        sub_in_address0 =  (sc_lv<9>) (tmp_10_fu_764_p1.read());
    } else if (esl_seteq<1,6,6>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        sub_in_address0 =  (sc_lv<9>) (tmp_9_fu_735_p1.read());
    } else {
        sub_in_address0 =  (sc_lv<9>) ("XXXXXXXXX");
    }
}

void sobel_ip::thread_sub_in_ce0() {
    if (((esl_seteq<1,6,6>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_710_p2.read())) || 
         esl_seteq<1,6,6>(ap_ST_st4_fsm_3, ap_CS_fsm.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg12_fsm_12, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg13_fsm_13, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg14_fsm_14, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg15_fsm_15, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg16_fsm_16, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg17_fsm_17, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg18_fsm_18, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg20_fsm_20, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg21_fsm_21, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg22_fsm_22, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg23_fsm_23, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg24_fsm_24, ap_CS_fsm.read())) || 
         (esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg1_fsm_25, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg2_fsm_26, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg3_fsm_27, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg4_fsm_28, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg5_fsm_29, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg6_fsm_30, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg7_fsm_31, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg8_fsm_32, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg9_fsm_33, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg10_fsm_34, ap_CS_fsm.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg11_fsm_11, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read())))) {
        sub_in_ce0 = ap_const_logic_1;
    } else {
        sub_in_ce0 = ap_const_logic_0;
    }
}

void sobel_ip::thread_sub_out_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) {
        if (esl_seteq<1,6,6>(ap_ST_pp0_stg20_fsm_20, ap_CS_fsm.read())) {
            sub_out_address0 =  (sc_lv<8>) (tmp_31_1_fu_5429_p1.read());
        } else if (esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read())) {
            sub_out_address0 =  (sc_lv<8>) (tmp_21_fu_5279_p1.read());
        } else {
            sub_out_address0 =  (sc_lv<8>) ("XXXXXXXX");
        }
    } else {
        sub_out_address0 =  (sc_lv<8>) ("XXXXXXXX");
    }
}

void sobel_ip::thread_sub_out_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg20_fsm_20, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read())))) {
        sub_out_ce0 = ap_const_logic_1;
    } else {
        sub_out_ce0 = ap_const_logic_0;
    }
}

void sobel_ip::thread_sub_out_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read())) {
        if (esl_seteq<1,6,6>(ap_ST_pp0_stg20_fsm_20, ap_CS_fsm.read())) {
            sub_out_d0 = tmp_30_1_fu_5423_p2.read();
        } else if (esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read())) {
            sub_out_d0 = tmp_20_fu_5272_p2.read();
        } else {
            sub_out_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        sub_out_d0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void sobel_ip::thread_sub_out_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
          esl_seteq<1,6,6>(ap_ST_pp0_stg20_fsm_20, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read())))) {
        sub_out_we0 = ap_const_logic_1;
    } else {
        sub_out_we0 = ap_const_logic_0;
    }
}

void sobel_ip::thread_sum0_1_1_fu_5351_p3() {
    sum0_1_1_fu_5351_p3 = (!icmp3_fu_5341_p2.read()[0].is_01())? sc_lv<32>(): ((icmp3_fu_5341_p2.read()[0].to_bool())? ap_const_lv32_0: p_op_1_fu_5346_p2.read());
}

void sobel_ip::thread_sum0_s_fu_5153_p2() {
    sum0_s_fu_5153_p2 = (!abs1_1_fu_5145_p3.read().is_01() || !abs_1_fu_5125_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(abs1_1_fu_5145_p3.read()) + sc_biguint<32>(abs_1_fu_5125_p3.read()));
}

void sobel_ip::thread_sum1_1_1_fu_5409_p3() {
    sum1_1_1_fu_5409_p3 = (!icmp4_fu_5399_p2.read()[0].is_01())? sc_lv<32>(): ((icmp4_fu_5399_p2.read()[0].to_bool())? ap_const_lv32_0: p_op7_1_fu_5404_p2.read());
}

void sobel_ip::thread_sum1_1_fu_5235_p3() {
    sum1_1_fu_5235_p3 = (!icmp_fu_5225_p2.read()[0].is_01())? sc_lv<32>(): ((icmp_fu_5225_p2.read()[0].to_bool())? ap_const_lv32_0: p_op7_fu_5230_p2.read());
}

void sobel_ip::thread_sum1_fu_4999_p2() {
    sum1_fu_4999_p2 = (!abs3_fu_4991_p3.read().is_01() || !abs2_fu_4971_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(abs3_fu_4991_p3.read()) + sc_biguint<32>(abs2_fu_4971_p3.read()));
}

void sobel_ip::thread_sum1_s_fu_5335_p2() {
    sum1_s_fu_5335_p2 = (!abs3_1_fu_5327_p3.read().is_01() || !abs2_1_fu_5307_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(abs3_1_fu_5327_p3.read()) + sc_biguint<32>(abs2_1_fu_5307_p3.read()));
}

void sobel_ip::thread_sum2_1_1_fu_5379_p3() {
    sum2_1_1_fu_5379_p3 = (!icmp5_fu_5369_p2.read()[0].is_01())? sc_lv<32>(): ((icmp5_fu_5369_p2.read()[0].to_bool())? ap_const_lv32_0: p_op8_1_fu_5374_p2.read());
}

void sobel_ip::thread_sum2_1_fu_5048_p3() {
    sum2_1_fu_5048_p3 = (!icmp1_reg_7340.read()[0].is_01())? sc_lv<32>(): ((icmp1_reg_7340.read()[0].to_bool())? ap_const_lv32_0: p_op8_fu_5043_p2.read());
}

void sobel_ip::thread_sum2_fu_4832_p2() {
    sum2_fu_4832_p2 = (!abs5_fu_4825_p3.read().is_01() || !abs4_fu_4808_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(abs5_fu_4825_p3.read()) + sc_biguint<32>(abs4_fu_4808_p3.read()));
}

void sobel_ip::thread_sum2_s_fu_5199_p2() {
    sum2_s_fu_5199_p2 = (!abs5_1_fu_5191_p3.read().is_01() || !abs4_1_fu_5171_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(abs5_1_fu_5191_p3.read()) + sc_biguint<32>(abs4_1_fu_5171_p3.read()));
}

void sobel_ip::thread_sum3_1_fu_5243_p3() {
    sum3_1_fu_5243_p3 = (!icmp2_reg_7385.read()[0].is_01())? sc_lv<32>(): ((icmp2_reg_7385.read()[0].to_bool())? ap_const_lv32_0: p_op9_reg_7390.read());
}

void sobel_ip::thread_sum3_fu_5027_p2() {
    sum3_fu_5027_p2 = (!abs7_fu_5021_p3.read().is_01() || !abs6_fu_5010_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(abs7_fu_5021_p3.read()) + sc_biguint<32>(abs6_fu_5010_p3.read()));
}

void sobel_ip::thread_sumx0_2_1_0_1_fu_3718_p3() {
    sumx0_2_1_0_1_fu_3718_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx0_3_1_0_1_reg_6911.read());
}

void sobel_ip::thread_sumx0_2_1_0_2_fu_3751_p3() {
    sumx0_2_1_0_2_fu_3751_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx0_3_1_0_2_fu_3746_p2.read());
}

void sobel_ip::thread_sumx0_2_1_1_1_fu_4660_p3() {
    sumx0_2_1_1_1_fu_4660_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx0_3_1_1_1_reg_7224.read());
}

void sobel_ip::thread_sumx0_2_1_1_2_fu_4683_p3() {
    sumx0_2_1_1_2_fu_4683_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx0_3_1_1_2_fu_4666_p2.read());
}

void sobel_ip::thread_sumx0_2_1_1_fu_4476_p3() {
    sumx0_2_1_1_fu_4476_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx0_3_1_1_reg_6992.read());
}

void sobel_ip::thread_sumx0_2_1_2_1_fu_4895_p3() {
    sumx0_2_1_2_1_fu_4895_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx0_3_1_2_1_fu_4878_p2.read());
}

void sobel_ip::thread_sumx0_2_1_2_2_fu_5089_p3() {
    sumx0_2_1_2_2_fu_5089_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx0_3_1_2_2_reg_7345.read());
}

void sobel_ip::thread_sumx0_2_1_2_fu_4872_p3() {
    sumx0_2_1_2_fu_4872_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx0_3_1_2_reg_7278.read());
}

void sobel_ip::thread_sumx0_2_1_fu_3530_p3() {
    sumx0_2_1_fu_3530_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_44_1_reg_6742.read());
}

void sobel_ip::thread_sumx0_3_1_0_1_fu_3536_p2() {
    sumx0_3_1_0_1_fu_3536_p2 = (!grp_fu_3274_p2.read().is_01() || !sumx0_2_1_fu_3530_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3274_p2.read()) + sc_biguint<32>(sumx0_2_1_fu_3530_p3.read()));
}

void sobel_ip::thread_sumx0_3_1_0_2_fu_3746_p2() {
    sumx0_3_1_0_2_fu_3746_p2 = (!tmp_44_1_0_2_reg_6838.read().is_01() || !sumx0_2_1_0_1_fu_3718_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_44_1_0_2_reg_6838.read()) + sc_biguint<32>(sumx0_2_1_0_1_fu_3718_p3.read()));
}

void sobel_ip::thread_sumx0_3_1_1_1_fu_4482_p2() {
    sumx0_3_1_1_1_fu_4482_p2 = (!grp_fu_4177_p2.read().is_01() || !sumx0_2_1_1_fu_4476_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4177_p2.read()) + sc_biguint<32>(sumx0_2_1_1_fu_4476_p3.read()));
}

void sobel_ip::thread_sumx0_3_1_1_2_fu_4666_p2() {
    sumx0_3_1_1_2_fu_4666_p2 = (!tmp_44_1_1_2_reg_7137.read().is_01() || !sumx0_2_1_1_1_fu_4660_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_44_1_1_2_reg_7137.read()) + sc_biguint<32>(sumx0_2_1_1_1_fu_4660_p3.read()));
}

void sobel_ip::thread_sumx0_3_1_1_fu_3758_p2() {
    sumx0_3_1_1_fu_3758_p2 = (!tmp_44_1_1_reg_6041.read().is_01() || !sumx0_2_1_0_2_fu_3751_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_44_1_1_reg_6041.read()) + sc_biguint<32>(sumx0_2_1_0_2_fu_3751_p3.read()));
}

void sobel_ip::thread_sumx0_3_1_2_1_fu_4878_p2() {
    sumx0_3_1_2_1_fu_4878_p2 = (!tmp_44_1_2_1_reg_6486.read().is_01() || !sumx0_2_1_2_fu_4872_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_44_1_2_1_reg_6486.read()) + sc_biguint<32>(sumx0_2_1_2_fu_4872_p3.read()));
}

void sobel_ip::thread_sumx0_3_1_2_2_fu_4920_p2() {
    sumx0_3_1_2_2_fu_4920_p2 = (!tmp_44_1_2_2_reg_6540.read().is_01() || !sumx0_2_1_2_1_fu_4895_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_44_1_2_2_reg_6540.read()) + sc_biguint<32>(sumx0_2_1_2_1_fu_4895_p3.read()));
}

void sobel_ip::thread_sumx0_3_1_2_fu_4702_p2() {
    sumx0_3_1_2_fu_4702_p2 = (!tmp_44_1_2_reg_6215.read().is_01() || !sumx0_2_1_1_2_fu_4683_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_44_1_2_reg_6215.read()) + sc_biguint<32>(sumx0_2_1_1_2_fu_4683_p3.read()));
}

void sobel_ip::thread_sumx1_2_0_0_1_fu_3417_p3() {
    sumx1_2_0_0_1_fu_3417_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_0_0_1_fu_3400_p2.read());
}

void sobel_ip::thread_sumx1_2_0_0_2_fu_3967_p3() {
    sumx1_2_0_0_2_fu_3967_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_0_0_2_reg_6864.read());
}

void sobel_ip::thread_sumx1_2_0_1_1_fu_4144_p3() {
    sumx1_2_0_1_1_fu_4144_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_0_1_1_fu_4127_p2.read());
}

void sobel_ip::thread_sumx1_2_0_1_2_fu_4276_p3() {
    sumx1_2_0_1_2_fu_4276_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_0_1_2_reg_7117.read());
}

void sobel_ip::thread_sumx1_2_0_1_fu_4109_p3() {
    sumx1_2_0_1_fu_4109_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_0_1_reg_7056.read());
}

void sobel_ip::thread_sumx1_2_0_2_1_fu_4445_p3() {
    sumx1_2_0_2_1_fu_4445_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_0_2_1_reg_7168.read());
}

void sobel_ip::thread_sumx1_2_0_2_2_fu_4953_p3() {
    sumx1_2_0_2_2_fu_4953_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_0_2_2_reg_7219.read());
}

void sobel_ip::thread_sumx1_2_0_2_fu_4309_p3() {
    sumx1_2_0_2_fu_4309_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_0_2_fu_4292_p2.read());
}

void sobel_ip::thread_sumx1_2_1_0_1_fu_3862_p3() {
    sumx1_2_1_0_1_fu_3862_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_1_0_1_reg_6962.read());
}

void sobel_ip::thread_sumx1_2_1_0_2_fu_4041_p3() {
    sumx1_2_1_0_2_fu_4041_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_1_0_2_reg_7013.read());
}

void sobel_ip::thread_sumx1_2_1_1_1_fu_4332_p3() {
    sumx1_2_1_1_1_fu_4332_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_1_1_1_reg_7127.read());
}

void sobel_ip::thread_sumx1_2_1_1_2_fu_4512_p3() {
    sumx1_2_1_1_2_fu_4512_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_1_1_2_reg_7183.read());
}

void sobel_ip::thread_sumx1_2_1_1_fu_4171_p3() {
    sumx1_2_1_1_fu_4171_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_1_1_reg_7087.read());
}

void sobel_ip::thread_sumx1_2_1_2_1_fu_4902_p3() {
    sumx1_2_1_2_1_fu_4902_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_1_2_1_reg_7244.read());
}

void sobel_ip::thread_sumx1_2_1_2_2_fu_5289_p3() {
    sumx1_2_1_2_2_fu_5289_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_1_2_2_reg_7355.read());
}

void sobel_ip::thread_sumx1_2_1_2_fu_4547_p3() {
    sumx1_2_1_2_fu_4547_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx1_3_1_2_fu_4530_p2.read());
}

void sobel_ip::thread_sumx1_2_1_fu_3694_p3() {
    sumx1_2_1_fu_3694_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_51_1_reg_6901.read());
}

void sobel_ip::thread_sumx1_2_fu_3394_p3() {
    sumx1_2_fu_3394_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_15_reg_6803.read());
}

void sobel_ip::thread_sumx1_3_0_0_1_fu_3400_p2() {
    sumx1_3_0_0_1_fu_3400_p2 = (!tmp_51_0_0_1_reg_6629.read().is_01() || !sumx1_2_fu_3394_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_0_0_1_reg_6629.read()) + sc_biguint<32>(sumx1_2_fu_3394_p3.read()));
}

void sobel_ip::thread_sumx1_3_0_0_2_fu_3436_p2() {
    sumx1_3_0_0_2_fu_3436_p2 = (!tmp_51_0_0_2_reg_6684.read().is_01() || !sumx1_2_0_0_1_fu_3417_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_0_0_2_reg_6684.read()) + sc_biguint<32>(sumx1_2_0_0_1_fu_3417_p3.read()));
}

void sobel_ip::thread_sumx1_3_0_1_1_fu_4127_p2() {
    sumx1_3_0_1_1_fu_4127_p2 = (!tmp_51_0_1_1_reg_6560.read().is_01() || !sumx1_2_0_1_fu_4109_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_0_1_1_reg_6560.read()) + sc_biguint<32>(sumx1_2_0_1_fu_4109_p3.read()));
}

void sobel_ip::thread_sumx1_3_0_1_2_fu_4151_p2() {
    sumx1_3_0_1_2_fu_4151_p2 = (!tmp_51_0_1_2_reg_7008.read().is_01() || !sumx1_2_0_1_1_fu_4144_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_0_1_2_reg_7008.read()) + sc_biguint<32>(sumx1_2_0_1_1_fu_4144_p3.read()));
}

void sobel_ip::thread_sumx1_3_0_1_fu_3973_p2() {
    sumx1_3_0_1_fu_3973_p2 = (!grp_fu_3604_p2.read().is_01() || !sumx1_2_0_0_2_fu_3967_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3604_p2.read()) + sc_biguint<32>(sumx1_2_0_0_2_fu_3967_p3.read()));
}

void sobel_ip::thread_sumx1_3_0_2_1_fu_4316_p2() {
    sumx1_3_0_2_1_fu_4316_p2 = (!tmp_51_0_2_1_reg_6318.read().is_01() || !sumx1_2_0_2_fu_4309_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_0_2_1_reg_6318.read()) + sc_biguint<32>(sumx1_2_0_2_fu_4309_p3.read()));
}

void sobel_ip::thread_sumx1_3_0_2_2_fu_4461_p2() {
    sumx1_3_0_2_2_fu_4461_p2 = (!tmp_51_0_2_2_reg_6471.read().is_01() || !sumx1_2_0_2_1_fu_4445_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_0_2_2_reg_6471.read()) + sc_biguint<32>(sumx1_2_0_2_1_fu_4445_p3.read()));
}

void sobel_ip::thread_sumx1_3_0_2_fu_4292_p2() {
    sumx1_3_0_2_fu_4292_p2 = (!tmp_51_0_2_reg_6279.read().is_01() || !sumx1_2_0_1_2_fu_4276_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_0_2_reg_6279.read()) + sc_biguint<32>(sumx1_2_0_1_2_fu_4276_p3.read()));
}

void sobel_ip::thread_sumx1_3_1_0_1_fu_3724_p2() {
    sumx1_3_1_0_1_fu_3724_p2 = (!tmp_51_1_0_1_reg_6788.read().is_01() || !sumx1_2_1_fu_3694_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_1_0_1_reg_6788.read()) + sc_biguint<32>(sumx1_2_1_fu_3694_p3.read()));
}

void sobel_ip::thread_sumx1_3_1_0_2_fu_3892_p2() {
    sumx1_3_1_0_2_fu_3892_p2 = (!grp_fu_3542_p2.read().is_01() || !sumx1_2_1_0_1_fu_3862_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3542_p2.read()) + sc_biguint<32>(sumx1_2_1_0_1_fu_3862_p3.read()));
}

void sobel_ip::thread_sumx1_3_1_1_1_fu_4185_p2() {
    sumx1_3_1_1_1_fu_4185_p2 = (!grp_fu_3946_p2.read().is_01() || !sumx1_2_1_1_fu_4171_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3946_p2.read()) + sc_biguint<32>(sumx1_2_1_1_fu_4171_p3.read()));
}

void sobel_ip::thread_sumx1_3_1_1_2_fu_4338_p2() {
    sumx1_3_1_1_2_fu_4338_p2 = (!grp_fu_4083_p2.read().is_01() || !sumx1_2_1_1_1_fu_4332_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4083_p2.read()) + sc_biguint<32>(sumx1_2_1_1_1_fu_4332_p3.read()));
}

void sobel_ip::thread_sumx1_3_1_1_fu_4047_p2() {
    sumx1_3_1_1_fu_4047_p2 = (!tmp_51_1_1_reg_6068.read().is_01() || !sumx1_2_1_0_2_fu_4041_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_1_1_reg_6068.read()) + sc_biguint<32>(sumx1_2_1_0_2_fu_4041_p3.read()));
}

void sobel_ip::thread_sumx1_3_1_2_1_fu_4554_p2() {
    sumx1_3_1_2_1_fu_4554_p2 = (!tmp_51_1_2_1_reg_6520.read().is_01() || !sumx1_2_1_2_fu_4547_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_1_2_1_reg_6520.read()) + sc_biguint<32>(sumx1_2_1_2_fu_4547_p3.read()));
}

void sobel_ip::thread_sumx1_3_1_2_2_fu_4930_p2() {
    sumx1_3_1_2_2_fu_4930_p2 = (!grp_fu_4564_p2.read().is_01() || !sumx1_2_1_2_1_fu_4902_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4564_p2.read()) + sc_biguint<32>(sumx1_2_1_2_1_fu_4902_p3.read()));
}

void sobel_ip::thread_sumx1_3_1_2_fu_4530_p2() {
    sumx1_3_1_2_fu_4530_p2 = (!tmp_51_1_2_reg_6476.read().is_01() || !sumx1_2_1_1_2_fu_4512_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_51_1_2_reg_6476.read()) + sc_biguint<32>(sumx1_2_1_1_2_fu_4512_p3.read()));
}

void sobel_ip::thread_sumx2_2_0_0_1_fu_3109_p3() {
    sumx2_2_0_0_1_fu_3109_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_0_0_1_reg_6674.read());
}

void sobel_ip::thread_sumx2_2_0_0_2_fu_4097_p3() {
    sumx2_2_0_0_2_fu_4097_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_0_0_2_reg_6732.read());
}

void sobel_ip::thread_sumx2_2_0_1_1_fu_4263_p3() {
    sumx2_2_0_1_1_fu_4263_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_0_1_1_fu_4246_p2.read());
}

void sobel_ip::thread_sumx2_2_0_1_2_fu_4404_p3() {
    sumx2_2_0_1_2_fu_4404_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_0_1_2_reg_7158.read());
}

void sobel_ip::thread_sumx2_2_0_1_fu_4228_p3() {
    sumx2_2_0_1_fu_4228_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_0_1_reg_7107.read());
}

void sobel_ip::thread_sumx2_2_0_2_1_fu_4614_p3() {
    sumx2_2_0_2_1_fu_4614_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_0_2_1_reg_7209.read());
}

void sobel_ip::thread_sumx2_2_0_2_2_fu_4647_p3() {
    sumx2_2_0_2_2_fu_4647_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_0_2_2_fu_4630_p2.read());
}

void sobel_ip::thread_sumx2_2_0_2_fu_4438_p3() {
    sumx2_2_0_2_fu_4438_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_0_2_fu_4421_p2.read());
}

void sobel_ip::thread_sumx2_2_1_0_1_fu_3874_p3() {
    sumx2_2_1_0_1_fu_3874_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_1_0_1_reg_6972.read());
}

void sobel_ip::thread_sumx2_2_1_0_2_fu_3921_p3() {
    sumx2_2_1_0_2_fu_3921_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_1_0_2_fu_3904_p2.read());
}

void sobel_ip::thread_sumx2_2_1_1_1_fu_4500_p3() {
    sumx2_2_1_1_1_fu_4500_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_1_1_1_reg_7097.read());
}

void sobel_ip::thread_sumx2_2_1_1_2_fu_4696_p3() {
    sumx2_2_1_1_2_fu_4696_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_1_1_2_reg_7234.read());
}

void sobel_ip::thread_sumx2_2_1_1_fu_4063_p3() {
    sumx2_2_1_1_fu_4063_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_1_1_reg_7028.read());
}

void sobel_ip::thread_sumx2_2_1_2_1_fu_4914_p3() {
    sumx2_2_1_2_1_fu_4914_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_1_2_1_reg_7288.read());
}

void sobel_ip::thread_sumx2_2_1_2_2_fu_5107_p3() {
    sumx2_2_1_2_2_fu_5107_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_1_2_2_reg_7360.read());
}

void sobel_ip::thread_sumx2_2_1_2_fu_4729_p3() {
    sumx2_2_1_2_fu_4729_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx2_3_1_2_fu_4712_p2.read());
}

void sobel_ip::thread_sumx2_2_1_fu_3706_p3() {
    sumx2_2_1_fu_3706_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_58_1_reg_6778.read());
}

void sobel_ip::thread_sumx2_2_fu_2930_p3() {
    sumx2_2_fu_2930_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_25_reg_6619.read());
}

void sobel_ip::thread_sumx2_3_0_0_1_fu_2936_p2() {
    sumx2_3_0_0_1_fu_2936_p2 = (!grp_fu_2684_p2.read().is_01() || !sumx2_2_fu_2930_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_2684_p2.read()) + sc_biguint<32>(sumx2_2_fu_2930_p3.read()));
}

void sobel_ip::thread_sumx2_3_0_0_2_fu_3131_p2() {
    sumx2_3_0_0_2_fu_3131_p2 = (!grp_fu_2841_p2.read().is_01() || !sumx2_2_0_0_1_fu_3109_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_2841_p2.read()) + sc_biguint<32>(sumx2_2_0_0_1_fu_3109_p3.read()));
}

void sobel_ip::thread_sumx2_3_0_1_1_fu_4246_p2() {
    sumx2_3_0_1_1_fu_4246_p2 = (!tmp_58_0_1_1_reg_6565.read().is_01() || !sumx2_2_0_1_fu_4228_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_0_1_1_reg_6565.read()) + sc_biguint<32>(sumx2_2_0_1_fu_4228_p3.read()));
}

void sobel_ip::thread_sumx2_3_0_1_2_fu_4282_p2() {
    sumx2_3_0_1_2_fu_4282_p2 = (!tmp_58_0_1_2_reg_7077.read().is_01() || !sumx2_2_0_1_1_fu_4263_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_0_1_2_reg_7077.read()) + sc_biguint<32>(sumx2_2_0_1_1_fu_4263_p3.read()));
}

void sobel_ip::thread_sumx2_3_0_1_fu_4115_p2() {
    sumx2_3_0_1_fu_4115_p2 = (!grp_fu_3803_p2.read().is_01() || !sumx2_2_0_0_2_fu_4097_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3803_p2.read()) + sc_biguint<32>(sumx2_2_0_0_2_fu_4097_p3.read()));
}

void sobel_ip::thread_sumx2_3_0_2_1_fu_4451_p2() {
    sumx2_3_0_2_1_fu_4451_p2 = (!tmp_58_0_2_1_reg_6328.read().is_01() || !sumx2_2_0_2_fu_4438_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_0_2_1_reg_6328.read()) + sc_biguint<32>(sumx2_2_0_2_fu_4438_p3.read()));
}

void sobel_ip::thread_sumx2_3_0_2_2_fu_4630_p2() {
    sumx2_3_0_2_2_fu_4630_p2 = (!tmp_58_0_2_2_reg_6381.read().is_01() || !sumx2_2_0_2_1_fu_4614_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_0_2_2_reg_6381.read()) + sc_biguint<32>(sumx2_2_0_2_1_fu_4614_p3.read()));
}

void sobel_ip::thread_sumx2_3_0_2_fu_4421_p2() {
    sumx2_3_0_2_fu_4421_p2 = (!tmp_58_0_2_reg_6150.read().is_01() || !sumx2_2_0_1_2_fu_4404_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_0_2_reg_6150.read()) + sc_biguint<32>(sumx2_2_0_1_2_fu_4404_p3.read()));
}

void sobel_ip::thread_sumx2_3_1_0_1_fu_3734_p2() {
    sumx2_3_1_0_1_fu_3734_p2 = (!grp_fu_3352_p2.read().is_01() || !sumx2_2_1_fu_3706_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3352_p2.read()) + sc_biguint<32>(sumx2_2_1_fu_3706_p3.read()));
}

void sobel_ip::thread_sumx2_3_1_0_2_fu_3904_p2() {
    sumx2_3_1_0_2_fu_3904_p2 = (!tmp_58_1_0_2_reg_6982.read().is_01() || !sumx2_2_1_0_1_fu_3874_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_1_0_2_reg_6982.read()) + sc_biguint<32>(sumx2_2_1_0_1_fu_3874_p3.read()));
}

void sobel_ip::thread_sumx2_3_1_1_1_fu_4069_p2() {
    sumx2_3_1_1_1_fu_4069_p2 = (!tmp_58_1_1_1_reg_7046.read().is_01() || !sumx2_2_1_1_fu_4063_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_1_1_1_reg_7046.read()) + sc_biguint<32>(sumx2_2_1_1_fu_4063_p3.read()));
}

void sobel_ip::thread_sumx2_3_1_1_2_fu_4518_p2() {
    sumx2_3_1_1_2_fu_4518_p2 = (!grp_fu_4200_p2.read().is_01() || !sumx2_2_1_1_1_fu_4500_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4200_p2.read()) + sc_biguint<32>(sumx2_2_1_1_1_fu_4500_p3.read()));
}

void sobel_ip::thread_sumx2_3_1_1_fu_3933_p2() {
    sumx2_3_1_1_fu_3933_p2 = (!tmp_58_1_1_reg_6101.read().is_01() || !sumx2_2_1_0_2_fu_3921_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_1_1_reg_6101.read()) + sc_biguint<32>(sumx2_2_1_0_2_fu_3921_p3.read()));
}

void sobel_ip::thread_sumx2_3_1_2_1_fu_4736_p2() {
    sumx2_3_1_2_1_fu_4736_p2 = (!tmp_58_1_2_1_reg_6530.read().is_01() || !sumx2_2_1_2_fu_4729_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_1_2_1_reg_6530.read()) + sc_biguint<32>(sumx2_2_1_2_fu_4729_p3.read()));
}

void sobel_ip::thread_sumx2_3_1_2_2_fu_4936_p2() {
    sumx2_3_1_2_2_fu_4936_p2 = (!tmp_58_1_2_2_reg_7303.read().is_01() || !sumx2_2_1_2_1_fu_4914_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_1_2_2_reg_7303.read()) + sc_biguint<32>(sumx2_2_1_2_1_fu_4914_p3.read()));
}

void sobel_ip::thread_sumx2_3_1_2_fu_4712_p2() {
    sumx2_3_1_2_fu_4712_p2 = (!tmp_58_1_2_reg_6269.read().is_01() || !sumx2_2_1_1_2_fu_4696_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_58_1_2_reg_6269.read()) + sc_biguint<32>(sumx2_2_1_1_2_fu_4696_p3.read()));
}

void sobel_ip::thread_sumx3_2_0_0_1_fu_3424_p3() {
    sumx3_2_0_0_1_fu_3424_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumx3_3_0_0_1_reg_6722.read());
}

void sobel_ip::thread_sumx3_2_0_0_2_fu_4210_p3() {
    sumx3_2_0_0_2_fu_4210_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx3_3_0_0_2_reg_6874.read());
}

void sobel_ip::thread_sumx3_2_0_1_1_fu_4384_p3() {
    sumx3_2_0_1_1_fu_4384_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx3_3_0_1_1_fu_4374_p2.read());
}

void sobel_ip::thread_sumx3_2_0_1_2_fu_4572_p3() {
    sumx3_2_0_1_2_fu_4572_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx3_3_0_1_2_reg_7199.read());
}

void sobel_ip::thread_sumx3_2_0_1_fu_4362_p3() {
    sumx3_2_0_1_fu_4362_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx3_3_0_1_reg_7148.read());
}

void sobel_ip::thread_sumx3_2_0_2_1_fu_4756_p3() {
    sumx3_2_0_2_1_fu_4756_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx3_3_0_2_1_reg_7254.read());
}

void sobel_ip::thread_sumx3_2_0_2_2_fu_4784_p3() {
    sumx3_2_0_2_2_fu_4784_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx3_3_0_2_2_fu_4774_p2.read());
}

void sobel_ip::thread_sumx3_2_0_2_fu_4594_p3() {
    sumx3_2_0_2_fu_4594_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumx3_3_0_2_fu_4584_p2.read());
}

void sobel_ip::thread_sumx3_2_fu_3097_p3() {
    sumx3_2_fu_3097_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_33_reg_6664.read());
}

void sobel_ip::thread_sumx3_3_0_0_1_fu_3115_p2() {
    sumx3_3_0_0_1_fu_3115_p2 = (!grp_fu_2831_p2.read().is_01() || !sumx3_2_fu_3097_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_2831_p2.read()) + sc_biguint<32>(sumx3_2_fu_3097_p3.read()));
}

void sobel_ip::thread_sumx3_3_0_0_2_fu_3446_p2() {
    sumx3_3_0_0_2_fu_3446_p2 = (!grp_fu_3254_p2.read().is_01() || !sumx3_2_0_0_1_fu_3424_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3254_p2.read()) + sc_biguint<32>(sumx3_2_0_0_1_fu_3424_p3.read()));
}

void sobel_ip::thread_sumx3_3_0_1_1_fu_4374_p2() {
    sumx3_3_0_1_1_fu_4374_p2 = (!tmp_65_0_1_1_reg_6575.read().is_01() || !sumx3_2_0_1_fu_4362_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_65_0_1_1_reg_6575.read()) + sc_biguint<32>(sumx3_2_0_1_fu_4362_p3.read()));
}

void sobel_ip::thread_sumx3_3_0_1_2_fu_4410_p2() {
    sumx3_3_0_1_2_fu_4410_p2 = (!grp_fu_4161_p2.read().is_01() || !sumx3_2_0_1_1_fu_4384_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4161_p2.read()) + sc_biguint<32>(sumx3_2_0_1_1_fu_4384_p3.read()));
}

void sobel_ip::thread_sumx3_3_0_1_fu_4234_p2() {
    sumx3_3_0_1_fu_4234_p2 = (!grp_fu_4025_p2.read().is_01() || !sumx3_2_0_0_2_fu_4210_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4025_p2.read()) + sc_biguint<32>(sumx3_2_0_0_2_fu_4210_p3.read()));
}

void sobel_ip::thread_sumx3_3_0_2_1_fu_4620_p2() {
    sumx3_3_0_2_1_fu_4620_p2 = (!tmp_65_0_2_1_reg_6338.read().is_01() || !sumx3_2_0_2_fu_4594_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_65_0_2_1_reg_6338.read()) + sc_biguint<32>(sumx3_2_0_2_fu_4594_p3.read()));
}

void sobel_ip::thread_sumx3_3_0_2_2_fu_4774_p2() {
    sumx3_3_0_2_2_fu_4774_p2 = (!tmp_65_0_2_2_reg_6391.read().is_01() || !sumx3_2_0_2_1_fu_4756_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_65_0_2_2_reg_6391.read()) + sc_biguint<32>(sumx3_2_0_2_1_fu_4756_p3.read()));
}

void sobel_ip::thread_sumx3_3_0_2_fu_4584_p2() {
    sumx3_3_0_2_fu_4584_p2 = (!tmp_65_0_2_reg_6176.read().is_01() || !sumx3_2_0_1_2_fu_4572_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_65_0_2_reg_6176.read()) + sc_biguint<32>(sumx3_2_0_1_2_fu_4572_p3.read()));
}

void sobel_ip::thread_sumy0_2_1_0_1_fu_3850_p3() {
    sumy0_2_1_0_1_fu_3850_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy0_3_1_0_1_reg_6957.read());
}

void sobel_ip::thread_sumy0_2_1_0_2_fu_3885_p3() {
    sumy0_2_1_0_2_fu_3885_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy0_3_1_0_2_fu_3880_p2.read());
}

void sobel_ip::thread_sumy0_2_1_1_1_fu_4654_p3() {
    sumy0_2_1_1_1_fu_4654_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy0_3_1_1_1_reg_7229.read());
}

void sobel_ip::thread_sumy0_2_1_1_2_fu_4676_p3() {
    sumy0_2_1_1_2_fu_4676_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy0_3_1_1_2_fu_4671_p2.read());
}

void sobel_ip::thread_sumy0_2_1_1_fu_4470_p3() {
    sumy0_2_1_1_fu_4470_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy0_3_1_1_reg_7023.read());
}

void sobel_ip::thread_sumy0_2_1_2_1_fu_4888_p3() {
    sumy0_2_1_2_1_fu_4888_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy0_3_1_2_1_fu_4883_p2.read());
}

void sobel_ip::thread_sumy0_2_1_2_2_fu_5083_p3() {
    sumy0_2_1_2_2_fu_5083_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy0_3_1_2_2_reg_7350.read());
}

void sobel_ip::thread_sumy0_2_1_2_fu_4866_p3() {
    sumy0_2_1_2_fu_4866_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy0_3_1_2_reg_7283.read());
}

void sobel_ip::thread_sumy0_2_1_fu_3682_p3() {
    sumy0_2_1_fu_3682_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_45_1_reg_6747.read());
}

void sobel_ip::thread_sumy0_3_1_0_1_fu_3712_p2() {
    sumy0_3_1_0_1_fu_3712_p2 = (!grp_fu_3344_p2.read().is_01() || !sumy0_2_1_fu_3682_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3344_p2.read()) + sc_biguint<32>(sumy0_2_1_fu_3682_p3.read()));
}

void sobel_ip::thread_sumy0_3_1_0_2_fu_3880_p2() {
    sumy0_3_1_0_2_fu_3880_p2 = (!tmp_45_1_0_2_reg_6843.read().is_01() || !sumy0_2_1_0_1_fu_3850_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_45_1_0_2_reg_6843.read()) + sc_biguint<32>(sumy0_2_1_0_1_fu_3850_p3.read()));
}

void sobel_ip::thread_sumy0_3_1_1_1_fu_4488_p2() {
    sumy0_3_1_1_1_fu_4488_p2 = (!grp_fu_4181_p2.read().is_01() || !sumy0_2_1_1_fu_4470_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4181_p2.read()) + sc_biguint<32>(sumy0_2_1_1_fu_4470_p3.read()));
}

void sobel_ip::thread_sumy0_3_1_1_2_fu_4671_p2() {
    sumy0_3_1_1_2_fu_4671_p2 = (!tmp_45_1_1_2_reg_7178.read().is_01() || !sumy0_2_1_1_1_fu_4654_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_45_1_1_2_reg_7178.read()) + sc_biguint<32>(sumy0_2_1_1_1_fu_4654_p3.read()));
}

void sobel_ip::thread_sumy0_3_1_1_fu_3928_p2() {
    sumy0_3_1_1_fu_3928_p2 = (!tmp_45_1_1_reg_6046.read().is_01() || !sumy0_2_1_0_2_fu_3885_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_45_1_1_reg_6046.read()) + sc_biguint<32>(sumy0_2_1_0_2_fu_3885_p3.read()));
}

void sobel_ip::thread_sumy0_3_1_2_1_fu_4883_p2() {
    sumy0_3_1_2_1_fu_4883_p2 = (!tmp_45_1_2_1_reg_6491.read().is_01() || !sumy0_2_1_2_fu_4866_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_45_1_2_1_reg_6491.read()) + sc_biguint<32>(sumy0_2_1_2_fu_4866_p3.read()));
}

void sobel_ip::thread_sumy0_3_1_2_2_fu_4925_p2() {
    sumy0_3_1_2_2_fu_4925_p2 = (!tmp_45_1_2_2_reg_7298.read().is_01() || !sumy0_2_1_2_1_fu_4888_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_45_1_2_2_reg_7298.read()) + sc_biguint<32>(sumy0_2_1_2_1_fu_4888_p3.read()));
}

void sobel_ip::thread_sumy0_3_1_2_fu_4707_p2() {
    sumy0_3_1_2_fu_4707_p2 = (!tmp_45_1_2_reg_6220.read().is_01() || !sumy0_2_1_1_2_fu_4676_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_45_1_2_reg_6220.read()) + sc_biguint<32>(sumy0_2_1_1_2_fu_4676_p3.read()));
}

void sobel_ip::thread_sumy1_2_0_0_1_fu_3410_p3() {
    sumy1_2_0_0_1_fu_3410_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_0_0_1_fu_3405_p2.read());
}

void sobel_ip::thread_sumy1_2_0_0_2_fu_3961_p3() {
    sumy1_2_0_0_2_fu_3961_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_0_0_2_reg_6869.read());
}

void sobel_ip::thread_sumy1_2_0_1_1_fu_4137_p3() {
    sumy1_2_0_1_1_fu_4137_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_0_1_1_fu_4132_p2.read());
}

void sobel_ip::thread_sumy1_2_0_1_2_fu_4270_p3() {
    sumy1_2_0_1_2_fu_4270_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_0_1_2_reg_7122.read());
}

void sobel_ip::thread_sumy1_2_0_1_fu_4103_p3() {
    sumy1_2_0_1_fu_4103_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_0_1_reg_7061.read());
}

void sobel_ip::thread_sumy1_2_0_2_1_fu_4750_p3() {
    sumy1_2_0_2_1_fu_4750_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_0_2_1_reg_7173.read());
}

void sobel_ip::thread_sumy1_2_0_2_2_fu_4947_p3() {
    sumy1_2_0_2_2_fu_4947_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_0_2_2_reg_7308.read());
}

void sobel_ip::thread_sumy1_2_0_2_fu_4302_p3() {
    sumy1_2_0_2_fu_4302_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_0_2_fu_4297_p2.read());
}

void sobel_ip::thread_sumy1_2_1_0_1_fu_3856_p3() {
    sumy1_2_1_0_1_fu_3856_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_1_0_1_reg_6967.read());
}

void sobel_ip::thread_sumy1_2_1_0_2_fu_4035_p3() {
    sumy1_2_1_0_2_fu_4035_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_1_0_2_reg_7018.read());
}

void sobel_ip::thread_sumy1_2_1_1_1_fu_4326_p3() {
    sumy1_2_1_1_1_fu_4326_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_1_1_1_reg_7132.read());
}

void sobel_ip::thread_sumy1_2_1_1_2_fu_4506_p3() {
    sumy1_2_1_1_2_fu_4506_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_1_1_2_reg_7188.read());
}

void sobel_ip::thread_sumy1_2_1_1_fu_4165_p3() {
    sumy1_2_1_1_fu_4165_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_1_1_reg_7092.read());
}

void sobel_ip::thread_sumy1_2_1_2_1_fu_5077_p3() {
    sumy1_2_1_2_1_fu_5077_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_1_2_1_reg_7249.read());
}

void sobel_ip::thread_sumy1_2_1_2_2_fu_5283_p3() {
    sumy1_2_1_2_2_fu_5283_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_1_2_2_reg_7395.read());
}

void sobel_ip::thread_sumy1_2_1_2_fu_4540_p3() {
    sumy1_2_1_2_fu_4540_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy1_3_1_2_fu_4535_p2.read());
}

void sobel_ip::thread_sumy1_2_1_fu_3688_p3() {
    sumy1_2_1_fu_3688_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_52_1_reg_6906.read());
}

void sobel_ip::thread_sumy1_2_fu_3388_p3() {
    sumy1_2_fu_3388_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_16_reg_6808.read());
}

void sobel_ip::thread_sumy1_3_0_0_1_fu_3405_p2() {
    sumy1_3_0_0_1_fu_3405_p2 = (!tmp_52_0_0_1_reg_6634.read().is_01() || !sumy1_2_fu_3388_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_0_0_1_reg_6634.read()) + sc_biguint<32>(sumy1_2_fu_3388_p3.read()));
}

void sobel_ip::thread_sumy1_3_0_0_2_fu_3441_p2() {
    sumy1_3_0_0_2_fu_3441_p2 = (!tmp_52_0_0_2_reg_6813.read().is_01() || !sumy1_2_0_0_1_fu_3410_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_0_0_2_reg_6813.read()) + sc_biguint<32>(sumy1_2_0_0_1_fu_3410_p3.read()));
}

void sobel_ip::thread_sumy1_3_0_1_1_fu_4132_p2() {
    sumy1_3_0_1_1_fu_4132_p2 = (!tmp_52_0_1_1_reg_6649.read().is_01() || !sumy1_2_0_1_fu_4103_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_0_1_1_reg_6649.read()) + sc_biguint<32>(sumy1_2_0_1_fu_4103_p3.read()));
}

void sobel_ip::thread_sumy1_3_0_1_2_fu_4156_p2() {
    sumy1_3_0_1_2_fu_4156_p2 = (!tmp_52_0_1_2_reg_7072.read().is_01() || !sumy1_2_0_1_1_fu_4137_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_0_1_2_reg_7072.read()) + sc_biguint<32>(sumy1_2_0_1_1_fu_4137_p3.read()));
}

void sobel_ip::thread_sumy1_3_0_1_fu_3979_p2() {
    sumy1_3_0_1_fu_3979_p2 = (!grp_fu_3609_p2.read().is_01() || !sumy1_2_0_0_2_fu_3961_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3609_p2.read()) + sc_biguint<32>(sumy1_2_0_0_2_fu_3961_p3.read()));
}

void sobel_ip::thread_sumy1_3_0_2_1_fu_4321_p2() {
    sumy1_3_0_2_1_fu_4321_p2 = (!tmp_52_0_2_1_reg_6323.read().is_01() || !sumy1_2_0_2_fu_4302_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_0_2_1_reg_6323.read()) + sc_biguint<32>(sumy1_2_0_2_fu_4302_p3.read()));
}

void sobel_ip::thread_sumy1_3_0_2_2_fu_4768_p2() {
    sumy1_3_0_2_2_fu_4768_p2 = (!grp_fu_4466_p2.read().is_01() || !sumy1_2_0_2_1_fu_4750_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4466_p2.read()) + sc_biguint<32>(sumy1_2_0_2_1_fu_4750_p3.read()));
}

void sobel_ip::thread_sumy1_3_0_2_fu_4297_p2() {
    sumy1_3_0_2_fu_4297_p2 = (!tmp_52_0_2_reg_6284.read().is_01() || !sumy1_2_0_1_2_fu_4270_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_0_2_reg_6284.read()) + sc_biguint<32>(sumy1_2_0_1_2_fu_4270_p3.read()));
}

void sobel_ip::thread_sumy1_3_1_0_1_fu_3729_p2() {
    sumy1_3_1_0_1_fu_3729_p2 = (!tmp_52_1_0_1_reg_6793.read().is_01() || !sumy1_2_1_fu_3688_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_1_0_1_reg_6793.read()) + sc_biguint<32>(sumy1_2_1_fu_3688_p3.read()));
}

void sobel_ip::thread_sumy1_3_1_0_2_fu_3898_p2() {
    sumy1_3_1_0_2_fu_3898_p2 = (!grp_fu_3546_p2.read().is_01() || !sumy1_2_1_0_1_fu_3856_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3546_p2.read()) + sc_biguint<32>(sumy1_2_1_0_1_fu_3856_p3.read()));
}

void sobel_ip::thread_sumy1_3_1_1_1_fu_4191_p2() {
    sumy1_3_1_1_1_fu_4191_p2 = (!grp_fu_3951_p2.read().is_01() || !sumy1_2_1_1_fu_4165_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3951_p2.read()) + sc_biguint<32>(sumy1_2_1_1_fu_4165_p3.read()));
}

void sobel_ip::thread_sumy1_3_1_1_2_fu_4344_p2() {
    sumy1_3_1_1_2_fu_4344_p2 = (!grp_fu_4087_p2.read().is_01() || !sumy1_2_1_1_1_fu_4326_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4087_p2.read()) + sc_biguint<32>(sumy1_2_1_1_1_fu_4326_p3.read()));
}

void sobel_ip::thread_sumy1_3_1_1_fu_4052_p2() {
    sumy1_3_1_1_fu_4052_p2 = (!tmp_52_1_1_reg_6073.read().is_01() || !sumy1_2_1_0_2_fu_4035_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_1_1_reg_6073.read()) + sc_biguint<32>(sumy1_2_1_0_2_fu_4035_p3.read()));
}

void sobel_ip::thread_sumy1_3_1_2_1_fu_4559_p2() {
    sumy1_3_1_2_1_fu_4559_p2 = (!tmp_52_1_2_1_reg_6525.read().is_01() || !sumy1_2_1_2_fu_4540_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_1_2_1_reg_6525.read()) + sc_biguint<32>(sumy1_2_1_2_fu_4540_p3.read()));
}

void sobel_ip::thread_sumy1_3_1_2_2_fu_5095_p2() {
    sumy1_3_1_2_2_fu_5095_p2 = (!grp_fu_4746_p2.read().is_01() || !sumy1_2_1_2_1_fu_5077_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4746_p2.read()) + sc_biguint<32>(sumy1_2_1_2_1_fu_5077_p3.read()));
}

void sobel_ip::thread_sumy1_3_1_2_fu_4535_p2() {
    sumy1_3_1_2_fu_4535_p2 = (!tmp_52_1_2_reg_6481.read().is_01() || !sumy1_2_1_1_2_fu_4506_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_52_1_2_reg_6481.read()) + sc_biguint<32>(sumy1_2_1_1_2_fu_4506_p3.read()));
}

void sobel_ip::thread_sumy2_2_0_0_1_fu_3202_p3() {
    sumy2_2_0_0_1_fu_3202_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_0_0_1_reg_6679.read());
}

void sobel_ip::thread_sumy2_2_0_0_2_fu_4091_p3() {
    sumy2_2_0_0_2_fu_4091_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_0_0_2_reg_6763.read());
}

void sobel_ip::thread_sumy2_2_0_1_1_fu_4256_p3() {
    sumy2_2_0_1_1_fu_4256_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_0_1_1_fu_4251_p2.read());
}

void sobel_ip::thread_sumy2_2_0_1_2_fu_4398_p3() {
    sumy2_2_0_1_2_fu_4398_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_0_1_2_reg_7163.read());
}

void sobel_ip::thread_sumy2_2_0_1_fu_4222_p3() {
    sumy2_2_0_1_fu_4222_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_0_1_reg_7112.read());
}

void sobel_ip::thread_sumy2_2_0_2_1_fu_4608_p3() {
    sumy2_2_0_2_1_fu_4608_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_0_2_1_reg_7214.read());
}

void sobel_ip::thread_sumy2_2_0_2_2_fu_4640_p3() {
    sumy2_2_0_2_2_fu_4640_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_0_2_2_fu_4635_p2.read());
}

void sobel_ip::thread_sumy2_2_0_2_fu_4431_p3() {
    sumy2_2_0_2_fu_4431_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_0_2_fu_4426_p2.read());
}

void sobel_ip::thread_sumy2_2_1_0_1_fu_3868_p3() {
    sumy2_2_1_0_1_fu_3868_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_1_0_1_reg_6977.read());
}

void sobel_ip::thread_sumy2_2_1_0_2_fu_3914_p3() {
    sumy2_2_1_0_2_fu_3914_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_1_0_2_fu_3909_p2.read());
}

void sobel_ip::thread_sumy2_2_1_1_1_fu_4494_p3() {
    sumy2_2_1_1_1_fu_4494_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_1_1_1_reg_7102.read());
}

void sobel_ip::thread_sumy2_2_1_1_2_fu_4690_p3() {
    sumy2_2_1_1_2_fu_4690_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_1_1_2_reg_7239.read());
}

void sobel_ip::thread_sumy2_2_1_1_fu_4057_p3() {
    sumy2_2_1_1_fu_4057_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_1_1_reg_7033.read());
}

void sobel_ip::thread_sumy2_2_1_2_1_fu_4908_p3() {
    sumy2_2_1_2_1_fu_4908_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_1_2_1_reg_7293.read());
}

void sobel_ip::thread_sumy2_2_1_2_2_fu_5101_p3() {
    sumy2_2_1_2_2_fu_5101_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_1_2_2_reg_7365.read());
}

void sobel_ip::thread_sumy2_2_1_2_fu_4722_p3() {
    sumy2_2_1_2_fu_4722_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy2_3_1_2_fu_4717_p2.read());
}

void sobel_ip::thread_sumy2_2_1_fu_3700_p3() {
    sumy2_2_1_fu_3700_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_59_1_reg_6783.read());
}

void sobel_ip::thread_sumy2_2_fu_2924_p3() {
    sumy2_2_fu_2924_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_26_reg_6624.read());
}

void sobel_ip::thread_sumy2_3_0_0_1_fu_2942_p2() {
    sumy2_3_0_0_1_fu_2942_p2 = (!grp_fu_2689_p2.read().is_01() || !sumy2_2_fu_2924_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_2689_p2.read()) + sc_biguint<32>(sumy2_2_fu_2924_p3.read()));
}

void sobel_ip::thread_sumy2_3_0_0_2_fu_3208_p2() {
    sumy2_3_0_0_2_fu_3208_p2 = (!grp_fu_2948_p2.read().is_01() || !sumy2_2_0_0_1_fu_3202_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_2948_p2.read()) + sc_biguint<32>(sumy2_2_0_0_1_fu_3202_p3.read()));
}

void sobel_ip::thread_sumy2_3_0_1_1_fu_4251_p2() {
    sumy2_3_0_1_1_fu_4251_p2 = (!tmp_59_0_1_1_reg_6570.read().is_01() || !sumy2_2_0_1_fu_4222_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_0_1_1_reg_6570.read()) + sc_biguint<32>(sumy2_2_0_1_fu_4222_p3.read()));
}

void sobel_ip::thread_sumy2_3_0_1_2_fu_4287_p2() {
    sumy2_3_0_1_2_fu_4287_p2 = (!tmp_59_0_1_2_reg_7082.read().is_01() || !sumy2_2_0_1_1_fu_4256_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_0_1_2_reg_7082.read()) + sc_biguint<32>(sumy2_2_0_1_1_fu_4256_p3.read()));
}

void sobel_ip::thread_sumy2_3_0_1_fu_4121_p2() {
    sumy2_3_0_1_fu_4121_p2 = (!grp_fu_3808_p2.read().is_01() || !sumy2_2_0_0_2_fu_4091_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3808_p2.read()) + sc_biguint<32>(sumy2_2_0_0_2_fu_4091_p3.read()));
}

void sobel_ip::thread_sumy2_3_0_2_1_fu_4456_p2() {
    sumy2_3_0_2_1_fu_4456_p2 = (!tmp_59_0_2_1_reg_6333.read().is_01() || !sumy2_2_0_2_fu_4431_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_0_2_1_reg_6333.read()) + sc_biguint<32>(sumy2_2_0_2_fu_4431_p3.read()));
}

void sobel_ip::thread_sumy2_3_0_2_2_fu_4635_p2() {
    sumy2_3_0_2_2_fu_4635_p2 = (!tmp_59_0_2_2_reg_6386.read().is_01() || !sumy2_2_0_2_1_fu_4608_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_0_2_2_reg_6386.read()) + sc_biguint<32>(sumy2_2_0_2_1_fu_4608_p3.read()));
}

void sobel_ip::thread_sumy2_3_0_2_fu_4426_p2() {
    sumy2_3_0_2_fu_4426_p2 = (!tmp_59_0_2_reg_6155.read().is_01() || !sumy2_2_0_1_2_fu_4398_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_0_2_reg_6155.read()) + sc_biguint<32>(sumy2_2_0_1_2_fu_4398_p3.read()));
}

void sobel_ip::thread_sumy2_3_1_0_1_fu_3740_p2() {
    sumy2_3_1_0_1_fu_3740_p2 = (!grp_fu_3357_p2.read().is_01() || !sumy2_2_1_fu_3700_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3357_p2.read()) + sc_biguint<32>(sumy2_2_1_fu_3700_p3.read()));
}

void sobel_ip::thread_sumy2_3_1_0_2_fu_3909_p2() {
    sumy2_3_1_0_2_fu_3909_p2 = (!tmp_59_1_0_2_reg_6987.read().is_01() || !sumy2_2_1_0_1_fu_3868_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_1_0_2_reg_6987.read()) + sc_biguint<32>(sumy2_2_1_0_1_fu_3868_p3.read()));
}

void sobel_ip::thread_sumy2_3_1_1_1_fu_4074_p2() {
    sumy2_3_1_1_1_fu_4074_p2 = (!tmp_59_1_1_1_reg_7051.read().is_01() || !sumy2_2_1_1_fu_4057_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_1_1_1_reg_7051.read()) + sc_biguint<32>(sumy2_2_1_1_fu_4057_p3.read()));
}

void sobel_ip::thread_sumy2_3_1_1_2_fu_4524_p2() {
    sumy2_3_1_1_2_fu_4524_p2 = (!grp_fu_4205_p2.read().is_01() || !sumy2_2_1_1_1_fu_4494_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4205_p2.read()) + sc_biguint<32>(sumy2_2_1_1_1_fu_4494_p3.read()));
}

void sobel_ip::thread_sumy2_3_1_1_fu_3938_p2() {
    sumy2_3_1_1_fu_3938_p2 = (!tmp_59_1_1_reg_6106.read().is_01() || !sumy2_2_1_0_2_fu_3914_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_1_1_reg_6106.read()) + sc_biguint<32>(sumy2_2_1_0_2_fu_3914_p3.read()));
}

void sobel_ip::thread_sumy2_3_1_2_1_fu_4741_p2() {
    sumy2_3_1_2_1_fu_4741_p2 = (!tmp_59_1_2_1_reg_6535.read().is_01() || !sumy2_2_1_2_fu_4722_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_1_2_1_reg_6535.read()) + sc_biguint<32>(sumy2_2_1_2_fu_4722_p3.read()));
}

void sobel_ip::thread_sumy2_3_1_2_2_fu_4941_p2() {
    sumy2_3_1_2_2_fu_4941_p2 = (!grp_fu_4568_p2.read().is_01() || !sumy2_2_1_2_1_fu_4908_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4568_p2.read()) + sc_biguint<32>(sumy2_2_1_2_1_fu_4908_p3.read()));
}

void sobel_ip::thread_sumy2_3_1_2_fu_4717_p2() {
    sumy2_3_1_2_fu_4717_p2 = (!tmp_59_1_2_reg_6274.read().is_01() || !sumy2_2_1_1_2_fu_4690_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_59_1_2_reg_6274.read()) + sc_biguint<32>(sumy2_2_1_1_2_fu_4690_p3.read()));
}

void sobel_ip::thread_sumy3_2_0_0_1_fu_3430_p3() {
    sumy3_2_0_0_1_fu_3430_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: sumy3_3_0_0_1_reg_6727.read());
}

void sobel_ip::thread_sumy3_2_0_0_2_fu_4216_p3() {
    sumy3_2_0_0_2_fu_4216_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy3_3_0_0_2_reg_6879.read());
}

void sobel_ip::thread_sumy3_2_0_1_1_fu_4391_p3() {
    sumy3_2_0_1_1_fu_4391_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy3_3_0_1_1_fu_4379_p2.read());
}

void sobel_ip::thread_sumy3_2_0_1_2_fu_4578_p3() {
    sumy3_2_0_1_2_fu_4578_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy3_3_0_1_2_reg_7204.read());
}

void sobel_ip::thread_sumy3_2_0_1_fu_4368_p3() {
    sumy3_2_0_1_fu_4368_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy3_3_0_1_reg_7153.read());
}

void sobel_ip::thread_sumy3_2_0_2_1_fu_4762_p3() {
    sumy3_2_0_2_1_fu_4762_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy3_3_0_2_1_reg_7259.read());
}

void sobel_ip::thread_sumy3_2_0_2_2_fu_4791_p3() {
    sumy3_2_0_2_2_fu_4791_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy3_3_0_2_2_fu_4779_p2.read());
}

void sobel_ip::thread_sumy3_2_0_2_fu_4601_p3() {
    sumy3_2_0_2_fu_4601_p3 = (!ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].is_01())? sc_lv<32>(): ((ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()[0].to_bool())? ap_const_lv32_FF: sumy3_3_0_2_fu_4589_p2.read());
}

void sobel_ip::thread_sumy3_2_fu_3103_p3() {
    sumy3_2_fu_3103_p3 = (!sel_tmp2_reg_5816.read()[0].is_01())? sc_lv<32>(): ((sel_tmp2_reg_5816.read()[0].to_bool())? ap_const_lv32_FF: tmp_34_reg_6669.read());
}

void sobel_ip::thread_sumy3_3_0_0_1_fu_3121_p2() {
    sumy3_3_0_0_1_fu_3121_p2 = (!grp_fu_2836_p2.read().is_01() || !sumy3_2_fu_3103_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_2836_p2.read()) + sc_biguint<32>(sumy3_2_fu_3103_p3.read()));
}

void sobel_ip::thread_sumy3_3_0_0_2_fu_3452_p2() {
    sumy3_3_0_0_2_fu_3452_p2 = (!grp_fu_3259_p2.read().is_01() || !sumy3_2_0_0_1_fu_3430_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_3259_p2.read()) + sc_biguint<32>(sumy3_2_0_0_1_fu_3430_p3.read()));
}

void sobel_ip::thread_sumy3_3_0_1_1_fu_4379_p2() {
    sumy3_3_0_1_1_fu_4379_p2 = (!tmp_66_0_1_1_reg_6580.read().is_01() || !sumy3_2_0_1_fu_4368_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_66_0_1_1_reg_6580.read()) + sc_biguint<32>(sumy3_2_0_1_fu_4368_p3.read()));
}

void sobel_ip::thread_sumy3_3_0_1_2_fu_4416_p2() {
    sumy3_3_0_1_2_fu_4416_p2 = (!tmp_66_0_1_2_reg_6009.read().is_01() || !sumy3_2_0_1_1_fu_4391_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_66_0_1_2_reg_6009.read()) + sc_biguint<32>(sumy3_2_0_1_1_fu_4391_p3.read()));
}

void sobel_ip::thread_sumy3_3_0_1_fu_4240_p2() {
    sumy3_3_0_1_fu_4240_p2 = (!grp_fu_4030_p2.read().is_01() || !sumy3_2_0_0_2_fu_4216_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(grp_fu_4030_p2.read()) + sc_biguint<32>(sumy3_2_0_0_2_fu_4216_p3.read()));
}

void sobel_ip::thread_sumy3_3_0_2_1_fu_4625_p2() {
    sumy3_3_0_2_1_fu_4625_p2 = (!tmp_66_0_2_1_reg_6376.read().is_01() || !sumy3_2_0_2_fu_4601_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_66_0_2_1_reg_6376.read()) + sc_biguint<32>(sumy3_2_0_2_fu_4601_p3.read()));
}

void sobel_ip::thread_sumy3_3_0_2_2_fu_4779_p2() {
    sumy3_3_0_2_2_fu_4779_p2 = (!tmp_66_0_2_2_reg_6396.read().is_01() || !sumy3_2_0_2_1_fu_4762_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_66_0_2_2_reg_6396.read()) + sc_biguint<32>(sumy3_2_0_2_1_fu_4762_p3.read()));
}

void sobel_ip::thread_sumy3_3_0_2_fu_4589_p2() {
    sumy3_3_0_2_fu_4589_p2 = (!tmp_66_0_2_reg_6181.read().is_01() || !sumy3_2_0_1_2_fu_4578_p3.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_66_0_2_reg_6181.read()) + sc_biguint<32>(sumy3_2_0_1_2_fu_4578_p3.read()));
}

void sobel_ip::thread_tmp1_fu_5266_p2() {
    tmp1_fu_5266_p2 = (!tmp_78_fu_5255_p2.read().is_01() || !tmp_79_fu_5260_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp_78_fu_5255_p2.read()) + sc_biguint<32>(tmp_79_fu_5260_p2.read()));
}

void sobel_ip::thread_tmp2_fu_5393_p2() {
    tmp2_fu_5393_p2 = (!sum0_1_1_fu_5351_p3.read().is_01() || !tmp_115_fu_5387_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(sum0_1_1_fu_5351_p3.read()) + sc_biguint<32>(tmp_115_fu_5387_p2.read()));
}

void sobel_ip::thread_tmp3_fu_722_p3() {
    tmp3_fu_722_p3 = esl_concat<7,2>(ap_const_lv7_40, j_reg_614.read());
}

void sobel_ip::thread_tmp4_fu_753_p2() {
    tmp4_fu_753_p2 = (!j_cast_fu_706_p1.read().is_01() || !ap_const_lv9_109.is_01())? sc_lv<9>(): (sc_bigint<9>(j_cast_fu_706_p1.read()) + sc_biguint<9>(ap_const_lv9_109));
}

void sobel_ip::thread_tmp_101_fu_1733_p1() {
    tmp_101_fu_1733_p1 = call_get_range16_fu_1723_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_102_fu_2065_p1() {
    tmp_102_fu_2065_p1 = tmp_46_1_2_fu_2059_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_103_fu_2069_p4() {
    tmp_103_fu_2069_p4 = tmp_46_1_2_fu_2059_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_105_fu_2239_p1() {
    tmp_105_fu_2239_p1 = call_get_range17_fu_2229_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_106_fu_1624_p1() {
    tmp_106_fu_1624_p1 = tmp_53_1_2_fu_1618_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_107_fu_1628_p4() {
    tmp_107_fu_1628_p4 = tmp_53_1_2_fu_1618_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_109_fu_1851_p1() {
    tmp_109_fu_1851_p1 = call_get_range18_fu_1841_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_10_fu_764_p1() {
    tmp_10_fu_764_p1 = esl_zext<64,9>(tmp_7_reg_5480.read());
}

void sobel_ip::thread_tmp_110_fu_2282_p1() {
    tmp_110_fu_2282_p1 = mem_index_gep22_fu_2276_p2.read().range(9-1, 0);
}

void sobel_ip::thread_tmp_114_fu_5417_p2() {
    tmp_114_fu_5417_p2 = (!ap_const_lv32_8.is_01())? sc_lv<32>(): sum1_1_1_fu_5409_p3.read() << (unsigned short)ap_const_lv32_8.to_uint();
}

void sobel_ip::thread_tmp_115_fu_5387_p2() {
    tmp_115_fu_5387_p2 = (!ap_const_lv32_10.is_01())? sc_lv<32>(): sum2_1_1_fu_5379_p3.read() << (unsigned short)ap_const_lv32_10.to_uint();
}

void sobel_ip::thread_tmp_11_cast_fu_2402_p1() {
    tmp_11_cast_fu_2402_p1 = esl_sext<12,11>(tmp_5_fu_2395_p3.read());
}

void sobel_ip::thread_tmp_11_fu_2801_p4() {
    tmp_11_fu_2801_p4 = tmp_s_fu_2791_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_13_fu_3079_p1() {
    tmp_13_fu_3079_p1 = call_get_range_fu_3069_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_14_fu_3083_p1() {
    tmp_14_fu_3083_p1 = esl_zext<32,8>(tmp_13_fu_3079_p1.read());
}

void sobel_ip::thread_tmp_17_fu_2322_p0() {
    tmp_17_fu_2322_p0 = esl_sext<12,11>(tmp_3_fu_2311_p3.read());
}

void sobel_ip::thread_tmp_17_fu_2322_p2() {
    tmp_17_fu_2322_p2 = (!tmp_17_fu_2322_p0.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_17_fu_2322_p0.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_18_fu_2328_p1() {
    tmp_18_fu_2328_p1 = tmp_17_fu_2322_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_19_fu_2332_p4() {
    tmp_19_fu_2332_p4 = tmp_17_fu_2322_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_1_fu_2191_p2() {
    tmp_1_fu_2191_p2 = (!i_1_reg_625.read().is_01() || !ap_const_lv8_FF.is_01())? sc_lv<8>(): (sc_bigint<8>(i_1_reg_625.read()) + sc_biguint<8>(ap_const_lv8_FF));
}

void sobel_ip::thread_tmp_20_fu_5272_p2() {
    tmp_20_fu_5272_p2 = (!tmp1_fu_5266_p2.read().is_01() || !tmp_77_fu_5249_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp1_fu_5266_p2.read()) + sc_biguint<32>(tmp_77_fu_5249_p2.read()));
}

void sobel_ip::thread_tmp_21_fu_5279_p1() {
    tmp_21_fu_5279_p1 = esl_zext<64,8>(tmp_56_reg_6312.read());
}

void sobel_ip::thread_tmp_23_fu_2545_p1() {
    tmp_23_fu_2545_p1 = call_get_range1_fu_2535_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_24_fu_2549_p1() {
    tmp_24_fu_2549_p1 = esl_zext<32,8>(tmp_23_fu_2545_p1.read());
}

void sobel_ip::thread_tmp_27_fu_2440_p0() {
    tmp_27_fu_2440_p0 = esl_sext<12,11>(tmp_5_fu_2395_p3.read());
}

void sobel_ip::thread_tmp_27_fu_2440_p2() {
    tmp_27_fu_2440_p2 = (!tmp_27_fu_2440_p0.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_27_fu_2440_p0.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_28_fu_2446_p1() {
    tmp_28_fu_2446_p1 = tmp_27_fu_2440_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_29_fu_2450_p4() {
    tmp_29_fu_2450_p4 = tmp_27_fu_2440_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_2_fu_2780_p3() {
    tmp_2_fu_2780_p3 = esl_concat<8,3>(tmp_1_reg_6302.read(), ap_const_lv3_1);
}

void sobel_ip::thread_tmp_30_1_fu_5423_p2() {
    tmp_30_1_fu_5423_p2 = (!tmp2_reg_7430.read().is_01() || !tmp_114_fu_5417_p2.read().is_01())? sc_lv<32>(): (sc_bigint<32>(tmp2_reg_7430.read()) + sc_biguint<32>(tmp_114_fu_5417_p2.read()));
}

void sobel_ip::thread_tmp_31_1_fu_5429_p1() {
    tmp_31_1_fu_5429_p1 = esl_zext<64,8>(adjSize1_reg_6854.read());
}

void sobel_ip::thread_tmp_31_fu_2666_p1() {
    tmp_31_fu_2666_p1 = call_get_range2_fu_2656_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_32_fu_2670_p1() {
    tmp_32_fu_2670_p1 = esl_zext<32,8>(tmp_31_fu_2666_p1.read());
}

void sobel_ip::thread_tmp_34_1_1_cast_fu_855_p1() {
    tmp_34_1_1_cast_fu_855_p1 = esl_zext<11,10>(tmp_34_1_1_fu_848_p3.read());
}

void sobel_ip::thread_tmp_34_1_1_fu_848_p3() {
    tmp_34_1_1_fu_848_p3 = esl_concat<7,3>(tmp_41_reg_5772.read(), ap_const_lv3_4);
}

void sobel_ip::thread_tmp_34_1_2_cast_fu_1483_p1() {
    tmp_34_1_2_cast_fu_1483_p1 = esl_zext<12,11>(tmp_34_1_2_fu_1476_p3.read());
}

void sobel_ip::thread_tmp_34_1_2_fu_1476_p3() {
    tmp_34_1_2_fu_1476_p3 = esl_concat<8,3>(i_3_reg_5759.read(), ap_const_lv3_4);
}

void sobel_ip::thread_tmp_35_0_1_cast_fu_3320_p1() {
    tmp_35_0_1_cast_fu_3320_p1 = esl_zext<11,10>(tmp_35_0_1_fu_3313_p3.read());
}

void sobel_ip::thread_tmp_35_0_1_fu_3313_p3() {
    tmp_35_0_1_fu_3313_p3 = esl_concat<7,3>(tmp_41_reg_5772.read(), ap_const_lv3_1);
}

void sobel_ip::thread_tmp_35_0_2_cast_fu_1661_p1() {
    tmp_35_0_2_cast_fu_1661_p1 = esl_zext<12,11>(tmp_35_0_2_fu_1654_p3.read());
}

void sobel_ip::thread_tmp_35_0_2_fu_1654_p3() {
    tmp_35_0_2_fu_1654_p3 = esl_concat<8,3>(i_3_reg_5759.read(), ap_const_lv3_1);
}

void sobel_ip::thread_tmp_35_1_1_cast_fu_940_p1() {
    tmp_35_1_1_cast_fu_940_p1 = esl_zext<11,10>(tmp_35_1_1_fu_933_p3.read());
}

void sobel_ip::thread_tmp_35_1_1_fu_933_p3() {
    tmp_35_1_1_fu_933_p3 = esl_concat<7,3>(tmp_41_reg_5772.read(), ap_const_lv3_5);
}

void sobel_ip::thread_tmp_35_1_2_cast_fu_2055_p1() {
    tmp_35_1_2_cast_fu_2055_p1 = esl_zext<12,11>(tmp_35_1_2_fu_2048_p3.read());
}

void sobel_ip::thread_tmp_35_1_2_fu_2048_p3() {
    tmp_35_1_2_fu_2048_p3 = esl_concat<8,3>(i_3_reg_5759.read(), ap_const_lv3_5);
}

void sobel_ip::thread_tmp_35_fu_2607_p3() {
    tmp_35_fu_2607_p3 = esl_concat<8,1>(tmp_1_reg_6302.read(), ap_const_lv1_0);
}

void sobel_ip::thread_tmp_37_0_1_cast_fu_3465_p1() {
    tmp_37_0_1_cast_fu_3465_p1 = esl_zext<11,10>(tmp_37_0_1_fu_3458_p3.read());
}

void sobel_ip::thread_tmp_37_0_1_fu_3458_p3() {
    tmp_37_0_1_fu_3458_p3 = esl_concat<7,3>(tmp_41_reg_5772.read(), ap_const_lv3_2);
}

void sobel_ip::thread_tmp_37_0_2_cast_fu_1134_p1() {
    tmp_37_0_2_cast_fu_1134_p1 = esl_zext<12,11>(tmp_37_0_2_fu_1127_p3.read());
}

void sobel_ip::thread_tmp_37_0_2_fu_1127_p3() {
    tmp_37_0_2_fu_1127_p3 = esl_concat<8,3>(i_3_reg_5759.read(), ap_const_lv3_2);
}

void sobel_ip::thread_tmp_37_1_1_cast_fu_1016_p1() {
    tmp_37_1_1_cast_fu_1016_p1 = esl_zext<11,10>(tmp_37_1_1_fu_1009_p3.read());
}

void sobel_ip::thread_tmp_37_1_1_fu_1009_p3() {
    tmp_37_1_1_fu_1009_p3 = esl_concat<7,3>(tmp_41_reg_5772.read(), ap_const_lv3_6);
}

void sobel_ip::thread_tmp_37_1_2_cast_fu_1580_p1() {
    tmp_37_1_2_cast_fu_1580_p1 = esl_zext<12,11>(tmp_37_1_2_fu_1573_p3.read());
}

void sobel_ip::thread_tmp_37_1_2_fu_1573_p3() {
    tmp_37_1_2_fu_1573_p3 = esl_concat<8,3>(i_3_reg_5759.read(), ap_const_lv3_6);
}

void sobel_ip::thread_tmp_37_fu_2957_p1() {
    tmp_37_fu_2957_p1 = tmp_60_0_0_2_fu_2952_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_38_0_1_cast_fu_801_p1() {
    tmp_38_0_1_cast_fu_801_p1 = esl_zext<11,10>(tmp_38_0_1_fu_793_p3.read());
}

void sobel_ip::thread_tmp_38_0_1_fu_793_p3() {
    tmp_38_0_1_fu_793_p3 = esl_concat<7,3>(tmp_41_fu_789_p1.read(), ap_const_lv3_3);
}

void sobel_ip::thread_tmp_38_0_2_cast_fu_1268_p1() {
    tmp_38_0_2_cast_fu_1268_p1 = esl_zext<12,11>(tmp_38_0_2_fu_1261_p3.read());
}

void sobel_ip::thread_tmp_38_0_2_fu_1261_p3() {
    tmp_38_0_2_fu_1261_p3 = esl_concat<8,3>(i_3_reg_5759.read(), ap_const_lv3_3);
}

void sobel_ip::thread_tmp_38_fu_2961_p4() {
    tmp_38_fu_2961_p4 = tmp_60_0_0_2_fu_2952_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_39_1_1_fu_859_p2() {
    tmp_39_1_1_fu_859_p2 = (!tmp_34_1_1_cast_fu_855_p1.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_bigint<11>(tmp_34_1_1_cast_fu_855_p1.read()) + sc_biguint<11>(ap_const_lv11_7FF));
}

void sobel_ip::thread_tmp_39_1_2_fu_1487_p2() {
    tmp_39_1_2_fu_1487_p2 = (!tmp_34_1_2_cast_fu_1483_p1.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_34_1_2_cast_fu_1483_p1.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_3_fu_2311_p3() {
    tmp_3_fu_2311_p3 = esl_concat<8,3>(tmp_1_reg_6302.read(), ap_const_lv3_2);
}

void sobel_ip::thread_tmp_40_fu_3246_p1() {
    tmp_40_fu_3246_p1 = call_get_range3_fu_3236_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_41_1_1_fu_1056_p1() {
    tmp_41_1_1_fu_1056_p1 = esl_zext<32,8>(tmp_89_fu_1052_p1.read());
}

void sobel_ip::thread_tmp_41_1_2_fu_1737_p1() {
    tmp_41_1_2_fu_1737_p1 = esl_zext<32,8>(tmp_101_fu_1733_p1.read());
}

void sobel_ip::thread_tmp_41_fu_789_p1() {
    tmp_41_fu_789_p1 = i_1_reg_625.read().range(7-1, 0);
}

void sobel_ip::thread_tmp_42_fu_2733_p3() {
    tmp_42_fu_2733_p3 = esl_concat<8,3>(tmp_1_reg_6302.read(), ap_const_lv3_6);
}

void sobel_ip::thread_tmp_43_fu_3330_p1() {
    tmp_43_fu_3330_p1 = tmp_46_0_1_fu_3324_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_46_0_1_fu_3324_p2() {
    tmp_46_0_1_fu_3324_p2 = (!tmp_35_0_1_cast_fu_3320_p1.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_bigint<11>(tmp_35_0_1_cast_fu_3320_p1.read()) + sc_biguint<11>(ap_const_lv11_7FF));
}

void sobel_ip::thread_tmp_46_0_2_fu_1665_p2() {
    tmp_46_0_2_fu_1665_p2 = (!tmp_35_0_2_cast_fu_1661_p1.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_35_0_2_cast_fu_1661_p1.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_46_1_1_fu_981_p2() {
    tmp_46_1_1_fu_981_p2 = (!tmp_35_1_1_cast_fu_940_p1.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_bigint<11>(tmp_35_1_1_cast_fu_940_p1.read()) + sc_biguint<11>(ap_const_lv11_7FF));
}

void sobel_ip::thread_tmp_46_1_2_fu_2059_p2() {
    tmp_46_1_2_fu_2059_p2 = (!tmp_35_1_2_cast_fu_2055_p1.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_35_1_2_cast_fu_2055_p1.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_46_fu_3596_p1() {
    tmp_46_fu_3596_p1 = call_get_range4_fu_3586_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_47_fu_771_p0() {
    tmp_47_fu_771_p0 = esl_sext<32,6>(p_addr1_reg_5475.read());
}

void sobel_ip::thread_tmp_47_fu_771_p1() {
    tmp_47_fu_771_p1 = esl_zext<64,32>(tmp_47_fu_771_p0.read());
}

void sobel_ip::thread_tmp_48_0_1_1_fu_2476_p1() {
    tmp_48_0_1_1_fu_2476_p1 = esl_zext<32,8>(grp_fu_638_p4.read());
}

void sobel_ip::thread_tmp_48_0_1_fu_3600_p1() {
    tmp_48_0_1_fu_3600_p1 = esl_zext<32,8>(tmp_46_fu_3596_p1.read());
}

void sobel_ip::thread_tmp_48_0_2_1_fu_1984_p1() {
    tmp_48_0_2_1_fu_1984_p1 = esl_zext<32,8>(grp_fu_638_p4.read());
}

void sobel_ip::thread_tmp_48_0_2_fu_1905_p1() {
    tmp_48_0_2_fu_1905_p1 = esl_zext<32,8>(tmp_62_fu_1901_p1.read());
}

void sobel_ip::thread_tmp_48_1_1_1_fu_3943_p1() {
    tmp_48_1_1_1_fu_3943_p1 = esl_zext<32,8>(call_get_range860_part_reg_6916.read());
}

void sobel_ip::thread_tmp_48_1_1_fu_1210_p1() {
    tmp_48_1_1_fu_1210_p1 = esl_zext<32,8>(tmp_93_fu_1206_p1.read());
}

void sobel_ip::thread_tmp_48_1_2_1_fu_2362_p1() {
    tmp_48_1_2_1_fu_2362_p1 = esl_zext<32,8>(grp_fu_638_p4.read());
}

void sobel_ip::thread_tmp_48_1_2_fu_2243_p1() {
    tmp_48_1_2_fu_2243_p1 = esl_zext<32,8>(tmp_105_fu_2239_p1.read());
}

}

