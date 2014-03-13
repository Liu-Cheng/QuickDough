; ModuleID = 'VecAdd.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z6VecAddPiS_S_(i32* %in1, i32* %in2, i32* %out) nounwind uwtable {
entry:
  %in1.addr = alloca i32*, align 8
  %in2.addr = alloca i32*, align 8
  %out.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %in1, i32** %in1.addr, align 8
  store i32* %in2, i32** %in2.addr, align 8
  store i32* %out, i32** %out.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32** %in1.addr, align 8
  %arrayidx = getelementptr inbounds i32* %2, i64 %idxprom
  %3 = load i32* %arrayidx, align 4
  %4 = load i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32** %in2.addr, align 8
  %arrayidx2 = getelementptr inbounds i32* %5, i64 %idxprom1
  %6 = load i32* %arrayidx2, align 4
  %add = add nsw i32 %3, %6
  %7 = load i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i32** %out.addr, align 8
  %arrayidx4 = getelementptr inbounds i32* %8, i64 %idxprom3
  store i32 %add, i32* %arrayidx4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}
