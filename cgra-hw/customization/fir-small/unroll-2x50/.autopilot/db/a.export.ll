; ModuleID = 'D:/minibench/customization/fir-small/unroll-2x50/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1
@p_str4 = private unnamed_addr constant [14 x i8] c"fir_ip_label1\00", align 1
@str = internal constant [7 x i8] c"fir_ip\00"

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define void @fir_ip([1152 x i32]* %sub_in, [1024 x i32]* %sub_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([1152 x i32]* %sub_in) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([1024 x i32]* %sub_out) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([1152 x i32]* %sub_in, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str2, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [17 x i8]* @p_str3) nounwind
  %sub_in_addr = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1088
  %sub_in_addr_2 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1089
  %sub_in_addr_4 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1090
  %sub_in_addr_6 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1091
  %sub_in_addr_8 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1092
  %sub_in_addr_10 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1093
  %sub_in_addr_12 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1094
  %sub_in_addr_14 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1095
  %sub_in_addr_16 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1096
  %sub_in_addr_18 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1097
  %sub_in_addr_20 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1098
  %sub_in_addr_22 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1099
  %sub_in_addr_24 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1100
  %sub_in_addr_26 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1101
  %sub_in_addr_28 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1102
  %sub_in_addr_30 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1103
  %sub_in_addr_32 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1104
  %sub_in_addr_34 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1105
  %sub_in_addr_36 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1106
  %sub_in_addr_38 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1107
  %sub_in_addr_40 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1108
  %sub_in_addr_42 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1109
  %sub_in_addr_44 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1110
  %sub_in_addr_46 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1111
  %sub_in_addr_48 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1112
  %sub_in_addr_50 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1113
  %sub_in_addr_52 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1114
  %sub_in_addr_54 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1115
  %sub_in_addr_56 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1116
  %sub_in_addr_58 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1117
  %sub_in_addr_60 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1118
  %sub_in_addr_62 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1119
  %sub_in_addr_64 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1120
  %sub_in_addr_66 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1121
  %sub_in_addr_68 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1122
  %sub_in_addr_70 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1123
  %sub_in_addr_72 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1124
  %sub_in_addr_74 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1125
  %sub_in_addr_76 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1126
  %sub_in_addr_78 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1127
  %sub_in_addr_80 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1128
  %sub_in_addr_82 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1129
  %sub_in_addr_84 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1130
  %sub_in_addr_86 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1131
  %sub_in_addr_88 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1132
  %sub_in_addr_90 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1133
  %sub_in_addr_92 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1134
  %sub_in_addr_94 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1135
  %sub_in_addr_96 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1136
  %sub_in_addr_98 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1137
  %sub_in_addr_100 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1138
  %sub_in_addr_102 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1139
  %sub_in_addr_104 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1140
  %sub_in_addr_106 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1141
  %sub_in_addr_108 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1142
  %sub_in_addr_110 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1143
  %sub_in_addr_112 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1144
  %sub_in_addr_114 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1145
  %sub_in_addr_116 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1146
  %sub_in_addr_118 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1147
  %sub_in_addr_120 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1148
  %sub_in_addr_122 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1149
  %sub_in_addr_124 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1150
  %sub_in_addr_126 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 1151
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i11 [ 0, %0 ], [ %tmp_6_0_61, %2 ]
  %exitcond1 = icmp eq i11 %i, -1024
  br i1 %exitcond1, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([14 x i8]* @p_str4) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([14 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %tmp1 = add i11 %i, 64
  %sub_in_load = load i32* %sub_in_addr, align 4
  %tmp_1 = zext i11 %tmp1 to i64
  %sub_in_addr_1 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_1
  %sub_in_load_1 = load i32* %sub_in_addr_1, align 4
  %tmp_2 = mul nsw i32 %sub_in_load_1, %sub_in_load
  %sub_in_load_2 = load i32* %sub_in_addr_2, align 4
  %tmp_6_0_1 = add i11 %i, 63
  %tmp_7_0_1 = zext i11 %tmp_6_0_1 to i64
  %sub_in_addr_3 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_1
  %sub_in_load_3 = load i32* %sub_in_addr_3, align 4
  %tmp_8_0_1 = mul nsw i32 %sub_in_load_3, %sub_in_load_2
  %sub_in_load_4 = load i32* %sub_in_addr_4, align 4
  %tmp_6_0_2 = add i11 %i, 62
  %tmp_7_0_2 = zext i11 %tmp_6_0_2 to i64
  %sub_in_addr_5 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_2
  %sub_in_load_5 = load i32* %sub_in_addr_5, align 4
  %tmp_8_0_2 = mul nsw i32 %sub_in_load_5, %sub_in_load_4
  %sub_in_load_6 = load i32* %sub_in_addr_6, align 4
  %tmp_6_0_3 = add i11 %i, 61
  %tmp_7_0_3 = zext i11 %tmp_6_0_3 to i64
  %sub_in_addr_7 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_3
  %sub_in_load_7 = load i32* %sub_in_addr_7, align 4
  %tmp_8_0_3 = mul nsw i32 %sub_in_load_7, %sub_in_load_6
  %sub_in_load_8 = load i32* %sub_in_addr_8, align 4
  %tmp_6_0_4 = add i11 %i, 60
  %tmp_7_0_4 = zext i11 %tmp_6_0_4 to i64
  %sub_in_addr_9 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_4
  %sub_in_load_9 = load i32* %sub_in_addr_9, align 4
  %tmp_8_0_4 = mul nsw i32 %sub_in_load_9, %sub_in_load_8
  %sub_in_load_10 = load i32* %sub_in_addr_10, align 4
  %tmp_6_0_5 = add i11 %i, 59
  %tmp_7_0_5 = zext i11 %tmp_6_0_5 to i64
  %sub_in_addr_11 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_5
  %sub_in_load_11 = load i32* %sub_in_addr_11, align 4
  %tmp_8_0_5 = mul nsw i32 %sub_in_load_11, %sub_in_load_10
  %sub_in_load_12 = load i32* %sub_in_addr_12, align 4
  %tmp_6_0_6 = add i11 %i, 58
  %tmp_7_0_6 = zext i11 %tmp_6_0_6 to i64
  %sub_in_addr_13 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_6
  %sub_in_load_13 = load i32* %sub_in_addr_13, align 4
  %tmp_8_0_6 = mul nsw i32 %sub_in_load_13, %sub_in_load_12
  %sub_in_load_14 = load i32* %sub_in_addr_14, align 4
  %tmp_6_0_7 = add i11 %i, 57
  %tmp_7_0_7 = zext i11 %tmp_6_0_7 to i64
  %sub_in_addr_15 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_7
  %sub_in_load_15 = load i32* %sub_in_addr_15, align 4
  %tmp_8_0_7 = mul nsw i32 %sub_in_load_15, %sub_in_load_14
  %sub_in_load_16 = load i32* %sub_in_addr_16, align 4
  %tmp_6_0_8 = add i11 %i, 56
  %tmp_7_0_8 = zext i11 %tmp_6_0_8 to i64
  %sub_in_addr_17 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_8
  %sub_in_load_17 = load i32* %sub_in_addr_17, align 4
  %tmp_8_0_8 = mul nsw i32 %sub_in_load_17, %sub_in_load_16
  %sub_in_load_18 = load i32* %sub_in_addr_18, align 4
  %tmp_6_0_9 = add i11 %i, 55
  %tmp_7_0_9 = zext i11 %tmp_6_0_9 to i64
  %sub_in_addr_19 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_9
  %sub_in_load_19 = load i32* %sub_in_addr_19, align 4
  %tmp_8_0_9 = mul nsw i32 %sub_in_load_19, %sub_in_load_18
  %sub_in_load_20 = load i32* %sub_in_addr_20, align 4
  %tmp_6_0_s = add i11 %i, 54
  %tmp_7_0_s = zext i11 %tmp_6_0_s to i64
  %sub_in_addr_21 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_s
  %sub_in_load_21 = load i32* %sub_in_addr_21, align 4
  %tmp_8_0_s = mul nsw i32 %sub_in_load_21, %sub_in_load_20
  %sub_in_load_22 = load i32* %sub_in_addr_22, align 4
  %tmp_6_0_10 = add i11 %i, 53
  %tmp_7_0_10 = zext i11 %tmp_6_0_10 to i64
  %sub_in_addr_23 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_10
  %sub_in_load_23 = load i32* %sub_in_addr_23, align 4
  %tmp_8_0_10 = mul nsw i32 %sub_in_load_23, %sub_in_load_22
  %sub_in_load_24 = load i32* %sub_in_addr_24, align 4
  %tmp_6_0_11 = add i11 %i, 52
  %tmp_7_0_11 = zext i11 %tmp_6_0_11 to i64
  %sub_in_addr_25 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_11
  %sub_in_load_25 = load i32* %sub_in_addr_25, align 4
  %tmp_8_0_11 = mul nsw i32 %sub_in_load_25, %sub_in_load_24
  %sub_in_load_26 = load i32* %sub_in_addr_26, align 4
  %tmp_6_0_12 = add i11 %i, 51
  %tmp_7_0_12 = zext i11 %tmp_6_0_12 to i64
  %sub_in_addr_27 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_12
  %sub_in_load_27 = load i32* %sub_in_addr_27, align 4
  %tmp_8_0_12 = mul nsw i32 %sub_in_load_27, %sub_in_load_26
  %sub_in_load_28 = load i32* %sub_in_addr_28, align 4
  %tmp_6_0_13 = add i11 %i, 50
  %tmp_7_0_13 = zext i11 %tmp_6_0_13 to i64
  %sub_in_addr_29 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_13
  %sub_in_load_29 = load i32* %sub_in_addr_29, align 4
  %tmp_8_0_13 = mul nsw i32 %sub_in_load_29, %sub_in_load_28
  %sub_in_load_30 = load i32* %sub_in_addr_30, align 4
  %tmp_6_0_14 = add i11 %i, 49
  %tmp_7_0_14 = zext i11 %tmp_6_0_14 to i64
  %sub_in_addr_31 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_14
  %sub_in_load_31 = load i32* %sub_in_addr_31, align 4
  %tmp_8_0_14 = mul nsw i32 %sub_in_load_31, %sub_in_load_30
  %sub_in_load_32 = load i32* %sub_in_addr_32, align 4
  %tmp_6_0_15 = add i11 %i, 48
  %tmp_7_0_15 = zext i11 %tmp_6_0_15 to i64
  %sub_in_addr_33 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_15
  %sub_in_load_33 = load i32* %sub_in_addr_33, align 4
  %tmp_8_0_15 = mul nsw i32 %sub_in_load_33, %sub_in_load_32
  %sub_in_load_34 = load i32* %sub_in_addr_34, align 4
  %tmp_6_0_16 = add i11 %i, 47
  %tmp_7_0_16 = zext i11 %tmp_6_0_16 to i64
  %sub_in_addr_35 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_16
  %sub_in_load_35 = load i32* %sub_in_addr_35, align 4
  %tmp_8_0_16 = mul nsw i32 %sub_in_load_35, %sub_in_load_34
  %sub_in_load_36 = load i32* %sub_in_addr_36, align 4
  %tmp_6_0_17 = add i11 %i, 46
  %tmp_7_0_17 = zext i11 %tmp_6_0_17 to i64
  %sub_in_addr_37 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_17
  %sub_in_load_37 = load i32* %sub_in_addr_37, align 4
  %tmp_8_0_17 = mul nsw i32 %sub_in_load_37, %sub_in_load_36
  %sub_in_load_38 = load i32* %sub_in_addr_38, align 4
  %tmp_6_0_18 = add i11 %i, 45
  %tmp_7_0_18 = zext i11 %tmp_6_0_18 to i64
  %sub_in_addr_39 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_18
  %sub_in_load_39 = load i32* %sub_in_addr_39, align 4
  %tmp_8_0_18 = mul nsw i32 %sub_in_load_39, %sub_in_load_38
  %sub_in_load_40 = load i32* %sub_in_addr_40, align 4
  %tmp_6_0_19 = add i11 %i, 44
  %tmp_7_0_19 = zext i11 %tmp_6_0_19 to i64
  %sub_in_addr_41 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_19
  %sub_in_load_41 = load i32* %sub_in_addr_41, align 4
  %tmp_8_0_19 = mul nsw i32 %sub_in_load_41, %sub_in_load_40
  %sub_in_load_42 = load i32* %sub_in_addr_42, align 4
  %tmp_6_0_20 = add i11 %i, 43
  %tmp_7_0_20 = zext i11 %tmp_6_0_20 to i64
  %sub_in_addr_43 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_20
  %sub_in_load_43 = load i32* %sub_in_addr_43, align 4
  %tmp_8_0_20 = mul nsw i32 %sub_in_load_43, %sub_in_load_42
  %sub_in_load_44 = load i32* %sub_in_addr_44, align 4
  %tmp_6_0_21 = add i11 %i, 42
  %tmp_7_0_21 = zext i11 %tmp_6_0_21 to i64
  %sub_in_addr_45 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_21
  %sub_in_load_45 = load i32* %sub_in_addr_45, align 4
  %tmp_8_0_21 = mul nsw i32 %sub_in_load_45, %sub_in_load_44
  %sub_in_load_46 = load i32* %sub_in_addr_46, align 4
  %tmp_6_0_22 = add i11 %i, 41
  %tmp_7_0_22 = zext i11 %tmp_6_0_22 to i64
  %sub_in_addr_47 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_22
  %sub_in_load_47 = load i32* %sub_in_addr_47, align 4
  %tmp_8_0_22 = mul nsw i32 %sub_in_load_47, %sub_in_load_46
  %sub_in_load_48 = load i32* %sub_in_addr_48, align 4
  %tmp_6_0_23 = add i11 %i, 40
  %tmp_7_0_23 = zext i11 %tmp_6_0_23 to i64
  %sub_in_addr_49 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_23
  %sub_in_load_49 = load i32* %sub_in_addr_49, align 4
  %tmp_8_0_23 = mul nsw i32 %sub_in_load_49, %sub_in_load_48
  %sub_in_load_50 = load i32* %sub_in_addr_50, align 4
  %tmp_6_0_24 = add i11 %i, 39
  %tmp_7_0_24 = zext i11 %tmp_6_0_24 to i64
  %sub_in_addr_51 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_24
  %sub_in_load_51 = load i32* %sub_in_addr_51, align 4
  %tmp_8_0_24 = mul nsw i32 %sub_in_load_51, %sub_in_load_50
  %sub_in_load_52 = load i32* %sub_in_addr_52, align 4
  %tmp_6_0_25 = add i11 %i, 38
  %tmp_7_0_25 = zext i11 %tmp_6_0_25 to i64
  %sub_in_addr_53 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_25
  %sub_in_load_53 = load i32* %sub_in_addr_53, align 4
  %tmp_8_0_25 = mul nsw i32 %sub_in_load_53, %sub_in_load_52
  %sub_in_load_54 = load i32* %sub_in_addr_54, align 4
  %tmp_6_0_26 = add i11 %i, 37
  %tmp_7_0_26 = zext i11 %tmp_6_0_26 to i64
  %sub_in_addr_55 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_26
  %sub_in_load_55 = load i32* %sub_in_addr_55, align 4
  %tmp_8_0_26 = mul nsw i32 %sub_in_load_55, %sub_in_load_54
  %sub_in_load_56 = load i32* %sub_in_addr_56, align 4
  %tmp_6_0_27 = add i11 %i, 36
  %tmp_7_0_27 = zext i11 %tmp_6_0_27 to i64
  %sub_in_addr_57 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_27
  %sub_in_load_57 = load i32* %sub_in_addr_57, align 4
  %tmp_8_0_27 = mul nsw i32 %sub_in_load_57, %sub_in_load_56
  %sub_in_load_58 = load i32* %sub_in_addr_58, align 4
  %tmp_6_0_28 = add i11 %i, 35
  %tmp_7_0_28 = zext i11 %tmp_6_0_28 to i64
  %sub_in_addr_59 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_28
  %sub_in_load_59 = load i32* %sub_in_addr_59, align 4
  %tmp_8_0_28 = mul nsw i32 %sub_in_load_59, %sub_in_load_58
  %sub_in_load_60 = load i32* %sub_in_addr_60, align 4
  %tmp_6_0_29 = add i11 %i, 34
  %tmp_7_0_29 = zext i11 %tmp_6_0_29 to i64
  %sub_in_addr_61 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_29
  %sub_in_load_61 = load i32* %sub_in_addr_61, align 4
  %tmp_8_0_29 = mul nsw i32 %sub_in_load_61, %sub_in_load_60
  %sub_in_load_62 = load i32* %sub_in_addr_62, align 4
  %tmp_6_0_30 = add i11 %i, 33
  %tmp_7_0_30 = zext i11 %tmp_6_0_30 to i64
  %sub_in_addr_63 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_30
  %sub_in_load_63 = load i32* %sub_in_addr_63, align 4
  %tmp_8_0_30 = mul nsw i32 %sub_in_load_63, %sub_in_load_62
  %sub_in_load_64 = load i32* %sub_in_addr_64, align 4
  %tmp_6_0_31 = add i11 %i, 32
  %tmp_7_0_31 = zext i11 %tmp_6_0_31 to i64
  %sub_in_addr_65 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_31
  %sub_in_load_65 = load i32* %sub_in_addr_65, align 4
  %tmp_8_0_31 = mul nsw i32 %sub_in_load_65, %sub_in_load_64
  %sub_in_load_66 = load i32* %sub_in_addr_66, align 4
  %tmp_6_0_32 = add i11 %i, 31
  %tmp_7_0_32 = zext i11 %tmp_6_0_32 to i64
  %sub_in_addr_67 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_32
  %sub_in_load_67 = load i32* %sub_in_addr_67, align 4
  %tmp_8_0_32 = mul nsw i32 %sub_in_load_67, %sub_in_load_66
  %sub_in_load_68 = load i32* %sub_in_addr_68, align 4
  %tmp_6_0_33 = add i11 %i, 30
  %tmp_7_0_33 = zext i11 %tmp_6_0_33 to i64
  %sub_in_addr_69 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_33
  %sub_in_load_69 = load i32* %sub_in_addr_69, align 4
  %tmp_8_0_33 = mul nsw i32 %sub_in_load_69, %sub_in_load_68
  %sub_in_load_70 = load i32* %sub_in_addr_70, align 4
  %tmp_6_0_34 = add i11 %i, 29
  %tmp_7_0_34 = zext i11 %tmp_6_0_34 to i64
  %sub_in_addr_71 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_34
  %sub_in_load_71 = load i32* %sub_in_addr_71, align 4
  %tmp_8_0_34 = mul nsw i32 %sub_in_load_71, %sub_in_load_70
  %sub_in_load_72 = load i32* %sub_in_addr_72, align 4
  %tmp_6_0_35 = add i11 %i, 28
  %tmp_7_0_35 = zext i11 %tmp_6_0_35 to i64
  %sub_in_addr_73 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_35
  %sub_in_load_73 = load i32* %sub_in_addr_73, align 4
  %tmp_8_0_35 = mul nsw i32 %sub_in_load_73, %sub_in_load_72
  %sub_in_load_74 = load i32* %sub_in_addr_74, align 4
  %tmp_6_0_36 = add i11 %i, 27
  %tmp_7_0_36 = zext i11 %tmp_6_0_36 to i64
  %sub_in_addr_75 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_36
  %sub_in_load_75 = load i32* %sub_in_addr_75, align 4
  %tmp_8_0_36 = mul nsw i32 %sub_in_load_75, %sub_in_load_74
  %sub_in_load_76 = load i32* %sub_in_addr_76, align 4
  %tmp_6_0_37 = add i11 %i, 26
  %tmp_7_0_37 = zext i11 %tmp_6_0_37 to i64
  %sub_in_addr_77 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_37
  %sub_in_load_77 = load i32* %sub_in_addr_77, align 4
  %tmp_8_0_37 = mul nsw i32 %sub_in_load_77, %sub_in_load_76
  %sub_in_load_78 = load i32* %sub_in_addr_78, align 4
  %tmp_6_0_38 = add i11 %i, 25
  %tmp_7_0_38 = zext i11 %tmp_6_0_38 to i64
  %sub_in_addr_79 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_38
  %sub_in_load_79 = load i32* %sub_in_addr_79, align 4
  %tmp_8_0_38 = mul nsw i32 %sub_in_load_79, %sub_in_load_78
  %sub_in_load_80 = load i32* %sub_in_addr_80, align 4
  %tmp_6_0_39 = add i11 %i, 24
  %tmp_7_0_39 = zext i11 %tmp_6_0_39 to i64
  %sub_in_addr_81 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_39
  %sub_in_load_81 = load i32* %sub_in_addr_81, align 4
  %tmp_8_0_39 = mul nsw i32 %sub_in_load_81, %sub_in_load_80
  %sub_in_load_82 = load i32* %sub_in_addr_82, align 4
  %tmp_6_0_40 = add i11 %i, 23
  %tmp_7_0_40 = zext i11 %tmp_6_0_40 to i64
  %sub_in_addr_83 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_40
  %sub_in_load_83 = load i32* %sub_in_addr_83, align 4
  %tmp_8_0_40 = mul nsw i32 %sub_in_load_83, %sub_in_load_82
  %sub_in_load_84 = load i32* %sub_in_addr_84, align 4
  %tmp_6_0_41 = add i11 %i, 22
  %tmp_7_0_41 = zext i11 %tmp_6_0_41 to i64
  %sub_in_addr_85 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_41
  %sub_in_load_85 = load i32* %sub_in_addr_85, align 4
  %tmp_8_0_41 = mul nsw i32 %sub_in_load_85, %sub_in_load_84
  %sub_in_load_86 = load i32* %sub_in_addr_86, align 4
  %tmp_6_0_42 = add i11 %i, 21
  %tmp_7_0_42 = zext i11 %tmp_6_0_42 to i64
  %sub_in_addr_87 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_42
  %sub_in_load_87 = load i32* %sub_in_addr_87, align 4
  %tmp_8_0_42 = mul nsw i32 %sub_in_load_87, %sub_in_load_86
  %sub_in_load_88 = load i32* %sub_in_addr_88, align 4
  %tmp_6_0_43 = add i11 %i, 20
  %tmp_7_0_43 = zext i11 %tmp_6_0_43 to i64
  %sub_in_addr_89 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_43
  %sub_in_load_89 = load i32* %sub_in_addr_89, align 4
  %tmp_8_0_43 = mul nsw i32 %sub_in_load_89, %sub_in_load_88
  %sub_in_load_90 = load i32* %sub_in_addr_90, align 4
  %tmp_6_0_44 = add i11 %i, 19
  %tmp_7_0_44 = zext i11 %tmp_6_0_44 to i64
  %sub_in_addr_91 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_44
  %sub_in_load_91 = load i32* %sub_in_addr_91, align 4
  %tmp_8_0_44 = mul nsw i32 %sub_in_load_91, %sub_in_load_90
  %sub_in_load_92 = load i32* %sub_in_addr_92, align 4
  %tmp_6_0_45 = add i11 %i, 18
  %tmp_7_0_45 = zext i11 %tmp_6_0_45 to i64
  %sub_in_addr_93 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_45
  %sub_in_load_93 = load i32* %sub_in_addr_93, align 4
  %tmp_8_0_45 = mul nsw i32 %sub_in_load_93, %sub_in_load_92
  %sub_in_load_94 = load i32* %sub_in_addr_94, align 4
  %tmp_6_0_46 = add i11 %i, 17
  %tmp_7_0_46 = zext i11 %tmp_6_0_46 to i64
  %sub_in_addr_95 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_46
  %sub_in_load_95 = load i32* %sub_in_addr_95, align 4
  %tmp_8_0_46 = mul nsw i32 %sub_in_load_95, %sub_in_load_94
  %sub_in_load_96 = load i32* %sub_in_addr_96, align 4
  %tmp_6_0_47 = add i11 %i, 16
  %tmp_7_0_47 = zext i11 %tmp_6_0_47 to i64
  %sub_in_addr_97 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_47
  %sub_in_load_97 = load i32* %sub_in_addr_97, align 4
  %tmp_8_0_47 = mul nsw i32 %sub_in_load_97, %sub_in_load_96
  %sub_in_load_98 = load i32* %sub_in_addr_98, align 4
  %tmp_6_0_48 = add i11 %i, 15
  %tmp_7_0_48 = zext i11 %tmp_6_0_48 to i64
  %sub_in_addr_99 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_48
  %sub_in_load_99 = load i32* %sub_in_addr_99, align 4
  %tmp_8_0_48 = mul nsw i32 %sub_in_load_99, %sub_in_load_98
  %sub_in_load_100 = load i32* %sub_in_addr_100, align 4
  %tmp_6_0_49 = add i11 %i, 14
  %tmp_7_0_49 = zext i11 %tmp_6_0_49 to i64
  %sub_in_addr_101 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_49
  %sub_in_load_101 = load i32* %sub_in_addr_101, align 4
  %tmp_8_0_49 = mul nsw i32 %sub_in_load_101, %sub_in_load_100
  %sub_in_load_102 = load i32* %sub_in_addr_102, align 4
  %tmp_6_0_50 = add i11 %i, 13
  %tmp_7_0_50 = zext i11 %tmp_6_0_50 to i64
  %sub_in_addr_103 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_50
  %sub_in_load_103 = load i32* %sub_in_addr_103, align 4
  %tmp_8_0_50 = mul nsw i32 %sub_in_load_103, %sub_in_load_102
  %sub_in_load_104 = load i32* %sub_in_addr_104, align 4
  %tmp_6_0_51 = add i11 %i, 12
  %tmp_7_0_51 = zext i11 %tmp_6_0_51 to i64
  %sub_in_addr_105 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_51
  %sub_in_load_105 = load i32* %sub_in_addr_105, align 4
  %tmp_8_0_51 = mul nsw i32 %sub_in_load_105, %sub_in_load_104
  %sub_in_load_106 = load i32* %sub_in_addr_106, align 4
  %tmp_6_0_52 = add i11 %i, 11
  %tmp_7_0_52 = zext i11 %tmp_6_0_52 to i64
  %sub_in_addr_107 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_52
  %sub_in_load_107 = load i32* %sub_in_addr_107, align 4
  %tmp_8_0_52 = mul nsw i32 %sub_in_load_107, %sub_in_load_106
  %sub_in_load_108 = load i32* %sub_in_addr_108, align 4
  %tmp_6_0_53 = add i11 %i, 10
  %tmp_7_0_53 = zext i11 %tmp_6_0_53 to i64
  %sub_in_addr_109 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_53
  %sub_in_load_109 = load i32* %sub_in_addr_109, align 4
  %tmp_8_0_53 = mul nsw i32 %sub_in_load_109, %sub_in_load_108
  %sub_in_load_110 = load i32* %sub_in_addr_110, align 4
  %tmp_6_0_54 = add i11 %i, 9
  %tmp_7_0_54 = zext i11 %tmp_6_0_54 to i64
  %sub_in_addr_111 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_54
  %sub_in_load_111 = load i32* %sub_in_addr_111, align 4
  %tmp_8_0_54 = mul nsw i32 %sub_in_load_111, %sub_in_load_110
  %sub_in_load_112 = load i32* %sub_in_addr_112, align 4
  %tmp_6_0_55 = add i11 %i, 8
  %tmp_7_0_55 = zext i11 %tmp_6_0_55 to i64
  %sub_in_addr_113 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_55
  %sub_in_load_113 = load i32* %sub_in_addr_113, align 4
  %tmp_8_0_55 = mul nsw i32 %sub_in_load_113, %sub_in_load_112
  %sub_in_load_114 = load i32* %sub_in_addr_114, align 4
  %tmp_6_0_56 = add i11 %i, 7
  %tmp_7_0_56 = zext i11 %tmp_6_0_56 to i64
  %sub_in_addr_115 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_56
  %sub_in_load_115 = load i32* %sub_in_addr_115, align 4
  %tmp_8_0_56 = mul nsw i32 %sub_in_load_115, %sub_in_load_114
  %sub_in_load_116 = load i32* %sub_in_addr_116, align 4
  %tmp_6_0_57 = add i11 %i, 6
  %tmp_7_0_57 = zext i11 %tmp_6_0_57 to i64
  %sub_in_addr_117 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_57
  %sub_in_load_117 = load i32* %sub_in_addr_117, align 4
  %tmp_8_0_57 = mul nsw i32 %sub_in_load_117, %sub_in_load_116
  %sub_in_load_118 = load i32* %sub_in_addr_118, align 4
  %tmp_6_0_58 = add i11 %i, 5
  %tmp_7_0_58 = zext i11 %tmp_6_0_58 to i64
  %sub_in_addr_119 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_58
  %sub_in_load_119 = load i32* %sub_in_addr_119, align 4
  %tmp_8_0_58 = mul nsw i32 %sub_in_load_119, %sub_in_load_118
  %sub_in_load_120 = load i32* %sub_in_addr_120, align 4
  %tmp_6_0_59 = add i11 %i, 4
  %tmp_7_0_59 = zext i11 %tmp_6_0_59 to i64
  %sub_in_addr_121 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_59
  %sub_in_load_121 = load i32* %sub_in_addr_121, align 4
  %tmp_8_0_59 = mul nsw i32 %sub_in_load_121, %sub_in_load_120
  %sub_in_load_122 = load i32* %sub_in_addr_122, align 4
  %tmp_6_0_60 = add i11 %i, 3
  %tmp_7_0_60 = zext i11 %tmp_6_0_60 to i64
  %sub_in_addr_123 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_60
  %sub_in_load_123 = load i32* %sub_in_addr_123, align 4
  %tmp_8_0_60 = mul nsw i32 %sub_in_load_123, %sub_in_load_122
  %sub_in_load_124 = load i32* %sub_in_addr_124, align 4
  %tmp_6_0_61 = add i11 %i, 2
  %tmp_7_0_61 = zext i11 %tmp_6_0_61 to i64
  %sub_in_addr_125 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_61
  %sub_in_load_125 = load i32* %sub_in_addr_125, align 4
  %tmp_8_0_61 = mul nsw i32 %sub_in_load_125, %sub_in_load_124
  %sub_in_load_126 = load i32* %sub_in_addr_126, align 4
  %tmp_4 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %i, i32 1, i32 9)
  %tmp_6_0_62 = call i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9 %tmp_4, i1 true)
  %tmp_7_0_62 = zext i10 %tmp_6_0_62 to i64
  %sub_in_addr_127 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_0_62
  %sub_in_load_127 = load i32* %sub_in_addr_127, align 4
  %tmp_8_0_62 = mul nsw i32 %sub_in_load_127, %sub_in_load_126
  %tmp6 = add i32 %tmp_8_0_1, %tmp_2
  %tmp7 = add i32 %tmp_8_0_2, %tmp_8_0_3
  %tmp5 = add i32 %tmp7, %tmp6
  %tmp9 = add i32 %tmp_8_0_4, %tmp_8_0_5
  %tmp10 = add i32 %tmp_8_0_6, %tmp_8_0_7
  %tmp8 = add i32 %tmp10, %tmp9
  %tmp4 = add i32 %tmp8, %tmp5
  %tmp13 = add i32 %tmp_8_0_8, %tmp_8_0_9
  %tmp14 = add i32 %tmp_8_0_s, %tmp_8_0_10
  %tmp12 = add i32 %tmp14, %tmp13
  %tmp16 = add i32 %tmp_8_0_11, %tmp_8_0_12
  %tmp17 = add i32 %tmp_8_0_13, %tmp_8_0_14
  %tmp15 = add i32 %tmp17, %tmp16
  %tmp11 = add i32 %tmp15, %tmp12
  %tmp3 = add i32 %tmp11, %tmp4
  %tmp21 = add i32 %tmp_8_0_15, %tmp_8_0_16
  %tmp22 = add i32 %tmp_8_0_17, %tmp_8_0_18
  %tmp20 = add i32 %tmp22, %tmp21
  %tmp24 = add i32 %tmp_8_0_19, %tmp_8_0_20
  %tmp25 = add i32 %tmp_8_0_21, %tmp_8_0_22
  %tmp23 = add i32 %tmp25, %tmp24
  %tmp19 = add i32 %tmp23, %tmp20
  %tmp28 = add i32 %tmp_8_0_23, %tmp_8_0_24
  %tmp29 = add i32 %tmp_8_0_25, %tmp_8_0_26
  %tmp27 = add i32 %tmp29, %tmp28
  %tmp31 = add i32 %tmp_8_0_27, %tmp_8_0_28
  %tmp32 = add i32 %tmp_8_0_29, %tmp_8_0_30
  %tmp30 = add i32 %tmp32, %tmp31
  %tmp26 = add i32 %tmp30, %tmp27
  %tmp18 = add i32 %tmp26, %tmp19
  %tmp2 = add i32 %tmp18, %tmp3
  %tmp37 = add i32 %tmp_8_0_31, %tmp_8_0_32
  %tmp38 = add i32 %tmp_8_0_33, %tmp_8_0_34
  %tmp36 = add i32 %tmp38, %tmp37
  %tmp40 = add i32 %tmp_8_0_35, %tmp_8_0_36
  %tmp41 = add i32 %tmp_8_0_37, %tmp_8_0_38
  %tmp39 = add i32 %tmp41, %tmp40
  %tmp35 = add i32 %tmp39, %tmp36
  %tmp44 = add i32 %tmp_8_0_39, %tmp_8_0_40
  %tmp45 = add i32 %tmp_8_0_41, %tmp_8_0_42
  %tmp43 = add i32 %tmp45, %tmp44
  %tmp47 = add i32 %tmp_8_0_43, %tmp_8_0_44
  %tmp48 = add i32 %tmp_8_0_45, %tmp_8_0_46
  %tmp46 = add i32 %tmp48, %tmp47
  %tmp42 = add i32 %tmp46, %tmp43
  %tmp34 = add i32 %tmp42, %tmp35
  %tmp52 = add i32 %tmp_8_0_47, %tmp_8_0_48
  %tmp53 = add i32 %tmp_8_0_49, %tmp_8_0_50
  %tmp51 = add i32 %tmp53, %tmp52
  %tmp55 = add i32 %tmp_8_0_51, %tmp_8_0_52
  %tmp56 = add i32 %tmp_8_0_53, %tmp_8_0_54
  %tmp54 = add i32 %tmp56, %tmp55
  %tmp50 = add i32 %tmp54, %tmp51
  %tmp59 = add i32 %tmp_8_0_55, %tmp_8_0_56
  %tmp60 = add i32 %tmp_8_0_57, %tmp_8_0_58
  %tmp58 = add i32 %tmp60, %tmp59
  %tmp62 = add i32 %tmp_8_0_59, %tmp_8_0_60
  %tmp63 = add i32 %tmp_8_0_61, %tmp_8_0_62
  %tmp61 = add i32 %tmp63, %tmp62
  %tmp57 = add i32 %tmp61, %tmp58
  %tmp49 = add i32 %tmp57, %tmp50
  %tmp33 = add i32 %tmp49, %tmp34
  %tmp_1_0_s = add nsw i32 %tmp33, %tmp2
  %tmp_3 = zext i11 %i to i64
  %sub_out_addr = getelementptr [1024 x i32]* %sub_out, i64 0, i64 %tmp_3
  store i32 %tmp_1_0_s, i32* %sub_out_addr, align 4
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([14 x i8]* @p_str4, i32 %tmp) nounwind
  %tmp_s = add i11 %i, 65
  %tmp_7_1 = zext i11 %tmp_s to i64
  %sub_in_addr_128 = getelementptr [1152 x i32]* %sub_in, i64 0, i64 %tmp_7_1
  %sub_in_load_128 = load i32* %sub_in_addr_128, align 4
  %tmp_8_1 = mul nsw i32 %sub_in_load_128, %sub_in_load
  %tmp_8_1_1 = mul nsw i32 %sub_in_load_1, %sub_in_load_2
  %tmp_8_1_2 = mul nsw i32 %sub_in_load_3, %sub_in_load_4
  %tmp_8_1_3 = mul nsw i32 %sub_in_load_5, %sub_in_load_6
  %tmp_8_1_4 = mul nsw i32 %sub_in_load_7, %sub_in_load_8
  %tmp_8_1_5 = mul nsw i32 %sub_in_load_9, %sub_in_load_10
  %tmp_8_1_6 = mul nsw i32 %sub_in_load_11, %sub_in_load_12
  %tmp_8_1_7 = mul nsw i32 %sub_in_load_13, %sub_in_load_14
  %tmp_8_1_8 = mul nsw i32 %sub_in_load_15, %sub_in_load_16
  %tmp_8_1_9 = mul nsw i32 %sub_in_load_17, %sub_in_load_18
  %tmp_8_1_s = mul nsw i32 %sub_in_load_19, %sub_in_load_20
  %tmp_8_1_10 = mul nsw i32 %sub_in_load_21, %sub_in_load_22
  %tmp_8_1_11 = mul nsw i32 %sub_in_load_23, %sub_in_load_24
  %tmp_8_1_12 = mul nsw i32 %sub_in_load_25, %sub_in_load_26
  %tmp_8_1_13 = mul nsw i32 %sub_in_load_27, %sub_in_load_28
  %tmp_8_1_14 = mul nsw i32 %sub_in_load_29, %sub_in_load_30
  %tmp_8_1_15 = mul nsw i32 %sub_in_load_31, %sub_in_load_32
  %tmp_8_1_16 = mul nsw i32 %sub_in_load_33, %sub_in_load_34
  %tmp_8_1_17 = mul nsw i32 %sub_in_load_35, %sub_in_load_36
  %tmp_8_1_18 = mul nsw i32 %sub_in_load_37, %sub_in_load_38
  %tmp_8_1_19 = mul nsw i32 %sub_in_load_39, %sub_in_load_40
  %tmp_8_1_20 = mul nsw i32 %sub_in_load_41, %sub_in_load_42
  %tmp_8_1_21 = mul nsw i32 %sub_in_load_43, %sub_in_load_44
  %tmp_8_1_22 = mul nsw i32 %sub_in_load_45, %sub_in_load_46
  %tmp_8_1_23 = mul nsw i32 %sub_in_load_47, %sub_in_load_48
  %tmp_8_1_24 = mul nsw i32 %sub_in_load_49, %sub_in_load_50
  %tmp_8_1_25 = mul nsw i32 %sub_in_load_51, %sub_in_load_52
  %tmp_8_1_26 = mul nsw i32 %sub_in_load_53, %sub_in_load_54
  %tmp_8_1_27 = mul nsw i32 %sub_in_load_55, %sub_in_load_56
  %tmp_8_1_28 = mul nsw i32 %sub_in_load_57, %sub_in_load_58
  %tmp_8_1_29 = mul nsw i32 %sub_in_load_59, %sub_in_load_60
  %tmp_8_1_30 = mul nsw i32 %sub_in_load_61, %sub_in_load_62
  %tmp_8_1_31 = mul nsw i32 %sub_in_load_63, %sub_in_load_64
  %tmp_8_1_32 = mul nsw i32 %sub_in_load_65, %sub_in_load_66
  %tmp_8_1_33 = mul nsw i32 %sub_in_load_67, %sub_in_load_68
  %tmp_8_1_34 = mul nsw i32 %sub_in_load_69, %sub_in_load_70
  %tmp_8_1_35 = mul nsw i32 %sub_in_load_71, %sub_in_load_72
  %tmp_8_1_36 = mul nsw i32 %sub_in_load_73, %sub_in_load_74
  %tmp_8_1_37 = mul nsw i32 %sub_in_load_75, %sub_in_load_76
  %tmp_8_1_38 = mul nsw i32 %sub_in_load_77, %sub_in_load_78
  %tmp_8_1_39 = mul nsw i32 %sub_in_load_79, %sub_in_load_80
  %tmp_8_1_40 = mul nsw i32 %sub_in_load_81, %sub_in_load_82
  %tmp_8_1_41 = mul nsw i32 %sub_in_load_83, %sub_in_load_84
  %tmp_8_1_42 = mul nsw i32 %sub_in_load_85, %sub_in_load_86
  %tmp_8_1_43 = mul nsw i32 %sub_in_load_87, %sub_in_load_88
  %tmp_8_1_44 = mul nsw i32 %sub_in_load_89, %sub_in_load_90
  %tmp_8_1_45 = mul nsw i32 %sub_in_load_91, %sub_in_load_92
  %tmp_8_1_46 = mul nsw i32 %sub_in_load_93, %sub_in_load_94
  %tmp_8_1_47 = mul nsw i32 %sub_in_load_95, %sub_in_load_96
  %tmp_8_1_48 = mul nsw i32 %sub_in_load_97, %sub_in_load_98
  %tmp_8_1_49 = mul nsw i32 %sub_in_load_99, %sub_in_load_100
  %tmp_8_1_50 = mul nsw i32 %sub_in_load_101, %sub_in_load_102
  %tmp_8_1_51 = mul nsw i32 %sub_in_load_103, %sub_in_load_104
  %tmp_8_1_52 = mul nsw i32 %sub_in_load_105, %sub_in_load_106
  %tmp_8_1_53 = mul nsw i32 %sub_in_load_107, %sub_in_load_108
  %tmp_8_1_54 = mul nsw i32 %sub_in_load_109, %sub_in_load_110
  %tmp_8_1_55 = mul nsw i32 %sub_in_load_111, %sub_in_load_112
  %tmp_8_1_56 = mul nsw i32 %sub_in_load_113, %sub_in_load_114
  %tmp_8_1_57 = mul nsw i32 %sub_in_load_115, %sub_in_load_116
  %tmp_8_1_58 = mul nsw i32 %sub_in_load_117, %sub_in_load_118
  %tmp_8_1_59 = mul nsw i32 %sub_in_load_119, %sub_in_load_120
  %tmp_8_1_60 = mul nsw i32 %sub_in_load_121, %sub_in_load_122
  %tmp_8_1_61 = mul nsw i32 %sub_in_load_123, %sub_in_load_124
  %tmp_8_1_62 = mul nsw i32 %sub_in_load_125, %sub_in_load_126
  %tmp68 = add i32 %tmp_8_1_1, %tmp_8_1
  %tmp69 = add i32 %tmp_8_1_2, %tmp_8_1_3
  %tmp67 = add i32 %tmp69, %tmp68
  %tmp71 = add i32 %tmp_8_1_4, %tmp_8_1_5
  %tmp72 = add i32 %tmp_8_1_6, %tmp_8_1_7
  %tmp70 = add i32 %tmp72, %tmp71
  %tmp66 = add i32 %tmp70, %tmp67
  %tmp75 = add i32 %tmp_8_1_8, %tmp_8_1_9
  %tmp76 = add i32 %tmp_8_1_s, %tmp_8_1_10
  %tmp74 = add i32 %tmp76, %tmp75
  %tmp78 = add i32 %tmp_8_1_11, %tmp_8_1_12
  %tmp79 = add i32 %tmp_8_1_13, %tmp_8_1_14
  %tmp77 = add i32 %tmp79, %tmp78
  %tmp73 = add i32 %tmp77, %tmp74
  %tmp65 = add i32 %tmp73, %tmp66
  %tmp83 = add i32 %tmp_8_1_15, %tmp_8_1_16
  %tmp84 = add i32 %tmp_8_1_17, %tmp_8_1_18
  %tmp82 = add i32 %tmp84, %tmp83
  %tmp86 = add i32 %tmp_8_1_19, %tmp_8_1_20
  %tmp87 = add i32 %tmp_8_1_21, %tmp_8_1_22
  %tmp85 = add i32 %tmp87, %tmp86
  %tmp81 = add i32 %tmp85, %tmp82
  %tmp90 = add i32 %tmp_8_1_23, %tmp_8_1_24
  %tmp91 = add i32 %tmp_8_1_25, %tmp_8_1_26
  %tmp89 = add i32 %tmp91, %tmp90
  %tmp93 = add i32 %tmp_8_1_27, %tmp_8_1_28
  %tmp94 = add i32 %tmp_8_1_29, %tmp_8_1_30
  %tmp92 = add i32 %tmp94, %tmp93
  %tmp88 = add i32 %tmp92, %tmp89
  %tmp80 = add i32 %tmp88, %tmp81
  %tmp64 = add i32 %tmp80, %tmp65
  %tmp99 = add i32 %tmp_8_1_31, %tmp_8_1_32
  %tmp100 = add i32 %tmp_8_1_33, %tmp_8_1_34
  %tmp98 = add i32 %tmp100, %tmp99
  %tmp102 = add i32 %tmp_8_1_35, %tmp_8_1_36
  %tmp103 = add i32 %tmp_8_1_37, %tmp_8_1_38
  %tmp101 = add i32 %tmp103, %tmp102
  %tmp97 = add i32 %tmp101, %tmp98
  %tmp106 = add i32 %tmp_8_1_39, %tmp_8_1_40
  %tmp107 = add i32 %tmp_8_1_41, %tmp_8_1_42
  %tmp105 = add i32 %tmp107, %tmp106
  %tmp109 = add i32 %tmp_8_1_43, %tmp_8_1_44
  %tmp110 = add i32 %tmp_8_1_45, %tmp_8_1_46
  %tmp108 = add i32 %tmp110, %tmp109
  %tmp104 = add i32 %tmp108, %tmp105
  %tmp96 = add i32 %tmp104, %tmp97
  %tmp114 = add i32 %tmp_8_1_47, %tmp_8_1_48
  %tmp115 = add i32 %tmp_8_1_49, %tmp_8_1_50
  %tmp113 = add i32 %tmp115, %tmp114
  %tmp117 = add i32 %tmp_8_1_51, %tmp_8_1_52
  %tmp118 = add i32 %tmp_8_1_53, %tmp_8_1_54
  %tmp116 = add i32 %tmp118, %tmp117
  %tmp112 = add i32 %tmp116, %tmp113
  %tmp121 = add i32 %tmp_8_1_55, %tmp_8_1_56
  %tmp122 = add i32 %tmp_8_1_57, %tmp_8_1_58
  %tmp120 = add i32 %tmp122, %tmp121
  %tmp124 = add i32 %tmp_8_1_59, %tmp_8_1_60
  %tmp125 = add i32 %tmp_8_1_61, %tmp_8_1_62
  %tmp123 = add i32 %tmp125, %tmp124
  %tmp119 = add i32 %tmp123, %tmp120
  %tmp111 = add i32 %tmp119, %tmp112
  %tmp95 = add i32 %tmp111, %tmp96
  %tmp_1_1_s = add nsw i32 %tmp95, %tmp64
  %sub_out_addr_1 = getelementptr [1024 x i32]* %sub_out, i64 0, i64 %tmp_7_0_62
  store i32 %tmp_1_1_s, i32* %sub_out_addr_1, align 4
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i9.i1(i9, i1) nounwind readnone {
entry:
  %empty = zext i9 %0 to i10
  %empty_10 = zext i1 %1 to i10
  %empty_11 = trunc i10 %empty to i9
  %empty_12 = call i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10 %empty_10, i32 1, i32 9)
  %empty_13 = or i9 %empty_11, %empty_12
  %empty_14 = call i10 @_ssdm_op_PartSet.i10.i10.i9.i32.i32(i10 %empty_10, i9 %empty_13, i32 1, i32 9)
  ret i10 %empty_14
}

define weak i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_15 = trunc i11 %empty to i9
  ret i9 %empty_15
}

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_16 = trunc i10 %empty to i9
  ret i9 %empty_16
}

define weak i10 @_ssdm_op_PartSet.i10.i10.i9.i32.i32(i10, i9, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.set.i10.i9(i10 %0, i9 %1, i32 %2, i32 %3)
  ret i10 %empty
}

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare i10 @llvm.part.set.i10.i9(i10, i9, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"sub_in", metadata !4, metadata !"int"}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 1151, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"sub_out", metadata !10, metadata !"int"}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 1023, i32 1}
