; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z4loopPA3_iiii([3 x i32]* %a, i32 %sum, i32 %sum_init, i32 %factor) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  br label %for.inc.1

for.inc6:                                         ; preds = %for.inc.2
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  br label %for.inc6

for.body3.1:                                      ; preds = %for.inc6
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body3.1
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.14
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  br label %for.inc6.1

for.inc6.1:                                       ; preds = %for.inc.2.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc6.1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body3.2
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.25
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  br label %for.inc6.2

for.inc6.2:                                       ; preds = %for.inc.2.2
  ret void
}
