; ModuleID = 'D:/minibench/customization/mm-small/unroll_2x10x10/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [12 x i8] c"RAM_1P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [17 x i8] c"-bus_bundle slv0\00", align 1 ; [#uses=1 type=[17 x i8]*]
@.str4 = private unnamed_addr constant [10 x i8] c"mm_label2\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str5 = private unnamed_addr constant [10 x i8] c"mm_label1\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str6 = private unnamed_addr constant [10 x i8] c"mm_label0\00", align 1 ; [#uses=1 type=[10 x i8]*]
@str = internal constant [6 x i8] c"mm_ip\00"     ; [#uses=1 type=[6 x i8]*]

; [#uses=0]
define void @mm_ip([128 x i32]* %in, [128 x i32]* %out) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([6 x i8]* @str) nounwind
  call void @llvm.dbg.value(metadata !{[128 x i32]* %in}, i64 0, metadata !18), !dbg !19 ; [debug line = 3:18] [debug variable = in]
  call void @llvm.dbg.value(metadata !{[128 x i32]* %out}, i64 0, metadata !20), !dbg !21 ; [debug line = 3:40] [debug variable = out]
  call void (...)* @_ssdm_SpecArrayDimSize([128 x i32]* %in, i32 256), !dbg !22 ; [debug line = 3:55]
  call void (...)* @_ssdm_SpecArrayDimSize([128 x i32]* %out, i32 128), !dbg !24 ; [debug line = 3:88]
  call void (...)* @_ssdm_op_SpecResource([128 x i32]* %out, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !25 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource([128 x i32]* %in, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !25 ; [debug line = 4:1]
  call void (...)* @_ssdm_op_SpecResource(i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0)), !dbg !25 ; [debug line = 4:1]
  br label %1, !dbg !26                           ; [debug line = 7:16]

; <label>:1                                       ; preds = %8, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %8 ]            ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 128, !dbg !26      ; [#uses=1 type=i1] [debug line = 7:16]
  br i1 %exitcond2, label %9, label %2, !dbg !26  ; [debug line = 7:16]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)), !dbg !28 ; [debug line = 7:33]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !30 ; [#uses=1 type=i32] [debug line = 7:68]
  %tmp = sext i32 %i to i64, !dbg !31             ; [#uses=2 type=i64] [debug line = 9:4]
  br label %3, !dbg !34                           ; [debug line = 8:17]

; <label>:3                                       ; preds = %7, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %7 ]            ; [#uses=3 type=i32]
  %exitcond1 = icmp eq i32 %j, 128, !dbg !34      ; [#uses=1 type=i1] [debug line = 8:17]
  br i1 %exitcond1, label %8, label %4, !dbg !34  ; [debug line = 8:17]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)), !dbg !35 ; [debug line = 8:34]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !36 ; [#uses=1 type=i32] [debug line = 8:69]
  %tmp.2 = sext i32 %j to i64, !dbg !31           ; [#uses=2 type=i64] [debug line = 9:4]
  %out.addr = getelementptr inbounds [128 x i32]* %out, i64 %tmp, i64 %tmp.2, !dbg !31 ; [#uses=3 type=i32*] [debug line = 9:4]
  store i32 0, i32* %out.addr, align 4, !dbg !31  ; [debug line = 9:4]
  br label %5, !dbg !37                           ; [debug line = 10:18]

; <label>:5                                       ; preds = %6, %4
  %k = phi i32 [ 0, %4 ], [ %k.1, %6 ]            ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %k, 128, !dbg !37       ; [#uses=1 type=i1] [debug line = 10:18]
  br i1 %exitcond, label %7, label %6, !dbg !37   ; [debug line = 10:18]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)), !dbg !39 ; [debug line = 10:35]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0)) nounwind, !dbg !41 ; [#uses=1 type=i32] [debug line = 10:70]
  call void (...)* @_ssdm_Unroll(i32 1, i32 4, i32 128, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)), !dbg !42 ; [debug line = 11:1]
  %tmp.4 = sext i32 %k to i64, !dbg !43           ; [#uses=1 type=i64] [debug line = 11:5]
  %in.addr = getelementptr inbounds [128 x i32]* %in, i64 %tmp, i64 %tmp.4, !dbg !43 ; [#uses=1 type=i32*] [debug line = 11:5]
  %in.load = load i32* %in.addr, align 4, !dbg !43 ; [#uses=2 type=i32] [debug line = 11:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %in.load) nounwind
  %tmp.5 = add nsw i32 %k, 128, !dbg !43          ; [#uses=1 type=i32] [debug line = 11:5]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !43       ; [#uses=1 type=i64] [debug line = 11:5]
  %in.addr.1 = getelementptr inbounds [128 x i32]* %in, i64 %tmp.6, i64 %tmp.2, !dbg !43 ; [#uses=1 type=i32*] [debug line = 11:5]
  %in.load.1 = load i32* %in.addr.1, align 4, !dbg !43 ; [#uses=2 type=i32] [debug line = 11:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %in.load.1) nounwind
  %tmp.7 = mul nsw i32 %in.load.1, %in.load, !dbg !43 ; [#uses=1 type=i32] [debug line = 11:5]
  %out.load = load i32* %out.addr, align 4, !dbg !43 ; [#uses=2 type=i32] [debug line = 11:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(i32 %out.load) nounwind
  %tmp.8 = add nsw i32 %out.load, %tmp.7, !dbg !43 ; [#uses=1 type=i32] [debug line = 11:5]
  store i32 %tmp.8, i32* %out.addr, align 4, !dbg !43 ; [debug line = 11:5]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str6, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !44 ; [#uses=0 type=i32] [debug line = 12:4]
  %k.1 = add nsw i32 %k, 1, !dbg !45              ; [#uses=1 type=i32] [debug line = 10:30]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !46), !dbg !45 ; [debug line = 10:30] [debug variable = k]
  br label %5, !dbg !45                           ; [debug line = 10:30]

; <label>:7                                       ; preds = %5
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !48 ; [#uses=0 type=i32] [debug line = 13:3]
  %j.1 = add nsw i32 %j, 1, !dbg !49              ; [#uses=1 type=i32] [debug line = 8:29]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !50), !dbg !49 ; [debug line = 8:29] [debug variable = j]
  br label %3, !dbg !49                           ; [debug line = 8:29]

; <label>:8                                       ; preds = %3
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([10 x i8]* @.str4, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !51 ; [#uses=0 type=i32] [debug line = 14:2]
  %i.1 = add nsw i32 %i, 1, !dbg !52              ; [#uses=1 type=i32] [debug line = 7:28]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !53), !dbg !52 ; [debug line = 7:28] [debug variable = i]
  br label %1, !dbg !52                           ; [debug line = 7:28]

; <label>:9                                       ; preds = %1
  ret void, !dbg !54                              ; [debug line = 15:1]
}

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=2]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=1]
declare void @_ssdm_Unroll(...) nounwind

; [#uses=0]
declare void @_ssdm_RegionEnd(...) nounwind

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecLoopBegin(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=3]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=0]
declare i32 @_ssdm_op_SpecRegionEnd.restore(...)

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"D:/minibench/customization/mm-small/unroll_2x10x10/.autopilot/db/mm_ip.pragma.2.c", metadata !"d:/minibench/customization", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"mm_ip", metadata !"mm_ip", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ([128 x i32]*, [128 x i32]*)* @mm_ip, null, null, metadata !16, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"mm-small/src/mm_ip.c", metadata !"d:/minibench/customization", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 4096, i64 32, i32 0, i32 0, metadata !11, metadata !14, i32 0, i32 0} ; [ DW_TAG_array_type ]
!11 = metadata !{i32 786454, null, metadata !"DType", metadata !6, i32 4, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ]
!12 = metadata !{i32 786454, null, metadata !"int32", metadata !6, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 786468, null, metadata !"int32", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786465, i64 0, i64 127}      ; [ DW_TAG_subrange_type ]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786689, metadata !5, metadata !"in", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!19 = metadata !{i32 3, i32 18, metadata !5, null}
!20 = metadata !{i32 786689, metadata !5, metadata !"out", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!21 = metadata !{i32 3, i32 40, metadata !5, null}
!22 = metadata !{i32 3, i32 55, metadata !23, null}
!23 = metadata !{i32 786443, metadata !5, i32 3, i32 54, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!24 = metadata !{i32 3, i32 88, metadata !23, null}
!25 = metadata !{i32 4, i32 1, metadata !23, null}
!26 = metadata !{i32 7, i32 16, metadata !27, null}
!27 = metadata !{i32 786443, metadata !23, i32 7, i32 12, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 7, i32 33, metadata !29, null}
!29 = metadata !{i32 786443, metadata !27, i32 7, i32 32, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!30 = metadata !{i32 7, i32 68, metadata !29, null}
!31 = metadata !{i32 9, i32 4, metadata !32, null}
!32 = metadata !{i32 786443, metadata !33, i32 8, i32 33, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!33 = metadata !{i32 786443, metadata !29, i32 8, i32 13, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 8, i32 17, metadata !33, null}
!35 = metadata !{i32 8, i32 34, metadata !32, null}
!36 = metadata !{i32 8, i32 69, metadata !32, null}
!37 = metadata !{i32 10, i32 18, metadata !38, null}
!38 = metadata !{i32 786443, metadata !32, i32 10, i32 14, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!39 = metadata !{i32 10, i32 35, metadata !40, null}
!40 = metadata !{i32 786443, metadata !38, i32 10, i32 34, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 10, i32 70, metadata !40, null}
!42 = metadata !{i32 11, i32 1, metadata !40, null}
!43 = metadata !{i32 11, i32 5, metadata !40, null}
!44 = metadata !{i32 12, i32 4, metadata !40, null}
!45 = metadata !{i32 10, i32 30, metadata !38, null}
!46 = metadata !{i32 786688, metadata !23, metadata !"k", metadata !6, i32 6, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 13, i32 3, metadata !32, null}
!49 = metadata !{i32 8, i32 29, metadata !33, null}
!50 = metadata !{i32 786688, metadata !23, metadata !"j", metadata !6, i32 5, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 14, i32 2, metadata !29, null}
!52 = metadata !{i32 7, i32 28, metadata !27, null}
!53 = metadata !{i32 786688, metadata !23, metadata !"i", metadata !6, i32 4, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!54 = metadata !{i32 15, i32 1, metadata !23, null}
