; ModuleID = 'D:/minibench/customization/kmean-small/unroll-20/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=15 type=[1 x i8]*]
@p_str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@p_str4 = private unnamed_addr constant [16 x i8] c"kmean_ip_label0\00", align 1 ; [#uses=3 type=[16 x i8]*]
@str = internal constant [9 x i8] c"kmean_ip\00"  ; [#uses=1 type=[9 x i8]*]

; [#uses=1]
define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=0]
define void @kmean_ip([2056 x i32]* %sub_in, [12 x i32]* %sub_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2056 x i32]* %sub_in) nounwind, !map !0
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i32]* %sub_out) nounwind, !map !6
  %sub_out_addr = getelementptr [12 x i32]* %sub_out, i64 0, i64 0 ; [#uses=8 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{[2056 x i32]* %sub_in}, i64 0, metadata !12), !dbg !24 ; [debug line = 3:19] [debug variable = sub_in]
  call void @llvm.dbg.value(metadata !{[12 x i32]* %sub_out}, i64 0, metadata !25), !dbg !29 ; [debug line = 3:44] [debug variable = sub_out]
  call void (...)* @_ssdm_op_SpecMemCore([12 x i32]* %sub_out, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !30 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecMemCore([2056 x i32]* %sub_in, [1 x i8]* @p_str, [12 x i8]* @p_str1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !30 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str, [10 x i8]* @p_str2, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [17 x i8]* @p_str3) nounwind, !dbg !30 ; [debug line = 4:1]
  br label %1, !dbg !32                           ; [debug line = 17:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i4 [ 0, %0 ], [ %i_1, %2 ]             ; [#uses=3 type=i4]
  %exitcond8 = icmp eq i4 %i, -4, !dbg !32        ; [#uses=1 type=i1] [debug line = 17:9]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12) nounwind ; [#uses=0 type=i32]
  %i_1 = add i4 %i, 1, !dbg !34                   ; [#uses=1 type=i4] [debug line = 17:24]
  br i1 %exitcond8, label %.preheader, label %2, !dbg !32 ; [debug line = 17:9]

.preheader:                                       ; preds = %1
  %sub_in_addr = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2048, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_addr_1 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2049, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_addr_2 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2050, !dbg !38 ; [#uses=1 type=i32*] [debug line = 24:9]
  %sub_in_addr_3 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2051, !dbg !38 ; [#uses=1 type=i32*] [debug line = 24:9]
  %sub_in_addr_4 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2052, !dbg !39 ; [#uses=1 type=i32*] [debug line = 27:9]
  %sub_in_addr_5 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2053, !dbg !39 ; [#uses=1 type=i32*] [debug line = 27:9]
  %sub_in_addr_6 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2054, !dbg !40 ; [#uses=1 type=i32*] [debug line = 30:9]
  %sub_in_addr_7 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2055, !dbg !40 ; [#uses=1 type=i32*] [debug line = 30:9]
  %sub_out_addr_1 = getelementptr [12 x i32]* %sub_out, i64 0, i64 11, !dbg !41 ; [#uses=8 type=i32*] [debug line = 52:14]
  %sub_out_addr_2 = getelementptr [12 x i32]* %sub_out, i64 0, i64 6, !dbg !43 ; [#uses=8 type=i32*] [debug line = 53:14]
  %sub_out_addr_3 = getelementptr [12 x i32]* %sub_out, i64 0, i64 7, !dbg !44 ; [#uses=8 type=i32*] [debug line = 54:14]
  %sub_out_addr_4 = getelementptr [12 x i32]* %sub_out, i64 0, i64 10, !dbg !45 ; [#uses=8 type=i32*] [debug line = 46:14]
  %sub_out_addr_5 = getelementptr [12 x i32]* %sub_out, i64 0, i64 4, !dbg !47 ; [#uses=8 type=i32*] [debug line = 47:14]
  %sub_out_addr_6 = getelementptr [12 x i32]* %sub_out, i64 0, i64 5, !dbg !48 ; [#uses=8 type=i32*] [debug line = 48:14]
  %sub_out_addr_7 = getelementptr [12 x i32]* %sub_out, i64 0, i64 9, !dbg !49 ; [#uses=8 type=i32*] [debug line = 40:14]
  %sub_out_addr_8 = getelementptr [12 x i32]* %sub_out, i64 0, i64 2, !dbg !51 ; [#uses=8 type=i32*] [debug line = 41:14]
  %sub_out_addr_9 = getelementptr [12 x i32]* %sub_out, i64 0, i64 3, !dbg !52 ; [#uses=8 type=i32*] [debug line = 42:14]
  %sub_out_addr_10 = getelementptr [12 x i32]* %sub_out, i64 0, i64 8, !dbg !53 ; [#uses=8 type=i32*] [debug line = 34:14]
  %sub_out_addr_11 = getelementptr [12 x i32]* %sub_out, i64 0, i64 1, !dbg !55 ; [#uses=8 type=i32*] [debug line = 36:14]
  br label %3, !dbg !56                           ; [debug line = 20:25]

; <label>:2                                       ; preds = %1
  %tmp = zext i4 %i to i64, !dbg !57              ; [#uses=1 type=i64] [debug line = 18:9]
  %sub_out_addr_12 = getelementptr [12 x i32]* %sub_out, i64 0, i64 %tmp, !dbg !57 ; [#uses=1 type=i32*] [debug line = 18:9]
  store i32 0, i32* %sub_out_addr_12, align 4, !dbg !57 ; [debug line = 18:9]
  call void @llvm.dbg.value(metadata !{i4 %i_1}, i64 0, metadata !59), !dbg !34 ; [debug line = 17:24] [debug variable = i]
  br label %1, !dbg !34                           ; [debug line = 17:24]

; <label>:3                                       ; preds = %._crit_edge11.3, %.preheader
  %i_s = phi i11 [ %i_3_3, %._crit_edge11.3 ], [ 0, %.preheader ] ; [#uses=6 type=i11]
  %exitcond = icmp eq i11 %i_s, -1024, !dbg !56   ; [#uses=1 type=i1] [debug line = 20:25]
  br i1 %exitcond, label %21, label %4, !dbg !56  ; [debug line = 20:25]

._crit_edge11.0:                                  ; preds = %8, %._crit_edge10.0
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @p_str4, i32 %tmp_1_21) nounwind, !dbg !60 ; [#uses=0 type=i32] [debug line = 56:5]
  %tmp_40 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %i_s, i32 1, i32 9) ; [#uses=2 type=i9]
  %tmp_2_1 = call i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9 %tmp_40, i2 -2), !dbg !35 ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp_3_1 = zext i11 %tmp_2_1 to i64, !dbg !35   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in_addr_10 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_3_1, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_load_10 = load i32* %sub_in_addr_10, align 4, !dbg !35 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp_4_1 = sub nsw i32 %sub_in_load_10, %sub_in_load_1, !dbg !35 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp_5_1 = mul nsw i32 %tmp_4_1, %tmp_4_1, !dbg !35 ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp_6_1 = call i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9 %tmp_40, i2 -1), !dbg !35 ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp_7_1 = zext i11 %tmp_6_1 to i64, !dbg !35   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in_addr_11 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_7_1, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_load_11 = load i32* %sub_in_addr_11, align 4, !dbg !35 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp_8_1 = sub nsw i32 %sub_in_load_11, %sub_in_load_3, !dbg !35 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp_9_1 = mul nsw i32 %tmp_8_1, %tmp_8_1, !dbg !35 ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0_1 = add nsw i32 %tmp_9_1, %tmp_5_1, !dbg !35 ; [#uses=5 type=i32] [debug line = 21:9]
  %tmp_1 = sub nsw i32 %sub_in_load_10, %sub_in_load_4, !dbg !38 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp_1_1 = mul nsw i32 %tmp_1, %tmp_1, !dbg !38 ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp_10_1 = sub nsw i32 %sub_in_load_11, %sub_in_load_5, !dbg !38 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp_11_1 = mul nsw i32 %tmp_10_1, %tmp_10_1, !dbg !38 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1_1 = add nsw i32 %tmp_11_1, %tmp_1_1, !dbg !38 ; [#uses=5 type=i32] [debug line = 24:9]
  %tmp_12_1 = sub nsw i32 %sub_in_load_10, %sub_in_load_6, !dbg !39 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp_13_1 = mul nsw i32 %tmp_12_1, %tmp_12_1, !dbg !39 ; [#uses=1 type=i32] [debug line = 27:9]
  %tmp_14_1 = sub nsw i32 %sub_in_load_11, %sub_in_load_7, !dbg !39 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp_15_1 = mul nsw i32 %tmp_14_1, %tmp_14_1, !dbg !39 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2_1 = add nsw i32 %tmp_15_1, %tmp_13_1, !dbg !39 ; [#uses=5 type=i32] [debug line = 27:9]
  %tmp_16_1 = sub nsw i32 %sub_in_load_10, %sub_in_load_8, !dbg !40 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp_17_1 = mul nsw i32 %tmp_16_1, %tmp_16_1, !dbg !40 ; [#uses=1 type=i32] [debug line = 30:9]
  %tmp_18_1 = sub nsw i32 %sub_in_load_11, %sub_in_load_9, !dbg !40 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp_19_1 = mul nsw i32 %tmp_18_1, %tmp_18_1, !dbg !40 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3_1 = add nsw i32 %tmp_19_1, %tmp_17_1, !dbg !40 ; [#uses=3 type=i32] [debug line = 30:9]
  %tmp_20_1 = icmp sgt i32 %dist0_1, %dist1_1, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp_21_1 = icmp sgt i32 %dist0_1, %dist2_1, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp_22_1 = icmp sgt i32 %dist0_1, %dist3_1, !dbg !61 ; [#uses=2 type=i1] [debug line = 33:10]
  %tmp1 = or i1 %tmp_21_1, %tmp_22_1, !dbg !61    ; [#uses=1 type=i1] [debug line = 33:10]
  %or_cond1_1 = or i1 %tmp1, %tmp_20_1, !dbg !61  ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or_cond1_1, label %._crit_edge.1, label %9, !dbg !61 ; [debug line = 33:10]

._crit_edge10.0:                                  ; preds = %7, %._crit_edge9.0
  %tmp2 = and i1 %tmp_28, %tmp_32, !dbg !62       ; [#uses=1 type=i1] [debug line = 51:10]
  %or_cond7 = and i1 %tmp2, %tmp_22, !dbg !62     ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or_cond7, label %8, label %._crit_edge11.0, !dbg !62 ; [debug line = 51:10]

._crit_edge9.0:                                   ; preds = %6, %._crit_edge.0
  %slt = icmp slt i32 %dist2, %dist0, !dbg !63    ; [#uses=1 type=i1] [debug line = 45:10]
  %rev2 = xor i1 %slt, true, !dbg !63             ; [#uses=1 type=i1] [debug line = 45:10]
  %slt2 = icmp slt i32 %dist2, %dist1, !dbg !63   ; [#uses=1 type=i1] [debug line = 45:10]
  %rev = xor i1 %slt2, true, !dbg !63             ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp_32 = icmp sgt i32 %dist2, %dist3, !dbg !63 ; [#uses=2 type=i1] [debug line = 45:10]
  %tmp3 = or i1 %rev2, %tmp_32, !dbg !63          ; [#uses=1 type=i1] [debug line = 45:10]
  %or_cond5 = or i1 %tmp3, %rev, !dbg !63         ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or_cond5, label %._crit_edge10.0, label %7, !dbg !63 ; [debug line = 45:10]

._crit_edge.0:                                    ; preds = %5, %4
  %slt1 = icmp slt i32 %dist1, %dist0, !dbg !64   ; [#uses=1 type=i1] [debug line = 39:10]
  %rev1 = xor i1 %slt1, true, !dbg !64            ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp_27 = icmp sgt i32 %dist1, %dist2, !dbg !64 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp_28 = icmp sgt i32 %dist1, %dist3, !dbg !64 ; [#uses=2 type=i1] [debug line = 39:10]
  %tmp4 = or i1 %tmp_27, %tmp_28, !dbg !64        ; [#uses=1 type=i1] [debug line = 39:10]
  %or_cond3 = or i1 %tmp4, %rev1, !dbg !64        ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or_cond3, label %._crit_edge9.0, label %6, !dbg !64 ; [debug line = 39:10]

; <label>:4                                       ; preds = %3
  %empty_20 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @p_str4) nounwind, !dbg !65 ; [debug line = 20:43]
  %tmp_1_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @p_str4) nounwind, !dbg !66 ; [#uses=1 type=i32] [debug line = 20:84]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @p_str) nounwind, !dbg !67 ; [debug line = 21:1]
  %tmp_2 = trunc i11 %i_s to i10                  ; [#uses=1 type=i10]
  %tmp_26 = shl i11 %i_s, 1, !dbg !35             ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp_3 = zext i11 %tmp_26 to i64, !dbg !35      ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in_addr_8 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_3, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_load = load i32* %sub_in_addr_8, align 4, !dbg !35 ; [#uses=8 type=i32] [debug line = 21:9]
  %sub_in_load_1 = load i32* %sub_in_addr, align 4, !dbg !35 ; [#uses=4 type=i32] [debug line = 21:9]
  %tmp_4 = sub nsw i32 %sub_in_load, %sub_in_load_1, !dbg !35 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp_5 = mul nsw i32 %tmp_4, %tmp_4, !dbg !35   ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp_6 = call i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10 %tmp_2, i1 true), !dbg !35 ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp_7 = zext i11 %tmp_6 to i64, !dbg !35       ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in_addr_9 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_7, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_load_2 = load i32* %sub_in_addr_9, align 4, !dbg !35 ; [#uses=8 type=i32] [debug line = 21:9]
  %sub_in_load_3 = load i32* %sub_in_addr_1, align 4, !dbg !35 ; [#uses=4 type=i32] [debug line = 21:9]
  %tmp_8 = sub nsw i32 %sub_in_load_2, %sub_in_load_3, !dbg !35 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp_9 = mul nsw i32 %tmp_8, %tmp_8, !dbg !35   ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0 = add nsw i32 %tmp_9, %tmp_5, !dbg !35   ; [#uses=5 type=i32] [debug line = 21:9]
  %sub_in_load_4 = load i32* %sub_in_addr_2, align 4, !dbg !38 ; [#uses=4 type=i32] [debug line = 24:9]
  %tmp_s = sub nsw i32 %sub_in_load, %sub_in_load_4, !dbg !38 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp_11 = mul nsw i32 %tmp_s, %tmp_s, !dbg !38  ; [#uses=1 type=i32] [debug line = 24:9]
  %sub_in_load_5 = load i32* %sub_in_addr_3, align 4, !dbg !38 ; [#uses=4 type=i32] [debug line = 24:9]
  %tmp_10 = sub nsw i32 %sub_in_load_2, %sub_in_load_5, !dbg !38 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp_39 = mul nsw i32 %tmp_10, %tmp_10, !dbg !38 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1 = add nsw i32 %tmp_39, %tmp_11, !dbg !38 ; [#uses=5 type=i32] [debug line = 24:9]
  %sub_in_load_6 = load i32* %sub_in_addr_4, align 4, !dbg !39 ; [#uses=4 type=i32] [debug line = 27:9]
  %tmp_12 = sub nsw i32 %sub_in_load, %sub_in_load_6, !dbg !39 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp_13 = mul nsw i32 %tmp_12, %tmp_12, !dbg !39 ; [#uses=1 type=i32] [debug line = 27:9]
  %sub_in_load_7 = load i32* %sub_in_addr_5, align 4, !dbg !39 ; [#uses=4 type=i32] [debug line = 27:9]
  %tmp_14 = sub nsw i32 %sub_in_load_2, %sub_in_load_7, !dbg !39 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp_15 = mul nsw i32 %tmp_14, %tmp_14, !dbg !39 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2 = add nsw i32 %tmp_15, %tmp_13, !dbg !39 ; [#uses=5 type=i32] [debug line = 27:9]
  %sub_in_load_8 = load i32* %sub_in_addr_6, align 4, !dbg !40 ; [#uses=4 type=i32] [debug line = 30:9]
  %tmp_16 = sub nsw i32 %sub_in_load, %sub_in_load_8, !dbg !40 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp_17 = mul nsw i32 %tmp_16, %tmp_16, !dbg !40 ; [#uses=1 type=i32] [debug line = 30:9]
  %sub_in_load_9 = load i32* %sub_in_addr_7, align 4, !dbg !40 ; [#uses=4 type=i32] [debug line = 30:9]
  %tmp_18 = sub nsw i32 %sub_in_load_2, %sub_in_load_9, !dbg !40 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp_19 = mul nsw i32 %tmp_18, %tmp_18, !dbg !40 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3 = add nsw i32 %tmp_19, %tmp_17, !dbg !40 ; [#uses=3 type=i32] [debug line = 30:9]
  %tmp_20 = icmp sgt i32 %dist0, %dist1, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp_21 = icmp sgt i32 %dist0, %dist2, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp_22 = icmp sgt i32 %dist0, %dist3, !dbg !61 ; [#uses=2 type=i1] [debug line = 33:10]
  %tmp5 = or i1 %tmp_21, %tmp_22, !dbg !61        ; [#uses=1 type=i1] [debug line = 33:10]
  %or_cond1 = or i1 %tmp5, %tmp_20, !dbg !61      ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or_cond1, label %._crit_edge.0, label %5, !dbg !61 ; [debug line = 33:10]

; <label>:5                                       ; preds = %4
  %sub_out_load = load i32* %sub_out_addr_10, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:14]
  %tmp_23 = add nsw i32 %sub_out_load, 1, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp_23, i32* %sub_out_addr_10, align 4, !dbg !53 ; [debug line = 34:14]
  %sub_out_load_1 = load i32* %sub_out_addr, align 4, !dbg !68 ; [#uses=1 type=i32] [debug line = 35:14]
  %tmp_24 = add nsw i32 %sub_out_load_1, %sub_in_load, !dbg !68 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp_24, i32* %sub_out_addr, align 4, !dbg !68 ; [debug line = 35:14]
  %sub_out_load_2 = load i32* %sub_out_addr_11, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 36:14]
  %tmp_25 = add nsw i32 %sub_out_load_2, %sub_in_load_2, !dbg !55 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp_25, i32* %sub_out_addr_11, align 4, !dbg !55 ; [debug line = 36:14]
  br label %._crit_edge.0, !dbg !69               ; [debug line = 37:10]

; <label>:6                                       ; preds = %._crit_edge.0
  %sub_out_load_3 = load i32* %sub_out_addr_7, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 40:14]
  %tmp_29 = add nsw i32 %sub_out_load_3, 1, !dbg !49 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp_29, i32* %sub_out_addr_7, align 4, !dbg !49 ; [debug line = 40:14]
  %sub_out_load_4 = load i32* %sub_out_addr_8, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 41:14]
  %tmp_30 = add nsw i32 %sub_out_load_4, %sub_in_load, !dbg !51 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp_30, i32* %sub_out_addr_8, align 4, !dbg !51 ; [debug line = 41:14]
  %sub_out_load_5 = load i32* %sub_out_addr_9, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 42:14]
  %tmp_31 = add nsw i32 %sub_out_load_5, %sub_in_load_2, !dbg !52 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp_31, i32* %sub_out_addr_9, align 4, !dbg !52 ; [debug line = 42:14]
  br label %._crit_edge9.0, !dbg !70              ; [debug line = 43:10]

; <label>:7                                       ; preds = %._crit_edge9.0
  %sub_out_load_6 = load i32* %sub_out_addr_4, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 46:14]
  %tmp_33 = add nsw i32 %sub_out_load_6, 1, !dbg !45 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp_33, i32* %sub_out_addr_4, align 4, !dbg !45 ; [debug line = 46:14]
  %sub_out_load_7 = load i32* %sub_out_addr_5, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 47:14]
  %tmp_34 = add nsw i32 %sub_out_load_7, %sub_in_load, !dbg !47 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp_34, i32* %sub_out_addr_5, align 4, !dbg !47 ; [debug line = 47:14]
  %sub_out_load_8 = load i32* %sub_out_addr_6, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 48:14]
  %tmp_35 = add nsw i32 %sub_out_load_8, %sub_in_load_2, !dbg !48 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp_35, i32* %sub_out_addr_6, align 4, !dbg !48 ; [debug line = 48:14]
  br label %._crit_edge10.0, !dbg !71             ; [debug line = 49:10]

; <label>:8                                       ; preds = %._crit_edge10.0
  %sub_out_load_9 = load i32* %sub_out_addr_1, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 52:14]
  %tmp_36 = add nsw i32 %sub_out_load_9, 1, !dbg !41 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp_36, i32* %sub_out_addr_1, align 4, !dbg !41 ; [debug line = 52:14]
  %sub_out_load_10 = load i32* %sub_out_addr_2, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 53:14]
  %tmp_37 = add nsw i32 %sub_out_load_10, %sub_in_load, !dbg !43 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp_37, i32* %sub_out_addr_2, align 4, !dbg !43 ; [debug line = 53:14]
  %sub_out_load_11 = load i32* %sub_out_addr_3, align 4, !dbg !44 ; [#uses=1 type=i32] [debug line = 54:14]
  %tmp_38 = add nsw i32 %sub_out_load_11, %sub_in_load_2, !dbg !44 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp_38, i32* %sub_out_addr_3, align 4, !dbg !44 ; [debug line = 54:14]
  br label %._crit_edge11.0, !dbg !72             ; [debug line = 55:10]

._crit_edge11.1:                                  ; preds = %12, %._crit_edge10.1
  %tmp_41 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %i_s, i32 2, i32 9) ; [#uses=4 type=i8]
  %tmp_2_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_41, i3 -4), !dbg !35 ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp_3_2 = zext i11 %tmp_2_2 to i64, !dbg !35   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in_addr_12 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_3_2, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_load_12 = load i32* %sub_in_addr_12, align 4, !dbg !35 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp_4_2 = sub nsw i32 %sub_in_load_12, %sub_in_load_1, !dbg !35 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp_5_2 = mul nsw i32 %tmp_4_2, %tmp_4_2, !dbg !35 ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp_6_2 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_41, i3 -3), !dbg !35 ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp_7_2 = zext i11 %tmp_6_2 to i64, !dbg !35   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in_addr_13 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_7_2, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_load_13 = load i32* %sub_in_addr_13, align 4, !dbg !35 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp_8_2 = sub nsw i32 %sub_in_load_13, %sub_in_load_3, !dbg !35 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp_9_2 = mul nsw i32 %tmp_8_2, %tmp_8_2, !dbg !35 ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0_2 = add nsw i32 %tmp_9_2, %tmp_5_2, !dbg !35 ; [#uses=5 type=i32] [debug line = 21:9]
  %tmp_2_22 = sub nsw i32 %sub_in_load_12, %sub_in_load_4, !dbg !38 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp_1_2 = mul nsw i32 %tmp_2_22, %tmp_2_22, !dbg !38 ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp_10_2 = sub nsw i32 %sub_in_load_13, %sub_in_load_5, !dbg !38 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp_11_2 = mul nsw i32 %tmp_10_2, %tmp_10_2, !dbg !38 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1_2 = add nsw i32 %tmp_11_2, %tmp_1_2, !dbg !38 ; [#uses=5 type=i32] [debug line = 24:9]
  %tmp_12_2 = sub nsw i32 %sub_in_load_12, %sub_in_load_6, !dbg !39 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp_13_2 = mul nsw i32 %tmp_12_2, %tmp_12_2, !dbg !39 ; [#uses=1 type=i32] [debug line = 27:9]
  %tmp_14_2 = sub nsw i32 %sub_in_load_13, %sub_in_load_7, !dbg !39 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp_15_2 = mul nsw i32 %tmp_14_2, %tmp_14_2, !dbg !39 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2_2 = add nsw i32 %tmp_15_2, %tmp_13_2, !dbg !39 ; [#uses=5 type=i32] [debug line = 27:9]
  %tmp_16_2 = sub nsw i32 %sub_in_load_12, %sub_in_load_8, !dbg !40 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp_17_2 = mul nsw i32 %tmp_16_2, %tmp_16_2, !dbg !40 ; [#uses=1 type=i32] [debug line = 30:9]
  %tmp_18_2 = sub nsw i32 %sub_in_load_13, %sub_in_load_9, !dbg !40 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp_19_2 = mul nsw i32 %tmp_18_2, %tmp_18_2, !dbg !40 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3_2 = add nsw i32 %tmp_19_2, %tmp_17_2, !dbg !40 ; [#uses=3 type=i32] [debug line = 30:9]
  %tmp_20_2 = icmp sgt i32 %dist0_2, %dist1_2, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp_21_2 = icmp sgt i32 %dist0_2, %dist2_2, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp_22_2 = icmp sgt i32 %dist0_2, %dist3_2, !dbg !61 ; [#uses=2 type=i1] [debug line = 33:10]
  %tmp6 = or i1 %tmp_21_2, %tmp_22_2, !dbg !61    ; [#uses=1 type=i1] [debug line = 33:10]
  %or_cond1_2 = or i1 %tmp6, %tmp_20_2, !dbg !61  ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or_cond1_2, label %._crit_edge.2, label %13, !dbg !61 ; [debug line = 33:10]

._crit_edge10.1:                                  ; preds = %11, %._crit_edge9.1
  %tmp7 = and i1 %tmp_28_1, %tmp_32_1, !dbg !62   ; [#uses=1 type=i1] [debug line = 51:10]
  %or_cond7_1 = and i1 %tmp7, %tmp_22_1, !dbg !62 ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or_cond7_1, label %12, label %._crit_edge11.1, !dbg !62 ; [debug line = 51:10]

._crit_edge9.1:                                   ; preds = %10, %._crit_edge.1
  %slt4 = icmp slt i32 %dist2_1, %dist0_1, !dbg !63 ; [#uses=1 type=i1] [debug line = 45:10]
  %rev4 = xor i1 %slt4, true, !dbg !63            ; [#uses=1 type=i1] [debug line = 45:10]
  %slt5 = icmp slt i32 %dist2_1, %dist1_1, !dbg !63 ; [#uses=1 type=i1] [debug line = 45:10]
  %rev5 = xor i1 %slt5, true, !dbg !63            ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp_32_1 = icmp sgt i32 %dist2_1, %dist3_1, !dbg !63 ; [#uses=2 type=i1] [debug line = 45:10]
  %tmp8 = or i1 %rev4, %tmp_32_1, !dbg !63        ; [#uses=1 type=i1] [debug line = 45:10]
  %or_cond5_1 = or i1 %tmp8, %rev5, !dbg !63      ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or_cond5_1, label %._crit_edge10.1, label %11, !dbg !63 ; [debug line = 45:10]

._crit_edge.1:                                    ; preds = %9, %._crit_edge11.0
  %slt3 = icmp slt i32 %dist1_1, %dist0_1, !dbg !64 ; [#uses=1 type=i1] [debug line = 39:10]
  %rev3 = xor i1 %slt3, true, !dbg !64            ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp_27_1 = icmp sgt i32 %dist1_1, %dist2_1, !dbg !64 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp_28_1 = icmp sgt i32 %dist1_1, %dist3_1, !dbg !64 ; [#uses=2 type=i1] [debug line = 39:10]
  %tmp9 = or i1 %tmp_27_1, %tmp_28_1, !dbg !64    ; [#uses=1 type=i1] [debug line = 39:10]
  %or_cond3_1 = or i1 %tmp9, %rev3, !dbg !64      ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or_cond3_1, label %._crit_edge9.1, label %10, !dbg !64 ; [debug line = 39:10]

; <label>:9                                       ; preds = %._crit_edge11.0
  %sub_out_load_12 = load i32* %sub_out_addr_10, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:14]
  %tmp_23_1 = add nsw i32 %sub_out_load_12, 1, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp_23_1, i32* %sub_out_addr_10, align 4, !dbg !53 ; [debug line = 34:14]
  %sub_out_load_13 = load i32* %sub_out_addr, align 4, !dbg !68 ; [#uses=1 type=i32] [debug line = 35:14]
  %tmp_24_1 = add nsw i32 %sub_out_load_13, %sub_in_load_10, !dbg !68 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp_24_1, i32* %sub_out_addr, align 4, !dbg !68 ; [debug line = 35:14]
  %sub_out_load_14 = load i32* %sub_out_addr_11, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 36:14]
  %tmp_25_1 = add nsw i32 %sub_out_load_14, %sub_in_load_11, !dbg !55 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp_25_1, i32* %sub_out_addr_11, align 4, !dbg !55 ; [debug line = 36:14]
  br label %._crit_edge.1, !dbg !69               ; [debug line = 37:10]

; <label>:10                                      ; preds = %._crit_edge.1
  %sub_out_load_15 = load i32* %sub_out_addr_7, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 40:14]
  %tmp_29_1 = add nsw i32 %sub_out_load_15, 1, !dbg !49 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp_29_1, i32* %sub_out_addr_7, align 4, !dbg !49 ; [debug line = 40:14]
  %sub_out_load_16 = load i32* %sub_out_addr_8, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 41:14]
  %tmp_30_1 = add nsw i32 %sub_out_load_16, %sub_in_load_10, !dbg !51 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp_30_1, i32* %sub_out_addr_8, align 4, !dbg !51 ; [debug line = 41:14]
  %sub_out_load_17 = load i32* %sub_out_addr_9, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 42:14]
  %tmp_31_1 = add nsw i32 %sub_out_load_17, %sub_in_load_11, !dbg !52 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp_31_1, i32* %sub_out_addr_9, align 4, !dbg !52 ; [debug line = 42:14]
  br label %._crit_edge9.1, !dbg !70              ; [debug line = 43:10]

; <label>:11                                      ; preds = %._crit_edge9.1
  %sub_out_load_18 = load i32* %sub_out_addr_4, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 46:14]
  %tmp_33_1 = add nsw i32 %sub_out_load_18, 1, !dbg !45 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp_33_1, i32* %sub_out_addr_4, align 4, !dbg !45 ; [debug line = 46:14]
  %sub_out_load_19 = load i32* %sub_out_addr_5, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 47:14]
  %tmp_34_1 = add nsw i32 %sub_out_load_19, %sub_in_load_10, !dbg !47 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp_34_1, i32* %sub_out_addr_5, align 4, !dbg !47 ; [debug line = 47:14]
  %sub_out_load_20 = load i32* %sub_out_addr_6, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 48:14]
  %tmp_35_1 = add nsw i32 %sub_out_load_20, %sub_in_load_11, !dbg !48 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp_35_1, i32* %sub_out_addr_6, align 4, !dbg !48 ; [debug line = 48:14]
  br label %._crit_edge10.1, !dbg !71             ; [debug line = 49:10]

; <label>:12                                      ; preds = %._crit_edge10.1
  %sub_out_load_21 = load i32* %sub_out_addr_1, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 52:14]
  %tmp_36_1 = add nsw i32 %sub_out_load_21, 1, !dbg !41 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp_36_1, i32* %sub_out_addr_1, align 4, !dbg !41 ; [debug line = 52:14]
  %sub_out_load_22 = load i32* %sub_out_addr_2, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 53:14]
  %tmp_37_1 = add nsw i32 %sub_out_load_22, %sub_in_load_10, !dbg !43 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp_37_1, i32* %sub_out_addr_2, align 4, !dbg !43 ; [debug line = 53:14]
  %sub_out_load_23 = load i32* %sub_out_addr_3, align 4, !dbg !44 ; [#uses=1 type=i32] [debug line = 54:14]
  %tmp_38_1 = add nsw i32 %sub_out_load_23, %sub_in_load_11, !dbg !44 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp_38_1, i32* %sub_out_addr_3, align 4, !dbg !44 ; [debug line = 54:14]
  br label %._crit_edge11.1, !dbg !72             ; [debug line = 55:10]

._crit_edge11.2:                                  ; preds = %16, %._crit_edge10.2
  %tmp_2_3 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_41, i3 -2), !dbg !35 ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp_3_3 = zext i11 %tmp_2_3 to i64, !dbg !35   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in_addr_14 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_3_3, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_load_14 = load i32* %sub_in_addr_14, align 4, !dbg !35 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp_4_3 = sub nsw i32 %sub_in_load_14, %sub_in_load_1, !dbg !35 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp_5_3 = mul nsw i32 %tmp_4_3, %tmp_4_3, !dbg !35 ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp_6_3 = call i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8 %tmp_41, i3 -1), !dbg !35 ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp_7_3 = zext i11 %tmp_6_3 to i64, !dbg !35   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in_addr_15 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp_7_3, !dbg !35 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in_load_15 = load i32* %sub_in_addr_15, align 4, !dbg !35 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp_8_3 = sub nsw i32 %sub_in_load_15, %sub_in_load_3, !dbg !35 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp_9_3 = mul nsw i32 %tmp_8_3, %tmp_8_3, !dbg !35 ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0_3 = add nsw i32 %tmp_9_3, %tmp_5_3, !dbg !35 ; [#uses=5 type=i32] [debug line = 21:9]
  %tmp_3_23 = sub nsw i32 %sub_in_load_14, %sub_in_load_4, !dbg !38 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp_1_3 = mul nsw i32 %tmp_3_23, %tmp_3_23, !dbg !38 ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp_10_3 = sub nsw i32 %sub_in_load_15, %sub_in_load_5, !dbg !38 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp_11_3 = mul nsw i32 %tmp_10_3, %tmp_10_3, !dbg !38 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1_3 = add nsw i32 %tmp_11_3, %tmp_1_3, !dbg !38 ; [#uses=5 type=i32] [debug line = 24:9]
  %tmp_12_3 = sub nsw i32 %sub_in_load_14, %sub_in_load_6, !dbg !39 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp_13_3 = mul nsw i32 %tmp_12_3, %tmp_12_3, !dbg !39 ; [#uses=1 type=i32] [debug line = 27:9]
  %tmp_14_3 = sub nsw i32 %sub_in_load_15, %sub_in_load_7, !dbg !39 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp_15_3 = mul nsw i32 %tmp_14_3, %tmp_14_3, !dbg !39 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2_3 = add nsw i32 %tmp_15_3, %tmp_13_3, !dbg !39 ; [#uses=5 type=i32] [debug line = 27:9]
  %tmp_16_3 = sub nsw i32 %sub_in_load_14, %sub_in_load_8, !dbg !40 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp_17_3 = mul nsw i32 %tmp_16_3, %tmp_16_3, !dbg !40 ; [#uses=1 type=i32] [debug line = 30:9]
  %tmp_18_3 = sub nsw i32 %sub_in_load_15, %sub_in_load_9, !dbg !40 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp_19_3 = mul nsw i32 %tmp_18_3, %tmp_18_3, !dbg !40 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3_3 = add nsw i32 %tmp_19_3, %tmp_17_3, !dbg !40 ; [#uses=3 type=i32] [debug line = 30:9]
  %tmp_20_3 = icmp sgt i32 %dist0_3, %dist1_3, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp_21_3 = icmp sgt i32 %dist0_3, %dist2_3, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp_22_3 = icmp sgt i32 %dist0_3, %dist3_3, !dbg !61 ; [#uses=2 type=i1] [debug line = 33:10]
  %tmp10 = or i1 %tmp_21_3, %tmp_22_3, !dbg !61   ; [#uses=1 type=i1] [debug line = 33:10]
  %or_cond1_3 = or i1 %tmp10, %tmp_20_3, !dbg !61 ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or_cond1_3, label %._crit_edge.3, label %17, !dbg !61 ; [debug line = 33:10]

._crit_edge10.2:                                  ; preds = %15, %._crit_edge9.2
  %tmp11 = and i1 %tmp_28_2, %tmp_32_2, !dbg !62  ; [#uses=1 type=i1] [debug line = 51:10]
  %or_cond7_2 = and i1 %tmp11, %tmp_22_2, !dbg !62 ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or_cond7_2, label %16, label %._crit_edge11.2, !dbg !62 ; [debug line = 51:10]

._crit_edge9.2:                                   ; preds = %14, %._crit_edge.2
  %slt7 = icmp slt i32 %dist2_2, %dist0_2, !dbg !63 ; [#uses=1 type=i1] [debug line = 45:10]
  %rev7 = xor i1 %slt7, true, !dbg !63            ; [#uses=1 type=i1] [debug line = 45:10]
  %slt8 = icmp slt i32 %dist2_2, %dist1_2, !dbg !63 ; [#uses=1 type=i1] [debug line = 45:10]
  %rev8 = xor i1 %slt8, true, !dbg !63            ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp_32_2 = icmp sgt i32 %dist2_2, %dist3_2, !dbg !63 ; [#uses=2 type=i1] [debug line = 45:10]
  %tmp12 = or i1 %rev7, %tmp_32_2, !dbg !63       ; [#uses=1 type=i1] [debug line = 45:10]
  %or_cond5_2 = or i1 %tmp12, %rev8, !dbg !63     ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or_cond5_2, label %._crit_edge10.2, label %15, !dbg !63 ; [debug line = 45:10]

._crit_edge.2:                                    ; preds = %13, %._crit_edge11.1
  %slt6 = icmp slt i32 %dist1_2, %dist0_2, !dbg !64 ; [#uses=1 type=i1] [debug line = 39:10]
  %rev6 = xor i1 %slt6, true, !dbg !64            ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp_27_2 = icmp sgt i32 %dist1_2, %dist2_2, !dbg !64 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp_28_2 = icmp sgt i32 %dist1_2, %dist3_2, !dbg !64 ; [#uses=2 type=i1] [debug line = 39:10]
  %tmp13 = or i1 %tmp_27_2, %tmp_28_2, !dbg !64   ; [#uses=1 type=i1] [debug line = 39:10]
  %or_cond3_2 = or i1 %tmp13, %rev6, !dbg !64     ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or_cond3_2, label %._crit_edge9.2, label %14, !dbg !64 ; [debug line = 39:10]

; <label>:13                                      ; preds = %._crit_edge11.1
  %sub_out_load_24 = load i32* %sub_out_addr_10, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:14]
  %tmp_23_2 = add nsw i32 %sub_out_load_24, 1, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp_23_2, i32* %sub_out_addr_10, align 4, !dbg !53 ; [debug line = 34:14]
  %sub_out_load_25 = load i32* %sub_out_addr, align 4, !dbg !68 ; [#uses=1 type=i32] [debug line = 35:14]
  %tmp_24_2 = add nsw i32 %sub_out_load_25, %sub_in_load_12, !dbg !68 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp_24_2, i32* %sub_out_addr, align 4, !dbg !68 ; [debug line = 35:14]
  %sub_out_load_26 = load i32* %sub_out_addr_11, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 36:14]
  %tmp_25_2 = add nsw i32 %sub_out_load_26, %sub_in_load_13, !dbg !55 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp_25_2, i32* %sub_out_addr_11, align 4, !dbg !55 ; [debug line = 36:14]
  br label %._crit_edge.2, !dbg !69               ; [debug line = 37:10]

; <label>:14                                      ; preds = %._crit_edge.2
  %sub_out_load_27 = load i32* %sub_out_addr_7, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 40:14]
  %tmp_29_2 = add nsw i32 %sub_out_load_27, 1, !dbg !49 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp_29_2, i32* %sub_out_addr_7, align 4, !dbg !49 ; [debug line = 40:14]
  %sub_out_load_28 = load i32* %sub_out_addr_8, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 41:14]
  %tmp_30_2 = add nsw i32 %sub_out_load_28, %sub_in_load_12, !dbg !51 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp_30_2, i32* %sub_out_addr_8, align 4, !dbg !51 ; [debug line = 41:14]
  %sub_out_load_29 = load i32* %sub_out_addr_9, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 42:14]
  %tmp_31_2 = add nsw i32 %sub_out_load_29, %sub_in_load_13, !dbg !52 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp_31_2, i32* %sub_out_addr_9, align 4, !dbg !52 ; [debug line = 42:14]
  br label %._crit_edge9.2, !dbg !70              ; [debug line = 43:10]

; <label>:15                                      ; preds = %._crit_edge9.2
  %sub_out_load_30 = load i32* %sub_out_addr_4, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 46:14]
  %tmp_33_2 = add nsw i32 %sub_out_load_30, 1, !dbg !45 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp_33_2, i32* %sub_out_addr_4, align 4, !dbg !45 ; [debug line = 46:14]
  %sub_out_load_31 = load i32* %sub_out_addr_5, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 47:14]
  %tmp_34_2 = add nsw i32 %sub_out_load_31, %sub_in_load_12, !dbg !47 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp_34_2, i32* %sub_out_addr_5, align 4, !dbg !47 ; [debug line = 47:14]
  %sub_out_load_32 = load i32* %sub_out_addr_6, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 48:14]
  %tmp_35_2 = add nsw i32 %sub_out_load_32, %sub_in_load_13, !dbg !48 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp_35_2, i32* %sub_out_addr_6, align 4, !dbg !48 ; [debug line = 48:14]
  br label %._crit_edge10.2, !dbg !71             ; [debug line = 49:10]

; <label>:16                                      ; preds = %._crit_edge10.2
  %sub_out_load_33 = load i32* %sub_out_addr_1, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 52:14]
  %tmp_36_2 = add nsw i32 %sub_out_load_33, 1, !dbg !41 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp_36_2, i32* %sub_out_addr_1, align 4, !dbg !41 ; [debug line = 52:14]
  %sub_out_load_34 = load i32* %sub_out_addr_2, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 53:14]
  %tmp_37_2 = add nsw i32 %sub_out_load_34, %sub_in_load_12, !dbg !43 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp_37_2, i32* %sub_out_addr_2, align 4, !dbg !43 ; [debug line = 53:14]
  %sub_out_load_35 = load i32* %sub_out_addr_3, align 4, !dbg !44 ; [#uses=1 type=i32] [debug line = 54:14]
  %tmp_38_2 = add nsw i32 %sub_out_load_35, %sub_in_load_13, !dbg !44 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp_38_2, i32* %sub_out_addr_3, align 4, !dbg !44 ; [debug line = 54:14]
  br label %._crit_edge11.2, !dbg !72             ; [debug line = 55:10]

._crit_edge11.3:                                  ; preds = %20, %._crit_edge10.3
  %i_3_3 = add i11 %i_s, 4, !dbg !73              ; [#uses=1 type=i11] [debug line = 20:38]
  br label %3, !dbg !73                           ; [debug line = 20:38]

._crit_edge10.3:                                  ; preds = %19, %._crit_edge9.3
  %tmp14 = and i1 %tmp_28_3, %tmp_32_3, !dbg !62  ; [#uses=1 type=i1] [debug line = 51:10]
  %or_cond7_3 = and i1 %tmp14, %tmp_22_3, !dbg !62 ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or_cond7_3, label %20, label %._crit_edge11.3, !dbg !62 ; [debug line = 51:10]

._crit_edge9.3:                                   ; preds = %18, %._crit_edge.3
  %slt10 = icmp slt i32 %dist2_3, %dist0_3, !dbg !63 ; [#uses=1 type=i1] [debug line = 45:10]
  %rev10 = xor i1 %slt10, true, !dbg !63          ; [#uses=1 type=i1] [debug line = 45:10]
  %slt11 = icmp slt i32 %dist2_3, %dist1_3, !dbg !63 ; [#uses=1 type=i1] [debug line = 45:10]
  %rev11 = xor i1 %slt11, true, !dbg !63          ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp_32_3 = icmp sgt i32 %dist2_3, %dist3_3, !dbg !63 ; [#uses=2 type=i1] [debug line = 45:10]
  %tmp15 = or i1 %rev10, %tmp_32_3, !dbg !63      ; [#uses=1 type=i1] [debug line = 45:10]
  %or_cond5_3 = or i1 %tmp15, %rev11, !dbg !63    ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or_cond5_3, label %._crit_edge10.3, label %19, !dbg !63 ; [debug line = 45:10]

._crit_edge.3:                                    ; preds = %17, %._crit_edge11.2
  %slt9 = icmp slt i32 %dist1_3, %dist0_3, !dbg !64 ; [#uses=1 type=i1] [debug line = 39:10]
  %rev9 = xor i1 %slt9, true, !dbg !64            ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp_27_3 = icmp sgt i32 %dist1_3, %dist2_3, !dbg !64 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp_28_3 = icmp sgt i32 %dist1_3, %dist3_3, !dbg !64 ; [#uses=2 type=i1] [debug line = 39:10]
  %tmp16 = or i1 %tmp_27_3, %tmp_28_3, !dbg !64   ; [#uses=1 type=i1] [debug line = 39:10]
  %or_cond3_3 = or i1 %tmp16, %rev9, !dbg !64     ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or_cond3_3, label %._crit_edge9.3, label %18, !dbg !64 ; [debug line = 39:10]

; <label>:17                                      ; preds = %._crit_edge11.2
  %sub_out_load_36 = load i32* %sub_out_addr_10, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:14]
  %tmp_23_3 = add nsw i32 %sub_out_load_36, 1, !dbg !53 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp_23_3, i32* %sub_out_addr_10, align 4, !dbg !53 ; [debug line = 34:14]
  %sub_out_load_37 = load i32* %sub_out_addr, align 4, !dbg !68 ; [#uses=1 type=i32] [debug line = 35:14]
  %tmp_24_3 = add nsw i32 %sub_out_load_37, %sub_in_load_14, !dbg !68 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp_24_3, i32* %sub_out_addr, align 4, !dbg !68 ; [debug line = 35:14]
  %sub_out_load_38 = load i32* %sub_out_addr_11, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 36:14]
  %tmp_25_3 = add nsw i32 %sub_out_load_38, %sub_in_load_15, !dbg !55 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp_25_3, i32* %sub_out_addr_11, align 4, !dbg !55 ; [debug line = 36:14]
  br label %._crit_edge.3, !dbg !69               ; [debug line = 37:10]

; <label>:18                                      ; preds = %._crit_edge.3
  %sub_out_load_39 = load i32* %sub_out_addr_7, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 40:14]
  %tmp_29_3 = add nsw i32 %sub_out_load_39, 1, !dbg !49 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp_29_3, i32* %sub_out_addr_7, align 4, !dbg !49 ; [debug line = 40:14]
  %sub_out_load_40 = load i32* %sub_out_addr_8, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 41:14]
  %tmp_30_3 = add nsw i32 %sub_out_load_40, %sub_in_load_14, !dbg !51 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp_30_3, i32* %sub_out_addr_8, align 4, !dbg !51 ; [debug line = 41:14]
  %sub_out_load_41 = load i32* %sub_out_addr_9, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 42:14]
  %tmp_31_3 = add nsw i32 %sub_out_load_41, %sub_in_load_15, !dbg !52 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp_31_3, i32* %sub_out_addr_9, align 4, !dbg !52 ; [debug line = 42:14]
  br label %._crit_edge9.3, !dbg !70              ; [debug line = 43:10]

; <label>:19                                      ; preds = %._crit_edge9.3
  %sub_out_load_42 = load i32* %sub_out_addr_4, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 46:14]
  %tmp_33_3 = add nsw i32 %sub_out_load_42, 1, !dbg !45 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp_33_3, i32* %sub_out_addr_4, align 4, !dbg !45 ; [debug line = 46:14]
  %sub_out_load_43 = load i32* %sub_out_addr_5, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 47:14]
  %tmp_34_3 = add nsw i32 %sub_out_load_43, %sub_in_load_14, !dbg !47 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp_34_3, i32* %sub_out_addr_5, align 4, !dbg !47 ; [debug line = 47:14]
  %sub_out_load_44 = load i32* %sub_out_addr_6, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 48:14]
  %tmp_35_3 = add nsw i32 %sub_out_load_44, %sub_in_load_15, !dbg !48 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp_35_3, i32* %sub_out_addr_6, align 4, !dbg !48 ; [debug line = 48:14]
  br label %._crit_edge10.3, !dbg !71             ; [debug line = 49:10]

; <label>:20                                      ; preds = %._crit_edge10.3
  %sub_out_load_45 = load i32* %sub_out_addr_1, align 4, !dbg !41 ; [#uses=1 type=i32] [debug line = 52:14]
  %tmp_36_3 = add nsw i32 %sub_out_load_45, 1, !dbg !41 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp_36_3, i32* %sub_out_addr_1, align 4, !dbg !41 ; [debug line = 52:14]
  %sub_out_load_46 = load i32* %sub_out_addr_2, align 4, !dbg !43 ; [#uses=1 type=i32] [debug line = 53:14]
  %tmp_37_3 = add nsw i32 %sub_out_load_46, %sub_in_load_14, !dbg !43 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp_37_3, i32* %sub_out_addr_2, align 4, !dbg !43 ; [debug line = 53:14]
  %sub_out_load_47 = load i32* %sub_out_addr_3, align 4, !dbg !44 ; [#uses=1 type=i32] [debug line = 54:14]
  %tmp_38_3 = add nsw i32 %sub_out_load_47, %sub_in_load_15, !dbg !44 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp_38_3, i32* %sub_out_addr_3, align 4, !dbg !44 ; [debug line = 54:14]
  br label %._crit_edge11.3, !dbg !72             ; [debug line = 55:10]

; <label>:21                                      ; preds = %3
  ret void, !dbg !74                              ; [debug line = 58:1]
}

; [#uses=2]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i11 @_ssdm_op_BitConcatenate.i11.i10.i1(i10, i1) nounwind readnone {
entry:
  %empty = zext i10 %0 to i11                     ; [#uses=1 type=i11]
  %empty_24 = zext i1 %1 to i11                   ; [#uses=2 type=i11]
  %empty_25 = trunc i11 %empty to i10             ; [#uses=1 type=i10]
  %empty_26 = call i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11 %empty_24, i32 1, i32 10) ; [#uses=1 type=i10]
  %empty_27 = or i10 %empty_25, %empty_26         ; [#uses=1 type=i10]
  %empty_28 = call i11 @_ssdm_op_PartSet.i11.i11.i10.i32.i32(i11 %empty_24, i10 %empty_27, i32 1, i32 10) ; [#uses=1 type=i11]
  ret i11 %empty_28
}

; [#uses=2]
define weak i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_29 = trunc i11 %empty to i9              ; [#uses=1 type=i9]
  ret i9 %empty_29
}

; [#uses=2]
define weak i11 @_ssdm_op_BitConcatenate.i11.i9.i2(i9, i2) nounwind readnone {
entry:
  %empty = zext i9 %0 to i11                      ; [#uses=1 type=i11]
  %empty_30 = zext i2 %1 to i11                   ; [#uses=2 type=i11]
  %empty_31 = trunc i11 %empty to i9              ; [#uses=1 type=i9]
  %empty_32 = call i9 @_ssdm_op_PartSelect.i9.i11.i32.i32(i11 %empty_30, i32 2, i32 10) ; [#uses=1 type=i9]
  %empty_33 = or i9 %empty_31, %empty_32          ; [#uses=1 type=i9]
  %empty_34 = call i11 @_ssdm_op_PartSet.i11.i11.i9.i32.i32(i11 %empty_30, i9 %empty_33, i32 2, i32 10) ; [#uses=1 type=i11]
  ret i11 %empty_34
}

; [#uses=3]
define weak i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_35 = trunc i11 %empty to i8              ; [#uses=1 type=i8]
  ret i8 %empty_35
}

; [#uses=0]
define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i1.i1.i1(i8, i1, i1, i1) nounwind readnone {
entry:
  %empty = zext i1 %2 to i2                       ; [#uses=1 type=i2]
  %empty_36 = zext i1 %3 to i2                    ; [#uses=2 type=i2]
  %empty_37 = trunc i2 %empty to i1               ; [#uses=1 type=i1]
  %empty_38 = call i1 @_ssdm_op_BitSelect.i1.i2.i32(i2 %empty_36, i32 1) ; [#uses=1 type=i1]
  %empty_39 = or i1 %empty_37, %empty_38          ; [#uses=1 type=i1]
  %empty_40 = call i2 @_ssdm_op_PartSet.i2.i2.i1.i32.i32(i2 %empty_36, i1 %empty_39, i32 1, i32 1) ; [#uses=1 type=i2]
  %empty_41 = zext i1 %1 to i3                    ; [#uses=1 type=i3]
  %empty_42 = zext i2 %empty_40 to i3             ; [#uses=2 type=i3]
  %empty_43 = trunc i3 %empty_41 to i1            ; [#uses=1 type=i1]
  %empty_44 = call i1 @_ssdm_op_BitSelect.i1.i3.i32(i3 %empty_42, i32 2) ; [#uses=1 type=i1]
  %empty_45 = or i1 %empty_43, %empty_44          ; [#uses=1 type=i1]
  %empty_46 = call i3 @_ssdm_op_PartSet.i3.i3.i1.i32.i32(i3 %empty_42, i1 %empty_45, i32 2, i32 2) ; [#uses=1 type=i3]
  %empty_47 = zext i8 %0 to i11                   ; [#uses=1 type=i11]
  %empty_48 = zext i3 %empty_46 to i11            ; [#uses=2 type=i11]
  %empty_49 = trunc i11 %empty_47 to i8           ; [#uses=1 type=i8]
  %empty_50 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %empty_48, i32 3, i32 10) ; [#uses=1 type=i8]
  %empty_51 = or i8 %empty_49, %empty_50          ; [#uses=1 type=i8]
  %empty_52 = call i11 @_ssdm_op_PartSet.i11.i11.i8.i32.i32(i11 %empty_48, i8 %empty_51, i32 3, i32 10) ; [#uses=1 type=i11]
  ret i11 %empty_52
}

; [#uses=4]
define weak i11 @_ssdm_op_BitConcatenate.i11.i8.i3(i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %0 to i11                      ; [#uses=1 type=i11]
  %empty_53 = zext i3 %1 to i11                   ; [#uses=2 type=i11]
  %empty_54 = trunc i11 %empty to i8              ; [#uses=1 type=i8]
  %empty_55 = call i8 @_ssdm_op_PartSelect.i8.i11.i32.i32(i11 %empty_53, i32 3, i32 10) ; [#uses=1 type=i8]
  %empty_56 = or i8 %empty_54, %empty_55          ; [#uses=1 type=i8]
  %empty_57 = call i11 @_ssdm_op_PartSet.i11.i11.i8.i32.i32(i11 %empty_53, i8 %empty_56, i32 3, i32 10) ; [#uses=1 type=i11]
  ret i11 %empty_57
}

; [#uses=3]
declare i11 @llvm.part.select.i11(i11, i32, i32) nounwind readnone

; [#uses=1]
define weak i10 @_ssdm_op_PartSelect.i10.i11.i32.i32(i11, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.select.i11(i11 %0, i32 %1, i32 %2) ; [#uses=1 type=i11]
  %empty_58 = trunc i11 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_58
}

; [#uses=1]
define weak i11 @_ssdm_op_PartSet.i11.i11.i10.i32.i32(i11, i10, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i10(i11 %0, i10 %1, i32 %2, i32 %3) ; [#uses=1 type=i11]
  ret i11 %empty
}

; [#uses=1]
define weak i11 @_ssdm_op_PartSet.i11.i11.i9.i32.i32(i11, i9, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i9(i11 %0, i9 %1, i32 %2, i32 %3) ; [#uses=1 type=i11]
  ret i11 %empty
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

; [#uses=1]
define weak i2 @_ssdm_op_PartSet.i2.i2.i1.i32.i32(i2, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i2 @llvm.part.set.i2.i1(i2 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i2]
  ret i2 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i2.i32(i2, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i2                     ; [#uses=1 type=i2]
  %empty_59 = shl i2 1, %empty                    ; [#uses=1 type=i2]
  %empty_60 = and i2 %0, %empty_59                ; [#uses=1 type=i2]
  %empty_61 = icmp ne i2 %empty_60, 0             ; [#uses=1 type=i1]
  ret i1 %empty_61
}

; [#uses=0]
declare i1 @_ssdm_op_PartSelect.i1.i3.i32.i32(i3, i32, i32) nounwind readnone

; [#uses=1]
define weak i3 @_ssdm_op_PartSet.i3.i3.i1.i32.i32(i3, i1, i32, i32) nounwind readnone {
entry:
  %empty = call i3 @llvm.part.set.i3.i1(i3 %0, i1 %1, i32 %2, i32 %3) ; [#uses=1 type=i3]
  ret i3 %empty
}

; [#uses=1]
define weak i1 @_ssdm_op_BitSelect.i1.i3.i32(i3, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i3                     ; [#uses=1 type=i3]
  %empty_62 = shl i3 1, %empty                    ; [#uses=1 type=i3]
  %empty_63 = and i3 %0, %empty_62                ; [#uses=1 type=i3]
  %empty_64 = icmp ne i3 %empty_63, 0             ; [#uses=1 type=i1]
  ret i1 %empty_64
}

; [#uses=2]
define weak i11 @_ssdm_op_PartSet.i11.i11.i8.i32.i32(i11, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i11 @llvm.part.set.i11.i8(i11 %0, i8 %1, i32 %2, i32 %3) ; [#uses=1 type=i11]
  ret i11 %empty
}

; [#uses=1]
declare i11 @llvm.part.set.i11.i10(i11, i10, i32, i32) nounwind readnone

; [#uses=1]
declare i11 @llvm.part.set.i11.i9(i11, i9, i32, i32) nounwind readnone

; [#uses=1]
declare i2 @llvm.part.set.i2.i1(i2, i1, i32, i32) nounwind readnone

; [#uses=1]
declare i3 @llvm.part.set.i3.i1(i3, i1, i32, i32) nounwind readnone

; [#uses=1]
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
!12 = metadata !{i32 786689, metadata !13, metadata !"sub_in", null, i32 3, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!13 = metadata !{i32 786478, i32 0, metadata !14, metadata !"kmean_ip", metadata !"kmean_ip", metadata !"", metadata !14, i32 3, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !19, i32 3} ; [ DW_TAG_subprogram ]
!14 = metadata !{i32 786473, metadata !"kmean-small/src/kmean_ip.c", metadata !"d:/minibench/customization", null} ; [ DW_TAG_file_type ]
!15 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!16 = metadata !{null, metadata !17, metadata !17}
!17 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ]
!18 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65792, i64 32, i32 0, i32 0, metadata !18, metadata !22, i32 0, i32 0} ; [ DW_TAG_array_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 2055}     ; [ DW_TAG_subrange_type ]
!24 = metadata !{i32 3, i32 19, metadata !13, null}
!25 = metadata !{i32 786689, metadata !13, metadata !"sub_out", null, i32 3, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 384, i64 32, i32 0, i32 0, metadata !18, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 11}       ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 3, i32 44, metadata !13, null}
!30 = metadata !{i32 4, i32 1, metadata !31, null}
!31 = metadata !{i32 786443, metadata !13, i32 3, i32 60, metadata !14, i32 0} ; [ DW_TAG_lexical_block ]
!32 = metadata !{i32 17, i32 9, metadata !33, null}
!33 = metadata !{i32 786443, metadata !31, i32 17, i32 5, metadata !14, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 17, i32 24, metadata !33, null}
!35 = metadata !{i32 21, i32 9, metadata !36, null}
!36 = metadata !{i32 786443, metadata !37, i32 20, i32 42, metadata !14, i32 4} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 786443, metadata !31, i32 20, i32 21, metadata !14, i32 3} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 24, i32 9, metadata !36, null}
!39 = metadata !{i32 27, i32 9, metadata !36, null}
!40 = metadata !{i32 30, i32 9, metadata !36, null}
!41 = metadata !{i32 52, i32 14, metadata !42, null}
!42 = metadata !{i32 786443, metadata !36, i32 51, i32 55, metadata !14, i32 8} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 53, i32 14, metadata !42, null}
!44 = metadata !{i32 54, i32 14, metadata !42, null}
!45 = metadata !{i32 46, i32 14, metadata !46, null}
!46 = metadata !{i32 786443, metadata !36, i32 45, i32 56, metadata !14, i32 7} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 47, i32 14, metadata !46, null}
!48 = metadata !{i32 48, i32 14, metadata !46, null}
!49 = metadata !{i32 40, i32 14, metadata !50, null}
!50 = metadata !{i32 786443, metadata !36, i32 39, i32 57, metadata !14, i32 6} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 41, i32 14, metadata !50, null}
!52 = metadata !{i32 42, i32 14, metadata !50, null}
!53 = metadata !{i32 34, i32 14, metadata !54, null}
!54 = metadata !{i32 786443, metadata !36, i32 33, i32 58, metadata !14, i32 5} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 36, i32 14, metadata !54, null}
!56 = metadata !{i32 20, i32 25, metadata !37, null}
!57 = metadata !{i32 18, i32 9, metadata !58, null}
!58 = metadata !{i32 786443, metadata !33, i32 17, i32 28, metadata !14, i32 2} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 786688, metadata !31, metadata !"i", metadata !14, i32 4, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 56, i32 5, metadata !36, null}
!61 = metadata !{i32 33, i32 10, metadata !36, null}
!62 = metadata !{i32 51, i32 10, metadata !36, null}
!63 = metadata !{i32 45, i32 10, metadata !36, null}
!64 = metadata !{i32 39, i32 10, metadata !36, null}
!65 = metadata !{i32 20, i32 43, metadata !36, null}
!66 = metadata !{i32 20, i32 84, metadata !36, null}
!67 = metadata !{i32 21, i32 1, metadata !36, null}
!68 = metadata !{i32 35, i32 14, metadata !54, null}
!69 = metadata !{i32 37, i32 10, metadata !54, null}
!70 = metadata !{i32 43, i32 10, metadata !50, null}
!71 = metadata !{i32 49, i32 10, metadata !46, null}
!72 = metadata !{i32 55, i32 10, metadata !42, null}
!73 = metadata !{i32 20, i32 38, metadata !37, null}
!74 = metadata !{i32 58, i32 1, metadata !31, null}
