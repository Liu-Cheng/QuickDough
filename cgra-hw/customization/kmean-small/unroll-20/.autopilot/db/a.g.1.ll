; ModuleID = 'D:/minibench/customization/kmean-small/unroll-20/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [16 x i8] c"kmean_ip_label0\00", align 1 ; [#uses=1 type=[16 x i8]*]
@str = internal constant [9 x i8] c"kmean_ip\00"  ; [#uses=1 type=[9 x i8]*]

; [#uses=0]
define void @kmean_ip(i32* %sub_in, i32* %sub_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %sub_in}, i64 0, metadata !13), !dbg !14 ; [debug line = 3:19] [debug variable = sub_in]
  call void @llvm.dbg.value(metadata !{i32* %sub_out}, i64 0, metadata !15), !dbg !16 ; [debug line = 3:44] [debug variable = sub_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %sub_in, i32 2056), !dbg !17 ; [debug line = 3:61]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %sub_out, i32 12), !dbg !19 ; [debug line = 3:104]
  call void (...)* @_ssdm_op_SpecResource(i32* %sub_out, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !20 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(i32* %sub_in, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !20 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)), !dbg !20 ; [debug line = 4:1]
  br label %1, !dbg !21                           ; [debug line = 17:9]

; <label>:1                                       ; preds = %2, %0
  %i = phi i32 [ 0, %0 ], [ %i.2, %2 ]            ; [#uses=3 type=i32]
  %exitcond8 = icmp eq i32 %i, 12, !dbg !21       ; [#uses=1 type=i1] [debug line = 17:9]
  br i1 %exitcond8, label %.preheader, label %2, !dbg !21 ; [debug line = 17:9]

.preheader:                                       ; preds = %1
  %sub_in.addr = getelementptr inbounds i32* %sub_in, i64 2048, !dbg !23 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.addr.1 = getelementptr inbounds i32* %sub_in, i64 2049, !dbg !23 ; [#uses=1 type=i32*] [debug line = 21:9]
  %sub_in.addr.2 = getelementptr inbounds i32* %sub_in, i64 2050, !dbg !26 ; [#uses=1 type=i32*] [debug line = 24:9]
  %sub_in.addr.3 = getelementptr inbounds i32* %sub_in, i64 2051, !dbg !26 ; [#uses=1 type=i32*] [debug line = 24:9]
  %sub_in.addr.4 = getelementptr inbounds i32* %sub_in, i64 2052, !dbg !27 ; [#uses=1 type=i32*] [debug line = 27:9]
  %sub_in.addr.5 = getelementptr inbounds i32* %sub_in, i64 2053, !dbg !27 ; [#uses=1 type=i32*] [debug line = 27:9]
  %sub_in.addr.6 = getelementptr inbounds i32* %sub_in, i64 2054, !dbg !28 ; [#uses=1 type=i32*] [debug line = 30:9]
  %sub_in.addr.7 = getelementptr inbounds i32* %sub_in, i64 2055, !dbg !28 ; [#uses=1 type=i32*] [debug line = 30:9]
  %sub_out.addr = getelementptr inbounds i32* %sub_out, i64 11, !dbg !29 ; [#uses=2 type=i32*] [debug line = 52:14]
  %sub_out.addr.1 = getelementptr inbounds i32* %sub_out, i64 6, !dbg !31 ; [#uses=2 type=i32*] [debug line = 53:14]
  %sub_out.addr.2 = getelementptr inbounds i32* %sub_out, i64 7, !dbg !32 ; [#uses=2 type=i32*] [debug line = 54:14]
  %sub_out.addr.3 = getelementptr inbounds i32* %sub_out, i64 10, !dbg !33 ; [#uses=2 type=i32*] [debug line = 46:14]
  %sub_out.addr.4 = getelementptr inbounds i32* %sub_out, i64 4, !dbg !35 ; [#uses=2 type=i32*] [debug line = 47:14]
  %sub_out.addr.5 = getelementptr inbounds i32* %sub_out, i64 5, !dbg !36 ; [#uses=2 type=i32*] [debug line = 48:14]
  %sub_out.addr.6 = getelementptr inbounds i32* %sub_out, i64 9, !dbg !37 ; [#uses=2 type=i32*] [debug line = 40:14]
  %sub_out.addr.7 = getelementptr inbounds i32* %sub_out, i64 2, !dbg !39 ; [#uses=2 type=i32*] [debug line = 41:14]
  %sub_out.addr.8 = getelementptr inbounds i32* %sub_out, i64 3, !dbg !40 ; [#uses=2 type=i32*] [debug line = 42:14]
  %sub_out.addr.9 = getelementptr inbounds i32* %sub_out, i64 8, !dbg !41 ; [#uses=2 type=i32*] [debug line = 34:14]
  %sub_out.addr.10 = getelementptr inbounds i32* %sub_out, i64 1, !dbg !43 ; [#uses=2 type=i32*] [debug line = 36:14]
  br label %3, !dbg !44                           ; [debug line = 20:25]

; <label>:2                                       ; preds = %1
  %tmp = sext i32 %i to i64, !dbg !45             ; [#uses=1 type=i64] [debug line = 18:9]
  %sub_out.addr.11 = getelementptr inbounds i32* %sub_out, i64 %tmp, !dbg !45 ; [#uses=1 type=i32*] [debug line = 18:9]
  store i32 0, i32* %sub_out.addr.11, align 4, !dbg !45 ; [debug line = 18:9]
  %i.2 = add nsw i32 %i, 1, !dbg !47              ; [#uses=1 type=i32] [debug line = 17:24]
  call void @llvm.dbg.value(metadata !{i32 %i.2}, i64 0, metadata !48), !dbg !47 ; [debug line = 17:24] [debug variable = i]
  br label %1, !dbg !47                           ; [debug line = 17:24]

; <label>:3                                       ; preds = %._crit_edge11, %.preheader
  %i.1 = phi i32 [ %i.3, %._crit_edge11 ], [ 0, %.preheader ] ; [#uses=3 type=i32]
  %exitcond = icmp eq i32 %i.1, 1024, !dbg !44    ; [#uses=1 type=i1] [debug line = 20:25]
  br i1 %exitcond, label %9, label %4, !dbg !44   ; [debug line = 20:25]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)), !dbg !49 ; [debug line = 20:43]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !50 ; [#uses=1 type=i32] [debug line = 20:84]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !51 ; [debug line = 21:1]
  call void (...)* @_ssdm_Unroll(i32 1, i32 4, i32 4, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !51 ; [debug line = 21:1]
  %tmp.2 = shl nsw i32 %i.1, 1, !dbg !23          ; [#uses=2 type=i32] [debug line = 21:9]
  %tmp.3 = sext i32 %tmp.2 to i64, !dbg !23       ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.8 = getelementptr inbounds i32* %sub_in, i64 %tmp.3, !dbg !23 ; [#uses=5 type=i32*] [debug line = 21:9]
  %sub_in.load = load i32* %sub_in.addr.8, align 4, !dbg !23 ; [#uses=12 type=i32] [debug line = 21:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  %sub_in.load.1 = load i32* %sub_in.addr, align 4, !dbg !23 ; [#uses=3 type=i32] [debug line = 21:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.1) nounwind
  %tmp.4 = sub nsw i32 %sub_in.load, %sub_in.load.1, !dbg !23 ; [#uses=2 type=i32] [debug line = 21:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.1) nounwind
  %tmp.5 = mul nsw i32 %tmp.4, %tmp.4, !dbg !23   ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp.6 = or i32 %tmp.2, 1, !dbg !23             ; [#uses=1 type=i32] [debug line = 21:9]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !23       ; [#uses=1 type=i64] [debug line = 21:9]
  %sub_in.addr.9 = getelementptr inbounds i32* %sub_in, i64 %tmp.7, !dbg !23 ; [#uses=5 type=i32*] [debug line = 21:9]
  %sub_in.load.2 = load i32* %sub_in.addr.9, align 4, !dbg !23 ; [#uses=12 type=i32] [debug line = 21:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.2) nounwind
  %sub_in.load.3 = load i32* %sub_in.addr.1, align 4, !dbg !23 ; [#uses=3 type=i32] [debug line = 21:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.3) nounwind
  %tmp.8 = sub nsw i32 %sub_in.load.2, %sub_in.load.3, !dbg !23 ; [#uses=2 type=i32] [debug line = 21:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.3) nounwind
  %tmp.9 = mul nsw i32 %tmp.8, %tmp.8, !dbg !23   ; [#uses=1 type=i32] [debug line = 21:9]
  %dist0 = add nsw i32 %tmp.9, %tmp.5, !dbg !23   ; [#uses=5 type=i32] [debug line = 21:9]
  call void @llvm.dbg.value(metadata !{i32 %dist0}, i64 0, metadata !52), !dbg !23 ; [debug line = 21:9] [debug variable = dist0]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  %sub_in.load.4 = load i32* %sub_in.addr.2, align 4, !dbg !26 ; [#uses=3 type=i32] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.4) nounwind
  %tmp.10 = sub nsw i32 %sub_in.load, %sub_in.load.4, !dbg !26 ; [#uses=2 type=i32] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.4) nounwind
  %tmp.11 = mul nsw i32 %tmp.10, %tmp.10, !dbg !26 ; [#uses=1 type=i32] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.2) nounwind
  %sub_in.load.5 = load i32* %sub_in.addr.3, align 4, !dbg !26 ; [#uses=3 type=i32] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.5) nounwind
  %tmp.12 = sub nsw i32 %sub_in.load.2, %sub_in.load.5, !dbg !26 ; [#uses=2 type=i32] [debug line = 24:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.5) nounwind
  %tmp.13 = mul nsw i32 %tmp.12, %tmp.12, !dbg !26 ; [#uses=1 type=i32] [debug line = 24:9]
  %dist1 = add nsw i32 %tmp.13, %tmp.11, !dbg !26 ; [#uses=5 type=i32] [debug line = 24:9]
  call void @llvm.dbg.value(metadata !{i32 %dist1}, i64 0, metadata !53), !dbg !26 ; [debug line = 24:9] [debug variable = dist1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  %sub_in.load.6 = load i32* %sub_in.addr.4, align 4, !dbg !27 ; [#uses=3 type=i32] [debug line = 27:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.6) nounwind
  %tmp.14 = sub nsw i32 %sub_in.load, %sub_in.load.6, !dbg !27 ; [#uses=2 type=i32] [debug line = 27:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.6) nounwind
  %tmp.15 = mul nsw i32 %tmp.14, %tmp.14, !dbg !27 ; [#uses=1 type=i32] [debug line = 27:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.2) nounwind
  %sub_in.load.7 = load i32* %sub_in.addr.5, align 4, !dbg !27 ; [#uses=3 type=i32] [debug line = 27:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.7) nounwind
  %tmp.16 = sub nsw i32 %sub_in.load.2, %sub_in.load.7, !dbg !27 ; [#uses=2 type=i32] [debug line = 27:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.7) nounwind
  %tmp.17 = mul nsw i32 %tmp.16, %tmp.16, !dbg !27 ; [#uses=1 type=i32] [debug line = 27:9]
  %dist2 = add nsw i32 %tmp.17, %tmp.15, !dbg !27 ; [#uses=5 type=i32] [debug line = 27:9]
  call void @llvm.dbg.value(metadata !{i32 %dist2}, i64 0, metadata !54), !dbg !27 ; [debug line = 27:9] [debug variable = dist2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  %sub_in.load.8 = load i32* %sub_in.addr.6, align 4, !dbg !28 ; [#uses=3 type=i32] [debug line = 30:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.8) nounwind
  %tmp.18 = sub nsw i32 %sub_in.load, %sub_in.load.8, !dbg !28 ; [#uses=2 type=i32] [debug line = 30:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.8) nounwind
  %tmp.19 = mul nsw i32 %tmp.18, %tmp.18, !dbg !28 ; [#uses=1 type=i32] [debug line = 30:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.2) nounwind
  %sub_in.load.9 = load i32* %sub_in.addr.7, align 4, !dbg !28 ; [#uses=3 type=i32] [debug line = 30:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.9) nounwind
  %tmp.20 = sub nsw i32 %sub_in.load.2, %sub_in.load.9, !dbg !28 ; [#uses=2 type=i32] [debug line = 30:9]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.2) nounwind
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.9) nounwind
  %tmp.21 = mul nsw i32 %tmp.20, %tmp.20, !dbg !28 ; [#uses=1 type=i32] [debug line = 30:9]
  %dist3 = add nsw i32 %tmp.21, %tmp.19, !dbg !28 ; [#uses=3 type=i32] [debug line = 30:9]
  call void @llvm.dbg.value(metadata !{i32 %dist3}, i64 0, metadata !55), !dbg !28 ; [debug line = 30:9] [debug variable = dist3]
  %tmp.22 = icmp sgt i32 %dist0, %dist1, !dbg !56 ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.23 = icmp sgt i32 %dist0, %dist2, !dbg !56 ; [#uses=1 type=i1] [debug line = 33:10]
  %or.cond = or i1 %tmp.22, %tmp.23, !dbg !56     ; [#uses=1 type=i1] [debug line = 33:10]
  %tmp.24 = icmp sgt i32 %dist0, %dist3, !dbg !56 ; [#uses=2 type=i1] [debug line = 33:10]
  %or.cond1 = or i1 %or.cond, %tmp.24, !dbg !56   ; [#uses=1 type=i1] [debug line = 33:10]
  br i1 %or.cond1, label %._crit_edge, label %5, !dbg !56 ; [debug line = 33:10]

; <label>:5                                       ; preds = %4
  %sub_out.load = load i32* %sub_out.addr.9, align 4, !dbg !41 ; [#uses=2 type=i32] [debug line = 34:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load) nounwind
  %tmp.25 = add nsw i32 %sub_out.load, 1, !dbg !41 ; [#uses=1 type=i32] [debug line = 34:14]
  store i32 %tmp.25, i32* %sub_out.addr.9, align 4, !dbg !41 ; [debug line = 34:14]
  %sub_in.load.10 = load i32* %sub_in.addr.8, align 4, !dbg !57 ; [#uses=2 type=i32] [debug line = 35:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.10) nounwind
  %sub_out.load.1 = load i32* %sub_out, align 4, !dbg !57 ; [#uses=2 type=i32] [debug line = 35:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.1) nounwind
  %tmp.26 = add nsw i32 %sub_out.load.1, %sub_in.load.10, !dbg !57 ; [#uses=1 type=i32] [debug line = 35:14]
  store i32 %tmp.26, i32* %sub_out, align 4, !dbg !57 ; [debug line = 35:14]
  %sub_in.load.11 = load i32* %sub_in.addr.9, align 4, !dbg !43 ; [#uses=2 type=i32] [debug line = 36:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.11) nounwind
  %sub_out.load.2 = load i32* %sub_out.addr.10, align 4, !dbg !43 ; [#uses=2 type=i32] [debug line = 36:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.2) nounwind
  %tmp.27 = add nsw i32 %sub_out.load.2, %sub_in.load.11, !dbg !43 ; [#uses=1 type=i32] [debug line = 36:14]
  store i32 %tmp.27, i32* %sub_out.addr.10, align 4, !dbg !43 ; [debug line = 36:14]
  br label %._crit_edge, !dbg !58                 ; [debug line = 37:10]

._crit_edge:                                      ; preds = %5, %4
  %tmp.28 = icmp sge i32 %dist1, %dist0, !dbg !59 ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.29 = icmp sgt i32 %dist1, %dist2, !dbg !59 ; [#uses=1 type=i1] [debug line = 39:10]
  %or.cond2 = or i1 %tmp.28, %tmp.29, !dbg !59    ; [#uses=1 type=i1] [debug line = 39:10]
  %tmp.30 = icmp sgt i32 %dist1, %dist3, !dbg !59 ; [#uses=2 type=i1] [debug line = 39:10]
  %or.cond3 = or i1 %or.cond2, %tmp.30, !dbg !59  ; [#uses=1 type=i1] [debug line = 39:10]
  br i1 %or.cond3, label %._crit_edge9, label %6, !dbg !59 ; [debug line = 39:10]

; <label>:6                                       ; preds = %._crit_edge
  %sub_out.load.3 = load i32* %sub_out.addr.6, align 4, !dbg !37 ; [#uses=2 type=i32] [debug line = 40:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.3) nounwind
  %tmp.31 = add nsw i32 %sub_out.load.3, 1, !dbg !37 ; [#uses=1 type=i32] [debug line = 40:14]
  store i32 %tmp.31, i32* %sub_out.addr.6, align 4, !dbg !37 ; [debug line = 40:14]
  %sub_in.load.12 = load i32* %sub_in.addr.8, align 4, !dbg !39 ; [#uses=2 type=i32] [debug line = 41:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.12) nounwind
  %sub_out.load.4 = load i32* %sub_out.addr.7, align 4, !dbg !39 ; [#uses=2 type=i32] [debug line = 41:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.4) nounwind
  %tmp.32 = add nsw i32 %sub_out.load.4, %sub_in.load.12, !dbg !39 ; [#uses=1 type=i32] [debug line = 41:14]
  store i32 %tmp.32, i32* %sub_out.addr.7, align 4, !dbg !39 ; [debug line = 41:14]
  %sub_in.load.13 = load i32* %sub_in.addr.9, align 4, !dbg !40 ; [#uses=2 type=i32] [debug line = 42:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.13) nounwind
  %sub_out.load.5 = load i32* %sub_out.addr.8, align 4, !dbg !40 ; [#uses=2 type=i32] [debug line = 42:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.5) nounwind
  %tmp.33 = add nsw i32 %sub_out.load.5, %sub_in.load.13, !dbg !40 ; [#uses=1 type=i32] [debug line = 42:14]
  store i32 %tmp.33, i32* %sub_out.addr.8, align 4, !dbg !40 ; [debug line = 42:14]
  br label %._crit_edge9, !dbg !60                ; [debug line = 43:10]

._crit_edge9:                                     ; preds = %6, %._crit_edge
  %notlhs = icmp sge i32 %dist2, %dist0, !dbg !61 ; [#uses=1 type=i1] [debug line = 45:10]
  %notrhs = icmp sge i32 %dist2, %dist1, !dbg !61 ; [#uses=1 type=i1] [debug line = 45:10]
  %or.cond4.not = or i1 %notrhs, %notlhs, !dbg !61 ; [#uses=1 type=i1] [debug line = 45:10]
  %tmp.34 = icmp sgt i32 %dist2, %dist3, !dbg !61 ; [#uses=2 type=i1] [debug line = 45:10]
  %or.cond5 = or i1 %or.cond4.not, %tmp.34, !dbg !61 ; [#uses=1 type=i1] [debug line = 45:10]
  br i1 %or.cond5, label %._crit_edge10, label %7, !dbg !61 ; [debug line = 45:10]

; <label>:7                                       ; preds = %._crit_edge9
  %sub_out.load.6 = load i32* %sub_out.addr.3, align 4, !dbg !33 ; [#uses=2 type=i32] [debug line = 46:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.6) nounwind
  %tmp.35 = add nsw i32 %sub_out.load.6, 1, !dbg !33 ; [#uses=1 type=i32] [debug line = 46:14]
  store i32 %tmp.35, i32* %sub_out.addr.3, align 4, !dbg !33 ; [debug line = 46:14]
  %sub_in.load.14 = load i32* %sub_in.addr.8, align 4, !dbg !35 ; [#uses=2 type=i32] [debug line = 47:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.14) nounwind
  %sub_out.load.7 = load i32* %sub_out.addr.4, align 4, !dbg !35 ; [#uses=2 type=i32] [debug line = 47:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.7) nounwind
  %tmp.36 = add nsw i32 %sub_out.load.7, %sub_in.load.14, !dbg !35 ; [#uses=1 type=i32] [debug line = 47:14]
  store i32 %tmp.36, i32* %sub_out.addr.4, align 4, !dbg !35 ; [debug line = 47:14]
  %sub_in.load.15 = load i32* %sub_in.addr.9, align 4, !dbg !36 ; [#uses=2 type=i32] [debug line = 48:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.15) nounwind
  %sub_out.load.8 = load i32* %sub_out.addr.5, align 4, !dbg !36 ; [#uses=2 type=i32] [debug line = 48:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.8) nounwind
  %tmp.37 = add nsw i32 %sub_out.load.8, %sub_in.load.15, !dbg !36 ; [#uses=1 type=i32] [debug line = 48:14]
  store i32 %tmp.37, i32* %sub_out.addr.5, align 4, !dbg !36 ; [debug line = 48:14]
  br label %._crit_edge10, !dbg !62               ; [debug line = 49:10]

._crit_edge10:                                    ; preds = %7, %._crit_edge9
  %or.cond6 = and i1 %tmp.24, %tmp.30, !dbg !63   ; [#uses=1 type=i1] [debug line = 51:10]
  %or.cond7 = and i1 %or.cond6, %tmp.34, !dbg !63 ; [#uses=1 type=i1] [debug line = 51:10]
  br i1 %or.cond7, label %8, label %._crit_edge11, !dbg !63 ; [debug line = 51:10]

; <label>:8                                       ; preds = %._crit_edge10
  %sub_out.load.9 = load i32* %sub_out.addr, align 4, !dbg !29 ; [#uses=2 type=i32] [debug line = 52:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.9) nounwind
  %tmp.38 = add nsw i32 %sub_out.load.9, 1, !dbg !29 ; [#uses=1 type=i32] [debug line = 52:14]
  store i32 %tmp.38, i32* %sub_out.addr, align 4, !dbg !29 ; [debug line = 52:14]
  %sub_in.load.16 = load i32* %sub_in.addr.8, align 4, !dbg !31 ; [#uses=2 type=i32] [debug line = 53:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.16) nounwind
  %sub_out.load.10 = load i32* %sub_out.addr.1, align 4, !dbg !31 ; [#uses=2 type=i32] [debug line = 53:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.10) nounwind
  %tmp.39 = add nsw i32 %sub_out.load.10, %sub_in.load.16, !dbg !31 ; [#uses=1 type=i32] [debug line = 53:14]
  store i32 %tmp.39, i32* %sub_out.addr.1, align 4, !dbg !31 ; [debug line = 53:14]
  %sub_in.load.17 = load i32* %sub_in.addr.9, align 4, !dbg !32 ; [#uses=2 type=i32] [debug line = 54:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.17) nounwind
  %sub_out.load.11 = load i32* %sub_out.addr.2, align 4, !dbg !32 ; [#uses=2 type=i32] [debug line = 54:14]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_out.load.11) nounwind
  %tmp.40 = add nsw i32 %sub_out.load.11, %sub_in.load.17, !dbg !32 ; [#uses=1 type=i32] [debug line = 54:14]
  store i32 %tmp.40, i32* %sub_out.addr.2, align 4, !dbg !32 ; [debug line = 54:14]
  br label %._crit_edge11, !dbg !64               ; [debug line = 55:10]

._crit_edge11:                                    ; preds = %8, %._crit_edge10
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !65 ; [#uses=0 type=i32] [debug line = 56:5]
  %i.3 = add nsw i32 %i.1, 1, !dbg !66            ; [#uses=1 type=i32] [debug line = 20:38]
  call void @llvm.dbg.value(metadata !{i32 %i.3}, i64 0, metadata !48), !dbg !66 ; [debug line = 20:38] [debug variable = i]
  br label %3, !dbg !66                           ; [debug line = 20:38]

; <label>:9                                       ; preds = %3
  ret void, !dbg !67                              ; [debug line = 58:1]
}

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=52]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=1]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd.restore(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"D:/minibench/customization/kmean-small/unroll-20/.autopilot/db/kmean_ip.pragma.2.c", metadata !"d:/minibench/customization", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"kmean_ip", metadata !"kmean_ip", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @kmean_ip, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"kmean-small/src/kmean_ip.c", metadata !"d:/minibench/customization", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786689, metadata !5, metadata !"sub_in", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 3, i32 19, metadata !5, null}
!15 = metadata !{i32 786689, metadata !5, metadata !"sub_out", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 3, i32 44, metadata !5, null}
!17 = metadata !{i32 3, i32 61, metadata !18, null}
!18 = metadata !{i32 786443, metadata !5, i32 3, i32 60, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 3, i32 104, metadata !18, null}
!20 = metadata !{i32 4, i32 1, metadata !18, null}
!21 = metadata !{i32 17, i32 9, metadata !22, null}
!22 = metadata !{i32 786443, metadata !18, i32 17, i32 5, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!23 = metadata !{i32 21, i32 9, metadata !24, null}
!24 = metadata !{i32 786443, metadata !25, i32 20, i32 42, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 786443, metadata !18, i32 20, i32 21, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!26 = metadata !{i32 24, i32 9, metadata !24, null}
!27 = metadata !{i32 27, i32 9, metadata !24, null}
!28 = metadata !{i32 30, i32 9, metadata !24, null}
!29 = metadata !{i32 52, i32 14, metadata !30, null}
!30 = metadata !{i32 786443, metadata !24, i32 51, i32 55, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!31 = metadata !{i32 53, i32 14, metadata !30, null}
!32 = metadata !{i32 54, i32 14, metadata !30, null}
!33 = metadata !{i32 46, i32 14, metadata !34, null}
!34 = metadata !{i32 786443, metadata !24, i32 45, i32 56, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!35 = metadata !{i32 47, i32 14, metadata !34, null}
!36 = metadata !{i32 48, i32 14, metadata !34, null}
!37 = metadata !{i32 40, i32 14, metadata !38, null}
!38 = metadata !{i32 786443, metadata !24, i32 39, i32 57, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 41, i32 14, metadata !38, null}
!40 = metadata !{i32 42, i32 14, metadata !38, null}
!41 = metadata !{i32 34, i32 14, metadata !42, null}
!42 = metadata !{i32 786443, metadata !24, i32 33, i32 58, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!43 = metadata !{i32 36, i32 14, metadata !42, null}
!44 = metadata !{i32 20, i32 25, metadata !25, null}
!45 = metadata !{i32 18, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !22, i32 17, i32 28, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!47 = metadata !{i32 17, i32 24, metadata !22, null}
!48 = metadata !{i32 786688, metadata !18, metadata !"i", metadata !6, i32 4, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 20, i32 43, metadata !24, null}
!50 = metadata !{i32 20, i32 84, metadata !24, null}
!51 = metadata !{i32 21, i32 1, metadata !24, null}
!52 = metadata !{i32 786688, metadata !18, metadata !"dist0", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 786688, metadata !18, metadata !"dist1", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 786688, metadata !18, metadata !"dist2", metadata !6, i32 7, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!55 = metadata !{i32 786688, metadata !18, metadata !"dist3", metadata !6, i32 8, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!56 = metadata !{i32 33, i32 10, metadata !24, null}
!57 = metadata !{i32 35, i32 14, metadata !42, null}
!58 = metadata !{i32 37, i32 10, metadata !42, null}
!59 = metadata !{i32 39, i32 10, metadata !24, null}
!60 = metadata !{i32 43, i32 10, metadata !38, null}
!61 = metadata !{i32 45, i32 10, metadata !24, null}
!62 = metadata !{i32 49, i32 10, metadata !34, null}
!63 = metadata !{i32 51, i32 10, metadata !24, null}
!64 = metadata !{i32 55, i32 10, metadata !30, null}
!65 = metadata !{i32 56, i32 5, metadata !24, null}
!66 = metadata !{i32 20, i32 38, metadata !25, null}
!67 = metadata !{i32 58, i32 1, metadata !18, null}
