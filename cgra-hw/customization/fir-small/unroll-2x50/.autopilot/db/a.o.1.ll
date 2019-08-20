; ModuleID = 'D:/minibench/customization/fir-small/unroll-2x50/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [14 x i8] c"fir_ip_label1\00", align 1 ; [#uses=1 type=[14 x i8]*]
@.str5 = private unnamed_addr constant [14 x i8] c"fir_ip_label0\00", align 1 ; [#uses=1 type=[14 x i8]*]
@str = internal constant [7 x i8] c"fir_ip\00"    ; [#uses=1 type=[7 x i8]*]

; [#uses=0]
define void @fir_ip(i32* %sub_in, i32* %sub_out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([7 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{i32* %sub_in}, i64 0, metadata !13), !dbg !14 ; [debug line = 3:17] [debug variable = sub_in]
  call void @llvm.dbg.value(metadata !{i32* %sub_out}, i64 0, metadata !15), !dbg !16 ; [debug line = 3:137] [debug variable = sub_out]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %sub_in, i32 1152), !dbg !17 ; [debug line = 3:184]
  call void (...)* @_ssdm_SpecArrayDimSize(i32* %sub_out, i32 1024), !dbg !19 ; [debug line = 3:0]
  call void (...)* @_ssdm_op_SpecResource(i32* %sub_in, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !20 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)), !dbg !20 ; [debug line = 4:1]
  br label %1, !dbg !21                           ; [debug line = 7:20]

; <label>:1                                       ; preds = %5, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %5 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %i, 1024, !dbg !21     ; [#uses=1 type=i1] [debug line = 7:20]
  br i1 %exitcond1, label %6, label %2, !dbg !21  ; [debug line = 7:20]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)), !dbg !23 ; [debug line = 7:70]
  %rbegin2 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !25 ; [#uses=1 type=i32] [debug line = 7:109]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !26 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !26 ; [debug line = 8:1]
  call void (...)* @_ssdm_Unroll(i32 1, i32 4, i32 2, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !26 ; [debug line = 8:1]
  %tmp = add i32 %i, 64, !dbg !27                 ; [#uses=1 type=i32] [debug line = 10:4]
  br label %3, !dbg !30                           ; [debug line = 9:21]

; <label>:3                                       ; preds = %4, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %4 ]            ; [#uses=4 type=i32]
  %tmp1 = phi i32 [ 0, %2 ], [ %tmp.9, %4 ]       ; [#uses=2 type=i32]
  %exitcond = icmp eq i32 %j, 64, !dbg !30        ; [#uses=1 type=i1] [debug line = 9:21]
  br i1 %exitcond, label %5, label %4, !dbg !30   ; [debug line = 9:21]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)), !dbg !31 ; [debug line = 9:69]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !32 ; [#uses=1 type=i32] [debug line = 9:108]
  call void (...)* @_ssdm_Unroll(i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !33 ; [debug line = 10:1]
  %tmp.4 = add nsw i32 %j, 1088, !dbg !27         ; [#uses=1 type=i32] [debug line = 10:4]
  %tmp.5 = sext i32 %tmp.4 to i64, !dbg !27       ; [#uses=1 type=i64] [debug line = 10:4]
  %sub_in.addr = getelementptr inbounds i32* %sub_in, i64 %tmp.5, !dbg !27 ; [#uses=1 type=i32*] [debug line = 10:4]
  %sub_in.load = load i32* %sub_in.addr, align 4, !dbg !27 ; [#uses=2 type=i32] [debug line = 10:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load) nounwind
  %tmp.6 = sub i32 %tmp, %j, !dbg !27             ; [#uses=1 type=i32] [debug line = 10:4]
  %tmp.7 = sext i32 %tmp.6 to i64, !dbg !27       ; [#uses=1 type=i64] [debug line = 10:4]
  %sub_in.addr.1 = getelementptr inbounds i32* %sub_in, i64 %tmp.7, !dbg !27 ; [#uses=1 type=i32*] [debug line = 10:4]
  %sub_in.load.1 = load i32* %sub_in.addr.1, align 4, !dbg !27 ; [#uses=2 type=i32] [debug line = 10:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %sub_in.load.1) nounwind
  %tmp.8 = mul nsw i32 %sub_in.load.1, %sub_in.load, !dbg !27 ; [#uses=1 type=i32] [debug line = 10:4]
  %tmp.9 = add nsw i32 %tmp.8, %tmp1, !dbg !27    ; [#uses=1 type=i32] [debug line = 10:4]
  call void @llvm.dbg.value(metadata !{i32 %tmp.9}, i64 0, metadata !34), !dbg !27 ; [debug line = 10:4] [debug variable = tmp]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !35 ; [#uses=0 type=i32] [debug line = 11:3]
  %j.1 = add nsw i32 %j, 1, !dbg !36              ; [#uses=1 type=i32] [debug line = 9:64]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !37), !dbg !36 ; [debug line = 9:64] [debug variable = j]
  br label %3, !dbg !36                           ; [debug line = 9:64]

; <label>:5                                       ; preds = %3
  %tmp.0.lcssa = phi i32 [ %tmp1, %3 ]            ; [#uses=1 type=i32]
  %tmp.2 = sext i32 %i to i64, !dbg !38           ; [#uses=1 type=i64] [debug line = 12:3]
  %sub_out.addr = getelementptr inbounds i32* %sub_out, i64 %tmp.2, !dbg !38 ; [#uses=1 type=i32*] [debug line = 12:3]
  store i32 %tmp.0.lcssa, i32* %sub_out.addr, align 4, !dbg !38 ; [debug line = 12:3]
  %rend3 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i32 %rbegin2) nounwind, !dbg !39 ; [#uses=0 type=i32] [debug line = 13:2]
  %i.1 = add nsw i32 %i, 1, !dbg !40              ; [#uses=1 type=i32] [debug line = 7:65]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !41), !dbg !40 ; [debug line = 7:65] [debug variable = i]
  br label %1, !dbg !40                           ; [debug line = 7:65]

; <label>:6                                       ; preds = %1
  ret void, !dbg !42                              ; [debug line = 14:1]
}

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=2]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd.restore(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"D:/minibench/customization/fir-small/unroll-2x50/.autopilot/db/fir_ip.pragma.2.c", metadata !"d:/minibench/customization", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"fir_ip", metadata !"fir_ip", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32*, i32*)* @fir_ip, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"fir-small/src/fir_ip.c", metadata !"d:/minibench/customization", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{i32 786689, metadata !5, metadata !"sub_in", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!14 = metadata !{i32 3, i32 17, metadata !5, null}
!15 = metadata !{i32 786689, metadata !5, metadata !"sub_out", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!16 = metadata !{i32 3, i32 137, metadata !5, null}
!17 = metadata !{i32 3, i32 184, metadata !18, null}
!18 = metadata !{i32 786443, metadata !5, i32 3, i32 183, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!19 = metadata !{i32 3, i32 0, metadata !18, null}
!20 = metadata !{i32 4, i32 1, metadata !18, null}
!21 = metadata !{i32 7, i32 20, metadata !22, null}
!22 = metadata !{i32 786443, metadata !18, i32 7, i32 16, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!23 = metadata !{i32 7, i32 70, metadata !24, null}
!24 = metadata !{i32 786443, metadata !22, i32 7, i32 69, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 7, i32 109, metadata !24, null}
!26 = metadata !{i32 8, i32 1, metadata !24, null}
!27 = metadata !{i32 10, i32 4, metadata !28, null}
!28 = metadata !{i32 786443, metadata !29, i32 9, i32 68, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!29 = metadata !{i32 786443, metadata !24, i32 9, i32 17, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 9, i32 21, metadata !29, null}
!31 = metadata !{i32 9, i32 69, metadata !28, null}
!32 = metadata !{i32 9, i32 108, metadata !28, null}
!33 = metadata !{i32 10, i32 1, metadata !28, null}
!34 = metadata !{i32 786688, metadata !24, metadata !"tmp", metadata !6, i32 8, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!35 = metadata !{i32 11, i32 3, metadata !28, null}
!36 = metadata !{i32 9, i32 64, metadata !29, null}
!37 = metadata !{i32 786688, metadata !18, metadata !"j", metadata !6, i32 5, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!38 = metadata !{i32 12, i32 3, metadata !24, null}
!39 = metadata !{i32 13, i32 2, metadata !24, null}
!40 = metadata !{i32 7, i32 65, metadata !22, null}
!41 = metadata !{i32 786688, metadata !18, metadata !"i", metadata !6, i32 4, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!42 = metadata !{i32 14, i32 1, metadata !18, null}
