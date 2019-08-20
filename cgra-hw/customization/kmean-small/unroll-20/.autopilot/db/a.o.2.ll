; ModuleID = 'D:/minibench/customization/kmean-small/unroll-20/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=15 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=2 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [16 x i8] c"kmean_ip_label0\00", align 1 ; [#uses=3 type=[16 x i8]*]
@str = internal constant [9 x i8] c"kmean_ip\00"  ; [#uses=1 type=[9 x i8]*]

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=1]
declare void @_ssdm_op_SpecIFCore(...)

; [#uses=2]
declare void @_ssdm_op_SpecMemCore(...)

; [#uses=0]
define void @kmean_ip([2056 x i32]* %sub_in, [12 x i32]* %sub_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([2056 x i32]* %sub_in) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([12 x i32]* %sub_out) nounwind, !map !19
  %sub_out.addr = getelementptr [12 x i32]* %sub_out, i64 0, i64 0 ; [#uses=8 type=i32*]
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{[2056 x i32]* %sub_in}, i64 0, metadata !25), !dbg !29 ; [debug line = 3:19] [debug variable = sub_in]
  call void @llvm.dbg.value(metadata !{[12 x i32]* %sub_out}, i64 0, metadata !30), !dbg !34 ; [debug line = 3:44] [debug variable = sub_out]
  call void (...)* @_ssdm_op_SpecMemCore([12 x i32]* %sub_out, [1 x i8]* @.str, [12 x i8]* @.str1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !35 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecMemCore([2056 x i32]* %sub_in, [1 x i8]* @.str, [12 x i8]* @.str1, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !35 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @.str, [10 x i8]* @.str2, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, [17 x i8]* @.str3) nounwind, !dbg !35 ; [debug line = 4:1]
  br label %1, !dbg !37                           ; [debug line = 17:9]

; <label>:1                                       ; preds = %3, %0
  %i = phi i4 [ 0, %0 ], [ %i.1, %3 ]             ; [#uses=3 type=i4]
  %exitcond8 = icmp eq i4 %i, -4, !dbg !37        ; [#uses=1 type=i1] [debug line = 17:9]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 12, i64 12, i64 12) nounwind ; [#uses=0 type=i32]
  br i1 %exitcond8, label %.preheader, label %3, !dbg !37 ; [debug line = 17:9]

.preheader:                                       ; preds = %1
  %sub_in.addr = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2048, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.addr.1 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2049, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.addr.2 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2050, !dbg !42 ; [#uses=1 type=i32*] [debug line = 24:9]
  %sub_in.addr.3 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2051, !dbg !42 ; [#uses=1 type=i32*] [debug line = 24:9]
  %sub_in.addr.4 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2052, !dbg !43 ; [#uses=1 type=i32*] [debug line = 27:9]
  %sub_in.addr.5 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2053, !dbg !43 ; [#uses=1 type=i32*] [debug line = 27:9]
  %sub_in.addr.6 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2054, !dbg !44 ; [#uses=1 type=i32*] [debug line = 30:9]
  %sub_in.addr.7 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 2055, !dbg !44 ; [#uses=1 type=i32*] [debug line = 30:9]
  %sub_out.addr.1 = getelementptr [12 x i32]* %sub_out, i64 0, i64 11, !dbg !45 ; [#uses=8 type=i32*] [debug line = 52:14]
  %sub_out.addr.2 = getelementptr [12 x i32]* %sub_out, i64 0, i64 6, !dbg !47 ; [#uses=8 type=i32*] [debug line = 53:14]
  %sub_out.addr.3 = getelementptr [12 x i32]* %sub_out, i64 0, i64 7, !dbg !48 ; [#uses=8 type=i32*] [debug line = 54:14]
  %sub_out.addr.4 = getelementptr [12 x i32]* %sub_out, i64 0, i64 10, !dbg !49 ; [#uses=8 type=i32*] [debug line = 46:14]
  %sub_out.addr.5 = getelementptr [12 x i32]* %sub_out, i64 0, i64 4, !dbg !51 ; [#uses=8 type=i32*] [debug line = 47:14]
  %sub_out.addr.6 = getelementptr [12 x i32]* %sub_out, i64 0, i64 5, !dbg !52 ; [#uses=8 type=i32*] [debug line = 48:14]
  %sub_out.addr.7 = getelementptr [12 x i32]* %sub_out, i64 0, i64 9, !dbg !53 ; [#uses=8 type=i32*] [debug line = 40:14]
  %sub_out.addr.8 = getelementptr [12 x i32]* %sub_out, i64 0, i64 2, !dbg !55 ; [#uses=8 type=i32*] [debug line = 41:14]
  %sub_out.addr.9 = getelementptr [12 x i32]* %sub_out, i64 0, i64 3, !dbg !56 ; [#uses=8 type=i32*] [debug line = 42:14]
  %sub_out.addr.10 = getelementptr [12 x i32]* %sub_out, i64 0, i64 8, !dbg !57 ; [#uses=8 type=i32*] [debug line = 34:14]
  %sub_out.addr.11 = getelementptr [12 x i32]* %sub_out, i64 0, i64 1, !dbg !59 ; [#uses=8 type=i32*] [debug line = 36:14]
  br label %4, !dbg !60                           ; [debug line = 20:25]

; <label>:3                                       ; preds = %1
  %tmp = zext i4 %i to i64, !dbg !61              ; [#uses=1 type=i64] [debug line = 18:9]
  %sub_out.addr.12 = getelementptr [12 x i32]* %sub_out, i64 0, i64 %tmp, !dbg !61 ; [#uses=1 type=i32*] [debug line = 18:9]
  store i32 0, i32* %sub_out.addr.12, align 4, !dbg !61 ; [debug line = 18:9]
  %i.1 = add i4 %i, 1, !dbg !63                   ; [#uses=1 type=i4] [debug line = 17:24]
  call void @llvm.dbg.value(metadata !{i4 %i.1}, i64 0, metadata !64), !dbg !63 ; [debug line = 17:24] [debug variable = i]
  br label %1, !dbg !63                           ; [debug line = 17:24]

; <label>:4                                       ; preds = %._crit_edge11.3, %.preheader
  %i. = phi i11 [ %i.3.3, %._crit_edge11.3 ], [ 0, %.preheader ] ; [#uses=3 type=i11]
  %5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 256, i64 256, i64 256) nounwind ; [#uses=0 type=i32]
  %exitcond = icmp eq i11 %i., -1024, !dbg !60    ; [#uses=1 type=i1] [debug line = 20:25]
  br i1 %exitcond, label %24, label %7, !dbg !60  ; [debug line = 20:25]

._crit_edge11.0:                                  ; preds = %11, %._crit_edge10.0
  %6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([16 x i8]* @.str4, i32 %tmp.1) nounwind, !dbg !65 ; [#uses=0 type=i32] [debug line = 56:5]
  %tmp.2.1 = or i11 %tmp.2, 2, !dbg !39           ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp.3.1 = zext i11 %tmp.2.1 to i64, !dbg !39   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.10 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp.3.1, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.load.10 = load i32* %sub_in.addr.10, align 4, !dbg !39 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp.4.1 = sub nsw i32 %sub_in.load.10, %sub_in.load.1, !dbg !39 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.5.1 = mul nsw i32 %tmp.4.1, %tmp.4.1, !dbg !39 ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp.6.1 = or i11 %tmp.2, 3, !dbg !39           ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp.7.1 = zext i11 %tmp.6.1 to i64, !dbg !39   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.11 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp.7.1, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.load.11 = load i32* %sub_in.addr.11, align 4, !dbg !39 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp.8.1 = sub nsw i32 %sub_in.load.11, %sub_in.load.3, !dbg !39 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.9.1 = mul nsw i32 %tmp.8.1, %tmp.8.1, !dbg !39 ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0.1 = add nsw i32 %tmp.9.1, %tmp.5.1, !dbg !39 ; [#uses=5 type=i32] [debug line = 21:9]
  %tmp..1 = sub nsw i32 %sub_in.load.10, %sub_in.load.4, !dbg !42 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp.1.1 = mul nsw i32 %tmp..1, %tmp..1, !dbg !42 ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp.10.1 = sub nsw i32 %sub_in.load.11, %sub_in.load.5, !dbg !42 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp.11.1 = mul nsw i32 %tmp.10.1, %tmp.10.1, !dbg !42 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1.1 = add nsw i32 %tmp.11.1, %tmp.1.1, !dbg !42 ; [#uses=5 type=i32] [debug line = 24:9]
  %tmp.12.1 = sub nsw i32 %sub_in.load.10, %sub_in.load.6, !dbg !43 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp.13.1 = mul nsw i32 %tmp.12.1, %tmp.12.1, !dbg !43 ; [#uses=1 type=i32] [debug line = 27:9]
  %tmp.14.1 = sub nsw i32 %sub_in.load.11, %sub_in.load.7, !dbg !43 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp.15.1 = mul nsw i32 %tmp.14.1, %tmp.14.1, !dbg !43 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2.1 = add nsw i32 %tmp.15.1, %tmp.13.1, !dbg !43 ; [#uses=5 type=i32] [debug line = 27:9]
  %tmp.16.1 = sub nsw i32 %sub_in.load.10, %sub_in.load.8, !dbg !44 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp.17.1 = mul nsw i32 %tmp.16.1, %tmp.16.1, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:9]
  %tmp.18.1 = sub nsw i32 %sub_in.load.11, %sub_in.load.9, !dbg !44 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp.19.1 = mul nsw i32 %tmp.18.1, %tmp.18.1, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3.1 = add nsw i32 %tmp.19.1, %tmp.17.1, !dbg !44 ; [#uses=3 type=i32] [debug line = 30:9]
  %tmp.20.1 = icmp sgt i32 %dist0.1, %dist1.1, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.21.1 = icmp sgt i32 %dist0.1, %dist2.1, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.22.1 = icmp sgt i32 %dist0.1, %dist3.1, !dbg !66 ; [#uses=2 type=i1] [debug line = 33:10]
  %tmp1 = or i1 %tmp.21.1, %tmp.22.1, !dbg !66    ; [#uses=1 type=i1] [debug line = 33:10]
  %or.cond1.1 = or i1 %tmp1, %tmp.20.1, !dbg !66  ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or.cond1.1, label %._crit_edge.1, label %12, !dbg !66 ; [debug line = 33:10]

._crit_edge10.0:                                  ; preds = %10, %._crit_edge9.0
  %tmp2 = and i1 %tmp.28, %tmp.32, !dbg !67       ; [#uses=1 type=i1] [debug line = 51:10]
  %or.cond7 = and i1 %tmp2, %tmp.22, !dbg !67     ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or.cond7, label %11, label %._crit_edge11.0, !dbg !67 ; [debug line = 51:10]

._crit_edge9.0:                                   ; preds = %9, %._crit_edge.0
  %notlhs = icmp sge i32 %dist2, %dist0, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  %notrhs = icmp sge i32 %dist2, %dist1, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp.32 = icmp sgt i32 %dist2, %dist3, !dbg !68 ; [#uses=2 type=i1] [debug line = 45:10]
  %tmp3 = or i1 %notlhs, %tmp.32, !dbg !68        ; [#uses=1 type=i1] [debug line = 45:10]
  %or.cond5 = or i1 %tmp3, %notrhs, !dbg !68      ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or.cond5, label %._crit_edge10.0, label %10, !dbg !68 ; [debug line = 45:10]

._crit_edge.0:                                    ; preds = %8, %7
  %tmp.26 = icmp sge i32 %dist1, %dist0, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.27 = icmp sgt i32 %dist1, %dist2, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.28 = icmp sgt i32 %dist1, %dist3, !dbg !69 ; [#uses=2 type=i1] [debug line = 39:10]
  %tmp4 = or i1 %tmp.27, %tmp.28, !dbg !69        ; [#uses=1 type=i1] [debug line = 39:10]
  %or.cond3 = or i1 %tmp4, %tmp.26, !dbg !69      ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or.cond3, label %._crit_edge9.0, label %9, !dbg !69 ; [debug line = 39:10]

; <label>:7                                       ; preds = %4
  call void (...)* @_ssdm_op_SpecLoopName([16 x i8]* @.str4) nounwind, !dbg !70 ; [debug line = 20:43]
  %tmp.1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([16 x i8]* @.str4) nounwind, !dbg !71 ; [#uses=1 type=i32] [debug line = 20:84]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, [1 x i8]* @.str) nounwind, !dbg !72 ; [debug line = 21:1]
  %tmp.2 = shl i11 %i., 1, !dbg !39               ; [#uses=8 type=i11] [debug line = 21:9]
  %tmp.3 = zext i11 %tmp.2 to i64, !dbg !39       ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.8 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp.3, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.load = load i32* %sub_in.addr.8, align 4, !dbg !39 ; [#uses=8 type=i32] [debug line = 21:9]
  %sub_in.load.1 = load i32* %sub_in.addr, align 4, !dbg !39 ; [#uses=4 type=i32] [debug line = 21:9]
  %tmp.4 = sub nsw i32 %sub_in.load, %sub_in.load.1, !dbg !39 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.5 = mul nsw i32 %tmp.4, %tmp.4, !dbg !39   ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp.6 = or i11 %tmp.2, 1, !dbg !39             ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp.7 = zext i11 %tmp.6 to i64, !dbg !39       ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.9 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp.7, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.load.2 = load i32* %sub_in.addr.9, align 4, !dbg !39 ; [#uses=8 type=i32] [debug line = 21:9]
  %sub_in.load.3 = load i32* %sub_in.addr.1, align 4, !dbg !39 ; [#uses=4 type=i32] [debug line = 21:9]
  %tmp.8 = sub nsw i32 %sub_in.load.2, %sub_in.load.3, !dbg !39 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.9 = mul nsw i32 %tmp.8, %tmp.8, !dbg !39   ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0 = add nsw i32 %tmp.9, %tmp.5, !dbg !39   ; [#uses=5 type=i32] [debug line = 21:9]
  %sub_in.load.4 = load i32* %sub_in.addr.2, align 4, !dbg !42 ; [#uses=4 type=i32] [debug line = 24:9]
  %tmp. = sub nsw i32 %sub_in.load, %sub_in.load.4, !dbg !42 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp.11 = mul nsw i32 %tmp., %tmp., !dbg !42    ; [#uses=1 type=i32] [debug line = 24:9]
  %sub_in.load.5 = load i32* %sub_in.addr.3, align 4, !dbg !42 ; [#uses=4 type=i32] [debug line = 24:9]
  %tmp.10 = sub nsw i32 %sub_in.load.2, %sub_in.load.5, !dbg !42 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp.39 = mul nsw i32 %tmp.10, %tmp.10, !dbg !42 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1 = add nsw i32 %tmp.39, %tmp.11, !dbg !42 ; [#uses=5 type=i32] [debug line = 24:9]
  %sub_in.load.6 = load i32* %sub_in.addr.4, align 4, !dbg !43 ; [#uses=4 type=i32] [debug line = 27:9]
  %tmp.12 = sub nsw i32 %sub_in.load, %sub_in.load.6, !dbg !43 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp.13 = mul nsw i32 %tmp.12, %tmp.12, !dbg !43 ; [#uses=1 type=i32] [debug line = 27:9]
  %sub_in.load.7 = load i32* %sub_in.addr.5, align 4, !dbg !43 ; [#uses=4 type=i32] [debug line = 27:9]
  %tmp.14 = sub nsw i32 %sub_in.load.2, %sub_in.load.7, !dbg !43 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp.15 = mul nsw i32 %tmp.14, %tmp.14, !dbg !43 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2 = add nsw i32 %tmp.15, %tmp.13, !dbg !43 ; [#uses=5 type=i32] [debug line = 27:9]
  %sub_in.load.8 = load i32* %sub_in.addr.6, align 4, !dbg !44 ; [#uses=4 type=i32] [debug line = 30:9]
  %tmp.16 = sub nsw i32 %sub_in.load, %sub_in.load.8, !dbg !44 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp.17 = mul nsw i32 %tmp.16, %tmp.16, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:9]
  %sub_in.load.9 = load i32* %sub_in.addr.7, align 4, !dbg !44 ; [#uses=4 type=i32] [debug line = 30:9]
  %tmp.18 = sub nsw i32 %sub_in.load.2, %sub_in.load.9, !dbg !44 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp.19 = mul nsw i32 %tmp.18, %tmp.18, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3 = add nsw i32 %tmp.19, %tmp.17, !dbg !44 ; [#uses=3 type=i32] [debug line = 30:9]
  %tmp.20 = icmp sgt i32 %dist0, %dist1, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.21 = icmp sgt i32 %dist0, %dist2, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.22 = icmp sgt i32 %dist0, %dist3, !dbg !66 ; [#uses=2 type=i1] [debug line = 33:10]
  %tmp5 = or i1 %tmp.21, %tmp.22, !dbg !66        ; [#uses=1 type=i1] [debug line = 33:10]
  %or.cond1 = or i1 %tmp5, %tmp.20, !dbg !66      ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or.cond1, label %._crit_edge.0, label %8, !dbg !66 ; [debug line = 33:10]

; <label>:8                                       ; preds = %7
  %sub_out.load = load i32* %sub_out.addr.10, align 4, !dbg !57 ; [#uses=1 type=i32] [debug line = 34:14]
  %tmp.23 = add nsw i32 %sub_out.load, 1, !dbg !57 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp.23, i32* %sub_out.addr.10, align 4, !dbg !57 ; [debug line = 34:14]
  %sub_out.load.1 = load i32* %sub_out.addr, align 4, !dbg !73 ; [#uses=1 type=i32] [debug line = 35:14]
  %tmp.24 = add nsw i32 %sub_out.load.1, %sub_in.load, !dbg !73 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp.24, i32* %sub_out.addr, align 4, !dbg !73 ; [debug line = 35:14]
  %sub_out.load.2 = load i32* %sub_out.addr.11, align 4, !dbg !59 ; [#uses=1 type=i32] [debug line = 36:14]
  %tmp.25 = add nsw i32 %sub_out.load.2, %sub_in.load.2, !dbg !59 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp.25, i32* %sub_out.addr.11, align 4, !dbg !59 ; [debug line = 36:14]
  br label %._crit_edge.0, !dbg !74               ; [debug line = 37:10]

; <label>:9                                       ; preds = %._crit_edge.0
  %sub_out.load.3 = load i32* %sub_out.addr.7, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 40:14]
  %tmp.29 = add nsw i32 %sub_out.load.3, 1, !dbg !53 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp.29, i32* %sub_out.addr.7, align 4, !dbg !53 ; [debug line = 40:14]
  %sub_out.load.4 = load i32* %sub_out.addr.8, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 41:14]
  %tmp.30 = add nsw i32 %sub_out.load.4, %sub_in.load, !dbg !55 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp.30, i32* %sub_out.addr.8, align 4, !dbg !55 ; [debug line = 41:14]
  %sub_out.load.5 = load i32* %sub_out.addr.9, align 4, !dbg !56 ; [#uses=1 type=i32] [debug line = 42:14]
  %tmp.31 = add nsw i32 %sub_out.load.5, %sub_in.load.2, !dbg !56 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp.31, i32* %sub_out.addr.9, align 4, !dbg !56 ; [debug line = 42:14]
  br label %._crit_edge9.0, !dbg !75              ; [debug line = 43:10]

; <label>:10                                      ; preds = %._crit_edge9.0
  %sub_out.load.6 = load i32* %sub_out.addr.4, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 46:14]
  %tmp.33 = add nsw i32 %sub_out.load.6, 1, !dbg !49 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp.33, i32* %sub_out.addr.4, align 4, !dbg !49 ; [debug line = 46:14]
  %sub_out.load.7 = load i32* %sub_out.addr.5, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 47:14]
  %tmp.34 = add nsw i32 %sub_out.load.7, %sub_in.load, !dbg !51 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp.34, i32* %sub_out.addr.5, align 4, !dbg !51 ; [debug line = 47:14]
  %sub_out.load.8 = load i32* %sub_out.addr.6, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 48:14]
  %tmp.35 = add nsw i32 %sub_out.load.8, %sub_in.load.2, !dbg !52 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp.35, i32* %sub_out.addr.6, align 4, !dbg !52 ; [debug line = 48:14]
  br label %._crit_edge10.0, !dbg !76             ; [debug line = 49:10]

; <label>:11                                      ; preds = %._crit_edge10.0
  %sub_out.load.9 = load i32* %sub_out.addr.1, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 52:14]
  %tmp.36 = add nsw i32 %sub_out.load.9, 1, !dbg !45 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp.36, i32* %sub_out.addr.1, align 4, !dbg !45 ; [debug line = 52:14]
  %sub_out.load.10 = load i32* %sub_out.addr.2, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 53:14]
  %tmp.37 = add nsw i32 %sub_out.load.10, %sub_in.load, !dbg !47 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp.37, i32* %sub_out.addr.2, align 4, !dbg !47 ; [debug line = 53:14]
  %sub_out.load.11 = load i32* %sub_out.addr.3, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 54:14]
  %tmp.38 = add nsw i32 %sub_out.load.11, %sub_in.load.2, !dbg !48 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp.38, i32* %sub_out.addr.3, align 4, !dbg !48 ; [debug line = 54:14]
  br label %._crit_edge11.0, !dbg !77             ; [debug line = 55:10]

._crit_edge11.1:                                  ; preds = %15, %._crit_edge10.1
  %tmp.2.2 = or i11 %tmp.2, 4, !dbg !39           ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp.3.2 = zext i11 %tmp.2.2 to i64, !dbg !39   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.12 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp.3.2, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.load.12 = load i32* %sub_in.addr.12, align 4, !dbg !39 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp.4.2 = sub nsw i32 %sub_in.load.12, %sub_in.load.1, !dbg !39 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.5.2 = mul nsw i32 %tmp.4.2, %tmp.4.2, !dbg !39 ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp.6.2 = or i11 %tmp.2, 5, !dbg !39           ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp.7.2 = zext i11 %tmp.6.2 to i64, !dbg !39   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.13 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp.7.2, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.load.13 = load i32* %sub_in.addr.13, align 4, !dbg !39 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp.8.2 = sub nsw i32 %sub_in.load.13, %sub_in.load.3, !dbg !39 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.9.2 = mul nsw i32 %tmp.8.2, %tmp.8.2, !dbg !39 ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0.2 = add nsw i32 %tmp.9.2, %tmp.5.2, !dbg !39 ; [#uses=5 type=i32] [debug line = 21:9]
  %tmp..2 = sub nsw i32 %sub_in.load.12, %sub_in.load.4, !dbg !42 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp.1.2 = mul nsw i32 %tmp..2, %tmp..2, !dbg !42 ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp.10.2 = sub nsw i32 %sub_in.load.13, %sub_in.load.5, !dbg !42 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp.11.2 = mul nsw i32 %tmp.10.2, %tmp.10.2, !dbg !42 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1.2 = add nsw i32 %tmp.11.2, %tmp.1.2, !dbg !42 ; [#uses=5 type=i32] [debug line = 24:9]
  %tmp.12.2 = sub nsw i32 %sub_in.load.12, %sub_in.load.6, !dbg !43 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp.13.2 = mul nsw i32 %tmp.12.2, %tmp.12.2, !dbg !43 ; [#uses=1 type=i32] [debug line = 27:9]
  %tmp.14.2 = sub nsw i32 %sub_in.load.13, %sub_in.load.7, !dbg !43 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp.15.2 = mul nsw i32 %tmp.14.2, %tmp.14.2, !dbg !43 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2.2 = add nsw i32 %tmp.15.2, %tmp.13.2, !dbg !43 ; [#uses=5 type=i32] [debug line = 27:9]
  %tmp.16.2 = sub nsw i32 %sub_in.load.12, %sub_in.load.8, !dbg !44 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp.17.2 = mul nsw i32 %tmp.16.2, %tmp.16.2, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:9]
  %tmp.18.2 = sub nsw i32 %sub_in.load.13, %sub_in.load.9, !dbg !44 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp.19.2 = mul nsw i32 %tmp.18.2, %tmp.18.2, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3.2 = add nsw i32 %tmp.19.2, %tmp.17.2, !dbg !44 ; [#uses=3 type=i32] [debug line = 30:9]
  %tmp.20.2 = icmp sgt i32 %dist0.2, %dist1.2, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.21.2 = icmp sgt i32 %dist0.2, %dist2.2, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.22.2 = icmp sgt i32 %dist0.2, %dist3.2, !dbg !66 ; [#uses=2 type=i1] [debug line = 33:10]
  %tmp6 = or i1 %tmp.21.2, %tmp.22.2, !dbg !66    ; [#uses=1 type=i1] [debug line = 33:10]
  %or.cond1.2 = or i1 %tmp6, %tmp.20.2, !dbg !66  ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or.cond1.2, label %._crit_edge.2, label %16, !dbg !66 ; [debug line = 33:10]

._crit_edge10.1:                                  ; preds = %14, %._crit_edge9.1
  %tmp7 = and i1 %tmp.28.1, %tmp.32.1, !dbg !67   ; [#uses=1 type=i1] [debug line = 51:10]
  %or.cond7.1 = and i1 %tmp7, %tmp.22.1, !dbg !67 ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or.cond7.1, label %15, label %._crit_edge11.1, !dbg !67 ; [debug line = 51:10]

._crit_edge9.1:                                   ; preds = %13, %._crit_edge.1
  %notlhs.1 = icmp sge i32 %dist2.1, %dist0.1, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  %notrhs.1 = icmp sge i32 %dist2.1, %dist1.1, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp.32.1 = icmp sgt i32 %dist2.1, %dist3.1, !dbg !68 ; [#uses=2 type=i1] [debug line = 45:10]
  %tmp8 = or i1 %notlhs.1, %tmp.32.1, !dbg !68    ; [#uses=1 type=i1] [debug line = 45:10]
  %or.cond5.1 = or i1 %tmp8, %notrhs.1, !dbg !68  ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or.cond5.1, label %._crit_edge10.1, label %14, !dbg !68 ; [debug line = 45:10]

._crit_edge.1:                                    ; preds = %12, %._crit_edge11.0
  %tmp.26.1 = icmp sge i32 %dist1.1, %dist0.1, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.27.1 = icmp sgt i32 %dist1.1, %dist2.1, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.28.1 = icmp sgt i32 %dist1.1, %dist3.1, !dbg !69 ; [#uses=2 type=i1] [debug line = 39:10]
  %tmp9 = or i1 %tmp.27.1, %tmp.28.1, !dbg !69    ; [#uses=1 type=i1] [debug line = 39:10]
  %or.cond3.1 = or i1 %tmp9, %tmp.26.1, !dbg !69  ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or.cond3.1, label %._crit_edge9.1, label %13, !dbg !69 ; [debug line = 39:10]

; <label>:12                                      ; preds = %._crit_edge11.0
  %sub_out.load.12 = load i32* %sub_out.addr.10, align 4, !dbg !57 ; [#uses=1 type=i32] [debug line = 34:14]
  %tmp.23.1 = add nsw i32 %sub_out.load.12, 1, !dbg !57 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp.23.1, i32* %sub_out.addr.10, align 4, !dbg !57 ; [debug line = 34:14]
  %sub_out.load.13 = load i32* %sub_out.addr, align 4, !dbg !73 ; [#uses=1 type=i32] [debug line = 35:14]
  %tmp.24.1 = add nsw i32 %sub_out.load.13, %sub_in.load.10, !dbg !73 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp.24.1, i32* %sub_out.addr, align 4, !dbg !73 ; [debug line = 35:14]
  %sub_out.load.14 = load i32* %sub_out.addr.11, align 4, !dbg !59 ; [#uses=1 type=i32] [debug line = 36:14]
  %tmp.25.1 = add nsw i32 %sub_out.load.14, %sub_in.load.11, !dbg !59 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp.25.1, i32* %sub_out.addr.11, align 4, !dbg !59 ; [debug line = 36:14]
  br label %._crit_edge.1, !dbg !74               ; [debug line = 37:10]

; <label>:13                                      ; preds = %._crit_edge.1
  %sub_out.load.15 = load i32* %sub_out.addr.7, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 40:14]
  %tmp.29.1 = add nsw i32 %sub_out.load.15, 1, !dbg !53 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp.29.1, i32* %sub_out.addr.7, align 4, !dbg !53 ; [debug line = 40:14]
  %sub_out.load.16 = load i32* %sub_out.addr.8, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 41:14]
  %tmp.30.1 = add nsw i32 %sub_out.load.16, %sub_in.load.10, !dbg !55 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp.30.1, i32* %sub_out.addr.8, align 4, !dbg !55 ; [debug line = 41:14]
  %sub_out.load.17 = load i32* %sub_out.addr.9, align 4, !dbg !56 ; [#uses=1 type=i32] [debug line = 42:14]
  %tmp.31.1 = add nsw i32 %sub_out.load.17, %sub_in.load.11, !dbg !56 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp.31.1, i32* %sub_out.addr.9, align 4, !dbg !56 ; [debug line = 42:14]
  br label %._crit_edge9.1, !dbg !75              ; [debug line = 43:10]

; <label>:14                                      ; preds = %._crit_edge9.1
  %sub_out.load.18 = load i32* %sub_out.addr.4, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 46:14]
  %tmp.33.1 = add nsw i32 %sub_out.load.18, 1, !dbg !49 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp.33.1, i32* %sub_out.addr.4, align 4, !dbg !49 ; [debug line = 46:14]
  %sub_out.load.19 = load i32* %sub_out.addr.5, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 47:14]
  %tmp.34.1 = add nsw i32 %sub_out.load.19, %sub_in.load.10, !dbg !51 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp.34.1, i32* %sub_out.addr.5, align 4, !dbg !51 ; [debug line = 47:14]
  %sub_out.load.20 = load i32* %sub_out.addr.6, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 48:14]
  %tmp.35.1 = add nsw i32 %sub_out.load.20, %sub_in.load.11, !dbg !52 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp.35.1, i32* %sub_out.addr.6, align 4, !dbg !52 ; [debug line = 48:14]
  br label %._crit_edge10.1, !dbg !76             ; [debug line = 49:10]

; <label>:15                                      ; preds = %._crit_edge10.1
  %sub_out.load.21 = load i32* %sub_out.addr.1, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 52:14]
  %tmp.36.1 = add nsw i32 %sub_out.load.21, 1, !dbg !45 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp.36.1, i32* %sub_out.addr.1, align 4, !dbg !45 ; [debug line = 52:14]
  %sub_out.load.22 = load i32* %sub_out.addr.2, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 53:14]
  %tmp.37.1 = add nsw i32 %sub_out.load.22, %sub_in.load.10, !dbg !47 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp.37.1, i32* %sub_out.addr.2, align 4, !dbg !47 ; [debug line = 53:14]
  %sub_out.load.23 = load i32* %sub_out.addr.3, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 54:14]
  %tmp.38.1 = add nsw i32 %sub_out.load.23, %sub_in.load.11, !dbg !48 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp.38.1, i32* %sub_out.addr.3, align 4, !dbg !48 ; [debug line = 54:14]
  br label %._crit_edge11.1, !dbg !77             ; [debug line = 55:10]

._crit_edge11.2:                                  ; preds = %19, %._crit_edge10.2
  %tmp.2.3 = or i11 %tmp.2, 6, !dbg !39           ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp.3.3 = zext i11 %tmp.2.3 to i64, !dbg !39   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.14 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp.3.3, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.load.14 = load i32* %sub_in.addr.14, align 4, !dbg !39 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp.4.3 = sub nsw i32 %sub_in.load.14, %sub_in.load.1, !dbg !39 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.5.3 = mul nsw i32 %tmp.4.3, %tmp.4.3, !dbg !39 ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp.6.3 = or i11 %tmp.2, 7, !dbg !39           ; [#uses=1 type=i11] [debug line = 21:9]
  %tmp.7.3 = zext i11 %tmp.6.3 to i64, !dbg !39   ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.15 = getelementptr [2056 x i32]* %sub_in, i64 0, i64 %tmp.7.3, !dbg !39 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.load.15 = load i32* %sub_in.addr.15, align 4, !dbg !39 ; [#uses=8 type=i32] [debug line = 21:9]
  %tmp.8.3 = sub nsw i32 %sub_in.load.15, %sub_in.load.3, !dbg !39 ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.9.3 = mul nsw i32 %tmp.8.3, %tmp.8.3, !dbg !39 ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0.3 = add nsw i32 %tmp.9.3, %tmp.5.3, !dbg !39 ; [#uses=5 type=i32] [debug line = 21:9]
  %tmp..3 = sub nsw i32 %sub_in.load.14, %sub_in.load.4, !dbg !42 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp.1.3 = mul nsw i32 %tmp..3, %tmp..3, !dbg !42 ; [#uses=1 type=i32] [debug line = 24:9]
  %tmp.10.3 = sub nsw i32 %sub_in.load.15, %sub_in.load.5, !dbg !42 ; [#uses=2 type=i32] [debug line = 24:9]
  %tmp.11.3 = mul nsw i32 %tmp.10.3, %tmp.10.3, !dbg !42 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1.3 = add nsw i32 %tmp.11.3, %tmp.1.3, !dbg !42 ; [#uses=5 type=i32] [debug line = 24:9]
  %tmp.12.3 = sub nsw i32 %sub_in.load.14, %sub_in.load.6, !dbg !43 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp.13.3 = mul nsw i32 %tmp.12.3, %tmp.12.3, !dbg !43 ; [#uses=1 type=i32] [debug line = 27:9]
  %tmp.14.3 = sub nsw i32 %sub_in.load.15, %sub_in.load.7, !dbg !43 ; [#uses=2 type=i32] [debug line = 27:9]
  %tmp.15.3 = mul nsw i32 %tmp.14.3, %tmp.14.3, !dbg !43 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2.3 = add nsw i32 %tmp.15.3, %tmp.13.3, !dbg !43 ; [#uses=5 type=i32] [debug line = 27:9]
  %tmp.16.3 = sub nsw i32 %sub_in.load.14, %sub_in.load.8, !dbg !44 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp.17.3 = mul nsw i32 %tmp.16.3, %tmp.16.3, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:9]
  %tmp.18.3 = sub nsw i32 %sub_in.load.15, %sub_in.load.9, !dbg !44 ; [#uses=2 type=i32] [debug line = 30:9]
  %tmp.19.3 = mul nsw i32 %tmp.18.3, %tmp.18.3, !dbg !44 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3.3 = add nsw i32 %tmp.19.3, %tmp.17.3, !dbg !44 ; [#uses=3 type=i32] [debug line = 30:9]
  %tmp.20.3 = icmp sgt i32 %dist0.3, %dist1.3, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.21.3 = icmp sgt i32 %dist0.3, %dist2.3, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.22.3 = icmp sgt i32 %dist0.3, %dist3.3, !dbg !66 ; [#uses=2 type=i1] [debug line = 33:10]
  %tmp10 = or i1 %tmp.21.3, %tmp.22.3, !dbg !66   ; [#uses=1 type=i1] [debug line = 33:10]
  %or.cond1.3 = or i1 %tmp10, %tmp.20.3, !dbg !66 ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or.cond1.3, label %._crit_edge.3, label %20, !dbg !66 ; [debug line = 33:10]

._crit_edge10.2:                                  ; preds = %18, %._crit_edge9.2
  %tmp11 = and i1 %tmp.28.2, %tmp.32.2, !dbg !67  ; [#uses=1 type=i1] [debug line = 51:10]
  %or.cond7.2 = and i1 %tmp11, %tmp.22.2, !dbg !67 ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or.cond7.2, label %19, label %._crit_edge11.2, !dbg !67 ; [debug line = 51:10]

._crit_edge9.2:                                   ; preds = %17, %._crit_edge.2
  %notlhs.2 = icmp sge i32 %dist2.2, %dist0.2, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  %notrhs.2 = icmp sge i32 %dist2.2, %dist1.2, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp.32.2 = icmp sgt i32 %dist2.2, %dist3.2, !dbg !68 ; [#uses=2 type=i1] [debug line = 45:10]
  %tmp12 = or i1 %notlhs.2, %tmp.32.2, !dbg !68   ; [#uses=1 type=i1] [debug line = 45:10]
  %or.cond5.2 = or i1 %tmp12, %notrhs.2, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or.cond5.2, label %._crit_edge10.2, label %18, !dbg !68 ; [debug line = 45:10]

._crit_edge.2:                                    ; preds = %16, %._crit_edge11.1
  %tmp.26.2 = icmp sge i32 %dist1.2, %dist0.2, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.27.2 = icmp sgt i32 %dist1.2, %dist2.2, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.28.2 = icmp sgt i32 %dist1.2, %dist3.2, !dbg !69 ; [#uses=2 type=i1] [debug line = 39:10]
  %tmp13 = or i1 %tmp.27.2, %tmp.28.2, !dbg !69   ; [#uses=1 type=i1] [debug line = 39:10]
  %or.cond3.2 = or i1 %tmp13, %tmp.26.2, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or.cond3.2, label %._crit_edge9.2, label %17, !dbg !69 ; [debug line = 39:10]

; <label>:16                                      ; preds = %._crit_edge11.1
  %sub_out.load.24 = load i32* %sub_out.addr.10, align 4, !dbg !57 ; [#uses=1 type=i32] [debug line = 34:14]
  %tmp.23.2 = add nsw i32 %sub_out.load.24, 1, !dbg !57 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp.23.2, i32* %sub_out.addr.10, align 4, !dbg !57 ; [debug line = 34:14]
  %sub_out.load.25 = load i32* %sub_out.addr, align 4, !dbg !73 ; [#uses=1 type=i32] [debug line = 35:14]
  %tmp.24.2 = add nsw i32 %sub_out.load.25, %sub_in.load.12, !dbg !73 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp.24.2, i32* %sub_out.addr, align 4, !dbg !73 ; [debug line = 35:14]
  %sub_out.load.26 = load i32* %sub_out.addr.11, align 4, !dbg !59 ; [#uses=1 type=i32] [debug line = 36:14]
  %tmp.25.2 = add nsw i32 %sub_out.load.26, %sub_in.load.13, !dbg !59 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp.25.2, i32* %sub_out.addr.11, align 4, !dbg !59 ; [debug line = 36:14]
  br label %._crit_edge.2, !dbg !74               ; [debug line = 37:10]

; <label>:17                                      ; preds = %._crit_edge.2
  %sub_out.load.27 = load i32* %sub_out.addr.7, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 40:14]
  %tmp.29.2 = add nsw i32 %sub_out.load.27, 1, !dbg !53 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp.29.2, i32* %sub_out.addr.7, align 4, !dbg !53 ; [debug line = 40:14]
  %sub_out.load.28 = load i32* %sub_out.addr.8, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 41:14]
  %tmp.30.2 = add nsw i32 %sub_out.load.28, %sub_in.load.12, !dbg !55 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp.30.2, i32* %sub_out.addr.8, align 4, !dbg !55 ; [debug line = 41:14]
  %sub_out.load.29 = load i32* %sub_out.addr.9, align 4, !dbg !56 ; [#uses=1 type=i32] [debug line = 42:14]
  %tmp.31.2 = add nsw i32 %sub_out.load.29, %sub_in.load.13, !dbg !56 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp.31.2, i32* %sub_out.addr.9, align 4, !dbg !56 ; [debug line = 42:14]
  br label %._crit_edge9.2, !dbg !75              ; [debug line = 43:10]

; <label>:18                                      ; preds = %._crit_edge9.2
  %sub_out.load.30 = load i32* %sub_out.addr.4, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 46:14]
  %tmp.33.2 = add nsw i32 %sub_out.load.30, 1, !dbg !49 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp.33.2, i32* %sub_out.addr.4, align 4, !dbg !49 ; [debug line = 46:14]
  %sub_out.load.31 = load i32* %sub_out.addr.5, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 47:14]
  %tmp.34.2 = add nsw i32 %sub_out.load.31, %sub_in.load.12, !dbg !51 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp.34.2, i32* %sub_out.addr.5, align 4, !dbg !51 ; [debug line = 47:14]
  %sub_out.load.32 = load i32* %sub_out.addr.6, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 48:14]
  %tmp.35.2 = add nsw i32 %sub_out.load.32, %sub_in.load.13, !dbg !52 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp.35.2, i32* %sub_out.addr.6, align 4, !dbg !52 ; [debug line = 48:14]
  br label %._crit_edge10.2, !dbg !76             ; [debug line = 49:10]

; <label>:19                                      ; preds = %._crit_edge10.2
  %sub_out.load.33 = load i32* %sub_out.addr.1, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 52:14]
  %tmp.36.2 = add nsw i32 %sub_out.load.33, 1, !dbg !45 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp.36.2, i32* %sub_out.addr.1, align 4, !dbg !45 ; [debug line = 52:14]
  %sub_out.load.34 = load i32* %sub_out.addr.2, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 53:14]
  %tmp.37.2 = add nsw i32 %sub_out.load.34, %sub_in.load.12, !dbg !47 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp.37.2, i32* %sub_out.addr.2, align 4, !dbg !47 ; [debug line = 53:14]
  %sub_out.load.35 = load i32* %sub_out.addr.3, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 54:14]
  %tmp.38.2 = add nsw i32 %sub_out.load.35, %sub_in.load.13, !dbg !48 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp.38.2, i32* %sub_out.addr.3, align 4, !dbg !48 ; [debug line = 54:14]
  br label %._crit_edge11.2, !dbg !77             ; [debug line = 55:10]

._crit_edge11.3:                                  ; preds = %23, %._crit_edge10.3
  %i.3.3 = add i11 %i., 4, !dbg !78               ; [#uses=1 type=i11] [debug line = 20:38]
  br label %4, !dbg !78                           ; [debug line = 20:38]

._crit_edge10.3:                                  ; preds = %22, %._crit_edge9.3
  %tmp14 = and i1 %tmp.28.3, %tmp.32.3, !dbg !67  ; [#uses=1 type=i1] [debug line = 51:10]
  %or.cond7.3 = and i1 %tmp14, %tmp.22.3, !dbg !67 ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or.cond7.3, label %23, label %._crit_edge11.3, !dbg !67 ; [debug line = 51:10]

._crit_edge9.3:                                   ; preds = %21, %._crit_edge.3
  %notlhs.3 = icmp sge i32 %dist2.3, %dist0.3, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  %notrhs.3 = icmp sge i32 %dist2.3, %dist1.3, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp.32.3 = icmp sgt i32 %dist2.3, %dist3.3, !dbg !68 ; [#uses=2 type=i1] [debug line = 45:10]
  %tmp15 = or i1 %notlhs.3, %tmp.32.3, !dbg !68   ; [#uses=1 type=i1] [debug line = 45:10]
  %or.cond5.3 = or i1 %tmp15, %notrhs.3, !dbg !68 ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or.cond5.3, label %._crit_edge10.3, label %22, !dbg !68 ; [debug line = 45:10]

._crit_edge.3:                                    ; preds = %20, %._crit_edge11.2
  %tmp.26.3 = icmp sge i32 %dist1.3, %dist0.3, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.27.3 = icmp sgt i32 %dist1.3, %dist2.3, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.28.3 = icmp sgt i32 %dist1.3, %dist3.3, !dbg !69 ; [#uses=2 type=i1] [debug line = 39:10]
  %tmp16 = or i1 %tmp.27.3, %tmp.28.3, !dbg !69   ; [#uses=1 type=i1] [debug line = 39:10]
  %or.cond3.3 = or i1 %tmp16, %tmp.26.3, !dbg !69 ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or.cond3.3, label %._crit_edge9.3, label %21, !dbg !69 ; [debug line = 39:10]

; <label>:20                                      ; preds = %._crit_edge11.2
  %sub_out.load.36 = load i32* %sub_out.addr.10, align 4, !dbg !57 ; [#uses=1 type=i32] [debug line = 34:14]
  %tmp.23.3 = add nsw i32 %sub_out.load.36, 1, !dbg !57 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp.23.3, i32* %sub_out.addr.10, align 4, !dbg !57 ; [debug line = 34:14]
  %sub_out.load.37 = load i32* %sub_out.addr, align 4, !dbg !73 ; [#uses=1 type=i32] [debug line = 35:14]
  %tmp.24.3 = add nsw i32 %sub_out.load.37, %sub_in.load.14, !dbg !73 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp.24.3, i32* %sub_out.addr, align 4, !dbg !73 ; [debug line = 35:14]
  %sub_out.load.38 = load i32* %sub_out.addr.11, align 4, !dbg !59 ; [#uses=1 type=i32] [debug line = 36:14]
  %tmp.25.3 = add nsw i32 %sub_out.load.38, %sub_in.load.15, !dbg !59 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp.25.3, i32* %sub_out.addr.11, align 4, !dbg !59 ; [debug line = 36:14]
  br label %._crit_edge.3, !dbg !74               ; [debug line = 37:10]

; <label>:21                                      ; preds = %._crit_edge.3
  %sub_out.load.39 = load i32* %sub_out.addr.7, align 4, !dbg !53 ; [#uses=1 type=i32] [debug line = 40:14]
  %tmp.29.3 = add nsw i32 %sub_out.load.39, 1, !dbg !53 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp.29.3, i32* %sub_out.addr.7, align 4, !dbg !53 ; [debug line = 40:14]
  %sub_out.load.40 = load i32* %sub_out.addr.8, align 4, !dbg !55 ; [#uses=1 type=i32] [debug line = 41:14]
  %tmp.30.3 = add nsw i32 %sub_out.load.40, %sub_in.load.14, !dbg !55 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp.30.3, i32* %sub_out.addr.8, align 4, !dbg !55 ; [debug line = 41:14]
  %sub_out.load.41 = load i32* %sub_out.addr.9, align 4, !dbg !56 ; [#uses=1 type=i32] [debug line = 42:14]
  %tmp.31.3 = add nsw i32 %sub_out.load.41, %sub_in.load.15, !dbg !56 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp.31.3, i32* %sub_out.addr.9, align 4, !dbg !56 ; [debug line = 42:14]
  br label %._crit_edge9.3, !dbg !75              ; [debug line = 43:10]

; <label>:22                                      ; preds = %._crit_edge9.3
  %sub_out.load.42 = load i32* %sub_out.addr.4, align 4, !dbg !49 ; [#uses=1 type=i32] [debug line = 46:14]
  %tmp.33.3 = add nsw i32 %sub_out.load.42, 1, !dbg !49 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp.33.3, i32* %sub_out.addr.4, align 4, !dbg !49 ; [debug line = 46:14]
  %sub_out.load.43 = load i32* %sub_out.addr.5, align 4, !dbg !51 ; [#uses=1 type=i32] [debug line = 47:14]
  %tmp.34.3 = add nsw i32 %sub_out.load.43, %sub_in.load.14, !dbg !51 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp.34.3, i32* %sub_out.addr.5, align 4, !dbg !51 ; [debug line = 47:14]
  %sub_out.load.44 = load i32* %sub_out.addr.6, align 4, !dbg !52 ; [#uses=1 type=i32] [debug line = 48:14]
  %tmp.35.3 = add nsw i32 %sub_out.load.44, %sub_in.load.15, !dbg !52 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp.35.3, i32* %sub_out.addr.6, align 4, !dbg !52 ; [debug line = 48:14]
  br label %._crit_edge10.3, !dbg !76             ; [debug line = 49:10]

; <label>:23                                      ; preds = %._crit_edge10.3
  %sub_out.load.45 = load i32* %sub_out.addr.1, align 4, !dbg !45 ; [#uses=1 type=i32] [debug line = 52:14]
  %tmp.36.3 = add nsw i32 %sub_out.load.45, 1, !dbg !45 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp.36.3, i32* %sub_out.addr.1, align 4, !dbg !45 ; [debug line = 52:14]
  %sub_out.load.46 = load i32* %sub_out.addr.2, align 4, !dbg !47 ; [#uses=1 type=i32] [debug line = 53:14]
  %tmp.37.3 = add nsw i32 %sub_out.load.46, %sub_in.load.14, !dbg !47 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp.37.3, i32* %sub_out.addr.2, align 4, !dbg !47 ; [debug line = 53:14]
  %sub_out.load.47 = load i32* %sub_out.addr.3, align 4, !dbg !48 ; [#uses=1 type=i32] [debug line = 54:14]
  %tmp.38.3 = add nsw i32 %sub_out.load.47, %sub_in.load.15, !dbg !48 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp.38.3, i32* %sub_out.addr.3, align 4, !dbg !48 ; [debug line = 54:14]
  br label %._crit_edge11.3, !dbg !77             ; [debug line = 55:10]

; <label>:24                                      ; preds = %4
  ret void, !dbg !79                              ; [debug line = 58:1]
}

; [#uses=2]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

!llvm.dbg.cu = !{!0}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"D:/minibench/customization/kmean-small/unroll-20/.autopilot/db/kmean_ip.pragma.2.c", metadata !"d:/minibench/customization", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kmean_ip", metadata !"kmean_ip", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kmean-small/src/kmean_ip.c", metadata !"d:/minibench/customization", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"sub_in", metadata !17, metadata !"int"}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 2055, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"sub_out", metadata !23, metadata !"int"}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 11, i32 1}
!25 = metadata !{i32 786689, metadata !5, metadata !"sub_in", null, i32 3, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 65792, i64 32, i32 0, i32 0, metadata !10, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 2055}     ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 3, i32 19, metadata !5, null}
!30 = metadata !{i32 786689, metadata !5, metadata !"sub_out", null, i32 3, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!31 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 384, i64 32, i32 0, i32 0, metadata !10, metadata !32, i32 0, i32 0} ; [ DW_TAG_array_type ]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 11}       ; [ DW_TAG_subrange_type ]
!34 = metadata !{i32 3, i32 44, metadata !5, null}
!35 = metadata !{i32 4, i32 1, metadata !36, null}
!36 = metadata !{i32 786443, metadata !5, i32 3, i32 60, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!37 = metadata !{i32 17, i32 9, metadata !38, null}
!38 = metadata !{i32 786443, metadata !36, i32 17, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 21, i32 9, metadata !40, null}
!40 = metadata !{i32 786443, metadata !41, i32 20, i32 42, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 786443, metadata !36, i32 20, i32 21, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!42 = metadata !{i32 24, i32 9, metadata !40, null}
!43 = metadata !{i32 27, i32 9, metadata !40, null}
!44 = metadata !{i32 30, i32 9, metadata !40, null}
!45 = metadata !{i32 52, i32 14, metadata !46, null}
!46 = metadata !{i32 786443, metadata !40, i32 51, i32 55, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 53, i32 14, metadata !46, null}
!48 = metadata !{i32 54, i32 14, metadata !46, null}
!49 = metadata !{i32 46, i32 14, metadata !50, null}
!50 = metadata !{i32 786443, metadata !40, i32 45, i32 56, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!51 = metadata !{i32 47, i32 14, metadata !50, null}
!52 = metadata !{i32 48, i32 14, metadata !50, null}
!53 = metadata !{i32 40, i32 14, metadata !54, null}
!54 = metadata !{i32 786443, metadata !40, i32 39, i32 57, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 41, i32 14, metadata !54, null}
!56 = metadata !{i32 42, i32 14, metadata !54, null}
!57 = metadata !{i32 34, i32 14, metadata !58, null}
!58 = metadata !{i32 786443, metadata !40, i32 33, i32 58, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 36, i32 14, metadata !58, null}
!60 = metadata !{i32 20, i32 25, metadata !41, null}
!61 = metadata !{i32 18, i32 9, metadata !62, null}
!62 = metadata !{i32 786443, metadata !38, i32 17, i32 28, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 17, i32 24, metadata !38, null}
!64 = metadata !{i32 786688, metadata !36, metadata !"i", metadata !6, i32 4, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!65 = metadata !{i32 56, i32 5, metadata !40, null}
!66 = metadata !{i32 33, i32 10, metadata !40, null}
!67 = metadata !{i32 51, i32 10, metadata !40, null}
!68 = metadata !{i32 45, i32 10, metadata !40, null}
!69 = metadata !{i32 39, i32 10, metadata !40, null}
!70 = metadata !{i32 20, i32 43, metadata !40, null}
!71 = metadata !{i32 20, i32 84, metadata !40, null}
!72 = metadata !{i32 21, i32 1, metadata !40, null}
!73 = metadata !{i32 35, i32 14, metadata !58, null}
!74 = metadata !{i32 37, i32 10, metadata !58, null}
!75 = metadata !{i32 43, i32 10, metadata !54, null}
!76 = metadata !{i32 49, i32 10, metadata !50, null}
!77 = metadata !{i32 55, i32 10, metadata !46, null}
!78 = metadata !{i32 20, i32 38, metadata !41, null}
!79 = metadata !{i32 58, i32 1, metadata !36, null}
