; ModuleID = 'D:/minibench/customization/kmean-small/unroll-20/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1
@p_str4 = private unnamed_addr constant [16 x i8] c"kmean_ip_label0\00", align 1
@str = internal constant [9 x i8] c"kmean_ip\00"

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

define void @kmean_ip([2056 x i32]* %sub_in, [12 x i32]* %sub_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2056 x i32]* %sub_in) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i32]* %sub_out) nounwind, !map !6
  %sub_out_addr = getelementptr [12 x i32]* %sub_out, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([12 x i32]* %sub_out, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([2056 x i32]* %sub_in, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str2, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [17 x i8]* @p_str3) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond8 = icmp eq i4 %i, -4
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12) nounwind
  %i_1 = add i4 %i, 1
  br i1 %exitcond8, label %.preheader, label %2

.preheader:                                       ; preds = %1
  %sub_in_addr = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2048
  %sub_in_addr_1 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2049
  %sub_in_addr_2 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2050
  %sub_in_addr_3 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2051
  %sub_in_addr_4 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2052
  %sub_in_addr_5 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2053
  %sub_in_addr_6 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2054
  %sub_in_addr_7 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2055
  %sub_out_addr_1 = getelementptr [12 x i32]* %sub_out, i64 0, i64 11
  %sub_out_addr_2 = getelementptr [12 x i32]* %sub_out, i64 0, i64 6
  %sub_out_addr_3 = getelementptr [12 x i32]* %sub_out, i64 0, i64 7
  %sub_out_addr_4 = getelementptr [12 x i32]* %sub_out, i64 0, i64 10
  %sub_out_addr_5 = getelementptr [12 x i32]* %sub_out, i64 0, i64 4
  %sub_out_addr_6 = getelementptr [12 x i32]* %sub_out, i64 0, i64 5
  %sub_out_addr_7 = getelementptr [12 x i32]* %sub_out, i64 0, i64 9
  %sub_out_addr_8 = getelementptr [12 x i32]* %sub_out, i64 0, i64 2
  %sub_out_addr_9 = getelementptr [12 x i32]* %sub_out, i64 0, i64 3
  %sub_out_addr_10 = getelementptr [12 x i32]* %sub_out, i64 0, i64 8
  %sub_out_addr_11 = getelementptr [12 x i32]* %sub_out, i64 0, i64 1
  br label %3

; <label>:2                                       ; preds = %1
  %tmp = zext i4 %i to i64
  %sub_out_addr_12 = getelementptr [12 x i32]* %sub_out, i64 0, i64 %tmp
  store i32 0, i32* %sub_out_addr_12, align 4
  br label %1

; <label>:3                                       ; preds = %._crit_edge11.3, %.preheader
  %i_s = phi i11 [ %i_3_3, %._crit_edge11.3 ], [ 0, %.preheader ]
  %exitcond = icmp eq i11 %i_s, -1024
  br i1 %exitcond, label %21, label %4

._crit_edge11.0:                                  ; preds = %8, %._crit_edge10.0
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str4, i32 %tmp_1_21) nounwind
  %tmp_40 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %i_s, i32 1, i32 9)
  %tmp_2_1 = call i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9 %tmp_40, i2 -2)
  %tmp_3_1 = zext i11 %tmp_2_1 to i64
  %sub_in_addr_10 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_3_1
  %sub_in_load_10 = load i32* %sub_in_addr_10, align 4
  %tmp_4_1 = sub nsw i32 %sub_in_load_10, %sub_in_load_1
  %tmp_5_1 = mul nsw i32 %tmp_4_1, %tmp_4_1
  %tmp_6_1 = call i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9 %tmp_40, i2 -1)
  %tmp_7_1 = zext i11 %tmp_6_1 to i64
  %sub_in_addr_11 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_7_1
  %sub_in_load_11 = load i32* %sub_in_addr_11, align 4
  %tmp_8_1 = sub nsw i32 %sub_in_load_11, %sub_in_load_3
  %tmp_9_1 = mul nsw i32 %tmp_8_1, %tmp_8_1
  %dist0_1 = add nsw i32 %tmp_9_1, %tmp_5_1
  %tmp_1 = sub nsw i32 %sub_in_load_10, %sub_in_load_4
  %tmp_1_1 = mul nsw i32 %tmp_1, %tmp_1
  %tmp_10_1 = sub nsw i32 %sub_in_load_11, %sub_in_load_5
  %tmp_11_1 = mul nsw i32 %tmp_10_1, %tmp_10_1
  %dist1_1 = add nsw i32 %tmp_11_1, %tmp_1_1
  %tmp_12_1 = sub nsw i32 %sub_in_load_10, %sub_in_load_6
  %tmp_13_1 = mul nsw i32 %tmp_12_1, %tmp_12_1
  %tmp_14_1 = sub nsw i32 %sub_in_load_11, %sub_in_load_7
  %tmp_15_1 = mul nsw i32 %tmp_14_1, %tmp_14_1
  %dist2_1 = add nsw i32 %tmp_15_1, %tmp_13_1
  %tmp_16_1 = sub nsw i32 %sub_in_load_10, %sub_in_load_8
  %tmp_17_1 = mul nsw i32 %tmp_16_1, %tmp_16_1
  %tmp_18_1 = sub nsw i32 %sub_in_load_11, %sub_in_load_9
  %tmp_19_1 = mul nsw i32 %tmp_18_1, %tmp_18_1
  %dist3_1 = add nsw i32 %tmp_19_1, %tmp_17_1
  %tmp_20_1 = icmp sgt i32 %dist0_1, %dist1_1
  %tmp_21_1 = icmp sgt i32 %dist0_1, %dist2_1
  %tmp_22_1 = icmp sgt i32 %dist0_1, %dist3_1
  %tmp1 = or i1 %tmp_21_1, %tmp_22_1
  %or_cond1_1 = or i1 %tmp1, %tmp_20_1
  br i1 %or_cond1_1, label %._crit_edge.1, label %9

._crit_edge10.0:                                  ; preds = %7, %._crit_edge9.0
  %tmp2 = and i1 %tmp_28, %tmp_32
  %or_cond7 = and i1 %tmp2, %tmp_22
  br i1 %or_cond7, label %8, label %._crit_edge11.0

._crit_edge9.0:                                   ; preds = %6, %._crit_edge.0
  %slt = icmp slt i32 %dist2, %dist0
  %rev2 = xor i1 %slt, true
  %slt2 = icmp slt i32 %dist2, %dist1
  %rev = xor i1 %slt2, true
  %tmp_32 = icmp sgt i32 %dist2, %dist3
  %tmp3 = or i1 %rev2, %tmp_32
  %or_cond5 = or i1 %tmp3, %rev
  br i1 %or_cond5, label %._crit_edge10.0, label %7

._crit_edge.0:                                    ; preds = %5, %4
  %slt1 = icmp slt i32 %dist1, %dist0
  %rev1 = xor i1 %slt1, true
  %tmp_27 = icmp sgt i32 %dist1, %dist2
  %tmp_28 = icmp sgt i32 %dist1, %dist3
  %tmp4 = or i1 %tmp_27, %tmp_28
  %or_cond3 = or i1 %tmp4, %rev1
  br i1 %or_cond3, label %._crit_edge9.0, label %6

; <label>:4                                       ; preds = %3
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str4) nounwind
  %tmp_1_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %tmp_2 = trunc i11 %i_s to i10
  %tmp_26 = shl i11 %i_s, 1
  %tmp_3 = zext i11 %tmp_26 to i64
  %sub_in_addr_8 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_3
  %sub_in_load = load i32* %sub_in_addr_8, align 4
  %sub_in_load_1 = load i32* %sub_in_addr, align 4
  %tmp_4 = sub nsw i32 %sub_in_load, %sub_in_load_1
  %tmp_5 = mul nsw i32 %tmp_4, %tmp_4
  %tmp_6 = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_2, i1 true)
  %tmp_7 = zext i11 %tmp_6 to i64
  %sub_in_addr_9 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_7
  %sub_in_load_2 = load i32* %sub_in_addr_9, align 4
  %sub_in_load_3 = load i32* %sub_in_addr_1, align 4
  %tmp_8 = sub nsw i32 %sub_in_load_2, %sub_in_load_3
  %tmp_9 = mul nsw i32 %tmp_8, %tmp_8
  %dist0 = add nsw i32 %tmp_9, %tmp_5
  %sub_in_load_4 = load i32* %sub_in_addr_2, align 4
  %tmp_s = sub nsw i32 %sub_in_load, %sub_in_load_4
  %tmp_11 = mul nsw i32 %tmp_s, %tmp_s
  %sub_in_load_5 = load i32* %sub_in_addr_3, align 4
  %tmp_10 = sub nsw i32 %sub_in_load_2, %sub_in_load_5
  %tmp_39 = mul nsw i32 %tmp_10, %tmp_10
  %dist1 = add nsw i32 %tmp_39, %tmp_11
  %sub_in_load_6 = load i32* %sub_in_addr_4, align 4
  %tmp_12 = sub nsw i32 %sub_in_load, %sub_in_load_6
  %tmp_13 = mul nsw i32 %tmp_12, %tmp_12
  %sub_in_load_7 = load i32* %sub_in_addr_5, align 4
  %tmp_14 = sub nsw i32 %sub_in_load_2, %sub_in_load_7
  %tmp_15 = mul nsw i32 %tmp_14, %tmp_14
  %dist2 = add nsw i32 %tmp_15, %tmp_13
  %sub_in_load_8 = load i32* %sub_in_addr_6, align 4
  %tmp_16 = sub nsw i32 %sub_in_load, %sub_in_load_8
  %tmp_17 = mul nsw i32 %tmp_16, %tmp_16
  %sub_in_load_9 = load i32* %sub_in_addr_7, align 4
  %tmp_18 = sub nsw i32 %sub_in_load_2, %sub_in_load_9
  %tmp_19 = mul nsw i32 %tmp_18, %tmp_18
  %dist3 = add nsw i32 %tmp_19, %tmp_17
  %tmp_20 = icmp sgt i32 %dist0, %dist1
  %tmp_21 = icmp sgt i32 %dist0, %dist2
  %tmp_22 = icmp sgt i32 %dist0, %dist3
  %tmp5 = or i1 %tmp_21, %tmp_22
  %or_cond1 = or i1 %tmp5, %tmp_20
  br i1 %or_cond1, label %._crit_edge.0, label %5

; <label>:5                                       ; preds = %4
  %sub_out_load = load i32* %sub_out_addr_10, align 4
  %tmp_23 = add nsw i32 %sub_out_load, 1
  store i32 %tmp_23, i32* %sub_out_addr_10, align 4
  %sub_out_load_1 = load i32* %sub_out_addr, align 4
  %tmp_24 = add nsw i32 %sub_out_load_1, %sub_in_load
  store i32 %tmp_24, i32* %sub_out_addr, align 4
  %sub_out_load_2 = load i32* %sub_out_addr_11, align 4
  %tmp_25 = add nsw i32 %sub_out_load_2, %sub_in_load_2
  store i32 %tmp_25, i32* %sub_out_addr_11, align 4
  br label %._crit_edge.0

; <label>:6                                       ; preds = %._crit_edge.0
  %sub_out_load_3 = load i32* %sub_out_addr_7, align 4
  %tmp_29 = add nsw i32 %sub_out_load_3, 1
  store i32 %tmp_29, i32* %sub_out_addr_7, align 4
  %sub_out_load_4 = load i32* %sub_out_addr_8, align 4
  %tmp_30 = add nsw i32 %sub_out_load_4, %sub_in_load
  store i32 %tmp_30, i32* %sub_out_addr_8, align 4
  %sub_out_load_5 = load i32* %sub_out_addr_9, align 4
  %tmp_31 = add nsw i32 %sub_out_load_5, %sub_in_load_2
  store i32 %tmp_31, i32* %sub_out_addr_9, align 4
  br label %._crit_edge9.0

; <label>:7                                       ; preds = %._crit_edge9.0
  %sub_out_load_6 = load i32* %sub_out_addr_4, align 4
  %tmp_33 = add nsw i32 %sub_out_load_6, 1
  store i32 %tmp_33, i32* %sub_out_addr_4, align 4
  %sub_out_load_7 = load i32* %sub_out_addr_5, align 4
  %tmp_34 = add nsw i32 %sub_out_load_7, %sub_in_load
  store i32 %tmp_34, i32* %sub_out_addr_5, align 4
  %sub_out_load_8 = load i32* %sub_out_addr_6, align 4
  %tmp_35 = add nsw i32 %sub_out_load_8, %sub_in_load_2
  store i32 %tmp_35, i32* %sub_out_addr_6, align 4
  br label %._crit_edge10.0

; <label>:8                                       ; preds = %._crit_edge10.0
  %sub_out_load_9 = load i32* %sub_out_addr_1, align 4
  %tmp_36 = add nsw i32 %sub_out_load_9, 1
  store i32 %tmp_36, i32* %sub_out_addr_1, align 4
  %sub_out_load_10 = load i32* %sub_out_addr_2, align 4
  %tmp_37 = add nsw i32 %sub_out_load_10, %sub_in_load
  store i32 %tmp_37, i32* %sub_out_addr_2, align 4
  %sub_out_load_11 = load i32* %sub_out_addr_3, align 4
  %tmp_38 = add nsw i32 %sub_out_load_11, %sub_in_load_2
  store i32 %tmp_38, i32* %sub_out_addr_3, align 4
  br label %._crit_edge11.0

._crit_edge11.1:                                  ; preds = %12, %._crit_edge10.1
  %tmp_41 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %i_s, i32 2, i32 9)
  %tmp_2_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_41, i3 -4)
  %tmp_3_2 = zext i11 %tmp_2_2 to i64
  %sub_in_addr_12 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_3_2
  %sub_in_load_12 = load i32* %sub_in_addr_12, align 4
  %tmp_4_2 = sub nsw i32 %sub_in_load_12, %sub_in_load_1
  %tmp_5_2 = mul nsw i32 %tmp_4_2, %tmp_4_2
  %tmp_6_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_41, i3 -3)
  %tmp_7_2 = zext i11 %tmp_6_2 to i64
  %sub_in_addr_13 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_7_2
  %sub_in_load_13 = load i32* %sub_in_addr_13, align 4
  %tmp_8_2 = sub nsw i32 %sub_in_load_13, %sub_in_load_3
  %tmp_9_2 = mul nsw i32 %tmp_8_2, %tmp_8_2
  %dist0_2 = add nsw i32 %tmp_9_2, %tmp_5_2
  %tmp_2_22 = sub nsw i32 %sub_in_load_12, %sub_in_load_4
  %tmp_1_2 = mul nsw i32 %tmp_2_22, %tmp_2_22
  %tmp_10_2 = sub nsw i32 %sub_in_load_13, %sub_in_load_5
  %tmp_11_2 = mul nsw i32 %tmp_10_2, %tmp_10_2
  %dist1_2 = add nsw i32 %tmp_11_2, %tmp_1_2
  %tmp_12_2 = sub nsw i32 %sub_in_load_12, %sub_in_load_6
  %tmp_13_2 = mul nsw i32 %tmp_12_2, %tmp_12_2
  %tmp_14_2 = sub nsw i32 %sub_in_load_13, %sub_in_load_7
  %tmp_15_2 = mul nsw i32 %tmp_14_2, %tmp_14_2
  %dist2_2 = add nsw i32 %tmp_15_2, %tmp_13_2
  %tmp_16_2 = sub nsw i32 %sub_in_load_12, %sub_in_load_8
  %tmp_17_2 = mul nsw i32 %tmp_16_2, %tmp_16_2
  %tmp_18_2 = sub nsw i32 %sub_in_load_13, %sub_in_load_9
  %tmp_19_2 = mul nsw i32 %tmp_18_2, %tmp_18_2
  %dist3_2 = add nsw i32 %tmp_19_2, %tmp_17_2
  %tmp_20_2 = icmp sgt i32 %dist0_2, %dist1_2
  %tmp_21_2 = icmp sgt i32 %dist0_2, %dist2_2
  %tmp_22_2 = icmp sgt i32 %dist0_2, %dist3_2
  %tmp6 = or i1 %tmp_21_2, %tmp_22_2
  %or_cond1_2 = or i1 %tmp6, %tmp_20_2
  br i1 %or_cond1_2, label %._crit_edge.2, label %13

._crit_edge10.1:                                  ; preds = %11, %._crit_edge9.1
  %tmp7 = and i1 %tmp_28_1, %tmp_32_1
  %or_cond7_1 = and i1 %tmp7, %tmp_22_1
  br i1 %or_cond7_1, label %12, label %._crit_edge11.1

._crit_edge9.1:                                   ; preds = %10, %._crit_edge.1
  %slt4 = icmp slt i32 %dist2_1, %dist0_1
  %rev4 = xor i1 %slt4, true
  %slt5 = icmp slt i32 %dist2_1, %dist1_1
  %rev5 = xor i1 %slt5, true
  %tmp_32_1 = icmp sgt i32 %dist2_1, %dist3_1
  %tmp8 = or i1 %rev4, %tmp_32_1
  %or_cond5_1 = or i1 %tmp8, %rev5
  br i1 %or_cond5_1, label %._crit_edge10.1, label %11

._crit_edge.1:                                    ; preds = %9, %._crit_edge11.0
  %slt3 = icmp slt i32 %dist1_1, %dist0_1
  %rev3 = xor i1 %slt3, true
  %tmp_27_1 = icmp sgt i32 %dist1_1, %dist2_1
  %tmp_28_1 = icmp sgt i32 %dist1_1, %dist3_1
  %tmp9 = or i1 %tmp_27_1, %tmp_28_1
  %or_cond3_1 = or i1 %tmp9, %rev3
  br i1 %or_cond3_1, label %._crit_edge9.1, label %10

; <label>:9                                       ; preds = %._crit_edge11.0
  %sub_out_load_12 = load i32* %sub_out_addr_10, align 4
  %tmp_23_1 = add nsw i32 %sub_out_load_12, 1
  store i32 %tmp_23_1, i32* %sub_out_addr_10, align 4
  %sub_out_load_13 = load i32* %sub_out_addr, align 4
  %tmp_24_1 = add nsw i32 %sub_out_load_13, %sub_in_load_10
  store i32 %tmp_24_1, i32* %sub_out_addr, align 4
  %sub_out_load_14 = load i32* %sub_out_addr_11, align 4
  %tmp_25_1 = add nsw i32 %sub_out_load_14, %sub_in_load_11
  store i32 %tmp_25_1, i32* %sub_out_addr_11, align 4
  br label %._crit_edge.1

; <label>:10                                      ; preds = %._crit_edge.1
  %sub_out_load_15 = load i32* %sub_out_addr_7, align 4
  %tmp_29_1 = add nsw i32 %sub_out_load_15, 1
  store i32 %tmp_29_1, i32* %sub_out_addr_7, align 4
  %sub_out_load_16 = load i32* %sub_out_addr_8, align 4
  %tmp_30_1 = add nsw i32 %sub_out_load_16, %sub_in_load_10
  store i32 %tmp_30_1, i32* %sub_out_addr_8, align 4
  %sub_out_load_17 = load i32* %sub_out_addr_9, align 4
  %tmp_31_1 = add nsw i32 %sub_out_load_17, %sub_in_load_11
  store i32 %tmp_31_1, i32* %sub_out_addr_9, align 4
  br label %._crit_edge9.1

; <label>:11                                      ; preds = %._crit_edge9.1
  %sub_out_load_18 = load i32* %sub_out_addr_4, align 4
  %tmp_33_1 = add nsw i32 %sub_out_load_18, 1
  store i32 %tmp_33_1, i32* %sub_out_addr_4, align 4
  %sub_out_load_19 = load i32* %sub_out_addr_5, align 4
  %tmp_34_1 = add nsw i32 %sub_out_load_19, %sub_in_load_10
  store i32 %tmp_34_1, i32* %sub_out_addr_5, align 4
  %sub_out_load_20 = load i32* %sub_out_addr_6, align 4
  %tmp_35_1 = add nsw i32 %sub_out_load_20, %sub_in_load_11
  store i32 %tmp_35_1, i32* %sub_out_addr_6, align 4
  br label %._crit_edge10.1

; <label>:12                                      ; preds = %._crit_edge10.1
  %sub_out_load_21 = load i32* %sub_out_addr_1, align 4
  %tmp_36_1 = add nsw i32 %sub_out_load_21, 1
  store i32 %tmp_36_1, i32* %sub_out_addr_1, align 4
  %sub_out_load_22 = load i32* %sub_out_addr_2, align 4
  %tmp_37_1 = add nsw i32 %sub_out_load_22, %sub_in_load_10
  store i32 %tmp_37_1, i32* %sub_out_addr_2, align 4
  %sub_out_load_23 = load i32* %sub_out_addr_3, align 4
  %tmp_38_1 = add nsw i32 %sub_out_load_23, %sub_in_load_11
  store i32 %tmp_38_1, i32* %sub_out_addr_3, align 4
  br label %._crit_edge11.1

._crit_edge11.2:                                  ; preds = %16, %._crit_edge10.2
  %tmp_2_3 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_41, i3 -2)
  %tmp_3_3 = zext i11 %tmp_2_3 to i64
  %sub_in_addr_14 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_3_3
  %sub_in_load_14 = load i32* %sub_in_addr_14, align 4
  %tmp_4_3 = sub nsw i32 %sub_in_load_14, %sub_in_load_1
  %tmp_5_3 = mul nsw i32 %tmp_4_3, %tmp_4_3
  %tmp_6_3 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_41, i3 -1)
  %tmp_7_3 = zext i11 %tmp_6_3 to i64
  %sub_in_addr_15 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_7_3
  %sub_in_load_15 = load i32* %sub_in_addr_15, align 4
  %tmp_8_3 = sub nsw i32 %sub_in_load_15, %sub_in_load_3
  %tmp_9_3 = mul nsw i32 %tmp_8_3, %tmp_8_3
  %dist0_3 = add nsw i32 %tmp_9_3, %tmp_5_3
  %tmp_3_23 = sub nsw i32 %sub_in_load_14, %sub_in_load_4
  %tmp_1_3 = mul nsw i32 %tmp_3_23, %tmp_3_23
  %tmp_10_3 = sub nsw i32 %sub_in_load_15, %sub_in_load_5
  %tmp_11_3 = mul nsw i32 %tmp_10_3, %tmp_10_3
  %dist1_3 = add nsw i32 %tmp_11_3, %tmp_1_3
  %tmp_12_3 = sub nsw i32 %sub_in_load_14, %sub_in_load_6
  %tmp_13_3 = mul nsw i32 %tmp_12_3, %tmp_12_3
  %tmp_14_3 = sub nsw i32 %sub_in_load_15, %sub_in_load_7
  %tmp_15_3 = mul nsw i32 %tmp_14_3, %tmp_14_3
  %dist2_3 = add nsw i32 %tmp_15_3, %tmp_13_3
  %tmp_16_3 = sub nsw i32 %sub_in_load_14, %sub_in_load_8
  %tmp_17_3 = mul nsw i32 %tmp_16_3, %tmp_16_3
  %tmp_18_3 = sub nsw i32 %sub_in_load_15, %sub_in_load_9
  %tmp_19_3 = mul nsw i32 %tmp_18_3, %tmp_18_3
  %dist3_3 = add nsw i32 %tmp_19_3, %tmp_17_3
  %tmp_20_3 = icmp sgt i32 %dist0_3, %dist1_3
  %tmp_21_3 = icmp sgt i32 %dist0_3, %dist2_3
  %tmp_22_3 = icmp sgt i32 %dist0_3, %dist3_3
  %tmp10 = or i1 %tmp_21_3, %tmp_22_3
  %or_cond1_3 = or i1 %tmp10, %tmp_20_3
  br i1 %or_cond1_3, label %._crit_edge.3, label %17

._crit_edge10.2:                                  ; preds = %15, %._crit_edge9.2
  %tmp11 = and i1 %tmp_28_2, %tmp_32_2
  %or_cond7_2 = and i1 %tmp11, %tmp_22_2
  br i1 %or_cond7_2, label %16, label %._crit_edge11.2

._crit_edge9.2:                                   ; preds = %14, %._crit_edge.2
  %slt7 = icmp slt i32 %dist2_2, %dist0_2
  %rev7 = xor i1 %slt7, true
  %slt8 = icmp slt i32 %dist2_2, %dist1_2
  %rev8 = xor i1 %slt8, true
  %tmp_32_2 = icmp sgt i32 %dist2_2, %dist3_2
  %tmp12 = or i1 %rev7, %tmp_32_2
  %or_cond5_2 = or i1 %tmp12, %rev8
  br i1 %or_cond5_2, label %._crit_edge10.2, label %15

._crit_edge.2:                                    ; preds = %13, %._crit_edge11.1
  %slt6 = icmp slt i32 %dist1_2, %dist0_2
  %rev6 = xor i1 %slt6, true
  %tmp_27_2 = icmp sgt i32 %dist1_2, %dist2_2
  %tmp_28_2 = icmp sgt i32 %dist1_2, %dist3_2
  %tmp13 = or i1 %tmp_27_2, %tmp_28_2
  %or_cond3_2 = or i1 %tmp13, %rev6
  br i1 %or_cond3_2, label %._crit_edge9.2, label %14

; <label>:13                                      ; preds = %._crit_edge11.1
  %sub_out_load_24 = load i32* %sub_out_addr_10, align 4
  %tmp_23_2 = add nsw i32 %sub_out_load_24, 1
  store i32 %tmp_23_2, i32* %sub_out_addr_10, align 4
  %sub_out_load_25 = load i32* %sub_out_addr, align 4
  %tmp_24_2 = add nsw i32 %sub_out_load_25, %sub_in_load_12
  store i32 %tmp_24_2, i32* %sub_out_addr, align 4
  %sub_out_load_26 = load i32* %sub_out_addr_11, align 4
  %tmp_25_2 = add nsw i32 %sub_out_load_26, %sub_in_load_13
  store i32 %tmp_25_2, i32* %sub_out_addr_11, align 4
  br label %._crit_edge.2

; <label>:14                                      ; preds = %._crit_edge.2
  %sub_out_load_27 = load i32* %sub_out_addr_7, align 4
  %tmp_29_2 = add nsw i32 %sub_out_load_27, 1
  store i32 %tmp_29_2, i32* %sub_out_addr_7, align 4
  %sub_out_load_28 = load i32* %sub_out_addr_8, align 4
  %tmp_30_2 = add nsw i32 %sub_out_load_28, %sub_in_load_12
  store i32 %tmp_30_2, i32* %sub_out_addr_8, align 4
  %sub_out_load_29 = load i32* %sub_out_addr_9, align 4
  %tmp_31_2 = add nsw i32 %sub_out_load_29, %sub_in_load_13
  store i32 %tmp_31_2, i32* %sub_out_addr_9, align 4
  br label %._crit_edge9.2

; <label>:15                                      ; preds = %._crit_edge9.2
  %sub_out_load_30 = load i32* %sub_out_addr_4, align 4
  %tmp_33_2 = add nsw i32 %sub_out_load_30, 1
  store i32 %tmp_33_2, i32* %sub_out_addr_4, align 4
  %sub_out_load_31 = load i32* %sub_out_addr_5, align 4
  %tmp_34_2 = add nsw i32 %sub_out_load_31, %sub_in_load_12
  store i32 %tmp_34_2, i32* %sub_out_addr_5, align 4
  %sub_out_load_32 = load i32* %sub_out_addr_6, align 4
  %tmp_35_2 = add nsw i32 %sub_out_load_32, %sub_in_load_13
  store i32 %tmp_35_2, i32* %sub_out_addr_6, align 4
  br label %._crit_edge10.2

; <label>:16                                      ; preds = %._crit_edge10.2
  %sub_out_load_33 = load i32* %sub_out_addr_1, align 4
  %tmp_36_2 = add nsw i32 %sub_out_load_33, 1
  store i32 %tmp_36_2, i32* %sub_out_addr_1, align 4
  %sub_out_load_34 = load i32* %sub_out_addr_2, align 4
  %tmp_37_2 = add nsw i32 %sub_out_load_34, %sub_in_load_12
  store i32 %tmp_37_2, i32* %sub_out_addr_2, align 4
  %sub_out_load_35 = load i32* %sub_out_addr_3, align 4
  %tmp_38_2 = add nsw i32 %sub_out_load_35, %sub_in_load_13
  store i32 %tmp_38_2, i32* %sub_out_addr_3, align 4
  br label %._crit_edge11.2

._crit_edge11.3:                                  ; preds = %20, %._crit_edge10.3
  %i_3_3 = add i11 %i_s, 4
  br label %3

._crit_edge10.3:                                  ; preds = %19, %._crit_edge9.3
  %tmp14 = and i1 %tmp_28_3, %tmp_32_3
  %or_cond7_3 = and i1 %tmp14, %tmp_22_3
  br i1 %or_cond7_3, label %20, label %._crit_edge11.3

._crit_edge9.3:                                   ; preds = %18, %._crit_edge.3
  %slt10 = icmp slt i32 %dist2_3, %dist0_3
  %rev10 = xor i1 %slt10, true
  %slt11 = icmp slt i32 %dist2_3, %dist1_3
  %rev11 = xor i1 %slt11, true
  %tmp_32_3 = icmp sgt i32 %dist2_3, %dist3_3
  %tmp15 = or i1 %rev10, %tmp_32_3
  %or_cond5_3 = or i1 %tmp15, %rev11
  br i1 %or_cond5_3, label %._crit_edge10.3, label %19

._crit_edge.3:                                    ; preds = %17, %._crit_edge11.2
  %slt9 = icmp slt i32 %dist1_3, %dist0_3
  %rev9 = xor i1 %slt9, true
  %tmp_27_3 = icmp sgt i32 %dist1_3, %dist2_3
  %tmp_28_3 = icmp sgt i32 %dist1_3, %dist3_3
  %tmp16 = or i1 %tmp_27_3, %tmp_28_3
  %or_cond3_3 = or i1 %tmp16, %rev9
  br i1 %or_cond3_3, label %._crit_edge9.3, label %18

; <label>:17                                      ; preds = %._crit_edge11.2
  %sub_out_load_36 = load i32* %sub_out_addr_10, align 4
  %tmp_23_3 = add nsw i32 %sub_out_load_36, 1
  store i32 %tmp_23_3, i32* %sub_out_addr_10, align 4
  %sub_out_load_37 = load i32* %sub_out_addr, align 4
  %tmp_24_3 = add nsw i32 %sub_out_load_37, %sub_in_load_14
  store i32 %tmp_24_3, i32* %sub_out_addr, align 4
  %sub_out_load_38 = load i32* %sub_out_addr_11, align 4
  %tmp_25_3 = add nsw i32 %sub_out_load_38, %sub_in_load_15
  store i32 %tmp_25_3, i32* %sub_out_addr_11, align 4
  br label %._crit_edge.3

; <label>:18                                      ; preds = %._crit_edge.3
  %sub_out_load_39 = load i32* %sub_out_addr_7, align 4
  %tmp_29_3 = add nsw i32 %sub_out_load_39, 1
  store i32 %tmp_29_3, i32* %sub_out_addr_7, align 4
  %sub_out_load_40 = load i32* %sub_out_addr_8, align 4
  %tmp_30_3 = add nsw i32 %sub_out_load_40, %sub_in_load_14
  store i32 %tmp_30_3, i32* %sub_out_addr_8, align 4
  %sub_out_load_41 = load i32* %sub_out_addr_9, align 4
  %tmp_31_3 = add nsw i32 %sub_out_load_41, %sub_in_load_15
  store i32 %tmp_31_3, i32* %sub_out_addr_9, align 4
  br label %._crit_edge9.3

; <label>:19                                      ; preds = %._crit_edge9.3
  %sub_out_load_42 = load i32* %sub_out_addr_4, align 4
  %tmp_33_3 = add nsw i32 %sub_out_load_42, 1
  store i32 %tmp_33_3, i32* %sub_out_addr_4, align 4
  %sub_out_load_43 = load i32* %sub_out_addr_5, align 4
  %tmp_34_3 = add nsw i32 %sub_out_load_43, %sub_in_load_14
  store i32 %tmp_34_3, i32* %sub_out_addr_5, align 4
  %sub_out_load_44 = load i32* %sub_out_addr_6, align 4
  %tmp_35_3 = add nsw i32 %sub_out_load_44, %sub_in_load_15
  store i32 %tmp_35_3, i32* %sub_out_addr_6, align 4
  br label %._crit_edge10.3

; <label>:20                                      ; preds = %._crit_edge10.3
  %sub_out_load_45 = load i32* %sub_out_addr_1, align 4
  %tmp_36_3 = add nsw i32 %sub_out_load_45, 1
  store i32 %tmp_36_3, i32* %sub_out_addr_1, align 4
  %sub_out_load_46 = load i32* %sub_out_addr_2, align 4
  %tmp_37_3 = add nsw i32 %sub_out_load_46, %sub_in_load_14
  store i32 %tmp_37_3, i32* %sub_out_addr_2, align 4
  %sub_out_load_47 = load i32* %sub_out_addr_3, align 4
  %tmp_38_3 = add nsw i32 %sub_out_load_47, %sub_in_load_15
  store i32 %tmp_38_3, i32* %sub_out_addr_3, align 4
  br label %._crit_edge11.3

; <label>:21                                      ; preds = %3
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

define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11
  %empty_24 = zext i1 %1 to i11
  %empty_25 = trunc i11 %empty to i10
  %empty_26 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %empty_24, i32 1, i32 10)
  %empty_27 = or i10 %empty_25, %empty_26
  %empty_28 = call i11 @_ssdm_op_PartSet.i11.i11.i10.i32.i32(i11 %empty_24, i10 %empty_27, i32 1, i32 10)
  ret i11 %empty_28
}

define weak i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_29 = trunc i11 %empty to i9
  ret i9 %empty_29
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9, i2) nounwind readnone {
entry:
  %empty = zext i9 %0 to i11
  %empty_30 = zext i2 %1 to i11
  %empty_31 = trunc i11 %empty to i9
  %empty_32 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %empty_30, i32 2, i32 10)
  %empty_33 = or i9 %empty_31, %empty_32
  %empty_34 = call i11 @_ssdm_op_PartSet.i11.i11.i9.i32.i32(i11 %empty_30, i9 %empty_33, i32 2, i32 10)
  ret i11 %empty_34
}

define weak i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_35 = trunc i11 %empty to i8
  ret i8 %empty_35
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i1.i1.i1(i8, i1, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %2 to i2
  %empty_36 = zext i1 %3 to i2
  %empty_37 = trunc i2 %empty to i1
  %empty_38 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %empty_36, i32 1)
  %empty_39 = or i1 %empty_37, %empty_38
  %empty_40 = call i2 @_ssdm_op_PartSet.i2.i2.i1.i32.i32(i2 %empty_36, i1 %empty_39, i32 1, i32 1)
  %empty_41 = zext i1 %1 to i3
  %empty_42 = zext i2 %empty_40 to i3
  %empty_43 = trunc i3 %empty_41 to i1
  %empty_44 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %empty_42, i32 2)
  %empty_45 = or i1 %empty_43, %empty_44
  %empty_46 = call i3 @_ssdm_op_PartSet.i3.i3.i1.i32.i32(i3 %empty_42, i1 %empty_45, i32 2, i32 2)
  %empty_47 = zext i8 %0 to i11
  %empty_48 = zext i3 %empty_46 to i11
  %empty_49 = trunc i11 %empty_47 to i8
  %empty_50 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %empty_48, i32 3, i32 10)
  %empty_51 = or i8 %empty_49, %empty_50
  %empty_52 = call i11 @_ssdm_op_PartSet.i11.i11.i8.i32.i32(i11 %empty_48, i8 %empty_51, i32 3, i32 10)
  ret i11 %empty_52
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11
  %empty_53 = zext i3 %1 to i11
  %empty_54 = trunc i11 %empty to i8
  %empty_55 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %empty_53, i32 3, i32 10)
  %empty_56 = or i8 %empty_54, %empty_55
  %empty_57 = call i11 @_ssdm_op_PartSet.i11.i11.i8.i32.i32(i11 %empty_53, i8 %empty_56, i32 3, i32 10)
  ret i11 %empty_57
}

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_58 = trunc i11 %empty to i10
  ret i10 %empty_58
}

define weak i11 @_ssdm_op_PartSet.i11.i11.i10.i32.i32(i11, i10, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i10(i11 %0, i10 %1, i32 %2, i32 %3)
  ret i11 %empty
}

define weak i11 @_ssdm_op_PartSet.i11.i11.i9.i32.i32(i11, i9, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i9(i11 %0, i9 %1, i32 %2, i32 %3)
  ret i11 %empty
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i2 @_ssdm_op_PartSet.i2.i2.i1.i32.i32(i2, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i2 @llvm.part.set.i2.i1(i2 %0, i1 %1, i32 %2, i32 %3)
  ret i2 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2
  %empty_59 = shl i2 1, %empty
  %empty_60 = and i2 %0, %empty_59
  %empty_61 = icmp ne i2 %empty_60, 0
  ret i1 %empty_61
}

declare i1 @_ssdm_op_PartSelect.i1.i3.i32.i32(i3, i32, i32) nounwind readnone

define weak i3 @_ssdm_op_PartSet.i3.i3.i1.i32.i32(i3, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i3 @llvm.part.set.i3.i1(i3 %0, i1 %1, i32 %2, i32 %3)
  ret i3 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3
  %empty_62 = shl i3 1, %empty
  %empty_63 = and i3 %0, %empty_62
  %empty_64 = icmp ne i3 %empty_63, 0
  ret i1 %empty_64
}

define weak i11 @_ssdm_op_PartSet.i11.i11.i8.i32.i32(i11, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i8(i11 %0, i8 %1, i32 %2, i32 %3)
  ret i11 %empty
}

declare i11 @llvm.part.set.i11.i10(i11, i10, i32, i32) nounwind readnone

declare i11 @llvm.part.set.i11.i9(i11, i9, i32, i32) nounwind readnone

declare i2 @llvm.part.set.i2.i1(i2, i1, i32, i32) nounwind readnone

declare i3 @llvm.part.set.i3.i1(i3, i1, i32, i32) nounwind readnone

declare i11 @llvm.part.set.i11.i8(i11, i8, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"sub_in", metadata !4, metadata !"int"}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 2055, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"sub_out", metadata !10, metadata !"int"}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 11, i32 1}
