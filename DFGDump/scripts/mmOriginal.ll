; ModuleID = 'mm.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z2mmPA2_iS0_iS0_([2 x i32]* %a, [2 x i32]* %b, i32 %init, [2 x i32]* %c) nounwind uwtable {
entry:
  %a.addr = alloca [2 x i32]*, align 8
  %b.addr = alloca [2 x i32]*, align 8
  %init.addr = alloca i32, align 4
  %c.addr = alloca [2 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store [2 x i32]* %a, [2 x i32]** %a.addr, align 8
  store [2 x i32]* %b, [2 x i32]** %b.addr, align 8
  store i32 %init, i32* %init.addr, align 4
  store [2 x i32]* %c, [2 x i32]** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %1 = load i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 2
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  %2 = load i32* %init.addr, align 4
  %3 = load i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %5 = load [2 x i32]** %c.addr, align 8
  %arrayidx = getelementptr inbounds [2 x i32]* %5, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [2 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %2, i32* %arrayidx5, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %6 = load i32* %k, align 4
  %cmp7 = icmp slt i32 %6, 2
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %7 = load i32* %k, align 4
  %idxprom9 = sext i32 %7 to i64
  %8 = load i32* %i, align 4
  %idxprom10 = sext i32 %8 to i64
  %9 = load [2 x i32]** %a.addr, align 8
  %arrayidx11 = getelementptr inbounds [2 x i32]* %9, i64 %idxprom10
  %arrayidx12 = getelementptr inbounds [2 x i32]* %arrayidx11, i32 0, i64 %idxprom9
  %10 = load i32* %arrayidx12, align 4
  %11 = load i32* %j, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load i32* %k, align 4
  %idxprom14 = sext i32 %12 to i64
  %13 = load [2 x i32]** %b.addr, align 8
  %arrayidx15 = getelementptr inbounds [2 x i32]* %13, i64 %idxprom14
  %arrayidx16 = getelementptr inbounds [2 x i32]* %arrayidx15, i32 0, i64 %idxprom13
  %14 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %10, %14
  %15 = load i32* %j, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i32* %i, align 4
  %idxprom18 = sext i32 %16 to i64
  %17 = load [2 x i32]** %c.addr, align 8
  %arrayidx19 = getelementptr inbounds [2 x i32]* %17, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [2 x i32]* %arrayidx19, i32 0, i64 %idxprom17
  %18 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %18, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %19 = load i32* %k, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond6

for.end:                                          ; preds = %for.cond6
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %20 = load i32* %j, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond1

for.end23:                                        ; preds = %for.cond1
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %21 = load i32* %i, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end26:                                        ; preds = %for.cond
  ret void
}
