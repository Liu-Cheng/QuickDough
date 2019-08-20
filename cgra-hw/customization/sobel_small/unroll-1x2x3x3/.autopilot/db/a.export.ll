; ModuleID = 'D:/minibench/customization/sobel_small/unroll-1x2x3x3/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1
@p_str4 = private unnamed_addr constant [16 x i8] c"sobel_ip_label3\00", align 1
@str = internal constant [9 x i8] c"sobel_ip\00"

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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

define void @sobel_ip([274 x i32]* %sub_in, [256 x i32]* %sub_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([274 x i32]* %sub_in) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i32]* %sub_out) nounwind, !map !6
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  %Gx = alloca [9 x i32], align 4
  %Gy = alloca [9 x i32], align 4
  call void (...)* @_ssdm_op_SpecMemCore([256 x i32]* %sub_out, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([274 x i32]* %sub_in, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str2, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [17 x i8]* @p_str3) nounwind
  br label %.loopexit

.loopexit:                                        ; preds = %1, %0
  %i = phi i2 [ 0, %0 ], [ %i_2, %1 ]
  %i_cast = zext i2 %i to i5
  %exitcond1 = icmp eq i2 %i, -1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %i_2 = add i2 %i, 1
  br i1 %exitcond1, label %.preheader.preheader, label %.preheader10

.preheader.preheader:                             ; preds = %.loopexit
  %Gx_addr_1 = getelementptr [9 x i32]* %Gx, i64 0, i64 0
  %Gx_load = load i32* %Gx_addr_1, align 16
  %Gy_addr_1 = getelementptr [9 x i32]* %Gy, i64 0, i64 0
  %Gy_load = load i32* %Gy_addr_1, align 16
  %Gx_addr_2 = getelementptr [9 x i32]* %Gx, i64 0, i64 1
  %Gx_load_1 = load i32* %Gx_addr_2, align 4
  %Gy_addr_2 = getelementptr [9 x i32]* %Gy, i64 0, i64 1
  %Gy_load_1 = load i32* %Gy_addr_2, align 4
  %Gx_addr_3 = getelementptr [9 x i32]* %Gx, i64 0, i64 2
  %Gx_load_2 = load i32* %Gx_addr_3, align 8
  %Gy_addr_3 = getelementptr [9 x i32]* %Gy, i64 0, i64 2
  %Gy_load_2 = load i32* %Gy_addr_3, align 8
  %Gx_addr_4 = getelementptr [9 x i32]* %Gx, i64 0, i64 3
  %Gx_load_3 = load i32* %Gx_addr_4, align 4
  %Gy_addr_4 = getelementptr [9 x i32]* %Gy, i64 0, i64 3
  %Gy_load_3 = load i32* %Gy_addr_4, align 4
  %Gx_addr_5 = getelementptr [9 x i32]* %Gx, i64 0, i64 4
  %Gx_load_4 = load i32* %Gx_addr_5, align 4
  %Gy_addr_5 = getelementptr [9 x i32]* %Gy, i64 0, i64 4
  %Gy_load_4 = load i32* %Gy_addr_5, align 4
  %Gx_addr_6 = getelementptr [9 x i32]* %Gx, i64 0, i64 5
  %Gx_load_5 = load i32* %Gx_addr_6, align 4
  %Gy_addr_6 = getelementptr [9 x i32]* %Gy, i64 0, i64 5
  %Gy_load_5 = load i32* %Gy_addr_6, align 4
  %Gx_addr_7 = getelementptr [9 x i32]* %Gx, i64 0, i64 6
  %Gx_load_6 = load i32* %Gx_addr_7, align 8
  %Gy_addr_7 = getelementptr [9 x i32]* %Gy, i64 0, i64 6
  %Gy_load_6 = load i32* %Gy_addr_7, align 8
  %Gx_addr_8 = getelementptr [9 x i32]* %Gx, i64 0, i64 7
  %Gx_load_7 = load i32* %Gx_addr_8, align 4
  %Gy_addr_8 = getelementptr [9 x i32]* %Gy, i64 0, i64 7
  %Gy_load_7 = load i32* %Gy_addr_8, align 4
  %Gx_addr_9 = getelementptr [9 x i32]* %Gx, i64 0, i64 8
  %Gx_load_8 = load i32* %Gx_addr_9, align 8
  %Gy_addr_9 = getelementptr [9 x i32]* %Gy, i64 0, i64 8
  %Gy_load_8 = load i32* %Gy_addr_9, align 8
  br label %.preheader

.preheader10:                                     ; preds = %.loopexit
  %p_shl = call i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2 %i, i2 0)
  %p_shl_cast = zext i4 %p_shl to i5
  %tmp = sub i5 %p_shl_cast, %i_cast
  %tmp_cast = sext i5 %tmp to i9
  br label %1

; <label>:1                                       ; preds = %2, %.preheader10
  %j = phi i2 [ %j_1, %2 ], [ 0, %.preheader10 ]
  %j_cast = zext i2 %j to i9
  %exitcond3 = icmp eq i2 %j, -1
  %empty_40 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 3, i64 3, i64 3) nounwind
  %j_1 = add i2 %j, 1
  br i1 %exitcond3, label %.loopexit, label %2

; <label>:2                                       ; preds = %1
  %tmp3 = call i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7 -64, i2 %j)
  %tmp_8 = add i9 %tmp3, %tmp_cast
  %tmp_9 = zext i9 %tmp_8 to i64
  %sub_in_addr = getelementptr [274 x i32]* %sub_in, i64 0, i64 %tmp_9
  %sub_in_load = load i32* %sub_in_addr, align 4
  %tmp_trn_cast = zext i2 %j to i6
  %p_addr_cast = sext i5 %tmp to i6
  %p_addr1 = add i6 %p_addr_cast, %tmp_trn_cast
  %p_addr1_cast = sext i6 %p_addr1 to i32
  %tmp_47 = zext i32 %p_addr1_cast to i64
  %Gx_addr = getelementptr [9 x i32]* %Gx, i64 0, i64 %tmp_47
  store i32 %sub_in_load, i32* %Gx_addr, align 4
  %tmp4 = add i9 %j_cast, -247
  %tmp_7 = add i9 %tmp4, %tmp_cast
  %tmp_10 = zext i9 %tmp_7 to i64
  %sub_in_addr_1 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %tmp_10
  %sub_in_load_1 = load i32* %sub_in_addr_1, align 4
  %Gy_addr = getelementptr [9 x i32]* %Gy, i64 0, i64 %tmp_47
  store i32 %sub_in_load_1, i32* %Gy_addr, align 4
  br label %1

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.0.0.0_ifconv
  %i_1 = phi i8 [ %i_3, %._crit_edge.0.0.0_ifconv ], [ 0, %.preheader.preheader ]
  %exitcond2 = icmp eq i8 %i_1, -128
  %i_3 = add i8 %i_1, 1
  br i1 %exitcond2, label %3, label %._crit_edge.0.0.0_ifconv

._crit_edge.0.0.0_ifconv:                         ; preds = %.preheader
  %empty_41 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 128, i64 128, i64 128) nounwind
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str4) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str4) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind
  %tmp_1 = add i8 %i_1, -1
  %tmp_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_1, i3 1)
  %tmp_6_cast = sext i11 %tmp_2 to i12
  %tmp_3 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_1, i3 2)
  %tmp_cast_42 = sext i11 %tmp_3 to i12
  %tmp_5 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_1, i3 3)
  %tmp_11_cast = sext i11 %tmp_5 to i12
  %tmp_s = add i12 %tmp_6_cast, -1
  %tmp_6 = trunc i12 %tmp_s to i2
  %tmp_11 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_s, i32 2, i32 11)
  %tmp_12 = sext i10 %tmp_11 to i12
  %mem_index_gep = add i12 %tmp_12, 72
  %adjSize558_cast = zext i12 %mem_index_gep to i13
  %addrCmp = icmp ult i10 %tmp_11, -72
  %addrCmp1 = icmp ult i12 %mem_index_gep, 346
  %gepindex = add i13 %adjSize558_cast, -72
  %gepindex1 = select i1 %addrCmp, i13 %gepindex, i13 273
  %gepindex2 = select i1 %addrCmp1, i13 %gepindex1, i13 273
  %gepindex2_cast = sext i13 %gepindex2 to i64
  %sub_in_addr_2 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2_cast
  %sub_in_load_2 = load i32* %sub_in_addr_2, align 4
  %start_pos = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_6, i3 0)
  %start_pos_cast = zext i5 %start_pos to i64
  %end_pos = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_6, i3 -1)
  %end_pos957_cast = zext i5 %end_pos to i64
  %call_get_range = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_2, i64 %start_pos_cast, i64 %end_pos957_cast)
  %tmp_13 = trunc i32 %call_get_range to i8
  %tmp_14 = zext i8 %tmp_13 to i32
  %tmp_15 = mul nsw i32 %Gx_load, %tmp_14
  %tmp_16 = mul nsw i32 %Gy_load, %tmp_14
  %sel_tmp = icmp eq i8 %i_1, 127
  %sel_tmp1 = icmp eq i8 %i_1, 0
  %sel_tmp2 = or i1 %sel_tmp, %sel_tmp1
  %sumy1_2 = select i1 %sel_tmp2, i32 255, i32 %tmp_16
  %sumx1_2 = select i1 %sel_tmp2, i32 255, i32 %tmp_15
  %tmp_17 = add i12 %tmp_cast_42, -1
  %tmp_18 = trunc i12 %tmp_17 to i2
  %tmp_19 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_17, i32 2, i32 11)
  %tmp_22 = sext i10 %tmp_19 to i12
  %mem_index_gep1 = add i12 %tmp_22, 72
  %adjSize561_cast = zext i12 %mem_index_gep1 to i13
  %addrCmp2 = icmp ult i10 %tmp_19, -72
  %addrCmp3 = icmp ult i12 %mem_index_gep1, 346
  %gepindex3 = add i13 %adjSize561_cast, -72
  %gepindex4 = select i1 %addrCmp2, i13 %gepindex3, i13 273
  %gepindex5 = select i1 %addrCmp3, i13 %gepindex4, i13 273
  %gepindex2567_cast = sext i13 %gepindex5 to i64
  %sub_in_addr_3 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2567_cast
  %sub_in_load_3 = load i32* %sub_in_addr_3, align 4
  %start_pos1 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_18, i3 0)
  %start_pos570_cast = zext i5 %start_pos1 to i64
  %end_pos1 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_18, i3 -1)
  %end_pos571958_cast = zext i5 %end_pos1 to i64
  %call_get_range1 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_3, i64 %start_pos570_cast, i64 %end_pos571958_cast)
  %tmp_23 = trunc i32 %call_get_range1 to i8
  %tmp_24 = zext i8 %tmp_23 to i32
  %tmp_25 = mul nsw i32 %Gx_load, %tmp_24
  %tmp_26 = mul nsw i32 %Gy_load, %tmp_24
  %sumy2_2 = select i1 %sel_tmp2, i32 255, i32 %tmp_26
  %sumx2_2 = select i1 %sel_tmp2, i32 255, i32 %tmp_25
  %tmp_27 = add i12 %tmp_11_cast, -1
  %tmp_28 = trunc i12 %tmp_27 to i2
  %tmp_29 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_27, i32 2, i32 11)
  %tmp_30 = sext i10 %tmp_29 to i12
  %mem_index_gep2 = add i12 %tmp_30, 72
  %adjSize573_cast = zext i12 %mem_index_gep2 to i13
  %addrCmp4 = icmp ult i10 %tmp_29, -72
  %addrCmp5 = icmp ult i12 %mem_index_gep2, 346
  %gepindex6 = add i13 %adjSize573_cast, -72
  %gepindex7 = select i1 %addrCmp4, i13 %gepindex6, i13 273
  %gepindex8 = select i1 %addrCmp5, i13 %gepindex7, i13 273
  %gepindex2579_cast = sext i13 %gepindex8 to i64
  %sub_in_addr_4 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2579_cast
  %sub_in_load_4 = load i32* %sub_in_addr_4, align 4
  %start_pos2 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_28, i3 0)
  %start_pos582_cast = zext i5 %start_pos2 to i64
  %end_pos2 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_28, i3 -1)
  %end_pos583959_cast = zext i5 %end_pos2 to i64
  %call_get_range2 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_4, i64 %start_pos582_cast, i64 %end_pos583959_cast)
  %tmp_31 = trunc i32 %call_get_range2 to i8
  %tmp_32 = zext i8 %tmp_31 to i32
  %tmp_33 = mul nsw i32 %Gx_load, %tmp_32
  %tmp_34 = mul nsw i32 %Gy_load, %tmp_32
  %sumx3_2 = select i1 %sel_tmp2, i32 255, i32 %tmp_33
  %sumy3_2 = select i1 %sel_tmp2, i32 255, i32 %tmp_34
  %tmp_51_0_0_1 = mul nsw i32 %Gx_load_1, %tmp_24
  %sumx1_3_0_0_1 = add nsw i32 %tmp_51_0_0_1, %sumx1_2
  %tmp_52_0_0_1 = mul nsw i32 %Gy_load_1, %tmp_24
  %sumy1_3_0_0_1 = add nsw i32 %tmp_52_0_0_1, %sumy1_2
  %sumy1_2_0_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_0_0_1
  %sumx1_2_0_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_0_0_1
  %tmp_58_0_0_1 = mul nsw i32 %Gx_load_1, %tmp_32
  %sumx2_3_0_0_1 = add nsw i32 %tmp_58_0_0_1, %sumx2_2
  %tmp_59_0_0_1 = mul nsw i32 %Gy_load_1, %tmp_32
  %sumy2_3_0_0_1 = add nsw i32 %tmp_59_0_0_1, %sumy2_2
  %sumy2_2_0_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_0_0_1
  %sumx2_2_0_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_0_0_1
  %tmp_35 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_1, i1 false)
  %tmp_36 = sext i9 %tmp_35 to i12
  %mem_index_gep3 = add i12 %tmp_36, 72
  %adjSize585_cast = zext i12 %mem_index_gep3 to i13
  %addrCmp6 = icmp ult i9 %tmp_35, -72
  %addrCmp7 = icmp ult i12 %mem_index_gep3, 346
  %gepindex9 = add i13 %adjSize585_cast, -72
  %gepindex10 = select i1 %addrCmp6, i13 %gepindex9, i13 273
  %gepindex11 = select i1 %addrCmp7, i13 %gepindex10, i13 273
  %gepindex2591_cast = sext i13 %gepindex11 to i64
  %sub_in_addr_5 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2591_cast
  %sub_in_load_5 = load i32* %sub_in_addr_5, align 4
  %call_get_range596_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_5, i64 24, i64 31)
  %tmp_62_0_0_1 = zext i8 %call_get_range596_part to i32
  %tmp_65_0_0_1 = mul nsw i32 %Gx_load_1, %tmp_62_0_0_1
  %sumx3_3_0_0_1 = add nsw i32 %tmp_65_0_0_1, %sumx3_2
  %tmp_66_0_0_1 = mul nsw i32 %Gy_load_1, %tmp_62_0_0_1
  %sumy3_3_0_0_1 = add nsw i32 %tmp_66_0_0_1, %sumy3_2
  %sumx3_2_0_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx3_3_0_0_1
  %sumy3_2_0_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy3_3_0_0_1
  %tmp_51_0_0_2 = mul nsw i32 %Gx_load_2, %tmp_32
  %sumx1_3_0_0_2 = add nsw i32 %tmp_51_0_0_2, %sumx1_2_0_0_1
  %tmp_52_0_0_2 = mul nsw i32 %Gy_load_2, %tmp_32
  %sumy1_3_0_0_2 = add nsw i32 %tmp_52_0_0_2, %sumy1_2_0_0_1
  %sumy1_2_0_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_0_0_2
  %sumx1_2_0_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_0_0_2
  %tmp_58_0_0_2 = mul nsw i32 %Gx_load_2, %tmp_62_0_0_1
  %sumx2_3_0_0_2 = add nsw i32 %tmp_58_0_0_2, %sumx2_2_0_0_1
  %tmp_59_0_0_2 = mul nsw i32 %Gy_load_2, %tmp_62_0_0_1
  %sumy2_3_0_0_2 = add nsw i32 %tmp_59_0_0_2, %sumy2_2_0_0_1
  %sumy2_2_0_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_0_0_2
  %sumx2_2_0_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_0_0_2
  %tmp_60_0_0_2 = add i12 %tmp_11_cast, 1
  %tmp_37 = trunc i12 %tmp_60_0_0_2 to i2
  %tmp_38 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_60_0_0_2, i32 2, i32 11)
  %tmp_39 = sext i10 %tmp_38 to i12
  %mem_index_gep4 = add i12 %tmp_39, 72
  %adjSize597_cast = zext i12 %mem_index_gep4 to i13
  %addrCmp8 = icmp ult i10 %tmp_38, -72
  %addrCmp9 = icmp ult i12 %mem_index_gep4, 346
  %gepindex12 = add i13 %adjSize597_cast, -72
  %gepindex13 = select i1 %addrCmp8, i13 %gepindex12, i13 273
  %gepindex14 = select i1 %addrCmp9, i13 %gepindex13, i13 273
  %gepindex2603_cast = sext i13 %gepindex14 to i64
  %sub_in_addr_6 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2603_cast
  %sub_in_load_6 = load i32* %sub_in_addr_6, align 4
  %start_pos3 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_37, i3 0)
  %start_pos606_cast = zext i5 %start_pos3 to i64
  %end_pos3 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_37, i3 -1)
  %end_pos607961_cast = zext i5 %end_pos3 to i64
  %call_get_range3 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_6, i64 %start_pos606_cast, i64 %end_pos607961_cast)
  %tmp_40 = trunc i32 %call_get_range3 to i8
  %tmp_62_0_0_2 = zext i8 %tmp_40 to i32
  %tmp_65_0_0_2 = mul nsw i32 %Gx_load_2, %tmp_62_0_0_2
  %sumx3_3_0_0_2 = add nsw i32 %tmp_65_0_0_2, %sumx3_2_0_0_1
  %tmp_66_0_0_2 = mul nsw i32 %Gy_load_2, %tmp_62_0_0_2
  %sumy3_3_0_0_2 = add nsw i32 %tmp_66_0_0_2, %sumy3_2_0_0_1
  %sumx3_2_0_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx3_3_0_0_2
  %sumy3_2_0_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy3_3_0_0_2
  %tmp_41 = trunc i8 %i_1 to i7
  %tmp_35_0_1 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %tmp_41, i3 1)
  %tmp_35_0_1_cast = zext i10 %tmp_35_0_1 to i11
  %tmp_37_0_1 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %tmp_41, i3 2)
  %tmp_37_0_1_cast = zext i10 %tmp_37_0_1 to i11
  %tmp_38_0_1 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %tmp_41, i3 3)
  %tmp_38_0_1_cast = zext i10 %tmp_38_0_1 to i11
  %tmp_46_0_1 = add i11 %tmp_35_0_1_cast, -1
  %tmp_43 = trunc i11 %tmp_46_0_1 to i2
  %tmp_44 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %tmp_46_0_1, i32 2, i32 10)
  %tmp_45 = sext i9 %tmp_44 to i12
  %mem_index_gep5 = add i12 %tmp_45, 72
  %adjSize609_cast = zext i12 %mem_index_gep5 to i13
  %addrCmp10 = icmp ult i9 %tmp_44, -72
  %gepindex15 = add i13 %adjSize609_cast, -72
  %gepindex16 = select i1 %addrCmp10, i13 %gepindex15, i13 273
  %gepindex2615_cast = sext i13 %gepindex16 to i64
  %sub_in_addr_7 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2615_cast
  %sub_in_load_7 = load i32* %sub_in_addr_7, align 4
  %start_pos4 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_43, i3 0)
  %start_pos618_cast = zext i5 %start_pos4 to i64
  %end_pos4 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_43, i3 -1)
  %end_pos619962_cast = zext i5 %end_pos4 to i64
  %call_get_range4 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_7, i64 %start_pos618_cast, i64 %end_pos619962_cast)
  %tmp_46 = trunc i32 %call_get_range4 to i8
  %tmp_48_0_1 = zext i8 %tmp_46 to i32
  %tmp_51_0_1 = mul nsw i32 %Gx_load_3, %tmp_48_0_1
  %sumx1_3_0_1 = add nsw i32 %tmp_51_0_1, %sumx1_2_0_0_2
  %tmp_52_0_1 = mul nsw i32 %Gy_load_3, %tmp_48_0_1
  %sumy1_3_0_1 = add nsw i32 %tmp_52_0_1, %sumy1_2_0_0_2
  %sumy1_2_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_0_1
  %sumx1_2_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_0_1
  %tmp_53_0_1 = add i11 %tmp_37_0_1_cast, -1
  %tmp_48 = trunc i11 %tmp_53_0_1 to i2
  %tmp_49 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %tmp_53_0_1, i32 2, i32 10)
  %tmp_50 = sext i9 %tmp_49 to i12
  %mem_index_gep6 = add i12 %tmp_50, 72
  %adjSize621_cast = zext i12 %mem_index_gep6 to i13
  %addrCmp11 = icmp ult i9 %tmp_49, -72
  %gepindex17 = add i13 %adjSize621_cast, -72
  %gepindex18 = select i1 %addrCmp11, i13 %gepindex17, i13 273
  %gepindex2627_cast = sext i13 %gepindex18 to i64
  %sub_in_addr_8 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2627_cast
  %sub_in_load_8 = load i32* %sub_in_addr_8, align 4
  %start_pos5 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_48, i3 0)
  %start_pos630_cast = zext i5 %start_pos5 to i64
  %end_pos5 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_48, i3 -1)
  %end_pos631963_cast = zext i5 %end_pos5 to i64
  %call_get_range5 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_8, i64 %start_pos630_cast, i64 %end_pos631963_cast)
  %tmp_51 = trunc i32 %call_get_range5 to i8
  %tmp_55_0_1 = zext i8 %tmp_51 to i32
  %tmp_58_0_1 = mul nsw i32 %Gx_load_3, %tmp_55_0_1
  %sumx2_3_0_1 = add nsw i32 %tmp_58_0_1, %sumx2_2_0_0_2
  %tmp_59_0_1 = mul nsw i32 %Gy_load_3, %tmp_55_0_1
  %sumy2_3_0_1 = add nsw i32 %tmp_59_0_1, %sumy2_2_0_0_2
  %sumy2_2_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_0_1
  %sumx2_2_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_0_1
  %tmp_60_0_1 = add i11 %tmp_38_0_1_cast, -1
  %tmp_52 = trunc i11 %tmp_60_0_1 to i2
  %tmp_53 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %tmp_60_0_1, i32 2, i32 10)
  %tmp_54 = sext i9 %tmp_53 to i12
  %mem_index_gep7 = add i12 %tmp_54, 72
  %adjSize633_cast = zext i12 %mem_index_gep7 to i13
  %addrCmp12 = icmp ult i9 %tmp_53, -72
  %gepindex19 = add i13 %adjSize633_cast, -72
  %gepindex20 = select i1 %addrCmp12, i13 %gepindex19, i13 273
  %gepindex2639_cast = sext i13 %gepindex20 to i64
  %sub_in_addr_9 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2639_cast
  %sub_in_load_9 = load i32* %sub_in_addr_9, align 4
  %start_pos6 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_52, i3 0)
  %start_pos642_cast = zext i5 %start_pos6 to i64
  %end_pos6 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_52, i3 -1)
  %end_pos643964_cast = zext i5 %end_pos6 to i64
  %call_get_range6 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_9, i64 %start_pos642_cast, i64 %end_pos643964_cast)
  %tmp_55 = trunc i32 %call_get_range6 to i8
  %tmp_62_0_1 = zext i8 %tmp_55 to i32
  %tmp_65_0_1 = mul nsw i32 %Gx_load_3, %tmp_62_0_1
  %sumx3_3_0_1 = add nsw i32 %tmp_65_0_1, %sumx3_2_0_0_2
  %tmp_66_0_1 = mul nsw i32 %Gy_load_3, %tmp_62_0_1
  %sumy3_3_0_1 = add nsw i32 %tmp_66_0_1, %sumy3_2_0_0_2
  %sumx3_2_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx3_3_0_1
  %sumy3_2_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy3_3_0_1
  %tmp_56 = shl i8 %i_1, 1
  %gepindex2651_cast = zext i8 %tmp_56 to i64
  %sub_in_addr_10 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2651_cast
  %sub_in_load_10 = load i32* %sub_in_addr_10, align 4
  %call_get_range656_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_10, i64 8, i64 15)
  %tmp_48_0_1_1 = zext i8 %call_get_range656_part to i32
  %tmp_51_0_1_1 = mul nsw i32 %Gx_load_4, %tmp_48_0_1_1
  %sumx1_3_0_1_1 = add nsw i32 %tmp_51_0_1_1, %sumx1_2_0_1
  %tmp_52_0_1_1 = mul nsw i32 %Gy_load_4, %tmp_48_0_1_1
  %sumy1_3_0_1_1 = add nsw i32 %tmp_52_0_1_1, %sumy1_2_0_1
  %sumy1_2_0_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_0_1_1
  %sumx1_2_0_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_0_1_1
  %call_get_range668_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_10, i64 16, i64 23)
  %tmp_55_0_1_1 = zext i8 %call_get_range668_part to i32
  %tmp_58_0_1_1 = mul nsw i32 %Gx_load_4, %tmp_55_0_1_1
  %sumx2_3_0_1_1 = add nsw i32 %tmp_58_0_1_1, %sumx2_2_0_1
  %tmp_59_0_1_1 = mul nsw i32 %Gy_load_4, %tmp_55_0_1_1
  %sumy2_3_0_1_1 = add nsw i32 %tmp_59_0_1_1, %sumy2_2_0_1
  %sumy2_2_0_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_0_1_1
  %sumx2_2_0_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_0_1_1
  %call_get_range680_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_10, i64 24, i64 31)
  %tmp_62_0_1_1 = zext i8 %call_get_range680_part to i32
  %tmp_65_0_1_1 = mul nsw i32 %Gx_load_4, %tmp_62_0_1_1
  %sumx3_3_0_1_1 = add nsw i32 %tmp_65_0_1_1, %sumx3_2_0_1
  %tmp_66_0_1_1 = mul nsw i32 %Gy_load_4, %tmp_62_0_1_1
  %sumy3_3_0_1_1 = add nsw i32 %tmp_66_0_1_1, %sumy3_2_0_1
  %sumx3_2_0_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx3_3_0_1_1
  %sumy3_2_0_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy3_3_0_1_1
  %tmp_51_0_1_2 = mul nsw i32 %Gx_load_5, %tmp_55_0_1_1
  %sumx1_3_0_1_2 = add nsw i32 %tmp_51_0_1_2, %sumx1_2_0_1_1
  %tmp_52_0_1_2 = mul nsw i32 %Gy_load_5, %tmp_55_0_1_1
  %sumy1_3_0_1_2 = add nsw i32 %tmp_52_0_1_2, %sumy1_2_0_1_1
  %sumy1_2_0_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_0_1_2
  %sumx1_2_0_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_0_1_2
  %tmp_58_0_1_2 = mul nsw i32 %Gx_load_5, %tmp_62_0_1_1
  %sumx2_3_0_1_2 = add nsw i32 %tmp_58_0_1_2, %sumx2_2_0_1_1
  %tmp_59_0_1_2 = mul nsw i32 %Gy_load_5, %tmp_62_0_1_1
  %sumy2_3_0_1_2 = add nsw i32 %tmp_59_0_1_2, %sumy2_2_0_1_1
  %sumy2_2_0_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_0_1_2
  %sumx2_2_0_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_0_1_2
  %tmp_60_0_1_2 = add i11 %tmp_38_0_1_cast, 1
  %tmp_57 = trunc i11 %tmp_60_0_1_2 to i2
  %adjSize503_cast = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %tmp_60_0_1_2, i32 2, i32 10)
  %mem_index_gep8 = add i9 %adjSize503_cast, 72
  %addrCmp13 = icmp ult i9 %mem_index_gep8, -166
  %gepindex21 = select i1 %addrCmp13, i9 %adjSize503_cast, i9 -239
  %gepindex2687_cast = zext i9 %gepindex21 to i64
  %sub_in_addr_11 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2687_cast
  %sub_in_load_11 = load i32* %sub_in_addr_11, align 4
  %start_pos7 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_57, i3 0)
  %start_pos690_cast = zext i5 %start_pos7 to i64
  %end_pos7 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_57, i3 -1)
  %end_pos691968_cast = zext i5 %end_pos7 to i64
  %call_get_range7 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_11, i64 %start_pos690_cast, i64 %end_pos691968_cast)
  %tmp_58 = trunc i32 %call_get_range7 to i8
  %tmp_62_0_1_2 = zext i8 %tmp_58 to i32
  %tmp_65_0_1_2 = mul nsw i32 %Gx_load_5, %tmp_62_0_1_2
  %sumx3_3_0_1_2 = add nsw i32 %tmp_65_0_1_2, %sumx3_2_0_1_1
  %tmp_66_0_1_2 = mul nsw i32 %Gy_load_5, %tmp_62_0_1_2
  %sumy3_3_0_1_2 = add nsw i32 %tmp_66_0_1_2, %sumy3_2_0_1_1
  %sumx3_2_0_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx3_3_0_1_2
  %sumy3_2_0_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy3_3_0_1_2
  %tmp_35_0_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %i_3, i3 1)
  %tmp_35_0_2_cast = zext i11 %tmp_35_0_2 to i12
  %tmp_37_0_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %i_3, i3 2)
  %tmp_37_0_2_cast = zext i11 %tmp_37_0_2 to i12
  %tmp_38_0_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %i_3, i3 3)
  %tmp_38_0_2_cast = zext i11 %tmp_38_0_2 to i12
  %tmp_46_0_2 = add i12 %tmp_35_0_2_cast, -1
  %tmp_59 = trunc i12 %tmp_46_0_2 to i2
  %tmp_60 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_46_0_2, i32 2, i32 11)
  %tmp_61 = sext i10 %tmp_60 to i12
  %mem_index_gep9 = add i12 %tmp_61, 72
  %adjSize693_cast = zext i12 %mem_index_gep9 to i13
  %addrCmp14 = icmp ult i10 %tmp_60, -72
  %addrCmp15 = icmp ult i12 %mem_index_gep9, 346
  %gepindex22 = add i13 %adjSize693_cast, -72
  %gepindex23 = select i1 %addrCmp14, i13 %gepindex22, i13 273
  %gepindex24 = select i1 %addrCmp15, i13 %gepindex23, i13 273
  %gepindex2699_cast = sext i13 %gepindex24 to i64
  %sub_in_addr_12 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2699_cast
  %sub_in_load_12 = load i32* %sub_in_addr_12, align 4
  %start_pos8 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_59, i3 0)
  %start_pos702_cast = zext i5 %start_pos8 to i64
  %end_pos8 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_59, i3 -1)
  %end_pos703969_cast = zext i5 %end_pos8 to i64
  %call_get_range8 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_12, i64 %start_pos702_cast, i64 %end_pos703969_cast)
  %tmp_62 = trunc i32 %call_get_range8 to i8
  %tmp_48_0_2 = zext i8 %tmp_62 to i32
  %tmp_51_0_2 = mul nsw i32 %Gx_load_6, %tmp_48_0_2
  %sumx1_3_0_2 = add nsw i32 %tmp_51_0_2, %sumx1_2_0_1_2
  %tmp_52_0_2 = mul nsw i32 %Gy_load_6, %tmp_48_0_2
  %sumy1_3_0_2 = add nsw i32 %tmp_52_0_2, %sumy1_2_0_1_2
  %sumy1_2_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_0_2
  %sumx1_2_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_0_2
  %tmp_53_0_2 = add i12 %tmp_37_0_2_cast, -1
  %tmp_63 = trunc i12 %tmp_53_0_2 to i2
  %tmp_64 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_53_0_2, i32 2, i32 11)
  %tmp_65 = sext i10 %tmp_64 to i12
  %mem_index_gep10 = add i12 %tmp_65, 72
  %adjSize705_cast = zext i12 %mem_index_gep10 to i13
  %addrCmp16 = icmp ult i10 %tmp_64, -72
  %addrCmp17 = icmp ult i12 %mem_index_gep10, 346
  %gepindex25 = add i13 %adjSize705_cast, -72
  %gepindex26 = select i1 %addrCmp16, i13 %gepindex25, i13 273
  %gepindex27 = select i1 %addrCmp17, i13 %gepindex26, i13 273
  %gepindex2711_cast = sext i13 %gepindex27 to i64
  %sub_in_addr_13 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2711_cast
  %sub_in_load_13 = load i32* %sub_in_addr_13, align 4
  %start_pos9 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_63, i3 0)
  %start_pos714_cast = zext i5 %start_pos9 to i64
  %end_pos9 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_63, i3 -1)
  %end_pos715970_cast = zext i5 %end_pos9 to i64
  %call_get_range9 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_13, i64 %start_pos714_cast, i64 %end_pos715970_cast)
  %tmp_66 = trunc i32 %call_get_range9 to i8
  %tmp_55_0_2 = zext i8 %tmp_66 to i32
  %tmp_58_0_2 = mul nsw i32 %Gx_load_6, %tmp_55_0_2
  %sumx2_3_0_2 = add nsw i32 %tmp_58_0_2, %sumx2_2_0_1_2
  %tmp_59_0_2 = mul nsw i32 %Gy_load_6, %tmp_55_0_2
  %sumy2_3_0_2 = add nsw i32 %tmp_59_0_2, %sumy2_2_0_1_2
  %sumy2_2_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_0_2
  %sumx2_2_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_0_2
  %tmp_60_0_2 = add i12 %tmp_38_0_2_cast, -1
  %tmp_67 = trunc i12 %tmp_60_0_2 to i2
  %tmp_68 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_60_0_2, i32 2, i32 11)
  %tmp_69 = sext i10 %tmp_68 to i12
  %mem_index_gep11 = add i12 %tmp_69, 72
  %adjSize717_cast = zext i12 %mem_index_gep11 to i13
  %addrCmp18 = icmp ult i10 %tmp_68, -72
  %addrCmp19 = icmp ult i12 %mem_index_gep11, 346
  %gepindex28 = add i13 %adjSize717_cast, -72
  %gepindex29 = select i1 %addrCmp18, i13 %gepindex28, i13 273
  %gepindex30 = select i1 %addrCmp19, i13 %gepindex29, i13 273
  %gepindex2723_cast = sext i13 %gepindex30 to i64
  %sub_in_addr_14 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2723_cast
  %sub_in_load_14 = load i32* %sub_in_addr_14, align 4
  %start_pos10 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_67, i3 0)
  %start_pos726_cast = zext i5 %start_pos10 to i64
  %end_pos10 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_67, i3 -1)
  %end_pos727971_cast = zext i5 %end_pos10 to i64
  %call_get_range10 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_14, i64 %start_pos726_cast, i64 %end_pos727971_cast)
  %tmp_70 = trunc i32 %call_get_range10 to i8
  %tmp_62_0_2 = zext i8 %tmp_70 to i32
  %tmp_65_0_2 = mul nsw i32 %Gx_load_6, %tmp_62_0_2
  %sumx3_3_0_2 = add nsw i32 %tmp_65_0_2, %sumx3_2_0_1_2
  %tmp_66_0_2 = mul nsw i32 %Gy_load_6, %tmp_62_0_2
  %sumy3_3_0_2 = add nsw i32 %tmp_66_0_2, %sumy3_2_0_1_2
  %sumx3_2_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx3_3_0_2
  %sumy3_2_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy3_3_0_2
  %adjSize = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %i_3, i1 false)
  %adjSize511_cast = zext i9 %adjSize to i10
  %mem_index_gep12 = add i10 %adjSize511_cast, 72
  %tmp_71 = trunc i10 %mem_index_gep12 to i9
  %addrCmp20 = icmp ult i10 %mem_index_gep12, 346
  %gepindex31 = add i9 %tmp_71, -72
  %gepindex32 = select i1 %addrCmp20, i9 %gepindex31, i9 -239
  %gepindex2735_cast = zext i9 %gepindex32 to i64
  %sub_in_addr_15 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2735_cast
  %sub_in_load_15 = load i32* %sub_in_addr_15, align 4
  %call_get_range740_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_15, i64 8, i64 15)
  %tmp_48_0_2_1 = zext i8 %call_get_range740_part to i32
  %tmp_51_0_2_1 = mul nsw i32 %Gx_load_7, %tmp_48_0_2_1
  %sumx1_3_0_2_1 = add nsw i32 %tmp_51_0_2_1, %sumx1_2_0_2
  %tmp_52_0_2_1 = mul nsw i32 %Gy_load_7, %tmp_48_0_2_1
  %sumy1_3_0_2_1 = add nsw i32 %tmp_52_0_2_1, %sumy1_2_0_2
  %sumy1_2_0_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_0_2_1
  %sumx1_2_0_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_0_2_1
  %call_get_range752_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_15, i64 16, i64 23)
  %tmp_55_0_2_1 = zext i8 %call_get_range752_part to i32
  %tmp_58_0_2_1 = mul nsw i32 %Gx_load_7, %tmp_55_0_2_1
  %sumx2_3_0_2_1 = add nsw i32 %tmp_58_0_2_1, %sumx2_2_0_2
  %tmp_59_0_2_1 = mul nsw i32 %Gy_load_7, %tmp_55_0_2_1
  %sumy2_3_0_2_1 = add nsw i32 %tmp_59_0_2_1, %sumy2_2_0_2
  %sumy2_2_0_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_0_2_1
  %sumx2_2_0_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_0_2_1
  %call_get_range764_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_15, i64 24, i64 31)
  %tmp_62_0_2_1 = zext i8 %call_get_range764_part to i32
  %tmp_65_0_2_1 = mul nsw i32 %Gx_load_7, %tmp_62_0_2_1
  %sumx3_3_0_2_1 = add nsw i32 %tmp_65_0_2_1, %sumx3_2_0_2
  %tmp_66_0_2_1 = mul nsw i32 %Gy_load_7, %tmp_62_0_2_1
  %sumy3_3_0_2_1 = add nsw i32 %tmp_66_0_2_1, %sumy3_2_0_2
  %sumx3_2_0_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumx3_3_0_2_1
  %sumy3_2_0_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumy3_3_0_2_1
  %tmp_51_0_2_2 = mul nsw i32 %Gx_load_8, %tmp_55_0_2_1
  %sumx1_3_0_2_2 = add nsw i32 %tmp_51_0_2_2, %sumx1_2_0_2_1
  %tmp_52_0_2_2 = mul nsw i32 %Gy_load_8, %tmp_55_0_2_1
  %sumy1_3_0_2_2 = add nsw i32 %tmp_52_0_2_2, %sumy1_2_0_2_1
  %sumy1_2_0_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_0_2_2
  %sumx1_2_0_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_0_2_2
  %tmp_58_0_2_2 = mul nsw i32 %Gx_load_8, %tmp_62_0_2_1
  %sumx2_3_0_2_2 = add nsw i32 %tmp_58_0_2_2, %sumx2_2_0_2_1
  %tmp_59_0_2_2 = mul nsw i32 %Gy_load_8, %tmp_62_0_2_1
  %sumy2_3_0_2_2 = add nsw i32 %tmp_59_0_2_2, %sumy2_2_0_2_1
  %sumy2_2_0_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_0_2_2
  %sumx2_2_0_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_0_2_2
  %tmp_60_0_2_2 = add i12 %tmp_38_0_2_cast, 1
  %tmp_72 = trunc i12 %tmp_60_0_2_2 to i2
  %cast_gep_index242_cast = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_60_0_2_2, i32 2, i32 11)
  %mem_index_gep13 = add i10 %cast_gep_index242_cast, 72
  %addrCmp21 = icmp ult i10 %mem_index_gep13, 346
  %gepindex769_cast = zext i10 %cast_gep_index242_cast to i14
  %gepindex33 = select i1 %addrCmp21, i14 %gepindex769_cast, i14 273
  %gepindex2771_cast = zext i14 %gepindex33 to i64
  %sub_in_addr_16 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2771_cast
  %sub_in_load_16 = load i32* %sub_in_addr_16, align 4
  %start_pos11 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_72, i3 0)
  %start_pos774_cast = zext i5 %start_pos11 to i64
  %end_pos11 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_72, i3 -1)
  %end_pos775975_cast = zext i5 %end_pos11 to i64
  %call_get_range11 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_16, i64 %start_pos774_cast, i64 %end_pos775975_cast)
  %tmp_73 = trunc i32 %call_get_range11 to i8
  %tmp_62_0_2_2 = zext i8 %tmp_73 to i32
  %tmp_65_0_2_2 = mul nsw i32 %Gx_load_8, %tmp_62_0_2_2
  %sumx3_3_0_2_2 = add nsw i32 %tmp_65_0_2_2, %sumx3_2_0_2_1
  %tmp_66_0_2_2 = mul nsw i32 %Gy_load_8, %tmp_62_0_2_2
  %sumy3_3_0_2_2 = add nsw i32 %tmp_66_0_2_2, %sumy3_2_0_2_1
  %sumx3_2_0_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumx3_3_0_2_2
  %sumy3_2_0_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumy3_3_0_2_2
  %neg2 = sub i32 0, %sumx1_2_0_2_2
  %abscond2 = icmp sgt i32 %sumx1_2_0_2_2, 0
  %abs2 = select i1 %abscond2, i32 %sumx1_2_0_2_2, i32 %neg2
  %neg3 = sub i32 0, %sumy1_2_0_2_2
  %abscond3 = icmp sgt i32 %sumy1_2_0_2_2, 0
  %abs3 = select i1 %abscond3, i32 %sumy1_2_0_2_2, i32 %neg3
  %sum1 = add nsw i32 %abs3, %abs2
  %neg4 = sub i32 0, %sumx2_2_0_2_2
  %abscond4 = icmp sgt i32 %sumx2_2_0_2_2, 0
  %abs4 = select i1 %abscond4, i32 %sumx2_2_0_2_2, i32 %neg4
  %neg5 = sub i32 0, %sumy2_2_0_2_2
  %abscond5 = icmp sgt i32 %sumy2_2_0_2_2, 0
  %abs5 = select i1 %abscond5, i32 %sumy2_2_0_2_2, i32 %neg5
  %sum2 = add nsw i32 %abs5, %abs4
  %neg6 = sub i32 0, %sumx3_2_0_2_2
  %abscond6 = icmp sgt i32 %sumx3_2_0_2_2, 0
  %abs6 = select i1 %abscond6, i32 %sumx3_2_0_2_2, i32 %neg6
  %neg7 = sub i32 0, %sumy3_2_0_2_2
  %abscond7 = icmp sgt i32 %sumy3_2_0_2_2, 0
  %abs7 = select i1 %abscond7, i32 %sumy3_2_0_2_2, i32 %neg7
  %sum3 = add nsw i32 %abs7, %abs6
  %tmp_74 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %sum1, i32 8, i32 31)
  %icmp = icmp sgt i24 %tmp_74, 0
  %p_op7 = sub i32 255, %sum1
  %sum1_1 = select i1 %icmp, i32 0, i32 %p_op7
  %tmp_75 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %sum2, i32 8, i32 31)
  %icmp1 = icmp sgt i24 %tmp_75, 0
  %p_op8 = sub i32 255, %sum2
  %sum2_1 = select i1 %icmp1, i32 0, i32 %p_op8
  %tmp_76 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %sum3, i32 8, i32 31)
  %icmp2 = icmp sgt i24 %tmp_76, 0
  %p_op9 = sub i32 255, %sum3
  %sum3_1 = select i1 %icmp2, i32 0, i32 %p_op9
  %tmp_77 = shl i32 %sum1_1, 8
  %tmp_78 = shl i32 %sum2_1, 16
  %tmp_79 = shl i32 %sum3_1, 24
  %tmp1 = add i32 %tmp_78, %tmp_79
  %tmp_20 = add i32 %tmp1, %tmp_77
  %tmp_21 = zext i8 %tmp_56 to i64
  %sub_out_addr = getelementptr [256 x i32]* %sub_out, i64 0, i64 %tmp_21
  store i32 %tmp_20, i32* %sub_out_addr, align 4
  %tmp_42 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_1, i3 -2)
  %tmp_37_1_cast = sext i11 %tmp_42 to i12
  %tmp_44_1 = mul nsw i32 %Gx_load, %tmp_62_0_0_1
  %tmp_45_1 = mul nsw i32 %Gy_load, %tmp_62_0_0_1
  %sumy0_2_1 = select i1 %sel_tmp2, i32 255, i32 %tmp_45_1
  %sumx0_2_1 = select i1 %sel_tmp2, i32 255, i32 %tmp_44_1
  %tmp_51_1 = mul nsw i32 %Gx_load, %tmp_62_0_0_2
  %tmp_52_1 = mul nsw i32 %Gy_load, %tmp_62_0_0_2
  %sumy1_2_1 = select i1 %sel_tmp2, i32 255, i32 %tmp_52_1
  %sumx1_2_1 = select i1 %sel_tmp2, i32 255, i32 %tmp_51_1
  %tmp_53_1 = add i12 %tmp_37_1_cast, -1
  %tmp_80 = trunc i12 %tmp_53_1 to i2
  %tmp_81 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_53_1, i32 2, i32 11)
  %tmp_82 = sext i10 %tmp_81 to i12
  %mem_index_gep14 = add i12 %tmp_82, 72
  %adjSize777_cast = zext i12 %mem_index_gep14 to i13
  %addrCmp22 = icmp ult i10 %tmp_81, -72
  %addrCmp23 = icmp ult i12 %mem_index_gep14, 346
  %gepindex34 = add i13 %adjSize777_cast, -72
  %gepindex35 = select i1 %addrCmp22, i13 %gepindex34, i13 273
  %gepindex36 = select i1 %addrCmp23, i13 %gepindex35, i13 273
  %gepindex2783_cast = sext i13 %gepindex36 to i64
  %sub_in_addr_17 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2783_cast
  %sub_in_load_17 = load i32* %sub_in_addr_17, align 4
  %start_pos12 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_80, i3 0)
  %start_pos786_cast = zext i5 %start_pos12 to i64
  %end_pos12 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_80, i3 -1)
  %end_pos787976_cast = zext i5 %end_pos12 to i64
  %call_get_range12 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_17, i64 %start_pos786_cast, i64 %end_pos787976_cast)
  %tmp_83 = trunc i32 %call_get_range12 to i8
  %tmp_55_1 = zext i8 %tmp_83 to i32
  %tmp_58_1 = mul nsw i32 %Gx_load, %tmp_55_1
  %tmp_59_1 = mul nsw i32 %Gy_load, %tmp_55_1
  %sumy2_2_1 = select i1 %sel_tmp2, i32 255, i32 %tmp_59_1
  %sumx2_2_1 = select i1 %sel_tmp2, i32 255, i32 %tmp_58_1
  %tmp_44_1_0_1 = mul nsw i32 %Gx_load_1, %tmp_62_0_0_2
  %sumx0_3_1_0_1 = add nsw i32 %tmp_44_1_0_1, %sumx0_2_1
  %tmp_45_1_0_1 = mul nsw i32 %Gy_load_1, %tmp_62_0_0_2
  %sumy0_3_1_0_1 = add nsw i32 %tmp_45_1_0_1, %sumy0_2_1
  %sumy0_2_1_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy0_3_1_0_1
  %sumx0_2_1_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx0_3_1_0_1
  %tmp_51_1_0_1 = mul nsw i32 %Gx_load_1, %tmp_55_1
  %sumx1_3_1_0_1 = add nsw i32 %tmp_51_1_0_1, %sumx1_2_1
  %tmp_52_1_0_1 = mul nsw i32 %Gy_load_1, %tmp_55_1
  %sumy1_3_1_0_1 = add nsw i32 %tmp_52_1_0_1, %sumy1_2_1
  %sumy1_2_1_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_1_0_1
  %sumx1_2_1_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_1_0_1
  %tmp_84 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %tmp_1, i1 true)
  %tmp_85 = sext i9 %tmp_84 to i12
  %mem_index_gep15 = add i12 %tmp_85, 72
  %adjSize789_cast = zext i12 %mem_index_gep15 to i13
  %addrCmp24 = icmp ult i9 %tmp_84, -72
  %addrCmp25 = icmp ult i12 %mem_index_gep15, 346
  %gepindex37 = add i13 %adjSize789_cast, -72
  %gepindex38 = select i1 %addrCmp24, i13 %gepindex37, i13 273
  %gepindex39 = select i1 %addrCmp25, i13 %gepindex38, i13 273
  %gepindex2795_cast = sext i13 %gepindex39 to i64
  %sub_in_addr_18 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2795_cast
  %sub_in_load_18 = load i32* %sub_in_addr_18, align 4
  %call_get_range800_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_18, i64 16, i64 23)
  %tmp_55_1_0_1 = zext i8 %call_get_range800_part to i32
  %tmp_58_1_0_1 = mul nsw i32 %Gx_load_1, %tmp_55_1_0_1
  %sumx2_3_1_0_1 = add nsw i32 %tmp_58_1_0_1, %sumx2_2_1
  %tmp_59_1_0_1 = mul nsw i32 %Gy_load_1, %tmp_55_1_0_1
  %sumy2_3_1_0_1 = add nsw i32 %tmp_59_1_0_1, %sumy2_2_1
  %sumy2_2_1_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_1_0_1
  %sumx2_2_1_0_1 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_1_0_1
  %tmp_44_1_0_2 = mul nsw i32 %Gx_load_2, %tmp_55_1
  %sumx0_3_1_0_2 = add nsw i32 %tmp_44_1_0_2, %sumx0_2_1_0_1
  %tmp_45_1_0_2 = mul nsw i32 %Gy_load_2, %tmp_55_1
  %sumy0_3_1_0_2 = add nsw i32 %tmp_45_1_0_2, %sumy0_2_1_0_1
  %sumy0_2_1_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy0_3_1_0_2
  %sumx0_2_1_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx0_3_1_0_2
  %tmp_51_1_0_2 = mul nsw i32 %Gx_load_2, %tmp_55_1_0_1
  %sumx1_3_1_0_2 = add nsw i32 %tmp_51_1_0_2, %sumx1_2_1_0_1
  %tmp_52_1_0_2 = mul nsw i32 %Gy_load_2, %tmp_55_1_0_1
  %sumy1_3_1_0_2 = add nsw i32 %tmp_52_1_0_2, %sumy1_2_1_0_1
  %sumy1_2_1_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_1_0_2
  %sumx1_2_1_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_1_0_2
  %call_get_range812_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_18, i64 24, i64 31)
  %tmp_55_1_0_2 = zext i8 %call_get_range812_part to i32
  %tmp_58_1_0_2 = mul nsw i32 %Gx_load_2, %tmp_55_1_0_2
  %sumx2_3_1_0_2 = add nsw i32 %tmp_58_1_0_2, %sumx2_2_1_0_1
  %tmp_59_1_0_2 = mul nsw i32 %Gy_load_2, %tmp_55_1_0_2
  %sumy2_3_1_0_2 = add nsw i32 %tmp_59_1_0_2, %sumy2_2_1_0_1
  %sumy2_2_1_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_1_0_2
  %sumx2_2_1_0_2 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_1_0_2
  %tmp_34_1_1 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %tmp_41, i3 -4)
  %tmp_34_1_1_cast = zext i10 %tmp_34_1_1 to i11
  %tmp_35_1_1 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %tmp_41, i3 -3)
  %tmp_35_1_1_cast = zext i10 %tmp_35_1_1 to i11
  %tmp_37_1_1 = call i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7 %tmp_41, i3 -2)
  %tmp_37_1_1_cast = zext i10 %tmp_37_1_1 to i11
  %tmp_39_1_1 = add i11 %tmp_34_1_1_cast, -1
  %tmp_86 = trunc i11 %tmp_39_1_1 to i2
  %tmp_87 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %tmp_39_1_1, i32 2, i32 10)
  %tmp_88 = sext i9 %tmp_87 to i12
  %mem_index_gep16 = add i12 %tmp_88, 72
  %adjSize813_cast = zext i12 %mem_index_gep16 to i13
  %addrCmp26 = icmp ult i9 %tmp_87, -72
  %gepindex40 = add i13 %adjSize813_cast, -72
  %gepindex41 = select i1 %addrCmp26, i13 %gepindex40, i13 273
  %gepindex2819_cast = sext i13 %gepindex41 to i64
  %sub_in_addr_19 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2819_cast
  %sub_in_load_19 = load i32* %sub_in_addr_19, align 4
  %start_pos13 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_86, i3 0)
  %start_pos822_cast = zext i5 %start_pos13 to i64
  %end_pos13 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_86, i3 -1)
  %end_pos823979_cast = zext i5 %end_pos13 to i64
  %call_get_range13 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_19, i64 %start_pos822_cast, i64 %end_pos823979_cast)
  %tmp_89 = trunc i32 %call_get_range13 to i8
  %tmp_41_1_1 = zext i8 %tmp_89 to i32
  %tmp_44_1_1 = mul nsw i32 %Gx_load_3, %tmp_41_1_1
  %sumx0_3_1_1 = add nsw i32 %tmp_44_1_1, %sumx0_2_1_0_2
  %tmp_45_1_1 = mul nsw i32 %Gy_load_3, %tmp_41_1_1
  %sumy0_3_1_1 = add nsw i32 %tmp_45_1_1, %sumy0_2_1_0_2
  %sumy0_2_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy0_3_1_1
  %sumx0_2_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx0_3_1_1
  %tmp_46_1_1 = add i11 %tmp_35_1_1_cast, -1
  %tmp_90 = trunc i11 %tmp_46_1_1 to i2
  %tmp_91 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %tmp_46_1_1, i32 2, i32 10)
  %tmp_92 = sext i9 %tmp_91 to i12
  %mem_index_gep17 = add i12 %tmp_92, 72
  %adjSize825_cast = zext i12 %mem_index_gep17 to i13
  %addrCmp27 = icmp ult i9 %tmp_91, -72
  %gepindex42 = add i13 %adjSize825_cast, -72
  %gepindex43 = select i1 %addrCmp27, i13 %gepindex42, i13 273
  %gepindex2831_cast = sext i13 %gepindex43 to i64
  %sub_in_addr_20 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2831_cast
  %sub_in_load_20 = load i32* %sub_in_addr_20, align 4
  %start_pos14 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_90, i3 0)
  %start_pos834_cast = zext i5 %start_pos14 to i64
  %end_pos14 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_90, i3 -1)
  %end_pos835980_cast = zext i5 %end_pos14 to i64
  %call_get_range14 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_20, i64 %start_pos834_cast, i64 %end_pos835980_cast)
  %tmp_93 = trunc i32 %call_get_range14 to i8
  %tmp_48_1_1 = zext i8 %tmp_93 to i32
  %tmp_51_1_1 = mul nsw i32 %Gx_load_3, %tmp_48_1_1
  %sumx1_3_1_1 = add nsw i32 %tmp_51_1_1, %sumx1_2_1_0_2
  %tmp_52_1_1 = mul nsw i32 %Gy_load_3, %tmp_48_1_1
  %sumy1_3_1_1 = add nsw i32 %tmp_52_1_1, %sumy1_2_1_0_2
  %sumy1_2_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_1_1
  %sumx1_2_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_1_1
  %tmp_53_1_1 = add i11 %tmp_37_1_1_cast, -1
  %tmp_94 = trunc i11 %tmp_53_1_1 to i2
  %tmp_95 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %tmp_53_1_1, i32 2, i32 10)
  %tmp_96 = sext i9 %tmp_95 to i12
  %mem_index_gep18 = add i12 %tmp_96, 72
  %adjSize837_cast = zext i12 %mem_index_gep18 to i13
  %addrCmp28 = icmp ult i9 %tmp_95, -72
  %gepindex44 = add i13 %adjSize837_cast, -72
  %gepindex45 = select i1 %addrCmp28, i13 %gepindex44, i13 273
  %gepindex2843_cast = sext i13 %gepindex45 to i64
  %sub_in_addr_21 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2843_cast
  %sub_in_load_21 = load i32* %sub_in_addr_21, align 4
  %start_pos15 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_94, i3 0)
  %start_pos846_cast = zext i5 %start_pos15 to i64
  %end_pos15 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_94, i3 -1)
  %end_pos847981_cast = zext i5 %end_pos15 to i64
  %call_get_range15 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_21, i64 %start_pos846_cast, i64 %end_pos847981_cast)
  %tmp_97 = trunc i32 %call_get_range15 to i8
  %tmp_55_1_1 = zext i8 %tmp_97 to i32
  %tmp_58_1_1 = mul nsw i32 %Gx_load_3, %tmp_55_1_1
  %sumx2_3_1_1 = add nsw i32 %tmp_58_1_1, %sumx2_2_1_0_2
  %tmp_59_1_1 = mul nsw i32 %Gy_load_3, %tmp_55_1_1
  %sumy2_3_1_1 = add nsw i32 %tmp_59_1_1, %sumy2_2_1_0_2
  %sumy2_2_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_1_1
  %sumx2_2_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_1_1
  %tmp_44_1_1_1 = mul nsw i32 %Gx_load_4, %tmp_62_0_1_2
  %sumx0_3_1_1_1 = add nsw i32 %tmp_44_1_1_1, %sumx0_2_1_1
  %tmp_45_1_1_1 = mul nsw i32 %Gy_load_4, %tmp_62_0_1_2
  %sumy0_3_1_1_1 = add nsw i32 %tmp_45_1_1_1, %sumy0_2_1_1
  %sumy0_2_1_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy0_3_1_1_1
  %sumx0_2_1_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx0_3_1_1_1
  %adjSize1 = call i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7 %tmp_41, i1 true)
  %gepindex2855_cast = zext i8 %adjSize1 to i64
  %sub_in_addr_22 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2855_cast
  %sub_in_load_22 = load i32* %sub_in_addr_22, align 4
  %call_get_range860_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_22, i64 8, i64 15)
  %tmp_48_1_1_1 = zext i8 %call_get_range860_part to i32
  %tmp_51_1_1_1 = mul nsw i32 %Gx_load_4, %tmp_48_1_1_1
  %sumx1_3_1_1_1 = add nsw i32 %tmp_51_1_1_1, %sumx1_2_1_1
  %tmp_52_1_1_1 = mul nsw i32 %Gy_load_4, %tmp_48_1_1_1
  %sumy1_3_1_1_1 = add nsw i32 %tmp_52_1_1_1, %sumy1_2_1_1
  %sumy1_2_1_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_1_1_1
  %sumx1_2_1_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_1_1_1
  %call_get_range872_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_22, i64 16, i64 23)
  %tmp_55_1_1_1 = zext i8 %call_get_range872_part to i32
  %tmp_58_1_1_1 = mul nsw i32 %Gx_load_4, %tmp_55_1_1_1
  %sumx2_3_1_1_1 = add nsw i32 %tmp_58_1_1_1, %sumx2_2_1_1
  %tmp_59_1_1_1 = mul nsw i32 %Gy_load_4, %tmp_55_1_1_1
  %sumy2_3_1_1_1 = add nsw i32 %tmp_59_1_1_1, %sumy2_2_1_1
  %sumy2_2_1_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_1_1_1
  %sumx2_2_1_1_1 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_1_1_1
  %tmp_44_1_1_2 = mul nsw i32 %Gx_load_5, %tmp_48_1_1_1
  %sumx0_3_1_1_2 = add nsw i32 %tmp_44_1_1_2, %sumx0_2_1_1_1
  %tmp_45_1_1_2 = mul nsw i32 %Gy_load_5, %tmp_48_1_1_1
  %sumy0_3_1_1_2 = add nsw i32 %tmp_45_1_1_2, %sumy0_2_1_1_1
  %sumy0_2_1_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy0_3_1_1_2
  %sumx0_2_1_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx0_3_1_1_2
  %tmp_51_1_1_2 = mul nsw i32 %Gx_load_5, %tmp_55_1_1_1
  %sumx1_3_1_1_2 = add nsw i32 %tmp_51_1_1_2, %sumx1_2_1_1_1
  %tmp_52_1_1_2 = mul nsw i32 %Gy_load_5, %tmp_55_1_1_1
  %sumy1_3_1_1_2 = add nsw i32 %tmp_52_1_1_2, %sumy1_2_1_1_1
  %sumy1_2_1_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_1_1_2
  %sumx1_2_1_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_1_1_2
  %call_get_range884_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_22, i64 24, i64 31)
  %tmp_55_1_1_2 = zext i8 %call_get_range884_part to i32
  %tmp_58_1_1_2 = mul nsw i32 %Gx_load_5, %tmp_55_1_1_2
  %sumx2_3_1_1_2 = add nsw i32 %tmp_58_1_1_2, %sumx2_2_1_1_1
  %tmp_59_1_1_2 = mul nsw i32 %Gy_load_5, %tmp_55_1_1_2
  %sumy2_3_1_1_2 = add nsw i32 %tmp_59_1_1_2, %sumy2_2_1_1_1
  %sumy2_2_1_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_1_1_2
  %sumx2_2_1_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_1_1_2
  %tmp_34_1_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %i_3, i3 -4)
  %tmp_34_1_2_cast = zext i11 %tmp_34_1_2 to i12
  %tmp_35_1_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %i_3, i3 -3)
  %tmp_35_1_2_cast = zext i11 %tmp_35_1_2 to i12
  %tmp_37_1_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %i_3, i3 -2)
  %tmp_37_1_2_cast = zext i11 %tmp_37_1_2 to i12
  %tmp_39_1_2 = add i12 %tmp_34_1_2_cast, -1
  %tmp_98 = trunc i12 %tmp_39_1_2 to i2
  %tmp_99 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_39_1_2, i32 2, i32 11)
  %tmp_100 = sext i10 %tmp_99 to i12
  %mem_index_gep19 = add i12 %tmp_100, 72
  %adjSize885_cast = zext i12 %mem_index_gep19 to i13
  %addrCmp29 = icmp ult i10 %tmp_99, -72
  %addrCmp30 = icmp ult i12 %mem_index_gep19, 346
  %gepindex46 = add i13 %adjSize885_cast, -72
  %gepindex47 = select i1 %addrCmp29, i13 %gepindex46, i13 273
  %gepindex48 = select i1 %addrCmp30, i13 %gepindex47, i13 273
  %gepindex2891_cast = sext i13 %gepindex48 to i64
  %sub_in_addr_23 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2891_cast
  %sub_in_load_23 = load i32* %sub_in_addr_23, align 4
  %start_pos16 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_98, i3 0)
  %start_pos894_cast = zext i5 %start_pos16 to i64
  %end_pos16 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_98, i3 -1)
  %end_pos895985_cast = zext i5 %end_pos16 to i64
  %call_get_range16 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_23, i64 %start_pos894_cast, i64 %end_pos895985_cast)
  %tmp_101 = trunc i32 %call_get_range16 to i8
  %tmp_41_1_2 = zext i8 %tmp_101 to i32
  %tmp_44_1_2 = mul nsw i32 %Gx_load_6, %tmp_41_1_2
  %sumx0_3_1_2 = add nsw i32 %tmp_44_1_2, %sumx0_2_1_1_2
  %tmp_45_1_2 = mul nsw i32 %Gy_load_6, %tmp_41_1_2
  %sumy0_3_1_2 = add nsw i32 %tmp_45_1_2, %sumy0_2_1_1_2
  %sumy0_2_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy0_3_1_2
  %sumx0_2_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx0_3_1_2
  %tmp_46_1_2 = add i12 %tmp_35_1_2_cast, -1
  %tmp_102 = trunc i12 %tmp_46_1_2 to i2
  %tmp_103 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_46_1_2, i32 2, i32 11)
  %tmp_104 = sext i10 %tmp_103 to i12
  %mem_index_gep20 = add i12 %tmp_104, 72
  %adjSize897_cast = zext i12 %mem_index_gep20 to i13
  %addrCmp31 = icmp ult i10 %tmp_103, -72
  %addrCmp32 = icmp ult i12 %mem_index_gep20, 346
  %gepindex49 = add i13 %adjSize897_cast, -72
  %gepindex50 = select i1 %addrCmp31, i13 %gepindex49, i13 273
  %gepindex51 = select i1 %addrCmp32, i13 %gepindex50, i13 273
  %gepindex2903_cast = sext i13 %gepindex51 to i64
  %sub_in_addr_24 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2903_cast
  %sub_in_load_24 = load i32* %sub_in_addr_24, align 4
  %start_pos17 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_102, i3 0)
  %start_pos906_cast = zext i5 %start_pos17 to i64
  %end_pos17 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_102, i3 -1)
  %end_pos907986_cast = zext i5 %end_pos17 to i64
  %call_get_range17 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_24, i64 %start_pos906_cast, i64 %end_pos907986_cast)
  %tmp_105 = trunc i32 %call_get_range17 to i8
  %tmp_48_1_2 = zext i8 %tmp_105 to i32
  %tmp_51_1_2 = mul nsw i32 %Gx_load_6, %tmp_48_1_2
  %sumx1_3_1_2 = add nsw i32 %tmp_51_1_2, %sumx1_2_1_1_2
  %tmp_52_1_2 = mul nsw i32 %Gy_load_6, %tmp_48_1_2
  %sumy1_3_1_2 = add nsw i32 %tmp_52_1_2, %sumy1_2_1_1_2
  %sumy1_2_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_1_2
  %sumx1_2_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_1_2
  %tmp_53_1_2 = add i12 %tmp_37_1_2_cast, -1
  %tmp_106 = trunc i12 %tmp_53_1_2 to i2
  %tmp_107 = call i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12 %tmp_53_1_2, i32 2, i32 11)
  %tmp_108 = sext i10 %tmp_107 to i12
  %mem_index_gep21 = add i12 %tmp_108, 72
  %adjSize909_cast = zext i12 %mem_index_gep21 to i13
  %addrCmp33 = icmp ult i10 %tmp_107, -72
  %addrCmp34 = icmp ult i12 %mem_index_gep21, 346
  %gepindex52 = add i13 %adjSize909_cast, -72
  %gepindex53 = select i1 %addrCmp33, i13 %gepindex52, i13 273
  %gepindex54 = select i1 %addrCmp34, i13 %gepindex53, i13 273
  %gepindex2915_cast = sext i13 %gepindex54 to i64
  %sub_in_addr_25 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2915_cast
  %sub_in_load_25 = load i32* %sub_in_addr_25, align 4
  %start_pos18 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_106, i3 0)
  %start_pos918_cast = zext i5 %start_pos18 to i64
  %end_pos18 = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_106, i3 -1)
  %end_pos919987_cast = zext i5 %end_pos18 to i64
  %call_get_range18 = call i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32 %sub_in_load_25, i64 %start_pos918_cast, i64 %end_pos919987_cast)
  %tmp_109 = trunc i32 %call_get_range18 to i8
  %tmp_55_1_2 = zext i8 %tmp_109 to i32
  %tmp_58_1_2 = mul nsw i32 %Gx_load_6, %tmp_55_1_2
  %sumx2_3_1_2 = add nsw i32 %tmp_58_1_2, %sumx2_2_1_1_2
  %tmp_59_1_2 = mul nsw i32 %Gy_load_6, %tmp_55_1_2
  %sumy2_3_1_2 = add nsw i32 %tmp_59_1_2, %sumy2_2_1_1_2
  %sumy2_2_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_1_2
  %sumx2_2_1_2 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_1_2
  %tmp_44_1_2_1 = mul nsw i32 %Gx_load_7, %tmp_62_0_2_2
  %sumx0_3_1_2_1 = add nsw i32 %tmp_44_1_2_1, %sumx0_2_1_2
  %tmp_45_1_2_1 = mul nsw i32 %Gy_load_7, %tmp_62_0_2_2
  %sumy0_3_1_2_1 = add nsw i32 %tmp_45_1_2_1, %sumy0_2_1_2
  %sumy0_2_1_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumy0_3_1_2_1
  %sumx0_2_1_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumx0_3_1_2_1
  %adjSize2 = call i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8 %i_3, i1 true)
  %adjSize548_cast = zext i9 %adjSize2 to i10
  %mem_index_gep22 = add i10 %adjSize548_cast, 72
  %tmp_110 = trunc i10 %mem_index_gep22 to i9
  %addrCmp35 = icmp ult i10 %mem_index_gep22, 346
  %gepindex55 = add i9 %tmp_110, -72
  %gepindex56 = select i1 %addrCmp35, i9 %gepindex55, i9 -239
  %gepindex2927_cast = zext i9 %gepindex56 to i64
  %sub_in_addr_26 = getelementptr [274 x i32]* %sub_in, i64 0, i64 %gepindex2927_cast
  %sub_in_load_26 = load i32* %sub_in_addr_26, align 4
  %call_get_range932_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_26, i64 8, i64 15)
  %tmp_48_1_2_1 = zext i8 %call_get_range932_part to i32
  %tmp_51_1_2_1 = mul nsw i32 %Gx_load_7, %tmp_48_1_2_1
  %sumx1_3_1_2_1 = add nsw i32 %tmp_51_1_2_1, %sumx1_2_1_2
  %tmp_52_1_2_1 = mul nsw i32 %Gy_load_7, %tmp_48_1_2_1
  %sumy1_3_1_2_1 = add nsw i32 %tmp_52_1_2_1, %sumy1_2_1_2
  %sumy1_2_1_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_1_2_1
  %sumx1_2_1_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_1_2_1
  %call_get_range944_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_26, i64 16, i64 23)
  %tmp_55_1_2_1 = zext i8 %call_get_range944_part to i32
  %tmp_58_1_2_1 = mul nsw i32 %Gx_load_7, %tmp_55_1_2_1
  %sumx2_3_1_2_1 = add nsw i32 %tmp_58_1_2_1, %sumx2_2_1_2
  %tmp_59_1_2_1 = mul nsw i32 %Gy_load_7, %tmp_55_1_2_1
  %sumy2_3_1_2_1 = add nsw i32 %tmp_59_1_2_1, %sumy2_2_1_2
  %sumy2_2_1_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_1_2_1
  %sumx2_2_1_2_1 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_1_2_1
  %tmp_44_1_2_2 = mul nsw i32 %Gx_load_8, %tmp_48_1_2_1
  %sumx0_3_1_2_2 = add nsw i32 %tmp_44_1_2_2, %sumx0_2_1_2_1
  %tmp_45_1_2_2 = mul nsw i32 %Gy_load_8, %tmp_48_1_2_1
  %sumy0_3_1_2_2 = add nsw i32 %tmp_45_1_2_2, %sumy0_2_1_2_1
  %sumy0_2_1_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumy0_3_1_2_2
  %sumx0_2_1_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumx0_3_1_2_2
  %tmp_51_1_2_2 = mul nsw i32 %Gx_load_8, %tmp_55_1_2_1
  %sumx1_3_1_2_2 = add nsw i32 %tmp_51_1_2_2, %sumx1_2_1_2_1
  %tmp_52_1_2_2 = mul nsw i32 %Gy_load_8, %tmp_55_1_2_1
  %sumy1_3_1_2_2 = add nsw i32 %tmp_52_1_2_2, %sumy1_2_1_2_1
  %sumy1_2_1_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumy1_3_1_2_2
  %sumx1_2_1_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumx1_3_1_2_2
  %call_get_range956_part = call i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32 %sub_in_load_26, i64 24, i64 31)
  %tmp_55_1_2_2 = zext i8 %call_get_range956_part to i32
  %tmp_58_1_2_2 = mul nsw i32 %Gx_load_8, %tmp_55_1_2_2
  %sumx2_3_1_2_2 = add nsw i32 %tmp_58_1_2_2, %sumx2_2_1_2_1
  %tmp_59_1_2_2 = mul nsw i32 %Gy_load_8, %tmp_55_1_2_2
  %sumy2_3_1_2_2 = add nsw i32 %tmp_59_1_2_2, %sumy2_2_1_2_1
  %sumy2_2_1_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumy2_3_1_2_2
  %sumx2_2_1_2_2 = select i1 %sel_tmp2, i32 255, i32 %sumx2_3_1_2_2
  %neg_1 = sub i32 0, %sumx0_2_1_2_2
  %abscond_1 = icmp sgt i32 %sumx0_2_1_2_2, 0
  %abs_1 = select i1 %abscond_1, i32 %sumx0_2_1_2_2, i32 %neg_1
  %neg1_1 = sub i32 0, %sumy0_2_1_2_2
  %abscond1_1 = icmp sgt i32 %sumy0_2_1_2_2, 0
  %abs1_1 = select i1 %abscond1_1, i32 %sumy0_2_1_2_2, i32 %neg1_1
  %sum0_s = add nsw i32 %abs1_1, %abs_1
  %neg2_1 = sub i32 0, %sumx1_2_1_2_2
  %abscond2_1 = icmp sgt i32 %sumx1_2_1_2_2, 0
  %abs2_1 = select i1 %abscond2_1, i32 %sumx1_2_1_2_2, i32 %neg2_1
  %neg3_1 = sub i32 0, %sumy1_2_1_2_2
  %abscond3_1 = icmp sgt i32 %sumy1_2_1_2_2, 0
  %abs3_1 = select i1 %abscond3_1, i32 %sumy1_2_1_2_2, i32 %neg3_1
  %sum1_s = add nsw i32 %abs3_1, %abs2_1
  %neg4_1 = sub i32 0, %sumx2_2_1_2_2
  %abscond4_1 = icmp sgt i32 %sumx2_2_1_2_2, 0
  %abs4_1 = select i1 %abscond4_1, i32 %sumx2_2_1_2_2, i32 %neg4_1
  %neg5_1 = sub i32 0, %sumy2_2_1_2_2
  %abscond5_1 = icmp sgt i32 %sumy2_2_1_2_2, 0
  %abs5_1 = select i1 %abscond5_1, i32 %sumy2_2_1_2_2, i32 %neg5_1
  %sum2_s = add nsw i32 %abs5_1, %abs4_1
  %tmp_111 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %sum0_s, i32 8, i32 31)
  %icmp3 = icmp sgt i24 %tmp_111, 0
  %p_op_1 = sub i32 255, %sum0_s
  %sum0_1_1 = select i1 %icmp3, i32 0, i32 %p_op_1
  %tmp_112 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %sum1_s, i32 8, i32 31)
  %icmp4 = icmp sgt i24 %tmp_112, 0
  %p_op7_1 = sub i32 255, %sum1_s
  %sum1_1_1 = select i1 %icmp4, i32 0, i32 %p_op7_1
  %tmp_113 = call i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32 %sum2_s, i32 8, i32 31)
  %icmp5 = icmp sgt i24 %tmp_113, 0
  %p_op8_1 = sub i32 255, %sum2_s
  %sum2_1_1 = select i1 %icmp5, i32 0, i32 %p_op8_1
  %tmp_114 = shl i32 %sum1_1_1, 8
  %tmp_115 = shl i32 %sum2_1_1, 16
  %tmp2 = add i32 %sum0_1_1, %tmp_115
  %tmp_30_1 = add i32 %tmp2, %tmp_114
  %tmp_31_1 = zext i8 %adjSize1 to i64
  %sub_out_addr_1 = getelementptr [256 x i32]* %sub_out, i64 0, i64 %tmp_31_1
  store i32 %tmp_30_1, i32* %sub_out_addr_1, align 4
  %empty_43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str4, i32 %tmp_4) nounwind
  br label %.preheader

; <label>:3                                       ; preds = %.preheader
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

define weak i9 @_ssdm_op_BitConcatenate.i9.i7.i2(i7, i2) nounwind readnone {
entry:
  %empty = zext i7 %0 to i9
  %empty_44 = zext i2 %1 to i9
  %empty_45 = trunc i9 %empty to i7
  %empty_46 = call i7 @_ssdm_op_PartSelect.i7.i9.i32.i32(i9 %empty_44, i32 2, i32 8)
  %empty_47 = or i7 %empty_45, %empty_46
  %empty_48 = call i9 @_ssdm_op_PartSet.i9.i9.i7.i32.i32(i9 %empty_44, i7 %empty_47, i32 2, i32 8)
  ret i9 %empty_48
}

define weak i4 @_ssdm_op_BitConcatenate.i4.i2.i2(i2, i2) nounwind readnone {
entry:
  %empty = zext i2 %0 to i4
  %empty_49 = zext i2 %1 to i4
  %empty_50 = trunc i4 %empty to i2
  %empty_51 = call i2 @_ssdm_op_PartSelect.i2.i4.i32.i32(i4 %empty_49, i32 2, i32 3)
  %empty_52 = or i2 %empty_50, %empty_51
  %empty_53 = call i4 @_ssdm_op_PartSet.i4.i4.i2.i32.i32(i4 %empty_49, i2 %empty_52, i32 2, i32 3)
  ret i4 %empty_53
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i7.i3(i7, i3) nounwind readnone {
entry:
  %empty = zext i7 %0 to i10
  %empty_54 = zext i3 %1 to i10
  %empty_55 = trunc i10 %empty to i7
  %empty_56 = call i7 @_ssdm_op_PartSelect.i7.i10.i32.i32(i10 %empty_54, i32 3, i32 9)
  %empty_57 = or i7 %empty_55, %empty_56
  %empty_58 = call i10 @_ssdm_op_PartSet.i10.i10.i7.i32.i32(i10 %empty_54, i7 %empty_57, i32 3, i32 9)
  ret i10 %empty_58
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11
  %empty_59 = zext i3 %1 to i11
  %empty_60 = trunc i11 %empty to i8
  %empty_61 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %empty_59, i32 3, i32 10)
  %empty_62 = or i8 %empty_60, %empty_61
  %empty_63 = call i11 @_ssdm_op_PartSet.i11.i11.i8.i32.i32(i11 %empty_59, i8 %empty_62, i32 3, i32 10)
  ret i11 %empty_63
}

define weak i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_64 = trunc i11 %empty to i9
  ret i9 %empty_64
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i7.i1(i7, i1) nounwind readnone {
entry:
  %empty = zext i7 %0 to i8
  %empty_65 = zext i1 %1 to i8
  %empty_66 = trunc i8 %empty to i7
  %empty_67 = call i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8 %empty_65, i32 1, i32 7)
  %empty_68 = or i7 %empty_66, %empty_67
  %empty_69 = call i8 @_ssdm_op_PartSet.i8.i8.i7.i32.i32(i8 %empty_65, i7 %empty_68, i32 1, i32 7)
  ret i8 %empty_69
}

define weak i24 @_ssdm_op_PartSelect.i24.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_70 = trunc i32 %empty to i24
  ret i24 %empty_70
}

define weak i9 @_ssdm_op_BitConcatenate.i9.i8.i1(i8, i1) nounwind readnone {
entry:
  %empty = zext i8 %0 to i9
  %empty_71 = zext i1 %1 to i9
  %empty_72 = trunc i9 %empty to i8
  %empty_73 = call i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9 %empty_71, i32 1, i32 8)
  %empty_74 = or i8 %empty_72, %empty_73
  %empty_75 = call i9 @_ssdm_op_PartSet.i9.i9.i8.i32.i32(i9 %empty_71, i8 %empty_74, i32 1, i32 8)
  ret i9 %empty_75
}

define weak i32 @_ssdm_op_PartSelect.i32.i32.i64.i64(i32, i64, i64) nounwind readnone {
entry:
  %empty = trunc i64 %1 to i32
  %empty_76 = trunc i64 %2 to i32
  %empty_77 = call i32 @llvm.part.select.i32(i32 %0, i32 %empty, i32 %empty_76)
  ret i32 %empty_77
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_78 = zext i3 %1 to i5
  %empty_79 = trunc i5 %empty to i2
  %empty_80 = call i2 @_ssdm_op_PartSelect.i2.i5.i32.i32(i5 %empty_78, i32 3, i32 4)
  %empty_81 = or i2 %empty_79, %empty_80
  %empty_82 = call i5 @_ssdm_op_PartSet.i5.i5.i2.i32.i32(i5 %empty_78, i2 %empty_81, i32 3, i32 4)
  ret i5 %empty_82
}

define weak i10 @_ssdm_op_PartSelect.i10.i12.i32.i32(i12, i32, i32) nounwind readnone {
entry:
  %empty = call i12 @llvm.part.select.i12(i12 %0, i32 %1, i32 %2)
  %empty_83 = trunc i12 %empty to i10
  ret i10 %empty_83
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i64.i64(i32, i64, i64) nounwind readnone {
entry:
  %empty = trunc i64 %1 to i32
  %empty_84 = trunc i64 %2 to i32
  %empty_85 = call i32 @llvm.part.select.i32(i32 %0, i32 %empty, i32 %empty_84)
  %empty_86 = trunc i32 %empty_85 to i8
  ret i8 %empty_86
}

declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i12 @llvm.part.select.i12(i12, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i12.i32.i32(i12, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_87 = trunc i8 %empty to i7
  ret i7 %empty_87
}

declare i2 @_ssdm_op_PartSelect.i2.i11.i32.i32(i11, i32, i32) nounwind readnone

declare i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i24.i8(i24, i8) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i16.i16(i16, i16) nounwind readnone

declare i32 @_ssdm_op_BitConcatenate.i32.i8.i24(i8, i24) nounwind readnone

define weak i7 @_ssdm_op_PartSelect.i7.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_88 = trunc i9 %empty to i7
  ret i7 %empty_88
}

define weak i9 @_ssdm_op_PartSet.i9.i9.i7.i32.i32(i9, i7, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.set.i9.i7(i9 %0, i7 %1, i32 %2, i32 %3)
  ret i9 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i4.i32.i32(i4, i32, i32) nounwind readnone {
entry:
  %empty = call i4 @llvm.part.select.i4(i4 %0, i32 %1, i32 %2)
  %empty_89 = trunc i4 %empty to i2
  ret i2 %empty_89
}

define weak i4 @_ssdm_op_PartSet.i4.i4.i2.i32.i32(i4, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i4 @llvm.part.set.i4.i2(i4 %0, i2 %1, i32 %2, i32 %3)
  ret i4 %empty
}

define weak i7 @_ssdm_op_PartSelect.i7.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_90 = trunc i10 %empty to i7
  ret i7 %empty_90
}

define weak i10 @_ssdm_op_PartSet.i10.i10.i7.i32.i32(i10, i7, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.set.i10.i7(i10 %0, i7 %1, i32 %2, i32 %3)
  ret i10 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2)
  %empty_91 = trunc i11 %empty to i8
  ret i8 %empty_91
}

define weak i11 @_ssdm_op_PartSet.i11.i11.i8.i32.i32(i11, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i8(i11 %0, i8 %1, i32 %2, i32 %3)
  ret i11 %empty
}

define weak i8 @_ssdm_op_PartSet.i8.i8.i7.i32.i32(i8, i7, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.set.i8.i7(i8 %0, i7 %1, i32 %2, i32 %3)
  ret i8 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i9.i32.i32(i9, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.select.i9(i9 %0, i32 %1, i32 %2)
  %empty_92 = trunc i9 %empty to i8
  ret i8 %empty_92
}

define weak i9 @_ssdm_op_PartSet.i9.i9.i8.i32.i32(i9, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i9 @llvm.part.set.i9.i8(i9 %0, i8 %1, i32 %2, i32 %3)
  ret i9 %empty
}

define weak i2 @_ssdm_op_PartSelect.i2.i5.i32.i32(i5, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.select.i5(i5 %0, i32 %1, i32 %2)
  %empty_93 = trunc i5 %empty to i2
  ret i2 %empty_93
}

define weak i5 @_ssdm_op_PartSet.i5.i5.i2.i32.i32(i5, i2, i32, i32) nounwind readnone {
entry:
  %empty = call i5 @llvm.part.set.i5.i2(i5 %0, i2 %1, i32 %2, i32 %3)
  ret i5 %empty
}

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i9 @llvm.part.select.i9(i9, i32, i32) nounwind readnone

declare i9 @llvm.part.set.i9.i7(i9, i7, i32, i32) nounwind readnone

declare i4 @llvm.part.select.i4(i4, i32, i32) nounwind readnone

declare i4 @llvm.part.set.i4.i2(i4, i2, i32, i32) nounwind readnone

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare i10 @llvm.part.set.i10.i7(i10, i7, i32, i32) nounwind readnone

declare i11 @llvm.part.set.i11.i8(i11, i8, i32, i32) nounwind readnone

declare i8 @llvm.part.set.i8.i7(i8, i7, i32, i32) nounwind readnone

declare i9 @llvm.part.set.i9.i8(i9, i8, i32, i32) nounwind readnone

declare i5 @llvm.part.select.i5(i5, i32, i32) nounwind readnone

declare i5 @llvm.part.set.i5.i2(i5, i2, i32, i32) nounwind readnone

!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 31, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"sub_in", metadata !4, metadata !"int"}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 273, i32 1}
!6 = metadata !{metadata !7}
!7 = metadata !{i32 0, i32 31, metadata !8}
!8 = metadata !{metadata !9}
!9 = metadata !{metadata !"sub_out", metadata !10, metadata !"int"}
!10 = metadata !{metadata !11}
!11 = metadata !{i32 0, i32 255, i32 1}
