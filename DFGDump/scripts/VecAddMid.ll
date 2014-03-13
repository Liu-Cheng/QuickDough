; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z6VecAddPiS_S_(i32* %in1, i32* %in2, i32* %out) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  %0 = load i32* %in1, align 4
  %1 = load i32* %in2, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* %out, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %arrayidx.1 = getelementptr inbounds i32* %in1, i64 1
  %2 = load i32* %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr inbounds i32* %in2, i64 1
  %3 = load i32* %arrayidx2.1, align 4
  %add.1 = add nsw i32 %2, %3
  %arrayidx4.1 = getelementptr inbounds i32* %out, i64 1
  store i32 %add.1, i32* %arrayidx4.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.inc
  ret void
}
