; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z12sobel_filteriiiiiiiiiPA5_ii(i32 %w0, i32 %w1, i32 %w2, i32 %w3, i32 %w4, i32 %w5, i32 %w6, i32 %w7, i32 %w8, [5 x i32]* %image1, i32 %pixel_value_init) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  br label %for.inc.1

for.inc65:                                        ; preds = %for.inc.2
  %lftr.wideiv = trunc i64 2 to i32
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  br label %for.inc65

for.body3.1:                                      ; preds = %for.inc65
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body3.1
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.116
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  br label %for.inc65.1

for.inc65.1:                                      ; preds = %for.inc.2.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc65.1
  br label %for.inc.217

for.inc.217:                                      ; preds = %for.body3.2
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.217
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  br label %for.inc65.2

for.inc65.2:                                      ; preds = %for.inc.2.2
  ret void
}
