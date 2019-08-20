; ModuleID = '/home/mhho/wrk/SparkAccel/hls/hls_linearRegression/axi_interfaces_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [15 x i8] c"axi_interfaces\00"

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define internal fastcc i64 @axi_interfaces_reverseBytes64(i64 %in_r) nounwind uwtable readnone {
  %in_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %in_r) nounwind
  %tmp = trunc i64 %in_read to i8
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %in_read, i32 8, i32 15)
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %in_read, i32 16, i32 23)
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %in_read, i32 24, i32 31)
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %in_read, i32 40, i32 47)
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %in_read, i32 48, i32 55)
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %in_read, i32 56, i32 63)
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %in_read, i32 32, i32 39)
  %out = call i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp, i8 %tmp_1, i8 %tmp_2, i8 %tmp_9, i8 %tmp_5, i8 %tmp_s, i8 %tmp_3, i8 %tmp_4)
  ret i64 %out
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_6 = zext i32 %1 to i64
  %empty_7 = shl i64 %empty, 32
  %empty_8 = or i64 %empty_7, %empty_6
  ret i64 %empty_8
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define void @axi_interfaces([128 x i32]* %doutc_0, [128 x i32]* %doutc_1, [128 x i32]* %dina_0, [128 x i32]* %dina_1, [128 x i32]* %dinb_0, [128 x i32]* %dinb_1) {
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i32]* %dina_1), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i32]* %dina_0), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i32]* %dinb_1), !map !19
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i32]* %dinb_0), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i32]* %doutc_1), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap([128 x i32]* %doutc_0), !map !31
  %dinb_0_addr_65 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 0
  %doutc_0_addr_126 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 0
  call void (...)* @_ssdm_op_SpecTopModule([15 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 128, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %dina_1_addr = getelementptr [128 x i32]* %dina_1, i64 0, i64 1
  %dina_1_load = load i32* %dina_1_addr, align 4
  %dina_0_addr = getelementptr [128 x i32]* %dina_0, i64 0, i64 2
  %dina_0_load = load i32* %dina_0_addr, align 4
  %tmpa = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load, i32 %dina_1_load)
  %a_label = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa)
  %dinb_0_load = load i32* %dinb_0_addr_65, align 4
  %dinb_1_addr = getelementptr [128 x i32]* %dinb_1, i64 0, i64 0
  %dinb_1_load = load i32* %dinb_1_addr, align 4
  %dinb_0_addr = getelementptr [128 x i32]* %dinb_0, i64 0, i64 1
  %temp = load i32* %dinb_0_addr, align 4
  %tmp_1 = trunc i32 %temp to i8
  %tmp_1_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 8, i32 15)
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 16, i32 23)
  %tmp_9_i = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %temp, i32 24, i32 31)
  %out = call i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8 %tmp_1, i8 %tmp_1_i, i8 %tmp, i8 %tmp_9_i)
  store i32 %dinb_0_load, i32* %doutc_0_addr_126, align 4
  %doutc_1_addr = getelementptr [128 x i32]* %doutc_1, i64 0, i64 0
  store i32 %dinb_1_load, i32* %doutc_1_addr, align 4
  %doutc_0_addr = getelementptr [128 x i32]* %doutc_0, i64 0, i64 1
  store i32 %temp, i32* %doutc_0_addr, align 4
  %tmp1 = icmp eq i32 %out, 0
  br i1 %tmp1, label %._crit_edge.0, label %1

._crit_edge.0:                                    ; preds = %1, %0
  %a_elem_load = phi double [ undef, %0 ], [ %tmp_s, %1 ]
  %gep3220_loc = phi double [ undef, %0 ], [ %tmp_7, %1 ]
  %tmp_2 = call i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32 %temp, i32 25, i32 31)
  %tmp_3 = call i31 @_ssdm_op_BitConcatenate.i31.i8.i8.i8.i7(i8 %tmp_1, i8 %tmp_1_i, i8 %tmp, i7 %tmp_2)
  %icmp = icmp ne i31 %tmp_3, 0
  br i1 %icmp, label %2, label %._crit_edge.1

; <label>:1                                       ; preds = %0
  %dina_1_addr_1 = getelementptr [128 x i32]* %dina_1, i64 0, i64 2
  %dina_1_load_1 = load i32* %dina_1_addr_1, align 4
  %dina_0_addr_1 = getelementptr [128 x i32]* %dina_0, i64 0, i64 3
  %dina_0_load_1 = load i32* %dina_0_addr_1, align 4
  %tmpa_1 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_1, i32 %dina_1_load_1)
  %dinb_1_addr_1 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 1
  %dinb_1_load_1 = load i32* %dinb_1_addr_1, align 4
  %dinb_0_addr_1 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 2
  %dinb_0_load_1 = load i32* %dinb_0_addr_1, align 4
  %tmpb = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_1, i32 %dinb_1_load_1)
  %a_union = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1)
  %tmp_s = bitcast i64 %a_union to double
  %b_elem = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb)
  %tmp_6 = bitcast i64 %b_elem to double
  %tmp_7 = fmul double %tmp_s, %tmp_6
  br label %._crit_edge.0

._crit_edge.1:                                    ; preds = %2, %._crit_edge.0
  %a_elem_load_1 = phi double [ %tmp_1_9, %2 ], [ undef, %._crit_edge.0 ]
  %gep3217_loc = phi double [ %tmp_12_1, %2 ], [ undef, %._crit_edge.0 ]
  %tmp_9 = icmp ugt i32 %out, 2
  br i1 %tmp_9, label %3, label %._crit_edge.2

; <label>:2                                       ; preds = %._crit_edge.0
  %dina_1_addr_2 = getelementptr [128 x i32]* %dina_1, i64 0, i64 3
  %dina_1_load_2 = load i32* %dina_1_addr_2, align 4
  %dina_0_addr_2 = getelementptr [128 x i32]* %dina_0, i64 0, i64 4
  %dina_0_load_2 = load i32* %dina_0_addr_2, align 4
  %tmpa_1_1 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_2, i32 %dina_1_load_2)
  %dinb_1_addr_2 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 2
  %dinb_1_load_2 = load i32* %dinb_1_addr_2, align 4
  %dinb_0_addr_2 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 3
  %dinb_0_load_2 = load i32* %dinb_0_addr_2, align 4
  %tmpb_1 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_2, i32 %dinb_1_load_2)
  %a_union_1 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_1)
  %tmp_1_9 = bitcast i64 %a_union_1 to double
  %b_elem_1 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_1)
  %tmp_11_1 = bitcast i64 %b_elem_1 to double
  %tmp_12_1 = fmul double %tmp_1_9, %tmp_11_1
  br label %._crit_edge.1

._crit_edge.2:                                    ; preds = %3, %._crit_edge.1
  %a_elem_load_2 = phi double [ %tmp_2_10, %3 ], [ undef, %._crit_edge.1 ]
  %gep3214_loc = phi double [ %tmp_12_2, %3 ], [ undef, %._crit_edge.1 ]
  %tmp_4 = call i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32 %temp, i32 26, i32 31)
  %tmp_5 = call i30 @_ssdm_op_BitConcatenate.i30.i8.i8.i8.i6(i8 %tmp_1, i8 %tmp_1_i, i8 %tmp, i6 %tmp_4)
  %icmp3 = icmp ne i30 %tmp_5, 0
  br i1 %icmp3, label %4, label %._crit_edge.3

; <label>:3                                       ; preds = %._crit_edge.1
  %dina_1_addr_3 = getelementptr [128 x i32]* %dina_1, i64 0, i64 4
  %dina_1_load_3 = load i32* %dina_1_addr_3, align 4
  %dina_0_addr_3 = getelementptr [128 x i32]* %dina_0, i64 0, i64 5
  %dina_0_load_3 = load i32* %dina_0_addr_3, align 4
  %tmpa_1_2 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_3, i32 %dina_1_load_3)
  %dinb_1_addr_3 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 3
  %dinb_1_load_3 = load i32* %dinb_1_addr_3, align 4
  %dinb_0_addr_3 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 4
  %dinb_0_load_3 = load i32* %dinb_0_addr_3, align 4
  %tmpb_2 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_3, i32 %dinb_1_load_3)
  %a_union_2 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_2)
  %tmp_2_10 = bitcast i64 %a_union_2 to double
  %b_elem_2 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_2)
  %tmp_11_2 = bitcast i64 %b_elem_2 to double
  %tmp_12_2 = fmul double %tmp_2_10, %tmp_11_2
  br label %._crit_edge.2

._crit_edge.3:                                    ; preds = %4, %._crit_edge.2
  %a_elem_load_3 = phi double [ %tmp_3_11, %4 ], [ undef, %._crit_edge.2 ]
  %gep3211_loc = phi double [ %tmp_12_3, %4 ], [ undef, %._crit_edge.2 ]
  %tmp_8 = icmp ugt i32 %out, 4
  br i1 %tmp_8, label %5, label %._crit_edge.4

; <label>:4                                       ; preds = %._crit_edge.2
  %dina_1_addr_4 = getelementptr [128 x i32]* %dina_1, i64 0, i64 5
  %dina_1_load_4 = load i32* %dina_1_addr_4, align 4
  %dina_0_addr_4 = getelementptr [128 x i32]* %dina_0, i64 0, i64 6
  %dina_0_load_4 = load i32* %dina_0_addr_4, align 4
  %tmpa_1_3 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_4, i32 %dina_1_load_4)
  %dinb_1_addr_4 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 4
  %dinb_1_load_4 = load i32* %dinb_1_addr_4, align 4
  %dinb_0_addr_4 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 5
  %dinb_0_load_4 = load i32* %dinb_0_addr_4, align 4
  %tmpb_3 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_4, i32 %dinb_1_load_4)
  %a_union_3 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_3)
  %tmp_3_11 = bitcast i64 %a_union_3 to double
  %b_elem_3 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_3)
  %tmp_11_3 = bitcast i64 %b_elem_3 to double
  %tmp_12_3 = fmul double %tmp_3_11, %tmp_11_3
  br label %._crit_edge.3

._crit_edge.4:                                    ; preds = %5, %._crit_edge.3
  %a_elem_load_4 = phi double [ %tmp_4_12, %5 ], [ undef, %._crit_edge.3 ]
  %gep3208_loc = phi double [ %tmp_12_4, %5 ], [ undef, %._crit_edge.3 ]
  %tmp_10 = icmp ugt i32 %out, 5
  br i1 %tmp_10, label %6, label %._crit_edge.5

; <label>:5                                       ; preds = %._crit_edge.3
  %dina_1_addr_5 = getelementptr [128 x i32]* %dina_1, i64 0, i64 6
  %dina_1_load_5 = load i32* %dina_1_addr_5, align 4
  %dina_0_addr_5 = getelementptr [128 x i32]* %dina_0, i64 0, i64 7
  %dina_0_load_5 = load i32* %dina_0_addr_5, align 4
  %tmpa_1_4 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_5, i32 %dina_1_load_5)
  %dinb_1_addr_5 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 5
  %dinb_1_load_5 = load i32* %dinb_1_addr_5, align 4
  %dinb_0_addr_5 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 6
  %dinb_0_load_5 = load i32* %dinb_0_addr_5, align 4
  %tmpb_4 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_5, i32 %dinb_1_load_5)
  %a_union_4 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_4)
  %tmp_4_12 = bitcast i64 %a_union_4 to double
  %b_elem_4 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_4)
  %tmp_11_4 = bitcast i64 %b_elem_4 to double
  %tmp_12_4 = fmul double %tmp_4_12, %tmp_11_4
  br label %._crit_edge.4

._crit_edge.5:                                    ; preds = %6, %._crit_edge.4
  %a_elem_load_5 = phi double [ %tmp_5_13, %6 ], [ undef, %._crit_edge.4 ]
  %gep3205_loc = phi double [ %tmp_12_5, %6 ], [ undef, %._crit_edge.4 ]
  %tmp_11 = icmp ugt i32 %out, 6
  br i1 %tmp_11, label %7, label %._crit_edge.6

; <label>:6                                       ; preds = %._crit_edge.4
  %dina_1_addr_6 = getelementptr [128 x i32]* %dina_1, i64 0, i64 7
  %dina_1_load_6 = load i32* %dina_1_addr_6, align 4
  %dina_0_addr_6 = getelementptr [128 x i32]* %dina_0, i64 0, i64 8
  %dina_0_load_6 = load i32* %dina_0_addr_6, align 4
  %tmpa_1_5 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_6, i32 %dina_1_load_6)
  %dinb_1_addr_6 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 6
  %dinb_1_load_6 = load i32* %dinb_1_addr_6, align 4
  %dinb_0_addr_6 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 7
  %dinb_0_load_6 = load i32* %dinb_0_addr_6, align 4
  %tmpb_5 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_6, i32 %dinb_1_load_6)
  %a_union_5 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_5)
  %tmp_5_13 = bitcast i64 %a_union_5 to double
  %b_elem_5 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_5)
  %tmp_11_5 = bitcast i64 %b_elem_5 to double
  %tmp_12_5 = fmul double %tmp_5_13, %tmp_11_5
  br label %._crit_edge.5

._crit_edge.6:                                    ; preds = %7, %._crit_edge.5
  %a_elem_load_6 = phi double [ %tmp_6_14, %7 ], [ undef, %._crit_edge.5 ]
  %gep3202_loc = phi double [ %tmp_12_6, %7 ], [ undef, %._crit_edge.5 ]
  %tmp_12 = call i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32 %temp, i32 27, i32 31)
  %tmp_13 = call i29 @_ssdm_op_BitConcatenate.i29.i8.i8.i8.i5(i8 %tmp_1, i8 %tmp_1_i, i8 %tmp, i5 %tmp_12)
  %icmp6 = icmp ne i29 %tmp_13, 0
  br i1 %icmp6, label %8, label %._crit_edge.7

; <label>:7                                       ; preds = %._crit_edge.5
  %dina_1_addr_7 = getelementptr [128 x i32]* %dina_1, i64 0, i64 8
  %dina_1_load_7 = load i32* %dina_1_addr_7, align 4
  %dina_0_addr_7 = getelementptr [128 x i32]* %dina_0, i64 0, i64 9
  %dina_0_load_7 = load i32* %dina_0_addr_7, align 4
  %tmpa_1_6 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_7, i32 %dina_1_load_7)
  %dinb_1_addr_7 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 7
  %dinb_1_load_7 = load i32* %dinb_1_addr_7, align 4
  %dinb_0_addr_7 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 8
  %dinb_0_load_7 = load i32* %dinb_0_addr_7, align 4
  %tmpb_6 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_7, i32 %dinb_1_load_7)
  %a_union_6 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_6)
  %tmp_6_14 = bitcast i64 %a_union_6 to double
  %b_elem_6 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_6)
  %tmp_11_6 = bitcast i64 %b_elem_6 to double
  %tmp_12_6 = fmul double %tmp_6_14, %tmp_11_6
  br label %._crit_edge.6

._crit_edge.7:                                    ; preds = %8, %._crit_edge.6
  %a_elem_load_7 = phi double [ %tmp_7_15, %8 ], [ undef, %._crit_edge.6 ]
  %gep3199_loc = phi double [ %tmp_12_7, %8 ], [ undef, %._crit_edge.6 ]
  %tmp_14 = icmp ugt i32 %out, 8
  br i1 %tmp_14, label %9, label %._crit_edge.8

; <label>:8                                       ; preds = %._crit_edge.6
  %dina_1_addr_8 = getelementptr [128 x i32]* %dina_1, i64 0, i64 9
  %dina_1_load_8 = load i32* %dina_1_addr_8, align 4
  %dina_0_addr_8 = getelementptr [128 x i32]* %dina_0, i64 0, i64 10
  %dina_0_load_8 = load i32* %dina_0_addr_8, align 4
  %tmpa_1_7 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_8, i32 %dina_1_load_8)
  %dinb_1_addr_8 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 8
  %dinb_1_load_8 = load i32* %dinb_1_addr_8, align 4
  %dinb_0_addr_8 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 9
  %dinb_0_load_8 = load i32* %dinb_0_addr_8, align 4
  %tmpb_7 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_8, i32 %dinb_1_load_8)
  %a_union_7 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_7)
  %tmp_7_15 = bitcast i64 %a_union_7 to double
  %b_elem_7 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_7)
  %tmp_11_7 = bitcast i64 %b_elem_7 to double
  %tmp_12_7 = fmul double %tmp_7_15, %tmp_11_7
  br label %._crit_edge.7

._crit_edge.8:                                    ; preds = %9, %._crit_edge.7
  %a_elem_load_8 = phi double [ %tmp_8_16, %9 ], [ undef, %._crit_edge.7 ]
  %gep3196_loc = phi double [ %tmp_12_8, %9 ], [ undef, %._crit_edge.7 ]
  %tmp_15 = icmp ugt i32 %out, 9
  br i1 %tmp_15, label %10, label %._crit_edge.9

; <label>:9                                       ; preds = %._crit_edge.7
  %dina_1_addr_9 = getelementptr [128 x i32]* %dina_1, i64 0, i64 10
  %dina_1_load_9 = load i32* %dina_1_addr_9, align 4
  %dina_0_addr_9 = getelementptr [128 x i32]* %dina_0, i64 0, i64 11
  %dina_0_load_9 = load i32* %dina_0_addr_9, align 4
  %tmpa_1_8 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_9, i32 %dina_1_load_9)
  %dinb_1_addr_9 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 9
  %dinb_1_load_9 = load i32* %dinb_1_addr_9, align 4
  %dinb_0_addr_9 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 10
  %dinb_0_load_9 = load i32* %dinb_0_addr_9, align 4
  %tmpb_8 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_9, i32 %dinb_1_load_9)
  %a_union_8 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_8)
  %tmp_8_16 = bitcast i64 %a_union_8 to double
  %b_elem_8 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_8)
  %tmp_11_8 = bitcast i64 %b_elem_8 to double
  %tmp_12_8 = fmul double %tmp_8_16, %tmp_11_8
  br label %._crit_edge.8

._crit_edge.9:                                    ; preds = %10, %._crit_edge.8
  %a_elem_load_9 = phi double [ %tmp_9_17, %10 ], [ undef, %._crit_edge.8 ]
  %gep3193_loc = phi double [ %tmp_12_9, %10 ], [ undef, %._crit_edge.8 ]
  %tmp_16 = icmp ugt i32 %out, 10
  br i1 %tmp_16, label %11, label %._crit_edge.10

; <label>:10                                      ; preds = %._crit_edge.8
  %dina_1_addr_10 = getelementptr [128 x i32]* %dina_1, i64 0, i64 11
  %dina_1_load_10 = load i32* %dina_1_addr_10, align 4
  %dina_0_addr_10 = getelementptr [128 x i32]* %dina_0, i64 0, i64 12
  %dina_0_load_10 = load i32* %dina_0_addr_10, align 4
  %tmpa_1_9 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_10, i32 %dina_1_load_10)
  %dinb_1_addr_10 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 10
  %dinb_1_load_10 = load i32* %dinb_1_addr_10, align 4
  %dinb_0_addr_10 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 11
  %dinb_0_load_10 = load i32* %dinb_0_addr_10, align 4
  %tmpb_9 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_10, i32 %dinb_1_load_10)
  %a_union_9 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_9)
  %tmp_9_17 = bitcast i64 %a_union_9 to double
  %b_elem_9 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_9)
  %tmp_11_9 = bitcast i64 %b_elem_9 to double
  %tmp_12_9 = fmul double %tmp_9_17, %tmp_11_9
  br label %._crit_edge.9

._crit_edge.10:                                   ; preds = %11, %._crit_edge.9
  %a_elem_load_s = phi double [ %tmp_s_18, %11 ], [ undef, %._crit_edge.9 ]
  %gep3190_loc = phi double [ %tmp_12_s, %11 ], [ undef, %._crit_edge.9 ]
  %tmp_17 = icmp ugt i32 %out, 11
  br i1 %tmp_17, label %12, label %._crit_edge.11

; <label>:11                                      ; preds = %._crit_edge.9
  %dina_1_addr_11 = getelementptr [128 x i32]* %dina_1, i64 0, i64 12
  %dina_1_load_11 = load i32* %dina_1_addr_11, align 4
  %dina_0_addr_11 = getelementptr [128 x i32]* %dina_0, i64 0, i64 13
  %dina_0_load_11 = load i32* %dina_0_addr_11, align 4
  %tmpa_1_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_11, i32 %dina_1_load_11)
  %dinb_1_addr_11 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 11
  %dinb_1_load_11 = load i32* %dinb_1_addr_11, align 4
  %dinb_0_addr_11 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 12
  %dinb_0_load_11 = load i32* %dinb_0_addr_11, align 4
  %tmpb_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_11, i32 %dinb_1_load_11)
  %a_union_s = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_s)
  %tmp_s_18 = bitcast i64 %a_union_s to double
  %b_elem_s = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_s)
  %tmp_11_s = bitcast i64 %b_elem_s to double
  %tmp_12_s = fmul double %tmp_s_18, %tmp_11_s
  br label %._crit_edge.10

._crit_edge.11:                                   ; preds = %12, %._crit_edge.10
  %a_elem_load_10 = phi double [ %tmp_10_19, %12 ], [ undef, %._crit_edge.10 ]
  %gep3187_loc = phi double [ %tmp_12_10, %12 ], [ undef, %._crit_edge.10 ]
  %tmp_18 = icmp ugt i32 %out, 12
  br i1 %tmp_18, label %13, label %._crit_edge.12

; <label>:12                                      ; preds = %._crit_edge.10
  %dina_1_addr_12 = getelementptr [128 x i32]* %dina_1, i64 0, i64 13
  %dina_1_load_12 = load i32* %dina_1_addr_12, align 4
  %dina_0_addr_12 = getelementptr [128 x i32]* %dina_0, i64 0, i64 14
  %dina_0_load_12 = load i32* %dina_0_addr_12, align 4
  %tmpa_1_10 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_12, i32 %dina_1_load_12)
  %dinb_1_addr_12 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 12
  %dinb_1_load_12 = load i32* %dinb_1_addr_12, align 4
  %dinb_0_addr_12 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 13
  %dinb_0_load_12 = load i32* %dinb_0_addr_12, align 4
  %tmpb_10 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_12, i32 %dinb_1_load_12)
  %a_union_10 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_10)
  %tmp_10_19 = bitcast i64 %a_union_10 to double
  %b_elem_10 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_10)
  %tmp_11_10 = bitcast i64 %b_elem_10 to double
  %tmp_12_10 = fmul double %tmp_10_19, %tmp_11_10
  br label %._crit_edge.11

._crit_edge.12:                                   ; preds = %13, %._crit_edge.11
  %a_elem_load_11 = phi double [ %tmp_11_20, %13 ], [ undef, %._crit_edge.11 ]
  %gep3184_loc = phi double [ %tmp_12_11, %13 ], [ undef, %._crit_edge.11 ]
  %tmp_19 = icmp ugt i32 %out, 13
  br i1 %tmp_19, label %14, label %._crit_edge.13

; <label>:13                                      ; preds = %._crit_edge.11
  %dina_1_addr_13 = getelementptr [128 x i32]* %dina_1, i64 0, i64 14
  %dina_1_load_13 = load i32* %dina_1_addr_13, align 4
  %dina_0_addr_13 = getelementptr [128 x i32]* %dina_0, i64 0, i64 15
  %dina_0_load_13 = load i32* %dina_0_addr_13, align 4
  %tmpa_1_11 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_13, i32 %dina_1_load_13)
  %dinb_1_addr_13 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 13
  %dinb_1_load_13 = load i32* %dinb_1_addr_13, align 4
  %dinb_0_addr_13 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 14
  %dinb_0_load_13 = load i32* %dinb_0_addr_13, align 4
  %tmpb_11 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_13, i32 %dinb_1_load_13)
  %a_union_11 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_11)
  %tmp_11_20 = bitcast i64 %a_union_11 to double
  %b_elem_11 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_11)
  %tmp_11_11 = bitcast i64 %b_elem_11 to double
  %tmp_12_11 = fmul double %tmp_11_20, %tmp_11_11
  br label %._crit_edge.12

._crit_edge.13:                                   ; preds = %14, %._crit_edge.12
  %a_elem_load_12 = phi double [ %tmp_12_21, %14 ], [ undef, %._crit_edge.12 ]
  %gep3181_loc = phi double [ %tmp_12_12, %14 ], [ undef, %._crit_edge.12 ]
  %tmp_20 = icmp ugt i32 %out, 14
  br i1 %tmp_20, label %15, label %._crit_edge.14

; <label>:14                                      ; preds = %._crit_edge.12
  %dina_1_addr_14 = getelementptr [128 x i32]* %dina_1, i64 0, i64 15
  %dina_1_load_14 = load i32* %dina_1_addr_14, align 4
  %dina_0_addr_14 = getelementptr [128 x i32]* %dina_0, i64 0, i64 16
  %dina_0_load_14 = load i32* %dina_0_addr_14, align 4
  %tmpa_1_12 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_14, i32 %dina_1_load_14)
  %dinb_1_addr_14 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 14
  %dinb_1_load_14 = load i32* %dinb_1_addr_14, align 4
  %dinb_0_addr_14 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 15
  %dinb_0_load_14 = load i32* %dinb_0_addr_14, align 4
  %tmpb_12 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_14, i32 %dinb_1_load_14)
  %a_union_12 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_12)
  %tmp_12_21 = bitcast i64 %a_union_12 to double
  %b_elem_12 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_12)
  %tmp_11_12 = bitcast i64 %b_elem_12 to double
  %tmp_12_12 = fmul double %tmp_12_21, %tmp_11_12
  br label %._crit_edge.13

._crit_edge.14:                                   ; preds = %15, %._crit_edge.13
  %a_elem_load_13 = phi double [ %tmp_13_22, %15 ], [ undef, %._crit_edge.13 ]
  %gep3178_loc = phi double [ %tmp_12_13, %15 ], [ undef, %._crit_edge.13 ]
  %tmp_21 = call i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32 %temp, i32 28, i32 31)
  %tmp_22 = call i28 @_ssdm_op_BitConcatenate.i28.i8.i8.i8.i4(i8 %tmp_1, i8 %tmp_1_i, i8 %tmp, i4 %tmp_21)
  %icmp9 = icmp ne i28 %tmp_22, 0
  br i1 %icmp9, label %16, label %._crit_edge.15

; <label>:15                                      ; preds = %._crit_edge.13
  %dina_1_addr_15 = getelementptr [128 x i32]* %dina_1, i64 0, i64 16
  %dina_1_load_15 = load i32* %dina_1_addr_15, align 4
  %dina_0_addr_15 = getelementptr [128 x i32]* %dina_0, i64 0, i64 17
  %dina_0_load_15 = load i32* %dina_0_addr_15, align 4
  %tmpa_1_13 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_15, i32 %dina_1_load_15)
  %dinb_1_addr_15 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 15
  %dinb_1_load_15 = load i32* %dinb_1_addr_15, align 4
  %dinb_0_addr_15 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 16
  %dinb_0_load_15 = load i32* %dinb_0_addr_15, align 4
  %tmpb_13 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_15, i32 %dinb_1_load_15)
  %a_union_13 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_13)
  %tmp_13_22 = bitcast i64 %a_union_13 to double
  %b_elem_13 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_13)
  %tmp_11_13 = bitcast i64 %b_elem_13 to double
  %tmp_12_13 = fmul double %tmp_13_22, %tmp_11_13
  br label %._crit_edge.14

._crit_edge.15:                                   ; preds = %16, %._crit_edge.14
  %a_elem_load_14 = phi double [ %tmp_14_23, %16 ], [ undef, %._crit_edge.14 ]
  %gep3175_loc = phi double [ %tmp_12_14, %16 ], [ undef, %._crit_edge.14 ]
  %tmp_23 = icmp ugt i32 %out, 16
  br i1 %tmp_23, label %17, label %._crit_edge.16

; <label>:16                                      ; preds = %._crit_edge.14
  %dina_1_addr_16 = getelementptr [128 x i32]* %dina_1, i64 0, i64 17
  %dina_1_load_16 = load i32* %dina_1_addr_16, align 4
  %dina_0_addr_16 = getelementptr [128 x i32]* %dina_0, i64 0, i64 18
  %dina_0_load_16 = load i32* %dina_0_addr_16, align 4
  %tmpa_1_14 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_16, i32 %dina_1_load_16)
  %dinb_1_addr_16 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 16
  %dinb_1_load_16 = load i32* %dinb_1_addr_16, align 4
  %dinb_0_addr_16 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 17
  %dinb_0_load_16 = load i32* %dinb_0_addr_16, align 4
  %tmpb_14 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_16, i32 %dinb_1_load_16)
  %a_union_14 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_14)
  %tmp_14_23 = bitcast i64 %a_union_14 to double
  %b_elem_14 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_14)
  %tmp_11_14 = bitcast i64 %b_elem_14 to double
  %tmp_12_14 = fmul double %tmp_14_23, %tmp_11_14
  br label %._crit_edge.15

._crit_edge.16:                                   ; preds = %17, %._crit_edge.15
  %a_elem_load_15 = phi double [ %tmp_15_24, %17 ], [ undef, %._crit_edge.15 ]
  %gep3172_loc = phi double [ %tmp_12_15, %17 ], [ undef, %._crit_edge.15 ]
  %tmp_24 = icmp ugt i32 %out, 17
  br i1 %tmp_24, label %18, label %._crit_edge.17

; <label>:17                                      ; preds = %._crit_edge.15
  %dina_1_addr_17 = getelementptr [128 x i32]* %dina_1, i64 0, i64 18
  %dina_1_load_17 = load i32* %dina_1_addr_17, align 4
  %dina_0_addr_17 = getelementptr [128 x i32]* %dina_0, i64 0, i64 19
  %dina_0_load_17 = load i32* %dina_0_addr_17, align 4
  %tmpa_1_15 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_17, i32 %dina_1_load_17)
  %dinb_1_addr_17 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 17
  %dinb_1_load_17 = load i32* %dinb_1_addr_17, align 4
  %dinb_0_addr_17 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 18
  %dinb_0_load_17 = load i32* %dinb_0_addr_17, align 4
  %tmpb_15 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_17, i32 %dinb_1_load_17)
  %a_union_15 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_15)
  %tmp_15_24 = bitcast i64 %a_union_15 to double
  %b_elem_15 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_15)
  %tmp_11_15 = bitcast i64 %b_elem_15 to double
  %tmp_12_15 = fmul double %tmp_15_24, %tmp_11_15
  br label %._crit_edge.16

._crit_edge.17:                                   ; preds = %18, %._crit_edge.16
  %a_elem_load_16 = phi double [ %tmp_16_25, %18 ], [ undef, %._crit_edge.16 ]
  %gep3169_loc = phi double [ %tmp_12_16, %18 ], [ undef, %._crit_edge.16 ]
  %tmp_25 = icmp ugt i32 %out, 18
  br i1 %tmp_25, label %19, label %._crit_edge.18

; <label>:18                                      ; preds = %._crit_edge.16
  %dina_1_addr_18 = getelementptr [128 x i32]* %dina_1, i64 0, i64 19
  %dina_1_load_18 = load i32* %dina_1_addr_18, align 4
  %dina_0_addr_18 = getelementptr [128 x i32]* %dina_0, i64 0, i64 20
  %dina_0_load_18 = load i32* %dina_0_addr_18, align 4
  %tmpa_1_16 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_18, i32 %dina_1_load_18)
  %dinb_1_addr_18 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 18
  %dinb_1_load_18 = load i32* %dinb_1_addr_18, align 4
  %dinb_0_addr_18 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 19
  %dinb_0_load_18 = load i32* %dinb_0_addr_18, align 4
  %tmpb_16 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_18, i32 %dinb_1_load_18)
  %a_union_16 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_16)
  %tmp_16_25 = bitcast i64 %a_union_16 to double
  %b_elem_16 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_16)
  %tmp_11_16 = bitcast i64 %b_elem_16 to double
  %tmp_12_16 = fmul double %tmp_16_25, %tmp_11_16
  br label %._crit_edge.17

._crit_edge.18:                                   ; preds = %19, %._crit_edge.17
  %a_elem_load_17 = phi double [ %tmp_17_26, %19 ], [ undef, %._crit_edge.17 ]
  %gep3166_loc = phi double [ %tmp_12_17, %19 ], [ undef, %._crit_edge.17 ]
  %tmp_26 = icmp ugt i32 %out, 19
  br i1 %tmp_26, label %20, label %._crit_edge.19

; <label>:19                                      ; preds = %._crit_edge.17
  %dina_1_addr_19 = getelementptr [128 x i32]* %dina_1, i64 0, i64 20
  %dina_1_load_19 = load i32* %dina_1_addr_19, align 4
  %dina_0_addr_19 = getelementptr [128 x i32]* %dina_0, i64 0, i64 21
  %dina_0_load_19 = load i32* %dina_0_addr_19, align 4
  %tmpa_1_17 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_19, i32 %dina_1_load_19)
  %dinb_1_addr_19 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 19
  %dinb_1_load_19 = load i32* %dinb_1_addr_19, align 4
  %dinb_0_addr_19 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 20
  %dinb_0_load_19 = load i32* %dinb_0_addr_19, align 4
  %tmpb_17 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_19, i32 %dinb_1_load_19)
  %a_union_17 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_17)
  %tmp_17_26 = bitcast i64 %a_union_17 to double
  %b_elem_17 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_17)
  %tmp_11_17 = bitcast i64 %b_elem_17 to double
  %tmp_12_17 = fmul double %tmp_17_26, %tmp_11_17
  br label %._crit_edge.18

._crit_edge.19:                                   ; preds = %20, %._crit_edge.18
  %a_elem_load_18 = phi double [ %tmp_18_27, %20 ], [ undef, %._crit_edge.18 ]
  %gep3163_loc = phi double [ %tmp_12_18, %20 ], [ undef, %._crit_edge.18 ]
  %tmp_27 = icmp ugt i32 %out, 20
  br i1 %tmp_27, label %21, label %._crit_edge.20

; <label>:20                                      ; preds = %._crit_edge.18
  %dina_1_addr_20 = getelementptr [128 x i32]* %dina_1, i64 0, i64 21
  %dina_1_load_20 = load i32* %dina_1_addr_20, align 4
  %dina_0_addr_20 = getelementptr [128 x i32]* %dina_0, i64 0, i64 22
  %dina_0_load_20 = load i32* %dina_0_addr_20, align 4
  %tmpa_1_18 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_20, i32 %dina_1_load_20)
  %dinb_1_addr_20 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 20
  %dinb_1_load_20 = load i32* %dinb_1_addr_20, align 4
  %dinb_0_addr_20 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 21
  %dinb_0_load_20 = load i32* %dinb_0_addr_20, align 4
  %tmpb_18 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_20, i32 %dinb_1_load_20)
  %a_union_18 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_18)
  %tmp_18_27 = bitcast i64 %a_union_18 to double
  %b_elem_18 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_18)
  %tmp_11_18 = bitcast i64 %b_elem_18 to double
  %tmp_12_18 = fmul double %tmp_18_27, %tmp_11_18
  br label %._crit_edge.19

._crit_edge.20:                                   ; preds = %21, %._crit_edge.19
  %a_elem_load_19 = phi double [ %tmp_19_28, %21 ], [ undef, %._crit_edge.19 ]
  %gep3160_loc = phi double [ %tmp_12_19, %21 ], [ undef, %._crit_edge.19 ]
  %tmp_28 = icmp ugt i32 %out, 21
  br i1 %tmp_28, label %22, label %._crit_edge.21

; <label>:21                                      ; preds = %._crit_edge.19
  %dina_1_addr_21 = getelementptr [128 x i32]* %dina_1, i64 0, i64 22
  %dina_1_load_21 = load i32* %dina_1_addr_21, align 4
  %dina_0_addr_21 = getelementptr [128 x i32]* %dina_0, i64 0, i64 23
  %dina_0_load_21 = load i32* %dina_0_addr_21, align 4
  %tmpa_1_19 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_21, i32 %dina_1_load_21)
  %dinb_1_addr_21 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 21
  %dinb_1_load_21 = load i32* %dinb_1_addr_21, align 4
  %dinb_0_addr_21 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 22
  %dinb_0_load_21 = load i32* %dinb_0_addr_21, align 4
  %tmpb_19 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_21, i32 %dinb_1_load_21)
  %a_union_19 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_19)
  %tmp_19_28 = bitcast i64 %a_union_19 to double
  %b_elem_19 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_19)
  %tmp_11_19 = bitcast i64 %b_elem_19 to double
  %tmp_12_19 = fmul double %tmp_19_28, %tmp_11_19
  br label %._crit_edge.20

._crit_edge.21:                                   ; preds = %22, %._crit_edge.20
  %a_elem_load_20 = phi double [ %tmp_20_29, %22 ], [ undef, %._crit_edge.20 ]
  %gep3157_loc = phi double [ %tmp_12_20, %22 ], [ undef, %._crit_edge.20 ]
  %tmp_29 = icmp ugt i32 %out, 22
  br i1 %tmp_29, label %23, label %._crit_edge.22

; <label>:22                                      ; preds = %._crit_edge.20
  %dina_1_addr_22 = getelementptr [128 x i32]* %dina_1, i64 0, i64 23
  %dina_1_load_22 = load i32* %dina_1_addr_22, align 4
  %dina_0_addr_22 = getelementptr [128 x i32]* %dina_0, i64 0, i64 24
  %dina_0_load_22 = load i32* %dina_0_addr_22, align 4
  %tmpa_1_20 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_22, i32 %dina_1_load_22)
  %dinb_1_addr_22 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 22
  %dinb_1_load_22 = load i32* %dinb_1_addr_22, align 4
  %dinb_0_addr_22 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 23
  %dinb_0_load_22 = load i32* %dinb_0_addr_22, align 4
  %tmpb_20 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_22, i32 %dinb_1_load_22)
  %a_union_20 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_20)
  %tmp_20_29 = bitcast i64 %a_union_20 to double
  %b_elem_20 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_20)
  %tmp_11_20_30 = bitcast i64 %b_elem_20 to double
  %tmp_12_20 = fmul double %tmp_20_29, %tmp_11_20_30
  br label %._crit_edge.21

._crit_edge.22:                                   ; preds = %23, %._crit_edge.21
  %a_elem_load_21 = phi double [ %tmp_21_31, %23 ], [ undef, %._crit_edge.21 ]
  %gep3154_loc = phi double [ %tmp_12_21_32, %23 ], [ undef, %._crit_edge.21 ]
  %tmp_30 = icmp ugt i32 %out, 23
  br i1 %tmp_30, label %24, label %._crit_edge.23

; <label>:23                                      ; preds = %._crit_edge.21
  %dina_1_addr_23 = getelementptr [128 x i32]* %dina_1, i64 0, i64 24
  %dina_1_load_23 = load i32* %dina_1_addr_23, align 4
  %dina_0_addr_23 = getelementptr [128 x i32]* %dina_0, i64 0, i64 25
  %dina_0_load_23 = load i32* %dina_0_addr_23, align 4
  %tmpa_1_21 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_23, i32 %dina_1_load_23)
  %dinb_1_addr_23 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 23
  %dinb_1_load_23 = load i32* %dinb_1_addr_23, align 4
  %dinb_0_addr_23 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 24
  %dinb_0_load_23 = load i32* %dinb_0_addr_23, align 4
  %tmpb_21 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_23, i32 %dinb_1_load_23)
  %a_union_21 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_21)
  %tmp_21_31 = bitcast i64 %a_union_21 to double
  %b_elem_21 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_21)
  %tmp_11_21 = bitcast i64 %b_elem_21 to double
  %tmp_12_21_32 = fmul double %tmp_21_31, %tmp_11_21
  br label %._crit_edge.22

._crit_edge.23:                                   ; preds = %24, %._crit_edge.22
  %a_elem_load_22 = phi double [ %tmp_22_33, %24 ], [ undef, %._crit_edge.22 ]
  %gep3151_loc = phi double [ %tmp_12_22, %24 ], [ undef, %._crit_edge.22 ]
  %tmp_34 = icmp ugt i32 %out, 24
  br i1 %tmp_34, label %25, label %._crit_edge.24

; <label>:24                                      ; preds = %._crit_edge.22
  %dina_1_addr_24 = getelementptr [128 x i32]* %dina_1, i64 0, i64 25
  %dina_1_load_24 = load i32* %dina_1_addr_24, align 4
  %dina_0_addr_24 = getelementptr [128 x i32]* %dina_0, i64 0, i64 26
  %dina_0_load_24 = load i32* %dina_0_addr_24, align 4
  %tmpa_1_22 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_24, i32 %dina_1_load_24)
  %dinb_1_addr_24 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 24
  %dinb_1_load_24 = load i32* %dinb_1_addr_24, align 4
  %dinb_0_addr_24 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 25
  %dinb_0_load_24 = load i32* %dinb_0_addr_24, align 4
  %tmpb_22 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_24, i32 %dinb_1_load_24)
  %a_union_22 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_22)
  %tmp_22_33 = bitcast i64 %a_union_22 to double
  %b_elem_22 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_22)
  %tmp_11_22 = bitcast i64 %b_elem_22 to double
  %tmp_12_22 = fmul double %tmp_22_33, %tmp_11_22
  br label %._crit_edge.23

._crit_edge.24:                                   ; preds = %25, %._crit_edge.23
  %a_elem_load_23 = phi double [ %tmp_23_34, %25 ], [ undef, %._crit_edge.23 ]
  %gep3148_loc = phi double [ %tmp_12_23, %25 ], [ undef, %._crit_edge.23 ]
  %tmp_35 = icmp ugt i32 %out, 25
  br i1 %tmp_35, label %26, label %._crit_edge.25

; <label>:25                                      ; preds = %._crit_edge.23
  %dina_1_addr_25 = getelementptr [128 x i32]* %dina_1, i64 0, i64 26
  %dina_1_load_25 = load i32* %dina_1_addr_25, align 4
  %dina_0_addr_25 = getelementptr [128 x i32]* %dina_0, i64 0, i64 27
  %dina_0_load_25 = load i32* %dina_0_addr_25, align 4
  %tmpa_1_23 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_25, i32 %dina_1_load_25)
  %dinb_1_addr_25 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 25
  %dinb_1_load_25 = load i32* %dinb_1_addr_25, align 4
  %dinb_0_addr_25 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 26
  %dinb_0_load_25 = load i32* %dinb_0_addr_25, align 4
  %tmpb_23 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_25, i32 %dinb_1_load_25)
  %a_union_23 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_23)
  %tmp_23_34 = bitcast i64 %a_union_23 to double
  %b_elem_23 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_23)
  %tmp_11_23 = bitcast i64 %b_elem_23 to double
  %tmp_12_23 = fmul double %tmp_23_34, %tmp_11_23
  br label %._crit_edge.24

._crit_edge.25:                                   ; preds = %26, %._crit_edge.24
  %a_elem_load_24 = phi double [ %tmp_24_35, %26 ], [ undef, %._crit_edge.24 ]
  %gep3145_loc = phi double [ %tmp_12_24, %26 ], [ undef, %._crit_edge.24 ]
  %tmp_36 = icmp ugt i32 %out, 26
  br i1 %tmp_36, label %27, label %._crit_edge.26

; <label>:26                                      ; preds = %._crit_edge.24
  %dina_1_addr_26 = getelementptr [128 x i32]* %dina_1, i64 0, i64 27
  %dina_1_load_26 = load i32* %dina_1_addr_26, align 4
  %dina_0_addr_26 = getelementptr [128 x i32]* %dina_0, i64 0, i64 28
  %dina_0_load_26 = load i32* %dina_0_addr_26, align 4
  %tmpa_1_24 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_26, i32 %dina_1_load_26)
  %dinb_1_addr_26 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 26
  %dinb_1_load_26 = load i32* %dinb_1_addr_26, align 4
  %dinb_0_addr_26 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 27
  %dinb_0_load_26 = load i32* %dinb_0_addr_26, align 4
  %tmpb_24 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_26, i32 %dinb_1_load_26)
  %a_union_24 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_24)
  %tmp_24_35 = bitcast i64 %a_union_24 to double
  %b_elem_24 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_24)
  %tmp_11_24 = bitcast i64 %b_elem_24 to double
  %tmp_12_24 = fmul double %tmp_24_35, %tmp_11_24
  br label %._crit_edge.25

._crit_edge.26:                                   ; preds = %27, %._crit_edge.25
  %a_elem_load_25 = phi double [ %tmp_25_36, %27 ], [ undef, %._crit_edge.25 ]
  %gep3142_loc = phi double [ %tmp_12_25, %27 ], [ undef, %._crit_edge.25 ]
  %tmp_37 = icmp ugt i32 %out, 27
  br i1 %tmp_37, label %28, label %._crit_edge.27

; <label>:27                                      ; preds = %._crit_edge.25
  %dina_1_addr_27 = getelementptr [128 x i32]* %dina_1, i64 0, i64 28
  %dina_1_load_27 = load i32* %dina_1_addr_27, align 4
  %dina_0_addr_27 = getelementptr [128 x i32]* %dina_0, i64 0, i64 29
  %dina_0_load_27 = load i32* %dina_0_addr_27, align 4
  %tmpa_1_25 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_27, i32 %dina_1_load_27)
  %dinb_1_addr_27 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 27
  %dinb_1_load_27 = load i32* %dinb_1_addr_27, align 4
  %dinb_0_addr_27 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 28
  %dinb_0_load_27 = load i32* %dinb_0_addr_27, align 4
  %tmpb_25 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_27, i32 %dinb_1_load_27)
  %a_union_25 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_25)
  %tmp_25_36 = bitcast i64 %a_union_25 to double
  %b_elem_25 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_25)
  %tmp_11_25 = bitcast i64 %b_elem_25 to double
  %tmp_12_25 = fmul double %tmp_25_36, %tmp_11_25
  br label %._crit_edge.26

._crit_edge.27:                                   ; preds = %28, %._crit_edge.26
  %a_elem_load_26 = phi double [ %tmp_26_37, %28 ], [ undef, %._crit_edge.26 ]
  %gep3139_loc = phi double [ %tmp_12_26, %28 ], [ undef, %._crit_edge.26 ]
  %tmp_38 = icmp ugt i32 %out, 28
  br i1 %tmp_38, label %29, label %._crit_edge.28

; <label>:28                                      ; preds = %._crit_edge.26
  %dina_1_addr_28 = getelementptr [128 x i32]* %dina_1, i64 0, i64 29
  %dina_1_load_28 = load i32* %dina_1_addr_28, align 4
  %dina_0_addr_28 = getelementptr [128 x i32]* %dina_0, i64 0, i64 30
  %dina_0_load_28 = load i32* %dina_0_addr_28, align 4
  %tmpa_1_26 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_28, i32 %dina_1_load_28)
  %dinb_1_addr_28 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 28
  %dinb_1_load_28 = load i32* %dinb_1_addr_28, align 4
  %dinb_0_addr_28 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 29
  %dinb_0_load_28 = load i32* %dinb_0_addr_28, align 4
  %tmpb_26 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_28, i32 %dinb_1_load_28)
  %a_union_26 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_26)
  %tmp_26_37 = bitcast i64 %a_union_26 to double
  %b_elem_26 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_26)
  %tmp_11_26 = bitcast i64 %b_elem_26 to double
  %tmp_12_26 = fmul double %tmp_26_37, %tmp_11_26
  br label %._crit_edge.27

._crit_edge.28:                                   ; preds = %29, %._crit_edge.27
  %a_elem_load_27 = phi double [ %tmp_27_38, %29 ], [ undef, %._crit_edge.27 ]
  %gep3136_loc = phi double [ %tmp_12_27, %29 ], [ undef, %._crit_edge.27 ]
  %tmp_39 = icmp ugt i32 %out, 29
  br i1 %tmp_39, label %30, label %._crit_edge.29

; <label>:29                                      ; preds = %._crit_edge.27
  %dina_1_addr_29 = getelementptr [128 x i32]* %dina_1, i64 0, i64 30
  %dina_1_load_29 = load i32* %dina_1_addr_29, align 4
  %dina_0_addr_29 = getelementptr [128 x i32]* %dina_0, i64 0, i64 31
  %dina_0_load_29 = load i32* %dina_0_addr_29, align 4
  %tmpa_1_27 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_29, i32 %dina_1_load_29)
  %dinb_1_addr_29 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 29
  %dinb_1_load_29 = load i32* %dinb_1_addr_29, align 4
  %dinb_0_addr_29 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 30
  %dinb_0_load_29 = load i32* %dinb_0_addr_29, align 4
  %tmpb_27 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_29, i32 %dinb_1_load_29)
  %a_union_27 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_27)
  %tmp_27_38 = bitcast i64 %a_union_27 to double
  %b_elem_27 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_27)
  %tmp_11_27 = bitcast i64 %b_elem_27 to double
  %tmp_12_27 = fmul double %tmp_27_38, %tmp_11_27
  br label %._crit_edge.28

._crit_edge.29:                                   ; preds = %30, %._crit_edge.28
  %a_elem_load_28 = phi double [ %tmp_28_39, %30 ], [ undef, %._crit_edge.28 ]
  %gep3133_loc = phi double [ %tmp_12_28, %30 ], [ undef, %._crit_edge.28 ]
  %tmp_40 = icmp ugt i32 %out, 30
  br i1 %tmp_40, label %31, label %._crit_edge.30

; <label>:30                                      ; preds = %._crit_edge.28
  %dina_1_addr_30 = getelementptr [128 x i32]* %dina_1, i64 0, i64 31
  %dina_1_load_30 = load i32* %dina_1_addr_30, align 4
  %dina_0_addr_30 = getelementptr [128 x i32]* %dina_0, i64 0, i64 32
  %dina_0_load_30 = load i32* %dina_0_addr_30, align 4
  %tmpa_1_28 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_30, i32 %dina_1_load_30)
  %dinb_1_addr_30 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 30
  %dinb_1_load_30 = load i32* %dinb_1_addr_30, align 4
  %dinb_0_addr_30 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 31
  %dinb_0_load_30 = load i32* %dinb_0_addr_30, align 4
  %tmpb_28 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_30, i32 %dinb_1_load_30)
  %a_union_28 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_28)
  %tmp_28_39 = bitcast i64 %a_union_28 to double
  %b_elem_28 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_28)
  %tmp_11_28 = bitcast i64 %b_elem_28 to double
  %tmp_12_28 = fmul double %tmp_28_39, %tmp_11_28
  br label %._crit_edge.29

._crit_edge.30:                                   ; preds = %31, %._crit_edge.29
  %a_elem_load_29 = phi double [ %tmp_29_40, %31 ], [ undef, %._crit_edge.29 ]
  %gep3130_loc = phi double [ %tmp_12_29, %31 ], [ undef, %._crit_edge.29 ]
  %tmp_41 = call i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32 %temp, i32 29, i32 31)
  %tmp_63 = call i27 @_ssdm_op_BitConcatenate.i27.i8.i8.i8.i3(i8 %tmp_1, i8 %tmp_1_i, i8 %tmp, i3 %tmp_41)
  %icmp1 = icmp ne i27 %tmp_63, 0
  br i1 %icmp1, label %32, label %._crit_edge.31

; <label>:31                                      ; preds = %._crit_edge.29
  %dina_1_addr_31 = getelementptr [128 x i32]* %dina_1, i64 0, i64 32
  %dina_1_load_31 = load i32* %dina_1_addr_31, align 4
  %dina_0_addr_31 = getelementptr [128 x i32]* %dina_0, i64 0, i64 33
  %dina_0_load_31 = load i32* %dina_0_addr_31, align 4
  %tmpa_1_29 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_31, i32 %dina_1_load_31)
  %dinb_1_addr_31 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 31
  %dinb_1_load_31 = load i32* %dinb_1_addr_31, align 4
  %dinb_0_addr_31 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 32
  %dinb_0_load_31 = load i32* %dinb_0_addr_31, align 4
  %tmpb_29 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_31, i32 %dinb_1_load_31)
  %a_union_29 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_29)
  %tmp_29_40 = bitcast i64 %a_union_29 to double
  %b_elem_29 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_29)
  %tmp_11_29 = bitcast i64 %b_elem_29 to double
  %tmp_12_29 = fmul double %tmp_29_40, %tmp_11_29
  br label %._crit_edge.30

._crit_edge.31:                                   ; preds = %32, %._crit_edge.30
  %a_elem_load_30 = phi double [ %tmp_30_41, %32 ], [ undef, %._crit_edge.30 ]
  %gep3127_loc = phi double [ %tmp_12_30, %32 ], [ undef, %._crit_edge.30 ]
  %tmp_42 = icmp ugt i32 %out, 32
  br i1 %tmp_42, label %33, label %._crit_edge.32

; <label>:32                                      ; preds = %._crit_edge.30
  %dina_1_addr_32 = getelementptr [128 x i32]* %dina_1, i64 0, i64 33
  %dina_1_load_32 = load i32* %dina_1_addr_32, align 4
  %dina_0_addr_32 = getelementptr [128 x i32]* %dina_0, i64 0, i64 34
  %dina_0_load_32 = load i32* %dina_0_addr_32, align 4
  %tmpa_1_30 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_32, i32 %dina_1_load_32)
  %dinb_1_addr_32 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 32
  %dinb_1_load_32 = load i32* %dinb_1_addr_32, align 4
  %dinb_0_addr_32 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 33
  %dinb_0_load_32 = load i32* %dinb_0_addr_32, align 4
  %tmpb_30 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_32, i32 %dinb_1_load_32)
  %a_union_30 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_30)
  %tmp_30_41 = bitcast i64 %a_union_30 to double
  %b_elem_30 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_30)
  %tmp_11_30 = bitcast i64 %b_elem_30 to double
  %tmp_12_30 = fmul double %tmp_30_41, %tmp_11_30
  br label %._crit_edge.31

._crit_edge.32:                                   ; preds = %33, %._crit_edge.31
  %a_elem_load_31 = phi double [ %tmp_31, %33 ], [ undef, %._crit_edge.31 ]
  %elem_mult_load_1 = phi double [ %tmp_12_31, %33 ], [ undef, %._crit_edge.31 ]
  %tmp_43 = icmp ugt i32 %out, 33
  br i1 %tmp_43, label %34, label %._crit_edge.33

; <label>:33                                      ; preds = %._crit_edge.31
  %dina_1_addr_33 = getelementptr [128 x i32]* %dina_1, i64 0, i64 34
  %dina_1_load_33 = load i32* %dina_1_addr_33, align 4
  %dina_0_addr_33 = getelementptr [128 x i32]* %dina_0, i64 0, i64 35
  %dina_0_load_33 = load i32* %dina_0_addr_33, align 4
  %tmpa_1_31 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_33, i32 %dina_1_load_33)
  %dinb_1_addr_33 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 33
  %dinb_1_load_33 = load i32* %dinb_1_addr_33, align 4
  %dinb_0_addr_33 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 34
  %dinb_0_load_33 = load i32* %dinb_0_addr_33, align 4
  %tmpb_31 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_33, i32 %dinb_1_load_33)
  %a_union_31 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_31)
  %tmp_31 = bitcast i64 %a_union_31 to double
  %b_elem_31 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_31)
  %tmp_11_31 = bitcast i64 %b_elem_31 to double
  %tmp_12_31 = fmul double %tmp_31, %tmp_11_31
  br label %._crit_edge.32

._crit_edge.33:                                   ; preds = %34, %._crit_edge.32
  %a_elem_load_32 = phi double [ %tmp_32, %34 ], [ undef, %._crit_edge.32 ]
  %elem_mult_load_1_1 = phi double [ %tmp_12_32, %34 ], [ undef, %._crit_edge.32 ]
  %tmp_44 = icmp ugt i32 %out, 34
  br i1 %tmp_44, label %35, label %._crit_edge.34

; <label>:34                                      ; preds = %._crit_edge.32
  %dina_1_addr_34 = getelementptr [128 x i32]* %dina_1, i64 0, i64 35
  %dina_1_load_34 = load i32* %dina_1_addr_34, align 4
  %dina_0_addr_34 = getelementptr [128 x i32]* %dina_0, i64 0, i64 36
  %dina_0_load_34 = load i32* %dina_0_addr_34, align 4
  %tmpa_1_32 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_34, i32 %dina_1_load_34)
  %dinb_1_addr_34 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 34
  %dinb_1_load_34 = load i32* %dinb_1_addr_34, align 4
  %dinb_0_addr_34 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 35
  %dinb_0_load_34 = load i32* %dinb_0_addr_34, align 4
  %tmpb_32 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_34, i32 %dinb_1_load_34)
  %a_union_32 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_32)
  %tmp_32 = bitcast i64 %a_union_32 to double
  %b_elem_32 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_32)
  %tmp_11_32 = bitcast i64 %b_elem_32 to double
  %tmp_12_32 = fmul double %tmp_32, %tmp_11_32
  br label %._crit_edge.33

._crit_edge.34:                                   ; preds = %35, %._crit_edge.33
  %a_elem_load_33 = phi double [ %tmp_33, %35 ], [ undef, %._crit_edge.33 ]
  %elem_mult_load_1_2 = phi double [ %tmp_12_33, %35 ], [ undef, %._crit_edge.33 ]
  %tmp_45 = icmp ugt i32 %out, 35
  br i1 %tmp_45, label %36, label %._crit_edge.35

; <label>:35                                      ; preds = %._crit_edge.33
  %dina_1_addr_35 = getelementptr [128 x i32]* %dina_1, i64 0, i64 36
  %dina_1_load_35 = load i32* %dina_1_addr_35, align 4
  %dina_0_addr_35 = getelementptr [128 x i32]* %dina_0, i64 0, i64 37
  %dina_0_load_35 = load i32* %dina_0_addr_35, align 4
  %tmpa_1_33 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_35, i32 %dina_1_load_35)
  %dinb_1_addr_35 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 35
  %dinb_1_load_35 = load i32* %dinb_1_addr_35, align 4
  %dinb_0_addr_35 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 36
  %dinb_0_load_35 = load i32* %dinb_0_addr_35, align 4
  %tmpb_33 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_35, i32 %dinb_1_load_35)
  %a_union_33 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_33)
  %tmp_33 = bitcast i64 %a_union_33 to double
  %b_elem_33 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_33)
  %tmp_11_33 = bitcast i64 %b_elem_33 to double
  %tmp_12_33 = fmul double %tmp_33, %tmp_11_33
  br label %._crit_edge.34

._crit_edge.35:                                   ; preds = %36, %._crit_edge.34
  %a_elem_load_34 = phi double [ %tmp_34_42, %36 ], [ undef, %._crit_edge.34 ]
  %elem_mult_load_1_3 = phi double [ %tmp_12_34, %36 ], [ undef, %._crit_edge.34 ]
  %tmp_46 = icmp ugt i32 %out, 36
  br i1 %tmp_46, label %37, label %._crit_edge.36

; <label>:36                                      ; preds = %._crit_edge.34
  %dina_1_addr_36 = getelementptr [128 x i32]* %dina_1, i64 0, i64 37
  %dina_1_load_36 = load i32* %dina_1_addr_36, align 4
  %dina_0_addr_36 = getelementptr [128 x i32]* %dina_0, i64 0, i64 38
  %dina_0_load_36 = load i32* %dina_0_addr_36, align 4
  %tmpa_1_34 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_36, i32 %dina_1_load_36)
  %dinb_1_addr_36 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 36
  %dinb_1_load_36 = load i32* %dinb_1_addr_36, align 4
  %dinb_0_addr_36 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 37
  %dinb_0_load_36 = load i32* %dinb_0_addr_36, align 4
  %tmpb_34 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_36, i32 %dinb_1_load_36)
  %a_union_34 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_34)
  %tmp_34_42 = bitcast i64 %a_union_34 to double
  %b_elem_34 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_34)
  %tmp_11_34 = bitcast i64 %b_elem_34 to double
  %tmp_12_34 = fmul double %tmp_34_42, %tmp_11_34
  br label %._crit_edge.35

._crit_edge.36:                                   ; preds = %37, %._crit_edge.35
  %a_elem_load_35 = phi double [ %tmp_35_43, %37 ], [ undef, %._crit_edge.35 ]
  %elem_mult_load_1_4 = phi double [ %tmp_12_35, %37 ], [ undef, %._crit_edge.35 ]
  %tmp_47 = icmp ugt i32 %out, 37
  br i1 %tmp_47, label %38, label %._crit_edge.37

; <label>:37                                      ; preds = %._crit_edge.35
  %dina_1_addr_37 = getelementptr [128 x i32]* %dina_1, i64 0, i64 38
  %dina_1_load_37 = load i32* %dina_1_addr_37, align 4
  %dina_0_addr_37 = getelementptr [128 x i32]* %dina_0, i64 0, i64 39
  %dina_0_load_37 = load i32* %dina_0_addr_37, align 4
  %tmpa_1_35 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_37, i32 %dina_1_load_37)
  %dinb_1_addr_37 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 37
  %dinb_1_load_37 = load i32* %dinb_1_addr_37, align 4
  %dinb_0_addr_37 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 38
  %dinb_0_load_37 = load i32* %dinb_0_addr_37, align 4
  %tmpb_35 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_37, i32 %dinb_1_load_37)
  %a_union_35 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_35)
  %tmp_35_43 = bitcast i64 %a_union_35 to double
  %b_elem_35 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_35)
  %tmp_11_35 = bitcast i64 %b_elem_35 to double
  %tmp_12_35 = fmul double %tmp_35_43, %tmp_11_35
  br label %._crit_edge.36

._crit_edge.37:                                   ; preds = %38, %._crit_edge.36
  %a_elem_load_36 = phi double [ %tmp_36_44, %38 ], [ undef, %._crit_edge.36 ]
  %elem_mult_load_1_5 = phi double [ %tmp_12_36, %38 ], [ undef, %._crit_edge.36 ]
  %tmp_48 = icmp ugt i32 %out, 38
  br i1 %tmp_48, label %39, label %._crit_edge.38

; <label>:38                                      ; preds = %._crit_edge.36
  %dina_1_addr_38 = getelementptr [128 x i32]* %dina_1, i64 0, i64 39
  %dina_1_load_38 = load i32* %dina_1_addr_38, align 4
  %dina_0_addr_38 = getelementptr [128 x i32]* %dina_0, i64 0, i64 40
  %dina_0_load_38 = load i32* %dina_0_addr_38, align 4
  %tmpa_1_36 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_38, i32 %dina_1_load_38)
  %dinb_1_addr_38 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 38
  %dinb_1_load_38 = load i32* %dinb_1_addr_38, align 4
  %dinb_0_addr_38 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 39
  %dinb_0_load_38 = load i32* %dinb_0_addr_38, align 4
  %tmpb_36 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_38, i32 %dinb_1_load_38)
  %a_union_36 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_36)
  %tmp_36_44 = bitcast i64 %a_union_36 to double
  %b_elem_36 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_36)
  %tmp_11_36 = bitcast i64 %b_elem_36 to double
  %tmp_12_36 = fmul double %tmp_36_44, %tmp_11_36
  br label %._crit_edge.37

._crit_edge.38:                                   ; preds = %39, %._crit_edge.37
  %a_elem_load_37 = phi double [ %tmp_37_45, %39 ], [ undef, %._crit_edge.37 ]
  %elem_mult_load_1_6 = phi double [ %tmp_12_37, %39 ], [ undef, %._crit_edge.37 ]
  %tmp_49 = icmp ugt i32 %out, 39
  br i1 %tmp_49, label %40, label %._crit_edge.39

; <label>:39                                      ; preds = %._crit_edge.37
  %dina_1_addr_39 = getelementptr [128 x i32]* %dina_1, i64 0, i64 40
  %dina_1_load_39 = load i32* %dina_1_addr_39, align 4
  %dina_0_addr_39 = getelementptr [128 x i32]* %dina_0, i64 0, i64 41
  %dina_0_load_39 = load i32* %dina_0_addr_39, align 4
  %tmpa_1_37 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_39, i32 %dina_1_load_39)
  %dinb_1_addr_39 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 39
  %dinb_1_load_39 = load i32* %dinb_1_addr_39, align 4
  %dinb_0_addr_39 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 40
  %dinb_0_load_39 = load i32* %dinb_0_addr_39, align 4
  %tmpb_37 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_39, i32 %dinb_1_load_39)
  %a_union_37 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_37)
  %tmp_37_45 = bitcast i64 %a_union_37 to double
  %b_elem_37 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_37)
  %tmp_11_37 = bitcast i64 %b_elem_37 to double
  %tmp_12_37 = fmul double %tmp_37_45, %tmp_11_37
  br label %._crit_edge.38

._crit_edge.39:                                   ; preds = %40, %._crit_edge.38
  %a_elem_load_38 = phi double [ %tmp_38_46, %40 ], [ undef, %._crit_edge.38 ]
  %elem_mult_load_1_7 = phi double [ %tmp_12_38, %40 ], [ undef, %._crit_edge.38 ]
  %tmp_50 = icmp ugt i32 %out, 40
  br i1 %tmp_50, label %41, label %._crit_edge.40

; <label>:40                                      ; preds = %._crit_edge.38
  %dina_1_addr_40 = getelementptr [128 x i32]* %dina_1, i64 0, i64 41
  %dina_1_load_40 = load i32* %dina_1_addr_40, align 4
  %dina_0_addr_40 = getelementptr [128 x i32]* %dina_0, i64 0, i64 42
  %dina_0_load_40 = load i32* %dina_0_addr_40, align 4
  %tmpa_1_38 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_40, i32 %dina_1_load_40)
  %dinb_1_addr_40 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 40
  %dinb_1_load_40 = load i32* %dinb_1_addr_40, align 4
  %dinb_0_addr_40 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 41
  %dinb_0_load_40 = load i32* %dinb_0_addr_40, align 4
  %tmpb_38 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_40, i32 %dinb_1_load_40)
  %a_union_38 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_38)
  %tmp_38_46 = bitcast i64 %a_union_38 to double
  %b_elem_38 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_38)
  %tmp_11_38 = bitcast i64 %b_elem_38 to double
  %tmp_12_38 = fmul double %tmp_38_46, %tmp_11_38
  br label %._crit_edge.39

._crit_edge.40:                                   ; preds = %41, %._crit_edge.39
  %a_elem_load_39 = phi double [ %tmp_39_47, %41 ], [ undef, %._crit_edge.39 ]
  %elem_mult_load_1_8 = phi double [ %tmp_12_39, %41 ], [ undef, %._crit_edge.39 ]
  %tmp_123 = icmp ugt i32 %out, 41
  br i1 %tmp_123, label %42, label %._crit_edge.41

; <label>:41                                      ; preds = %._crit_edge.39
  %dina_1_addr_41 = getelementptr [128 x i32]* %dina_1, i64 0, i64 42
  %dina_1_load_41 = load i32* %dina_1_addr_41, align 4
  %dina_0_addr_41 = getelementptr [128 x i32]* %dina_0, i64 0, i64 43
  %dina_0_load_41 = load i32* %dina_0_addr_41, align 4
  %tmpa_1_39 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_41, i32 %dina_1_load_41)
  %dinb_1_addr_41 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 41
  %dinb_1_load_41 = load i32* %dinb_1_addr_41, align 4
  %dinb_0_addr_41 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 42
  %dinb_0_load_41 = load i32* %dinb_0_addr_41, align 4
  %tmpb_39 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_41, i32 %dinb_1_load_41)
  %a_union_39 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_39)
  %tmp_39_47 = bitcast i64 %a_union_39 to double
  %b_elem_39 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_39)
  %tmp_11_39 = bitcast i64 %b_elem_39 to double
  %tmp_12_39 = fmul double %tmp_39_47, %tmp_11_39
  br label %._crit_edge.40

._crit_edge.41:                                   ; preds = %42, %._crit_edge.40
  %a_elem_load_40 = phi double [ %tmp_40_48, %42 ], [ undef, %._crit_edge.40 ]
  %elem_mult_load_1_9 = phi double [ %tmp_12_40, %42 ], [ undef, %._crit_edge.40 ]
  %tmp_125 = icmp ugt i32 %out, 42
  br i1 %tmp_125, label %43, label %._crit_edge.42

; <label>:42                                      ; preds = %._crit_edge.40
  %dina_1_addr_42 = getelementptr [128 x i32]* %dina_1, i64 0, i64 43
  %dina_1_load_42 = load i32* %dina_1_addr_42, align 4
  %dina_0_addr_42 = getelementptr [128 x i32]* %dina_0, i64 0, i64 44
  %dina_0_load_42 = load i32* %dina_0_addr_42, align 4
  %tmpa_1_40 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_42, i32 %dina_1_load_42)
  %dinb_1_addr_42 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 42
  %dinb_1_load_42 = load i32* %dinb_1_addr_42, align 4
  %dinb_0_addr_42 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 43
  %dinb_0_load_42 = load i32* %dinb_0_addr_42, align 4
  %tmpb_40 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_42, i32 %dinb_1_load_42)
  %a_union_40 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_40)
  %tmp_40_48 = bitcast i64 %a_union_40 to double
  %b_elem_40 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_40)
  %tmp_11_40 = bitcast i64 %b_elem_40 to double
  %tmp_12_40 = fmul double %tmp_40_48, %tmp_11_40
  br label %._crit_edge.41

._crit_edge.42:                                   ; preds = %43, %._crit_edge.41
  %a_elem_load_41 = phi double [ %tmp_41_49, %43 ], [ undef, %._crit_edge.41 ]
  %elem_mult_load_1_s = phi double [ %tmp_12_41, %43 ], [ undef, %._crit_edge.41 ]
  %tmp_126 = icmp ugt i32 %out, 43
  br i1 %tmp_126, label %44, label %._crit_edge.43

; <label>:43                                      ; preds = %._crit_edge.41
  %dina_1_addr_43 = getelementptr [128 x i32]* %dina_1, i64 0, i64 44
  %dina_1_load_43 = load i32* %dina_1_addr_43, align 4
  %dina_0_addr_43 = getelementptr [128 x i32]* %dina_0, i64 0, i64 45
  %dina_0_load_43 = load i32* %dina_0_addr_43, align 4
  %tmpa_1_41 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_43, i32 %dina_1_load_43)
  %dinb_1_addr_43 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 43
  %dinb_1_load_43 = load i32* %dinb_1_addr_43, align 4
  %dinb_0_addr_43 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 44
  %dinb_0_load_43 = load i32* %dinb_0_addr_43, align 4
  %tmpb_41 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_43, i32 %dinb_1_load_43)
  %a_union_41 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_41)
  %tmp_41_49 = bitcast i64 %a_union_41 to double
  %b_elem_41 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_41)
  %tmp_11_41 = bitcast i64 %b_elem_41 to double
  %tmp_12_41 = fmul double %tmp_41_49, %tmp_11_41
  br label %._crit_edge.42

._crit_edge.43:                                   ; preds = %44, %._crit_edge.42
  %a_elem_load_42 = phi double [ %tmp_42_50, %44 ], [ undef, %._crit_edge.42 ]
  %elem_mult_load_1_10 = phi double [ %tmp_12_42, %44 ], [ undef, %._crit_edge.42 ]
  %tmp_127 = icmp ugt i32 %out, 44
  br i1 %tmp_127, label %45, label %._crit_edge.44

; <label>:44                                      ; preds = %._crit_edge.42
  %dina_1_addr_44 = getelementptr [128 x i32]* %dina_1, i64 0, i64 45
  %dina_1_load_44 = load i32* %dina_1_addr_44, align 4
  %dina_0_addr_44 = getelementptr [128 x i32]* %dina_0, i64 0, i64 46
  %dina_0_load_44 = load i32* %dina_0_addr_44, align 4
  %tmpa_1_42 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_44, i32 %dina_1_load_44)
  %dinb_1_addr_44 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 44
  %dinb_1_load_44 = load i32* %dinb_1_addr_44, align 4
  %dinb_0_addr_44 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 45
  %dinb_0_load_44 = load i32* %dinb_0_addr_44, align 4
  %tmpb_42 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_44, i32 %dinb_1_load_44)
  %a_union_42 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_42)
  %tmp_42_50 = bitcast i64 %a_union_42 to double
  %b_elem_42 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_42)
  %tmp_11_42 = bitcast i64 %b_elem_42 to double
  %tmp_12_42 = fmul double %tmp_42_50, %tmp_11_42
  br label %._crit_edge.43

._crit_edge.44:                                   ; preds = %45, %._crit_edge.43
  %a_elem_load_43 = phi double [ %tmp_43_51, %45 ], [ undef, %._crit_edge.43 ]
  %elem_mult_load_1_11 = phi double [ %tmp_12_43, %45 ], [ undef, %._crit_edge.43 ]
  %tmp_128 = icmp ugt i32 %out, 45
  br i1 %tmp_128, label %46, label %._crit_edge.45

; <label>:45                                      ; preds = %._crit_edge.43
  %dina_1_addr_45 = getelementptr [128 x i32]* %dina_1, i64 0, i64 46
  %dina_1_load_45 = load i32* %dina_1_addr_45, align 4
  %dina_0_addr_45 = getelementptr [128 x i32]* %dina_0, i64 0, i64 47
  %dina_0_load_45 = load i32* %dina_0_addr_45, align 4
  %tmpa_1_43 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_45, i32 %dina_1_load_45)
  %dinb_1_addr_45 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 45
  %dinb_1_load_45 = load i32* %dinb_1_addr_45, align 4
  %dinb_0_addr_45 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 46
  %dinb_0_load_45 = load i32* %dinb_0_addr_45, align 4
  %tmpb_43 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_45, i32 %dinb_1_load_45)
  %a_union_43 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_43)
  %tmp_43_51 = bitcast i64 %a_union_43 to double
  %b_elem_43 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_43)
  %tmp_11_43 = bitcast i64 %b_elem_43 to double
  %tmp_12_43 = fmul double %tmp_43_51, %tmp_11_43
  br label %._crit_edge.44

._crit_edge.45:                                   ; preds = %46, %._crit_edge.44
  %a_elem_load_44 = phi double [ %tmp_44_52, %46 ], [ undef, %._crit_edge.44 ]
  %elem_mult_load_1_12 = phi double [ %tmp_12_44, %46 ], [ undef, %._crit_edge.44 ]
  %tmp_129 = icmp ugt i32 %out, 46
  br i1 %tmp_129, label %47, label %._crit_edge.46

; <label>:46                                      ; preds = %._crit_edge.44
  %dina_1_addr_46 = getelementptr [128 x i32]* %dina_1, i64 0, i64 47
  %dina_1_load_46 = load i32* %dina_1_addr_46, align 4
  %dina_0_addr_46 = getelementptr [128 x i32]* %dina_0, i64 0, i64 48
  %dina_0_load_46 = load i32* %dina_0_addr_46, align 4
  %tmpa_1_44 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_46, i32 %dina_1_load_46)
  %dinb_1_addr_46 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 46
  %dinb_1_load_46 = load i32* %dinb_1_addr_46, align 4
  %dinb_0_addr_46 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 47
  %dinb_0_load_46 = load i32* %dinb_0_addr_46, align 4
  %tmpb_44 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_46, i32 %dinb_1_load_46)
  %a_union_44 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_44)
  %tmp_44_52 = bitcast i64 %a_union_44 to double
  %b_elem_44 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_44)
  %tmp_11_44 = bitcast i64 %b_elem_44 to double
  %tmp_12_44 = fmul double %tmp_44_52, %tmp_11_44
  br label %._crit_edge.45

._crit_edge.46:                                   ; preds = %47, %._crit_edge.45
  %a_elem_load_45 = phi double [ %tmp_45_53, %47 ], [ undef, %._crit_edge.45 ]
  %elem_mult_load_1_13 = phi double [ %tmp_12_45, %47 ], [ undef, %._crit_edge.45 ]
  %tmp_130 = icmp ugt i32 %out, 47
  br i1 %tmp_130, label %48, label %._crit_edge.47

; <label>:47                                      ; preds = %._crit_edge.45
  %dina_1_addr_47 = getelementptr [128 x i32]* %dina_1, i64 0, i64 48
  %dina_1_load_47 = load i32* %dina_1_addr_47, align 4
  %dina_0_addr_47 = getelementptr [128 x i32]* %dina_0, i64 0, i64 49
  %dina_0_load_47 = load i32* %dina_0_addr_47, align 4
  %tmpa_1_45 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_47, i32 %dina_1_load_47)
  %dinb_1_addr_47 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 47
  %dinb_1_load_47 = load i32* %dinb_1_addr_47, align 4
  %dinb_0_addr_47 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 48
  %dinb_0_load_47 = load i32* %dinb_0_addr_47, align 4
  %tmpb_45 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_47, i32 %dinb_1_load_47)
  %a_union_45 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_45)
  %tmp_45_53 = bitcast i64 %a_union_45 to double
  %b_elem_45 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_45)
  %tmp_11_45 = bitcast i64 %b_elem_45 to double
  %tmp_12_45 = fmul double %tmp_45_53, %tmp_11_45
  br label %._crit_edge.46

._crit_edge.47:                                   ; preds = %48, %._crit_edge.46
  %a_elem_load_46 = phi double [ %tmp_46_54, %48 ], [ undef, %._crit_edge.46 ]
  %elem_mult_load_1_14 = phi double [ %tmp_12_46, %48 ], [ undef, %._crit_edge.46 ]
  %tmp_131 = icmp ugt i32 %out, 48
  br i1 %tmp_131, label %49, label %._crit_edge.48

; <label>:48                                      ; preds = %._crit_edge.46
  %dina_1_addr_48 = getelementptr [128 x i32]* %dina_1, i64 0, i64 49
  %dina_1_load_48 = load i32* %dina_1_addr_48, align 4
  %dina_0_addr_48 = getelementptr [128 x i32]* %dina_0, i64 0, i64 50
  %dina_0_load_48 = load i32* %dina_0_addr_48, align 4
  %tmpa_1_46 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_48, i32 %dina_1_load_48)
  %dinb_1_addr_48 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 48
  %dinb_1_load_48 = load i32* %dinb_1_addr_48, align 4
  %dinb_0_addr_48 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 49
  %dinb_0_load_48 = load i32* %dinb_0_addr_48, align 4
  %tmpb_46 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_48, i32 %dinb_1_load_48)
  %a_union_46 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_46)
  %tmp_46_54 = bitcast i64 %a_union_46 to double
  %b_elem_46 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_46)
  %tmp_11_46 = bitcast i64 %b_elem_46 to double
  %tmp_12_46 = fmul double %tmp_46_54, %tmp_11_46
  br label %._crit_edge.47

._crit_edge.48:                                   ; preds = %49, %._crit_edge.47
  %a_elem_load_47 = phi double [ %tmp_47_55, %49 ], [ undef, %._crit_edge.47 ]
  %elem_mult_load_1_15 = phi double [ %tmp_12_47, %49 ], [ undef, %._crit_edge.47 ]
  %tmp_132 = icmp ugt i32 %out, 49
  br i1 %tmp_132, label %50, label %._crit_edge.49

; <label>:49                                      ; preds = %._crit_edge.47
  %dina_1_addr_49 = getelementptr [128 x i32]* %dina_1, i64 0, i64 50
  %dina_1_load_49 = load i32* %dina_1_addr_49, align 4
  %dina_0_addr_49 = getelementptr [128 x i32]* %dina_0, i64 0, i64 51
  %dina_0_load_49 = load i32* %dina_0_addr_49, align 4
  %tmpa_1_47 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_49, i32 %dina_1_load_49)
  %dinb_1_addr_49 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 49
  %dinb_1_load_49 = load i32* %dinb_1_addr_49, align 4
  %dinb_0_addr_49 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 50
  %dinb_0_load_49 = load i32* %dinb_0_addr_49, align 4
  %tmpb_47 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_49, i32 %dinb_1_load_49)
  %a_union_47 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_47)
  %tmp_47_55 = bitcast i64 %a_union_47 to double
  %b_elem_47 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_47)
  %tmp_11_47 = bitcast i64 %b_elem_47 to double
  %tmp_12_47 = fmul double %tmp_47_55, %tmp_11_47
  br label %._crit_edge.48

._crit_edge.49:                                   ; preds = %50, %._crit_edge.48
  %a_elem_load_48 = phi double [ %tmp_48_56, %50 ], [ undef, %._crit_edge.48 ]
  %elem_mult_load_1_16 = phi double [ %tmp_12_48, %50 ], [ undef, %._crit_edge.48 ]
  %tmp_133 = icmp ugt i32 %out, 50
  br i1 %tmp_133, label %51, label %._crit_edge.50

; <label>:50                                      ; preds = %._crit_edge.48
  %dina_1_addr_50 = getelementptr [128 x i32]* %dina_1, i64 0, i64 51
  %dina_1_load_50 = load i32* %dina_1_addr_50, align 4
  %dina_0_addr_50 = getelementptr [128 x i32]* %dina_0, i64 0, i64 52
  %dina_0_load_50 = load i32* %dina_0_addr_50, align 4
  %tmpa_1_48 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_50, i32 %dina_1_load_50)
  %dinb_1_addr_50 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 50
  %dinb_1_load_50 = load i32* %dinb_1_addr_50, align 4
  %dinb_0_addr_50 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 51
  %dinb_0_load_50 = load i32* %dinb_0_addr_50, align 4
  %tmpb_48 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_50, i32 %dinb_1_load_50)
  %a_union_48 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_48)
  %tmp_48_56 = bitcast i64 %a_union_48 to double
  %b_elem_48 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_48)
  %tmp_11_48 = bitcast i64 %b_elem_48 to double
  %tmp_12_48 = fmul double %tmp_48_56, %tmp_11_48
  br label %._crit_edge.49

._crit_edge.50:                                   ; preds = %51, %._crit_edge.49
  %a_elem_load_49 = phi double [ %tmp_49_57, %51 ], [ undef, %._crit_edge.49 ]
  %elem_mult_load_1_17 = phi double [ %tmp_12_49, %51 ], [ undef, %._crit_edge.49 ]
  %tmp_51 = icmp ugt i32 %out, 51
  br i1 %tmp_51, label %52, label %._crit_edge.51

; <label>:51                                      ; preds = %._crit_edge.49
  %dina_1_addr_51 = getelementptr [128 x i32]* %dina_1, i64 0, i64 52
  %dina_1_load_51 = load i32* %dina_1_addr_51, align 4
  %dina_0_addr_51 = getelementptr [128 x i32]* %dina_0, i64 0, i64 53
  %dina_0_load_51 = load i32* %dina_0_addr_51, align 4
  %tmpa_1_49 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_51, i32 %dina_1_load_51)
  %dinb_1_addr_51 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 51
  %dinb_1_load_51 = load i32* %dinb_1_addr_51, align 4
  %dinb_0_addr_51 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 52
  %dinb_0_load_51 = load i32* %dinb_0_addr_51, align 4
  %tmpb_49 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_51, i32 %dinb_1_load_51)
  %a_union_49 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_49)
  %tmp_49_57 = bitcast i64 %a_union_49 to double
  %b_elem_49 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_49)
  %tmp_11_49 = bitcast i64 %b_elem_49 to double
  %tmp_12_49 = fmul double %tmp_49_57, %tmp_11_49
  br label %._crit_edge.50

._crit_edge.51:                                   ; preds = %52, %._crit_edge.50
  %a_elem_load_50 = phi double [ %tmp_50_58, %52 ], [ undef, %._crit_edge.50 ]
  %elem_mult_load_1_18 = phi double [ %tmp_12_50, %52 ], [ undef, %._crit_edge.50 ]
  %tmp_52 = icmp ugt i32 %out, 52
  br i1 %tmp_52, label %53, label %._crit_edge.52

; <label>:52                                      ; preds = %._crit_edge.50
  %dina_1_addr_52 = getelementptr [128 x i32]* %dina_1, i64 0, i64 53
  %dina_1_load_52 = load i32* %dina_1_addr_52, align 4
  %dina_0_addr_52 = getelementptr [128 x i32]* %dina_0, i64 0, i64 54
  %dina_0_load_52 = load i32* %dina_0_addr_52, align 4
  %tmpa_1_50 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_52, i32 %dina_1_load_52)
  %dinb_1_addr_52 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 52
  %dinb_1_load_52 = load i32* %dinb_1_addr_52, align 4
  %dinb_0_addr_52 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 53
  %dinb_0_load_52 = load i32* %dinb_0_addr_52, align 4
  %tmpb_50 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_52, i32 %dinb_1_load_52)
  %a_union_50 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_50)
  %tmp_50_58 = bitcast i64 %a_union_50 to double
  %b_elem_50 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_50)
  %tmp_11_50 = bitcast i64 %b_elem_50 to double
  %tmp_12_50 = fmul double %tmp_50_58, %tmp_11_50
  br label %._crit_edge.51

._crit_edge.52:                                   ; preds = %53, %._crit_edge.51
  %a_elem_load_51 = phi double [ %tmp_51_59, %53 ], [ undef, %._crit_edge.51 ]
  %elem_mult_load_1_19 = phi double [ %tmp_12_51, %53 ], [ undef, %._crit_edge.51 ]
  %tmp_53 = icmp ugt i32 %out, 53
  br i1 %tmp_53, label %54, label %._crit_edge.53

; <label>:53                                      ; preds = %._crit_edge.51
  %dina_1_addr_53 = getelementptr [128 x i32]* %dina_1, i64 0, i64 54
  %dina_1_load_53 = load i32* %dina_1_addr_53, align 4
  %dina_0_addr_53 = getelementptr [128 x i32]* %dina_0, i64 0, i64 55
  %dina_0_load_53 = load i32* %dina_0_addr_53, align 4
  %tmpa_1_51 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_53, i32 %dina_1_load_53)
  %dinb_1_addr_53 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 53
  %dinb_1_load_53 = load i32* %dinb_1_addr_53, align 4
  %dinb_0_addr_53 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 54
  %dinb_0_load_53 = load i32* %dinb_0_addr_53, align 4
  %tmpb_51 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_53, i32 %dinb_1_load_53)
  %a_union_51 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_51)
  %tmp_51_59 = bitcast i64 %a_union_51 to double
  %b_elem_51 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_51)
  %tmp_11_51 = bitcast i64 %b_elem_51 to double
  %tmp_12_51 = fmul double %tmp_51_59, %tmp_11_51
  br label %._crit_edge.52

._crit_edge.53:                                   ; preds = %54, %._crit_edge.52
  %a_elem_load_52 = phi double [ %tmp_52_60, %54 ], [ undef, %._crit_edge.52 ]
  %elem_mult_load_1_20 = phi double [ %tmp_12_52, %54 ], [ undef, %._crit_edge.52 ]
  %tmp_54 = icmp ugt i32 %out, 54
  br i1 %tmp_54, label %55, label %._crit_edge.54

; <label>:54                                      ; preds = %._crit_edge.52
  %dina_1_addr_54 = getelementptr [128 x i32]* %dina_1, i64 0, i64 55
  %dina_1_load_54 = load i32* %dina_1_addr_54, align 4
  %dina_0_addr_54 = getelementptr [128 x i32]* %dina_0, i64 0, i64 56
  %dina_0_load_54 = load i32* %dina_0_addr_54, align 4
  %tmpa_1_52 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_54, i32 %dina_1_load_54)
  %dinb_1_addr_54 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 54
  %dinb_1_load_54 = load i32* %dinb_1_addr_54, align 4
  %dinb_0_addr_54 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 55
  %dinb_0_load_54 = load i32* %dinb_0_addr_54, align 4
  %tmpb_52 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_54, i32 %dinb_1_load_54)
  %a_union_52 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_52)
  %tmp_52_60 = bitcast i64 %a_union_52 to double
  %b_elem_52 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_52)
  %tmp_11_52 = bitcast i64 %b_elem_52 to double
  %tmp_12_52 = fmul double %tmp_52_60, %tmp_11_52
  br label %._crit_edge.53

._crit_edge.54:                                   ; preds = %55, %._crit_edge.53
  %a_elem_load_53 = phi double [ %tmp_53_61, %55 ], [ undef, %._crit_edge.53 ]
  %elem_mult_load_1_21 = phi double [ %tmp_12_53, %55 ], [ undef, %._crit_edge.53 ]
  %tmp_55 = icmp ugt i32 %out, 55
  br i1 %tmp_55, label %56, label %._crit_edge.55

; <label>:55                                      ; preds = %._crit_edge.53
  %dina_1_addr_55 = getelementptr [128 x i32]* %dina_1, i64 0, i64 56
  %dina_1_load_55 = load i32* %dina_1_addr_55, align 4
  %dina_0_addr_55 = getelementptr [128 x i32]* %dina_0, i64 0, i64 57
  %dina_0_load_55 = load i32* %dina_0_addr_55, align 4
  %tmpa_1_53 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_55, i32 %dina_1_load_55)
  %dinb_1_addr_55 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 55
  %dinb_1_load_55 = load i32* %dinb_1_addr_55, align 4
  %dinb_0_addr_55 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 56
  %dinb_0_load_55 = load i32* %dinb_0_addr_55, align 4
  %tmpb_53 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_55, i32 %dinb_1_load_55)
  %a_union_53 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_53)
  %tmp_53_61 = bitcast i64 %a_union_53 to double
  %b_elem_53 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_53)
  %tmp_11_53 = bitcast i64 %b_elem_53 to double
  %tmp_12_53 = fmul double %tmp_53_61, %tmp_11_53
  br label %._crit_edge.54

._crit_edge.55:                                   ; preds = %56, %._crit_edge.54
  %a_elem_load_54 = phi double [ %tmp_54_62, %56 ], [ undef, %._crit_edge.54 ]
  %elem_mult_load_1_22 = phi double [ %tmp_12_54, %56 ], [ undef, %._crit_edge.54 ]
  %tmp_56 = icmp ugt i32 %out, 56
  br i1 %tmp_56, label %57, label %._crit_edge.56

; <label>:56                                      ; preds = %._crit_edge.54
  %dina_1_addr_56 = getelementptr [128 x i32]* %dina_1, i64 0, i64 57
  %dina_1_load_56 = load i32* %dina_1_addr_56, align 4
  %dina_0_addr_56 = getelementptr [128 x i32]* %dina_0, i64 0, i64 58
  %dina_0_load_56 = load i32* %dina_0_addr_56, align 4
  %tmpa_1_54 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_56, i32 %dina_1_load_56)
  %dinb_1_addr_56 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 56
  %dinb_1_load_56 = load i32* %dinb_1_addr_56, align 4
  %dinb_0_addr_56 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 57
  %dinb_0_load_56 = load i32* %dinb_0_addr_56, align 4
  %tmpb_54 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_56, i32 %dinb_1_load_56)
  %a_union_54 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_54)
  %tmp_54_62 = bitcast i64 %a_union_54 to double
  %b_elem_54 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_54)
  %tmp_11_54 = bitcast i64 %b_elem_54 to double
  %tmp_12_54 = fmul double %tmp_54_62, %tmp_11_54
  br label %._crit_edge.55

._crit_edge.56:                                   ; preds = %57, %._crit_edge.55
  %a_elem_load_55 = phi double [ %tmp_55_63, %57 ], [ undef, %._crit_edge.55 ]
  %elem_mult_load_1_23 = phi double [ %tmp_12_55, %57 ], [ undef, %._crit_edge.55 ]
  %tmp_57 = icmp ugt i32 %out, 57
  br i1 %tmp_57, label %58, label %._crit_edge.57

; <label>:57                                      ; preds = %._crit_edge.55
  %dina_1_addr_57 = getelementptr [128 x i32]* %dina_1, i64 0, i64 58
  %dina_1_load_57 = load i32* %dina_1_addr_57, align 4
  %dina_0_addr_57 = getelementptr [128 x i32]* %dina_0, i64 0, i64 59
  %dina_0_load_57 = load i32* %dina_0_addr_57, align 4
  %tmpa_1_55 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_57, i32 %dina_1_load_57)
  %dinb_1_addr_57 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 57
  %dinb_1_load_57 = load i32* %dinb_1_addr_57, align 4
  %dinb_0_addr_57 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 58
  %dinb_0_load_57 = load i32* %dinb_0_addr_57, align 4
  %tmpb_55 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_57, i32 %dinb_1_load_57)
  %a_union_55 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_55)
  %tmp_55_63 = bitcast i64 %a_union_55 to double
  %b_elem_55 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_55)
  %tmp_11_55 = bitcast i64 %b_elem_55 to double
  %tmp_12_55 = fmul double %tmp_55_63, %tmp_11_55
  br label %._crit_edge.56

._crit_edge.57:                                   ; preds = %58, %._crit_edge.56
  %a_elem_load_56 = phi double [ %tmp_56_64, %58 ], [ undef, %._crit_edge.56 ]
  %elem_mult_load_1_24 = phi double [ %tmp_12_56, %58 ], [ undef, %._crit_edge.56 ]
  %tmp_58 = icmp ugt i32 %out, 58
  br i1 %tmp_58, label %59, label %._crit_edge.58

; <label>:58                                      ; preds = %._crit_edge.56
  %dina_1_addr_58 = getelementptr [128 x i32]* %dina_1, i64 0, i64 59
  %dina_1_load_58 = load i32* %dina_1_addr_58, align 4
  %dina_0_addr_58 = getelementptr [128 x i32]* %dina_0, i64 0, i64 60
  %dina_0_load_58 = load i32* %dina_0_addr_58, align 4
  %tmpa_1_56 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_58, i32 %dina_1_load_58)
  %dinb_1_addr_58 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 58
  %dinb_1_load_58 = load i32* %dinb_1_addr_58, align 4
  %dinb_0_addr_58 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 59
  %dinb_0_load_58 = load i32* %dinb_0_addr_58, align 4
  %tmpb_56 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_58, i32 %dinb_1_load_58)
  %a_union_56 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_56)
  %tmp_56_64 = bitcast i64 %a_union_56 to double
  %b_elem_56 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_56)
  %tmp_11_56 = bitcast i64 %b_elem_56 to double
  %tmp_12_56 = fmul double %tmp_56_64, %tmp_11_56
  br label %._crit_edge.57

._crit_edge.58:                                   ; preds = %59, %._crit_edge.57
  %a_elem_load_57 = phi double [ %tmp_57_65, %59 ], [ undef, %._crit_edge.57 ]
  %elem_mult_load_1_25 = phi double [ %tmp_12_57, %59 ], [ undef, %._crit_edge.57 ]
  %tmp_59 = icmp ugt i32 %out, 59
  br i1 %tmp_59, label %60, label %._crit_edge.59

; <label>:59                                      ; preds = %._crit_edge.57
  %dina_1_addr_59 = getelementptr [128 x i32]* %dina_1, i64 0, i64 60
  %dina_1_load_59 = load i32* %dina_1_addr_59, align 4
  %dina_0_addr_59 = getelementptr [128 x i32]* %dina_0, i64 0, i64 61
  %dina_0_load_59 = load i32* %dina_0_addr_59, align 4
  %tmpa_1_57 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_59, i32 %dina_1_load_59)
  %dinb_1_addr_59 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 59
  %dinb_1_load_59 = load i32* %dinb_1_addr_59, align 4
  %dinb_0_addr_59 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 60
  %dinb_0_load_59 = load i32* %dinb_0_addr_59, align 4
  %tmpb_57 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_59, i32 %dinb_1_load_59)
  %a_union_57 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_57)
  %tmp_57_65 = bitcast i64 %a_union_57 to double
  %b_elem_57 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_57)
  %tmp_11_57 = bitcast i64 %b_elem_57 to double
  %tmp_12_57 = fmul double %tmp_57_65, %tmp_11_57
  br label %._crit_edge.58

._crit_edge.59:                                   ; preds = %60, %._crit_edge.58
  %a_elem_load_58 = phi double [ %tmp_58_66, %60 ], [ undef, %._crit_edge.58 ]
  %elem_mult_load_1_26 = phi double [ %tmp_12_58, %60 ], [ undef, %._crit_edge.58 ]
  %tmp_60 = icmp ugt i32 %out, 60
  br i1 %tmp_60, label %61, label %._crit_edge.60

; <label>:60                                      ; preds = %._crit_edge.58
  %dina_1_addr_60 = getelementptr [128 x i32]* %dina_1, i64 0, i64 61
  %dina_1_load_60 = load i32* %dina_1_addr_60, align 4
  %dina_0_addr_60 = getelementptr [128 x i32]* %dina_0, i64 0, i64 62
  %dina_0_load_60 = load i32* %dina_0_addr_60, align 4
  %tmpa_1_58 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_60, i32 %dina_1_load_60)
  %dinb_1_addr_60 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 60
  %dinb_1_load_60 = load i32* %dinb_1_addr_60, align 4
  %dinb_0_addr_60 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 61
  %dinb_0_load_60 = load i32* %dinb_0_addr_60, align 4
  %tmpb_58 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_60, i32 %dinb_1_load_60)
  %a_union_58 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_58)
  %tmp_58_66 = bitcast i64 %a_union_58 to double
  %b_elem_58 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_58)
  %tmp_11_58 = bitcast i64 %b_elem_58 to double
  %tmp_12_58 = fmul double %tmp_58_66, %tmp_11_58
  br label %._crit_edge.59

._crit_edge.60:                                   ; preds = %61, %._crit_edge.59
  %a_elem_load_59 = phi double [ %tmp_59_67, %61 ], [ undef, %._crit_edge.59 ]
  %elem_mult_load_1_27 = phi double [ %tmp_12_59, %61 ], [ undef, %._crit_edge.59 ]
  %tmp_61 = icmp ugt i32 %out, 61
  br i1 %tmp_61, label %62, label %._crit_edge.61

; <label>:61                                      ; preds = %._crit_edge.59
  %dina_1_addr_61 = getelementptr [128 x i32]* %dina_1, i64 0, i64 62
  %dina_1_load_61 = load i32* %dina_1_addr_61, align 4
  %dina_0_addr_61 = getelementptr [128 x i32]* %dina_0, i64 0, i64 63
  %dina_0_load_61 = load i32* %dina_0_addr_61, align 4
  %tmpa_1_59 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_61, i32 %dina_1_load_61)
  %dinb_1_addr_61 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 61
  %dinb_1_load_61 = load i32* %dinb_1_addr_61, align 4
  %dinb_0_addr_61 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 62
  %dinb_0_load_61 = load i32* %dinb_0_addr_61, align 4
  %tmpb_59 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_61, i32 %dinb_1_load_61)
  %a_union_59 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_59)
  %tmp_59_67 = bitcast i64 %a_union_59 to double
  %b_elem_59 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_59)
  %tmp_11_59 = bitcast i64 %b_elem_59 to double
  %tmp_12_59 = fmul double %tmp_59_67, %tmp_11_59
  br label %._crit_edge.60

._crit_edge.61:                                   ; preds = %62, %._crit_edge.60
  %a_elem_load_60 = phi double [ %tmp_60_68, %62 ], [ undef, %._crit_edge.60 ]
  %elem_mult_load_1_28 = phi double [ %tmp_12_60, %62 ], [ undef, %._crit_edge.60 ]
  %tmp_62 = icmp ugt i32 %out, 62
  br i1 %tmp_62, label %63, label %._crit_edge.62

; <label>:62                                      ; preds = %._crit_edge.60
  %dina_1_addr_62 = getelementptr [128 x i32]* %dina_1, i64 0, i64 63
  %dina_1_load_62 = load i32* %dina_1_addr_62, align 4
  %dina_0_addr_62 = getelementptr [128 x i32]* %dina_0, i64 0, i64 64
  %dina_0_load_62 = load i32* %dina_0_addr_62, align 4
  %tmpa_1_60 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_62, i32 %dina_1_load_62)
  %dinb_1_addr_62 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 62
  %dinb_1_load_62 = load i32* %dinb_1_addr_62, align 4
  %dinb_0_addr_62 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 63
  %dinb_0_load_62 = load i32* %dinb_0_addr_62, align 4
  %tmpb_60 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_62, i32 %dinb_1_load_62)
  %a_union_60 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_60)
  %tmp_60_68 = bitcast i64 %a_union_60 to double
  %b_elem_60 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_60)
  %tmp_11_60 = bitcast i64 %b_elem_60 to double
  %tmp_12_60 = fmul double %tmp_60_68, %tmp_11_60
  br label %._crit_edge.61

._crit_edge.62:                                   ; preds = %63, %._crit_edge.61
  %a_elem_load_61 = phi double [ %tmp_61_69, %63 ], [ undef, %._crit_edge.61 ]
  %elem_mult_load_1_29 = phi double [ %tmp_12_61, %63 ], [ undef, %._crit_edge.61 ]
  %tmp_140 = call i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32 %temp, i32 30, i32 31)
  %tmp_142 = call i26 @_ssdm_op_BitConcatenate.i26.i8.i8.i8.i2(i8 %tmp_1, i8 %tmp_1_i, i8 %tmp, i2 %tmp_140)
  %icmp2 = icmp ne i26 %tmp_142, 0
  br i1 %icmp2, label %64, label %._crit_edge.63

; <label>:63                                      ; preds = %._crit_edge.61
  %dina_1_addr_63 = getelementptr [128 x i32]* %dina_1, i64 0, i64 64
  %dina_1_load_63 = load i32* %dina_1_addr_63, align 4
  %dina_0_addr_63 = getelementptr [128 x i32]* %dina_0, i64 0, i64 65
  %dina_0_load_63 = load i32* %dina_0_addr_63, align 4
  %tmpa_1_61 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_63, i32 %dina_1_load_63)
  %dinb_1_addr_63 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 63
  %dinb_1_load_63 = load i32* %dinb_1_addr_63, align 4
  %dinb_0_addr_63 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 64
  %dinb_0_load_63 = load i32* %dinb_0_addr_63, align 4
  %tmpb_61 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_63, i32 %dinb_1_load_63)
  %a_union_61 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_61)
  %tmp_61_69 = bitcast i64 %a_union_61 to double
  %b_elem_61 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_61)
  %tmp_11_61 = bitcast i64 %b_elem_61 to double
  %tmp_12_61 = fmul double %tmp_61_69, %tmp_11_61
  br label %._crit_edge.62

._crit_edge.63:                                   ; preds = %64, %._crit_edge.62
  %a_elem_load_62 = phi double [ %tmp_62_70, %64 ], [ undef, %._crit_edge.62 ]
  %elem_mult_load_1_30 = phi double [ %tmp_12_62, %64 ], [ undef, %._crit_edge.62 ]
  %tmp_64 = icmp ugt i32 %out, 64
  br i1 %tmp_64, label %65, label %._crit_edge.64

; <label>:64                                      ; preds = %._crit_edge.62
  %dina_1_addr_64 = getelementptr [128 x i32]* %dina_1, i64 0, i64 65
  %dina_1_load_64 = load i32* %dina_1_addr_64, align 4
  %dina_0_addr_64 = getelementptr [128 x i32]* %dina_0, i64 0, i64 66
  %dina_0_load_64 = load i32* %dina_0_addr_64, align 4
  %tmpa_1_62 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_64, i32 %dina_1_load_64)
  %dinb_1_addr_64 = getelementptr [128 x i32]* %dinb_1, i64 0, i64 64
  %dinb_1_load_64 = load i32* %dinb_1_addr_64, align 4
  %dinb_0_addr_64 = getelementptr [128 x i32]* %dinb_0, i64 0, i64 65
  %dinb_0_load_64 = load i32* %dinb_0_addr_64, align 4
  %tmpb_62 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dinb_0_load_64, i32 %dinb_1_load_64)
  %a_union_62 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_62)
  %tmp_62_70 = bitcast i64 %a_union_62 to double
  %b_elem_62 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpb_62)
  %tmp_11_62 = bitcast i64 %b_elem_62 to double
  %tmp_12_62 = fmul double %tmp_62_70, %tmp_11_62
  br label %._crit_edge.63

._crit_edge.64:                                   ; preds = %65, %._crit_edge.63
  %a_elem_load_63 = phi double [ %tmp_63_71, %65 ], [ undef, %._crit_edge.63 ]
  %tmp_65 = icmp ugt i32 %out, 65
  br i1 %tmp_65, label %66, label %._crit_edge.65

; <label>:65                                      ; preds = %._crit_edge.63
  %dina_1_addr_65 = getelementptr [128 x i32]* %dina_1, i64 0, i64 66
  %dina_1_load_65 = load i32* %dina_1_addr_65, align 4
  %dina_0_addr_65 = getelementptr [128 x i32]* %dina_0, i64 0, i64 67
  %dina_0_load_65 = load i32* %dina_0_addr_65, align 4
  %tmpa_1_63 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_65, i32 %dina_1_load_65)
  %a_union_63 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_63)
  %tmp_63_71 = bitcast i64 %a_union_63 to double
  br label %._crit_edge.64

._crit_edge.65:                                   ; preds = %66, %._crit_edge.64
  %a_elem_load_64 = phi double [ %tmp_64_72, %66 ], [ undef, %._crit_edge.64 ]
  %tmp_66 = icmp ugt i32 %out, 66
  br i1 %tmp_66, label %67, label %._crit_edge.66

; <label>:66                                      ; preds = %._crit_edge.64
  %dina_1_addr_66 = getelementptr [128 x i32]* %dina_1, i64 0, i64 67
  %dina_1_load_66 = load i32* %dina_1_addr_66, align 4
  %dina_0_addr_66 = getelementptr [128 x i32]* %dina_0, i64 0, i64 68
  %dina_0_load_66 = load i32* %dina_0_addr_66, align 4
  %tmpa_1_64 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_66, i32 %dina_1_load_66)
  %a_union_64 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_64)
  %tmp_64_72 = bitcast i64 %a_union_64 to double
  br label %._crit_edge.65

._crit_edge.66:                                   ; preds = %67, %._crit_edge.65
  %a_elem_load_65 = phi double [ %tmp_65_73, %67 ], [ undef, %._crit_edge.65 ]
  %tmp_67 = icmp ugt i32 %out, 67
  br i1 %tmp_67, label %68, label %._crit_edge.67

; <label>:67                                      ; preds = %._crit_edge.65
  %dina_1_addr_67 = getelementptr [128 x i32]* %dina_1, i64 0, i64 68
  %dina_1_load_67 = load i32* %dina_1_addr_67, align 4
  %dina_0_addr_67 = getelementptr [128 x i32]* %dina_0, i64 0, i64 69
  %dina_0_load_67 = load i32* %dina_0_addr_67, align 4
  %tmpa_1_65 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_67, i32 %dina_1_load_67)
  %a_union_65 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_65)
  %tmp_65_73 = bitcast i64 %a_union_65 to double
  br label %._crit_edge.66

._crit_edge.67:                                   ; preds = %68, %._crit_edge.66
  %a_elem_load_66 = phi double [ %tmp_66_74, %68 ], [ undef, %._crit_edge.66 ]
  %tmp_68 = icmp ugt i32 %out, 68
  br i1 %tmp_68, label %69, label %._crit_edge.68

; <label>:68                                      ; preds = %._crit_edge.66
  %dina_1_addr_68 = getelementptr [128 x i32]* %dina_1, i64 0, i64 69
  %dina_1_load_68 = load i32* %dina_1_addr_68, align 4
  %dina_0_addr_68 = getelementptr [128 x i32]* %dina_0, i64 0, i64 70
  %dina_0_load_68 = load i32* %dina_0_addr_68, align 4
  %tmpa_1_66 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_68, i32 %dina_1_load_68)
  %a_union_66 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_66)
  %tmp_66_74 = bitcast i64 %a_union_66 to double
  br label %._crit_edge.67

._crit_edge.68:                                   ; preds = %69, %._crit_edge.67
  %a_elem_load_67 = phi double [ %tmp_67_75, %69 ], [ undef, %._crit_edge.67 ]
  %tmp_69 = icmp ugt i32 %out, 69
  br i1 %tmp_69, label %70, label %._crit_edge.69

; <label>:69                                      ; preds = %._crit_edge.67
  %dina_1_addr_69 = getelementptr [128 x i32]* %dina_1, i64 0, i64 70
  %dina_1_load_69 = load i32* %dina_1_addr_69, align 4
  %dina_0_addr_69 = getelementptr [128 x i32]* %dina_0, i64 0, i64 71
  %dina_0_load_69 = load i32* %dina_0_addr_69, align 4
  %tmpa_1_67 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_69, i32 %dina_1_load_69)
  %a_union_67 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_67)
  %tmp_67_75 = bitcast i64 %a_union_67 to double
  br label %._crit_edge.68

._crit_edge.69:                                   ; preds = %70, %._crit_edge.68
  %a_elem_load_68 = phi double [ %tmp_68_76, %70 ], [ undef, %._crit_edge.68 ]
  %tmp_70 = icmp ugt i32 %out, 70
  br i1 %tmp_70, label %71, label %._crit_edge.70

; <label>:70                                      ; preds = %._crit_edge.68
  %dina_1_addr_70 = getelementptr [128 x i32]* %dina_1, i64 0, i64 71
  %dina_1_load_70 = load i32* %dina_1_addr_70, align 4
  %dina_0_addr_70 = getelementptr [128 x i32]* %dina_0, i64 0, i64 72
  %dina_0_load_70 = load i32* %dina_0_addr_70, align 4
  %tmpa_1_68 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_70, i32 %dina_1_load_70)
  %a_union_68 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_68)
  %tmp_68_76 = bitcast i64 %a_union_68 to double
  br label %._crit_edge.69

._crit_edge.70:                                   ; preds = %71, %._crit_edge.69
  %a_elem_load_69 = phi double [ %tmp_69_77, %71 ], [ undef, %._crit_edge.69 ]
  %tmp_71 = icmp ugt i32 %out, 71
  br i1 %tmp_71, label %72, label %._crit_edge.71

; <label>:71                                      ; preds = %._crit_edge.69
  %dina_1_addr_71 = getelementptr [128 x i32]* %dina_1, i64 0, i64 72
  %dina_1_load_71 = load i32* %dina_1_addr_71, align 4
  %dina_0_addr_71 = getelementptr [128 x i32]* %dina_0, i64 0, i64 73
  %dina_0_load_71 = load i32* %dina_0_addr_71, align 4
  %tmpa_1_69 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_71, i32 %dina_1_load_71)
  %a_union_69 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_69)
  %tmp_69_77 = bitcast i64 %a_union_69 to double
  br label %._crit_edge.70

._crit_edge.71:                                   ; preds = %72, %._crit_edge.70
  %a_elem_load_70 = phi double [ %tmp_70_78, %72 ], [ undef, %._crit_edge.70 ]
  %tmp_72 = icmp ugt i32 %out, 72
  br i1 %tmp_72, label %73, label %._crit_edge.72

; <label>:72                                      ; preds = %._crit_edge.70
  %dina_1_addr_72 = getelementptr [128 x i32]* %dina_1, i64 0, i64 73
  %dina_1_load_72 = load i32* %dina_1_addr_72, align 4
  %dina_0_addr_72 = getelementptr [128 x i32]* %dina_0, i64 0, i64 74
  %dina_0_load_72 = load i32* %dina_0_addr_72, align 4
  %tmpa_1_70 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_72, i32 %dina_1_load_72)
  %a_union_70 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_70)
  %tmp_70_78 = bitcast i64 %a_union_70 to double
  br label %._crit_edge.71

._crit_edge.72:                                   ; preds = %73, %._crit_edge.71
  %a_elem_load_71 = phi double [ %tmp_71_79, %73 ], [ undef, %._crit_edge.71 ]
  %tmp_73 = icmp ugt i32 %out, 73
  br i1 %tmp_73, label %74, label %._crit_edge.73

; <label>:73                                      ; preds = %._crit_edge.71
  %dina_1_addr_73 = getelementptr [128 x i32]* %dina_1, i64 0, i64 74
  %dina_1_load_73 = load i32* %dina_1_addr_73, align 4
  %dina_0_addr_73 = getelementptr [128 x i32]* %dina_0, i64 0, i64 75
  %dina_0_load_73 = load i32* %dina_0_addr_73, align 4
  %tmpa_1_71 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_73, i32 %dina_1_load_73)
  %a_union_71 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_71)
  %tmp_71_79 = bitcast i64 %a_union_71 to double
  br label %._crit_edge.72

._crit_edge.73:                                   ; preds = %74, %._crit_edge.72
  %a_elem_load_72 = phi double [ %tmp_72_80, %74 ], [ undef, %._crit_edge.72 ]
  %tmp_74 = icmp ugt i32 %out, 74
  br i1 %tmp_74, label %75, label %._crit_edge.74

; <label>:74                                      ; preds = %._crit_edge.72
  %dina_1_addr_74 = getelementptr [128 x i32]* %dina_1, i64 0, i64 75
  %dina_1_load_74 = load i32* %dina_1_addr_74, align 4
  %dina_0_addr_74 = getelementptr [128 x i32]* %dina_0, i64 0, i64 76
  %dina_0_load_74 = load i32* %dina_0_addr_74, align 4
  %tmpa_1_72 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_74, i32 %dina_1_load_74)
  %a_union_72 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_72)
  %tmp_72_80 = bitcast i64 %a_union_72 to double
  br label %._crit_edge.73

._crit_edge.74:                                   ; preds = %75, %._crit_edge.73
  %a_elem_load_73 = phi double [ %tmp_73_81, %75 ], [ undef, %._crit_edge.73 ]
  %tmp_75 = icmp ugt i32 %out, 75
  br i1 %tmp_75, label %76, label %._crit_edge.75

; <label>:75                                      ; preds = %._crit_edge.73
  %dina_1_addr_75 = getelementptr [128 x i32]* %dina_1, i64 0, i64 76
  %dina_1_load_75 = load i32* %dina_1_addr_75, align 4
  %dina_0_addr_75 = getelementptr [128 x i32]* %dina_0, i64 0, i64 77
  %dina_0_load_75 = load i32* %dina_0_addr_75, align 4
  %tmpa_1_73 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_75, i32 %dina_1_load_75)
  %a_union_73 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_73)
  %tmp_73_81 = bitcast i64 %a_union_73 to double
  br label %._crit_edge.74

._crit_edge.75:                                   ; preds = %76, %._crit_edge.74
  %a_elem_load_74 = phi double [ %tmp_74_82, %76 ], [ undef, %._crit_edge.74 ]
  %tmp_76 = icmp ugt i32 %out, 76
  br i1 %tmp_76, label %77, label %._crit_edge.76

; <label>:76                                      ; preds = %._crit_edge.74
  %dina_1_addr_76 = getelementptr [128 x i32]* %dina_1, i64 0, i64 77
  %dina_1_load_76 = load i32* %dina_1_addr_76, align 4
  %dina_0_addr_76 = getelementptr [128 x i32]* %dina_0, i64 0, i64 78
  %dina_0_load_76 = load i32* %dina_0_addr_76, align 4
  %tmpa_1_74 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_76, i32 %dina_1_load_76)
  %a_union_74 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_74)
  %tmp_74_82 = bitcast i64 %a_union_74 to double
  br label %._crit_edge.75

._crit_edge.76:                                   ; preds = %77, %._crit_edge.75
  %a_elem_load_75 = phi double [ %tmp_75_83, %77 ], [ undef, %._crit_edge.75 ]
  %tmp_77 = icmp ugt i32 %out, 77
  br i1 %tmp_77, label %78, label %._crit_edge.77

; <label>:77                                      ; preds = %._crit_edge.75
  %dina_1_addr_77 = getelementptr [128 x i32]* %dina_1, i64 0, i64 78
  %dina_1_load_77 = load i32* %dina_1_addr_77, align 4
  %dina_0_addr_77 = getelementptr [128 x i32]* %dina_0, i64 0, i64 79
  %dina_0_load_77 = load i32* %dina_0_addr_77, align 4
  %tmpa_1_75 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_77, i32 %dina_1_load_77)
  %a_union_75 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_75)
  %tmp_75_83 = bitcast i64 %a_union_75 to double
  br label %._crit_edge.76

._crit_edge.77:                                   ; preds = %78, %._crit_edge.76
  %a_elem_load_76 = phi double [ %tmp_76_84, %78 ], [ undef, %._crit_edge.76 ]
  %tmp_78 = icmp ugt i32 %out, 78
  br i1 %tmp_78, label %79, label %._crit_edge.78

; <label>:78                                      ; preds = %._crit_edge.76
  %dina_1_addr_78 = getelementptr [128 x i32]* %dina_1, i64 0, i64 79
  %dina_1_load_78 = load i32* %dina_1_addr_78, align 4
  %dina_0_addr_78 = getelementptr [128 x i32]* %dina_0, i64 0, i64 80
  %dina_0_load_78 = load i32* %dina_0_addr_78, align 4
  %tmpa_1_76 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_78, i32 %dina_1_load_78)
  %a_union_76 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_76)
  %tmp_76_84 = bitcast i64 %a_union_76 to double
  br label %._crit_edge.77

._crit_edge.78:                                   ; preds = %79, %._crit_edge.77
  %a_elem_load_77 = phi double [ %tmp_77_85, %79 ], [ undef, %._crit_edge.77 ]
  %tmp_79 = icmp ugt i32 %out, 79
  br i1 %tmp_79, label %80, label %._crit_edge.79

; <label>:79                                      ; preds = %._crit_edge.77
  %dina_1_addr_79 = getelementptr [128 x i32]* %dina_1, i64 0, i64 80
  %dina_1_load_79 = load i32* %dina_1_addr_79, align 4
  %dina_0_addr_79 = getelementptr [128 x i32]* %dina_0, i64 0, i64 81
  %dina_0_load_79 = load i32* %dina_0_addr_79, align 4
  %tmpa_1_77 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_79, i32 %dina_1_load_79)
  %a_union_77 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_77)
  %tmp_77_85 = bitcast i64 %a_union_77 to double
  br label %._crit_edge.78

._crit_edge.79:                                   ; preds = %80, %._crit_edge.78
  %a_elem_load_78 = phi double [ %tmp_78_86, %80 ], [ undef, %._crit_edge.78 ]
  %tmp_80 = icmp ugt i32 %out, 80
  br i1 %tmp_80, label %81, label %._crit_edge.80

; <label>:80                                      ; preds = %._crit_edge.78
  %dina_1_addr_80 = getelementptr [128 x i32]* %dina_1, i64 0, i64 81
  %dina_1_load_80 = load i32* %dina_1_addr_80, align 4
  %dina_0_addr_80 = getelementptr [128 x i32]* %dina_0, i64 0, i64 82
  %dina_0_load_80 = load i32* %dina_0_addr_80, align 4
  %tmpa_1_78 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_80, i32 %dina_1_load_80)
  %a_union_78 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_78)
  %tmp_78_86 = bitcast i64 %a_union_78 to double
  br label %._crit_edge.79

._crit_edge.80:                                   ; preds = %81, %._crit_edge.79
  %a_elem_load_79 = phi double [ %tmp_79_87, %81 ], [ undef, %._crit_edge.79 ]
  %tmp_81 = icmp ugt i32 %out, 81
  br i1 %tmp_81, label %82, label %._crit_edge.81

; <label>:81                                      ; preds = %._crit_edge.79
  %dina_1_addr_81 = getelementptr [128 x i32]* %dina_1, i64 0, i64 82
  %dina_1_load_81 = load i32* %dina_1_addr_81, align 4
  %dina_0_addr_81 = getelementptr [128 x i32]* %dina_0, i64 0, i64 83
  %dina_0_load_81 = load i32* %dina_0_addr_81, align 4
  %tmpa_1_79 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_81, i32 %dina_1_load_81)
  %a_union_79 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_79)
  %tmp_79_87 = bitcast i64 %a_union_79 to double
  br label %._crit_edge.80

._crit_edge.81:                                   ; preds = %82, %._crit_edge.80
  %a_elem_load_80 = phi double [ %tmp_80_88, %82 ], [ undef, %._crit_edge.80 ]
  %tmp_82 = icmp ugt i32 %out, 82
  br i1 %tmp_82, label %83, label %._crit_edge.82

; <label>:82                                      ; preds = %._crit_edge.80
  %dina_1_addr_82 = getelementptr [128 x i32]* %dina_1, i64 0, i64 83
  %dina_1_load_82 = load i32* %dina_1_addr_82, align 4
  %dina_0_addr_82 = getelementptr [128 x i32]* %dina_0, i64 0, i64 84
  %dina_0_load_82 = load i32* %dina_0_addr_82, align 4
  %tmpa_1_80 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_82, i32 %dina_1_load_82)
  %a_union_80 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_80)
  %tmp_80_88 = bitcast i64 %a_union_80 to double
  br label %._crit_edge.81

._crit_edge.82:                                   ; preds = %83, %._crit_edge.81
  %a_elem_load_81 = phi double [ %tmp_81_89, %83 ], [ undef, %._crit_edge.81 ]
  %tmp_83 = icmp ugt i32 %out, 83
  br i1 %tmp_83, label %84, label %._crit_edge.83

; <label>:83                                      ; preds = %._crit_edge.81
  %dina_1_addr_83 = getelementptr [128 x i32]* %dina_1, i64 0, i64 84
  %dina_1_load_83 = load i32* %dina_1_addr_83, align 4
  %dina_0_addr_83 = getelementptr [128 x i32]* %dina_0, i64 0, i64 85
  %dina_0_load_83 = load i32* %dina_0_addr_83, align 4
  %tmpa_1_81 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_83, i32 %dina_1_load_83)
  %a_union_81 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_81)
  %tmp_81_89 = bitcast i64 %a_union_81 to double
  br label %._crit_edge.82

._crit_edge.83:                                   ; preds = %84, %._crit_edge.82
  %a_elem_load_82 = phi double [ %tmp_82_90, %84 ], [ undef, %._crit_edge.82 ]
  %tmp_84 = icmp ugt i32 %out, 84
  br i1 %tmp_84, label %85, label %._crit_edge.84

; <label>:84                                      ; preds = %._crit_edge.82
  %dina_1_addr_84 = getelementptr [128 x i32]* %dina_1, i64 0, i64 85
  %dina_1_load_84 = load i32* %dina_1_addr_84, align 4
  %dina_0_addr_84 = getelementptr [128 x i32]* %dina_0, i64 0, i64 86
  %dina_0_load_84 = load i32* %dina_0_addr_84, align 4
  %tmpa_1_82 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_84, i32 %dina_1_load_84)
  %a_union_82 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_82)
  %tmp_82_90 = bitcast i64 %a_union_82 to double
  br label %._crit_edge.83

._crit_edge.84:                                   ; preds = %85, %._crit_edge.83
  %a_elem_load_83 = phi double [ %tmp_83_91, %85 ], [ undef, %._crit_edge.83 ]
  %tmp_85 = icmp ugt i32 %out, 85
  br i1 %tmp_85, label %86, label %._crit_edge.85

; <label>:85                                      ; preds = %._crit_edge.83
  %dina_1_addr_85 = getelementptr [128 x i32]* %dina_1, i64 0, i64 86
  %dina_1_load_85 = load i32* %dina_1_addr_85, align 4
  %dina_0_addr_85 = getelementptr [128 x i32]* %dina_0, i64 0, i64 87
  %dina_0_load_85 = load i32* %dina_0_addr_85, align 4
  %tmpa_1_83 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_85, i32 %dina_1_load_85)
  %a_union_83 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_83)
  %tmp_83_91 = bitcast i64 %a_union_83 to double
  br label %._crit_edge.84

._crit_edge.85:                                   ; preds = %86, %._crit_edge.84
  %a_elem_load_84 = phi double [ %tmp_84_92, %86 ], [ undef, %._crit_edge.84 ]
  %tmp_86 = icmp ugt i32 %out, 86
  br i1 %tmp_86, label %87, label %._crit_edge.86

; <label>:86                                      ; preds = %._crit_edge.84
  %dina_1_addr_86 = getelementptr [128 x i32]* %dina_1, i64 0, i64 87
  %dina_1_load_86 = load i32* %dina_1_addr_86, align 4
  %dina_0_addr_86 = getelementptr [128 x i32]* %dina_0, i64 0, i64 88
  %dina_0_load_86 = load i32* %dina_0_addr_86, align 4
  %tmpa_1_84 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_86, i32 %dina_1_load_86)
  %a_union_84 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_84)
  %tmp_84_92 = bitcast i64 %a_union_84 to double
  br label %._crit_edge.85

._crit_edge.86:                                   ; preds = %87, %._crit_edge.85
  %a_elem_load_85 = phi double [ %tmp_85_93, %87 ], [ undef, %._crit_edge.85 ]
  %tmp_87 = icmp ugt i32 %out, 87
  br i1 %tmp_87, label %88, label %._crit_edge.87

; <label>:87                                      ; preds = %._crit_edge.85
  %dina_1_addr_87 = getelementptr [128 x i32]* %dina_1, i64 0, i64 88
  %dina_1_load_87 = load i32* %dina_1_addr_87, align 4
  %dina_0_addr_87 = getelementptr [128 x i32]* %dina_0, i64 0, i64 89
  %dina_0_load_87 = load i32* %dina_0_addr_87, align 4
  %tmpa_1_85 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_87, i32 %dina_1_load_87)
  %a_union_85 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_85)
  %tmp_85_93 = bitcast i64 %a_union_85 to double
  br label %._crit_edge.86

._crit_edge.87:                                   ; preds = %88, %._crit_edge.86
  %a_elem_load_86 = phi double [ %tmp_86_94, %88 ], [ undef, %._crit_edge.86 ]
  %tmp_88 = icmp ugt i32 %out, 88
  br i1 %tmp_88, label %89, label %._crit_edge.88

; <label>:88                                      ; preds = %._crit_edge.86
  %dina_1_addr_88 = getelementptr [128 x i32]* %dina_1, i64 0, i64 89
  %dina_1_load_88 = load i32* %dina_1_addr_88, align 4
  %dina_0_addr_88 = getelementptr [128 x i32]* %dina_0, i64 0, i64 90
  %dina_0_load_88 = load i32* %dina_0_addr_88, align 4
  %tmpa_1_86 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_88, i32 %dina_1_load_88)
  %a_union_86 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_86)
  %tmp_86_94 = bitcast i64 %a_union_86 to double
  br label %._crit_edge.87

._crit_edge.88:                                   ; preds = %89, %._crit_edge.87
  %a_elem_load_87 = phi double [ %tmp_87_95, %89 ], [ undef, %._crit_edge.87 ]
  %tmp_89 = icmp ugt i32 %out, 89
  br i1 %tmp_89, label %90, label %._crit_edge.89

; <label>:89                                      ; preds = %._crit_edge.87
  %dina_1_addr_89 = getelementptr [128 x i32]* %dina_1, i64 0, i64 90
  %dina_1_load_89 = load i32* %dina_1_addr_89, align 4
  %dina_0_addr_89 = getelementptr [128 x i32]* %dina_0, i64 0, i64 91
  %dina_0_load_89 = load i32* %dina_0_addr_89, align 4
  %tmpa_1_87 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_89, i32 %dina_1_load_89)
  %a_union_87 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_87)
  %tmp_87_95 = bitcast i64 %a_union_87 to double
  br label %._crit_edge.88

._crit_edge.89:                                   ; preds = %90, %._crit_edge.88
  %a_elem_load_88 = phi double [ %tmp_88_96, %90 ], [ undef, %._crit_edge.88 ]
  %tmp_90 = icmp ugt i32 %out, 90
  br i1 %tmp_90, label %91, label %._crit_edge.90

; <label>:90                                      ; preds = %._crit_edge.88
  %dina_1_addr_90 = getelementptr [128 x i32]* %dina_1, i64 0, i64 91
  %dina_1_load_90 = load i32* %dina_1_addr_90, align 4
  %dina_0_addr_90 = getelementptr [128 x i32]* %dina_0, i64 0, i64 92
  %dina_0_load_90 = load i32* %dina_0_addr_90, align 4
  %tmpa_1_88 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_90, i32 %dina_1_load_90)
  %a_union_88 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_88)
  %tmp_88_96 = bitcast i64 %a_union_88 to double
  br label %._crit_edge.89

._crit_edge.90:                                   ; preds = %91, %._crit_edge.89
  %a_elem_load_89 = phi double [ %tmp_89_97, %91 ], [ undef, %._crit_edge.89 ]
  %tmp_91 = icmp ugt i32 %out, 91
  br i1 %tmp_91, label %92, label %._crit_edge.91

; <label>:91                                      ; preds = %._crit_edge.89
  %dina_1_addr_91 = getelementptr [128 x i32]* %dina_1, i64 0, i64 92
  %dina_1_load_91 = load i32* %dina_1_addr_91, align 4
  %dina_0_addr_91 = getelementptr [128 x i32]* %dina_0, i64 0, i64 93
  %dina_0_load_91 = load i32* %dina_0_addr_91, align 4
  %tmpa_1_89 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_91, i32 %dina_1_load_91)
  %a_union_89 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_89)
  %tmp_89_97 = bitcast i64 %a_union_89 to double
  br label %._crit_edge.90

._crit_edge.91:                                   ; preds = %92, %._crit_edge.90
  %a_elem_load_90 = phi double [ %tmp_90_98, %92 ], [ undef, %._crit_edge.90 ]
  %tmp_92 = icmp ugt i32 %out, 92
  br i1 %tmp_92, label %93, label %._crit_edge.92

; <label>:92                                      ; preds = %._crit_edge.90
  %dina_1_addr_92 = getelementptr [128 x i32]* %dina_1, i64 0, i64 93
  %dina_1_load_92 = load i32* %dina_1_addr_92, align 4
  %dina_0_addr_92 = getelementptr [128 x i32]* %dina_0, i64 0, i64 94
  %dina_0_load_92 = load i32* %dina_0_addr_92, align 4
  %tmpa_1_90 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_92, i32 %dina_1_load_92)
  %a_union_90 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_90)
  %tmp_90_98 = bitcast i64 %a_union_90 to double
  br label %._crit_edge.91

._crit_edge.92:                                   ; preds = %93, %._crit_edge.91
  %a_elem_load_91 = phi double [ %tmp_91_99, %93 ], [ undef, %._crit_edge.91 ]
  %tmp_93 = icmp ugt i32 %out, 93
  br i1 %tmp_93, label %94, label %._crit_edge.93

; <label>:93                                      ; preds = %._crit_edge.91
  %dina_1_addr_93 = getelementptr [128 x i32]* %dina_1, i64 0, i64 94
  %dina_1_load_93 = load i32* %dina_1_addr_93, align 4
  %dina_0_addr_93 = getelementptr [128 x i32]* %dina_0, i64 0, i64 95
  %dina_0_load_93 = load i32* %dina_0_addr_93, align 4
  %tmpa_1_91 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_93, i32 %dina_1_load_93)
  %a_union_91 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_91)
  %tmp_91_99 = bitcast i64 %a_union_91 to double
  br label %._crit_edge.92

._crit_edge.93:                                   ; preds = %94, %._crit_edge.92
  %a_elem_load_92 = phi double [ %tmp_92_100, %94 ], [ undef, %._crit_edge.92 ]
  %tmp_94 = icmp ugt i32 %out, 94
  br i1 %tmp_94, label %95, label %._crit_edge.94

; <label>:94                                      ; preds = %._crit_edge.92
  %dina_1_addr_94 = getelementptr [128 x i32]* %dina_1, i64 0, i64 95
  %dina_1_load_94 = load i32* %dina_1_addr_94, align 4
  %dina_0_addr_94 = getelementptr [128 x i32]* %dina_0, i64 0, i64 96
  %dina_0_load_94 = load i32* %dina_0_addr_94, align 4
  %tmpa_1_92 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_94, i32 %dina_1_load_94)
  %a_union_92 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_92)
  %tmp_92_100 = bitcast i64 %a_union_92 to double
  br label %._crit_edge.93

._crit_edge.94:                                   ; preds = %95, %._crit_edge.93
  %a_elem_load_93 = phi double [ %tmp_93_101, %95 ], [ undef, %._crit_edge.93 ]
  %tmp_95 = icmp ugt i32 %out, 95
  br i1 %tmp_95, label %96, label %._crit_edge.95

; <label>:95                                      ; preds = %._crit_edge.93
  %dina_1_addr_95 = getelementptr [128 x i32]* %dina_1, i64 0, i64 96
  %dina_1_load_95 = load i32* %dina_1_addr_95, align 4
  %dina_0_addr_95 = getelementptr [128 x i32]* %dina_0, i64 0, i64 97
  %dina_0_load_95 = load i32* %dina_0_addr_95, align 4
  %tmpa_1_93 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_95, i32 %dina_1_load_95)
  %a_union_93 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_93)
  %tmp_93_101 = bitcast i64 %a_union_93 to double
  br label %._crit_edge.94

._crit_edge.95:                                   ; preds = %96, %._crit_edge.94
  %a_elem_load_94 = phi double [ %tmp_94_102, %96 ], [ undef, %._crit_edge.94 ]
  %tmp_96 = icmp ugt i32 %out, 96
  br i1 %tmp_96, label %97, label %._crit_edge.96

; <label>:96                                      ; preds = %._crit_edge.94
  %dina_1_addr_96 = getelementptr [128 x i32]* %dina_1, i64 0, i64 97
  %dina_1_load_96 = load i32* %dina_1_addr_96, align 4
  %dina_0_addr_96 = getelementptr [128 x i32]* %dina_0, i64 0, i64 98
  %dina_0_load_96 = load i32* %dina_0_addr_96, align 4
  %tmpa_1_94 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_96, i32 %dina_1_load_96)
  %a_union_94 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_94)
  %tmp_94_102 = bitcast i64 %a_union_94 to double
  br label %._crit_edge.95

._crit_edge.96:                                   ; preds = %97, %._crit_edge.95
  %a_elem_load_95 = phi double [ %tmp_95_103, %97 ], [ undef, %._crit_edge.95 ]
  %tmp_97 = icmp ugt i32 %out, 97
  br i1 %tmp_97, label %98, label %._crit_edge.97

; <label>:97                                      ; preds = %._crit_edge.95
  %dina_1_addr_97 = getelementptr [128 x i32]* %dina_1, i64 0, i64 98
  %dina_1_load_97 = load i32* %dina_1_addr_97, align 4
  %dina_0_addr_97 = getelementptr [128 x i32]* %dina_0, i64 0, i64 99
  %dina_0_load_97 = load i32* %dina_0_addr_97, align 4
  %tmpa_1_95 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_97, i32 %dina_1_load_97)
  %a_union_95 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_95)
  %tmp_95_103 = bitcast i64 %a_union_95 to double
  br label %._crit_edge.96

._crit_edge.97:                                   ; preds = %98, %._crit_edge.96
  %a_elem_load_96 = phi double [ %tmp_96_104, %98 ], [ undef, %._crit_edge.96 ]
  %tmp_98 = icmp ugt i32 %out, 98
  br i1 %tmp_98, label %99, label %._crit_edge.98

; <label>:98                                      ; preds = %._crit_edge.96
  %dina_1_addr_98 = getelementptr [128 x i32]* %dina_1, i64 0, i64 99
  %dina_1_load_98 = load i32* %dina_1_addr_98, align 4
  %dina_0_addr_98 = getelementptr [128 x i32]* %dina_0, i64 0, i64 100
  %dina_0_load_98 = load i32* %dina_0_addr_98, align 4
  %tmpa_1_96 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_98, i32 %dina_1_load_98)
  %a_union_96 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_96)
  %tmp_96_104 = bitcast i64 %a_union_96 to double
  br label %._crit_edge.97

._crit_edge.98:                                   ; preds = %99, %._crit_edge.97
  %a_elem_load_97 = phi double [ %tmp_97_105, %99 ], [ undef, %._crit_edge.97 ]
  %tmp_99 = icmp ugt i32 %out, 99
  br i1 %tmp_99, label %100, label %._crit_edge.99

; <label>:99                                      ; preds = %._crit_edge.97
  %dina_1_addr_99 = getelementptr [128 x i32]* %dina_1, i64 0, i64 100
  %dina_1_load_99 = load i32* %dina_1_addr_99, align 4
  %dina_0_addr_99 = getelementptr [128 x i32]* %dina_0, i64 0, i64 101
  %dina_0_load_99 = load i32* %dina_0_addr_99, align 4
  %tmpa_1_97 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_99, i32 %dina_1_load_99)
  %a_union_97 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_97)
  %tmp_97_105 = bitcast i64 %a_union_97 to double
  br label %._crit_edge.98

._crit_edge.99:                                   ; preds = %100, %._crit_edge.98
  %a_elem_load_98 = phi double [ %tmp_98_106, %100 ], [ undef, %._crit_edge.98 ]
  %tmp_100 = icmp ugt i32 %out, 100
  br i1 %tmp_100, label %101, label %._crit_edge.100

; <label>:100                                     ; preds = %._crit_edge.98
  %dina_1_addr_100 = getelementptr [128 x i32]* %dina_1, i64 0, i64 101
  %dina_1_load_100 = load i32* %dina_1_addr_100, align 4
  %dina_0_addr_100 = getelementptr [128 x i32]* %dina_0, i64 0, i64 102
  %dina_0_load_100 = load i32* %dina_0_addr_100, align 4
  %tmpa_1_98 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_100, i32 %dina_1_load_100)
  %a_union_98 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_98)
  %tmp_98_106 = bitcast i64 %a_union_98 to double
  br label %._crit_edge.99

._crit_edge.100:                                  ; preds = %101, %._crit_edge.99
  %a_elem_load_99 = phi double [ %tmp_99_107, %101 ], [ undef, %._crit_edge.99 ]
  %tmp_101 = icmp ugt i32 %out, 101
  br i1 %tmp_101, label %102, label %._crit_edge.101

; <label>:101                                     ; preds = %._crit_edge.99
  %dina_1_addr_101 = getelementptr [128 x i32]* %dina_1, i64 0, i64 102
  %dina_1_load_101 = load i32* %dina_1_addr_101, align 4
  %dina_0_addr_101 = getelementptr [128 x i32]* %dina_0, i64 0, i64 103
  %dina_0_load_101 = load i32* %dina_0_addr_101, align 4
  %tmpa_1_99 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_101, i32 %dina_1_load_101)
  %a_union_99 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_99)
  %tmp_99_107 = bitcast i64 %a_union_99 to double
  br label %._crit_edge.100

._crit_edge.101:                                  ; preds = %102, %._crit_edge.100
  %a_elem_load_100 = phi double [ %tmp_100_108, %102 ], [ undef, %._crit_edge.100 ]
  %tmp_102 = icmp ugt i32 %out, 102
  br i1 %tmp_102, label %103, label %._crit_edge.102

; <label>:102                                     ; preds = %._crit_edge.100
  %dina_1_addr_102 = getelementptr [128 x i32]* %dina_1, i64 0, i64 103
  %dina_1_load_102 = load i32* %dina_1_addr_102, align 4
  %dina_0_addr_102 = getelementptr [128 x i32]* %dina_0, i64 0, i64 104
  %dina_0_load_102 = load i32* %dina_0_addr_102, align 4
  %tmpa_1_100 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_102, i32 %dina_1_load_102)
  %a_union_100 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_100)
  %tmp_100_108 = bitcast i64 %a_union_100 to double
  br label %._crit_edge.101

._crit_edge.102:                                  ; preds = %103, %._crit_edge.101
  %a_elem_load_101 = phi double [ %tmp_101_109, %103 ], [ undef, %._crit_edge.101 ]
  %tmp_103 = icmp ugt i32 %out, 103
  br i1 %tmp_103, label %104, label %._crit_edge.103

; <label>:103                                     ; preds = %._crit_edge.101
  %dina_1_addr_103 = getelementptr [128 x i32]* %dina_1, i64 0, i64 104
  %dina_1_load_103 = load i32* %dina_1_addr_103, align 4
  %dina_0_addr_103 = getelementptr [128 x i32]* %dina_0, i64 0, i64 105
  %dina_0_load_103 = load i32* %dina_0_addr_103, align 4
  %tmpa_1_101 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_103, i32 %dina_1_load_103)
  %a_union_101 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_101)
  %tmp_101_109 = bitcast i64 %a_union_101 to double
  br label %._crit_edge.102

._crit_edge.103:                                  ; preds = %104, %._crit_edge.102
  %a_elem_load_102 = phi double [ %tmp_102_110, %104 ], [ undef, %._crit_edge.102 ]
  %tmp_104 = icmp ugt i32 %out, 104
  br i1 %tmp_104, label %105, label %._crit_edge.104

; <label>:104                                     ; preds = %._crit_edge.102
  %dina_1_addr_104 = getelementptr [128 x i32]* %dina_1, i64 0, i64 105
  %dina_1_load_104 = load i32* %dina_1_addr_104, align 4
  %dina_0_addr_104 = getelementptr [128 x i32]* %dina_0, i64 0, i64 106
  %dina_0_load_104 = load i32* %dina_0_addr_104, align 4
  %tmpa_1_102 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_104, i32 %dina_1_load_104)
  %a_union_102 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_102)
  %tmp_102_110 = bitcast i64 %a_union_102 to double
  br label %._crit_edge.103

._crit_edge.104:                                  ; preds = %105, %._crit_edge.103
  %a_elem_load_103 = phi double [ %tmp_103_111, %105 ], [ undef, %._crit_edge.103 ]
  %tmp_105 = icmp ugt i32 %out, 105
  br i1 %tmp_105, label %106, label %._crit_edge.105

; <label>:105                                     ; preds = %._crit_edge.103
  %dina_1_addr_105 = getelementptr [128 x i32]* %dina_1, i64 0, i64 106
  %dina_1_load_105 = load i32* %dina_1_addr_105, align 4
  %dina_0_addr_105 = getelementptr [128 x i32]* %dina_0, i64 0, i64 107
  %dina_0_load_105 = load i32* %dina_0_addr_105, align 4
  %tmpa_1_103 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_105, i32 %dina_1_load_105)
  %a_union_103 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_103)
  %tmp_103_111 = bitcast i64 %a_union_103 to double
  br label %._crit_edge.104

._crit_edge.105:                                  ; preds = %106, %._crit_edge.104
  %a_elem_load_104 = phi double [ %tmp_104_112, %106 ], [ undef, %._crit_edge.104 ]
  %tmp_106 = icmp ugt i32 %out, 106
  br i1 %tmp_106, label %107, label %._crit_edge.106

; <label>:106                                     ; preds = %._crit_edge.104
  %dina_1_addr_106 = getelementptr [128 x i32]* %dina_1, i64 0, i64 107
  %dina_1_load_106 = load i32* %dina_1_addr_106, align 4
  %dina_0_addr_106 = getelementptr [128 x i32]* %dina_0, i64 0, i64 108
  %dina_0_load_106 = load i32* %dina_0_addr_106, align 4
  %tmpa_1_104 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_106, i32 %dina_1_load_106)
  %a_union_104 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_104)
  %tmp_104_112 = bitcast i64 %a_union_104 to double
  br label %._crit_edge.105

._crit_edge.106:                                  ; preds = %107, %._crit_edge.105
  %a_elem_load_105 = phi double [ %tmp_105_113, %107 ], [ undef, %._crit_edge.105 ]
  %tmp_107 = icmp ugt i32 %out, 107
  br i1 %tmp_107, label %108, label %._crit_edge.107

; <label>:107                                     ; preds = %._crit_edge.105
  %dina_1_addr_107 = getelementptr [128 x i32]* %dina_1, i64 0, i64 108
  %dina_1_load_107 = load i32* %dina_1_addr_107, align 4
  %dina_0_addr_107 = getelementptr [128 x i32]* %dina_0, i64 0, i64 109
  %dina_0_load_107 = load i32* %dina_0_addr_107, align 4
  %tmpa_1_105 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_107, i32 %dina_1_load_107)
  %a_union_105 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_105)
  %tmp_105_113 = bitcast i64 %a_union_105 to double
  br label %._crit_edge.106

._crit_edge.107:                                  ; preds = %108, %._crit_edge.106
  %a_elem_load_106 = phi double [ %tmp_106_114, %108 ], [ undef, %._crit_edge.106 ]
  %tmp_108 = icmp ugt i32 %out, 108
  br i1 %tmp_108, label %109, label %._crit_edge.108

; <label>:108                                     ; preds = %._crit_edge.106
  %dina_1_addr_108 = getelementptr [128 x i32]* %dina_1, i64 0, i64 109
  %dina_1_load_108 = load i32* %dina_1_addr_108, align 4
  %dina_0_addr_108 = getelementptr [128 x i32]* %dina_0, i64 0, i64 110
  %dina_0_load_108 = load i32* %dina_0_addr_108, align 4
  %tmpa_1_106 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_108, i32 %dina_1_load_108)
  %a_union_106 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_106)
  %tmp_106_114 = bitcast i64 %a_union_106 to double
  br label %._crit_edge.107

._crit_edge.108:                                  ; preds = %109, %._crit_edge.107
  %a_elem_load_107 = phi double [ %tmp_107_115, %109 ], [ undef, %._crit_edge.107 ]
  %tmp_109 = icmp ugt i32 %out, 109
  br i1 %tmp_109, label %110, label %._crit_edge.109

; <label>:109                                     ; preds = %._crit_edge.107
  %dina_1_addr_109 = getelementptr [128 x i32]* %dina_1, i64 0, i64 110
  %dina_1_load_109 = load i32* %dina_1_addr_109, align 4
  %dina_0_addr_109 = getelementptr [128 x i32]* %dina_0, i64 0, i64 111
  %dina_0_load_109 = load i32* %dina_0_addr_109, align 4
  %tmpa_1_107 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_109, i32 %dina_1_load_109)
  %a_union_107 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_107)
  %tmp_107_115 = bitcast i64 %a_union_107 to double
  br label %._crit_edge.108

._crit_edge.109:                                  ; preds = %110, %._crit_edge.108
  %a_elem_load_108 = phi double [ %tmp_108_116, %110 ], [ undef, %._crit_edge.108 ]
  %tmp_110 = icmp ugt i32 %out, 110
  br i1 %tmp_110, label %111, label %._crit_edge.110

; <label>:110                                     ; preds = %._crit_edge.108
  %dina_1_addr_110 = getelementptr [128 x i32]* %dina_1, i64 0, i64 111
  %dina_1_load_110 = load i32* %dina_1_addr_110, align 4
  %dina_0_addr_110 = getelementptr [128 x i32]* %dina_0, i64 0, i64 112
  %dina_0_load_110 = load i32* %dina_0_addr_110, align 4
  %tmpa_1_108 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_110, i32 %dina_1_load_110)
  %a_union_108 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_108)
  %tmp_108_116 = bitcast i64 %a_union_108 to double
  br label %._crit_edge.109

._crit_edge.110:                                  ; preds = %111, %._crit_edge.109
  %a_elem_load_109 = phi double [ %tmp_109_117, %111 ], [ undef, %._crit_edge.109 ]
  %tmp_111 = icmp ugt i32 %out, 111
  br i1 %tmp_111, label %112, label %._crit_edge.111

; <label>:111                                     ; preds = %._crit_edge.109
  %dina_1_addr_111 = getelementptr [128 x i32]* %dina_1, i64 0, i64 112
  %dina_1_load_111 = load i32* %dina_1_addr_111, align 4
  %dina_0_addr_111 = getelementptr [128 x i32]* %dina_0, i64 0, i64 113
  %dina_0_load_111 = load i32* %dina_0_addr_111, align 4
  %tmpa_1_109 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_111, i32 %dina_1_load_111)
  %a_union_109 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_109)
  %tmp_109_117 = bitcast i64 %a_union_109 to double
  br label %._crit_edge.110

._crit_edge.111:                                  ; preds = %112, %._crit_edge.110
  %a_elem_load_110 = phi double [ %tmp_110_118, %112 ], [ undef, %._crit_edge.110 ]
  %tmp_112 = icmp ugt i32 %out, 112
  br i1 %tmp_112, label %113, label %._crit_edge.112

; <label>:112                                     ; preds = %._crit_edge.110
  %dina_1_addr_112 = getelementptr [128 x i32]* %dina_1, i64 0, i64 113
  %dina_1_load_112 = load i32* %dina_1_addr_112, align 4
  %dina_0_addr_112 = getelementptr [128 x i32]* %dina_0, i64 0, i64 114
  %dina_0_load_112 = load i32* %dina_0_addr_112, align 4
  %tmpa_1_110 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_112, i32 %dina_1_load_112)
  %a_union_110 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_110)
  %tmp_110_118 = bitcast i64 %a_union_110 to double
  br label %._crit_edge.111

._crit_edge.112:                                  ; preds = %113, %._crit_edge.111
  %a_elem_load_111 = phi double [ %tmp_111_119, %113 ], [ undef, %._crit_edge.111 ]
  %tmp_113 = icmp ugt i32 %out, 113
  br i1 %tmp_113, label %114, label %._crit_edge.113

; <label>:113                                     ; preds = %._crit_edge.111
  %dina_1_addr_113 = getelementptr [128 x i32]* %dina_1, i64 0, i64 114
  %dina_1_load_113 = load i32* %dina_1_addr_113, align 4
  %dina_0_addr_113 = getelementptr [128 x i32]* %dina_0, i64 0, i64 115
  %dina_0_load_113 = load i32* %dina_0_addr_113, align 4
  %tmpa_1_111 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_113, i32 %dina_1_load_113)
  %a_union_111 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_111)
  %tmp_111_119 = bitcast i64 %a_union_111 to double
  br label %._crit_edge.112

._crit_edge.113:                                  ; preds = %114, %._crit_edge.112
  %a_elem_load_112 = phi double [ %tmp_112_120, %114 ], [ undef, %._crit_edge.112 ]
  %tmp_114 = icmp ugt i32 %out, 114
  br i1 %tmp_114, label %115, label %._crit_edge.114

; <label>:114                                     ; preds = %._crit_edge.112
  %dina_1_addr_114 = getelementptr [128 x i32]* %dina_1, i64 0, i64 115
  %dina_1_load_114 = load i32* %dina_1_addr_114, align 4
  %dina_0_addr_114 = getelementptr [128 x i32]* %dina_0, i64 0, i64 116
  %dina_0_load_114 = load i32* %dina_0_addr_114, align 4
  %tmpa_1_112 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_114, i32 %dina_1_load_114)
  %a_union_112 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_112)
  %tmp_112_120 = bitcast i64 %a_union_112 to double
  br label %._crit_edge.113

._crit_edge.114:                                  ; preds = %115, %._crit_edge.113
  %a_elem_load_113 = phi double [ %tmp_113_121, %115 ], [ undef, %._crit_edge.113 ]
  %tmp_115 = icmp ugt i32 %out, 115
  br i1 %tmp_115, label %116, label %._crit_edge.115

; <label>:115                                     ; preds = %._crit_edge.113
  %dina_1_addr_115 = getelementptr [128 x i32]* %dina_1, i64 0, i64 116
  %dina_1_load_115 = load i32* %dina_1_addr_115, align 4
  %dina_0_addr_115 = getelementptr [128 x i32]* %dina_0, i64 0, i64 117
  %dina_0_load_115 = load i32* %dina_0_addr_115, align 4
  %tmpa_1_113 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_115, i32 %dina_1_load_115)
  %a_union_113 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_113)
  %tmp_113_121 = bitcast i64 %a_union_113 to double
  br label %._crit_edge.114

._crit_edge.115:                                  ; preds = %116, %._crit_edge.114
  %a_elem_load_114 = phi double [ %tmp_114_122, %116 ], [ undef, %._crit_edge.114 ]
  %tmp_116 = icmp ugt i32 %out, 116
  br i1 %tmp_116, label %117, label %._crit_edge.116

; <label>:116                                     ; preds = %._crit_edge.114
  %dina_1_addr_116 = getelementptr [128 x i32]* %dina_1, i64 0, i64 117
  %dina_1_load_116 = load i32* %dina_1_addr_116, align 4
  %dina_0_addr_116 = getelementptr [128 x i32]* %dina_0, i64 0, i64 118
  %dina_0_load_116 = load i32* %dina_0_addr_116, align 4
  %tmpa_1_114 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_116, i32 %dina_1_load_116)
  %a_union_114 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_114)
  %tmp_114_122 = bitcast i64 %a_union_114 to double
  br label %._crit_edge.115

._crit_edge.116:                                  ; preds = %117, %._crit_edge.115
  %a_elem_load_115 = phi double [ %tmp_115_123, %117 ], [ undef, %._crit_edge.115 ]
  %tmp_117 = icmp ugt i32 %out, 117
  br i1 %tmp_117, label %118, label %._crit_edge.117

; <label>:117                                     ; preds = %._crit_edge.115
  %dina_1_addr_117 = getelementptr [128 x i32]* %dina_1, i64 0, i64 118
  %dina_1_load_117 = load i32* %dina_1_addr_117, align 4
  %dina_0_addr_117 = getelementptr [128 x i32]* %dina_0, i64 0, i64 119
  %dina_0_load_117 = load i32* %dina_0_addr_117, align 4
  %tmpa_1_115 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_117, i32 %dina_1_load_117)
  %a_union_115 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_115)
  %tmp_115_123 = bitcast i64 %a_union_115 to double
  br label %._crit_edge.116

._crit_edge.117:                                  ; preds = %118, %._crit_edge.116
  %a_elem_load_116 = phi double [ %tmp_116_124, %118 ], [ undef, %._crit_edge.116 ]
  %tmp_118 = icmp ugt i32 %out, 118
  br i1 %tmp_118, label %119, label %._crit_edge.118

; <label>:118                                     ; preds = %._crit_edge.116
  %dina_1_addr_118 = getelementptr [128 x i32]* %dina_1, i64 0, i64 119
  %dina_1_load_118 = load i32* %dina_1_addr_118, align 4
  %dina_0_addr_118 = getelementptr [128 x i32]* %dina_0, i64 0, i64 120
  %dina_0_load_118 = load i32* %dina_0_addr_118, align 4
  %tmpa_1_116 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_118, i32 %dina_1_load_118)
  %a_union_116 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_116)
  %tmp_116_124 = bitcast i64 %a_union_116 to double
  br label %._crit_edge.117

._crit_edge.118:                                  ; preds = %119, %._crit_edge.117
  %a_elem_load_117 = phi double [ %tmp_117_125, %119 ], [ undef, %._crit_edge.117 ]
  %tmp_119 = icmp ugt i32 %out, 119
  br i1 %tmp_119, label %120, label %._crit_edge.119

; <label>:119                                     ; preds = %._crit_edge.117
  %dina_1_addr_119 = getelementptr [128 x i32]* %dina_1, i64 0, i64 120
  %dina_1_load_119 = load i32* %dina_1_addr_119, align 4
  %dina_0_addr_119 = getelementptr [128 x i32]* %dina_0, i64 0, i64 121
  %dina_0_load_119 = load i32* %dina_0_addr_119, align 4
  %tmpa_1_117 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_119, i32 %dina_1_load_119)
  %a_union_117 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_117)
  %tmp_117_125 = bitcast i64 %a_union_117 to double
  br label %._crit_edge.118

._crit_edge.119:                                  ; preds = %120, %._crit_edge.118
  %a_elem_load_118 = phi double [ %tmp_118_126, %120 ], [ undef, %._crit_edge.118 ]
  %tmp_120 = icmp ugt i32 %out, 120
  br i1 %tmp_120, label %121, label %._crit_edge.120

; <label>:120                                     ; preds = %._crit_edge.118
  %dina_1_addr_120 = getelementptr [128 x i32]* %dina_1, i64 0, i64 121
  %dina_1_load_120 = load i32* %dina_1_addr_120, align 4
  %dina_0_addr_120 = getelementptr [128 x i32]* %dina_0, i64 0, i64 122
  %dina_0_load_120 = load i32* %dina_0_addr_120, align 4
  %tmpa_1_118 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_120, i32 %dina_1_load_120)
  %a_union_118 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_118)
  %tmp_118_126 = bitcast i64 %a_union_118 to double
  br label %._crit_edge.119

._crit_edge.120:                                  ; preds = %121, %._crit_edge.119
  %a_elem_load_119 = phi double [ %tmp_119_127, %121 ], [ undef, %._crit_edge.119 ]
  %tmp_121 = icmp ugt i32 %out, 121
  br i1 %tmp_121, label %122, label %._crit_edge.121

; <label>:121                                     ; preds = %._crit_edge.119
  %dina_1_addr_121 = getelementptr [128 x i32]* %dina_1, i64 0, i64 122
  %dina_1_load_121 = load i32* %dina_1_addr_121, align 4
  %dina_0_addr_121 = getelementptr [128 x i32]* %dina_0, i64 0, i64 123
  %dina_0_load_121 = load i32* %dina_0_addr_121, align 4
  %tmpa_1_119 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_121, i32 %dina_1_load_121)
  %a_union_119 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_119)
  %tmp_119_127 = bitcast i64 %a_union_119 to double
  br label %._crit_edge.120

._crit_edge.121:                                  ; preds = %122, %._crit_edge.120
  %a_elem_load_120 = phi double [ %tmp_120_128, %122 ], [ undef, %._crit_edge.120 ]
  %tmp_122 = icmp ugt i32 %out, 122
  br i1 %tmp_122, label %123, label %._crit_edge.122

; <label>:122                                     ; preds = %._crit_edge.120
  %dina_1_addr_122 = getelementptr [128 x i32]* %dina_1, i64 0, i64 123
  %dina_1_load_122 = load i32* %dina_1_addr_122, align 4
  %dina_0_addr_122 = getelementptr [128 x i32]* %dina_0, i64 0, i64 124
  %dina_0_load_122 = load i32* %dina_0_addr_122, align 4
  %tmpa_1_120 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_122, i32 %dina_1_load_122)
  %a_union_120 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_120)
  %tmp_120_128 = bitcast i64 %a_union_120 to double
  br label %._crit_edge.121

._crit_edge.122:                                  ; preds = %123, %._crit_edge.121
  %a_elem_load_121 = phi double [ %tmp_121_129, %123 ], [ undef, %._crit_edge.121 ]
  %tmp_134 = icmp ugt i32 %out, 123
  br i1 %tmp_134, label %124, label %._crit_edge.123

; <label>:123                                     ; preds = %._crit_edge.121
  %dina_1_addr_123 = getelementptr [128 x i32]* %dina_1, i64 0, i64 124
  %dina_1_load_123 = load i32* %dina_1_addr_123, align 4
  %dina_0_addr_123 = getelementptr [128 x i32]* %dina_0, i64 0, i64 125
  %dina_0_load_123 = load i32* %dina_0_addr_123, align 4
  %tmpa_1_121 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_123, i32 %dina_1_load_123)
  %a_union_121 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_121)
  %tmp_121_129 = bitcast i64 %a_union_121 to double
  br label %._crit_edge.122

._crit_edge.123:                                  ; preds = %124, %._crit_edge.122
  %a_elem_load_122 = phi double [ %tmp_122_130, %124 ], [ undef, %._crit_edge.122 ]
  %tmp_124 = icmp ugt i32 %out, 124
  br i1 %tmp_124, label %125, label %._crit_edge.124_ifconv

; <label>:124                                     ; preds = %._crit_edge.122
  %dina_1_addr_124 = getelementptr [128 x i32]* %dina_1, i64 0, i64 125
  %dina_1_load_124 = load i32* %dina_1_addr_124, align 4
  %dina_0_addr_124 = getelementptr [128 x i32]* %dina_0, i64 0, i64 126
  %dina_0_load_124 = load i32* %dina_0_addr_124, align 4
  %tmpa_1_122 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_124, i32 %dina_1_load_124)
  %a_union_122 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_122)
  %tmp_122_130 = bitcast i64 %a_union_122 to double
  br label %._crit_edge.123

._crit_edge.124_ifconv:                           ; preds = %125, %._crit_edge.123
  %a_elem_load_123 = phi double [ %tmp_123_135, %125 ], [ undef, %._crit_edge.123 ]
  %tmp_135 = fadd double %gep3220_loc, %elem_mult_load_1
  %elem_mult_load_5 = select i1 %tmp_42, double %tmp_135, double %gep3220_loc
  %tmp_17_1 = fadd double %gep3217_loc, %elem_mult_load_1_1
  %elem_mult_load_5_1 = select i1 %tmp_43, double %tmp_17_1, double %gep3217_loc
  %tmp_17_2 = fadd double %gep3214_loc, %elem_mult_load_1_2
  %elem_mult_load_5_2 = select i1 %tmp_44, double %tmp_17_2, double %gep3214_loc
  %tmp_17_3 = fadd double %gep3211_loc, %elem_mult_load_1_3
  %elem_mult_load_5_3 = select i1 %tmp_45, double %tmp_17_3, double %gep3211_loc
  %tmp_17_4 = fadd double %gep3208_loc, %elem_mult_load_1_4
  %elem_mult_load_5_4 = select i1 %tmp_46, double %tmp_17_4, double %gep3208_loc
  %tmp_17_5 = fadd double %gep3205_loc, %elem_mult_load_1_5
  %elem_mult_load_5_5 = select i1 %tmp_47, double %tmp_17_5, double %gep3205_loc
  %tmp_17_6 = fadd double %gep3202_loc, %elem_mult_load_1_6
  %elem_mult_load_5_6 = select i1 %tmp_48, double %tmp_17_6, double %gep3202_loc
  %tmp_17_7 = fadd double %gep3199_loc, %elem_mult_load_1_7
  %elem_mult_load_5_7 = select i1 %tmp_49, double %tmp_17_7, double %gep3199_loc
  %tmp_17_8 = fadd double %gep3196_loc, %elem_mult_load_1_8
  %elem_mult_load_5_8 = select i1 %tmp_50, double %tmp_17_8, double %gep3196_loc
  %tmp_17_9 = fadd double %gep3193_loc, %elem_mult_load_1_9
  %elem_mult_load_5_9 = select i1 %tmp_123, double %tmp_17_9, double %gep3193_loc
  %tmp_17_s = fadd double %gep3190_loc, %elem_mult_load_1_s
  %elem_mult_load_5_s = select i1 %tmp_125, double %tmp_17_s, double %gep3190_loc
  %tmp_17_10 = fadd double %gep3187_loc, %elem_mult_load_1_10
  %elem_mult_load_5_10 = select i1 %tmp_126, double %tmp_17_10, double %gep3187_loc
  %tmp_17_11 = fadd double %gep3184_loc, %elem_mult_load_1_11
  %elem_mult_load_5_11 = select i1 %tmp_127, double %tmp_17_11, double %gep3184_loc
  %tmp_17_12 = fadd double %gep3181_loc, %elem_mult_load_1_12
  %elem_mult_load_5_12 = select i1 %tmp_128, double %tmp_17_12, double %gep3181_loc
  %tmp_17_13 = fadd double %gep3178_loc, %elem_mult_load_1_13
  %elem_mult_load_5_13 = select i1 %tmp_129, double %tmp_17_13, double %gep3178_loc
  %tmp_17_14 = fadd double %gep3175_loc, %elem_mult_load_1_14
  %elem_mult_load_5_14 = select i1 %tmp_130, double %tmp_17_14, double %gep3175_loc
  %tmp_17_15 = fadd double %gep3172_loc, %elem_mult_load_1_15
  %elem_mult_load_4 = select i1 %tmp_131, double %tmp_17_15, double %gep3172_loc
  %tmp_17_16 = fadd double %gep3169_loc, %elem_mult_load_1_16
  %elem_mult_load_4_1 = select i1 %tmp_132, double %tmp_17_16, double %gep3169_loc
  %tmp_17_17 = fadd double %gep3166_loc, %elem_mult_load_1_17
  %elem_mult_load_4_2 = select i1 %tmp_133, double %tmp_17_17, double %gep3166_loc
  %tmp_17_18 = fadd double %gep3163_loc, %elem_mult_load_1_18
  %elem_mult_load_4_3 = select i1 %tmp_51, double %tmp_17_18, double %gep3163_loc
  %tmp_17_19 = fadd double %gep3160_loc, %elem_mult_load_1_19
  %elem_mult_load_4_4 = select i1 %tmp_52, double %tmp_17_19, double %gep3160_loc
  %tmp_17_20 = fadd double %gep3157_loc, %elem_mult_load_1_20
  %elem_mult_load_4_5 = select i1 %tmp_53, double %tmp_17_20, double %gep3157_loc
  %tmp_17_21 = fadd double %gep3154_loc, %elem_mult_load_1_21
  %elem_mult_load_4_6 = select i1 %tmp_54, double %tmp_17_21, double %gep3154_loc
  %tmp_17_22 = fadd double %gep3151_loc, %elem_mult_load_1_22
  %elem_mult_load_4_7 = select i1 %tmp_55, double %tmp_17_22, double %gep3151_loc
  %tmp_17_23 = fadd double %gep3148_loc, %elem_mult_load_1_23
  %elem_mult_load_4_8 = select i1 %tmp_56, double %tmp_17_23, double %gep3148_loc
  %tmp_17_24 = fadd double %gep3145_loc, %elem_mult_load_1_24
  %elem_mult_load_4_9 = select i1 %tmp_57, double %tmp_17_24, double %gep3145_loc
  %tmp_17_25 = fadd double %gep3142_loc, %elem_mult_load_1_25
  %elem_mult_load_4_s = select i1 %tmp_58, double %tmp_17_25, double %gep3142_loc
  %tmp_17_26_131 = fadd double %gep3139_loc, %elem_mult_load_1_26
  %elem_mult_load_4_10 = select i1 %tmp_59, double %tmp_17_26_131, double %gep3139_loc
  %tmp_17_27 = fadd double %gep3136_loc, %elem_mult_load_1_27
  %elem_mult_load_4_11 = select i1 %tmp_60, double %tmp_17_27, double %gep3136_loc
  %tmp_17_28 = fadd double %gep3133_loc, %elem_mult_load_1_28
  %elem_mult_load_4_12 = select i1 %tmp_61, double %tmp_17_28, double %gep3133_loc
  %tmp_17_29 = fadd double %gep3130_loc, %elem_mult_load_1_29
  %elem_mult_load_4_13 = select i1 %tmp_62, double %tmp_17_29, double %gep3130_loc
  %tmp_17_30 = fadd double %gep3127_loc, %elem_mult_load_1_30
  %elem_mult_load_4_14 = select i1 %icmp2, double %tmp_17_30, double %gep3127_loc
  %tmp_136 = fadd double %elem_mult_load_5, %elem_mult_load_4
  %elem_mult_load_8 = select i1 %tmp_23, double %tmp_136, double %elem_mult_load_5
  %tmp_23_1 = fadd double %elem_mult_load_5_1, %elem_mult_load_4_1
  %elem_mult_load_8_1 = select i1 %tmp_24, double %tmp_23_1, double %elem_mult_load_5_1
  %tmp_23_2 = fadd double %elem_mult_load_5_2, %elem_mult_load_4_2
  %elem_mult_load_8_2 = select i1 %tmp_25, double %tmp_23_2, double %elem_mult_load_5_2
  %tmp_23_3 = fadd double %elem_mult_load_5_3, %elem_mult_load_4_3
  %elem_mult_load_8_3 = select i1 %tmp_26, double %tmp_23_3, double %elem_mult_load_5_3
  %tmp_23_4 = fadd double %elem_mult_load_5_4, %elem_mult_load_4_4
  %elem_mult_load_8_4 = select i1 %tmp_27, double %tmp_23_4, double %elem_mult_load_5_4
  %tmp_23_5 = fadd double %elem_mult_load_5_5, %elem_mult_load_4_5
  %elem_mult_load_8_5 = select i1 %tmp_28, double %tmp_23_5, double %elem_mult_load_5_5
  %tmp_23_6 = fadd double %elem_mult_load_5_6, %elem_mult_load_4_6
  %elem_mult_load_8_6 = select i1 %tmp_29, double %tmp_23_6, double %elem_mult_load_5_6
  %tmp_23_7 = fadd double %elem_mult_load_5_7, %elem_mult_load_4_7
  %elem_mult_load_8_7 = select i1 %tmp_30, double %tmp_23_7, double %elem_mult_load_5_7
  %tmp_23_8 = fadd double %elem_mult_load_5_8, %elem_mult_load_4_8
  %elem_mult_load_7 = select i1 %tmp_34, double %tmp_23_8, double %elem_mult_load_5_8
  %tmp_23_9 = fadd double %elem_mult_load_5_9, %elem_mult_load_4_9
  %elem_mult_load_7_1 = select i1 %tmp_35, double %tmp_23_9, double %elem_mult_load_5_9
  %tmp_23_s = fadd double %elem_mult_load_5_s, %elem_mult_load_4_s
  %elem_mult_load_7_2 = select i1 %tmp_36, double %tmp_23_s, double %elem_mult_load_5_s
  %tmp_23_10 = fadd double %elem_mult_load_5_10, %elem_mult_load_4_10
  %elem_mult_load_7_3 = select i1 %tmp_37, double %tmp_23_10, double %elem_mult_load_5_10
  %tmp_23_11 = fadd double %elem_mult_load_5_11, %elem_mult_load_4_11
  %elem_mult_load_7_4 = select i1 %tmp_38, double %tmp_23_11, double %elem_mult_load_5_11
  %tmp_23_12 = fadd double %elem_mult_load_5_12, %elem_mult_load_4_12
  %elem_mult_load_7_5 = select i1 %tmp_39, double %tmp_23_12, double %elem_mult_load_5_12
  %tmp_23_13 = fadd double %elem_mult_load_5_13, %elem_mult_load_4_13
  %elem_mult_load_7_6 = select i1 %tmp_40, double %tmp_23_13, double %elem_mult_load_5_13
  %tmp_23_14 = fadd double %elem_mult_load_5_14, %elem_mult_load_4_14
  %elem_mult_load_7_7 = select i1 %icmp1, double %tmp_23_14, double %elem_mult_load_5_14
  %tmp_137 = fadd double %elem_mult_load_8, %elem_mult_load_7
  %elem_mult_load_6 = select i1 %tmp_14, double %tmp_137, double %elem_mult_load_8
  %tmp_29_1 = fadd double %elem_mult_load_8_1, %elem_mult_load_7_1
  %elem_mult_load_15_1 = select i1 %tmp_15, double %tmp_29_1, double %elem_mult_load_8_1
  %tmp_29_2 = fadd double %elem_mult_load_8_2, %elem_mult_load_7_2
  %elem_mult_load_15_2 = select i1 %tmp_16, double %tmp_29_2, double %elem_mult_load_8_2
  %tmp_29_3 = fadd double %elem_mult_load_8_3, %elem_mult_load_7_3
  %elem_mult_load_15_3 = select i1 %tmp_17, double %tmp_29_3, double %elem_mult_load_8_3
  %tmp_29_4 = fadd double %elem_mult_load_8_4, %elem_mult_load_7_4
  %elem_mult_load_10 = select i1 %tmp_18, double %tmp_29_4, double %elem_mult_load_8_4
  %tmp_29_5 = fadd double %elem_mult_load_8_5, %elem_mult_load_7_5
  %elem_mult_load_14_1 = select i1 %tmp_19, double %tmp_29_5, double %elem_mult_load_8_5
  %tmp_29_6 = fadd double %elem_mult_load_8_6, %elem_mult_load_7_6
  %elem_mult_load_14_2 = select i1 %tmp_20, double %tmp_29_6, double %elem_mult_load_8_6
  %tmp_29_7 = fadd double %elem_mult_load_8_7, %elem_mult_load_7_7
  %elem_mult_load_14_3 = select i1 %icmp9, double %tmp_29_7, double %elem_mult_load_8_7
  %tmp_138 = fadd double %elem_mult_load_6, %elem_mult_load_10
  %elem_mult_load_9 = select i1 %tmp_8, double %tmp_138, double %elem_mult_load_6
  %tmp_38_1 = fadd double %elem_mult_load_15_1, %elem_mult_load_14_1
  %elem_mult_load_s = select i1 %tmp_10, double %tmp_38_1, double %elem_mult_load_15_1
  %tmp_38_2 = fadd double %elem_mult_load_15_2, %elem_mult_load_14_2
  %elem_mult_load_2 = select i1 %tmp_11, double %tmp_38_2, double %elem_mult_load_15_2
  %tmp_38_3 = fadd double %elem_mult_load_15_3, %elem_mult_load_14_3
  %elem_mult_load_3 = select i1 %icmp6, double %tmp_38_3, double %elem_mult_load_15_3
  %tmp_31_132 = fadd double %elem_mult_load_9, %elem_mult_load_2
  %tmp_32_133 = fadd double %elem_mult_load_s, %elem_mult_load_3
  %dot_prod = fadd double %tmp_31_132, %tmp_32_133
  %tmp_33_134 = bitcast i64 %a_label to double
  %omega = fsub double %dot_prod, %tmp_33_134
  br i1 %tmp1, label %._crit_edge25.0, label %126

; <label>:125                                     ; preds = %._crit_edge.123
  %dina_1_addr_125 = getelementptr [128 x i32]* %dina_1, i64 0, i64 126
  %dina_1_load_125 = load i32* %dina_1_addr_125, align 4
  %dina_0_addr_125 = getelementptr [128 x i32]* %dina_0, i64 0, i64 127
  %dina_0_load_125 = load i32* %dina_0_addr_125, align 4
  %tmpa_1_123 = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %dina_0_load_125, i32 %dina_1_load_125)
  %a_union_123 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpa_1_123)
  %tmp_123_135 = bitcast i64 %a_union_123 to double
  br label %._crit_edge.124_ifconv

._crit_edge25.0:                                  ; preds = %126, %._crit_edge.124_ifconv
  br i1 %icmp, label %127, label %._crit_edge25.1

; <label>:126                                     ; preds = %._crit_edge.124_ifconv
  %tmp_139 = fmul double %omega, %a_elem_load
  %tmpc = bitcast double %tmp_139 to i64
  %c_elem = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc)
  %tmp_143 = trunc i64 %c_elem to i32
  %doutc_1_addr_1 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 1
  store i32 %tmp_143, i32* %doutc_1_addr_1, align 4
  %tmp_141 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem, i32 32, i32 63)
  %doutc_0_addr_1 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 2
  store i32 %tmp_141, i32* %doutc_0_addr_1, align 4
  br label %._crit_edge25.0

._crit_edge25.1:                                  ; preds = %127, %._crit_edge25.0
  br i1 %tmp_9, label %128, label %._crit_edge25.2

; <label>:127                                     ; preds = %._crit_edge25.0
  %tmp_42_1 = fmul double %omega, %a_elem_load_1
  %tmpc_1 = bitcast double %tmp_42_1 to i64
  %c_elem_1 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_1)
  %tmp_144 = trunc i64 %c_elem_1 to i32
  %doutc_1_addr_2 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 2
  store i32 %tmp_144, i32* %doutc_1_addr_2, align 4
  %tmp_48_1 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_1, i32 32, i32 63)
  %doutc_0_addr_2 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 3
  store i32 %tmp_48_1, i32* %doutc_0_addr_2, align 4
  br label %._crit_edge25.1

._crit_edge25.2:                                  ; preds = %128, %._crit_edge25.1
  br i1 %icmp3, label %129, label %._crit_edge25.3

; <label>:128                                     ; preds = %._crit_edge25.1
  %tmp_42_2 = fmul double %omega, %a_elem_load_2
  %tmpc_2 = bitcast double %tmp_42_2 to i64
  %c_elem_2 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_2)
  %tmp_145 = trunc i64 %c_elem_2 to i32
  %doutc_1_addr_3 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 3
  store i32 %tmp_145, i32* %doutc_1_addr_3, align 4
  %tmp_48_2 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_2, i32 32, i32 63)
  %doutc_0_addr_3 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 4
  store i32 %tmp_48_2, i32* %doutc_0_addr_3, align 4
  br label %._crit_edge25.2

._crit_edge25.3:                                  ; preds = %129, %._crit_edge25.2
  br i1 %tmp_8, label %130, label %._crit_edge25.4

; <label>:129                                     ; preds = %._crit_edge25.2
  %tmp_42_3 = fmul double %omega, %a_elem_load_3
  %tmpc_3 = bitcast double %tmp_42_3 to i64
  %c_elem_3 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_3)
  %tmp_146 = trunc i64 %c_elem_3 to i32
  %doutc_1_addr_4 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 4
  store i32 %tmp_146, i32* %doutc_1_addr_4, align 4
  %tmp_48_3 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_3, i32 32, i32 63)
  %doutc_0_addr_4 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 5
  store i32 %tmp_48_3, i32* %doutc_0_addr_4, align 4
  br label %._crit_edge25.3

._crit_edge25.4:                                  ; preds = %130, %._crit_edge25.3
  br i1 %tmp_10, label %131, label %._crit_edge25.5

; <label>:130                                     ; preds = %._crit_edge25.3
  %tmp_42_4 = fmul double %omega, %a_elem_load_4
  %tmpc_4 = bitcast double %tmp_42_4 to i64
  %c_elem_4 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_4)
  %tmp_147 = trunc i64 %c_elem_4 to i32
  %doutc_1_addr_5 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 5
  store i32 %tmp_147, i32* %doutc_1_addr_5, align 4
  %tmp_48_4 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_4, i32 32, i32 63)
  %doutc_0_addr_5 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 6
  store i32 %tmp_48_4, i32* %doutc_0_addr_5, align 4
  br label %._crit_edge25.4

._crit_edge25.5:                                  ; preds = %131, %._crit_edge25.4
  br i1 %tmp_11, label %132, label %._crit_edge25.6

; <label>:131                                     ; preds = %._crit_edge25.4
  %tmp_42_5 = fmul double %omega, %a_elem_load_5
  %tmpc_5 = bitcast double %tmp_42_5 to i64
  %c_elem_5 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_5)
  %tmp_148 = trunc i64 %c_elem_5 to i32
  %doutc_1_addr_6 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 6
  store i32 %tmp_148, i32* %doutc_1_addr_6, align 4
  %tmp_48_5 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_5, i32 32, i32 63)
  %doutc_0_addr_6 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 7
  store i32 %tmp_48_5, i32* %doutc_0_addr_6, align 4
  br label %._crit_edge25.5

._crit_edge25.6:                                  ; preds = %132, %._crit_edge25.5
  br i1 %icmp6, label %133, label %._crit_edge25.7

; <label>:132                                     ; preds = %._crit_edge25.5
  %tmp_42_6 = fmul double %omega, %a_elem_load_6
  %tmpc_6 = bitcast double %tmp_42_6 to i64
  %c_elem_6 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_6)
  %tmp_149 = trunc i64 %c_elem_6 to i32
  %doutc_1_addr_7 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 7
  store i32 %tmp_149, i32* %doutc_1_addr_7, align 4
  %tmp_48_6 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_6, i32 32, i32 63)
  %doutc_0_addr_7 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 8
  store i32 %tmp_48_6, i32* %doutc_0_addr_7, align 4
  br label %._crit_edge25.6

._crit_edge25.7:                                  ; preds = %133, %._crit_edge25.6
  br i1 %tmp_14, label %134, label %._crit_edge25.8

; <label>:133                                     ; preds = %._crit_edge25.6
  %tmp_42_7 = fmul double %omega, %a_elem_load_7
  %tmpc_7 = bitcast double %tmp_42_7 to i64
  %c_elem_7 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_7)
  %tmp_150 = trunc i64 %c_elem_7 to i32
  %doutc_1_addr_8 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 8
  store i32 %tmp_150, i32* %doutc_1_addr_8, align 4
  %tmp_48_7 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_7, i32 32, i32 63)
  %doutc_0_addr_8 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 9
  store i32 %tmp_48_7, i32* %doutc_0_addr_8, align 4
  br label %._crit_edge25.7

._crit_edge25.8:                                  ; preds = %134, %._crit_edge25.7
  br i1 %tmp_15, label %135, label %._crit_edge25.9

; <label>:134                                     ; preds = %._crit_edge25.7
  %tmp_42_8 = fmul double %omega, %a_elem_load_8
  %tmpc_8 = bitcast double %tmp_42_8 to i64
  %c_elem_8 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_8)
  %tmp_151 = trunc i64 %c_elem_8 to i32
  %doutc_1_addr_9 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 9
  store i32 %tmp_151, i32* %doutc_1_addr_9, align 4
  %tmp_48_8 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_8, i32 32, i32 63)
  %doutc_0_addr_9 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 10
  store i32 %tmp_48_8, i32* %doutc_0_addr_9, align 4
  br label %._crit_edge25.8

._crit_edge25.9:                                  ; preds = %135, %._crit_edge25.8
  br i1 %tmp_16, label %136, label %._crit_edge25.10

; <label>:135                                     ; preds = %._crit_edge25.8
  %tmp_42_9 = fmul double %omega, %a_elem_load_9
  %tmpc_9 = bitcast double %tmp_42_9 to i64
  %c_elem_9 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_9)
  %tmp_152 = trunc i64 %c_elem_9 to i32
  %doutc_1_addr_10 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 10
  store i32 %tmp_152, i32* %doutc_1_addr_10, align 4
  %tmp_48_9 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_9, i32 32, i32 63)
  %doutc_0_addr_10 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 11
  store i32 %tmp_48_9, i32* %doutc_0_addr_10, align 4
  br label %._crit_edge25.9

._crit_edge25.10:                                 ; preds = %136, %._crit_edge25.9
  br i1 %tmp_17, label %137, label %._crit_edge25.11

; <label>:136                                     ; preds = %._crit_edge25.9
  %tmp_42_s = fmul double %omega, %a_elem_load_s
  %tmpc_s = bitcast double %tmp_42_s to i64
  %c_elem_s = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_s)
  %tmp_153 = trunc i64 %c_elem_s to i32
  %doutc_1_addr_11 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 11
  store i32 %tmp_153, i32* %doutc_1_addr_11, align 4
  %tmp_48_s = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_s, i32 32, i32 63)
  %doutc_0_addr_11 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 12
  store i32 %tmp_48_s, i32* %doutc_0_addr_11, align 4
  br label %._crit_edge25.10

._crit_edge25.11:                                 ; preds = %137, %._crit_edge25.10
  br i1 %tmp_18, label %138, label %._crit_edge25.12

; <label>:137                                     ; preds = %._crit_edge25.10
  %tmp_42_10 = fmul double %omega, %a_elem_load_10
  %tmpc_10 = bitcast double %tmp_42_10 to i64
  %c_elem_10 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_10)
  %tmp_154 = trunc i64 %c_elem_10 to i32
  %doutc_1_addr_12 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 12
  store i32 %tmp_154, i32* %doutc_1_addr_12, align 4
  %tmp_48_10 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_10, i32 32, i32 63)
  %doutc_0_addr_12 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 13
  store i32 %tmp_48_10, i32* %doutc_0_addr_12, align 4
  br label %._crit_edge25.11

._crit_edge25.12:                                 ; preds = %138, %._crit_edge25.11
  br i1 %tmp_19, label %139, label %._crit_edge25.13

; <label>:138                                     ; preds = %._crit_edge25.11
  %tmp_42_11 = fmul double %omega, %a_elem_load_11
  %tmpc_11 = bitcast double %tmp_42_11 to i64
  %c_elem_11 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_11)
  %tmp_155 = trunc i64 %c_elem_11 to i32
  %doutc_1_addr_13 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 13
  store i32 %tmp_155, i32* %doutc_1_addr_13, align 4
  %tmp_48_11 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_11, i32 32, i32 63)
  %doutc_0_addr_13 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 14
  store i32 %tmp_48_11, i32* %doutc_0_addr_13, align 4
  br label %._crit_edge25.12

._crit_edge25.13:                                 ; preds = %139, %._crit_edge25.12
  br i1 %tmp_20, label %140, label %._crit_edge25.14

; <label>:139                                     ; preds = %._crit_edge25.12
  %tmp_42_12 = fmul double %omega, %a_elem_load_12
  %tmpc_12 = bitcast double %tmp_42_12 to i64
  %c_elem_12 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_12)
  %tmp_156 = trunc i64 %c_elem_12 to i32
  %doutc_1_addr_14 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 14
  store i32 %tmp_156, i32* %doutc_1_addr_14, align 4
  %tmp_48_12 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_12, i32 32, i32 63)
  %doutc_0_addr_14 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 15
  store i32 %tmp_48_12, i32* %doutc_0_addr_14, align 4
  br label %._crit_edge25.13

._crit_edge25.14:                                 ; preds = %140, %._crit_edge25.13
  br i1 %icmp9, label %141, label %._crit_edge25.15

; <label>:140                                     ; preds = %._crit_edge25.13
  %tmp_42_13 = fmul double %omega, %a_elem_load_13
  %tmpc_13 = bitcast double %tmp_42_13 to i64
  %c_elem_13 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_13)
  %tmp_157 = trunc i64 %c_elem_13 to i32
  %doutc_1_addr_15 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 15
  store i32 %tmp_157, i32* %doutc_1_addr_15, align 4
  %tmp_48_13 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_13, i32 32, i32 63)
  %doutc_0_addr_15 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 16
  store i32 %tmp_48_13, i32* %doutc_0_addr_15, align 4
  br label %._crit_edge25.14

._crit_edge25.15:                                 ; preds = %141, %._crit_edge25.14
  br i1 %tmp_23, label %142, label %._crit_edge25.16

; <label>:141                                     ; preds = %._crit_edge25.14
  %tmp_42_14 = fmul double %omega, %a_elem_load_14
  %tmpc_14 = bitcast double %tmp_42_14 to i64
  %c_elem_14 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_14)
  %tmp_158 = trunc i64 %c_elem_14 to i32
  %doutc_1_addr_16 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 16
  store i32 %tmp_158, i32* %doutc_1_addr_16, align 4
  %tmp_48_14 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_14, i32 32, i32 63)
  %doutc_0_addr_16 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 17
  store i32 %tmp_48_14, i32* %doutc_0_addr_16, align 4
  br label %._crit_edge25.15

._crit_edge25.16:                                 ; preds = %142, %._crit_edge25.15
  br i1 %tmp_24, label %143, label %._crit_edge25.17

; <label>:142                                     ; preds = %._crit_edge25.15
  %tmp_42_15 = fmul double %omega, %a_elem_load_15
  %tmpc_15 = bitcast double %tmp_42_15 to i64
  %c_elem_15 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_15)
  %tmp_159 = trunc i64 %c_elem_15 to i32
  %doutc_1_addr_17 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 17
  store i32 %tmp_159, i32* %doutc_1_addr_17, align 4
  %tmp_48_15 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_15, i32 32, i32 63)
  %doutc_0_addr_17 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 18
  store i32 %tmp_48_15, i32* %doutc_0_addr_17, align 4
  br label %._crit_edge25.16

._crit_edge25.17:                                 ; preds = %143, %._crit_edge25.16
  br i1 %tmp_25, label %144, label %._crit_edge25.18

; <label>:143                                     ; preds = %._crit_edge25.16
  %tmp_42_16 = fmul double %omega, %a_elem_load_16
  %tmpc_16 = bitcast double %tmp_42_16 to i64
  %c_elem_16 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_16)
  %tmp_160 = trunc i64 %c_elem_16 to i32
  %doutc_1_addr_18 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 18
  store i32 %tmp_160, i32* %doutc_1_addr_18, align 4
  %tmp_48_16 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_16, i32 32, i32 63)
  %doutc_0_addr_18 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 19
  store i32 %tmp_48_16, i32* %doutc_0_addr_18, align 4
  br label %._crit_edge25.17

._crit_edge25.18:                                 ; preds = %144, %._crit_edge25.17
  br i1 %tmp_26, label %145, label %._crit_edge25.19

; <label>:144                                     ; preds = %._crit_edge25.17
  %tmp_42_17 = fmul double %omega, %a_elem_load_17
  %tmpc_17 = bitcast double %tmp_42_17 to i64
  %c_elem_17 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_17)
  %tmp_161 = trunc i64 %c_elem_17 to i32
  %doutc_1_addr_19 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 19
  store i32 %tmp_161, i32* %doutc_1_addr_19, align 4
  %tmp_48_17 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_17, i32 32, i32 63)
  %doutc_0_addr_19 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 20
  store i32 %tmp_48_17, i32* %doutc_0_addr_19, align 4
  br label %._crit_edge25.18

._crit_edge25.19:                                 ; preds = %145, %._crit_edge25.18
  br i1 %tmp_27, label %146, label %._crit_edge25.20

; <label>:145                                     ; preds = %._crit_edge25.18
  %tmp_42_18 = fmul double %omega, %a_elem_load_18
  %tmpc_18 = bitcast double %tmp_42_18 to i64
  %c_elem_18 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_18)
  %tmp_162 = trunc i64 %c_elem_18 to i32
  %doutc_1_addr_20 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 20
  store i32 %tmp_162, i32* %doutc_1_addr_20, align 4
  %tmp_48_18 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_18, i32 32, i32 63)
  %doutc_0_addr_20 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 21
  store i32 %tmp_48_18, i32* %doutc_0_addr_20, align 4
  br label %._crit_edge25.19

._crit_edge25.20:                                 ; preds = %146, %._crit_edge25.19
  br i1 %tmp_28, label %147, label %._crit_edge25.21

; <label>:146                                     ; preds = %._crit_edge25.19
  %tmp_42_19 = fmul double %omega, %a_elem_load_19
  %tmpc_19 = bitcast double %tmp_42_19 to i64
  %c_elem_19 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_19)
  %tmp_163 = trunc i64 %c_elem_19 to i32
  %doutc_1_addr_21 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 21
  store i32 %tmp_163, i32* %doutc_1_addr_21, align 4
  %tmp_48_19 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_19, i32 32, i32 63)
  %doutc_0_addr_21 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 22
  store i32 %tmp_48_19, i32* %doutc_0_addr_21, align 4
  br label %._crit_edge25.20

._crit_edge25.21:                                 ; preds = %147, %._crit_edge25.20
  br i1 %tmp_29, label %148, label %._crit_edge25.22

; <label>:147                                     ; preds = %._crit_edge25.20
  %tmp_42_20 = fmul double %omega, %a_elem_load_20
  %tmpc_20 = bitcast double %tmp_42_20 to i64
  %c_elem_20 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_20)
  %tmp_164 = trunc i64 %c_elem_20 to i32
  %doutc_1_addr_22 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 22
  store i32 %tmp_164, i32* %doutc_1_addr_22, align 4
  %tmp_48_20 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_20, i32 32, i32 63)
  %doutc_0_addr_22 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 23
  store i32 %tmp_48_20, i32* %doutc_0_addr_22, align 4
  br label %._crit_edge25.21

._crit_edge25.22:                                 ; preds = %148, %._crit_edge25.21
  br i1 %tmp_30, label %149, label %._crit_edge25.23

; <label>:148                                     ; preds = %._crit_edge25.21
  %tmp_42_21 = fmul double %omega, %a_elem_load_21
  %tmpc_21 = bitcast double %tmp_42_21 to i64
  %c_elem_21 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_21)
  %tmp_165 = trunc i64 %c_elem_21 to i32
  %doutc_1_addr_23 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 23
  store i32 %tmp_165, i32* %doutc_1_addr_23, align 4
  %tmp_48_21 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_21, i32 32, i32 63)
  %doutc_0_addr_23 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 24
  store i32 %tmp_48_21, i32* %doutc_0_addr_23, align 4
  br label %._crit_edge25.22

._crit_edge25.23:                                 ; preds = %149, %._crit_edge25.22
  br i1 %tmp_34, label %150, label %._crit_edge25.24

; <label>:149                                     ; preds = %._crit_edge25.22
  %tmp_42_22 = fmul double %omega, %a_elem_load_22
  %tmpc_22 = bitcast double %tmp_42_22 to i64
  %c_elem_22 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_22)
  %tmp_166 = trunc i64 %c_elem_22 to i32
  %doutc_1_addr_24 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 24
  store i32 %tmp_166, i32* %doutc_1_addr_24, align 4
  %tmp_48_22 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_22, i32 32, i32 63)
  %doutc_0_addr_24 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 25
  store i32 %tmp_48_22, i32* %doutc_0_addr_24, align 4
  br label %._crit_edge25.23

._crit_edge25.24:                                 ; preds = %150, %._crit_edge25.23
  br i1 %tmp_35, label %151, label %._crit_edge25.25

; <label>:150                                     ; preds = %._crit_edge25.23
  %tmp_42_23 = fmul double %omega, %a_elem_load_23
  %tmpc_23 = bitcast double %tmp_42_23 to i64
  %c_elem_23 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_23)
  %tmp_167 = trunc i64 %c_elem_23 to i32
  %doutc_1_addr_25 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 25
  store i32 %tmp_167, i32* %doutc_1_addr_25, align 4
  %tmp_48_23 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_23, i32 32, i32 63)
  %doutc_0_addr_25 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 26
  store i32 %tmp_48_23, i32* %doutc_0_addr_25, align 4
  br label %._crit_edge25.24

._crit_edge25.25:                                 ; preds = %151, %._crit_edge25.24
  br i1 %tmp_36, label %152, label %._crit_edge25.26

; <label>:151                                     ; preds = %._crit_edge25.24
  %tmp_42_24 = fmul double %omega, %a_elem_load_24
  %tmpc_24 = bitcast double %tmp_42_24 to i64
  %c_elem_24 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_24)
  %tmp_168 = trunc i64 %c_elem_24 to i32
  %doutc_1_addr_26 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 26
  store i32 %tmp_168, i32* %doutc_1_addr_26, align 4
  %tmp_48_24 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_24, i32 32, i32 63)
  %doutc_0_addr_26 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 27
  store i32 %tmp_48_24, i32* %doutc_0_addr_26, align 4
  br label %._crit_edge25.25

._crit_edge25.26:                                 ; preds = %152, %._crit_edge25.25
  br i1 %tmp_37, label %153, label %._crit_edge25.27

; <label>:152                                     ; preds = %._crit_edge25.25
  %tmp_42_25 = fmul double %omega, %a_elem_load_25
  %tmpc_25 = bitcast double %tmp_42_25 to i64
  %c_elem_25 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_25)
  %tmp_169 = trunc i64 %c_elem_25 to i32
  %doutc_1_addr_27 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 27
  store i32 %tmp_169, i32* %doutc_1_addr_27, align 4
  %tmp_48_25 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_25, i32 32, i32 63)
  %doutc_0_addr_27 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 28
  store i32 %tmp_48_25, i32* %doutc_0_addr_27, align 4
  br label %._crit_edge25.26

._crit_edge25.27:                                 ; preds = %153, %._crit_edge25.26
  br i1 %tmp_38, label %154, label %._crit_edge25.28

; <label>:153                                     ; preds = %._crit_edge25.26
  %tmp_42_26 = fmul double %omega, %a_elem_load_26
  %tmpc_26 = bitcast double %tmp_42_26 to i64
  %c_elem_26 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_26)
  %tmp_170 = trunc i64 %c_elem_26 to i32
  %doutc_1_addr_28 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 28
  store i32 %tmp_170, i32* %doutc_1_addr_28, align 4
  %tmp_48_26 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_26, i32 32, i32 63)
  %doutc_0_addr_28 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 29
  store i32 %tmp_48_26, i32* %doutc_0_addr_28, align 4
  br label %._crit_edge25.27

._crit_edge25.28:                                 ; preds = %154, %._crit_edge25.27
  br i1 %tmp_39, label %155, label %._crit_edge25.29

; <label>:154                                     ; preds = %._crit_edge25.27
  %tmp_42_27 = fmul double %omega, %a_elem_load_27
  %tmpc_27 = bitcast double %tmp_42_27 to i64
  %c_elem_27 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_27)
  %tmp_171 = trunc i64 %c_elem_27 to i32
  %doutc_1_addr_29 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 29
  store i32 %tmp_171, i32* %doutc_1_addr_29, align 4
  %tmp_48_27 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_27, i32 32, i32 63)
  %doutc_0_addr_29 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 30
  store i32 %tmp_48_27, i32* %doutc_0_addr_29, align 4
  br label %._crit_edge25.28

._crit_edge25.29:                                 ; preds = %155, %._crit_edge25.28
  br i1 %tmp_40, label %156, label %._crit_edge25.30

; <label>:155                                     ; preds = %._crit_edge25.28
  %tmp_42_28 = fmul double %omega, %a_elem_load_28
  %tmpc_28 = bitcast double %tmp_42_28 to i64
  %c_elem_28 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_28)
  %tmp_172 = trunc i64 %c_elem_28 to i32
  %doutc_1_addr_30 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 30
  store i32 %tmp_172, i32* %doutc_1_addr_30, align 4
  %tmp_48_28 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_28, i32 32, i32 63)
  %doutc_0_addr_30 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 31
  store i32 %tmp_48_28, i32* %doutc_0_addr_30, align 4
  br label %._crit_edge25.29

._crit_edge25.30:                                 ; preds = %156, %._crit_edge25.29
  br i1 %icmp1, label %157, label %._crit_edge25.31

; <label>:156                                     ; preds = %._crit_edge25.29
  %tmp_42_29 = fmul double %omega, %a_elem_load_29
  %tmpc_29 = bitcast double %tmp_42_29 to i64
  %c_elem_29 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_29)
  %tmp_173 = trunc i64 %c_elem_29 to i32
  %doutc_1_addr_31 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 31
  store i32 %tmp_173, i32* %doutc_1_addr_31, align 4
  %tmp_48_29 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_29, i32 32, i32 63)
  %doutc_0_addr_31 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 32
  store i32 %tmp_48_29, i32* %doutc_0_addr_31, align 4
  br label %._crit_edge25.30

._crit_edge25.31:                                 ; preds = %157, %._crit_edge25.30
  br i1 %tmp_42, label %158, label %._crit_edge25.32

; <label>:157                                     ; preds = %._crit_edge25.30
  %tmp_42_30 = fmul double %omega, %a_elem_load_30
  %tmpc_30 = bitcast double %tmp_42_30 to i64
  %c_elem_30 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_30)
  %tmp_174 = trunc i64 %c_elem_30 to i32
  %doutc_1_addr_32 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 32
  store i32 %tmp_174, i32* %doutc_1_addr_32, align 4
  %tmp_48_30 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_30, i32 32, i32 63)
  %doutc_0_addr_32 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 33
  store i32 %tmp_48_30, i32* %doutc_0_addr_32, align 4
  br label %._crit_edge25.31

._crit_edge25.32:                                 ; preds = %158, %._crit_edge25.31
  br i1 %tmp_43, label %159, label %._crit_edge25.33

; <label>:158                                     ; preds = %._crit_edge25.31
  %tmp_42_31 = fmul double %omega, %a_elem_load_31
  %tmpc_31 = bitcast double %tmp_42_31 to i64
  %c_elem_31 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_31)
  %tmp_175 = trunc i64 %c_elem_31 to i32
  %doutc_1_addr_33 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 33
  store i32 %tmp_175, i32* %doutc_1_addr_33, align 4
  %tmp_48_31 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_31, i32 32, i32 63)
  %doutc_0_addr_33 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 34
  store i32 %tmp_48_31, i32* %doutc_0_addr_33, align 4
  br label %._crit_edge25.32

._crit_edge25.33:                                 ; preds = %159, %._crit_edge25.32
  br i1 %tmp_44, label %160, label %._crit_edge25.34

; <label>:159                                     ; preds = %._crit_edge25.32
  %tmp_42_32 = fmul double %omega, %a_elem_load_32
  %tmpc_32 = bitcast double %tmp_42_32 to i64
  %c_elem_32 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_32)
  %tmp_176 = trunc i64 %c_elem_32 to i32
  %doutc_1_addr_34 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 34
  store i32 %tmp_176, i32* %doutc_1_addr_34, align 4
  %tmp_48_32 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_32, i32 32, i32 63)
  %doutc_0_addr_34 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 35
  store i32 %tmp_48_32, i32* %doutc_0_addr_34, align 4
  br label %._crit_edge25.33

._crit_edge25.34:                                 ; preds = %160, %._crit_edge25.33
  br i1 %tmp_45, label %161, label %._crit_edge25.35

; <label>:160                                     ; preds = %._crit_edge25.33
  %tmp_42_33 = fmul double %omega, %a_elem_load_33
  %tmpc_33 = bitcast double %tmp_42_33 to i64
  %c_elem_33 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_33)
  %tmp_177 = trunc i64 %c_elem_33 to i32
  %doutc_1_addr_35 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 35
  store i32 %tmp_177, i32* %doutc_1_addr_35, align 4
  %tmp_48_33 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_33, i32 32, i32 63)
  %doutc_0_addr_35 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 36
  store i32 %tmp_48_33, i32* %doutc_0_addr_35, align 4
  br label %._crit_edge25.34

._crit_edge25.35:                                 ; preds = %161, %._crit_edge25.34
  br i1 %tmp_46, label %162, label %._crit_edge25.36

; <label>:161                                     ; preds = %._crit_edge25.34
  %tmp_42_34 = fmul double %omega, %a_elem_load_34
  %tmpc_34 = bitcast double %tmp_42_34 to i64
  %c_elem_34 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_34)
  %tmp_178 = trunc i64 %c_elem_34 to i32
  %doutc_1_addr_36 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 36
  store i32 %tmp_178, i32* %doutc_1_addr_36, align 4
  %tmp_48_34 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_34, i32 32, i32 63)
  %doutc_0_addr_36 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 37
  store i32 %tmp_48_34, i32* %doutc_0_addr_36, align 4
  br label %._crit_edge25.35

._crit_edge25.36:                                 ; preds = %162, %._crit_edge25.35
  br i1 %tmp_47, label %163, label %._crit_edge25.37

; <label>:162                                     ; preds = %._crit_edge25.35
  %tmp_42_35 = fmul double %omega, %a_elem_load_35
  %tmpc_35 = bitcast double %tmp_42_35 to i64
  %c_elem_35 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_35)
  %tmp_179 = trunc i64 %c_elem_35 to i32
  %doutc_1_addr_37 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 37
  store i32 %tmp_179, i32* %doutc_1_addr_37, align 4
  %tmp_48_35 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_35, i32 32, i32 63)
  %doutc_0_addr_37 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 38
  store i32 %tmp_48_35, i32* %doutc_0_addr_37, align 4
  br label %._crit_edge25.36

._crit_edge25.37:                                 ; preds = %163, %._crit_edge25.36
  br i1 %tmp_48, label %164, label %._crit_edge25.38

; <label>:163                                     ; preds = %._crit_edge25.36
  %tmp_42_36 = fmul double %omega, %a_elem_load_36
  %tmpc_36 = bitcast double %tmp_42_36 to i64
  %c_elem_36 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_36)
  %tmp_180 = trunc i64 %c_elem_36 to i32
  %doutc_1_addr_38 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 38
  store i32 %tmp_180, i32* %doutc_1_addr_38, align 4
  %tmp_48_36 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_36, i32 32, i32 63)
  %doutc_0_addr_38 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 39
  store i32 %tmp_48_36, i32* %doutc_0_addr_38, align 4
  br label %._crit_edge25.37

._crit_edge25.38:                                 ; preds = %164, %._crit_edge25.37
  br i1 %tmp_49, label %165, label %._crit_edge25.39

; <label>:164                                     ; preds = %._crit_edge25.37
  %tmp_42_37 = fmul double %omega, %a_elem_load_37
  %tmpc_37 = bitcast double %tmp_42_37 to i64
  %c_elem_37 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_37)
  %tmp_181 = trunc i64 %c_elem_37 to i32
  %doutc_1_addr_39 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 39
  store i32 %tmp_181, i32* %doutc_1_addr_39, align 4
  %tmp_48_37 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_37, i32 32, i32 63)
  %doutc_0_addr_39 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 40
  store i32 %tmp_48_37, i32* %doutc_0_addr_39, align 4
  br label %._crit_edge25.38

._crit_edge25.39:                                 ; preds = %165, %._crit_edge25.38
  br i1 %tmp_50, label %166, label %._crit_edge25.40

; <label>:165                                     ; preds = %._crit_edge25.38
  %tmp_42_38 = fmul double %omega, %a_elem_load_38
  %tmpc_38 = bitcast double %tmp_42_38 to i64
  %c_elem_38 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_38)
  %tmp_182 = trunc i64 %c_elem_38 to i32
  %doutc_1_addr_40 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 40
  store i32 %tmp_182, i32* %doutc_1_addr_40, align 4
  %tmp_48_38 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_38, i32 32, i32 63)
  %doutc_0_addr_40 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 41
  store i32 %tmp_48_38, i32* %doutc_0_addr_40, align 4
  br label %._crit_edge25.39

._crit_edge25.40:                                 ; preds = %166, %._crit_edge25.39
  br i1 %tmp_123, label %167, label %._crit_edge25.41

; <label>:166                                     ; preds = %._crit_edge25.39
  %tmp_42_39 = fmul double %omega, %a_elem_load_39
  %tmpc_39 = bitcast double %tmp_42_39 to i64
  %c_elem_39 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_39)
  %tmp_183 = trunc i64 %c_elem_39 to i32
  %doutc_1_addr_41 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 41
  store i32 %tmp_183, i32* %doutc_1_addr_41, align 4
  %tmp_48_39 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_39, i32 32, i32 63)
  %doutc_0_addr_41 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 42
  store i32 %tmp_48_39, i32* %doutc_0_addr_41, align 4
  br label %._crit_edge25.40

._crit_edge25.41:                                 ; preds = %167, %._crit_edge25.40
  br i1 %tmp_125, label %168, label %._crit_edge25.42

; <label>:167                                     ; preds = %._crit_edge25.40
  %tmp_42_40 = fmul double %omega, %a_elem_load_40
  %tmpc_40 = bitcast double %tmp_42_40 to i64
  %c_elem_40 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_40)
  %tmp_184 = trunc i64 %c_elem_40 to i32
  %doutc_1_addr_42 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 42
  store i32 %tmp_184, i32* %doutc_1_addr_42, align 4
  %tmp_48_40 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_40, i32 32, i32 63)
  %doutc_0_addr_42 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 43
  store i32 %tmp_48_40, i32* %doutc_0_addr_42, align 4
  br label %._crit_edge25.41

._crit_edge25.42:                                 ; preds = %168, %._crit_edge25.41
  br i1 %tmp_126, label %169, label %._crit_edge25.43

; <label>:168                                     ; preds = %._crit_edge25.41
  %tmp_42_41 = fmul double %omega, %a_elem_load_41
  %tmpc_41 = bitcast double %tmp_42_41 to i64
  %c_elem_41 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_41)
  %tmp_185 = trunc i64 %c_elem_41 to i32
  %doutc_1_addr_43 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 43
  store i32 %tmp_185, i32* %doutc_1_addr_43, align 4
  %tmp_48_41 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_41, i32 32, i32 63)
  %doutc_0_addr_43 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 44
  store i32 %tmp_48_41, i32* %doutc_0_addr_43, align 4
  br label %._crit_edge25.42

._crit_edge25.43:                                 ; preds = %169, %._crit_edge25.42
  br i1 %tmp_127, label %170, label %._crit_edge25.44

; <label>:169                                     ; preds = %._crit_edge25.42
  %tmp_42_42 = fmul double %omega, %a_elem_load_42
  %tmpc_42 = bitcast double %tmp_42_42 to i64
  %c_elem_42 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_42)
  %tmp_186 = trunc i64 %c_elem_42 to i32
  %doutc_1_addr_44 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 44
  store i32 %tmp_186, i32* %doutc_1_addr_44, align 4
  %tmp_48_42 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_42, i32 32, i32 63)
  %doutc_0_addr_44 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 45
  store i32 %tmp_48_42, i32* %doutc_0_addr_44, align 4
  br label %._crit_edge25.43

._crit_edge25.44:                                 ; preds = %170, %._crit_edge25.43
  br i1 %tmp_128, label %171, label %._crit_edge25.45

; <label>:170                                     ; preds = %._crit_edge25.43
  %tmp_42_43 = fmul double %omega, %a_elem_load_43
  %tmpc_43 = bitcast double %tmp_42_43 to i64
  %c_elem_43 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_43)
  %tmp_187 = trunc i64 %c_elem_43 to i32
  %doutc_1_addr_45 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 45
  store i32 %tmp_187, i32* %doutc_1_addr_45, align 4
  %tmp_48_43 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_43, i32 32, i32 63)
  %doutc_0_addr_45 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 46
  store i32 %tmp_48_43, i32* %doutc_0_addr_45, align 4
  br label %._crit_edge25.44

._crit_edge25.45:                                 ; preds = %171, %._crit_edge25.44
  br i1 %tmp_129, label %172, label %._crit_edge25.46

; <label>:171                                     ; preds = %._crit_edge25.44
  %tmp_42_44 = fmul double %omega, %a_elem_load_44
  %tmpc_44 = bitcast double %tmp_42_44 to i64
  %c_elem_44 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_44)
  %tmp_188 = trunc i64 %c_elem_44 to i32
  %doutc_1_addr_46 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 46
  store i32 %tmp_188, i32* %doutc_1_addr_46, align 4
  %tmp_48_44 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_44, i32 32, i32 63)
  %doutc_0_addr_46 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 47
  store i32 %tmp_48_44, i32* %doutc_0_addr_46, align 4
  br label %._crit_edge25.45

._crit_edge25.46:                                 ; preds = %172, %._crit_edge25.45
  br i1 %tmp_130, label %173, label %._crit_edge25.47

; <label>:172                                     ; preds = %._crit_edge25.45
  %tmp_42_45 = fmul double %omega, %a_elem_load_45
  %tmpc_45 = bitcast double %tmp_42_45 to i64
  %c_elem_45 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_45)
  %tmp_189 = trunc i64 %c_elem_45 to i32
  %doutc_1_addr_47 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 47
  store i32 %tmp_189, i32* %doutc_1_addr_47, align 4
  %tmp_48_45 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_45, i32 32, i32 63)
  %doutc_0_addr_47 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 48
  store i32 %tmp_48_45, i32* %doutc_0_addr_47, align 4
  br label %._crit_edge25.46

._crit_edge25.47:                                 ; preds = %173, %._crit_edge25.46
  br i1 %tmp_131, label %174, label %._crit_edge25.48

; <label>:173                                     ; preds = %._crit_edge25.46
  %tmp_42_46 = fmul double %omega, %a_elem_load_46
  %tmpc_46 = bitcast double %tmp_42_46 to i64
  %c_elem_46 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_46)
  %tmp_190 = trunc i64 %c_elem_46 to i32
  %doutc_1_addr_48 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 48
  store i32 %tmp_190, i32* %doutc_1_addr_48, align 4
  %tmp_48_46 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_46, i32 32, i32 63)
  %doutc_0_addr_48 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 49
  store i32 %tmp_48_46, i32* %doutc_0_addr_48, align 4
  br label %._crit_edge25.47

._crit_edge25.48:                                 ; preds = %174, %._crit_edge25.47
  br i1 %tmp_132, label %175, label %._crit_edge25.49

; <label>:174                                     ; preds = %._crit_edge25.47
  %tmp_42_47 = fmul double %omega, %a_elem_load_47
  %tmpc_47 = bitcast double %tmp_42_47 to i64
  %c_elem_47 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_47)
  %tmp_191 = trunc i64 %c_elem_47 to i32
  %doutc_1_addr_49 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 49
  store i32 %tmp_191, i32* %doutc_1_addr_49, align 4
  %tmp_48_47 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_47, i32 32, i32 63)
  %doutc_0_addr_49 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 50
  store i32 %tmp_48_47, i32* %doutc_0_addr_49, align 4
  br label %._crit_edge25.48

._crit_edge25.49:                                 ; preds = %175, %._crit_edge25.48
  br i1 %tmp_133, label %176, label %._crit_edge25.50

; <label>:175                                     ; preds = %._crit_edge25.48
  %tmp_42_48 = fmul double %omega, %a_elem_load_48
  %tmpc_48 = bitcast double %tmp_42_48 to i64
  %c_elem_48 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_48)
  %tmp_192 = trunc i64 %c_elem_48 to i32
  %doutc_1_addr_50 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 50
  store i32 %tmp_192, i32* %doutc_1_addr_50, align 4
  %tmp_48_48 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_48, i32 32, i32 63)
  %doutc_0_addr_50 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 51
  store i32 %tmp_48_48, i32* %doutc_0_addr_50, align 4
  br label %._crit_edge25.49

._crit_edge25.50:                                 ; preds = %176, %._crit_edge25.49
  br i1 %tmp_51, label %177, label %._crit_edge25.51

; <label>:176                                     ; preds = %._crit_edge25.49
  %tmp_42_49 = fmul double %omega, %a_elem_load_49
  %tmpc_49 = bitcast double %tmp_42_49 to i64
  %c_elem_49 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_49)
  %tmp_193 = trunc i64 %c_elem_49 to i32
  %doutc_1_addr_51 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 51
  store i32 %tmp_193, i32* %doutc_1_addr_51, align 4
  %tmp_48_49 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_49, i32 32, i32 63)
  %doutc_0_addr_51 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 52
  store i32 %tmp_48_49, i32* %doutc_0_addr_51, align 4
  br label %._crit_edge25.50

._crit_edge25.51:                                 ; preds = %177, %._crit_edge25.50
  br i1 %tmp_52, label %178, label %._crit_edge25.52

; <label>:177                                     ; preds = %._crit_edge25.50
  %tmp_42_50_136 = fmul double %omega, %a_elem_load_50
  %tmpc_50 = bitcast double %tmp_42_50_136 to i64
  %c_elem_50 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_50)
  %tmp_194 = trunc i64 %c_elem_50 to i32
  %doutc_1_addr_52 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 52
  store i32 %tmp_194, i32* %doutc_1_addr_52, align 4
  %tmp_48_50 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_50, i32 32, i32 63)
  %doutc_0_addr_52 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 53
  store i32 %tmp_48_50, i32* %doutc_0_addr_52, align 4
  br label %._crit_edge25.51

._crit_edge25.52:                                 ; preds = %178, %._crit_edge25.51
  br i1 %tmp_53, label %179, label %._crit_edge25.53

; <label>:178                                     ; preds = %._crit_edge25.51
  %tmp_42_51 = fmul double %omega, %a_elem_load_51
  %tmpc_51 = bitcast double %tmp_42_51 to i64
  %c_elem_51 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_51)
  %tmp_195 = trunc i64 %c_elem_51 to i32
  %doutc_1_addr_53 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 53
  store i32 %tmp_195, i32* %doutc_1_addr_53, align 4
  %tmp_48_51 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_51, i32 32, i32 63)
  %doutc_0_addr_53 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 54
  store i32 %tmp_48_51, i32* %doutc_0_addr_53, align 4
  br label %._crit_edge25.52

._crit_edge25.53:                                 ; preds = %179, %._crit_edge25.52
  br i1 %tmp_54, label %180, label %._crit_edge25.54

; <label>:179                                     ; preds = %._crit_edge25.52
  %tmp_42_52 = fmul double %omega, %a_elem_load_52
  %tmpc_52 = bitcast double %tmp_42_52 to i64
  %c_elem_52 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_52)
  %tmp_196 = trunc i64 %c_elem_52 to i32
  %doutc_1_addr_54 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 54
  store i32 %tmp_196, i32* %doutc_1_addr_54, align 4
  %tmp_48_52 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_52, i32 32, i32 63)
  %doutc_0_addr_54 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 55
  store i32 %tmp_48_52, i32* %doutc_0_addr_54, align 4
  br label %._crit_edge25.53

._crit_edge25.54:                                 ; preds = %180, %._crit_edge25.53
  br i1 %tmp_55, label %181, label %._crit_edge25.55

; <label>:180                                     ; preds = %._crit_edge25.53
  %tmp_42_53 = fmul double %omega, %a_elem_load_53
  %tmpc_53 = bitcast double %tmp_42_53 to i64
  %c_elem_53 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_53)
  %tmp_197 = trunc i64 %c_elem_53 to i32
  %doutc_1_addr_55 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 55
  store i32 %tmp_197, i32* %doutc_1_addr_55, align 4
  %tmp_48_53 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_53, i32 32, i32 63)
  %doutc_0_addr_55 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 56
  store i32 %tmp_48_53, i32* %doutc_0_addr_55, align 4
  br label %._crit_edge25.54

._crit_edge25.55:                                 ; preds = %181, %._crit_edge25.54
  br i1 %tmp_56, label %182, label %._crit_edge25.56

; <label>:181                                     ; preds = %._crit_edge25.54
  %tmp_42_54 = fmul double %omega, %a_elem_load_54
  %tmpc_54 = bitcast double %tmp_42_54 to i64
  %c_elem_54 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_54)
  %tmp_198 = trunc i64 %c_elem_54 to i32
  %doutc_1_addr_56 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 56
  store i32 %tmp_198, i32* %doutc_1_addr_56, align 4
  %tmp_48_54 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_54, i32 32, i32 63)
  %doutc_0_addr_56 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 57
  store i32 %tmp_48_54, i32* %doutc_0_addr_56, align 4
  br label %._crit_edge25.55

._crit_edge25.56:                                 ; preds = %182, %._crit_edge25.55
  br i1 %tmp_57, label %183, label %._crit_edge25.57

; <label>:182                                     ; preds = %._crit_edge25.55
  %tmp_42_55 = fmul double %omega, %a_elem_load_55
  %tmpc_55 = bitcast double %tmp_42_55 to i64
  %c_elem_55 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_55)
  %tmp_199 = trunc i64 %c_elem_55 to i32
  %doutc_1_addr_57 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 57
  store i32 %tmp_199, i32* %doutc_1_addr_57, align 4
  %tmp_48_55 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_55, i32 32, i32 63)
  %doutc_0_addr_57 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 58
  store i32 %tmp_48_55, i32* %doutc_0_addr_57, align 4
  br label %._crit_edge25.56

._crit_edge25.57:                                 ; preds = %183, %._crit_edge25.56
  br i1 %tmp_58, label %184, label %._crit_edge25.58

; <label>:183                                     ; preds = %._crit_edge25.56
  %tmp_42_56 = fmul double %omega, %a_elem_load_56
  %tmpc_56 = bitcast double %tmp_42_56 to i64
  %c_elem_56 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_56)
  %tmp_200 = trunc i64 %c_elem_56 to i32
  %doutc_1_addr_58 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 58
  store i32 %tmp_200, i32* %doutc_1_addr_58, align 4
  %tmp_48_56_137 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_56, i32 32, i32 63)
  %doutc_0_addr_58 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 59
  store i32 %tmp_48_56_137, i32* %doutc_0_addr_58, align 4
  br label %._crit_edge25.57

._crit_edge25.58:                                 ; preds = %184, %._crit_edge25.57
  br i1 %tmp_59, label %185, label %._crit_edge25.59

; <label>:184                                     ; preds = %._crit_edge25.57
  %tmp_42_57 = fmul double %omega, %a_elem_load_57
  %tmpc_57 = bitcast double %tmp_42_57 to i64
  %c_elem_57 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_57)
  %tmp_201 = trunc i64 %c_elem_57 to i32
  %doutc_1_addr_59 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 59
  store i32 %tmp_201, i32* %doutc_1_addr_59, align 4
  %tmp_48_57 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_57, i32 32, i32 63)
  %doutc_0_addr_59 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 60
  store i32 %tmp_48_57, i32* %doutc_0_addr_59, align 4
  br label %._crit_edge25.58

._crit_edge25.59:                                 ; preds = %185, %._crit_edge25.58
  br i1 %tmp_60, label %186, label %._crit_edge25.60

; <label>:185                                     ; preds = %._crit_edge25.58
  %tmp_42_58 = fmul double %omega, %a_elem_load_58
  %tmpc_58 = bitcast double %tmp_42_58 to i64
  %c_elem_58 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_58)
  %tmp_202 = trunc i64 %c_elem_58 to i32
  %doutc_1_addr_60 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 60
  store i32 %tmp_202, i32* %doutc_1_addr_60, align 4
  %tmp_48_58 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_58, i32 32, i32 63)
  %doutc_0_addr_60 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 61
  store i32 %tmp_48_58, i32* %doutc_0_addr_60, align 4
  br label %._crit_edge25.59

._crit_edge25.60:                                 ; preds = %186, %._crit_edge25.59
  br i1 %tmp_61, label %187, label %._crit_edge25.61

; <label>:186                                     ; preds = %._crit_edge25.59
  %tmp_42_59 = fmul double %omega, %a_elem_load_59
  %tmpc_59 = bitcast double %tmp_42_59 to i64
  %c_elem_59 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_59)
  %tmp_203 = trunc i64 %c_elem_59 to i32
  %doutc_1_addr_61 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 61
  store i32 %tmp_203, i32* %doutc_1_addr_61, align 4
  %tmp_48_59 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_59, i32 32, i32 63)
  %doutc_0_addr_61 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 62
  store i32 %tmp_48_59, i32* %doutc_0_addr_61, align 4
  br label %._crit_edge25.60

._crit_edge25.61:                                 ; preds = %187, %._crit_edge25.60
  br i1 %tmp_62, label %188, label %._crit_edge25.62

; <label>:187                                     ; preds = %._crit_edge25.60
  %tmp_42_60 = fmul double %omega, %a_elem_load_60
  %tmpc_60 = bitcast double %tmp_42_60 to i64
  %c_elem_60 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_60)
  %tmp_204 = trunc i64 %c_elem_60 to i32
  %doutc_1_addr_62 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 62
  store i32 %tmp_204, i32* %doutc_1_addr_62, align 4
  %tmp_48_60 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_60, i32 32, i32 63)
  %doutc_0_addr_62 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 63
  store i32 %tmp_48_60, i32* %doutc_0_addr_62, align 4
  br label %._crit_edge25.61

._crit_edge25.62:                                 ; preds = %188, %._crit_edge25.61
  br i1 %icmp2, label %189, label %._crit_edge25.63

; <label>:188                                     ; preds = %._crit_edge25.61
  %tmp_42_61 = fmul double %omega, %a_elem_load_61
  %tmpc_61 = bitcast double %tmp_42_61 to i64
  %c_elem_61 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_61)
  %tmp_205 = trunc i64 %c_elem_61 to i32
  %doutc_1_addr_63 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 63
  store i32 %tmp_205, i32* %doutc_1_addr_63, align 4
  %tmp_48_61 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_61, i32 32, i32 63)
  %doutc_0_addr_63 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 64
  store i32 %tmp_48_61, i32* %doutc_0_addr_63, align 4
  br label %._crit_edge25.62

._crit_edge25.63:                                 ; preds = %189, %._crit_edge25.62
  br i1 %tmp_64, label %190, label %._crit_edge25.64

; <label>:189                                     ; preds = %._crit_edge25.62
  %tmp_42_62 = fmul double %omega, %a_elem_load_62
  %tmpc_62 = bitcast double %tmp_42_62 to i64
  %c_elem_62 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_62)
  %tmp_206 = trunc i64 %c_elem_62 to i32
  %doutc_1_addr_64 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 64
  store i32 %tmp_206, i32* %doutc_1_addr_64, align 4
  %tmp_48_62 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_62, i32 32, i32 63)
  %doutc_0_addr_64 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 65
  store i32 %tmp_48_62, i32* %doutc_0_addr_64, align 4
  br label %._crit_edge25.63

._crit_edge25.64:                                 ; preds = %190, %._crit_edge25.63
  br i1 %tmp_65, label %191, label %._crit_edge25.65

; <label>:190                                     ; preds = %._crit_edge25.63
  %tmp_42_63 = fmul double %omega, %a_elem_load_63
  %tmpc_63 = bitcast double %tmp_42_63 to i64
  %c_elem_63 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_63)
  %tmp_207 = trunc i64 %c_elem_63 to i32
  %doutc_1_addr_65 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 65
  store i32 %tmp_207, i32* %doutc_1_addr_65, align 4
  %tmp_48_63 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_63, i32 32, i32 63)
  %doutc_0_addr_65 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 66
  store i32 %tmp_48_63, i32* %doutc_0_addr_65, align 4
  br label %._crit_edge25.64

._crit_edge25.65:                                 ; preds = %191, %._crit_edge25.64
  br i1 %tmp_66, label %192, label %._crit_edge25.66

; <label>:191                                     ; preds = %._crit_edge25.64
  %tmp_42_64 = fmul double %omega, %a_elem_load_64
  %tmpc_64 = bitcast double %tmp_42_64 to i64
  %c_elem_64 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_64)
  %tmp_208 = trunc i64 %c_elem_64 to i32
  %doutc_1_addr_66 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 66
  store i32 %tmp_208, i32* %doutc_1_addr_66, align 4
  %tmp_48_64 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_64, i32 32, i32 63)
  %doutc_0_addr_66 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 67
  store i32 %tmp_48_64, i32* %doutc_0_addr_66, align 4
  br label %._crit_edge25.65

._crit_edge25.66:                                 ; preds = %192, %._crit_edge25.65
  br i1 %tmp_67, label %193, label %._crit_edge25.67

; <label>:192                                     ; preds = %._crit_edge25.65
  %tmp_42_65 = fmul double %omega, %a_elem_load_65
  %tmpc_65 = bitcast double %tmp_42_65 to i64
  %c_elem_65 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_65)
  %tmp_209 = trunc i64 %c_elem_65 to i32
  %doutc_1_addr_67 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 67
  store i32 %tmp_209, i32* %doutc_1_addr_67, align 4
  %tmp_48_65 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_65, i32 32, i32 63)
  %doutc_0_addr_67 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 68
  store i32 %tmp_48_65, i32* %doutc_0_addr_67, align 4
  br label %._crit_edge25.66

._crit_edge25.67:                                 ; preds = %193, %._crit_edge25.66
  br i1 %tmp_68, label %194, label %._crit_edge25.68

; <label>:193                                     ; preds = %._crit_edge25.66
  %tmp_42_66 = fmul double %omega, %a_elem_load_66
  %tmpc_66 = bitcast double %tmp_42_66 to i64
  %c_elem_66 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_66)
  %tmp_210 = trunc i64 %c_elem_66 to i32
  %doutc_1_addr_68 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 68
  store i32 %tmp_210, i32* %doutc_1_addr_68, align 4
  %tmp_48_66 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_66, i32 32, i32 63)
  %doutc_0_addr_68 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 69
  store i32 %tmp_48_66, i32* %doutc_0_addr_68, align 4
  br label %._crit_edge25.67

._crit_edge25.68:                                 ; preds = %194, %._crit_edge25.67
  br i1 %tmp_69, label %195, label %._crit_edge25.69

; <label>:194                                     ; preds = %._crit_edge25.67
  %tmp_42_67 = fmul double %omega, %a_elem_load_67
  %tmpc_67 = bitcast double %tmp_42_67 to i64
  %c_elem_67 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_67)
  %tmp_211 = trunc i64 %c_elem_67 to i32
  %doutc_1_addr_69 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 69
  store i32 %tmp_211, i32* %doutc_1_addr_69, align 4
  %tmp_48_67 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_67, i32 32, i32 63)
  %doutc_0_addr_69 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 70
  store i32 %tmp_48_67, i32* %doutc_0_addr_69, align 4
  br label %._crit_edge25.68

._crit_edge25.69:                                 ; preds = %195, %._crit_edge25.68
  br i1 %tmp_70, label %196, label %._crit_edge25.70

; <label>:195                                     ; preds = %._crit_edge25.68
  %tmp_42_68 = fmul double %omega, %a_elem_load_68
  %tmpc_68 = bitcast double %tmp_42_68 to i64
  %c_elem_68 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_68)
  %tmp_212 = trunc i64 %c_elem_68 to i32
  %doutc_1_addr_70 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 70
  store i32 %tmp_212, i32* %doutc_1_addr_70, align 4
  %tmp_48_68 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_68, i32 32, i32 63)
  %doutc_0_addr_70 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 71
  store i32 %tmp_48_68, i32* %doutc_0_addr_70, align 4
  br label %._crit_edge25.69

._crit_edge25.70:                                 ; preds = %196, %._crit_edge25.69
  br i1 %tmp_71, label %197, label %._crit_edge25.71

; <label>:196                                     ; preds = %._crit_edge25.69
  %tmp_42_69 = fmul double %omega, %a_elem_load_69
  %tmpc_69 = bitcast double %tmp_42_69 to i64
  %c_elem_69 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_69)
  %tmp_213 = trunc i64 %c_elem_69 to i32
  %doutc_1_addr_71 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 71
  store i32 %tmp_213, i32* %doutc_1_addr_71, align 4
  %tmp_48_69 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_69, i32 32, i32 63)
  %doutc_0_addr_71 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 72
  store i32 %tmp_48_69, i32* %doutc_0_addr_71, align 4
  br label %._crit_edge25.70

._crit_edge25.71:                                 ; preds = %197, %._crit_edge25.70
  br i1 %tmp_72, label %198, label %._crit_edge25.72

; <label>:197                                     ; preds = %._crit_edge25.70
  %tmp_42_70 = fmul double %omega, %a_elem_load_70
  %tmpc_70 = bitcast double %tmp_42_70 to i64
  %c_elem_70 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_70)
  %tmp_214 = trunc i64 %c_elem_70 to i32
  %doutc_1_addr_72 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 72
  store i32 %tmp_214, i32* %doutc_1_addr_72, align 4
  %tmp_48_70 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_70, i32 32, i32 63)
  %doutc_0_addr_72 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 73
  store i32 %tmp_48_70, i32* %doutc_0_addr_72, align 4
  br label %._crit_edge25.71

._crit_edge25.72:                                 ; preds = %198, %._crit_edge25.71
  br i1 %tmp_73, label %199, label %._crit_edge25.73

; <label>:198                                     ; preds = %._crit_edge25.71
  %tmp_42_71 = fmul double %omega, %a_elem_load_71
  %tmpc_71 = bitcast double %tmp_42_71 to i64
  %c_elem_71 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_71)
  %tmp_215 = trunc i64 %c_elem_71 to i32
  %doutc_1_addr_73 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 73
  store i32 %tmp_215, i32* %doutc_1_addr_73, align 4
  %tmp_48_71 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_71, i32 32, i32 63)
  %doutc_0_addr_73 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 74
  store i32 %tmp_48_71, i32* %doutc_0_addr_73, align 4
  br label %._crit_edge25.72

._crit_edge25.73:                                 ; preds = %199, %._crit_edge25.72
  br i1 %tmp_74, label %200, label %._crit_edge25.74

; <label>:199                                     ; preds = %._crit_edge25.72
  %tmp_42_72 = fmul double %omega, %a_elem_load_72
  %tmpc_72 = bitcast double %tmp_42_72 to i64
  %c_elem_72 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_72)
  %tmp_216 = trunc i64 %c_elem_72 to i32
  %doutc_1_addr_74 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 74
  store i32 %tmp_216, i32* %doutc_1_addr_74, align 4
  %tmp_48_72 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_72, i32 32, i32 63)
  %doutc_0_addr_74 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 75
  store i32 %tmp_48_72, i32* %doutc_0_addr_74, align 4
  br label %._crit_edge25.73

._crit_edge25.74:                                 ; preds = %200, %._crit_edge25.73
  br i1 %tmp_75, label %201, label %._crit_edge25.75

; <label>:200                                     ; preds = %._crit_edge25.73
  %tmp_42_73 = fmul double %omega, %a_elem_load_73
  %tmpc_73 = bitcast double %tmp_42_73 to i64
  %c_elem_73 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_73)
  %tmp_217 = trunc i64 %c_elem_73 to i32
  %doutc_1_addr_75 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 75
  store i32 %tmp_217, i32* %doutc_1_addr_75, align 4
  %tmp_48_73 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_73, i32 32, i32 63)
  %doutc_0_addr_75 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 76
  store i32 %tmp_48_73, i32* %doutc_0_addr_75, align 4
  br label %._crit_edge25.74

._crit_edge25.75:                                 ; preds = %201, %._crit_edge25.74
  br i1 %tmp_76, label %202, label %._crit_edge25.76

; <label>:201                                     ; preds = %._crit_edge25.74
  %tmp_42_74 = fmul double %omega, %a_elem_load_74
  %tmpc_74 = bitcast double %tmp_42_74 to i64
  %c_elem_74 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_74)
  %tmp_218 = trunc i64 %c_elem_74 to i32
  %doutc_1_addr_76 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 76
  store i32 %tmp_218, i32* %doutc_1_addr_76, align 4
  %tmp_48_74 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_74, i32 32, i32 63)
  %doutc_0_addr_76 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 77
  store i32 %tmp_48_74, i32* %doutc_0_addr_76, align 4
  br label %._crit_edge25.75

._crit_edge25.76:                                 ; preds = %202, %._crit_edge25.75
  br i1 %tmp_77, label %203, label %._crit_edge25.77

; <label>:202                                     ; preds = %._crit_edge25.75
  %tmp_42_75 = fmul double %omega, %a_elem_load_75
  %tmpc_75 = bitcast double %tmp_42_75 to i64
  %c_elem_75 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_75)
  %tmp_219 = trunc i64 %c_elem_75 to i32
  %doutc_1_addr_77 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 77
  store i32 %tmp_219, i32* %doutc_1_addr_77, align 4
  %tmp_48_75 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_75, i32 32, i32 63)
  %doutc_0_addr_77 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 78
  store i32 %tmp_48_75, i32* %doutc_0_addr_77, align 4
  br label %._crit_edge25.76

._crit_edge25.77:                                 ; preds = %203, %._crit_edge25.76
  br i1 %tmp_78, label %204, label %._crit_edge25.78

; <label>:203                                     ; preds = %._crit_edge25.76
  %tmp_42_76 = fmul double %omega, %a_elem_load_76
  %tmpc_76 = bitcast double %tmp_42_76 to i64
  %c_elem_76 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_76)
  %tmp_220 = trunc i64 %c_elem_76 to i32
  %doutc_1_addr_78 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 78
  store i32 %tmp_220, i32* %doutc_1_addr_78, align 4
  %tmp_48_76 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_76, i32 32, i32 63)
  %doutc_0_addr_78 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 79
  store i32 %tmp_48_76, i32* %doutc_0_addr_78, align 4
  br label %._crit_edge25.77

._crit_edge25.78:                                 ; preds = %204, %._crit_edge25.77
  br i1 %tmp_79, label %205, label %._crit_edge25.79

; <label>:204                                     ; preds = %._crit_edge25.77
  %tmp_42_77 = fmul double %omega, %a_elem_load_77
  %tmpc_77 = bitcast double %tmp_42_77 to i64
  %c_elem_77 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_77)
  %tmp_221 = trunc i64 %c_elem_77 to i32
  %doutc_1_addr_79 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 79
  store i32 %tmp_221, i32* %doutc_1_addr_79, align 4
  %tmp_48_77 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_77, i32 32, i32 63)
  %doutc_0_addr_79 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 80
  store i32 %tmp_48_77, i32* %doutc_0_addr_79, align 4
  br label %._crit_edge25.78

._crit_edge25.79:                                 ; preds = %205, %._crit_edge25.78
  br i1 %tmp_80, label %206, label %._crit_edge25.80

; <label>:205                                     ; preds = %._crit_edge25.78
  %tmp_42_78 = fmul double %omega, %a_elem_load_78
  %tmpc_78 = bitcast double %tmp_42_78 to i64
  %c_elem_78 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_78)
  %tmp_222 = trunc i64 %c_elem_78 to i32
  %doutc_1_addr_80 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 80
  store i32 %tmp_222, i32* %doutc_1_addr_80, align 4
  %tmp_48_78 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_78, i32 32, i32 63)
  %doutc_0_addr_80 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 81
  store i32 %tmp_48_78, i32* %doutc_0_addr_80, align 4
  br label %._crit_edge25.79

._crit_edge25.80:                                 ; preds = %206, %._crit_edge25.79
  br i1 %tmp_81, label %207, label %._crit_edge25.81

; <label>:206                                     ; preds = %._crit_edge25.79
  %tmp_42_79 = fmul double %omega, %a_elem_load_79
  %tmpc_79 = bitcast double %tmp_42_79 to i64
  %c_elem_79 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_79)
  %tmp_223 = trunc i64 %c_elem_79 to i32
  %doutc_1_addr_81 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 81
  store i32 %tmp_223, i32* %doutc_1_addr_81, align 4
  %tmp_48_79 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_79, i32 32, i32 63)
  %doutc_0_addr_81 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 82
  store i32 %tmp_48_79, i32* %doutc_0_addr_81, align 4
  br label %._crit_edge25.80

._crit_edge25.81:                                 ; preds = %207, %._crit_edge25.80
  br i1 %tmp_82, label %208, label %._crit_edge25.82

; <label>:207                                     ; preds = %._crit_edge25.80
  %tmp_42_80 = fmul double %omega, %a_elem_load_80
  %tmpc_80 = bitcast double %tmp_42_80 to i64
  %c_elem_80 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_80)
  %tmp_224 = trunc i64 %c_elem_80 to i32
  %doutc_1_addr_82 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 82
  store i32 %tmp_224, i32* %doutc_1_addr_82, align 4
  %tmp_48_80 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_80, i32 32, i32 63)
  %doutc_0_addr_82 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 83
  store i32 %tmp_48_80, i32* %doutc_0_addr_82, align 4
  br label %._crit_edge25.81

._crit_edge25.82:                                 ; preds = %208, %._crit_edge25.81
  br i1 %tmp_83, label %209, label %._crit_edge25.83

; <label>:208                                     ; preds = %._crit_edge25.81
  %tmp_42_81 = fmul double %omega, %a_elem_load_81
  %tmpc_81 = bitcast double %tmp_42_81 to i64
  %c_elem_81 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_81)
  %tmp_225 = trunc i64 %c_elem_81 to i32
  %doutc_1_addr_83 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 83
  store i32 %tmp_225, i32* %doutc_1_addr_83, align 4
  %tmp_48_81 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_81, i32 32, i32 63)
  %doutc_0_addr_83 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 84
  store i32 %tmp_48_81, i32* %doutc_0_addr_83, align 4
  br label %._crit_edge25.82

._crit_edge25.83:                                 ; preds = %209, %._crit_edge25.82
  br i1 %tmp_84, label %210, label %._crit_edge25.84

; <label>:209                                     ; preds = %._crit_edge25.82
  %tmp_42_82 = fmul double %omega, %a_elem_load_82
  %tmpc_82 = bitcast double %tmp_42_82 to i64
  %c_elem_82 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_82)
  %tmp_226 = trunc i64 %c_elem_82 to i32
  %doutc_1_addr_84 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 84
  store i32 %tmp_226, i32* %doutc_1_addr_84, align 4
  %tmp_48_82 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_82, i32 32, i32 63)
  %doutc_0_addr_84 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 85
  store i32 %tmp_48_82, i32* %doutc_0_addr_84, align 4
  br label %._crit_edge25.83

._crit_edge25.84:                                 ; preds = %210, %._crit_edge25.83
  br i1 %tmp_85, label %211, label %._crit_edge25.85

; <label>:210                                     ; preds = %._crit_edge25.83
  %tmp_42_83 = fmul double %omega, %a_elem_load_83
  %tmpc_83 = bitcast double %tmp_42_83 to i64
  %c_elem_83 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_83)
  %tmp_227 = trunc i64 %c_elem_83 to i32
  %doutc_1_addr_85 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 85
  store i32 %tmp_227, i32* %doutc_1_addr_85, align 4
  %tmp_48_83 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_83, i32 32, i32 63)
  %doutc_0_addr_85 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 86
  store i32 %tmp_48_83, i32* %doutc_0_addr_85, align 4
  br label %._crit_edge25.84

._crit_edge25.85:                                 ; preds = %211, %._crit_edge25.84
  br i1 %tmp_86, label %212, label %._crit_edge25.86

; <label>:211                                     ; preds = %._crit_edge25.84
  %tmp_42_84 = fmul double %omega, %a_elem_load_84
  %tmpc_84 = bitcast double %tmp_42_84 to i64
  %c_elem_84 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_84)
  %tmp_228 = trunc i64 %c_elem_84 to i32
  %doutc_1_addr_86 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 86
  store i32 %tmp_228, i32* %doutc_1_addr_86, align 4
  %tmp_48_84 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_84, i32 32, i32 63)
  %doutc_0_addr_86 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 87
  store i32 %tmp_48_84, i32* %doutc_0_addr_86, align 4
  br label %._crit_edge25.85

._crit_edge25.86:                                 ; preds = %212, %._crit_edge25.85
  br i1 %tmp_87, label %213, label %._crit_edge25.87

; <label>:212                                     ; preds = %._crit_edge25.85
  %tmp_42_85 = fmul double %omega, %a_elem_load_85
  %tmpc_85 = bitcast double %tmp_42_85 to i64
  %c_elem_85 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_85)
  %tmp_229 = trunc i64 %c_elem_85 to i32
  %doutc_1_addr_87 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 87
  store i32 %tmp_229, i32* %doutc_1_addr_87, align 4
  %tmp_48_85 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_85, i32 32, i32 63)
  %doutc_0_addr_87 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 88
  store i32 %tmp_48_85, i32* %doutc_0_addr_87, align 4
  br label %._crit_edge25.86

._crit_edge25.87:                                 ; preds = %213, %._crit_edge25.86
  br i1 %tmp_88, label %214, label %._crit_edge25.88

; <label>:213                                     ; preds = %._crit_edge25.86
  %tmp_42_86 = fmul double %omega, %a_elem_load_86
  %tmpc_86 = bitcast double %tmp_42_86 to i64
  %c_elem_86 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_86)
  %tmp_230 = trunc i64 %c_elem_86 to i32
  %doutc_1_addr_88 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 88
  store i32 %tmp_230, i32* %doutc_1_addr_88, align 4
  %tmp_48_86 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_86, i32 32, i32 63)
  %doutc_0_addr_88 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 89
  store i32 %tmp_48_86, i32* %doutc_0_addr_88, align 4
  br label %._crit_edge25.87

._crit_edge25.88:                                 ; preds = %214, %._crit_edge25.87
  br i1 %tmp_89, label %215, label %._crit_edge25.89

; <label>:214                                     ; preds = %._crit_edge25.87
  %tmp_42_87 = fmul double %omega, %a_elem_load_87
  %tmpc_87 = bitcast double %tmp_42_87 to i64
  %c_elem_87 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_87)
  %tmp_231 = trunc i64 %c_elem_87 to i32
  %doutc_1_addr_89 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 89
  store i32 %tmp_231, i32* %doutc_1_addr_89, align 4
  %tmp_48_87 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_87, i32 32, i32 63)
  %doutc_0_addr_89 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 90
  store i32 %tmp_48_87, i32* %doutc_0_addr_89, align 4
  br label %._crit_edge25.88

._crit_edge25.89:                                 ; preds = %215, %._crit_edge25.88
  br i1 %tmp_90, label %216, label %._crit_edge25.90

; <label>:215                                     ; preds = %._crit_edge25.88
  %tmp_42_88 = fmul double %omega, %a_elem_load_88
  %tmpc_88 = bitcast double %tmp_42_88 to i64
  %c_elem_88 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_88)
  %tmp_232 = trunc i64 %c_elem_88 to i32
  %doutc_1_addr_90 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 90
  store i32 %tmp_232, i32* %doutc_1_addr_90, align 4
  %tmp_48_88 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_88, i32 32, i32 63)
  %doutc_0_addr_90 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 91
  store i32 %tmp_48_88, i32* %doutc_0_addr_90, align 4
  br label %._crit_edge25.89

._crit_edge25.90:                                 ; preds = %216, %._crit_edge25.89
  br i1 %tmp_91, label %217, label %._crit_edge25.91

; <label>:216                                     ; preds = %._crit_edge25.89
  %tmp_42_89 = fmul double %omega, %a_elem_load_89
  %tmpc_89 = bitcast double %tmp_42_89 to i64
  %c_elem_89 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_89)
  %tmp_233 = trunc i64 %c_elem_89 to i32
  %doutc_1_addr_91 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 91
  store i32 %tmp_233, i32* %doutc_1_addr_91, align 4
  %tmp_48_89 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_89, i32 32, i32 63)
  %doutc_0_addr_91 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 92
  store i32 %tmp_48_89, i32* %doutc_0_addr_91, align 4
  br label %._crit_edge25.90

._crit_edge25.91:                                 ; preds = %217, %._crit_edge25.90
  br i1 %tmp_92, label %218, label %._crit_edge25.92

; <label>:217                                     ; preds = %._crit_edge25.90
  %tmp_42_90 = fmul double %omega, %a_elem_load_90
  %tmpc_90 = bitcast double %tmp_42_90 to i64
  %c_elem_90 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_90)
  %tmp_234 = trunc i64 %c_elem_90 to i32
  %doutc_1_addr_92 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 92
  store i32 %tmp_234, i32* %doutc_1_addr_92, align 4
  %tmp_48_90 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_90, i32 32, i32 63)
  %doutc_0_addr_92 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 93
  store i32 %tmp_48_90, i32* %doutc_0_addr_92, align 4
  br label %._crit_edge25.91

._crit_edge25.92:                                 ; preds = %218, %._crit_edge25.91
  br i1 %tmp_93, label %219, label %._crit_edge25.93

; <label>:218                                     ; preds = %._crit_edge25.91
  %tmp_42_91 = fmul double %omega, %a_elem_load_91
  %tmpc_91 = bitcast double %tmp_42_91 to i64
  %c_elem_91 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_91)
  %tmp_235 = trunc i64 %c_elem_91 to i32
  %doutc_1_addr_93 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 93
  store i32 %tmp_235, i32* %doutc_1_addr_93, align 4
  %tmp_48_91 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_91, i32 32, i32 63)
  %doutc_0_addr_93 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 94
  store i32 %tmp_48_91, i32* %doutc_0_addr_93, align 4
  br label %._crit_edge25.92

._crit_edge25.93:                                 ; preds = %219, %._crit_edge25.92
  br i1 %tmp_94, label %220, label %._crit_edge25.94

; <label>:219                                     ; preds = %._crit_edge25.92
  %tmp_42_92 = fmul double %omega, %a_elem_load_92
  %tmpc_92 = bitcast double %tmp_42_92 to i64
  %c_elem_92 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_92)
  %tmp_236 = trunc i64 %c_elem_92 to i32
  %doutc_1_addr_94 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 94
  store i32 %tmp_236, i32* %doutc_1_addr_94, align 4
  %tmp_48_92 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_92, i32 32, i32 63)
  %doutc_0_addr_94 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 95
  store i32 %tmp_48_92, i32* %doutc_0_addr_94, align 4
  br label %._crit_edge25.93

._crit_edge25.94:                                 ; preds = %220, %._crit_edge25.93
  br i1 %tmp_95, label %221, label %._crit_edge25.95

; <label>:220                                     ; preds = %._crit_edge25.93
  %tmp_42_93 = fmul double %omega, %a_elem_load_93
  %tmpc_93 = bitcast double %tmp_42_93 to i64
  %c_elem_93 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_93)
  %tmp_237 = trunc i64 %c_elem_93 to i32
  %doutc_1_addr_95 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 95
  store i32 %tmp_237, i32* %doutc_1_addr_95, align 4
  %tmp_48_93 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_93, i32 32, i32 63)
  %doutc_0_addr_95 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 96
  store i32 %tmp_48_93, i32* %doutc_0_addr_95, align 4
  br label %._crit_edge25.94

._crit_edge25.95:                                 ; preds = %221, %._crit_edge25.94
  br i1 %tmp_96, label %222, label %._crit_edge25.96

; <label>:221                                     ; preds = %._crit_edge25.94
  %tmp_42_94 = fmul double %omega, %a_elem_load_94
  %tmpc_94 = bitcast double %tmp_42_94 to i64
  %c_elem_94 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_94)
  %tmp_238 = trunc i64 %c_elem_94 to i32
  %doutc_1_addr_96 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 96
  store i32 %tmp_238, i32* %doutc_1_addr_96, align 4
  %tmp_48_94 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_94, i32 32, i32 63)
  %doutc_0_addr_96 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 97
  store i32 %tmp_48_94, i32* %doutc_0_addr_96, align 4
  br label %._crit_edge25.95

._crit_edge25.96:                                 ; preds = %222, %._crit_edge25.95
  br i1 %tmp_97, label %223, label %._crit_edge25.97

; <label>:222                                     ; preds = %._crit_edge25.95
  %tmp_42_95 = fmul double %omega, %a_elem_load_95
  %tmpc_95 = bitcast double %tmp_42_95 to i64
  %c_elem_95 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_95)
  %tmp_239 = trunc i64 %c_elem_95 to i32
  %doutc_1_addr_97 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 97
  store i32 %tmp_239, i32* %doutc_1_addr_97, align 4
  %tmp_48_95 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_95, i32 32, i32 63)
  %doutc_0_addr_97 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 98
  store i32 %tmp_48_95, i32* %doutc_0_addr_97, align 4
  br label %._crit_edge25.96

._crit_edge25.97:                                 ; preds = %223, %._crit_edge25.96
  br i1 %tmp_98, label %224, label %._crit_edge25.98

; <label>:223                                     ; preds = %._crit_edge25.96
  %tmp_42_96 = fmul double %omega, %a_elem_load_96
  %tmpc_96 = bitcast double %tmp_42_96 to i64
  %c_elem_96 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_96)
  %tmp_240 = trunc i64 %c_elem_96 to i32
  %doutc_1_addr_98 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 98
  store i32 %tmp_240, i32* %doutc_1_addr_98, align 4
  %tmp_48_96 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_96, i32 32, i32 63)
  %doutc_0_addr_98 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 99
  store i32 %tmp_48_96, i32* %doutc_0_addr_98, align 4
  br label %._crit_edge25.97

._crit_edge25.98:                                 ; preds = %224, %._crit_edge25.97
  br i1 %tmp_99, label %225, label %._crit_edge25.99

; <label>:224                                     ; preds = %._crit_edge25.97
  %tmp_42_97 = fmul double %omega, %a_elem_load_97
  %tmpc_97 = bitcast double %tmp_42_97 to i64
  %c_elem_97 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_97)
  %tmp_241 = trunc i64 %c_elem_97 to i32
  %doutc_1_addr_99 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 99
  store i32 %tmp_241, i32* %doutc_1_addr_99, align 4
  %tmp_48_97 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_97, i32 32, i32 63)
  %doutc_0_addr_99 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 100
  store i32 %tmp_48_97, i32* %doutc_0_addr_99, align 4
  br label %._crit_edge25.98

._crit_edge25.99:                                 ; preds = %225, %._crit_edge25.98
  br i1 %tmp_100, label %226, label %._crit_edge25.100

; <label>:225                                     ; preds = %._crit_edge25.98
  %tmp_42_98 = fmul double %omega, %a_elem_load_98
  %tmpc_98 = bitcast double %tmp_42_98 to i64
  %c_elem_98 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_98)
  %tmp_242 = trunc i64 %c_elem_98 to i32
  %doutc_1_addr_100 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 100
  store i32 %tmp_242, i32* %doutc_1_addr_100, align 4
  %tmp_48_98 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_98, i32 32, i32 63)
  %doutc_0_addr_100 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 101
  store i32 %tmp_48_98, i32* %doutc_0_addr_100, align 4
  br label %._crit_edge25.99

._crit_edge25.100:                                ; preds = %226, %._crit_edge25.99
  br i1 %tmp_101, label %227, label %._crit_edge25.101

; <label>:226                                     ; preds = %._crit_edge25.99
  %tmp_42_99 = fmul double %omega, %a_elem_load_99
  %tmpc_99 = bitcast double %tmp_42_99 to i64
  %c_elem_99 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_99)
  %tmp_243 = trunc i64 %c_elem_99 to i32
  %doutc_1_addr_101 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 101
  store i32 %tmp_243, i32* %doutc_1_addr_101, align 4
  %tmp_48_99 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_99, i32 32, i32 63)
  %doutc_0_addr_101 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 102
  store i32 %tmp_48_99, i32* %doutc_0_addr_101, align 4
  br label %._crit_edge25.100

._crit_edge25.101:                                ; preds = %227, %._crit_edge25.100
  br i1 %tmp_102, label %228, label %._crit_edge25.102

; <label>:227                                     ; preds = %._crit_edge25.100
  %tmp_42_100 = fmul double %omega, %a_elem_load_100
  %tmpc_100 = bitcast double %tmp_42_100 to i64
  %c_elem_100 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_100)
  %tmp_244 = trunc i64 %c_elem_100 to i32
  %doutc_1_addr_102 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 102
  store i32 %tmp_244, i32* %doutc_1_addr_102, align 4
  %tmp_48_100 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_100, i32 32, i32 63)
  %doutc_0_addr_102 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 103
  store i32 %tmp_48_100, i32* %doutc_0_addr_102, align 4
  br label %._crit_edge25.101

._crit_edge25.102:                                ; preds = %228, %._crit_edge25.101
  br i1 %tmp_103, label %229, label %._crit_edge25.103

; <label>:228                                     ; preds = %._crit_edge25.101
  %tmp_42_101 = fmul double %omega, %a_elem_load_101
  %tmpc_101 = bitcast double %tmp_42_101 to i64
  %c_elem_101 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_101)
  %tmp_245 = trunc i64 %c_elem_101 to i32
  %doutc_1_addr_103 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 103
  store i32 %tmp_245, i32* %doutc_1_addr_103, align 4
  %tmp_48_101 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_101, i32 32, i32 63)
  %doutc_0_addr_103 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 104
  store i32 %tmp_48_101, i32* %doutc_0_addr_103, align 4
  br label %._crit_edge25.102

._crit_edge25.103:                                ; preds = %229, %._crit_edge25.102
  br i1 %tmp_104, label %230, label %._crit_edge25.104

; <label>:229                                     ; preds = %._crit_edge25.102
  %tmp_42_102 = fmul double %omega, %a_elem_load_102
  %tmpc_102 = bitcast double %tmp_42_102 to i64
  %c_elem_102 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_102)
  %tmp_246 = trunc i64 %c_elem_102 to i32
  %doutc_1_addr_104 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 104
  store i32 %tmp_246, i32* %doutc_1_addr_104, align 4
  %tmp_48_102 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_102, i32 32, i32 63)
  %doutc_0_addr_104 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 105
  store i32 %tmp_48_102, i32* %doutc_0_addr_104, align 4
  br label %._crit_edge25.103

._crit_edge25.104:                                ; preds = %230, %._crit_edge25.103
  br i1 %tmp_105, label %231, label %._crit_edge25.105

; <label>:230                                     ; preds = %._crit_edge25.103
  %tmp_42_103 = fmul double %omega, %a_elem_load_103
  %tmpc_103 = bitcast double %tmp_42_103 to i64
  %c_elem_103 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_103)
  %tmp_247 = trunc i64 %c_elem_103 to i32
  %doutc_1_addr_105 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 105
  store i32 %tmp_247, i32* %doutc_1_addr_105, align 4
  %tmp_48_103 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_103, i32 32, i32 63)
  %doutc_0_addr_105 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 106
  store i32 %tmp_48_103, i32* %doutc_0_addr_105, align 4
  br label %._crit_edge25.104

._crit_edge25.105:                                ; preds = %231, %._crit_edge25.104
  br i1 %tmp_106, label %232, label %._crit_edge25.106

; <label>:231                                     ; preds = %._crit_edge25.104
  %tmp_42_104 = fmul double %omega, %a_elem_load_104
  %tmpc_104 = bitcast double %tmp_42_104 to i64
  %c_elem_104 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_104)
  %tmp_248 = trunc i64 %c_elem_104 to i32
  %doutc_1_addr_106 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 106
  store i32 %tmp_248, i32* %doutc_1_addr_106, align 4
  %tmp_48_104 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_104, i32 32, i32 63)
  %doutc_0_addr_106 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 107
  store i32 %tmp_48_104, i32* %doutc_0_addr_106, align 4
  br label %._crit_edge25.105

._crit_edge25.106:                                ; preds = %232, %._crit_edge25.105
  br i1 %tmp_107, label %233, label %._crit_edge25.107

; <label>:232                                     ; preds = %._crit_edge25.105
  %tmp_42_105 = fmul double %omega, %a_elem_load_105
  %tmpc_105 = bitcast double %tmp_42_105 to i64
  %c_elem_105 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_105)
  %tmp_249 = trunc i64 %c_elem_105 to i32
  %doutc_1_addr_107 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 107
  store i32 %tmp_249, i32* %doutc_1_addr_107, align 4
  %tmp_48_105 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_105, i32 32, i32 63)
  %doutc_0_addr_107 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 108
  store i32 %tmp_48_105, i32* %doutc_0_addr_107, align 4
  br label %._crit_edge25.106

._crit_edge25.107:                                ; preds = %233, %._crit_edge25.106
  br i1 %tmp_108, label %234, label %._crit_edge25.108

; <label>:233                                     ; preds = %._crit_edge25.106
  %tmp_42_106 = fmul double %omega, %a_elem_load_106
  %tmpc_106 = bitcast double %tmp_42_106 to i64
  %c_elem_106 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_106)
  %tmp_250 = trunc i64 %c_elem_106 to i32
  %doutc_1_addr_108 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 108
  store i32 %tmp_250, i32* %doutc_1_addr_108, align 4
  %tmp_48_106 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_106, i32 32, i32 63)
  %doutc_0_addr_108 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 109
  store i32 %tmp_48_106, i32* %doutc_0_addr_108, align 4
  br label %._crit_edge25.107

._crit_edge25.108:                                ; preds = %234, %._crit_edge25.107
  br i1 %tmp_109, label %235, label %._crit_edge25.109

; <label>:234                                     ; preds = %._crit_edge25.107
  %tmp_42_107 = fmul double %omega, %a_elem_load_107
  %tmpc_107 = bitcast double %tmp_42_107 to i64
  %c_elem_107 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_107)
  %tmp_251 = trunc i64 %c_elem_107 to i32
  %doutc_1_addr_109 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 109
  store i32 %tmp_251, i32* %doutc_1_addr_109, align 4
  %tmp_48_107 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_107, i32 32, i32 63)
  %doutc_0_addr_109 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 110
  store i32 %tmp_48_107, i32* %doutc_0_addr_109, align 4
  br label %._crit_edge25.108

._crit_edge25.109:                                ; preds = %235, %._crit_edge25.108
  br i1 %tmp_110, label %236, label %._crit_edge25.110

; <label>:235                                     ; preds = %._crit_edge25.108
  %tmp_42_108 = fmul double %omega, %a_elem_load_108
  %tmpc_108 = bitcast double %tmp_42_108 to i64
  %c_elem_108 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_108)
  %tmp_252 = trunc i64 %c_elem_108 to i32
  %doutc_1_addr_110 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 110
  store i32 %tmp_252, i32* %doutc_1_addr_110, align 4
  %tmp_48_108 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_108, i32 32, i32 63)
  %doutc_0_addr_110 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 111
  store i32 %tmp_48_108, i32* %doutc_0_addr_110, align 4
  br label %._crit_edge25.109

._crit_edge25.110:                                ; preds = %236, %._crit_edge25.109
  br i1 %tmp_111, label %237, label %._crit_edge25.111

; <label>:236                                     ; preds = %._crit_edge25.109
  %tmp_42_109 = fmul double %omega, %a_elem_load_109
  %tmpc_109 = bitcast double %tmp_42_109 to i64
  %c_elem_109 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_109)
  %tmp_253 = trunc i64 %c_elem_109 to i32
  %doutc_1_addr_111 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 111
  store i32 %tmp_253, i32* %doutc_1_addr_111, align 4
  %tmp_48_109 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_109, i32 32, i32 63)
  %doutc_0_addr_111 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 112
  store i32 %tmp_48_109, i32* %doutc_0_addr_111, align 4
  br label %._crit_edge25.110

._crit_edge25.111:                                ; preds = %237, %._crit_edge25.110
  br i1 %tmp_112, label %238, label %._crit_edge25.112

; <label>:237                                     ; preds = %._crit_edge25.110
  %tmp_42_110 = fmul double %omega, %a_elem_load_110
  %tmpc_110 = bitcast double %tmp_42_110 to i64
  %c_elem_110 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_110)
  %tmp_254 = trunc i64 %c_elem_110 to i32
  %doutc_1_addr_112 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 112
  store i32 %tmp_254, i32* %doutc_1_addr_112, align 4
  %tmp_48_110 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_110, i32 32, i32 63)
  %doutc_0_addr_112 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 113
  store i32 %tmp_48_110, i32* %doutc_0_addr_112, align 4
  br label %._crit_edge25.111

._crit_edge25.112:                                ; preds = %238, %._crit_edge25.111
  br i1 %tmp_113, label %239, label %._crit_edge25.113

; <label>:238                                     ; preds = %._crit_edge25.111
  %tmp_42_111 = fmul double %omega, %a_elem_load_111
  %tmpc_111 = bitcast double %tmp_42_111 to i64
  %c_elem_111 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_111)
  %tmp_255 = trunc i64 %c_elem_111 to i32
  %doutc_1_addr_113 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 113
  store i32 %tmp_255, i32* %doutc_1_addr_113, align 4
  %tmp_48_111 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_111, i32 32, i32 63)
  %doutc_0_addr_113 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 114
  store i32 %tmp_48_111, i32* %doutc_0_addr_113, align 4
  br label %._crit_edge25.112

._crit_edge25.113:                                ; preds = %239, %._crit_edge25.112
  br i1 %tmp_114, label %240, label %._crit_edge25.114

; <label>:239                                     ; preds = %._crit_edge25.112
  %tmp_42_112 = fmul double %omega, %a_elem_load_112
  %tmpc_112 = bitcast double %tmp_42_112 to i64
  %c_elem_112 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_112)
  %tmp_256 = trunc i64 %c_elem_112 to i32
  %doutc_1_addr_114 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 114
  store i32 %tmp_256, i32* %doutc_1_addr_114, align 4
  %tmp_48_112 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_112, i32 32, i32 63)
  %doutc_0_addr_114 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 115
  store i32 %tmp_48_112, i32* %doutc_0_addr_114, align 4
  br label %._crit_edge25.113

._crit_edge25.114:                                ; preds = %240, %._crit_edge25.113
  br i1 %tmp_115, label %241, label %._crit_edge25.115

; <label>:240                                     ; preds = %._crit_edge25.113
  %tmp_42_113 = fmul double %omega, %a_elem_load_113
  %tmpc_113 = bitcast double %tmp_42_113 to i64
  %c_elem_113 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_113)
  %tmp_257 = trunc i64 %c_elem_113 to i32
  %doutc_1_addr_115 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 115
  store i32 %tmp_257, i32* %doutc_1_addr_115, align 4
  %tmp_48_113 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_113, i32 32, i32 63)
  %doutc_0_addr_115 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 116
  store i32 %tmp_48_113, i32* %doutc_0_addr_115, align 4
  br label %._crit_edge25.114

._crit_edge25.115:                                ; preds = %241, %._crit_edge25.114
  br i1 %tmp_116, label %242, label %._crit_edge25.116

; <label>:241                                     ; preds = %._crit_edge25.114
  %tmp_42_114 = fmul double %omega, %a_elem_load_114
  %tmpc_114 = bitcast double %tmp_42_114 to i64
  %c_elem_114 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_114)
  %tmp_258 = trunc i64 %c_elem_114 to i32
  %doutc_1_addr_116 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 116
  store i32 %tmp_258, i32* %doutc_1_addr_116, align 4
  %tmp_48_114 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_114, i32 32, i32 63)
  %doutc_0_addr_116 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 117
  store i32 %tmp_48_114, i32* %doutc_0_addr_116, align 4
  br label %._crit_edge25.115

._crit_edge25.116:                                ; preds = %242, %._crit_edge25.115
  br i1 %tmp_117, label %243, label %._crit_edge25.117

; <label>:242                                     ; preds = %._crit_edge25.115
  %tmp_42_115 = fmul double %omega, %a_elem_load_115
  %tmpc_115 = bitcast double %tmp_42_115 to i64
  %c_elem_115 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_115)
  %tmp_259 = trunc i64 %c_elem_115 to i32
  %doutc_1_addr_117 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 117
  store i32 %tmp_259, i32* %doutc_1_addr_117, align 4
  %tmp_48_115 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_115, i32 32, i32 63)
  %doutc_0_addr_117 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 118
  store i32 %tmp_48_115, i32* %doutc_0_addr_117, align 4
  br label %._crit_edge25.116

._crit_edge25.117:                                ; preds = %243, %._crit_edge25.116
  br i1 %tmp_118, label %244, label %._crit_edge25.118

; <label>:243                                     ; preds = %._crit_edge25.116
  %tmp_42_116 = fmul double %omega, %a_elem_load_116
  %tmpc_116 = bitcast double %tmp_42_116 to i64
  %c_elem_116 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_116)
  %tmp_260 = trunc i64 %c_elem_116 to i32
  %doutc_1_addr_118 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 118
  store i32 %tmp_260, i32* %doutc_1_addr_118, align 4
  %tmp_48_116 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_116, i32 32, i32 63)
  %doutc_0_addr_118 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 119
  store i32 %tmp_48_116, i32* %doutc_0_addr_118, align 4
  br label %._crit_edge25.117

._crit_edge25.118:                                ; preds = %244, %._crit_edge25.117
  br i1 %tmp_119, label %245, label %._crit_edge25.119

; <label>:244                                     ; preds = %._crit_edge25.117
  %tmp_42_117 = fmul double %omega, %a_elem_load_117
  %tmpc_117 = bitcast double %tmp_42_117 to i64
  %c_elem_117 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_117)
  %tmp_261 = trunc i64 %c_elem_117 to i32
  %doutc_1_addr_119 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 119
  store i32 %tmp_261, i32* %doutc_1_addr_119, align 4
  %tmp_48_117 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_117, i32 32, i32 63)
  %doutc_0_addr_119 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 120
  store i32 %tmp_48_117, i32* %doutc_0_addr_119, align 4
  br label %._crit_edge25.118

._crit_edge25.119:                                ; preds = %245, %._crit_edge25.118
  br i1 %tmp_120, label %246, label %._crit_edge25.120

; <label>:245                                     ; preds = %._crit_edge25.118
  %tmp_42_118 = fmul double %omega, %a_elem_load_118
  %tmpc_118 = bitcast double %tmp_42_118 to i64
  %c_elem_118 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_118)
  %tmp_262 = trunc i64 %c_elem_118 to i32
  %doutc_1_addr_120 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 120
  store i32 %tmp_262, i32* %doutc_1_addr_120, align 4
  %tmp_48_118 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_118, i32 32, i32 63)
  %doutc_0_addr_120 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 121
  store i32 %tmp_48_118, i32* %doutc_0_addr_120, align 4
  br label %._crit_edge25.119

._crit_edge25.120:                                ; preds = %246, %._crit_edge25.119
  br i1 %tmp_121, label %247, label %._crit_edge25.121

; <label>:246                                     ; preds = %._crit_edge25.119
  %tmp_42_119 = fmul double %omega, %a_elem_load_119
  %tmpc_119 = bitcast double %tmp_42_119 to i64
  %c_elem_119 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_119)
  %tmp_263 = trunc i64 %c_elem_119 to i32
  %doutc_1_addr_121 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 121
  store i32 %tmp_263, i32* %doutc_1_addr_121, align 4
  %tmp_48_119 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_119, i32 32, i32 63)
  %doutc_0_addr_121 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 122
  store i32 %tmp_48_119, i32* %doutc_0_addr_121, align 4
  br label %._crit_edge25.120

._crit_edge25.121:                                ; preds = %247, %._crit_edge25.120
  br i1 %tmp_122, label %248, label %._crit_edge25.122

; <label>:247                                     ; preds = %._crit_edge25.120
  %tmp_42_120 = fmul double %omega, %a_elem_load_120
  %tmpc_120 = bitcast double %tmp_42_120 to i64
  %c_elem_120 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_120)
  %tmp_264 = trunc i64 %c_elem_120 to i32
  %doutc_1_addr_122 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 122
  store i32 %tmp_264, i32* %doutc_1_addr_122, align 4
  %tmp_48_120 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_120, i32 32, i32 63)
  %doutc_0_addr_122 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 123
  store i32 %tmp_48_120, i32* %doutc_0_addr_122, align 4
  br label %._crit_edge25.121

._crit_edge25.122:                                ; preds = %248, %._crit_edge25.121
  br i1 %tmp_134, label %249, label %._crit_edge25.123

; <label>:248                                     ; preds = %._crit_edge25.121
  %tmp_42_121 = fmul double %omega, %a_elem_load_121
  %tmpc_121 = bitcast double %tmp_42_121 to i64
  %c_elem_121 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_121)
  %tmp_265 = trunc i64 %c_elem_121 to i32
  %doutc_1_addr_123 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 123
  store i32 %tmp_265, i32* %doutc_1_addr_123, align 4
  %tmp_48_121 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_121, i32 32, i32 63)
  %doutc_0_addr_123 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 124
  store i32 %tmp_48_121, i32* %doutc_0_addr_123, align 4
  br label %._crit_edge25.122

._crit_edge25.123:                                ; preds = %249, %._crit_edge25.122
  br i1 %tmp_124, label %250, label %._crit_edge25.124

; <label>:249                                     ; preds = %._crit_edge25.122
  %tmp_42_122 = fmul double %omega, %a_elem_load_122
  %tmpc_122 = bitcast double %tmp_42_122 to i64
  %c_elem_122 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_122)
  %tmp_266 = trunc i64 %c_elem_122 to i32
  %doutc_1_addr_124 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 124
  store i32 %tmp_266, i32* %doutc_1_addr_124, align 4
  %tmp_48_122 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_122, i32 32, i32 63)
  %doutc_0_addr_124 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 125
  store i32 %tmp_48_122, i32* %doutc_0_addr_124, align 4
  br label %._crit_edge25.123

._crit_edge25.124:                                ; preds = %250, %._crit_edge25.123
  ret void

; <label>:250                                     ; preds = %._crit_edge25.123
  %tmp_42_123 = fmul double %omega, %a_elem_load_123
  %tmpc_123 = bitcast double %tmp_42_123 to i64
  %c_elem_123 = call fastcc i64 @axi_interfaces_reverseBytes64(i64 %tmpc_123)
  %tmp_267 = trunc i64 %c_elem_123 to i32
  %doutc_1_addr_125 = getelementptr [128 x i32]* %doutc_1, i64 0, i64 125
  store i32 %tmp_267, i32* %doutc_1_addr_125, align 4
  %tmp_48_123 = call i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64 %c_elem_123, i32 32, i32 63)
  %doutc_0_addr_125 = getelementptr [128 x i32]* %doutc_0, i64 0, i64 126
  store i32 %tmp_48_123, i32* %doutc_0_addr_125, align 4
  br label %._crit_edge25.124
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_138 = trunc i32 %empty to i8
  ret i8 %empty_138
}

define weak i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_139 = trunc i64 %empty to i8
  ret i8 %empty_139
}

define weak i32 @_ssdm_op_PartSelect.i32.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_140 = trunc i64 %empty to i32
  ret i32 %empty_140
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %6 to i16
  %empty_141 = zext i8 %7 to i16
  %empty_142 = shl i16 %empty, 8
  %empty_143 = or i16 %empty_142, %empty_141
  %empty_144 = zext i8 %5 to i24
  %empty_145 = zext i16 %empty_143 to i24
  %empty_146 = shl i24 %empty_144, 16
  %empty_147 = or i24 %empty_146, %empty_145
  %empty_148 = zext i8 %4 to i32
  %empty_149 = zext i24 %empty_147 to i32
  %empty_150 = shl i32 %empty_148, 24
  %empty_151 = or i32 %empty_150, %empty_149
  %empty_152 = zext i8 %3 to i40
  %empty_153 = zext i32 %empty_151 to i40
  %empty_154 = shl i40 %empty_152, 32
  %empty_155 = or i40 %empty_154, %empty_153
  %empty_156 = zext i8 %2 to i48
  %empty_157 = zext i40 %empty_155 to i48
  %empty_158 = shl i48 %empty_156, 40
  %empty_159 = or i48 %empty_158, %empty_157
  %empty_160 = zext i8 %1 to i56
  %empty_161 = zext i48 %empty_159 to i56
  %empty_162 = shl i56 %empty_160, 48
  %empty_163 = or i56 %empty_162, %empty_161
  %empty_164 = zext i8 %0 to i64
  %empty_165 = zext i56 %empty_163 to i64
  %empty_166 = shl i64 %empty_164, 56
  %empty_167 = or i64 %empty_166, %empty_165
  ret i64 %empty_167
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i8.i8.i8(i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_168 = zext i8 %3 to i16
  %empty_169 = shl i16 %empty, 8
  %empty_170 = or i16 %empty_169, %empty_168
  %empty_171 = zext i8 %1 to i24
  %empty_172 = zext i16 %empty_170 to i24
  %empty_173 = shl i24 %empty_171, 16
  %empty_174 = or i24 %empty_173, %empty_172
  %empty_175 = zext i8 %0 to i32
  %empty_176 = zext i24 %empty_174 to i32
  %empty_177 = shl i32 %empty_175, 24
  %empty_178 = or i32 %empty_177, %empty_176
  ret i32 %empty_178
}

define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_179 = trunc i32 %empty to i31
  ret i31 %empty_179
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_180 = trunc i32 %empty to i30
  ret i30 %empty_180
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_181 = trunc i32 %empty to i29
  ret i29 %empty_181
}

define weak i28 @_ssdm_op_PartSelect.i28.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_182 = trunc i32 %empty to i28
  ret i28 %empty_182
}

define weak i27 @_ssdm_op_PartSelect.i27.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_183 = trunc i32 %empty to i27
  ret i27 %empty_183
}

define weak i26 @_ssdm_op_PartSelect.i26.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_184 = trunc i32 %empty to i26
  ret i26 %empty_184
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i7 @_ssdm_op_PartSelect.i7.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i31 @_ssdm_op_BitConcatenate.i31.i8.i8.i8.i7(i8, i8, i8, i7) nounwind readnone {
entry:
  %empty = zext i8 %2 to i15
  %empty_185 = zext i7 %3 to i15
  %empty_186 = shl i15 %empty, 7
  %empty_187 = or i15 %empty_186, %empty_185
  %empty_188 = zext i8 %1 to i23
  %empty_189 = zext i15 %empty_187 to i23
  %empty_190 = shl i23 %empty_188, 15
  %empty_191 = or i23 %empty_190, %empty_189
  %empty_192 = zext i8 %0 to i31
  %empty_193 = zext i23 %empty_191 to i31
  %empty_194 = shl i31 %empty_192, 23
  %empty_195 = or i31 %empty_194, %empty_193
  ret i31 %empty_195
}

define weak i7 @_ssdm_op_PartSelect.i7.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_196 = trunc i32 %empty to i7
  ret i7 %empty_196
}

declare i6 @_ssdm_op_PartSelect.i6.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i30 @_ssdm_op_BitConcatenate.i30.i8.i8.i8.i6(i8, i8, i8, i6) nounwind readnone {
entry:
  %empty = zext i8 %2 to i14
  %empty_197 = zext i6 %3 to i14
  %empty_198 = shl i14 %empty, 6
  %empty_199 = or i14 %empty_198, %empty_197
  %empty_200 = zext i8 %1 to i22
  %empty_201 = zext i14 %empty_199 to i22
  %empty_202 = shl i22 %empty_200, 14
  %empty_203 = or i22 %empty_202, %empty_201
  %empty_204 = zext i8 %0 to i30
  %empty_205 = zext i22 %empty_203 to i30
  %empty_206 = shl i30 %empty_204, 22
  %empty_207 = or i30 %empty_206, %empty_205
  ret i30 %empty_207
}

define weak i6 @_ssdm_op_PartSelect.i6.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_208 = trunc i32 %empty to i6
  ret i6 %empty_208
}

declare i5 @_ssdm_op_PartSelect.i5.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i29 @_ssdm_op_BitConcatenate.i29.i8.i8.i8.i5(i8, i8, i8, i5) nounwind readnone {
entry:
  %empty = zext i8 %2 to i13
  %empty_209 = zext i5 %3 to i13
  %empty_210 = shl i13 %empty, 5
  %empty_211 = or i13 %empty_210, %empty_209
  %empty_212 = zext i8 %1 to i21
  %empty_213 = zext i13 %empty_211 to i21
  %empty_214 = shl i21 %empty_212, 13
  %empty_215 = or i21 %empty_214, %empty_213
  %empty_216 = zext i8 %0 to i29
  %empty_217 = zext i21 %empty_215 to i29
  %empty_218 = shl i29 %empty_216, 21
  %empty_219 = or i29 %empty_218, %empty_217
  ret i29 %empty_219
}

define weak i5 @_ssdm_op_PartSelect.i5.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_220 = trunc i32 %empty to i5
  ret i5 %empty_220
}

declare i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i28 @_ssdm_op_BitConcatenate.i28.i8.i8.i8.i4(i8, i8, i8, i4) nounwind readnone {
entry:
  %empty = zext i8 %2 to i12
  %empty_221 = zext i4 %3 to i12
  %empty_222 = shl i12 %empty, 4
  %empty_223 = or i12 %empty_222, %empty_221
  %empty_224 = zext i8 %1 to i20
  %empty_225 = zext i12 %empty_223 to i20
  %empty_226 = shl i20 %empty_224, 12
  %empty_227 = or i20 %empty_226, %empty_225
  %empty_228 = zext i8 %0 to i28
  %empty_229 = zext i20 %empty_227 to i28
  %empty_230 = shl i28 %empty_228, 20
  %empty_231 = or i28 %empty_230, %empty_229
  ret i28 %empty_231
}

define weak i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_232 = trunc i32 %empty to i4
  ret i4 %empty_232
}

declare i3 @_ssdm_op_PartSelect.i3.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i27 @_ssdm_op_BitConcatenate.i27.i8.i8.i8.i3(i8, i8, i8, i3) nounwind readnone {
entry:
  %empty = zext i8 %2 to i11
  %empty_233 = zext i3 %3 to i11
  %empty_234 = shl i11 %empty, 3
  %empty_235 = or i11 %empty_234, %empty_233
  %empty_236 = zext i8 %1 to i19
  %empty_237 = zext i11 %empty_235 to i19
  %empty_238 = shl i19 %empty_236, 11
  %empty_239 = or i19 %empty_238, %empty_237
  %empty_240 = zext i8 %0 to i27
  %empty_241 = zext i19 %empty_239 to i27
  %empty_242 = shl i27 %empty_240, 19
  %empty_243 = or i27 %empty_242, %empty_241
  ret i27 %empty_243
}

define weak i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_244 = trunc i32 %empty to i3
  ret i3 %empty_244
}

declare i2 @_ssdm_op_PartSelect.i2.i8.i32.i32(i8, i32, i32) nounwind readnone

define weak i26 @_ssdm_op_BitConcatenate.i26.i8.i8.i8.i2(i8, i8, i8, i2) nounwind readnone {
entry:
  %empty = zext i8 %2 to i10
  %empty_245 = zext i2 %3 to i10
  %empty_246 = shl i10 %empty, 2
  %empty_247 = or i10 %empty_246, %empty_245
  %empty_248 = zext i8 %1 to i18
  %empty_249 = zext i10 %empty_247 to i18
  %empty_250 = shl i18 %empty_248, 10
  %empty_251 = or i18 %empty_250, %empty_249
  %empty_252 = zext i8 %0 to i26
  %empty_253 = zext i18 %empty_251 to i26
  %empty_254 = shl i26 %empty_252, 18
  %empty_255 = or i26 %empty_254, %empty_253
  ret i26 %empty_255
}

define weak i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_256 = trunc i32 %empty to i2
  ret i2 %empty_256
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"dina", metadata !11, metadata !"unsigned int", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 1, i32 255, i32 2}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"dina", metadata !17, metadata !"unsigned int", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 254, i32 2}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"dinb", metadata !11, metadata !"unsigned int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"dinb", metadata !17, metadata !"unsigned int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"doutc", metadata !11, metadata !"unsigned int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"doutc", metadata !17, metadata !"unsigned int", i32 0, i32 31}
