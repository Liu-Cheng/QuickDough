#include "sobel_ip.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void sobel_ip::thread_tmp_48_fu_3512_p1() {
    tmp_48_fu_3512_p1 = tmp_53_0_1_fu_3506_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_51_fu_3795_p1() {
    tmp_51_fu_3795_p1 = call_get_range5_fu_3785_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_52_fu_3656_p1() {
    tmp_52_fu_3656_p1 = tmp_60_0_1_fu_3651_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_53_0_1_fu_3506_p2() {
    tmp_53_0_1_fu_3506_p2 = (!tmp_37_0_1_cast_fu_3465_p1.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_bigint<11>(tmp_37_0_1_cast_fu_3465_p1.read()) + sc_biguint<11>(ap_const_lv11_7FF));
}

void sobel_ip::thread_tmp_53_0_2_fu_1138_p2() {
    tmp_53_0_2_fu_1138_p2 = (!tmp_37_0_2_cast_fu_1134_p1.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_37_0_2_cast_fu_1134_p1.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_53_1_1_fu_1107_p2() {
    tmp_53_1_1_fu_1107_p2 = (!tmp_37_1_1_cast_fu_1016_p1.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_bigint<11>(tmp_37_1_1_cast_fu_1016_p1.read()) + sc_biguint<11>(ap_const_lv11_7FF));
}

void sobel_ip::thread_tmp_53_1_2_fu_1618_p2() {
    tmp_53_1_2_fu_1618_p2 = (!tmp_37_1_2_cast_fu_1580_p1.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_37_1_2_cast_fu_1580_p1.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_53_1_fu_2744_p0() {
    tmp_53_1_fu_2744_p0 = esl_sext<12,11>(tmp_42_fu_2733_p3.read());
}

void sobel_ip::thread_tmp_53_1_fu_2744_p2() {
    tmp_53_1_fu_2744_p2 = (!tmp_53_1_fu_2744_p0.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_53_1_fu_2744_p0.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_55_0_1_1_fu_2485_p1() {
    tmp_55_0_1_1_fu_2485_p1 = esl_zext<32,8>(grp_fu_648_p4.read());
}

void sobel_ip::thread_tmp_55_0_1_fu_3799_p1() {
    tmp_55_0_1_fu_3799_p1 = esl_zext<32,8>(tmp_51_fu_3795_p1.read());
}

void sobel_ip::thread_tmp_55_0_2_1_fu_1998_p1() {
    tmp_55_0_2_1_fu_1998_p1 = esl_zext<32,8>(grp_fu_648_p4.read());
}

void sobel_ip::thread_tmp_55_0_2_fu_1428_p1() {
    tmp_55_0_2_fu_1428_p1 = esl_zext<32,8>(tmp_66_fu_1424_p1.read());
}

void sobel_ip::thread_tmp_55_1_0_1_fu_3348_p1() {
    tmp_55_1_0_1_fu_3348_p1 = esl_zext<32,8>(grp_fu_648_p4.read());
}

void sobel_ip::thread_tmp_55_1_0_2_fu_3362_p1() {
    tmp_55_1_0_2_fu_3362_p1 = esl_zext<32,8>(grp_fu_658_p4.read());
}

void sobel_ip::thread_tmp_55_1_1_1_fu_3550_p1() {
    tmp_55_1_1_1_fu_3550_p1 = esl_zext<32,8>(grp_fu_648_p4.read());
}

void sobel_ip::thread_tmp_55_1_1_2_fu_4197_p1() {
    tmp_55_1_1_2_fu_4197_p1 = esl_zext<32,8>(call_get_range884_part_reg_6929.read());
}

void sobel_ip::thread_tmp_55_1_1_fu_1378_p1() {
    tmp_55_1_1_fu_1378_p1 = esl_zext<32,8>(tmp_97_fu_1374_p1.read());
}

void sobel_ip::thread_tmp_55_1_2_1_fu_2376_p1() {
    tmp_55_1_2_1_fu_2376_p1 = esl_zext<32,8>(grp_fu_648_p4.read());
}

void sobel_ip::thread_tmp_55_1_2_2_fu_4354_p1() {
    tmp_55_1_2_2_fu_4354_p1 = esl_zext<32,8>(call_get_range956_part_reg_6417.read());
}

void sobel_ip::thread_tmp_55_1_2_fu_1855_p1() {
    tmp_55_1_2_fu_1855_p1 = esl_zext<32,8>(tmp_109_fu_1851_p1.read());
}

void sobel_ip::thread_tmp_55_1_fu_3023_p1() {
    tmp_55_1_fu_3023_p1 = esl_zext<32,8>(tmp_83_fu_3019_p1.read());
}

void sobel_ip::thread_tmp_55_fu_4017_p1() {
    tmp_55_fu_4017_p1 = call_get_range6_fu_4007_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_56_fu_2197_p2() {
    tmp_56_fu_2197_p2 = (!ap_const_lv8_1.is_01())? sc_lv<8>(): i_1_reg_625.read() << (unsigned short)ap_const_lv8_1.to_uint();
}

void sobel_ip::thread_tmp_57_fu_811_p1() {
    tmp_57_fu_811_p1 = tmp_60_0_1_2_fu_805_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_58_fu_929_p1() {
    tmp_58_fu_929_p1 = call_get_range7_fu_919_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_59_fu_1671_p1() {
    tmp_59_fu_1671_p1 = tmp_46_0_2_fu_1665_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_5_fu_2395_p3() {
    tmp_5_fu_2395_p3 = esl_concat<8,3>(tmp_1_reg_6302.read(), ap_const_lv3_3);
}

void sobel_ip::thread_tmp_60_0_0_2_fu_2952_p2() {
    tmp_60_0_0_2_fu_2952_p2 = (!tmp_11_cast_reg_6422.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_11_cast_reg_6422.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void sobel_ip::thread_tmp_60_0_1_2_fu_805_p2() {
    tmp_60_0_1_2_fu_805_p2 = (!tmp_38_0_1_cast_fu_801_p1.read().is_01() || !ap_const_lv11_1.is_01())? sc_lv<11>(): (sc_bigint<11>(tmp_38_0_1_cast_fu_801_p1.read()) + sc_biguint<11>(ap_const_lv11_1));
}

void sobel_ip::thread_tmp_60_0_1_fu_3651_p2() {
    tmp_60_0_1_fu_3651_p2 = (!tmp_38_0_1_cast_reg_5782.read().is_01() || !ap_const_lv11_7FF.is_01())? sc_lv<11>(): (sc_bigint<11>(tmp_38_0_1_cast_reg_5782.read()) + sc_biguint<11>(ap_const_lv11_7FF));
}

void sobel_ip::thread_tmp_60_0_2_2_fu_1965_p2() {
    tmp_60_0_2_2_fu_1965_p2 = (!tmp_38_0_2_cast_reg_6014.read().is_01() || !ap_const_lv12_1.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_38_0_2_cast_reg_6014.read()) + sc_biguint<12>(ap_const_lv12_1));
}

void sobel_ip::thread_tmp_60_0_2_fu_1306_p2() {
    tmp_60_0_2_fu_1306_p2 = (!tmp_38_0_2_cast_fu_1268_p1.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_38_0_2_cast_fu_1268_p1.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_60_fu_1675_p4() {
    tmp_60_fu_1675_p4 = tmp_46_0_2_fu_1665_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_62_0_0_1_fu_2827_p1() {
    tmp_62_0_0_1_fu_2827_p1 = esl_zext<32,8>(grp_fu_658_p4.read());
}

void sobel_ip::thread_tmp_62_0_0_2_fu_3250_p1() {
    tmp_62_0_0_2_fu_3250_p1 = esl_zext<32,8>(tmp_40_fu_3246_p1.read());
}

void sobel_ip::thread_tmp_62_0_1_1_fu_2499_p1() {
    tmp_62_0_1_1_fu_2499_p1 = esl_zext<32,8>(grp_fu_658_p4.read());
}

void sobel_ip::thread_tmp_62_0_1_2_fu_1001_p1() {
    tmp_62_0_1_2_fu_1001_p1 = esl_zext<32,8>(tmp_58_reg_5928.read());
}

void sobel_ip::thread_tmp_62_0_1_fu_4021_p1() {
    tmp_62_0_1_fu_4021_p1 = esl_zext<32,8>(tmp_55_fu_4017_p1.read());
}

void sobel_ip::thread_tmp_62_0_2_1_fu_2012_p1() {
    tmp_62_0_2_1_fu_2012_p1 = esl_zext<32,8>(grp_fu_658_p4.read());
}

void sobel_ip::thread_tmp_62_0_2_2_fu_2143_p1() {
    tmp_62_0_2_2_fu_2143_p1 = esl_zext<32,8>(tmp_73_fu_2139_p1.read());
}

void sobel_ip::thread_tmp_62_0_2_fu_1559_p1() {
    tmp_62_0_2_fu_1559_p1 = esl_zext<32,8>(tmp_70_fu_1555_p1.read());
}

void sobel_ip::thread_tmp_62_fu_1901_p1() {
    tmp_62_fu_1901_p1 = call_get_range8_fu_1891_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_63_fu_1144_p1() {
    tmp_63_fu_1144_p1 = tmp_53_0_2_fu_1138_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_64_fu_1148_p4() {
    tmp_64_fu_1148_p4 = tmp_53_0_2_fu_1138_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_66_fu_1424_p1() {
    tmp_66_fu_1424_p1 = call_get_range9_fu_1414_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_67_fu_1312_p1() {
    tmp_67_fu_1312_p1 = tmp_60_0_2_fu_1306_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_68_fu_1316_p4() {
    tmp_68_fu_1316_p4 = tmp_60_0_2_fu_1306_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_6_fu_2797_p1() {
    tmp_6_fu_2797_p1 = tmp_s_fu_2791_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_70_fu_1555_p1() {
    tmp_70_fu_1555_p1 = call_get_range10_fu_1545_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_71_fu_1936_p1() {
    tmp_71_fu_1936_p1 = mem_index_gep12_fu_1930_p2.read().range(9-1, 0);
}

void sobel_ip::thread_tmp_72_fu_1970_p1() {
    tmp_72_fu_1970_p1 = tmp_60_0_2_2_fu_1965_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_73_fu_2139_p1() {
    tmp_73_fu_2139_p1 = call_get_range11_fu_2129_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_75_fu_4850_p4() {
    tmp_75_fu_4850_p4 = sum2_fu_4832_p2.read().range(31, 8);
}

void sobel_ip::thread_tmp_76_fu_5055_p4() {
    tmp_76_fu_5055_p4 = sum3_fu_5027_p2.read().range(31, 8);
}

void sobel_ip::thread_tmp_77_fu_5249_p2() {
    tmp_77_fu_5249_p2 = (!ap_const_lv32_8.is_01())? sc_lv<32>(): sum1_1_fu_5235_p3.read() << (unsigned short)ap_const_lv32_8.to_uint();
}

void sobel_ip::thread_tmp_78_fu_5255_p2() {
    tmp_78_fu_5255_p2 = (!ap_const_lv32_10.is_01())? sc_lv<32>(): sum2_1_reg_7380.read() << (unsigned short)ap_const_lv32_10.to_uint();
}

void sobel_ip::thread_tmp_79_fu_5260_p2() {
    tmp_79_fu_5260_p2 = (!ap_const_lv32_18.is_01())? sc_lv<32>(): sum3_1_fu_5243_p3.read() << (unsigned short)ap_const_lv32_18.to_uint();
}

void sobel_ip::thread_tmp_7_fu_759_p2() {
    tmp_7_fu_759_p2 = (!tmp4_fu_753_p2.read().is_01() || !tmp_cast_reg_5446.read().is_01())? sc_lv<9>(): (sc_bigint<9>(tmp4_fu_753_p2.read()) + sc_biguint<9>(tmp_cast_reg_5446.read()));
}

void sobel_ip::thread_tmp_80_fu_2750_p1() {
    tmp_80_fu_2750_p1 = tmp_53_1_fu_2744_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_81_fu_2754_p4() {
    tmp_81_fu_2754_p4 = tmp_53_1_fu_2744_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_83_fu_3019_p1() {
    tmp_83_fu_3019_p1 = call_get_range12_fu_3009_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_84_fu_3171_p3() {
    tmp_84_fu_3171_p3 = esl_concat<8,1>(tmp_1_reg_6302.read(), ap_const_lv1_1);
}

void sobel_ip::thread_tmp_86_fu_865_p1() {
    tmp_86_fu_865_p1 = tmp_39_1_1_fu_859_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_89_fu_1052_p1() {
    tmp_89_fu_1052_p1 = call_get_range13_fu_1042_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_8_fu_730_p2() {
    tmp_8_fu_730_p2 = (!tmp3_fu_722_p3.read().is_01() || !tmp_cast_reg_5446.read().is_01())? sc_lv<9>(): (sc_bigint<9>(tmp3_fu_722_p3.read()) + sc_biguint<9>(tmp_cast_reg_5446.read()));
}

void sobel_ip::thread_tmp_90_fu_987_p1() {
    tmp_90_fu_987_p1 = tmp_46_1_1_fu_981_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_93_fu_1206_p1() {
    tmp_93_fu_1206_p1 = call_get_range14_fu_1196_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_94_fu_1113_p1() {
    tmp_94_fu_1113_p1 = tmp_53_1_1_fu_1107_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_97_fu_1374_p1() {
    tmp_97_fu_1374_p1 = call_get_range15_fu_1364_p4.read().range(8-1, 0);
}

void sobel_ip::thread_tmp_98_fu_1493_p1() {
    tmp_98_fu_1493_p1 = tmp_39_1_2_fu_1487_p2.read().range(2-1, 0);
}

void sobel_ip::thread_tmp_99_fu_1497_p4() {
    tmp_99_fu_1497_p4 = tmp_39_1_2_fu_1487_p2.read().range(11, 2);
}

void sobel_ip::thread_tmp_9_fu_735_p1() {
    tmp_9_fu_735_p1 = esl_zext<64,9>(tmp_8_fu_730_p2.read());
}

void sobel_ip::thread_tmp_cast_fu_702_p1() {
    tmp_cast_fu_702_p1 = esl_sext<9,5>(tmp_fu_696_p2.read());
}

void sobel_ip::thread_tmp_fu_696_p2() {
    tmp_fu_696_p2 = (!p_shl_cast_fu_692_p1.read().is_01() || !i_cast_fu_668_p1.read().is_01())? sc_lv<5>(): (sc_bigint<5>(p_shl_cast_fu_692_p1.read()) - sc_biguint<5>(i_cast_fu_668_p1.read()));
}

void sobel_ip::thread_tmp_s_fu_2791_p0() {
    tmp_s_fu_2791_p0 = esl_sext<12,11>(tmp_2_fu_2780_p3.read());
}

void sobel_ip::thread_tmp_s_fu_2791_p2() {
    tmp_s_fu_2791_p2 = (!tmp_s_fu_2791_p0.read().is_01() || !ap_const_lv12_FFF.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_s_fu_2791_p0.read()) + sc_biguint<12>(ap_const_lv12_FFF));
}

void sobel_ip::thread_tmp_trn_cast_fu_740_p1() {
    tmp_trn_cast_fu_740_p1 = esl_zext<6,2>(j_reg_614.read());
}

}

