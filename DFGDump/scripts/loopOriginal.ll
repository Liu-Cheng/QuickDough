; ModuleID = 'loop.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z4loopPA3_iiii([3 x i32]* %a, i32 %sum, i32 %sum_init, i32 %factor) nounwind uwtable {
entry:
  %a.addr = alloca [3 x i32]*, align 8
  %sum.addr = alloca i32, align 4
  %sum_init.addr = alloca i32, align 4
  %factor.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [3 x i32]* %a, [3 x i32]** %a.addr, align 8
  store i32 %sum, i32* %sum.addr, align 4
  store i32 %sum_init, i32* %sum_init.addr, align 4
  store i32 %factor, i32* %factor.addr, align 4
  %0 = load i32* %sum_init.addr, align 4
  store i32 %0, i32* %sum.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc6, %entry
  %1 = load i32* %i, align 4
  %cmp = icmp slt i32 %1, 3
  br i1 %cmp, label %for.body, label %for.end8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32* %sum.addr, align 4
  %4 = load i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load [3 x i32]** %a.addr, align 8
  %arrayidx = getelementptr inbounds [3 x i32]* %6, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [3 x i32]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i32* %arrayidx5, align 4
  %8 = load i32* %factor.addr, align 4
  %mul = mul nsw i32 %7, %8
  %add = add nsw i32 %3, %mul
  store i32 %add, i32* %sum.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc6

for.inc6:                                         ; preds = %for.end
  %10 = load i32* %i, align 4
  %inc7 = add nsw i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end8:                                         ; preds = %for.cond
  ret void
}
