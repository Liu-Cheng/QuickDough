; ModuleID = 'D:/minibench/customization/sobel_small/unroll-1x2x3x3/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [16 x i8] c"sobel_ip_label3\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str5 = private unnamed_addr constant [16 x i8] c"sobel_ip_label2\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str6 = private unnamed_addr constant [16 x i8] c"sobel_ip_label1\00", align 1 ; [#uses=1 type=[16 x i8]*]
@.str7 = private unnamed_addr constant [16 x i8] c"sobel_ip_label0\00", align 1 ; [#uses=1 type=[16 x i8]*]
@str = internal constant [9 x i8] c"sobel_ip\00"  ; [#uses=1 type=[9 x i8]*]

; [#uses=0]
define void @sobel_ip(i32* %sub_in, i32* %sub_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  %Gx = alloca [3 x [3 x i32]], align 16          ; [#uses=5 type=[3 x [3 x i32]]*]
  %Gy = alloca [3 x [3 x i32]], align 16          ; [#uses=5 type=[3 x [3 x i32]]*]
  call void @llvm.dbg.value(metadata !{i32* %sub_in}, i64 0, metadata !13), !dbg !14 ; [debug line = 3:19] [debug variable = sub_in]
  call void @llvm.dbg.value(metadata !{i32* %sub_out}, i64 0, metadata !15), !dbg !16 ; [debug line = 3:43] [debug variable = sub_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %sub_in, i32 274), !dbg !17 ; [debug line = 3:61]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %sub_out, i32 256), !dbg !19 ; [debug line = 3:103]
  call void (...)* @_ssdm_op_SpecResource(i32* %sub_out, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !20 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(i32* %sub_in, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !20 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)), !dbg !20 ; [debug line = 4:1]
  %In_Ptr = bitcast i32* %sub_in to i8*, !dbg !21 ; [#uses=4 type=i8*] [debug line = 10:46]
  call void @llvm.dbg.value(metadata !{i8* %In_Ptr}, i64 0, metadata !22), !dbg !21 ; [debug line = 10:46] [debug variable = In_Ptr]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i32]]* %Gx}, metadata !25), !dbg !29 ; [debug line = 12:6] [debug variable = Gx]
  call void @llvm.dbg.declare(metadata !{[3 x [3 x i32]]* %Gy}, metadata !30), !dbg !31 ; [debug line = 13:6] [debug variable = Gy]
  br label %1, !dbg !32                           ; [debug line = 15:6]

; <label>:1                                       ; preds = %4, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %4 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i, 3, !dbg !32        ; [#uses=1 type=i1] [debug line = 15:6]
  br i1 %exitcond1, label %.preheader.preheader, label %.preheader10, !dbg !32 ; [debug line = 15:6]

.preheader.preheader:                             ; preds = %1
  br label %.preheader, !dbg !34                  ; [debug line = 22:22]

.preheader10:                                     ; preds = %1
  %tmp = mul nsw i32 %i, 3, !dbg !36              ; [#uses=2 type=i32] [debug line = 17:4]
  %tmp.1 = add i32 %tmp, 256, !dbg !36            ; [#uses=1 type=i32] [debug line = 17:4]
  %tmp.2 = sext i32 %i to i64, !dbg !36           ; [#uses=2 type=i64] [debug line = 17:4]
  %tmp.3 = add i32 %tmp, 265, !dbg !40            ; [#uses=1 type=i32] [debug line = 18:4]
  br label %2, !dbg !41                           ; [debug line = 16:7]

; <label>:2                                       ; preds = %3, %.preheader10
  %j = phi i32 [ %j.2, %3 ], [ 0, %.preheader10 ] ; [#uses=5 type=i32]
  %exitcond3 = icmp eq i32 %j, 3, !dbg !41        ; [#uses=1 type=i1] [debug line = 16:7]
  br i1 %exitcond3, label %4, label %3, !dbg !41  ; [debug line = 16:7]

; <label>:3                                       ; preds = %2
  %tmp.8 = add i32 %tmp.1, %j, !dbg !36           ; [#uses=1 type=i32] [debug line = 17:4]
  %tmp.9 = sext i32 %tmp.8 to i64, !dbg !36       ; [#uses=1 type=i64] [debug line = 17:4]
  %sub_in.addr = getelementptr inbounds i32* %sub_in, i64 %tmp.9, !dbg !36 ; [#uses=1 type=i32*] [debug line = 17:4]
  %sub_in.load = load i32* %sub_in.addr, align 4, !dbg !36 ; [#uses=2 type=i32] [debug line = 17:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  %tmp.10 = sext i32 %j to i64, !dbg !36          ; [#uses=2 type=i64] [debug line = 17:4]
  %Gx.addr = getelementptr inbounds [3 x [3 x i32]]* %Gx, i64 0, i64 %tmp.2, i64 %tmp.10, !dbg !36 ; [#uses=1 type=i32*] [debug line = 17:4]
  store i32 %sub_in.load, i32* %Gx.addr, align 4, !dbg !36 ; [debug line = 17:4]
  %tmp.11 = add i32 %tmp.3, %j, !dbg !40          ; [#uses=1 type=i32] [debug line = 18:4]
  %tmp.12 = sext i32 %tmp.11 to i64, !dbg !40     ; [#uses=1 type=i64] [debug line = 18:4]
  %sub_in.addr.1 = getelementptr inbounds i32* %sub_in, i64 %tmp.12, !dbg !40 ; [#uses=1 type=i32*] [debug line = 18:4]
  %sub_in.load.1 = load i32* %sub_in.addr.1, align 4, !dbg !40 ; [#uses=2 type=i32] [debug line = 18:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.1) nounwind
  %Gy.addr = getelementptr inbounds [3 x [3 x i32]]* %Gy, i64 0, i64 %tmp.2, i64 %tmp.10, !dbg !40 ; [#uses=1 type=i32*] [debug line = 18:4]
  store i32 %sub_in.load.1, i32* %Gy.addr, align 4, !dbg !40 ; [debug line = 18:4]
  %j.2 = add nsw i32 %j, 1, !dbg !42              ; [#uses=1 type=i32] [debug line = 16:17]
  call void @llvm.dbg.value(metadata !{i32 %j.2}, i64 0, metadata !43), !dbg !42 ; [debug line = 16:17] [debug variable = j]
  br label %2, !dbg !42                           ; [debug line = 16:17]

; <label>:4                                       ; preds = %2
  %i.2 = add nsw i32 %i, 1, !dbg !44              ; [#uses=1 type=i32] [debug line = 15:16]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !45), !dbg !44 ; [debug line = 15:16] [debug variable = i]
  br label %1, !dbg !44                           ; [debug line = 15:16]

.preheader:                                       ; preds = %21, %.preheader.preheader
  %i.1 = phi i32 [ %i.3, %21 ], [ 0, %.preheader.preheader ] ; [#uses=9 type=i32]
  %exitcond2 = icmp eq i32 %i.1, 128, !dbg !34    ; [#uses=1 type=i1] [debug line = 22:22]
  br i1 %exitcond2, label %22, label %5, !dbg !34 ; [debug line = 22:22]

; <label>:5                                       ; preds = %.preheader
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)), !dbg !46 ; [debug line = 22:41]
  %rbegin1 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !48 ; [#uses=1 type=i32] [debug line = 22:82]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !49 ; [debug line = 23:1]
  %tmp.4 = icmp eq i32 %i.1, 0, !dbg !50          ; [#uses=1 type=i1] [debug line = 44:6]
  %tmp.5 = icmp eq i32 %i.1, 127, !dbg !50        ; [#uses=1 type=i1] [debug line = 44:6]
  %tmp.6 = shl i32 %i.1, 3, !dbg !57              ; [#uses=1 type=i32] [debug line = 100:4]
  br label %6, !dbg !58                           ; [debug line = 23:23]

; <label>:6                                       ; preds = %20, %5
  %j.1 = phi i32 [ 0, %5 ], [ %j.3, %20 ]         ; [#uses=9 type=i32]
  %tmp.14 = icmp slt i32 %j.1, 8, !dbg !58        ; [#uses=1 type=i1] [debug line = 23:23]
  br i1 %tmp.14, label %7, label %21, !dbg !58    ; [debug line = 23:23]

; <label>:7                                       ; preds = %6
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)), !dbg !59 ; [debug line = 23:40]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !60 ; [#uses=1 type=i32] [debug line = 23:81]
  call void (...)* @_ssdm_Unroll(i32 1, i32 4, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !61 ; [debug line = 24:1]
  %tmp.15 = icmp eq i32 %j.1, 0, !dbg !50         ; [#uses=1 type=i1] [debug line = 44:6]
  %or.cond = or i1 %tmp.4, %tmp.15, !dbg !50      ; [#uses=1 type=i1] [debug line = 44:6]
  %or.cond1 = or i1 %or.cond, %tmp.5, !dbg !50    ; [#uses=1 type=i1] [debug line = 44:6]
  %tmp.16 = icmp eq i32 %j.1, 7, !dbg !50         ; [#uses=1 type=i1] [debug line = 44:6]
  %or.cond2 = or i1 %or.cond1, %tmp.16, !dbg !50  ; [#uses=1 type=i1] [debug line = 44:6]
  %tmp.17 = or i32 %j.1, 1, !dbg !62              ; [#uses=1 type=i32] [debug line = 53:6]
  %tmp.18 = icmp eq i32 %tmp.17, 7, !dbg !62      ; [#uses=1 type=i1] [debug line = 53:6]
  %tmp.19 = or i32 %j.1, 2, !dbg !63              ; [#uses=1 type=i32] [debug line = 62:6]
  %tmp.20 = icmp eq i32 %tmp.19, 7, !dbg !63      ; [#uses=1 type=i1] [debug line = 62:6]
  %tmp.21 = or i32 %j.1, 3, !dbg !64              ; [#uses=1 type=i32] [debug line = 71:6]
  %tmp.22 = icmp eq i32 %tmp.21, 7, !dbg !64      ; [#uses=1 type=i1] [debug line = 71:6]
  br label %8, !dbg !65                           ; [debug line = 42:24]

; <label>:8                                       ; preds = %19, %7
  %sumy2 = phi i32 [ 0, %7 ], [ %sumy2.1.lcssa, %19 ] ; [#uses=2 type=i32]
  %sumx2 = phi i32 [ 0, %7 ], [ %sumx2.1.lcssa, %19 ] ; [#uses=2 type=i32]
  %sumy1 = phi i32 [ 0, %7 ], [ %sumy1.1.lcssa, %19 ] ; [#uses=2 type=i32]
  %sumx1 = phi i32 [ 0, %7 ], [ %sumx1.1.lcssa, %19 ] ; [#uses=2 type=i32]
  %sumy0 = phi i32 [ 0, %7 ], [ %sumy0.1.lcssa, %19 ] ; [#uses=2 type=i32]
  %sumx0 = phi i32 [ 0, %7 ], [ %sumx0.1.lcssa, %19 ] ; [#uses=2 type=i32]
  %sumx3 = phi i32 [ 0, %7 ], [ %sumx3.1.lcssa, %19 ] ; [#uses=2 type=i32]
  %p = phi i32 [ -1, %7 ], [ %p.1, %19 ]          ; [#uses=3 type=i32]
  %sumy3 = phi i32 [ 0, %7 ], [ %sumy3.1.lcssa, %19 ] ; [#uses=2 type=i32]
  %exitcond4 = icmp eq i32 %p, 2, !dbg !65        ; [#uses=1 type=i1] [debug line = 42:24]
  br i1 %exitcond4, label %20, label %9, !dbg !65 ; [debug line = 42:24]

; <label>:9                                       ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)), !dbg !66 ; [debug line = 42:41]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !67 ; [#uses=1 type=i32] [debug line = 42:82]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !68 ; [debug line = 43:1]
  %tmp.45 = add nsw i32 %p, %i.1, !dbg !69        ; [#uses=1 type=i32] [debug line = 58:7]
  %tmp.46 = shl i32 %tmp.45, 3, !dbg !69          ; [#uses=1 type=i32] [debug line = 58:7]
  %tmp.47 = add nsw i32 %tmp.46, %j.1, !dbg !69   ; [#uses=4 type=i32] [debug line = 58:7]
  %tmp.48 = or i32 %tmp.47, 1, !dbg !69           ; [#uses=1 type=i32] [debug line = 58:7]
  %p.1 = add nsw i32 %p, 1, !dbg !69              ; [#uses=2 type=i32] [debug line = 58:7]
  %tmp.50 = sext i32 %p.1 to i64, !dbg !69        ; [#uses=8 type=i64] [debug line = 58:7]
  %tmp.51 = or i32 %tmp.47, 2, !dbg !71           ; [#uses=1 type=i32] [debug line = 67:7]
  %tmp.52 = or i32 %tmp.47, 3, !dbg !73           ; [#uses=1 type=i32] [debug line = 76:7]
  br label %10, !dbg !75                          ; [debug line = 43:25]

; <label>:10                                      ; preds = %._crit_edge22, %9
  %sumy2.1 = phi i32 [ %sumy2, %9 ], [ %sumy2.2, %._crit_edge22 ] ; [#uses=2 type=i32]
  %sumx2.1 = phi i32 [ %sumx2, %9 ], [ %sumx2.2, %._crit_edge22 ] ; [#uses=2 type=i32]
  %sumy1.1 = phi i32 [ %sumy1, %9 ], [ %sumy1.2, %._crit_edge22 ] ; [#uses=2 type=i32]
  %sumx1.1 = phi i32 [ %sumx1, %9 ], [ %sumx1.2, %._crit_edge22 ] ; [#uses=2 type=i32]
  %sumy0.1 = phi i32 [ %sumy0, %9 ], [ %sumy0.2, %._crit_edge22 ] ; [#uses=2 type=i32]
  %sumx0.1 = phi i32 [ %sumx0, %9 ], [ %sumx0.2, %._crit_edge22 ] ; [#uses=2 type=i32]
  %sumx3.1 = phi i32 [ %sumx3, %9 ], [ %sumx3.2, %._crit_edge22 ] ; [#uses=2 type=i32]
  %q = phi i32 [ -1, %9 ], [ %q.1, %._crit_edge22 ] ; [#uses=10 type=i32]
  %sumy3.1 = phi i32 [ %sumy3, %9 ], [ %sumy3.2, %._crit_edge22 ] ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %q, 2, !dbg !75         ; [#uses=1 type=i1] [debug line = 43:25]
  br i1 %exitcond, label %19, label %11, !dbg !75 ; [debug line = 43:25]

; <label>:11                                      ; preds = %10
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)), !dbg !76 ; [debug line = 43:42]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0)) nounwind, !dbg !77 ; [#uses=1 type=i32] [debug line = 43:83]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !78 ; [debug line = 44:1]
  br i1 %or.cond2, label %._crit_edge, label %12, !dbg !50 ; [debug line = 44:6]

; <label>:12                                      ; preds = %11
  %tmp.53 = add i32 %tmp.47, %q, !dbg !79         ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.54 = sext i32 %tmp.53 to i64, !dbg !79     ; [#uses=1 type=i64] [debug line = 49:7]
  %In_Ptr.addr = getelementptr inbounds i8* %In_Ptr, i64 %tmp.54, !dbg !79 ; [#uses=1 type=i8*] [debug line = 49:7]
  %In_Ptr.load = load i8* %In_Ptr.addr, align 1, !dbg !79 ; [#uses=3 type=i8] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %In_Ptr.load) nounwind
  %tmp.55 = zext i8 %In_Ptr.load to i32, !dbg !79 ; [#uses=2 type=i32] [debug line = 49:7]
  %tmp.56 = add nsw i32 %q, 1, !dbg !79           ; [#uses=1 type=i32] [debug line = 49:7]
  %tmp.57 = sext i32 %tmp.56 to i64, !dbg !79     ; [#uses=2 type=i64] [debug line = 49:7]
  %Gx.addr.1 = getelementptr inbounds [3 x [3 x i32]]* %Gx, i64 0, i64 %tmp.50, i64 %tmp.57, !dbg !79 ; [#uses=1 type=i32*] [debug line = 49:7]
  %Gx.load = load i32* %Gx.addr.1, align 4, !dbg !79 ; [#uses=2 type=i32] [debug line = 49:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Gx.load) nounwind
  %tmp.58 = mul nsw i32 %Gx.load, %tmp.55, !dbg !79 ; [#uses=1 type=i32] [debug line = 49:7]
  %sumx0.3 = add nsw i32 %tmp.58, %sumx0.1, !dbg !79 ; [#uses=1 type=i32] [debug line = 49:7]
  call void @llvm.dbg.value(metadata !{i32 %sumx0.3}, i64 0, metadata !81), !dbg !79 ; [debug line = 49:7] [debug variable = sumx0]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %In_Ptr.load) nounwind
  %Gy.addr.1 = getelementptr inbounds [3 x [3 x i32]]* %Gy, i64 0, i64 %tmp.50, i64 %tmp.57, !dbg !82 ; [#uses=1 type=i32*] [debug line = 50:7]
  %Gy.load = load i32* %Gy.addr.1, align 4, !dbg !82 ; [#uses=2 type=i32] [debug line = 50:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Gy.load) nounwind
  %tmp.60 = mul nsw i32 %Gy.load, %tmp.55, !dbg !82 ; [#uses=1 type=i32] [debug line = 50:7]
  %sumy0.3 = add nsw i32 %tmp.60, %sumy0.1, !dbg !82 ; [#uses=1 type=i32] [debug line = 50:7]
  call void @llvm.dbg.value(metadata !{i32 %sumy0.3}, i64 0, metadata !83), !dbg !82 ; [debug line = 50:7] [debug variable = sumy0]
  br label %._crit_edge

._crit_edge:                                      ; preds = %12, %11
  %sumy0.2 = phi i32 [ %sumy0.3, %12 ], [ 255, %11 ] ; [#uses=1 type=i32]
  %sumx0.2 = phi i32 [ %sumx0.3, %12 ], [ 255, %11 ] ; [#uses=1 type=i32]
  switch i32 %i.1, label %13 [
    i32 127, label %._crit_edge16
    i32 0, label %._crit_edge16
  ], !dbg !62                                     ; [debug line = 53:6]

; <label>:13                                      ; preds = %._crit_edge
  br i1 %tmp.18, label %._crit_edge16, label %14, !dbg !62 ; [debug line = 53:6]

; <label>:14                                      ; preds = %13
  %tmp.62 = add nsw i32 %q, %tmp.48, !dbg !69     ; [#uses=1 type=i32] [debug line = 58:7]
  %tmp.63 = sext i32 %tmp.62 to i64, !dbg !69     ; [#uses=1 type=i64] [debug line = 58:7]
  %In_Ptr.addr.1 = getelementptr inbounds i8* %In_Ptr, i64 %tmp.63, !dbg !69 ; [#uses=1 type=i8*] [debug line = 58:7]
  %In_Ptr.load.1 = load i8* %In_Ptr.addr.1, align 1, !dbg !69 ; [#uses=3 type=i8] [debug line = 58:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %In_Ptr.load.1) nounwind
  %tmp.64 = zext i8 %In_Ptr.load.1 to i32, !dbg !69 ; [#uses=2 type=i32] [debug line = 58:7]
  %tmp.65 = add nsw i32 %q, 1, !dbg !69           ; [#uses=1 type=i32] [debug line = 58:7]
  %tmp.66 = sext i32 %tmp.65 to i64, !dbg !69     ; [#uses=2 type=i64] [debug line = 58:7]
  %Gx.addr.2 = getelementptr inbounds [3 x [3 x i32]]* %Gx, i64 0, i64 %tmp.50, i64 %tmp.66, !dbg !69 ; [#uses=1 type=i32*] [debug line = 58:7]
  %Gx.load.1 = load i32* %Gx.addr.2, align 4, !dbg !69 ; [#uses=2 type=i32] [debug line = 58:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Gx.load.1) nounwind
  %tmp.67 = mul nsw i32 %Gx.load.1, %tmp.64, !dbg !69 ; [#uses=1 type=i32] [debug line = 58:7]
  %sumx1.3 = add nsw i32 %tmp.67, %sumx1.1, !dbg !69 ; [#uses=1 type=i32] [debug line = 58:7]
  call void @llvm.dbg.value(metadata !{i32 %sumx1.3}, i64 0, metadata !84), !dbg !69 ; [debug line = 58:7] [debug variable = sumx1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %In_Ptr.load.1) nounwind
  %Gy.addr.2 = getelementptr inbounds [3 x [3 x i32]]* %Gy, i64 0, i64 %tmp.50, i64 %tmp.66, !dbg !85 ; [#uses=1 type=i32*] [debug line = 59:7]
  %Gy.load.1 = load i32* %Gy.addr.2, align 4, !dbg !85 ; [#uses=2 type=i32] [debug line = 59:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Gy.load.1) nounwind
  %tmp.69 = mul nsw i32 %Gy.load.1, %tmp.64, !dbg !85 ; [#uses=1 type=i32] [debug line = 59:7]
  %sumy1.3 = add nsw i32 %tmp.69, %sumy1.1, !dbg !85 ; [#uses=1 type=i32] [debug line = 59:7]
  call void @llvm.dbg.value(metadata !{i32 %sumy1.3}, i64 0, metadata !86), !dbg !85 ; [debug line = 59:7] [debug variable = sumy1]
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %14, %13, %._crit_edge, %._crit_edge
  %sumy1.2 = phi i32 [ %sumy1.3, %14 ], [ 255, %._crit_edge ], [ 255, %._crit_edge ], [ 255, %13 ] ; [#uses=1 type=i32]
  %sumx1.2 = phi i32 [ %sumx1.3, %14 ], [ 255, %._crit_edge ], [ 255, %._crit_edge ], [ 255, %13 ] ; [#uses=1 type=i32]
  switch i32 %i.1, label %15 [
    i32 127, label %._crit_edge19
    i32 0, label %._crit_edge19
  ], !dbg !63                                     ; [debug line = 62:6]

; <label>:15                                      ; preds = %._crit_edge16
  br i1 %tmp.20, label %._crit_edge19, label %16, !dbg !63 ; [debug line = 62:6]

; <label>:16                                      ; preds = %15
  %tmp.71 = add nsw i32 %q, %tmp.51, !dbg !71     ; [#uses=1 type=i32] [debug line = 67:7]
  %tmp.72 = sext i32 %tmp.71 to i64, !dbg !71     ; [#uses=1 type=i64] [debug line = 67:7]
  %In_Ptr.addr.2 = getelementptr inbounds i8* %In_Ptr, i64 %tmp.72, !dbg !71 ; [#uses=1 type=i8*] [debug line = 67:7]
  %In_Ptr.load.2 = load i8* %In_Ptr.addr.2, align 1, !dbg !71 ; [#uses=3 type=i8] [debug line = 67:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %In_Ptr.load.2) nounwind
  %tmp.73 = zext i8 %In_Ptr.load.2 to i32, !dbg !71 ; [#uses=2 type=i32] [debug line = 67:7]
  %tmp.74 = add nsw i32 %q, 1, !dbg !71           ; [#uses=1 type=i32] [debug line = 67:7]
  %tmp.75 = sext i32 %tmp.74 to i64, !dbg !71     ; [#uses=2 type=i64] [debug line = 67:7]
  %Gx.addr.3 = getelementptr inbounds [3 x [3 x i32]]* %Gx, i64 0, i64 %tmp.50, i64 %tmp.75, !dbg !71 ; [#uses=1 type=i32*] [debug line = 67:7]
  %Gx.load.2 = load i32* %Gx.addr.3, align 4, !dbg !71 ; [#uses=2 type=i32] [debug line = 67:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Gx.load.2) nounwind
  %tmp.76 = mul nsw i32 %Gx.load.2, %tmp.73, !dbg !71 ; [#uses=1 type=i32] [debug line = 67:7]
  %sumx2.3 = add nsw i32 %tmp.76, %sumx2.1, !dbg !71 ; [#uses=1 type=i32] [debug line = 67:7]
  call void @llvm.dbg.value(metadata !{i32 %sumx2.3}, i64 0, metadata !87), !dbg !71 ; [debug line = 67:7] [debug variable = sumx2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %In_Ptr.load.2) nounwind
  %Gy.addr.3 = getelementptr inbounds [3 x [3 x i32]]* %Gy, i64 0, i64 %tmp.50, i64 %tmp.75, !dbg !88 ; [#uses=1 type=i32*] [debug line = 68:7]
  %Gy.load.2 = load i32* %Gy.addr.3, align 4, !dbg !88 ; [#uses=2 type=i32] [debug line = 68:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Gy.load.2) nounwind
  %tmp.78 = mul nsw i32 %Gy.load.2, %tmp.73, !dbg !88 ; [#uses=1 type=i32] [debug line = 68:7]
  %sumy2.3 = add nsw i32 %tmp.78, %sumy2.1, !dbg !88 ; [#uses=1 type=i32] [debug line = 68:7]
  call void @llvm.dbg.value(metadata !{i32 %sumy2.3}, i64 0, metadata !89), !dbg !88 ; [debug line = 68:7] [debug variable = sumy2]
  br label %._crit_edge19

._crit_edge19:                                    ; preds = %16, %15, %._crit_edge16, %._crit_edge16
  %sumy2.2 = phi i32 [ %sumy2.3, %16 ], [ 255, %._crit_edge16 ], [ 255, %._crit_edge16 ], [ 255, %15 ] ; [#uses=1 type=i32]
  %sumx2.2 = phi i32 [ %sumx2.3, %16 ], [ 255, %._crit_edge16 ], [ 255, %._crit_edge16 ], [ 255, %15 ] ; [#uses=1 type=i32]
  switch i32 %i.1, label %17 [
    i32 127, label %._crit_edge22
    i32 0, label %._crit_edge22
  ], !dbg !64                                     ; [debug line = 71:6]

; <label>:17                                      ; preds = %._crit_edge19
  br i1 %tmp.22, label %._crit_edge22, label %18, !dbg !64 ; [debug line = 71:6]

; <label>:18                                      ; preds = %17
  %tmp.80 = add nsw i32 %q, %tmp.52, !dbg !73     ; [#uses=1 type=i32] [debug line = 76:7]
  %tmp.81 = sext i32 %tmp.80 to i64, !dbg !73     ; [#uses=1 type=i64] [debug line = 76:7]
  %In_Ptr.addr.3 = getelementptr inbounds i8* %In_Ptr, i64 %tmp.81, !dbg !73 ; [#uses=1 type=i8*] [debug line = 76:7]
  %In_Ptr.load.3 = load i8* %In_Ptr.addr.3, align 1, !dbg !73 ; [#uses=3 type=i8] [debug line = 76:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %In_Ptr.load.3) nounwind
  %tmp.82 = zext i8 %In_Ptr.load.3 to i32, !dbg !73 ; [#uses=2 type=i32] [debug line = 76:7]
  %tmp.83 = add nsw i32 %q, 1, !dbg !73           ; [#uses=1 type=i32] [debug line = 76:7]
  %tmp.84 = sext i32 %tmp.83 to i64, !dbg !73     ; [#uses=2 type=i64] [debug line = 76:7]
  %Gx.addr.4 = getelementptr inbounds [3 x [3 x i32]]* %Gx, i64 0, i64 %tmp.50, i64 %tmp.84, !dbg !73 ; [#uses=1 type=i32*] [debug line = 76:7]
  %Gx.load.3 = load i32* %Gx.addr.4, align 4, !dbg !73 ; [#uses=2 type=i32] [debug line = 76:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Gx.load.3) nounwind
  %tmp.85 = mul nsw i32 %Gx.load.3, %tmp.82, !dbg !73 ; [#uses=1 type=i32] [debug line = 76:7]
  %sumx3.3 = add nsw i32 %tmp.85, %sumx3.1, !dbg !73 ; [#uses=1 type=i32] [debug line = 76:7]
  call void @llvm.dbg.value(metadata !{i32 %sumx3.3}, i64 0, metadata !90), !dbg !73 ; [debug line = 76:7] [debug variable = sumx3]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i8 %In_Ptr.load.3) nounwind
  %Gy.addr.4 = getelementptr inbounds [3 x [3 x i32]]* %Gy, i64 0, i64 %tmp.50, i64 %tmp.84, !dbg !91 ; [#uses=1 type=i32*] [debug line = 77:7]
  %Gy.load.3 = load i32* %Gy.addr.4, align 4, !dbg !91 ; [#uses=2 type=i32] [debug line = 77:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %Gy.load.3) nounwind
  %tmp.87 = mul nsw i32 %Gy.load.3, %tmp.82, !dbg !91 ; [#uses=1 type=i32] [debug line = 77:7]
  %sumy3.3 = add nsw i32 %tmp.87, %sumy3.1, !dbg !91 ; [#uses=1 type=i32] [debug line = 77:7]
  call void @llvm.dbg.value(metadata !{i32 %sumy3.3}, i64 0, metadata !92), !dbg !91 ; [debug line = 77:7] [debug variable = sumy3]
  br label %._crit_edge22

._crit_edge22:                                    ; preds = %18, %17, %._crit_edge19, %._crit_edge19
  %sumx3.2 = phi i32 [ %sumx3.3, %18 ], [ 255, %._crit_edge19 ], [ 255, %._crit_edge19 ], [ 255, %17 ] ; [#uses=1 type=i32]
  %sumy3.2 = phi i32 [ %sumy3.3, %18 ], [ 255, %._crit_edge19 ], [ 255, %._crit_edge19 ], [ 255, %17 ] ; [#uses=1 type=i32]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !93 ; [#uses=0 type=i32] [debug line = 79:5]
  %q.1 = add nsw i32 %q, 1, !dbg !94              ; [#uses=1 type=i32] [debug line = 43:37]
  call void @llvm.dbg.value(metadata !{i32 %q.1}, i64 0, metadata !95), !dbg !94 ; [debug line = 43:37] [debug variable = q]
  br label %10, !dbg !94                          ; [debug line = 43:37]

; <label>:19                                      ; preds = %10
  %sumy3.1.lcssa = phi i32 [ %sumy3.1, %10 ]      ; [#uses=1 type=i32]
  %sumx3.1.lcssa = phi i32 [ %sumx3.1, %10 ]      ; [#uses=1 type=i32]
  %sumx0.1.lcssa = phi i32 [ %sumx0.1, %10 ]      ; [#uses=1 type=i32]
  %sumy0.1.lcssa = phi i32 [ %sumy0.1, %10 ]      ; [#uses=1 type=i32]
  %sumx1.1.lcssa = phi i32 [ %sumx1.1, %10 ]      ; [#uses=1 type=i32]
  %sumy1.1.lcssa = phi i32 [ %sumy1.1, %10 ]      ; [#uses=1 type=i32]
  %sumx2.1.lcssa = phi i32 [ %sumx2.1, %10 ]      ; [#uses=1 type=i32]
  %sumy2.1.lcssa = phi i32 [ %sumy2.1, %10 ]      ; [#uses=1 type=i32]
  %rend46 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str6, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !96 ; [#uses=0 type=i32] [debug line = 80:4]
  call void @llvm.dbg.value(metadata !{i32 %p.1}, i64 0, metadata !97), !dbg !98 ; [debug line = 42:36] [debug variable = p]
  br label %8, !dbg !98                           ; [debug line = 42:36]

; <label>:20                                      ; preds = %8
  %sumy3.0.lcssa = phi i32 [ %sumy3, %8 ]         ; [#uses=3 type=i32]
  %sumx3.0.lcssa = phi i32 [ %sumx3, %8 ]         ; [#uses=3 type=i32]
  %sumx0.0.lcssa = phi i32 [ %sumx0, %8 ]         ; [#uses=3 type=i32]
  %sumy0.0.lcssa = phi i32 [ %sumy0, %8 ]         ; [#uses=3 type=i32]
  %sumx1.0.lcssa = phi i32 [ %sumx1, %8 ]         ; [#uses=3 type=i32]
  %sumy1.0.lcssa = phi i32 [ %sumy1, %8 ]         ; [#uses=3 type=i32]
  %sumx2.0.lcssa = phi i32 [ %sumx2, %8 ]         ; [#uses=3 type=i32]
  %sumy2.0.lcssa = phi i32 [ %sumy2, %8 ]         ; [#uses=3 type=i32]
  %neg = sub i32 0, %sumx0.0.lcssa                ; [#uses=1 type=i32]
  %abscond = icmp sgt i32 %sumx0.0.lcssa, 0       ; [#uses=1 type=i1]
  %abs = select i1 %abscond, i32 %sumx0.0.lcssa, i32 %neg ; [#uses=1 type=i32]
  %neg1 = sub i32 0, %sumy0.0.lcssa               ; [#uses=1 type=i32]
  %abscond1 = icmp sgt i32 %sumy0.0.lcssa, 0      ; [#uses=1 type=i1]
  %abs1 = select i1 %abscond1, i32 %sumy0.0.lcssa, i32 %neg1 ; [#uses=1 type=i32]
  %sum0 = add nsw i32 %abs1, %abs, !dbg !99       ; [#uses=2 type=i32] [debug line = 82:20]
  call void @llvm.dbg.value(metadata !{i32 %sum0}, i64 0, metadata !100), !dbg !99 ; [debug line = 82:20] [debug variable = sum0]
  %neg2 = sub i32 0, %sumx1.0.lcssa               ; [#uses=1 type=i32]
  %abscond2 = icmp sgt i32 %sumx1.0.lcssa, 0      ; [#uses=1 type=i1]
  %abs2 = select i1 %abscond2, i32 %sumx1.0.lcssa, i32 %neg2 ; [#uses=1 type=i32]
  %neg3 = sub i32 0, %sumy1.0.lcssa               ; [#uses=1 type=i32]
  %abscond3 = icmp sgt i32 %sumy1.0.lcssa, 0      ; [#uses=1 type=i1]
  %abs3 = select i1 %abscond3, i32 %sumy1.0.lcssa, i32 %neg3 ; [#uses=1 type=i32]
  %sum1 = add nsw i32 %abs3, %abs2, !dbg !101     ; [#uses=2 type=i32] [debug line = 83:20]
  call void @llvm.dbg.value(metadata !{i32 %sum1}, i64 0, metadata !102), !dbg !101 ; [debug line = 83:20] [debug variable = sum1]
  %neg4 = sub i32 0, %sumx2.0.lcssa               ; [#uses=1 type=i32]
  %abscond4 = icmp sgt i32 %sumx2.0.lcssa, 0      ; [#uses=1 type=i1]
  %abs4 = select i1 %abscond4, i32 %sumx2.0.lcssa, i32 %neg4 ; [#uses=1 type=i32]
  %neg5 = sub i32 0, %sumy2.0.lcssa               ; [#uses=1 type=i32]
  %abscond5 = icmp sgt i32 %sumy2.0.lcssa, 0      ; [#uses=1 type=i1]
  %abs5 = select i1 %abscond5, i32 %sumy2.0.lcssa, i32 %neg5 ; [#uses=1 type=i32]
  %sum2 = add nsw i32 %abs5, %abs4, !dbg !103     ; [#uses=2 type=i32] [debug line = 84:20]
  call void @llvm.dbg.value(metadata !{i32 %sum2}, i64 0, metadata !104), !dbg !103 ; [debug line = 84:20] [debug variable = sum2]
  %neg6 = sub i32 0, %sumx3.0.lcssa               ; [#uses=1 type=i32]
  %abscond6 = icmp sgt i32 %sumx3.0.lcssa, 0      ; [#uses=1 type=i1]
  %abs6 = select i1 %abscond6, i32 %sumx3.0.lcssa, i32 %neg6 ; [#uses=1 type=i32]
  %neg7 = sub i32 0, %sumy3.0.lcssa               ; [#uses=1 type=i32]
  %abscond7 = icmp sgt i32 %sumy3.0.lcssa, 0      ; [#uses=1 type=i1]
  %abs7 = select i1 %abscond7, i32 %sumy3.0.lcssa, i32 %neg7 ; [#uses=1 type=i32]
  %sum3 = add nsw i32 %abs7, %abs6, !dbg !105     ; [#uses=2 type=i32] [debug line = 85:20]
  call void @llvm.dbg.value(metadata !{i32 %sum3}, i64 0, metadata !106), !dbg !105 ; [debug line = 85:20] [debug variable = sum3]
  %tmp.28 = icmp sgt i32 %sum0, 255, !dbg !107    ; [#uses=1 type=i1] [debug line = 87:4]
  %.op = sub i32 255, %sum0, !dbg !108            ; [#uses=1 type=i32] [debug line = 88:4]
  %sum0.1 = select i1 %tmp.28, i32 0, i32 %.op, !dbg !108 ; [#uses=1 type=i32] [debug line = 88:4]
  call void @llvm.dbg.value(metadata !{i32 %sum0.1}, i64 0, metadata !100), !dbg !108 ; [debug line = 88:4] [debug variable = sum0]
  %tmp.30 = icmp sgt i32 %sum1, 255, !dbg !109    ; [#uses=1 type=i1] [debug line = 90:4]
  %.op7 = sub i32 255, %sum1, !dbg !110           ; [#uses=1 type=i32] [debug line = 91:4]
  %sum1.1 = select i1 %tmp.30, i32 0, i32 %.op7, !dbg !110 ; [#uses=1 type=i32] [debug line = 91:4]
  call void @llvm.dbg.value(metadata !{i32 %sum1.1}, i64 0, metadata !102), !dbg !110 ; [debug line = 91:4] [debug variable = sum1]
  %tmp.32 = icmp sgt i32 %sum2, 255, !dbg !111    ; [#uses=1 type=i1] [debug line = 93:4]
  %.op8 = sub i32 255, %sum2, !dbg !112           ; [#uses=1 type=i32] [debug line = 94:4]
  %sum2.1 = select i1 %tmp.32, i32 0, i32 %.op8, !dbg !112 ; [#uses=1 type=i32] [debug line = 94:4]
  call void @llvm.dbg.value(metadata !{i32 %sum2.1}, i64 0, metadata !104), !dbg !112 ; [debug line = 94:4] [debug variable = sum2]
  %tmp.34 = icmp sgt i32 %sum3, 255, !dbg !113    ; [#uses=1 type=i1] [debug line = 96:4]
  %.op9 = sub i32 255, %sum3, !dbg !114           ; [#uses=1 type=i32] [debug line = 97:4]
  %sum3.1 = select i1 %tmp.34, i32 0, i32 %.op9, !dbg !114 ; [#uses=1 type=i32] [debug line = 97:4]
  call void @llvm.dbg.value(metadata !{i32 %sum3.1}, i64 0, metadata !106), !dbg !114 ; [debug line = 97:4] [debug variable = sum3]
  %tmp.36 = add nsw i32 %j.1, %tmp.6, !dbg !57    ; [#uses=1 type=i32] [debug line = 100:4]
  %id = ashr exact i32 %tmp.36, 2, !dbg !57       ; [#uses=1 type=i32] [debug line = 100:4]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !115), !dbg !57 ; [debug line = 100:4] [debug variable = id]
  %tmp.37 = shl i32 %sum1.1, 8, !dbg !116         ; [#uses=1 type=i32] [debug line = 101:4]
  %tmp.38 = shl i32 %sum2.1, 16, !dbg !116        ; [#uses=1 type=i32] [debug line = 101:4]
  %tmp.39 = shl i32 %sum3.1, 24, !dbg !116        ; [#uses=1 type=i32] [debug line = 101:4]
  %tmp.40 = add i32 %tmp.37, %sum0.1, !dbg !116   ; [#uses=1 type=i32] [debug line = 101:4]
  %tmp.41 = add i32 %tmp.40, %tmp.38, !dbg !116   ; [#uses=1 type=i32] [debug line = 101:4]
  %tmp.42 = add i32 %tmp.41, %tmp.39, !dbg !116   ; [#uses=1 type=i32] [debug line = 101:4]
  %tmp.43 = sext i32 %id to i64, !dbg !116        ; [#uses=1 type=i64] [debug line = 101:4]
  %sub_out.addr = getelementptr inbounds i32* %sub_out, i64 %tmp.43, !dbg !116 ; [#uses=1 type=i32*] [debug line = 101:4]
  store i32 %tmp.42, i32* %sub_out.addr, align 4, !dbg !116 ; [debug line = 101:4]
  %rend48 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str5, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !117 ; [#uses=0 type=i32] [debug line = 102:3]
  %j.3 = add nsw i32 %j.1, 4, !dbg !118           ; [#uses=1 type=i32] [debug line = 23:33]
  call void @llvm.dbg.value(metadata !{i32 %j.3}, i64 0, metadata !43), !dbg !118 ; [debug line = 23:33] [debug variable = j]
  br label %6, !dbg !118                          ; [debug line = 23:33]

; <label>:21                                      ; preds = %6
  %rend50 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i32 %rbegin1) nounwind, !dbg !119 ; [#uses=0 type=i32] [debug line = 103:2]
  %i.3 = add nsw i32 %i.1, 1, !dbg !120           ; [#uses=1 type=i32] [debug line = 22:34]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !45), !dbg !120 ; [debug line = 22:34] [debug variable = i]
  br label %.preheader, !dbg !120                 ; [debug line = 22:34]

; <label>:22                                      ; preds = %.preheader
  ret void, !dbg !121                             ; [debug line = 104:1]
}

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=0]
declare i32 @abs(i32)

; [#uses=26]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=18]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=4]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd.restore(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"D:/minibench/customization/sobel_small/unroll-1x2x3x3/.autopilot/db/sobel_ip.pragma.2.c", metadata !"d:/minibench/customization", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"sobel_ip", metadata !"sobel_ip", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @sobel_ip, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"sobel_small/src/sobel_ip.c", metadata !"d:/minibench/customization", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786689, metadata !5, metadata !"sub_in", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 3, i32 19, metadata !5, null}
!15 = metadata !{i32 786689, metadata !5, metadata !"sub_out", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 3, i32 43, metadata !5, null}
!17 = metadata !{i32 3, i32 61, metadata !18, null}
!18 = metadata !{i32 786443, metadata !5, i32 3, i32 60, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 3, i32 103, metadata !18, null}
!20 = metadata !{i32 4, i32 1, metadata !18, null}
!21 = metadata !{i32 10, i32 46, metadata !18, null}
!22 = metadata !{i32 786688, metadata !18, metadata !"In_Ptr", metadata !6, i32 10, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ]
!24 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786688, metadata !18, metadata !"Gx", metadata !6, i32 12, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!26 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 288, i64 32, i32 0, i32 0, metadata !10, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ]
!27 = metadata !{metadata !28, metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 2}        ; [ DW_TAG_subrange_type ]
!29 = metadata !{i32 12, i32 6, metadata !18, null}
!30 = metadata !{i32 786688, metadata !18, metadata !"Gy", metadata !6, i32 13, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!31 = metadata !{i32 13, i32 6, metadata !18, null}
!32 = metadata !{i32 15, i32 6, metadata !33, null}
!33 = metadata !{i32 786443, metadata !18, i32 15, i32 2, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 22, i32 22, metadata !35, null}
!35 = metadata !{i32 786443, metadata !18, i32 22, i32 18, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!36 = metadata !{i32 17, i32 4, metadata !37, null}
!37 = metadata !{i32 786443, metadata !38, i32 16, i32 21, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!38 = metadata !{i32 786443, metadata !39, i32 16, i32 3, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 786443, metadata !33, i32 15, i32 20, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 18, i32 4, metadata !37, null}
!41 = metadata !{i32 16, i32 7, metadata !38, null}
!42 = metadata !{i32 16, i32 17, metadata !38, null}
!43 = metadata !{i32 786688, metadata !18, metadata !"j", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!44 = metadata !{i32 15, i32 16, metadata !33, null}
!45 = metadata !{i32 786688, metadata !18, metadata !"i", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 22, i32 41, metadata !47, null}
!47 = metadata !{i32 786443, metadata !35, i32 22, i32 40, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 22, i32 82, metadata !47, null}
!49 = metadata !{i32 23, i32 1, metadata !47, null}
!50 = metadata !{i32 44, i32 6, metadata !51, null}
!51 = metadata !{i32 786443, metadata !52, i32 43, i32 41, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!52 = metadata !{i32 786443, metadata !53, i32 43, i32 21, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!53 = metadata !{i32 786443, metadata !54, i32 42, i32 40, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!54 = metadata !{i32 786443, metadata !55, i32 42, i32 20, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 786443, metadata !56, i32 23, i32 39, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!56 = metadata !{i32 786443, metadata !47, i32 23, i32 19, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 100, i32 4, metadata !55, null}
!58 = metadata !{i32 23, i32 23, metadata !56, null}
!59 = metadata !{i32 23, i32 40, metadata !55, null}
!60 = metadata !{i32 23, i32 81, metadata !55, null}
!61 = metadata !{i32 24, i32 1, metadata !55, null}
!62 = metadata !{i32 53, i32 6, metadata !51, null}
!63 = metadata !{i32 62, i32 6, metadata !51, null}
!64 = metadata !{i32 71, i32 6, metadata !51, null}
!65 = metadata !{i32 42, i32 24, metadata !54, null}
!66 = metadata !{i32 42, i32 41, metadata !53, null}
!67 = metadata !{i32 42, i32 82, metadata !53, null}
!68 = metadata !{i32 43, i32 1, metadata !53, null}
!69 = metadata !{i32 58, i32 7, metadata !70, null}
!70 = metadata !{i32 786443, metadata !51, i32 57, i32 10, metadata !6, i32 16} ; [ DW_TAG_lexical_block ]
!71 = metadata !{i32 67, i32 7, metadata !72, null}
!72 = metadata !{i32 786443, metadata !51, i32 66, i32 10, metadata !6, i32 18} ; [ DW_TAG_lexical_block ]
!73 = metadata !{i32 76, i32 7, metadata !74, null}
!74 = metadata !{i32 786443, metadata !51, i32 75, i32 10, metadata !6, i32 20} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 43, i32 25, metadata !52, null}
!76 = metadata !{i32 43, i32 42, metadata !51, null}
!77 = metadata !{i32 43, i32 83, metadata !51, null}
!78 = metadata !{i32 44, i32 1, metadata !51, null}
!79 = metadata !{i32 49, i32 7, metadata !80, null}
!80 = metadata !{i32 786443, metadata !51, i32 48, i32 10, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 786688, metadata !55, metadata !"sumx0", metadata !6, i32 25, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!82 = metadata !{i32 50, i32 7, metadata !80, null}
!83 = metadata !{i32 786688, metadata !55, metadata !"sumy0", metadata !6, i32 26, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!84 = metadata !{i32 786688, metadata !55, metadata !"sumx1", metadata !6, i32 29, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!85 = metadata !{i32 59, i32 7, metadata !70, null}
!86 = metadata !{i32 786688, metadata !55, metadata !"sumy1", metadata !6, i32 30, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!87 = metadata !{i32 786688, metadata !55, metadata !"sumx2", metadata !6, i32 33, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 68, i32 7, metadata !72, null}
!89 = metadata !{i32 786688, metadata !55, metadata !"sumy2", metadata !6, i32 34, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786688, metadata !55, metadata !"sumx3", metadata !6, i32 37, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 77, i32 7, metadata !74, null}
!92 = metadata !{i32 786688, metadata !55, metadata !"sumy3", metadata !6, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!93 = metadata !{i32 79, i32 5, metadata !51, null}
!94 = metadata !{i32 43, i32 37, metadata !52, null}
!95 = metadata !{i32 786688, metadata !18, metadata !"q", metadata !6, i32 8, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!96 = metadata !{i32 80, i32 4, metadata !53, null}
!97 = metadata !{i32 786688, metadata !18, metadata !"p", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!98 = metadata !{i32 42, i32 36, metadata !54, null}
!99 = metadata !{i32 82, i32 20, metadata !55, null}
!100 = metadata !{i32 786688, metadata !55, metadata !"sum0", metadata !6, i32 27, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 83, i32 20, metadata !55, null}
!102 = metadata !{i32 786688, metadata !55, metadata !"sum1", metadata !6, i32 31, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!103 = metadata !{i32 84, i32 20, metadata !55, null}
!104 = metadata !{i32 786688, metadata !55, metadata !"sum2", metadata !6, i32 35, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!105 = metadata !{i32 85, i32 20, metadata !55, null}
!106 = metadata !{i32 786688, metadata !55, metadata !"sum3", metadata !6, i32 39, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 87, i32 4, metadata !55, null}
!108 = metadata !{i32 88, i32 4, metadata !55, null}
!109 = metadata !{i32 90, i32 4, metadata !55, null}
!110 = metadata !{i32 91, i32 4, metadata !55, null}
!111 = metadata !{i32 93, i32 4, metadata !55, null}
!112 = metadata !{i32 94, i32 4, metadata !55, null}
!113 = metadata !{i32 96, i32 4, metadata !55, null}
!114 = metadata !{i32 97, i32 4, metadata !55, null}
!115 = metadata !{i32 786688, metadata !55, metadata !"id", metadata !6, i32 99, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!116 = metadata !{i32 101, i32 4, metadata !55, null}
!117 = metadata !{i32 102, i32 3, metadata !55, null}
!118 = metadata !{i32 23, i32 33, metadata !56, null}
!119 = metadata !{i32 103, i32 2, metadata !47, null}
!120 = metadata !{i32 22, i32 34, metadata !35, null}
!121 = metadata !{i32 104, i32 1, metadata !18, null}
