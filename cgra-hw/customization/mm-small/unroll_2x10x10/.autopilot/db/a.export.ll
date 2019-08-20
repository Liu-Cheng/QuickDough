; ModuleID = 'D:/minibench/customization/mm-small/unroll_2x10x10/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1
@p_str4 = private unnamed_addr constant [10 x i8] c"mm_label2\00", align 1
@p_str5 = private unnamed_addr constant [10 x i8] c"mm_label1\00", align 1
@str = internal constant [6 x i8] c"mm_ip\00"

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
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

define void @mm_ip([32768 x i32]* %in_r, [16384 x i32]* %out_r) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([32768 x i32]* %in_r) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([16384 x i32]* %out_r) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([16384 x i32]* %out_r, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([32768 x i32]* %in_r, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str2, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [17 x i8]* @p_str3) nounwind
  br label %1

; <label>:1                                       ; preds = %5, %0
  %i = phi i8 [ 0, %0 ], [ %i_1, %5 ]
  %exitcond2 = icmp eq i8 %i, -128
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  %i_1 = add i8 %i, 1
  br i1 %exitcond2, label %6, label %2

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str4) nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([10 x i8]* @p_str4) nounwind
  %tmp = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 0)
  %p_addr_cast = zext i15 %tmp to i16
  %tmp_2 = zext i15 %tmp to i64
  %in_addr = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_2
  %tmp_3 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 1)
  %tmp_4 = zext i15 %tmp_3 to i64
  %in_addr_2 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_4
  %tmp_5 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 2)
  %tmp_6 = zext i15 %tmp_5 to i64
  %in_addr_4 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_6
  %tmp_8 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 3)
  %tmp_9 = zext i15 %tmp_8 to i64
  %in_addr_6 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_9
  %tmp_s = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 4)
  %tmp_10 = zext i15 %tmp_s to i64
  %in_addr_8 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_10
  %tmp_11 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 5)
  %tmp_12 = zext i15 %tmp_11 to i64
  %in_addr_10 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_12
  %tmp_13 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 6)
  %tmp_14 = zext i15 %tmp_13 to i64
  %in_addr_12 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_14
  %tmp_15 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 7)
  %tmp_16 = zext i15 %tmp_15 to i64
  %in_addr_14 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_16
  %tmp_17 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 8)
  %tmp_18 = zext i15 %tmp_17 to i64
  %in_addr_16 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_18
  %tmp_19 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 9)
  %tmp_20 = zext i15 %tmp_19 to i64
  %in_addr_18 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_20
  %tmp_21 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 10)
  %tmp_22 = zext i15 %tmp_21 to i64
  %in_addr_20 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_22
  %tmp_23 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 11)
  %tmp_24 = zext i15 %tmp_23 to i64
  %in_addr_22 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_24
  %tmp_25 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 12)
  %tmp_26 = zext i15 %tmp_25 to i64
  %in_addr_24 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_26
  %tmp_27 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 13)
  %tmp_28 = zext i15 %tmp_27 to i64
  %in_addr_26 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_28
  %tmp_29 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 14)
  %tmp_30 = zext i15 %tmp_29 to i64
  %in_addr_28 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_30
  %tmp_31 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 15)
  %tmp_32 = zext i15 %tmp_31 to i64
  %in_addr_30 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_32
  %tmp_33 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 16)
  %tmp_34 = zext i15 %tmp_33 to i64
  %in_addr_32 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_34
  %tmp_35 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 17)
  %tmp_36 = zext i15 %tmp_35 to i64
  %in_addr_34 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_36
  %tmp_37 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 18)
  %tmp_38 = zext i15 %tmp_37 to i64
  %in_addr_36 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_38
  %tmp_39 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 19)
  %tmp_40 = zext i15 %tmp_39 to i64
  %in_addr_38 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_40
  %tmp_41 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 20)
  %tmp_42 = zext i15 %tmp_41 to i64
  %in_addr_40 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_42
  %tmp_43 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 21)
  %tmp_44 = zext i15 %tmp_43 to i64
  %in_addr_42 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_44
  %tmp_45 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 22)
  %tmp_46 = zext i15 %tmp_45 to i64
  %in_addr_44 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_46
  %tmp_47 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 23)
  %tmp_48 = zext i15 %tmp_47 to i64
  %in_addr_46 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_48
  %tmp_49 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 24)
  %tmp_50 = zext i15 %tmp_49 to i64
  %in_addr_48 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_50
  %tmp_51 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 25)
  %tmp_52 = zext i15 %tmp_51 to i64
  %in_addr_50 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_52
  %tmp_53 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 26)
  %tmp_54 = zext i15 %tmp_53 to i64
  %in_addr_52 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_54
  %tmp_55 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 27)
  %tmp_56 = zext i15 %tmp_55 to i64
  %in_addr_54 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_56
  %tmp_57 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 28)
  %tmp_58 = zext i15 %tmp_57 to i64
  %in_addr_56 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_58
  %tmp_59 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 29)
  %tmp_60 = zext i15 %tmp_59 to i64
  %in_addr_58 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_60
  %tmp_61 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 30)
  %tmp_62 = zext i15 %tmp_61 to i64
  %in_addr_60 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_62
  %tmp_63 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 31)
  %tmp_64 = zext i15 %tmp_63 to i64
  %in_addr_62 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_64
  %tmp_65 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 32)
  %tmp_66 = zext i15 %tmp_65 to i64
  %in_addr_64 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_66
  %tmp_67 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 33)
  %tmp_68 = zext i15 %tmp_67 to i64
  %in_addr_66 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_68
  %tmp_69 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 34)
  %tmp_70 = zext i15 %tmp_69 to i64
  %in_addr_68 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_70
  %tmp_71 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 35)
  %tmp_72 = zext i15 %tmp_71 to i64
  %in_addr_70 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_72
  %tmp_73 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 36)
  %tmp_74 = zext i15 %tmp_73 to i64
  %in_addr_72 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_74
  %tmp_75 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 37)
  %tmp_76 = zext i15 %tmp_75 to i64
  %in_addr_74 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_76
  %tmp_77 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 38)
  %tmp_78 = zext i15 %tmp_77 to i64
  %in_addr_76 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_78
  %tmp_79 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 39)
  %tmp_80 = zext i15 %tmp_79 to i64
  %in_addr_78 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_80
  %tmp_81 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 40)
  %tmp_82 = zext i15 %tmp_81 to i64
  %in_addr_80 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_82
  %tmp_83 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 41)
  %tmp_84 = zext i15 %tmp_83 to i64
  %in_addr_82 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_84
  %tmp_85 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 42)
  %tmp_86 = zext i15 %tmp_85 to i64
  %in_addr_84 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_86
  %tmp_87 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 43)
  %tmp_88 = zext i15 %tmp_87 to i64
  %in_addr_86 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_88
  %tmp_89 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 44)
  %tmp_90 = zext i15 %tmp_89 to i64
  %in_addr_88 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_90
  %tmp_91 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 45)
  %tmp_92 = zext i15 %tmp_91 to i64
  %in_addr_90 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_92
  %tmp_93 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 46)
  %tmp_94 = zext i15 %tmp_93 to i64
  %in_addr_92 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_94
  %tmp_95 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 47)
  %tmp_96 = zext i15 %tmp_95 to i64
  %in_addr_94 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_96
  %tmp_97 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 48)
  %tmp_98 = zext i15 %tmp_97 to i64
  %in_addr_96 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_98
  %tmp_99 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 49)
  %tmp_100 = zext i15 %tmp_99 to i64
  %in_addr_98 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_100
  %tmp_101 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 50)
  %tmp_102 = zext i15 %tmp_101 to i64
  %in_addr_100 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_102
  %tmp_103 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 51)
  %tmp_104 = zext i15 %tmp_103 to i64
  %in_addr_102 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_104
  %tmp_105 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 52)
  %tmp_106 = zext i15 %tmp_105 to i64
  %in_addr_104 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_106
  %tmp_107 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 53)
  %tmp_108 = zext i15 %tmp_107 to i64
  %in_addr_106 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_108
  %tmp_109 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 54)
  %tmp_110 = zext i15 %tmp_109 to i64
  %in_addr_108 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_110
  %tmp_111 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 55)
  %tmp_112 = zext i15 %tmp_111 to i64
  %in_addr_110 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_112
  %tmp_113 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 56)
  %tmp_114 = zext i15 %tmp_113 to i64
  %in_addr_112 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_114
  %tmp_115 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 57)
  %tmp_116 = zext i15 %tmp_115 to i64
  %in_addr_114 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_116
  %tmp_117 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 58)
  %tmp_118 = zext i15 %tmp_117 to i64
  %in_addr_116 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_118
  %tmp_119 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 59)
  %tmp_120 = zext i15 %tmp_119 to i64
  %in_addr_118 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_120
  %tmp_121 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 60)
  %tmp_122 = zext i15 %tmp_121 to i64
  %in_addr_120 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_122
  %tmp_123 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 61)
  %tmp_124 = zext i15 %tmp_123 to i64
  %in_addr_122 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_124
  %tmp_125 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 62)
  %tmp_126 = zext i15 %tmp_125 to i64
  %in_addr_124 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_126
  %tmp_127 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 63)
  %tmp_128 = zext i15 %tmp_127 to i64
  %in_addr_126 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_128
  %tmp_129 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -64)
  %tmp_130 = zext i15 %tmp_129 to i64
  %in_addr_128 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_130
  %tmp_131 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -63)
  %tmp_132 = zext i15 %tmp_131 to i64
  %in_addr_130 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_132
  %tmp_133 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -62)
  %tmp_134 = zext i15 %tmp_133 to i64
  %in_addr_132 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_134
  %tmp_135 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -61)
  %tmp_136 = zext i15 %tmp_135 to i64
  %in_addr_134 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_136
  %tmp_137 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -60)
  %tmp_138 = zext i15 %tmp_137 to i64
  %in_addr_136 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_138
  %tmp_139 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -59)
  %tmp_140 = zext i15 %tmp_139 to i64
  %in_addr_138 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_140
  %tmp_141 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -58)
  %tmp_142 = zext i15 %tmp_141 to i64
  %in_addr_140 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_142
  %tmp_143 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -57)
  %tmp_144 = zext i15 %tmp_143 to i64
  %in_addr_142 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_144
  %tmp_145 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -56)
  %tmp_146 = zext i15 %tmp_145 to i64
  %in_addr_144 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_146
  %tmp_147 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -55)
  %tmp_148 = zext i15 %tmp_147 to i64
  %in_addr_146 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_148
  %tmp_149 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -54)
  %tmp_150 = zext i15 %tmp_149 to i64
  %in_addr_148 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_150
  %tmp_151 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -53)
  %tmp_152 = zext i15 %tmp_151 to i64
  %in_addr_150 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_152
  %tmp_153 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -52)
  %tmp_154 = zext i15 %tmp_153 to i64
  %in_addr_152 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_154
  %tmp_155 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -51)
  %tmp_156 = zext i15 %tmp_155 to i64
  %in_addr_154 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_156
  %tmp_157 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -50)
  %tmp_158 = zext i15 %tmp_157 to i64
  %in_addr_156 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_158
  %tmp_159 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -49)
  %tmp_160 = zext i15 %tmp_159 to i64
  %in_addr_158 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_160
  %tmp_161 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -48)
  %tmp_162 = zext i15 %tmp_161 to i64
  %in_addr_160 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_162
  %tmp_163 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -47)
  %tmp_164 = zext i15 %tmp_163 to i64
  %in_addr_162 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_164
  %tmp_165 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -46)
  %tmp_166 = zext i15 %tmp_165 to i64
  %in_addr_164 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_166
  %tmp_167 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -45)
  %tmp_168 = zext i15 %tmp_167 to i64
  %in_addr_166 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_168
  %tmp_169 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -44)
  %tmp_170 = zext i15 %tmp_169 to i64
  %in_addr_168 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_170
  %tmp_171 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -43)
  %tmp_172 = zext i15 %tmp_171 to i64
  %in_addr_170 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_172
  %tmp_173 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -42)
  %tmp_174 = zext i15 %tmp_173 to i64
  %in_addr_172 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_174
  %tmp_175 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -41)
  %tmp_176 = zext i15 %tmp_175 to i64
  %in_addr_174 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_176
  %tmp_177 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -40)
  %tmp_178 = zext i15 %tmp_177 to i64
  %in_addr_176 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_178
  %tmp_179 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -39)
  %tmp_180 = zext i15 %tmp_179 to i64
  %in_addr_178 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_180
  %tmp_181 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -38)
  %tmp_182 = zext i15 %tmp_181 to i64
  %in_addr_180 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_182
  %tmp_183 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -37)
  %tmp_184 = zext i15 %tmp_183 to i64
  %in_addr_182 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_184
  %tmp_185 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -36)
  %tmp_186 = zext i15 %tmp_185 to i64
  %in_addr_184 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_186
  %tmp_187 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -35)
  %tmp_188 = zext i15 %tmp_187 to i64
  %in_addr_186 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_188
  %tmp_189 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -34)
  %tmp_190 = zext i15 %tmp_189 to i64
  %in_addr_188 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_190
  %tmp_191 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -33)
  %tmp_192 = zext i15 %tmp_191 to i64
  %in_addr_190 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_192
  %tmp_193 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -32)
  %tmp_194 = zext i15 %tmp_193 to i64
  %in_addr_192 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_194
  %tmp_195 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -31)
  %tmp_196 = zext i15 %tmp_195 to i64
  %in_addr_194 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_196
  %tmp_197 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -30)
  %tmp_198 = zext i15 %tmp_197 to i64
  %in_addr_196 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_198
  %tmp_199 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -29)
  %tmp_200 = zext i15 %tmp_199 to i64
  %in_addr_198 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_200
  %tmp_201 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -28)
  %tmp_202 = zext i15 %tmp_201 to i64
  %in_addr_200 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_202
  %tmp_203 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -27)
  %tmp_204 = zext i15 %tmp_203 to i64
  %in_addr_202 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_204
  %tmp_205 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -26)
  %tmp_206 = zext i15 %tmp_205 to i64
  %in_addr_204 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_206
  %tmp_207 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -25)
  %tmp_208 = zext i15 %tmp_207 to i64
  %in_addr_206 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_208
  %tmp_209 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -24)
  %tmp_210 = zext i15 %tmp_209 to i64
  %in_addr_208 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_210
  %tmp_211 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -23)
  %tmp_212 = zext i15 %tmp_211 to i64
  %in_addr_210 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_212
  %tmp_213 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -22)
  %tmp_214 = zext i15 %tmp_213 to i64
  %in_addr_212 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_214
  %tmp_215 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -21)
  %tmp_216 = zext i15 %tmp_215 to i64
  %in_addr_214 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_216
  %tmp_217 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -20)
  %tmp_218 = zext i15 %tmp_217 to i64
  %in_addr_216 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_218
  %tmp_219 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -19)
  %tmp_220 = zext i15 %tmp_219 to i64
  %in_addr_218 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_220
  %tmp_221 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -18)
  %tmp_222 = zext i15 %tmp_221 to i64
  %in_addr_220 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_222
  %tmp_223 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -17)
  %tmp_224 = zext i15 %tmp_223 to i64
  %in_addr_222 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_224
  %tmp_225 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -16)
  %tmp_226 = zext i15 %tmp_225 to i64
  %in_addr_224 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_226
  %tmp_227 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -15)
  %tmp_228 = zext i15 %tmp_227 to i64
  %in_addr_226 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_228
  %tmp_229 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -14)
  %tmp_230 = zext i15 %tmp_229 to i64
  %in_addr_228 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_230
  %tmp_231 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -13)
  %tmp_232 = zext i15 %tmp_231 to i64
  %in_addr_230 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_232
  %tmp_233 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -12)
  %tmp_234 = zext i15 %tmp_233 to i64
  %in_addr_232 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_234
  %tmp_235 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -11)
  %tmp_236 = zext i15 %tmp_235 to i64
  %in_addr_234 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_236
  %tmp_237 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -10)
  %tmp_238 = zext i15 %tmp_237 to i64
  %in_addr_236 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_238
  %tmp_239 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -9)
  %tmp_240 = zext i15 %tmp_239 to i64
  %in_addr_238 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_240
  %tmp_241 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -8)
  %tmp_242 = zext i15 %tmp_241 to i64
  %in_addr_240 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_242
  %tmp_243 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -7)
  %tmp_244 = zext i15 %tmp_243 to i64
  %in_addr_242 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_244
  %tmp_245 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -6)
  %tmp_246 = zext i15 %tmp_245 to i64
  %in_addr_244 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_246
  %tmp_247 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -5)
  %tmp_248 = zext i15 %tmp_247 to i64
  %in_addr_246 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_248
  %tmp_249 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -4)
  %tmp_250 = zext i15 %tmp_249 to i64
  %in_addr_248 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_250
  %tmp_251 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -3)
  %tmp_252 = zext i15 %tmp_251 to i64
  %in_addr_250 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_252
  %tmp_253 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -2)
  %tmp_254 = zext i15 %tmp_253 to i64
  %in_addr_252 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_254
  %tmp_255 = call i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8 %i, i7 -1)
  %tmp_256 = zext i15 %tmp_255 to i64
  %in_addr_254 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_256
  br label %3

; <label>:3                                       ; preds = %4, %2
  %j = phi i8 [ 0, %2 ], [ %j_1, %4 ]
  %exitcond1 = icmp eq i8 %j, -128
  %empty_30 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  %j_1 = add i8 %j, 1
  br i1 %exitcond1, label %5, label %4

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName([10 x i8]* @p_str5) nounwind
  %tmp_2_trn_cast1 = zext i8 %j to i15
  %tmp_2_trn_cast = zext i8 %j to i16
  %p_addr2 = add i16 %p_addr_cast, %tmp_2_trn_cast
  %tmp_257 = zext i16 %p_addr2 to i64
  %out_addr = getelementptr [16384 x i32]* %out_r, i64 0, i64 %tmp_257
  %in_load = load i32* %in_addr, align 4
  %tmp_258 = zext i8 %j to i14
  %p_addr3 = call i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18 1, i14 %tmp_258)
  %tmp_259 = zext i32 %p_addr3 to i64
  %in_addr_1 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_259
  %in_load_1 = load i32* %in_addr_1, align 4
  %tmp_7 = mul nsw i32 %in_load_1, %in_load
  %in_load_18 = load i32* %in_addr_2, align 4
  %p_addr4 = add i15 %tmp_2_trn_cast1, -16256
  %tmp_260 = zext i15 %p_addr4 to i64
  %in_addr_3 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_260
  %in_load_128 = load i32* %in_addr_3, align 4
  %tmp_7_1 = mul nsw i32 %in_load_128, %in_load_18
  %in_load_2 = load i32* %in_addr_4, align 4
  %p_addr5 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 65, i8 %j)
  %tmp_261 = zext i32 %p_addr5 to i64
  %in_addr_5 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_261
  %in_load_129 = load i32* %in_addr_5, align 4
  %tmp_7_2 = mul nsw i32 %in_load_129, %in_load_2
  %in_load_3 = load i32* %in_addr_6, align 4
  %p_addr6 = add i15 %tmp_2_trn_cast1, -16000
  %tmp_262 = zext i15 %p_addr6 to i64
  %in_addr_7 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_262
  %in_load_130 = load i32* %in_addr_7, align 4
  %tmp_7_3 = mul nsw i32 %in_load_130, %in_load_3
  %in_load_4 = load i32* %in_addr_8, align 4
  %tmp_263 = zext i8 %j to i9
  %p_addr7 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 33, i9 %tmp_263)
  %tmp_264 = zext i32 %p_addr7 to i64
  %in_addr_9 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_264
  %in_load_131 = load i32* %in_addr_9, align 4
  %tmp_7_4 = mul nsw i32 %in_load_131, %in_load_4
  %in_load_5 = load i32* %in_addr_10, align 4
  %p_addr8 = add i15 %tmp_2_trn_cast1, -15744
  %tmp_265 = zext i15 %p_addr8 to i64
  %in_addr_11 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_265
  %in_load_132 = load i32* %in_addr_11, align 4
  %tmp_7_5 = mul nsw i32 %in_load_132, %in_load_5
  %in_load_6 = load i32* %in_addr_12, align 4
  %p_addr9 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 67, i8 %j)
  %tmp_266 = zext i32 %p_addr9 to i64
  %in_addr_13 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_266
  %in_load_133 = load i32* %in_addr_13, align 4
  %tmp_7_6 = mul nsw i32 %in_load_133, %in_load_6
  %in_load_7 = load i32* %in_addr_14, align 4
  %p_addr = add i15 %tmp_2_trn_cast1, -15488
  %tmp_267 = zext i15 %p_addr to i64
  %in_addr_15 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_267
  %in_load_134 = load i32* %in_addr_15, align 4
  %tmp_7_7 = mul nsw i32 %in_load_134, %in_load_7
  %in_load_8 = load i32* %in_addr_16, align 4
  %tmp_268 = zext i8 %j to i10
  %p_addr10 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 17, i10 %tmp_268)
  %tmp_269 = zext i32 %p_addr10 to i64
  %in_addr_17 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_269
  %in_load_135 = load i32* %in_addr_17, align 4
  %tmp_7_8 = mul nsw i32 %in_load_135, %in_load_8
  %in_load_9 = load i32* %in_addr_18, align 4
  %p_addr11 = add i15 %tmp_2_trn_cast1, -15232
  %tmp_270 = zext i15 %p_addr11 to i64
  %in_addr_19 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_270
  %in_load_136 = load i32* %in_addr_19, align 4
  %tmp_7_9 = mul nsw i32 %in_load_136, %in_load_9
  %in_load_10 = load i32* %in_addr_20, align 4
  %p_addr13 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 69, i8 %j)
  %tmp_271 = zext i32 %p_addr13 to i64
  %in_addr_21 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_271
  %in_load_137 = load i32* %in_addr_21, align 4
  %tmp_7_s = mul nsw i32 %in_load_137, %in_load_10
  %in_load_11 = load i32* %in_addr_22, align 4
  %p_addr14 = add i15 %tmp_2_trn_cast1, -14976
  %tmp_272 = zext i15 %p_addr14 to i64
  %in_addr_23 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_272
  %in_load_138 = load i32* %in_addr_23, align 4
  %tmp_7_10 = mul nsw i32 %in_load_138, %in_load_11
  %in_load_12 = load i32* %in_addr_24, align 4
  %p_addr15 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 35, i9 %tmp_263)
  %tmp_273 = zext i32 %p_addr15 to i64
  %in_addr_25 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_273
  %in_load_139 = load i32* %in_addr_25, align 4
  %tmp_7_11 = mul nsw i32 %in_load_139, %in_load_12
  %in_load_13 = load i32* %in_addr_26, align 4
  %p_addr16 = add i15 %tmp_2_trn_cast1, -14720
  %tmp_274 = zext i15 %p_addr16 to i64
  %in_addr_27 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_274
  %in_load_140 = load i32* %in_addr_27, align 4
  %tmp_7_12 = mul nsw i32 %in_load_140, %in_load_13
  %in_load_14 = load i32* %in_addr_28, align 4
  %p_addr17 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 71, i8 %j)
  %tmp_275 = zext i32 %p_addr17 to i64
  %in_addr_29 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_275
  %in_load_141 = load i32* %in_addr_29, align 4
  %tmp_7_13 = mul nsw i32 %in_load_141, %in_load_14
  %in_load_15 = load i32* %in_addr_30, align 4
  %p_addr18 = add i15 %tmp_2_trn_cast1, -14464
  %tmp_276 = zext i15 %p_addr18 to i64
  %in_addr_31 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_276
  %in_load_142 = load i32* %in_addr_31, align 4
  %tmp_7_14 = mul nsw i32 %in_load_142, %in_load_15
  %in_load_16 = load i32* %in_addr_32, align 4
  %tmp_277 = zext i8 %j to i11
  %p_addr19 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 9, i11 %tmp_277)
  %tmp_278 = zext i32 %p_addr19 to i64
  %in_addr_33 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_278
  %in_load_143 = load i32* %in_addr_33, align 4
  %tmp_7_15 = mul nsw i32 %in_load_143, %in_load_16
  %in_load_17 = load i32* %in_addr_34, align 4
  %p_addr20 = add i15 %tmp_2_trn_cast1, -14208
  %tmp_279 = zext i15 %p_addr20 to i64
  %in_addr_35 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_279
  %in_load_144 = load i32* %in_addr_35, align 4
  %tmp_7_16 = mul nsw i32 %in_load_144, %in_load_17
  %in_load_145 = load i32* %in_addr_36, align 4
  %p_addr21 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 73, i8 %j)
  %tmp_280 = zext i32 %p_addr21 to i64
  %in_addr_37 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_280
  %in_load_146 = load i32* %in_addr_37, align 4
  %tmp_7_17 = mul nsw i32 %in_load_146, %in_load_145
  %in_load_19 = load i32* %in_addr_38, align 4
  %p_addr22 = add i15 %tmp_2_trn_cast1, -13952
  %tmp_281 = zext i15 %p_addr22 to i64
  %in_addr_39 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_281
  %in_load_147 = load i32* %in_addr_39, align 4
  %tmp_7_18 = mul nsw i32 %in_load_147, %in_load_19
  %in_load_20 = load i32* %in_addr_40, align 4
  %p_addr23 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 37, i9 %tmp_263)
  %tmp_282 = zext i32 %p_addr23 to i64
  %in_addr_41 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_282
  %in_load_148 = load i32* %in_addr_41, align 4
  %tmp_7_19 = mul nsw i32 %in_load_148, %in_load_20
  %in_load_21 = load i32* %in_addr_42, align 4
  %p_addr25 = add i15 %tmp_2_trn_cast1, -13696
  %tmp_283 = zext i15 %p_addr25 to i64
  %in_addr_43 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_283
  %in_load_149 = load i32* %in_addr_43, align 4
  %tmp_7_20 = mul nsw i32 %in_load_149, %in_load_21
  %in_load_22 = load i32* %in_addr_44, align 4
  %p_addr26 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 75, i8 %j)
  %tmp_284 = zext i32 %p_addr26 to i64
  %in_addr_45 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_284
  %in_load_150 = load i32* %in_addr_45, align 4
  %tmp_7_21 = mul nsw i32 %in_load_150, %in_load_22
  %in_load_23 = load i32* %in_addr_46, align 4
  %p_addr27 = add i15 %tmp_2_trn_cast1, -13440
  %tmp_285 = zext i15 %p_addr27 to i64
  %in_addr_47 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_285
  %in_load_151 = load i32* %in_addr_47, align 4
  %tmp_7_22 = mul nsw i32 %in_load_151, %in_load_23
  %in_load_24 = load i32* %in_addr_48, align 4
  %p_addr28 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 19, i10 %tmp_268)
  %tmp_286 = zext i32 %p_addr28 to i64
  %in_addr_49 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_286
  %in_load_152 = load i32* %in_addr_49, align 4
  %tmp_7_23 = mul nsw i32 %in_load_152, %in_load_24
  %in_load_25 = load i32* %in_addr_50, align 4
  %p_addr29 = add i15 %tmp_2_trn_cast1, -13184
  %tmp_287 = zext i15 %p_addr29 to i64
  %in_addr_51 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_287
  %in_load_153 = load i32* %in_addr_51, align 4
  %tmp_7_24 = mul nsw i32 %in_load_153, %in_load_25
  %in_load_26 = load i32* %in_addr_52, align 4
  %p_addr30 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 77, i8 %j)
  %tmp_288 = zext i32 %p_addr30 to i64
  %in_addr_53 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_288
  %in_load_154 = load i32* %in_addr_53, align 4
  %tmp_7_25 = mul nsw i32 %in_load_154, %in_load_26
  %in_load_27 = load i32* %in_addr_54, align 4
  %p_addr31 = add i15 %tmp_2_trn_cast1, -12928
  %tmp_289 = zext i15 %p_addr31 to i64
  %in_addr_55 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_289
  %in_load_155 = load i32* %in_addr_55, align 4
  %tmp_7_26 = mul nsw i32 %in_load_155, %in_load_27
  %in_load_28 = load i32* %in_addr_56, align 4
  %p_addr32 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 39, i9 %tmp_263)
  %tmp_290 = zext i32 %p_addr32 to i64
  %in_addr_57 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_290
  %in_load_156 = load i32* %in_addr_57, align 4
  %tmp_7_27 = mul nsw i32 %in_load_156, %in_load_28
  %in_load_29 = load i32* %in_addr_58, align 4
  %p_addr33 = add i15 %tmp_2_trn_cast1, -12672
  %tmp_291 = zext i15 %p_addr33 to i64
  %in_addr_59 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_291
  %in_load_157 = load i32* %in_addr_59, align 4
  %tmp_7_28 = mul nsw i32 %in_load_157, %in_load_29
  %in_load_30 = load i32* %in_addr_60, align 4
  %p_addr34 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 79, i8 %j)
  %tmp_292 = zext i32 %p_addr34 to i64
  %in_addr_61 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_292
  %in_load_158 = load i32* %in_addr_61, align 4
  %tmp_7_29 = mul nsw i32 %in_load_158, %in_load_30
  %in_load_31 = load i32* %in_addr_62, align 4
  %p_addr35 = add i15 %tmp_2_trn_cast1, -12416
  %tmp_293 = zext i15 %p_addr35 to i64
  %in_addr_63 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_293
  %in_load_159 = load i32* %in_addr_63, align 4
  %tmp_7_30 = mul nsw i32 %in_load_159, %in_load_31
  %in_load_32 = load i32* %in_addr_64, align 4
  %tmp_294 = zext i8 %j to i12
  %p_addr37 = call i32 @_ssdm_op_BitConcatenate.i32.i20.i12(i20 5, i12 %tmp_294)
  %tmp_295 = zext i32 %p_addr37 to i64
  %in_addr_65 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_295
  %in_load_160 = load i32* %in_addr_65, align 4
  %tmp_7_31 = mul nsw i32 %in_load_160, %in_load_32
  %in_load_33 = load i32* %in_addr_66, align 4
  %p_addr38 = add i15 %tmp_2_trn_cast1, -12160
  %tmp_296 = zext i15 %p_addr38 to i64
  %in_addr_67 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_296
  %in_load_161 = load i32* %in_addr_67, align 4
  %tmp_7_32 = mul nsw i32 %in_load_161, %in_load_33
  %in_load_34 = load i32* %in_addr_68, align 4
  %p_addr39 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 81, i8 %j)
  %tmp_297 = zext i32 %p_addr39 to i64
  %in_addr_69 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_297
  %in_load_162 = load i32* %in_addr_69, align 4
  %tmp_7_33 = mul nsw i32 %in_load_162, %in_load_34
  %in_load_35 = load i32* %in_addr_70, align 4
  %p_addr40 = add i15 %tmp_2_trn_cast1, -11904
  %tmp_298 = zext i15 %p_addr40 to i64
  %in_addr_71 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_298
  %in_load_163 = load i32* %in_addr_71, align 4
  %tmp_7_34 = mul nsw i32 %in_load_163, %in_load_35
  %in_load_36 = load i32* %in_addr_72, align 4
  %p_addr41 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 41, i9 %tmp_263)
  %tmp_299 = zext i32 %p_addr41 to i64
  %in_addr_73 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_299
  %in_load_164 = load i32* %in_addr_73, align 4
  %tmp_7_35 = mul nsw i32 %in_load_164, %in_load_36
  %in_load_37 = load i32* %in_addr_74, align 4
  %p_addr42 = add i15 %tmp_2_trn_cast1, -11648
  %tmp_300 = zext i15 %p_addr42 to i64
  %in_addr_75 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_300
  %in_load_165 = load i32* %in_addr_75, align 4
  %tmp_7_36 = mul nsw i32 %in_load_165, %in_load_37
  %in_load_38 = load i32* %in_addr_76, align 4
  %p_addr43 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 83, i8 %j)
  %tmp_301 = zext i32 %p_addr43 to i64
  %in_addr_77 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_301
  %in_load_166 = load i32* %in_addr_77, align 4
  %tmp_7_37 = mul nsw i32 %in_load_166, %in_load_38
  %in_load_39 = load i32* %in_addr_78, align 4
  %p_addr44 = add i15 %tmp_2_trn_cast1, -11392
  %tmp_302 = zext i15 %p_addr44 to i64
  %in_addr_79 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_302
  %in_load_167 = load i32* %in_addr_79, align 4
  %tmp_7_38 = mul nsw i32 %in_load_167, %in_load_39
  %in_load_40 = load i32* %in_addr_80, align 4
  %p_addr45 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 21, i10 %tmp_268)
  %tmp_303 = zext i32 %p_addr45 to i64
  %in_addr_81 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_303
  %in_load_168 = load i32* %in_addr_81, align 4
  %tmp_7_39 = mul nsw i32 %in_load_168, %in_load_40
  %in_load_41 = load i32* %in_addr_82, align 4
  %p_addr46 = add i15 %tmp_2_trn_cast1, -11136
  %tmp_304 = zext i15 %p_addr46 to i64
  %in_addr_83 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_304
  %in_load_169 = load i32* %in_addr_83, align 4
  %tmp_7_40 = mul nsw i32 %in_load_169, %in_load_41
  %in_load_42 = load i32* %in_addr_84, align 4
  %p_addr47 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 85, i8 %j)
  %tmp_305 = zext i32 %p_addr47 to i64
  %in_addr_85 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_305
  %in_load_170 = load i32* %in_addr_85, align 4
  %tmp_7_41 = mul nsw i32 %in_load_170, %in_load_42
  %in_load_43 = load i32* %in_addr_86, align 4
  %p_addr49 = add i15 %tmp_2_trn_cast1, -10880
  %tmp_306 = zext i15 %p_addr49 to i64
  %in_addr_87 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_306
  %in_load_171 = load i32* %in_addr_87, align 4
  %tmp_7_42 = mul nsw i32 %in_load_171, %in_load_43
  %in_load_44 = load i32* %in_addr_88, align 4
  %p_addr50 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 43, i9 %tmp_263)
  %tmp_307 = zext i32 %p_addr50 to i64
  %in_addr_89 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_307
  %in_load_172 = load i32* %in_addr_89, align 4
  %tmp_7_43 = mul nsw i32 %in_load_172, %in_load_44
  %in_load_45 = load i32* %in_addr_90, align 4
  %p_addr51 = add i15 %tmp_2_trn_cast1, -10624
  %tmp_308 = zext i15 %p_addr51 to i64
  %in_addr_91 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_308
  %in_load_173 = load i32* %in_addr_91, align 4
  %tmp_7_44 = mul nsw i32 %in_load_173, %in_load_45
  %in_load_46 = load i32* %in_addr_92, align 4
  %p_addr52 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 87, i8 %j)
  %tmp_309 = zext i32 %p_addr52 to i64
  %in_addr_93 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_309
  %in_load_174 = load i32* %in_addr_93, align 4
  %tmp_7_45 = mul nsw i32 %in_load_174, %in_load_46
  %in_load_47 = load i32* %in_addr_94, align 4
  %p_addr53 = add i15 %tmp_2_trn_cast1, -10368
  %tmp_310 = zext i15 %p_addr53 to i64
  %in_addr_95 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_310
  %in_load_175 = load i32* %in_addr_95, align 4
  %tmp_7_46 = mul nsw i32 %in_load_175, %in_load_47
  %in_load_48 = load i32* %in_addr_96, align 4
  %p_addr54 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 11, i11 %tmp_277)
  %tmp_311 = zext i32 %p_addr54 to i64
  %in_addr_97 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_311
  %in_load_176 = load i32* %in_addr_97, align 4
  %tmp_7_47 = mul nsw i32 %in_load_176, %in_load_48
  %in_load_49 = load i32* %in_addr_98, align 4
  %p_addr55 = add i15 %tmp_2_trn_cast1, -10112
  %tmp_312 = zext i15 %p_addr55 to i64
  %in_addr_99 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_312
  %in_load_177 = load i32* %in_addr_99, align 4
  %tmp_7_48 = mul nsw i32 %in_load_177, %in_load_49
  %in_load_50 = load i32* %in_addr_100, align 4
  %p_addr56 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 89, i8 %j)
  %tmp_313 = zext i32 %p_addr56 to i64
  %in_addr_101 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_313
  %in_load_178 = load i32* %in_addr_101, align 4
  %tmp_7_49 = mul nsw i32 %in_load_178, %in_load_50
  %in_load_51 = load i32* %in_addr_102, align 4
  %p_addr57 = add i15 %tmp_2_trn_cast1, -9856
  %tmp_314 = zext i15 %p_addr57 to i64
  %in_addr_103 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_314
  %in_load_179 = load i32* %in_addr_103, align 4
  %tmp_7_50 = mul nsw i32 %in_load_179, %in_load_51
  %in_load_52 = load i32* %in_addr_104, align 4
  %p_addr58 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 45, i9 %tmp_263)
  %tmp_315 = zext i32 %p_addr58 to i64
  %in_addr_105 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_315
  %in_load_180 = load i32* %in_addr_105, align 4
  %tmp_7_51 = mul nsw i32 %in_load_180, %in_load_52
  %in_load_53 = load i32* %in_addr_106, align 4
  %p_addr59 = add i15 %tmp_2_trn_cast1, -9600
  %tmp_316 = zext i15 %p_addr59 to i64
  %in_addr_107 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_316
  %in_load_181 = load i32* %in_addr_107, align 4
  %tmp_7_52 = mul nsw i32 %in_load_181, %in_load_53
  %in_load_54 = load i32* %in_addr_108, align 4
  %p_addr61 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 91, i8 %j)
  %tmp_317 = zext i32 %p_addr61 to i64
  %in_addr_109 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_317
  %in_load_182 = load i32* %in_addr_109, align 4
  %tmp_7_53 = mul nsw i32 %in_load_182, %in_load_54
  %in_load_55 = load i32* %in_addr_110, align 4
  %p_addr62 = add i15 %tmp_2_trn_cast1, -9344
  %tmp_318 = zext i15 %p_addr62 to i64
  %in_addr_111 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_318
  %in_load_183 = load i32* %in_addr_111, align 4
  %tmp_7_54 = mul nsw i32 %in_load_183, %in_load_55
  %in_load_56 = load i32* %in_addr_112, align 4
  %p_addr63 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 23, i10 %tmp_268)
  %tmp_319 = zext i32 %p_addr63 to i64
  %in_addr_113 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_319
  %in_load_184 = load i32* %in_addr_113, align 4
  %tmp_7_55 = mul nsw i32 %in_load_184, %in_load_56
  %in_load_57 = load i32* %in_addr_114, align 4
  %p_addr64 = add i15 %tmp_2_trn_cast1, -9088
  %tmp_320 = zext i15 %p_addr64 to i64
  %in_addr_115 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_320
  %in_load_185 = load i32* %in_addr_115, align 4
  %tmp_7_56 = mul nsw i32 %in_load_185, %in_load_57
  %in_load_58 = load i32* %in_addr_116, align 4
  %p_addr65 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 93, i8 %j)
  %tmp_321 = zext i32 %p_addr65 to i64
  %in_addr_117 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_321
  %in_load_186 = load i32* %in_addr_117, align 4
  %tmp_7_57 = mul nsw i32 %in_load_186, %in_load_58
  %in_load_59 = load i32* %in_addr_118, align 4
  %p_addr66 = add i15 %tmp_2_trn_cast1, -8832
  %tmp_322 = zext i15 %p_addr66 to i64
  %in_addr_119 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_322
  %in_load_187 = load i32* %in_addr_119, align 4
  %tmp_7_58 = mul nsw i32 %in_load_187, %in_load_59
  %in_load_60 = load i32* %in_addr_120, align 4
  %p_addr67 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 47, i9 %tmp_263)
  %tmp_323 = zext i32 %p_addr67 to i64
  %in_addr_121 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_323
  %in_load_188 = load i32* %in_addr_121, align 4
  %tmp_7_59 = mul nsw i32 %in_load_188, %in_load_60
  %in_load_61 = load i32* %in_addr_122, align 4
  %p_addr68 = add i15 %tmp_2_trn_cast1, -8576
  %tmp_324 = zext i15 %p_addr68 to i64
  %in_addr_123 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_324
  %in_load_189 = load i32* %in_addr_123, align 4
  %tmp_7_60 = mul nsw i32 %in_load_189, %in_load_61
  %in_load_62 = load i32* %in_addr_124, align 4
  %p_addr69 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 95, i8 %j)
  %tmp_325 = zext i32 %p_addr69 to i64
  %in_addr_125 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_325
  %in_load_190 = load i32* %in_addr_125, align 4
  %tmp_7_61 = mul nsw i32 %in_load_190, %in_load_62
  %in_load_63 = load i32* %in_addr_126, align 4
  %p_addr70 = add i15 %tmp_2_trn_cast1, -8320
  %tmp_326 = zext i15 %p_addr70 to i64
  %in_addr_127 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_326
  %in_load_191 = load i32* %in_addr_127, align 4
  %tmp_7_62 = mul nsw i32 %in_load_191, %in_load_63
  %in_load_64 = load i32* %in_addr_128, align 4
  %tmp_327 = zext i8 %j to i13
  %p_addr71 = call i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19 3, i13 %tmp_327)
  %tmp_328 = zext i32 %p_addr71 to i64
  %in_addr_129 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_328
  %in_load_192 = load i32* %in_addr_129, align 4
  %tmp_7_63 = mul nsw i32 %in_load_192, %in_load_64
  %in_load_65 = load i32* %in_addr_130, align 4
  %p_addr73 = add i15 %tmp_2_trn_cast1, -8064
  %tmp_329 = zext i15 %p_addr73 to i64
  %in_addr_131 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_329
  %in_load_193 = load i32* %in_addr_131, align 4
  %tmp_7_64 = mul nsw i32 %in_load_193, %in_load_65
  %in_load_66 = load i32* %in_addr_132, align 4
  %p_addr74 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 97, i8 %j)
  %tmp_330 = zext i32 %p_addr74 to i64
  %in_addr_133 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_330
  %in_load_194 = load i32* %in_addr_133, align 4
  %tmp_7_65 = mul nsw i32 %in_load_194, %in_load_66
  %in_load_67 = load i32* %in_addr_134, align 4
  %p_addr75 = add i15 %tmp_2_trn_cast1, -7808
  %tmp_331 = zext i15 %p_addr75 to i64
  %in_addr_135 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_331
  %in_load_195 = load i32* %in_addr_135, align 4
  %tmp_7_66 = mul nsw i32 %in_load_195, %in_load_67
  %in_load_68 = load i32* %in_addr_136, align 4
  %p_addr76 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 49, i9 %tmp_263)
  %tmp_332 = zext i32 %p_addr76 to i64
  %in_addr_137 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_332
  %in_load_196 = load i32* %in_addr_137, align 4
  %tmp_7_67 = mul nsw i32 %in_load_196, %in_load_68
  %in_load_69 = load i32* %in_addr_138, align 4
  %p_addr77 = add i15 %tmp_2_trn_cast1, -7552
  %tmp_333 = zext i15 %p_addr77 to i64
  %in_addr_139 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_333
  %in_load_197 = load i32* %in_addr_139, align 4
  %tmp_7_68 = mul nsw i32 %in_load_197, %in_load_69
  %in_load_70 = load i32* %in_addr_140, align 4
  %p_addr78 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 99, i8 %j)
  %tmp_334 = zext i32 %p_addr78 to i64
  %in_addr_141 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_334
  %in_load_198 = load i32* %in_addr_141, align 4
  %tmp_7_69 = mul nsw i32 %in_load_198, %in_load_70
  %in_load_71 = load i32* %in_addr_142, align 4
  %p_addr79 = add i15 %tmp_2_trn_cast1, -7296
  %tmp_335 = zext i15 %p_addr79 to i64
  %in_addr_143 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_335
  %in_load_199 = load i32* %in_addr_143, align 4
  %tmp_7_70 = mul nsw i32 %in_load_199, %in_load_71
  %in_load_72 = load i32* %in_addr_144, align 4
  %p_addr80 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 25, i10 %tmp_268)
  %tmp_336 = zext i32 %p_addr80 to i64
  %in_addr_145 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_336
  %in_load_200 = load i32* %in_addr_145, align 4
  %tmp_7_71 = mul nsw i32 %in_load_200, %in_load_72
  %in_load_73 = load i32* %in_addr_146, align 4
  %p_addr81 = add i15 %tmp_2_trn_cast1, -7040
  %tmp_337 = zext i15 %p_addr81 to i64
  %in_addr_147 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_337
  %in_load_201 = load i32* %in_addr_147, align 4
  %tmp_7_72 = mul nsw i32 %in_load_201, %in_load_73
  %in_load_74 = load i32* %in_addr_148, align 4
  %p_addr82 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 101, i8 %j)
  %tmp_338 = zext i32 %p_addr82 to i64
  %in_addr_149 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_338
  %in_load_202 = load i32* %in_addr_149, align 4
  %tmp_7_73 = mul nsw i32 %in_load_202, %in_load_74
  %in_load_75 = load i32* %in_addr_150, align 4
  %p_addr83 = add i15 %tmp_2_trn_cast1, -6784
  %tmp_339 = zext i15 %p_addr83 to i64
  %in_addr_151 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_339
  %in_load_203 = load i32* %in_addr_151, align 4
  %tmp_7_74 = mul nsw i32 %in_load_203, %in_load_75
  %in_load_76 = load i32* %in_addr_152, align 4
  %p_addr85 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 51, i9 %tmp_263)
  %tmp_340 = zext i32 %p_addr85 to i64
  %in_addr_153 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_340
  %in_load_204 = load i32* %in_addr_153, align 4
  %tmp_7_75 = mul nsw i32 %in_load_204, %in_load_76
  %in_load_77 = load i32* %in_addr_154, align 4
  %p_addr86 = add i15 %tmp_2_trn_cast1, -6528
  %tmp_341 = zext i15 %p_addr86 to i64
  %in_addr_155 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_341
  %in_load_205 = load i32* %in_addr_155, align 4
  %tmp_7_76 = mul nsw i32 %in_load_205, %in_load_77
  %in_load_78 = load i32* %in_addr_156, align 4
  %p_addr87 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 103, i8 %j)
  %tmp_342 = zext i32 %p_addr87 to i64
  %in_addr_157 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_342
  %in_load_206 = load i32* %in_addr_157, align 4
  %tmp_7_77 = mul nsw i32 %in_load_206, %in_load_78
  %in_load_79 = load i32* %in_addr_158, align 4
  %p_addr88 = add i15 %tmp_2_trn_cast1, -6272
  %tmp_343 = zext i15 %p_addr88 to i64
  %in_addr_159 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_343
  %in_load_207 = load i32* %in_addr_159, align 4
  %tmp_7_78 = mul nsw i32 %in_load_207, %in_load_79
  %in_load_80 = load i32* %in_addr_160, align 4
  %p_addr89 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 13, i11 %tmp_277)
  %tmp_344 = zext i32 %p_addr89 to i64
  %in_addr_161 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_344
  %in_load_208 = load i32* %in_addr_161, align 4
  %tmp_7_79 = mul nsw i32 %in_load_208, %in_load_80
  %in_load_81 = load i32* %in_addr_162, align 4
  %p_addr90 = add i15 %tmp_2_trn_cast1, -6016
  %tmp_345 = zext i15 %p_addr90 to i64
  %in_addr_163 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_345
  %in_load_209 = load i32* %in_addr_163, align 4
  %tmp_7_80 = mul nsw i32 %in_load_209, %in_load_81
  %in_load_82 = load i32* %in_addr_164, align 4
  %p_addr91 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 105, i8 %j)
  %tmp_346 = zext i32 %p_addr91 to i64
  %in_addr_165 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_346
  %in_load_210 = load i32* %in_addr_165, align 4
  %tmp_7_81 = mul nsw i32 %in_load_210, %in_load_82
  %in_load_83 = load i32* %in_addr_166, align 4
  %p_addr92 = add i15 %tmp_2_trn_cast1, -5760
  %tmp_347 = zext i15 %p_addr92 to i64
  %in_addr_167 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_347
  %in_load_211 = load i32* %in_addr_167, align 4
  %tmp_7_82 = mul nsw i32 %in_load_211, %in_load_83
  %in_load_84 = load i32* %in_addr_168, align 4
  %p_addr93 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 53, i9 %tmp_263)
  %tmp_348 = zext i32 %p_addr93 to i64
  %in_addr_169 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_348
  %in_load_212 = load i32* %in_addr_169, align 4
  %tmp_7_83 = mul nsw i32 %in_load_212, %in_load_84
  %in_load_85 = load i32* %in_addr_170, align 4
  %p_addr94 = add i15 %tmp_2_trn_cast1, -5504
  %tmp_349 = zext i15 %p_addr94 to i64
  %in_addr_171 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_349
  %in_load_213 = load i32* %in_addr_171, align 4
  %tmp_7_84 = mul nsw i32 %in_load_213, %in_load_85
  %in_load_86 = load i32* %in_addr_172, align 4
  %p_addr95 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 107, i8 %j)
  %tmp_350 = zext i32 %p_addr95 to i64
  %in_addr_173 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_350
  %in_load_214 = load i32* %in_addr_173, align 4
  %tmp_7_85 = mul nsw i32 %in_load_214, %in_load_86
  %in_load_87 = load i32* %in_addr_174, align 4
  %p_addr97 = add i15 %tmp_2_trn_cast1, -5248
  %tmp_351 = zext i15 %p_addr97 to i64
  %in_addr_175 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_351
  %in_load_215 = load i32* %in_addr_175, align 4
  %tmp_7_86 = mul nsw i32 %in_load_215, %in_load_87
  %in_load_88 = load i32* %in_addr_176, align 4
  %p_addr98 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 27, i10 %tmp_268)
  %tmp_352 = zext i32 %p_addr98 to i64
  %in_addr_177 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_352
  %in_load_216 = load i32* %in_addr_177, align 4
  %tmp_7_87 = mul nsw i32 %in_load_216, %in_load_88
  %in_load_89 = load i32* %in_addr_178, align 4
  %p_addr99 = add i15 %tmp_2_trn_cast1, -4992
  %tmp_353 = zext i15 %p_addr99 to i64
  %in_addr_179 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_353
  %in_load_217 = load i32* %in_addr_179, align 4
  %tmp_7_88 = mul nsw i32 %in_load_217, %in_load_89
  %in_load_90 = load i32* %in_addr_180, align 4
  %p_addr100 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 109, i8 %j)
  %tmp_354 = zext i32 %p_addr100 to i64
  %in_addr_181 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_354
  %in_load_218 = load i32* %in_addr_181, align 4
  %tmp_7_89 = mul nsw i32 %in_load_218, %in_load_90
  %in_load_91 = load i32* %in_addr_182, align 4
  %p_addr101 = add i15 %tmp_2_trn_cast1, -4736
  %tmp_355 = zext i15 %p_addr101 to i64
  %in_addr_183 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_355
  %in_load_219 = load i32* %in_addr_183, align 4
  %tmp_7_90 = mul nsw i32 %in_load_219, %in_load_91
  %in_load_92 = load i32* %in_addr_184, align 4
  %p_addr102 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 55, i9 %tmp_263)
  %tmp_356 = zext i32 %p_addr102 to i64
  %in_addr_185 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_356
  %in_load_220 = load i32* %in_addr_185, align 4
  %tmp_7_91 = mul nsw i32 %in_load_220, %in_load_92
  %in_load_93 = load i32* %in_addr_186, align 4
  %p_addr103 = add i15 %tmp_2_trn_cast1, -4480
  %tmp_357 = zext i15 %p_addr103 to i64
  %in_addr_187 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_357
  %in_load_221 = load i32* %in_addr_187, align 4
  %tmp_7_92 = mul nsw i32 %in_load_221, %in_load_93
  %in_load_94 = load i32* %in_addr_188, align 4
  %p_addr104 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 111, i8 %j)
  %tmp_358 = zext i32 %p_addr104 to i64
  %in_addr_189 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_358
  %in_load_222 = load i32* %in_addr_189, align 4
  %tmp_7_93 = mul nsw i32 %in_load_222, %in_load_94
  %in_load_95 = load i32* %in_addr_190, align 4
  %p_addr105 = add i15 %tmp_2_trn_cast1, -4224
  %tmp_359 = zext i15 %p_addr105 to i64
  %in_addr_191 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_359
  %in_load_223 = load i32* %in_addr_191, align 4
  %tmp_7_94 = mul nsw i32 %in_load_223, %in_load_95
  %in_load_96 = load i32* %in_addr_192, align 4
  %p_addr106 = call i32 @_ssdm_op_BitConcatenate.i32.i20.i12(i20 7, i12 %tmp_294)
  %tmp_360 = zext i32 %p_addr106 to i64
  %in_addr_193 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_360
  %in_load_224 = load i32* %in_addr_193, align 4
  %tmp_7_95 = mul nsw i32 %in_load_224, %in_load_96
  %in_load_97 = load i32* %in_addr_194, align 4
  %p_addr107 = add i15 %tmp_2_trn_cast1, -3968
  %tmp_361 = zext i15 %p_addr107 to i64
  %in_addr_195 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_361
  %in_load_225 = load i32* %in_addr_195, align 4
  %tmp_7_96 = mul nsw i32 %in_load_225, %in_load_97
  %in_load_98 = load i32* %in_addr_196, align 4
  %p_addr109 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 113, i8 %j)
  %tmp_362 = zext i32 %p_addr109 to i64
  %in_addr_197 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_362
  %in_load_226 = load i32* %in_addr_197, align 4
  %tmp_7_97 = mul nsw i32 %in_load_226, %in_load_98
  %in_load_99 = load i32* %in_addr_198, align 4
  %p_addr110 = add i15 %tmp_2_trn_cast1, -3712
  %tmp_363 = zext i15 %p_addr110 to i64
  %in_addr_199 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_363
  %in_load_227 = load i32* %in_addr_199, align 4
  %tmp_7_98 = mul nsw i32 %in_load_227, %in_load_99
  %in_load_100 = load i32* %in_addr_200, align 4
  %p_addr111 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 57, i9 %tmp_263)
  %tmp_364 = zext i32 %p_addr111 to i64
  %in_addr_201 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_364
  %in_load_228 = load i32* %in_addr_201, align 4
  %tmp_7_99 = mul nsw i32 %in_load_228, %in_load_100
  %in_load_101 = load i32* %in_addr_202, align 4
  %p_addr112 = add i15 %tmp_2_trn_cast1, -3456
  %tmp_365 = zext i15 %p_addr112 to i64
  %in_addr_203 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_365
  %in_load_229 = load i32* %in_addr_203, align 4
  %tmp_7_100 = mul nsw i32 %in_load_229, %in_load_101
  %in_load_102 = load i32* %in_addr_204, align 4
  %p_addr113 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 115, i8 %j)
  %tmp_366 = zext i32 %p_addr113 to i64
  %in_addr_205 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_366
  %in_load_230 = load i32* %in_addr_205, align 4
  %tmp_7_101 = mul nsw i32 %in_load_230, %in_load_102
  %in_load_103 = load i32* %in_addr_206, align 4
  %p_addr114 = add i15 %tmp_2_trn_cast1, -3200
  %tmp_367 = zext i15 %p_addr114 to i64
  %in_addr_207 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_367
  %in_load_231 = load i32* %in_addr_207, align 4
  %tmp_7_102 = mul nsw i32 %in_load_231, %in_load_103
  %in_load_104 = load i32* %in_addr_208, align 4
  %p_addr115 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 29, i10 %tmp_268)
  %tmp_368 = zext i32 %p_addr115 to i64
  %in_addr_209 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_368
  %in_load_232 = load i32* %in_addr_209, align 4
  %tmp_7_103 = mul nsw i32 %in_load_232, %in_load_104
  %in_load_105 = load i32* %in_addr_210, align 4
  %p_addr116 = add i15 %tmp_2_trn_cast1, -2944
  %tmp_369 = zext i15 %p_addr116 to i64
  %in_addr_211 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_369
  %in_load_233 = load i32* %in_addr_211, align 4
  %tmp_7_104 = mul nsw i32 %in_load_233, %in_load_105
  %in_load_106 = load i32* %in_addr_212, align 4
  %p_addr117 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 117, i8 %j)
  %tmp_370 = zext i32 %p_addr117 to i64
  %in_addr_213 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_370
  %in_load_234 = load i32* %in_addr_213, align 4
  %tmp_7_105 = mul nsw i32 %in_load_234, %in_load_106
  %in_load_107 = load i32* %in_addr_214, align 4
  %p_addr118 = add i15 %tmp_2_trn_cast1, -2688
  %tmp_371 = zext i15 %p_addr118 to i64
  %in_addr_215 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_371
  %in_load_235 = load i32* %in_addr_215, align 4
  %tmp_7_106 = mul nsw i32 %in_load_235, %in_load_107
  %in_load_108 = load i32* %in_addr_216, align 4
  %p_addr119 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 59, i9 %tmp_263)
  %tmp_372 = zext i32 %p_addr119 to i64
  %in_addr_217 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_372
  %in_load_236 = load i32* %in_addr_217, align 4
  %tmp_7_107 = mul nsw i32 %in_load_236, %in_load_108
  %in_load_109 = load i32* %in_addr_218, align 4
  %p_addr108 = add i15 %tmp_2_trn_cast1, -2432
  %tmp_373 = zext i15 %p_addr108 to i64
  %in_addr_219 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_373
  %in_load_237 = load i32* %in_addr_219, align 4
  %tmp_7_108 = mul nsw i32 %in_load_237, %in_load_109
  %in_load_110 = load i32* %in_addr_220, align 4
  %p_addr120 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 119, i8 %j)
  %tmp_374 = zext i32 %p_addr120 to i64
  %in_addr_221 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_374
  %in_load_238 = load i32* %in_addr_221, align 4
  %tmp_7_109 = mul nsw i32 %in_load_238, %in_load_110
  %in_load_111 = load i32* %in_addr_222, align 4
  %p_addr96 = add i15 %tmp_2_trn_cast1, -2176
  %tmp_375 = zext i15 %p_addr96 to i64
  %in_addr_223 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_375
  %in_load_239 = load i32* %in_addr_223, align 4
  %tmp_7_110 = mul nsw i32 %in_load_239, %in_load_111
  %in_load_112 = load i32* %in_addr_224, align 4
  %p_addr121 = call i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21 15, i11 %tmp_277)
  %tmp_376 = zext i32 %p_addr121 to i64
  %in_addr_225 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_376
  %in_load_240 = load i32* %in_addr_225, align 4
  %tmp_7_111 = mul nsw i32 %in_load_240, %in_load_112
  %in_load_113 = load i32* %in_addr_226, align 4
  %p_addr84 = add i15 %tmp_2_trn_cast1, -1920
  %tmp_377 = zext i15 %p_addr84 to i64
  %in_addr_227 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_377
  %in_load_241 = load i32* %in_addr_227, align 4
  %tmp_7_112 = mul nsw i32 %in_load_241, %in_load_113
  %in_load_114 = load i32* %in_addr_228, align 4
  %p_addr122 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 121, i8 %j)
  %tmp_378 = zext i32 %p_addr122 to i64
  %in_addr_229 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_378
  %in_load_242 = load i32* %in_addr_229, align 4
  %tmp_7_113 = mul nsw i32 %in_load_242, %in_load_114
  %in_load_115 = load i32* %in_addr_230, align 4
  %p_addr72 = add i15 %tmp_2_trn_cast1, -1664
  %tmp_379 = zext i15 %p_addr72 to i64
  %in_addr_231 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_379
  %in_load_243 = load i32* %in_addr_231, align 4
  %tmp_7_114 = mul nsw i32 %in_load_243, %in_load_115
  %in_load_116 = load i32* %in_addr_232, align 4
  %p_addr123 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 61, i9 %tmp_263)
  %tmp_380 = zext i32 %p_addr123 to i64
  %in_addr_233 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_380
  %in_load_244 = load i32* %in_addr_233, align 4
  %tmp_7_115 = mul nsw i32 %in_load_244, %in_load_116
  %in_load_117 = load i32* %in_addr_234, align 4
  %p_addr60 = add i15 %tmp_2_trn_cast1, -1408
  %tmp_381 = zext i15 %p_addr60 to i64
  %in_addr_235 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_381
  %in_load_245 = load i32* %in_addr_235, align 4
  %tmp_7_116 = mul nsw i32 %in_load_245, %in_load_117
  %in_load_118 = load i32* %in_addr_236, align 4
  %p_addr124 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 123, i8 %j)
  %tmp_382 = zext i32 %p_addr124 to i64
  %in_addr_237 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_382
  %in_load_246 = load i32* %in_addr_237, align 4
  %tmp_7_117 = mul nsw i32 %in_load_246, %in_load_118
  %in_load_119 = load i32* %in_addr_238, align 4
  %p_addr48 = add i15 %tmp_2_trn_cast1, -1152
  %tmp_383 = zext i15 %p_addr48 to i64
  %in_addr_239 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_383
  %in_load_247 = load i32* %in_addr_239, align 4
  %tmp_7_118 = mul nsw i32 %in_load_247, %in_load_119
  %in_load_120 = load i32* %in_addr_240, align 4
  %p_addr125 = call i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22 31, i10 %tmp_268)
  %tmp_384 = zext i32 %p_addr125 to i64
  %in_addr_241 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_384
  %in_load_248 = load i32* %in_addr_241, align 4
  %tmp_7_119 = mul nsw i32 %in_load_248, %in_load_120
  %in_load_121 = load i32* %in_addr_242, align 4
  %p_addr36 = add i15 %tmp_2_trn_cast1, -896
  %tmp_385 = zext i15 %p_addr36 to i64
  %in_addr_243 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_385
  %in_load_249 = load i32* %in_addr_243, align 4
  %tmp_7_120 = mul nsw i32 %in_load_249, %in_load_121
  %in_load_122 = load i32* %in_addr_244, align 4
  %p_addr126 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 125, i8 %j)
  %tmp_386 = zext i32 %p_addr126 to i64
  %in_addr_245 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_386
  %in_load_250 = load i32* %in_addr_245, align 4
  %tmp_7_121 = mul nsw i32 %in_load_250, %in_load_122
  %in_load_123 = load i32* %in_addr_246, align 4
  %p_addr24 = add i15 %tmp_2_trn_cast1, -640
  %tmp_387 = zext i15 %p_addr24 to i64
  %in_addr_247 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_387
  %in_load_251 = load i32* %in_addr_247, align 4
  %tmp_7_122 = mul nsw i32 %in_load_251, %in_load_123
  %in_load_124 = load i32* %in_addr_248, align 4
  %p_addr127 = call i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23 63, i9 %tmp_263)
  %tmp_388 = zext i32 %p_addr127 to i64
  %in_addr_249 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_388
  %in_load_252 = load i32* %in_addr_249, align 4
  %tmp_7_123 = mul nsw i32 %in_load_252, %in_load_124
  %in_load_125 = load i32* %in_addr_250, align 4
  %p_addr12 = add i15 %tmp_2_trn_cast1, -384
  %tmp_389 = zext i15 %p_addr12 to i64
  %in_addr_251 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_389
  %in_load_253 = load i32* %in_addr_251, align 4
  %tmp_7_124 = mul nsw i32 %in_load_253, %in_load_125
  %in_load_126 = load i32* %in_addr_252, align 4
  %p_addr128 = call i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24 127, i8 %j)
  %tmp_390 = zext i32 %p_addr128 to i64
  %in_addr_253 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_390
  %in_load_254 = load i32* %in_addr_253, align 4
  %tmp_7_125 = mul nsw i32 %in_load_254, %in_load_126
  %in_load_127 = load i32* %in_addr_254, align 4
  %p_addr1 = add i15 %tmp_2_trn_cast1, -128
  %tmp_391 = zext i15 %p_addr1 to i64
  %in_addr_255 = getelementptr [32768 x i32]* %in_r, i64 0, i64 %tmp_391
  %in_load_255 = load i32* %in_addr_255, align 4
  %tmp_7_126 = mul nsw i32 %in_load_255, %in_load_127
  %tmp6 = add i32 %tmp_7, %tmp_7_1
  %tmp7 = add i32 %tmp_7_2, %tmp_7_3
  %tmp5 = add i32 %tmp7, %tmp6
  %tmp9 = add i32 %tmp_7_4, %tmp_7_5
  %tmp10 = add i32 %tmp_7_6, %tmp_7_7
  %tmp8 = add i32 %tmp10, %tmp9
  %tmp4 = add i32 %tmp8, %tmp5
  %tmp13 = add i32 %tmp_7_8, %tmp_7_9
  %tmp14 = add i32 %tmp_7_s, %tmp_7_10
  %tmp12 = add i32 %tmp14, %tmp13
  %tmp16 = add i32 %tmp_7_11, %tmp_7_12
  %tmp17 = add i32 %tmp_7_13, %tmp_7_14
  %tmp15 = add i32 %tmp17, %tmp16
  %tmp11 = add i32 %tmp15, %tmp12
  %tmp3 = add i32 %tmp11, %tmp4
  %tmp21 = add i32 %tmp_7_15, %tmp_7_16
  %tmp22 = add i32 %tmp_7_17, %tmp_7_18
  %tmp20 = add i32 %tmp22, %tmp21
  %tmp24 = add i32 %tmp_7_19, %tmp_7_20
  %tmp25 = add i32 %tmp_7_21, %tmp_7_22
  %tmp23 = add i32 %tmp25, %tmp24
  %tmp19 = add i32 %tmp23, %tmp20
  %tmp28 = add i32 %tmp_7_23, %tmp_7_24
  %tmp29 = add i32 %tmp_7_25, %tmp_7_26
  %tmp27 = add i32 %tmp29, %tmp28
  %tmp31 = add i32 %tmp_7_27, %tmp_7_28
  %tmp32 = add i32 %tmp_7_29, %tmp_7_30
  %tmp30 = add i32 %tmp32, %tmp31
  %tmp26 = add i32 %tmp30, %tmp27
  %tmp18 = add i32 %tmp26, %tmp19
  %tmp2 = add i32 %tmp18, %tmp3
  %tmp37 = add i32 %tmp_7_31, %tmp_7_32
  %tmp38 = add i32 %tmp_7_33, %tmp_7_34
  %tmp36 = add i32 %tmp38, %tmp37
  %tmp40 = add i32 %tmp_7_35, %tmp_7_36
  %tmp41 = add i32 %tmp_7_37, %tmp_7_38
  %tmp39 = add i32 %tmp41, %tmp40
  %tmp35 = add i32 %tmp39, %tmp36
  %tmp44 = add i32 %tmp_7_39, %tmp_7_40
  %tmp45 = add i32 %tmp_7_41, %tmp_7_42
  %tmp43 = add i32 %tmp45, %tmp44
  %tmp47 = add i32 %tmp_7_43, %tmp_7_44
  %tmp48 = add i32 %tmp_7_45, %tmp_7_46
  %tmp46 = add i32 %tmp48, %tmp47
  %tmp42 = add i32 %tmp46, %tmp43
  %tmp34 = add i32 %tmp42, %tmp35
  %tmp52 = add i32 %tmp_7_47, %tmp_7_48
  %tmp53 = add i32 %tmp_7_49, %tmp_7_50
  %tmp51 = add i32 %tmp53, %tmp52
  %tmp55 = add i32 %tmp_7_51, %tmp_7_52
  %tmp56 = add i32 %tmp_7_53, %tmp_7_54
  %tmp54 = add i32 %tmp56, %tmp55
  %tmp50 = add i32 %tmp54, %tmp51
  %tmp59 = add i32 %tmp_7_55, %tmp_7_56
  %tmp60 = add i32 %tmp_7_57, %tmp_7_58
  %tmp58 = add i32 %tmp60, %tmp59
  %tmp62 = add i32 %tmp_7_59, %tmp_7_60
  %tmp63 = add i32 %tmp_7_61, %tmp_7_62
  %tmp61 = add i32 %tmp63, %tmp62
  %tmp57 = add i32 %tmp61, %tmp58
  %tmp49 = add i32 %tmp57, %tmp50
  %tmp33 = add i32 %tmp49, %tmp34
  %tmp1 = add i32 %tmp33, %tmp2
  %tmp69 = add i32 %tmp_7_63, %tmp_7_64
  %tmp70 = add i32 %tmp_7_65, %tmp_7_66
  %tmp68 = add i32 %tmp70, %tmp69
  %tmp72 = add i32 %tmp_7_67, %tmp_7_68
  %tmp73 = add i32 %tmp_7_69, %tmp_7_70
  %tmp71 = add i32 %tmp73, %tmp72
  %tmp67 = add i32 %tmp71, %tmp68
  %tmp76 = add i32 %tmp_7_71, %tmp_7_72
  %tmp77 = add i32 %tmp_7_73, %tmp_7_74
  %tmp75 = add i32 %tmp77, %tmp76
  %tmp79 = add i32 %tmp_7_75, %tmp_7_76
  %tmp80 = add i32 %tmp_7_77, %tmp_7_78
  %tmp78 = add i32 %tmp80, %tmp79
  %tmp74 = add i32 %tmp78, %tmp75
  %tmp66 = add i32 %tmp74, %tmp67
  %tmp84 = add i32 %tmp_7_79, %tmp_7_80
  %tmp85 = add i32 %tmp_7_81, %tmp_7_82
  %tmp83 = add i32 %tmp85, %tmp84
  %tmp87 = add i32 %tmp_7_83, %tmp_7_84
  %tmp88 = add i32 %tmp_7_85, %tmp_7_86
  %tmp86 = add i32 %tmp88, %tmp87
  %tmp82 = add i32 %tmp86, %tmp83
  %tmp91 = add i32 %tmp_7_87, %tmp_7_88
  %tmp92 = add i32 %tmp_7_89, %tmp_7_90
  %tmp90 = add i32 %tmp92, %tmp91
  %tmp94 = add i32 %tmp_7_91, %tmp_7_92
  %tmp95 = add i32 %tmp_7_93, %tmp_7_94
  %tmp93 = add i32 %tmp95, %tmp94
  %tmp89 = add i32 %tmp93, %tmp90
  %tmp81 = add i32 %tmp89, %tmp82
  %tmp65 = add i32 %tmp81, %tmp66
  %tmp100 = add i32 %tmp_7_95, %tmp_7_96
  %tmp101 = add i32 %tmp_7_97, %tmp_7_98
  %tmp99 = add i32 %tmp101, %tmp100
  %tmp103 = add i32 %tmp_7_99, %tmp_7_100
  %tmp104 = add i32 %tmp_7_101, %tmp_7_102
  %tmp102 = add i32 %tmp104, %tmp103
  %tmp98 = add i32 %tmp102, %tmp99
  %tmp107 = add i32 %tmp_7_103, %tmp_7_104
  %tmp108 = add i32 %tmp_7_105, %tmp_7_106
  %tmp106 = add i32 %tmp108, %tmp107
  %tmp110 = add i32 %tmp_7_107, %tmp_7_108
  %tmp111 = add i32 %tmp_7_109, %tmp_7_110
  %tmp109 = add i32 %tmp111, %tmp110
  %tmp105 = add i32 %tmp109, %tmp106
  %tmp97 = add i32 %tmp105, %tmp98
  %tmp115 = add i32 %tmp_7_111, %tmp_7_112
  %tmp116 = add i32 %tmp_7_113, %tmp_7_114
  %tmp114 = add i32 %tmp116, %tmp115
  %tmp118 = add i32 %tmp_7_115, %tmp_7_116
  %tmp119 = add i32 %tmp_7_117, %tmp_7_118
  %tmp117 = add i32 %tmp119, %tmp118
  %tmp113 = add i32 %tmp117, %tmp114
  %tmp122 = add i32 %tmp_7_119, %tmp_7_120
  %tmp123 = add i32 %tmp_7_121, %tmp_7_122
  %tmp121 = add i32 %tmp123, %tmp122
  %tmp125 = add i32 %tmp_7_123, %tmp_7_124
  %tmp126 = add i32 %tmp_7_125, %tmp_7_126
  %tmp124 = add i32 %tmp126, %tmp125
  %tmp120 = add i32 %tmp124, %tmp121
  %tmp112 = add i32 %tmp120, %tmp113
  %tmp96 = add i32 %tmp112, %tmp97
  %tmp64 = add i32 %tmp96, %tmp65
  %tmp_8_s = add nsw i32 %tmp64, %tmp1
  store i32 %tmp_8_s, i32* %out_addr, align 4
  br label %3

; <label>:5                                       ; preds = %3
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([10 x i8]* @p_str4, i32 %tmp_1) nounwind
  br label %1

; <label>:6                                       ; preds = %1
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

define weak i15 @_ssdm_op_BitConcatenate.i15.i8.i7(i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %0 to i15
  %empty_32 = zext i7 %1 to i15
  %empty_33 = trunc i15 %empty to i8
  %empty_34 = call i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15 %empty_32, i32 7, i32 14)
  %empty_35 = or i8 %empty_33, %empty_34
  %empty_36 = call i15 @_ssdm_op_PartSet.i15.i15.i8.i32.i32(i15 %empty_32, i8 %empty_35, i32 7, i32 14)
  ret i15 %empty_36
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i18.i14(i18, i14) nounwind readnone {
entry:
  %empty = zext i18 %0 to i32
  %empty_37 = zext i14 %1 to i32
  %empty_38 = trunc i32 %empty to i18
  %empty_39 = call i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32 %empty_37, i32 14, i32 31)
  %empty_40 = or i18 %empty_38, %empty_39
  %empty_41 = call i32 @_ssdm_op_PartSet.i32.i32.i18.i32.i32(i32 %empty_37, i18 %empty_40, i32 14, i32 31)
  ret i32 %empty_41
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone {
entry:
  %empty = zext i24 %0 to i32
  %empty_42 = zext i8 %1 to i32
  %empty_43 = trunc i32 %empty to i24
  %empty_44 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %empty_42, i32 8, i32 31)
  %empty_45 = or i24 %empty_43, %empty_44
  %empty_46 = call i32 @_ssdm_op_PartSet.i32.i32.i24.i32.i32(i32 %empty_42, i24 %empty_45, i32 8, i32 31)
  ret i32 %empty_46
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i23.i9(i23, i9) nounwind readnone {
entry:
  %empty = zext i23 %0 to i32
  %empty_47 = zext i9 %1 to i32
  %empty_48 = trunc i32 %empty to i23
  %empty_49 = call i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32 %empty_47, i32 9, i32 31)
  %empty_50 = or i23 %empty_48, %empty_49
  %empty_51 = call i32 @_ssdm_op_PartSet.i32.i32.i23.i32.i32(i32 %empty_47, i23 %empty_50, i32 9, i32 31)
  ret i32 %empty_51
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i22.i10(i22, i10) nounwind readnone {
entry:
  %empty = zext i22 %0 to i32
  %empty_52 = zext i10 %1 to i32
  %empty_53 = trunc i32 %empty to i22
  %empty_54 = call i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32 %empty_52, i32 10, i32 31)
  %empty_55 = or i22 %empty_53, %empty_54
  %empty_56 = call i32 @_ssdm_op_PartSet.i32.i32.i22.i32.i32(i32 %empty_52, i22 %empty_55, i32 10, i32 31)
  ret i32 %empty_56
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i21.i11(i21, i11) nounwind readnone {
entry:
  %empty = zext i21 %0 to i32
  %empty_57 = zext i11 %1 to i32
  %empty_58 = trunc i32 %empty to i21
  %empty_59 = call i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32 %empty_57, i32 11, i32 31)
  %empty_60 = or i21 %empty_58, %empty_59
  %empty_61 = call i32 @_ssdm_op_PartSet.i32.i32.i21.i32.i32(i32 %empty_57, i21 %empty_60, i32 11, i32 31)
  ret i32 %empty_61
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i20.i12(i20, i12) nounwind readnone {
entry:
  %empty = zext i20 %0 to i32
  %empty_62 = zext i12 %1 to i32
  %empty_63 = trunc i32 %empty to i20
  %empty_64 = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %empty_62, i32 12, i32 31)
  %empty_65 = or i20 %empty_63, %empty_64
  %empty_66 = call i32 @_ssdm_op_PartSet.i32.i32.i20.i32.i32(i32 %empty_62, i20 %empty_65, i32 12, i32 31)
  ret i32 %empty_66
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i19.i13(i19, i13) nounwind readnone {
entry:
  %empty = zext i19 %0 to i32
  %empty_67 = zext i13 %1 to i32
  %empty_68 = trunc i32 %empty to i19
  %empty_69 = call i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32 %empty_67, i32 13, i32 31)
  %empty_70 = or i19 %empty_68, %empty_69
  %empty_71 = call i32 @_ssdm_op_PartSet.i32.i32.i19.i32.i32(i32 %empty_67, i19 %empty_70, i32 13, i32 31)
  ret i32 %empty_71
}

define weak i8 @_ssdm_op_PartSelect.i8.i15.i32.i32(i15, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.select.i15(i15 %0, i32 %1, i32 %2)
  %empty_72 = trunc i15 %empty to i8
  ret i8 %empty_72
}

define weak i15 @_ssdm_op_PartSet.i15.i15.i8.i32.i32(i15, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i15 @llvm.part.set.i15.i8(i15 %0, i8 %1, i32 %2, i32 %3)
  ret i15 %empty
}

define weak i18 @_ssdm_op_PartSelect.i18.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_73 = trunc i32 %empty to i18
  ret i18 %empty_73
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i18.i32.i32(i32, i18, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i18(i32 %0, i18 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_74 = trunc i32 %empty to i24
  ret i24 %empty_74
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i24.i32.i32(i32, i24, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i24(i32 %0, i24 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_75 = trunc i32 %empty to i23
  ret i23 %empty_75
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i23.i32.i32(i32, i23, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i23(i32 %0, i23 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i22 @_ssdm_op_PartSelect.i22.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_76 = trunc i32 %empty to i22
  ret i22 %empty_76
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i22.i32.i32(i32, i22, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i22(i32 %0, i22 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i21 @_ssdm_op_PartSelect.i21.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_77 = trunc i32 %empty to i21
  ret i21 %empty_77
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i21.i32.i32(i32, i21, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i21(i32 %0, i21 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_78 = trunc i32 %empty to i20
  ret i20 %empty_78
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i20.i32.i32(i32, i20, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i20(i32 %0, i20 %1, i32 %2, i32 %3)
  ret i32 %empty
}

define weak i19 @_ssdm_op_PartSelect.i19.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_79 = trunc i32 %empty to i19
  ret i19 %empty_79
}

define weak i32 @_ssdm_op_PartSet.i32.i32.i19.i32.i32(i32, i19, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i19(i32 %0, i19 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i15 @llvm.part.select.i15(i15, i32, i32) nounwind readnone

declare i15 @llvm.part.set.i15.i8(i15, i8, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i18(i32, i18, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i24(i32, i24, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i23(i32, i23, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i22(i32, i22, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i21(i32, i21, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i20(i32, i20, i32, i32) nounwind readnone

declare i32 @llvm.part.set.i32.i19(i32, i19, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"in", metadata !4, metadata !"int32"}
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 0, i32 255, i32 1}
!6 = metadata !{i32 0, i32 127, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"out", metadata !11, metadata !"int32"}
!11 = metadata !{metadata !6, metadata !6}
