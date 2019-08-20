#include "sobel_ip.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void sobel_ip::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read()) && 
             !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_777_p2.read()))) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_0;
        } else if (esl_seteq<1,6,6>(ap_ST_st10_fsm_9, ap_CS_fsm.read())) {
            ap_reg_ppiten_pp0_it0 = ap_const_logic_1;
        }
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && 
             esl_seteq<1,6,6>(ap_ST_pp0_stg24_fsm_24, ap_CS_fsm.read()))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_1;
        } else if ((esl_seteq<1,6,6>(ap_ST_st10_fsm_9, ap_CS_fsm.read()) || 
                    (esl_seteq<1,6,6>(ap_ST_pp0_stg24_fsm_24, ap_CS_fsm.read()) && 
                     !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read())))) {
            ap_reg_ppiten_pp0_it1 = ap_const_logic_0;
        }
    }
    if (esl_seteq<1,6,6>(ap_ST_st10_fsm_9, ap_CS_fsm.read())) {
        i_1_reg_625 = ap_const_lv8_0;
    } else if ((esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read()) && 
                esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()))) {
        i_1_reg_625 = i_3_reg_5759.read();
    }
    if ((esl_seteq<1,6,6>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_710_p2.read()))) {
        i_reg_603 = i_2_reg_5436.read();
    } else if ((esl_seteq<1,6,6>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_603 = ap_const_lv2_0;
    }
    if ((esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(exitcond1_fu_672_p2.read(), ap_const_lv1_0))) {
        j_reg_614 = ap_const_lv2_0;
    } else if (esl_seteq<1,6,6>(ap_ST_st5_fsm_4, ap_CS_fsm.read())) {
        j_reg_614 = j_1_reg_5465.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st7_fsm_6, ap_CS_fsm.read())) {
        Gx_load_1_reg_5535 = Gx_q0.read();
        Gx_load_2_reg_5555 = Gx_q1.read();
        Gy_load_1_reg_5545 = Gy_q0.read();
        Gy_load_2_reg_5565 = Gy_q1.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st8_fsm_7, ap_CS_fsm.read())) {
        Gx_load_3_reg_5595 = Gx_q0.read();
        Gx_load_4_reg_5615 = Gx_q1.read();
        Gy_load_3_reg_5605 = Gy_q0.read();
        Gy_load_4_reg_5625 = Gy_q1.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st9_fsm_8, ap_CS_fsm.read())) {
        Gx_load_5_reg_5655 = Gx_q0.read();
        Gx_load_6_reg_5675 = Gx_q1.read();
        Gy_load_5_reg_5665 = Gy_q0.read();
        Gy_load_6_reg_5685 = Gy_q1.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st10_fsm_9, ap_CS_fsm.read())) {
        Gx_load_7_reg_5715 = Gx_q0.read();
        Gx_load_8_reg_5735 = Gx_q1.read();
        Gy_load_7_reg_5725 = Gy_q0.read();
        Gy_load_8_reg_5745 = Gy_q1.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st6_fsm_5, ap_CS_fsm.read())) {
        Gx_load_reg_5495 = Gx_q0.read();
        Gy_load_reg_5505 = Gy_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg17_fsm_17, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        abscond6_reg_7330 = abscond6_fu_4838_p2.read();
        abscond7_reg_7335 = abscond7_fu_4844_p2.read();
        icmp1_reg_7340 = icmp1_fu_4860_p2.read();
        sum2_reg_7325 = sum2_fu_4832_p2.read();
        sumx3_2_0_2_2_reg_7313 = sumx3_2_0_2_2_fu_4784_p3.read();
        sumy3_2_0_2_2_reg_7319 = sumy3_2_0_2_2_fu_4791_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read()))) {
        addrCmp14_reg_6145 = addrCmp14_fu_1695_p2.read();
        mem_index_gep9_reg_6139 = mem_index_gep9_fu_1689_p2.read();
        tmp_59_reg_6133 = tmp_59_fu_1671_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg15_fsm_15, ap_CS_fsm.read()))) {
        addrCmp16_reg_5993 = addrCmp16_fu_1168_p2.read();
        mem_index_gep10_reg_5987 = mem_index_gep10_fu_1162_p2.read();
        tmp_63_reg_5981 = tmp_63_fu_1144_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg16_fsm_16, ap_CS_fsm.read()))) {
        addrCmp18_reg_6036 = addrCmp18_fu_1336_p2.read();
        mem_index_gep11_reg_6030 = mem_index_gep11_fu_1330_p2.read();
        tmp_38_0_2_cast_reg_6014 = tmp_38_0_2_cast_fu_1268_p1.read();
        tmp_67_reg_6024 = tmp_67_fu_1312_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg3_fsm_27, ap_CS_fsm.read()))) {
        addrCmp22_reg_6597 = addrCmp22_fu_2774_p2.read();
        mem_index_gep14_reg_6591 = mem_index_gep14_fu_2768_p2.read();
        tmp_32_reg_6545 = tmp_32_fu_2670_p1.read();
        tmp_80_reg_6585 = tmp_80_fu_2750_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg6_fsm_30, ap_CS_fsm.read()))) {
        addrCmp24_reg_6758 = addrCmp24_fu_3188_p2.read();
        mem_index_gep15_reg_6752 = mem_index_gep15_fu_3182_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg17_fsm_17, ap_CS_fsm.read()))) {
        addrCmp29_reg_6090 = addrCmp29_fu_1517_p2.read();
        mem_index_gep19_reg_6084 = mem_index_gep19_fu_1511_p2.read();
        tmp_98_reg_6078 = tmp_98_fu_1493_p1.read();
    }
    if ((esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()))) {
        addrCmp2_reg_6366 = addrCmp2_fu_2352_p2.read();
        call_get_range956_part_reg_6417 = sub_in_q0.read().range(31, 24);
        mem_index_gep1_reg_6360 = mem_index_gep1_fu_2346_p2.read();
        tmp_18_reg_6354 = tmp_18_fu_2328_p1.read();
        tmp_48_1_2_1_reg_6401 = tmp_48_1_2_1_fu_2362_p1.read();
        tmp_55_1_2_1_reg_6409 = tmp_55_1_2_1_fu_2376_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg22_fsm_22, ap_CS_fsm.read()))) {
        addrCmp31_reg_6264 = addrCmp31_fu_2089_p2.read();
        mem_index_gep20_reg_6258 = mem_index_gep20_fu_2083_p2.read();
        tmp_102_reg_6252 = tmp_102_fu_2065_p1.read();
        tmp_55_0_2_1_reg_6231 = tmp_55_0_2_1_fu_1998_p1.read();
        tmp_62_0_2_1_reg_6239 = tmp_62_0_2_1_fu_2012_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg18_fsm_18, ap_CS_fsm.read()))) {
        addrCmp33_reg_6128 = addrCmp33_fu_1648_p2.read();
        mem_index_gep21_reg_6122 = mem_index_gep21_fu_1642_p2.read();
        tmp_106_reg_6116 = tmp_106_fu_1624_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg1_fsm_25, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        addrCmp4_reg_6444 = addrCmp4_fu_2470_p2.read();
        mem_index_gep2_reg_6438 = mem_index_gep2_fu_2464_p2.read();
        tmp_11_cast_reg_6422 = tmp_11_cast_fu_2402_p1.read();
        tmp_28_reg_6432 = tmp_28_fu_2446_p1.read();
        tmp_48_0_1_1_reg_6449 = tmp_48_0_1_1_fu_2476_p1.read();
        tmp_55_0_1_1_reg_6455 = tmp_55_0_1_1_fu_2485_p1.read();
        tmp_62_0_1_1_reg_6463 = tmp_62_0_1_1_fu_2499_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg2_fsm_26, ap_CS_fsm.read()))) {
        addrCmp6_reg_6515 = addrCmp6_fu_2624_p2.read();
        mem_index_gep3_reg_6509 = mem_index_gep3_fu_2618_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg5_fsm_29, ap_CS_fsm.read()))) {
        addrCmp8_reg_6701 = addrCmp8_fu_2981_p2.read();
        mem_index_gep4_reg_6695 = mem_index_gep4_fu_2975_p2.read();
        tmp_37_reg_6689 = tmp_37_fu_2957_p1.read();
        tmp_55_1_reg_6706 = tmp_55_1_fu_3023_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg4_fsm_28, ap_CS_fsm.read()))) {
        addrCmp_reg_6614 = addrCmp_fu_2821_p2.read();
        mem_index_gep_reg_6608 = mem_index_gep_fu_2815_p2.read();
        tmp_62_0_0_1_reg_6639 = tmp_62_0_0_1_fu_2827_p1.read();
        tmp_6_reg_6602 = tmp_6_fu_2797_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg8_fsm_32, ap_CS_fsm.read()))) {
        adjSize1_reg_6854 = adjSize1_fu_3376_p3.read();
        tmp_43_reg_6818 = tmp_43_fu_3330_p1.read();
        tmp_44_reg_6824 = tmp_46_0_1_fu_3324_p2.read().range(10, 2);
        tmp_55_1_0_1_reg_6830 = tmp_55_1_0_1_fu_3348_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg11_fsm_11, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()))) {
        adjSize503_cast_reg_5793 = tmp_60_0_1_2_fu_805_p2.read().range(10, 2);
        tmp_38_0_1_cast_reg_5782 = tmp_38_0_1_cast_fu_801_p1.read();
        tmp_41_reg_5772 = tmp_41_fu_789_p1.read();
        tmp_57_reg_5787 = tmp_57_fu_811_p1.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read())) {
        ap_reg_ppstg_exitcond2_reg_5755_pp0_it1 = exitcond2_reg_5755.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_pp0_stg13_fsm_13, ap_CS_fsm.read())) {
        ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1 = sel_tmp2_reg_5816.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg9_fsm_33, ap_CS_fsm.read()))) {
        call_get_range860_part_reg_6916 = sub_in_q0.read().range(15, 8);
        call_get_range884_part_reg_6929 = sub_in_q0.read().range(31, 24);
        tmp_48_reg_6889 = tmp_48_fu_3512_p1.read();
        tmp_49_reg_6895 = tmp_53_0_1_fu_3506_p2.read().range(10, 2);
        tmp_55_1_1_1_reg_6921 = tmp_55_1_1_1_fu_3550_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg21_fsm_21, ap_CS_fsm.read()))) {
        cast_gep_index242_cast_reg_6209 = tmp_60_0_2_2_fu_1965_p2.read().range(11, 2);
        tmp_72_reg_6203 = tmp_72_fu_1970_p1.read();
    }
    if ((esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
        exitcond2_reg_5755 = exitcond2_fu_777_p2.read();
        i_3_reg_5759 = i_3_fu_783_p2.read();
    }
    if (esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        i_2_reg_5436 = i_2_fu_678_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg18_fsm_18, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        icmp2_reg_7385 = icmp2_fu_5065_p2.read();
        p_op9_reg_7390 = p_op9_fu_5071_p2.read();
        sum0_s_reg_7400 = sum0_s_fu_5153_p2.read();
        sum1_reg_7370 = sum1_fu_4999_p2.read();
        sum2_1_reg_7380 = sum2_1_fu_5048_p3.read();
        sum2_s_reg_7405 = sum2_s_fu_5199_p2.read();
        tmp_111_reg_7410 = sum0_s_fu_5153_p2.read().range(31, 8);
        tmp_113_reg_7415 = sum2_s_fu_5199_p2.read().range(31, 8);
        tmp_74_reg_7375 = sum1_fu_4999_p2.read().range(31, 8);
    }
    if (esl_seteq<1,6,6>(ap_ST_st3_fsm_2, ap_CS_fsm.read())) {
        j_1_reg_5465 = j_1_fu_716_p2.read();
    }
    if ((esl_seteq<1,6,6>(ap_ST_st3_fsm_2, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_710_p2.read()))) {
        p_addr1_reg_5475 = p_addr1_fu_747_p2.read();
        tmp_7_reg_5480 = tmp_7_fu_759_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg13_fsm_13, ap_CS_fsm.read()))) {
        sel_tmp2_reg_5816 = sel_tmp2_fu_891_p2.read();
        tmp_58_reg_5928 = tmp_58_fu_929_p1.read();
        tmp_90_reg_5938 = tmp_90_fu_987_p1.read();
        tmp_91_reg_5944 = tmp_46_1_1_fu_981_p2.read().range(10, 2);
    }
    if (esl_seteq<1,6,6>(ap_ST_st4_fsm_3, ap_CS_fsm.read())) {
        sub_in_load_reg_5485 = sub_in_q0.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        sum1_s_reg_7420 = sum1_s_fu_5335_p2.read();
        tmp2_reg_7430 = tmp2_fu_5393_p2.read();
        tmp_112_reg_7425 = sum1_s_fu_5335_p2.read().range(31, 8);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg9_fsm_33, ap_CS_fsm.read()))) {
        sumx0_3_1_0_1_reg_6911 = sumx0_3_1_0_1_fu_3536_p2.read();
        sumx1_3_0_0_2_reg_6864 = sumx1_3_0_0_2_fu_3436_p2.read();
        sumx3_3_0_0_2_reg_6874 = sumx3_3_0_0_2_fu_3446_p2.read();
        sumy1_3_0_0_2_reg_6869 = sumy1_3_0_0_2_fu_3441_p2.read();
        sumy3_3_0_0_2_reg_6879 = sumy3_3_0_0_2_fu_3452_p2.read();
        tmp_51_1_reg_6901 = grp_fu_3264_p2.read();
        tmp_52_1_reg_6906 = grp_fu_3269_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg15_fsm_15, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()))) {
        sumx0_3_1_1_1_reg_7224 = sumx0_3_1_1_1_fu_4482_p2.read();
        sumx1_3_0_2_2_reg_7219 = sumx1_3_0_2_2_fu_4461_p2.read();
        sumx1_3_1_2_1_reg_7244 = sumx1_3_1_2_1_fu_4554_p2.read();
        sumx2_3_0_2_1_reg_7209 = sumx2_3_0_2_1_fu_4451_p2.read();
        sumx2_3_1_1_2_reg_7234 = sumx2_3_1_1_2_fu_4518_p2.read();
        sumx3_3_0_1_2_reg_7199 = sumx3_3_0_1_2_fu_4410_p2.read();
        sumy0_3_1_1_1_reg_7229 = sumy0_3_1_1_1_fu_4488_p2.read();
        sumy1_3_1_2_1_reg_7249 = sumy1_3_1_2_1_fu_4559_p2.read();
        sumy2_3_0_2_1_reg_7214 = sumy2_3_0_2_1_fu_4456_p2.read();
        sumy2_3_1_1_2_reg_7239 = sumy2_3_1_1_2_fu_4524_p2.read();
        sumy3_3_0_1_2_reg_7204 = sumy3_3_0_1_2_fu_4416_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg10_fsm_34, ap_CS_fsm.read()))) {
        sumx0_3_1_1_reg_6992 = sumx0_3_1_1_fu_3758_p2.read();
        sumx1_3_1_0_1_reg_6962 = sumx1_3_1_0_1_fu_3724_p2.read();
        sumx2_3_1_0_1_reg_6972 = sumx2_3_1_0_1_fu_3734_p2.read();
        sumy0_3_1_0_1_reg_6957 = sumy0_3_1_0_1_fu_3712_p2.read();
        sumy1_3_1_0_1_reg_6967 = sumy1_3_1_0_1_fu_3729_p2.read();
        sumy2_3_1_0_1_reg_6977 = sumy2_3_1_0_1_fu_3740_p2.read();
        tmp_58_1_0_2_reg_6982 = grp_fu_3366_p2.read();
        tmp_59_1_0_2_reg_6987 = grp_fu_3371_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg17_fsm_17, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()))) {
        sumx0_3_1_2_2_reg_7345 = sumx0_3_1_2_2_fu_4920_p2.read();
        sumx1_3_1_2_2_reg_7355 = sumx1_3_1_2_2_fu_4930_p2.read();
        sumx2_3_1_2_2_reg_7360 = sumx2_3_1_2_2_fu_4936_p2.read();
        sumy0_3_1_2_2_reg_7350 = sumy0_3_1_2_2_fu_4925_p2.read();
        sumy1_3_0_2_2_reg_7308 = sumy1_3_0_2_2_fu_4768_p2.read();
        sumy2_3_1_2_2_reg_7365 = sumy2_3_1_2_2_fu_4941_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg16_fsm_16, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()))) {
        sumx0_3_1_2_reg_7278 = sumx0_3_1_2_fu_4702_p2.read();
        sumx2_3_1_2_1_reg_7288 = sumx2_3_1_2_1_fu_4736_p2.read();
        sumx3_3_0_2_1_reg_7254 = sumx3_3_0_2_1_fu_4620_p2.read();
        sumy0_3_1_2_reg_7283 = sumy0_3_1_2_fu_4707_p2.read();
        sumy2_3_1_2_1_reg_7293 = sumy2_3_1_2_1_fu_4741_p2.read();
        sumy3_3_0_2_1_reg_7259 = sumy3_3_0_2_1_fu_4625_p2.read();
        tmp_45_1_2_2_reg_7298 = grp_fu_4350_p2.read();
        tmp_58_1_2_2_reg_7303 = grp_fu_4357_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg13_fsm_13, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        sumx1_3_0_1_2_reg_7117 = sumx1_3_0_1_2_fu_4151_p2.read();
        sumx1_3_1_1_1_reg_7127 = sumx1_3_1_1_1_fu_4185_p2.read();
        sumx2_3_0_1_reg_7107 = sumx2_3_0_1_fu_4115_p2.read();
        sumy1_3_0_1_2_reg_7122 = sumy1_3_0_1_2_fu_4156_p2.read();
        sumy1_3_1_1_1_reg_7132 = sumy1_3_1_1_1_fu_4191_p2.read();
        sumy2_3_0_1_reg_7112 = sumy2_3_0_1_fu_4121_p2.read();
        tmp_44_1_1_2_reg_7137 = grp_fu_3956_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg12_fsm_12, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        sumx1_3_0_1_reg_7056 = sumx1_3_0_1_fu_3973_p2.read();
        sumx1_3_1_1_reg_7087 = sumx1_3_1_1_fu_4047_p2.read();
        sumx2_3_1_1_1_reg_7097 = sumx2_3_1_1_1_fu_4069_p2.read();
        sumy1_3_0_1_reg_7061 = sumy1_3_0_1_fu_3979_p2.read();
        sumy1_3_1_1_reg_7092 = sumy1_3_1_1_fu_4052_p2.read();
        sumy2_3_1_1_1_reg_7102 = sumy2_3_1_1_1_fu_4074_p2.read();
        tmp_52_0_1_2_reg_7072 = grp_fu_3670_p2.read();
        tmp_58_0_1_2_reg_7077 = grp_fu_3674_p2.read();
        tmp_59_0_1_2_reg_7082 = grp_fu_3678_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg14_fsm_14, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()))) {
        sumx1_3_0_2_1_reg_7168 = sumx1_3_0_2_1_fu_4316_p2.read();
        sumx1_3_1_1_2_reg_7183 = sumx1_3_1_1_2_fu_4338_p2.read();
        sumx2_3_0_1_2_reg_7158 = sumx2_3_0_1_2_fu_4282_p2.read();
        sumx3_3_0_1_reg_7148 = sumx3_3_0_1_fu_4234_p2.read();
        sumy1_3_0_2_1_reg_7173 = sumy1_3_0_2_1_fu_4321_p2.read();
        sumy1_3_1_1_2_reg_7188 = sumy1_3_1_1_2_fu_4344_p2.read();
        sumy2_3_0_1_2_reg_7163 = sumy2_3_0_1_2_fu_4287_p2.read();
        sumy3_3_0_1_reg_7153 = sumy3_3_0_1_fu_4240_p2.read();
        tmp_45_1_1_2_reg_7178 = grp_fu_4079_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg11_fsm_11, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        sumx1_3_1_0_2_reg_7013 = sumx1_3_1_0_2_fu_3892_p2.read();
        sumx2_3_1_1_reg_7028 = sumx2_3_1_1_fu_3933_p2.read();
        sumy0_3_1_1_reg_7023 = sumy0_3_1_1_fu_3928_p2.read();
        sumy1_3_1_0_2_reg_7018 = sumy1_3_1_0_2_fu_3898_p2.read();
        sumy2_3_1_1_reg_7033 = sumy2_3_1_1_fu_3938_p2.read();
        tmp_51_0_1_2_reg_7008 = grp_fu_3526_p2.read();
        tmp_58_1_1_1_reg_7046 = grp_fu_3554_p2.read();
        tmp_59_1_1_1_reg_7051 = grp_fu_3559_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg16_fsm_16, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        sumx2_2_0_2_2_reg_7271 = sumx2_2_0_2_2_fu_4647_p3.read();
        sumy2_2_0_2_2_reg_7264 = sumy2_2_0_2_2_fu_4640_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg5_fsm_29, ap_CS_fsm.read()))) {
        sumx2_3_0_0_1_reg_6674 = sumx2_3_0_0_1_fu_2936_p2.read();
        sumy2_3_0_0_1_reg_6679 = sumy2_3_0_0_1_fu_2942_p2.read();
        tmp_33_reg_6664 = grp_fu_2674_p2.read();
        tmp_34_reg_6669 = grp_fu_2679_p2.read();
        tmp_51_0_0_2_reg_6684 = grp_fu_2728_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg6_fsm_30, ap_CS_fsm.read()))) {
        sumx2_3_0_0_2_reg_6732 = sumx2_3_0_0_2_fu_3131_p2.read();
        sumx3_3_0_0_1_reg_6722 = sumx3_3_0_0_1_fu_3115_p2.read();
        sumy3_3_0_0_1_reg_6727 = sumy3_3_0_0_1_fu_3121_p2.read();
        tmp_44_1_reg_6742 = grp_fu_2846_p2.read();
        tmp_45_1_reg_6747 = grp_fu_2851_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg18_fsm_18, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_sel_tmp2_reg_5816_pp0_it1.read()))) {
        sumy1_3_1_2_2_reg_7395 = sumy1_3_1_2_2_fu_5095_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg7_fsm_31, ap_CS_fsm.read()))) {
        sumy2_3_0_0_2_reg_6763 = sumy2_3_0_0_2_fu_3208_p2.read();
        tmp_51_1_0_1_reg_6788 = grp_fu_3037_p2.read();
        tmp_52_1_0_1_reg_6793 = grp_fu_3042_p2.read();
        tmp_58_1_reg_6778 = grp_fu_3027_p2.read();
        tmp_59_1_reg_6783 = grp_fu_3032_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg8_fsm_32, ap_CS_fsm.read()))) {
        tmp_15_reg_6803 = grp_fu_3087_p2.read();
        tmp_16_reg_6808 = grp_fu_3092_p2.read();
        tmp_44_1_0_2_reg_6838 = grp_fu_3194_p2.read();
        tmp_45_1_0_2_reg_6843 = grp_fu_3198_p2.read();
        tmp_52_0_0_2_reg_6813 = grp_fu_3127_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg24_fsm_24, ap_CS_fsm.read()))) {
        tmp_1_reg_6302 = tmp_1_fu_2191_p2.read();
        tmp_56_reg_6312 = tmp_56_fu_2197_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg4_fsm_28, ap_CS_fsm.read()))) {
        tmp_25_reg_6619 = grp_fu_2553_p2.read();
        tmp_26_reg_6624 = grp_fu_2558_p2.read();
        tmp_51_0_0_1_reg_6629 = grp_fu_2597_p2.read();
        tmp_52_0_0_1_reg_6634 = grp_fu_2602_p2.read();
        tmp_52_0_1_1_reg_6649 = grp_fu_2630_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg16_fsm_16, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()))) {
        tmp_44_1_1_reg_6041 = grp_fu_1060_p2.read();
        tmp_45_1_1_reg_6046 = grp_fu_1065_p2.read();
        tmp_66_0_1_2_reg_6009 = grp_fu_1004_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg1_fsm_25, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        tmp_44_1_2_1_reg_6486 = grp_fu_2257_p2.read();
        tmp_45_1_2_1_reg_6491 = grp_fu_2261_p2.read();
        tmp_51_0_2_2_reg_6471 = grp_fu_2203_p2.read();
        tmp_51_1_2_reg_6476 = grp_fu_2247_p2.read();
        tmp_52_1_2_reg_6481 = grp_fu_2252_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg2_fsm_26, ap_CS_fsm.read()))) {
        tmp_44_1_2_2_reg_6540 = grp_fu_2390_p2.read();
        tmp_51_1_2_1_reg_6520 = grp_fu_2366_p2.read();
        tmp_52_1_2_1_reg_6525 = grp_fu_2371_p2.read();
        tmp_58_1_2_1_reg_6530 = grp_fu_2380_p2.read();
        tmp_59_1_2_1_reg_6535 = grp_fu_2385_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg21_fsm_21, ap_CS_fsm.read()))) {
        tmp_44_1_2_reg_6215 = grp_fu_1741_p2.read();
        tmp_45_1_2_reg_6220 = grp_fu_1746_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg11_fsm_11, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        tmp_48_1_1_1_reg_7038 = tmp_48_1_1_1_fu_3943_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg3_fsm_27, ap_CS_fsm.read()))) {
        tmp_51_0_1_1_reg_6560 = grp_fu_2480_p2.read();
        tmp_58_0_1_1_reg_6565 = grp_fu_2489_p2.read();
        tmp_59_0_1_1_reg_6570 = grp_fu_2494_p2.read();
        tmp_65_0_1_1_reg_6575 = grp_fu_2503_p2.read();
        tmp_66_0_1_1_reg_6580 = grp_fu_2508_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg24_fsm_24, ap_CS_fsm.read()))) {
        tmp_51_0_2_1_reg_6318 = grp_fu_1988_p2.read();
        tmp_52_0_2_1_reg_6323 = grp_fu_1993_p2.read();
        tmp_58_0_2_1_reg_6328 = grp_fu_2002_p2.read();
        tmp_59_0_2_1_reg_6333 = grp_fu_2007_p2.read();
        tmp_65_0_2_1_reg_6338 = grp_fu_2016_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg23_fsm_23, ap_CS_fsm.read()))) {
        tmp_51_0_2_reg_6279 = grp_fu_1909_p2.read();
        tmp_52_0_2_reg_6284 = grp_fu_1914_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg17_fsm_17, ap_CS_fsm.read()))) {
        tmp_51_1_1_reg_6068 = grp_fu_1214_p2.read();
        tmp_52_1_1_reg_6073 = grp_fu_1219_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg10_fsm_34, ap_CS_fsm.read()))) {
        tmp_52_reg_6945 = tmp_52_fu_3656_p1.read();
        tmp_53_reg_6951 = tmp_60_0_1_fu_3651_p2.read().range(10, 2);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg14_fsm_14, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()))) {
        tmp_55_1_2_2_reg_7193 = tmp_55_1_2_2_fu_4354_p1.read();
    }
    if ((esl_seteq<1,6,6>(ap_ST_pp0_stg0_fsm_10, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()))) {
        tmp_58_0_2_2_reg_6381 = grp_fu_2099_p2.read();
        tmp_59_0_2_2_reg_6386 = grp_fu_2103_p2.read();
        tmp_65_0_2_2_reg_6391 = grp_fu_2147_p2.read();
        tmp_66_0_2_1_reg_6376 = grp_fu_2095_p2.read();
        tmp_66_0_2_2_reg_6396 = grp_fu_2152_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg19_fsm_19, ap_CS_fsm.read()))) {
        tmp_58_0_2_reg_6150 = grp_fu_1432_p2.read();
        tmp_59_0_2_reg_6155 = grp_fu_1437_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg18_fsm_18, ap_CS_fsm.read()))) {
        tmp_58_1_1_reg_6101 = grp_fu_1382_p2.read();
        tmp_59_1_1_reg_6106 = grp_fu_1387_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg22_fsm_22, ap_CS_fsm.read()))) {
        tmp_58_1_2_reg_6269 = grp_fu_1859_p2.read();
        tmp_59_1_2_reg_6274 = grp_fu_1864_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_exitcond2_reg_5755_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg7_fsm_31, ap_CS_fsm.read()))) {
        tmp_62_0_0_2_reg_6768 = tmp_62_0_0_2_fu_3250_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg14_fsm_14, ap_CS_fsm.read()))) {
        tmp_62_0_1_2_reg_5950 = tmp_62_0_1_2_fu_1001_p1.read();
        tmp_94_reg_5969 = tmp_94_fu_1113_p1.read();
        tmp_95_reg_5975 = tmp_53_1_1_fu_1107_p2.read().range(10, 2);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg23_fsm_23, ap_CS_fsm.read()))) {
        tmp_62_0_2_2_reg_6289 = tmp_62_0_2_2_fu_2143_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, sel_tmp2_reg_5816.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg20_fsm_20, ap_CS_fsm.read()))) {
        tmp_65_0_2_reg_6176 = grp_fu_1563_p2.read();
        tmp_66_0_2_reg_6181 = grp_fu_1568_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_reg_5755.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg12_fsm_12, ap_CS_fsm.read()))) {
        tmp_86_reg_5804 = tmp_86_fu_865_p1.read();
        tmp_87_reg_5810 = tmp_39_1_1_fu_859_p2.read().range(10, 2);
    }
    if ((esl_seteq<1,6,6>(ap_ST_st2_fsm_1, ap_CS_fsm.read()) && esl_seteq<1,1,1>(exitcond1_fu_672_p2.read(), ap_const_lv1_0))) {
        tmp_cast_reg_5446 = tmp_cast_fu_702_p1.read();
        tmp_reg_5441 = tmp_fu_696_p2.read();
    }
}

void sobel_ip::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            if (esl_seteq<1,1,1>(exitcond1_fu_672_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            } else {
                ap_NS_fsm = ap_ST_st6_fsm_5;
            }
            break;
        case 2 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, exitcond3_fu_710_p2.read())) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        case 3 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
            break;
        case 5 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 6 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
            break;
        case 7 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
            break;
        case 9 : 
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_10;
            break;
        case 10 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, exitcond2_fu_777_p2.read()) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()))) {
                ap_NS_fsm = ap_ST_pp0_stg1_fsm_25;
            } else {
                ap_NS_fsm = ap_ST_st47_fsm_35;
            }
            break;
        case 11 : 
            ap_NS_fsm = ap_ST_pp0_stg12_fsm_12;
            break;
        case 12 : 
            ap_NS_fsm = ap_ST_pp0_stg13_fsm_13;
            break;
        case 13 : 
            ap_NS_fsm = ap_ST_pp0_stg14_fsm_14;
            break;
        case 14 : 
            ap_NS_fsm = ap_ST_pp0_stg15_fsm_15;
            break;
        case 15 : 
            ap_NS_fsm = ap_ST_pp0_stg16_fsm_16;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_pp0_stg17_fsm_17;
            break;
        case 17 : 
            ap_NS_fsm = ap_ST_pp0_stg18_fsm_18;
            break;
        case 18 : 
            ap_NS_fsm = ap_ST_pp0_stg19_fsm_19;
            break;
        case 19 : 
            ap_NS_fsm = ap_ST_pp0_stg20_fsm_20;
            break;
        case 20 : 
            if (!(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it1.read()) && esl_seteq<1,6,6>(ap_ST_pp0_stg20_fsm_20, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()))) {
                ap_NS_fsm = ap_ST_pp0_stg21_fsm_21;
            } else {
                ap_NS_fsm = ap_ST_st47_fsm_35;
            }
            break;
        case 21 : 
            ap_NS_fsm = ap_ST_pp0_stg22_fsm_22;
            break;
        case 22 : 
            ap_NS_fsm = ap_ST_pp0_stg23_fsm_23;
            break;
        case 23 : 
            ap_NS_fsm = ap_ST_pp0_stg24_fsm_24;
            break;
        case 24 : 
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_10;
            break;
        case 25 : 
            ap_NS_fsm = ap_ST_pp0_stg2_fsm_26;
            break;
        case 26 : 
            ap_NS_fsm = ap_ST_pp0_stg3_fsm_27;
            break;
        case 27 : 
            ap_NS_fsm = ap_ST_pp0_stg4_fsm_28;
            break;
        case 28 : 
            ap_NS_fsm = ap_ST_pp0_stg5_fsm_29;
            break;
        case 29 : 
            ap_NS_fsm = ap_ST_pp0_stg6_fsm_30;
            break;
        case 30 : 
            ap_NS_fsm = ap_ST_pp0_stg7_fsm_31;
            break;
        case 31 : 
            ap_NS_fsm = ap_ST_pp0_stg8_fsm_32;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_pp0_stg9_fsm_33;
            break;
        case 33 : 
            ap_NS_fsm = ap_ST_pp0_stg10_fsm_34;
            break;
        case 34 : 
            ap_NS_fsm = ap_ST_pp0_stg11_fsm_11;
            break;
        case 35 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}
}

