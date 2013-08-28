; ModuleID = 'matrixAdd.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z9matrixAddPA10_iS0_S0_([10 x i32]* %a, [10 x i32]* %b, [10 x i32]* %c) nounwind uwtable {
entry:
  %a.addr = alloca [10 x i32]*, align 8
  %b.addr = alloca [10 x i32]*, align 8
  %c.addr = alloca [10 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [10 x i32]* %a, [10 x i32]** %a.addr, align 8
  store [10 x i32]* %b, [10 x i32]** %b.addr, align 8
  store [10 x i32]* %c, [10 x i32]** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %4 = load [10 x i32]** %a.addr, align 8
  %arrayidx = getelementptr inbounds [10 x i32]* %4, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [10 x i32]* %arrayidx, i32 0, i64 %idxprom
  %5 = load i32* %arrayidx5, align 4
  %6 = load i32* %j, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load [10 x i32]** %b.addr, align 8
  %arrayidx8 = getelementptr inbounds [10 x i32]* %8, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [10 x i32]* %arrayidx8, i32 0, i64 %idxprom6
  %9 = load i32* %arrayidx9, align 4
  %add = add nsw i32 %5, %9
  %10 = load i32* %j, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %12 = load [10 x i32]** %c.addr, align 8
  %arrayidx12 = getelementptr inbounds [10 x i32]* %12, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [10 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  store i32 %add, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %14 = load i32* %i, align 4
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end16:                                        ; preds = %for.cond
  ret void
}
