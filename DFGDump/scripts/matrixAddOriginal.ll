; ModuleID = 'matrixAdd.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

define i32 @_Z9matrixAddPA10_iS0_([10 x i32]* %a, [10 x i32]* %b) nounwind {
entry:
  %a.addr = alloca [10 x i32]*, align 4
  %b.addr = alloca [10 x i32]*, align 4
  %c = alloca [10 x [10 x i32]], align 4
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store [10 x i32]* %a, [10 x i32]** %a.addr, align 4
  store [10 x i32]* %b, [10 x i32]** %b.addr, align 4
  store i32 0, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32* %j, align 4
  %3 = load i32* %i, align 4
  %4 = load [10 x i32]** %a.addr, align 4
  %arrayidx = getelementptr inbounds [10 x i32]* %4, i32 %3
  %arrayidx4 = getelementptr inbounds [10 x i32]* %arrayidx, i32 0, i32 %2
  %5 = load i32* %arrayidx4, align 4
  %6 = load i32* %j, align 4
  %7 = load i32* %i, align 4
  %8 = load [10 x i32]** %b.addr, align 4
  %arrayidx5 = getelementptr inbounds [10 x i32]* %8, i32 %7
  %arrayidx6 = getelementptr inbounds [10 x i32]* %arrayidx5, i32 0, i32 %6
  %9 = load i32* %arrayidx6, align 4
  %add = add nsw i32 %5, %9
  %10 = load i32* %j, align 4
  %11 = load i32* %i, align 4
  %arrayidx7 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 %11
  %arrayidx8 = getelementptr inbounds [10 x i32]* %arrayidx7, i32 0, i32 %10
  store i32 %add, i32* %arrayidx8, align 4
  %12 = load i32* %j, align 4
  %13 = load i32* %i, align 4
  %arrayidx9 = getelementptr inbounds [10 x [10 x i32]]* %c, i32 0, i32 %13
  %arrayidx10 = getelementptr inbounds [10 x i32]* %arrayidx9, i32 0, i32 %12
  %14 = load i32* %arrayidx10, align 4
  %15 = load i32* %s, align 4
  %add11 = add nsw i32 %15, %14
  store i32 %add11, i32* %s, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %17 = load i32* %i, align 4
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end14:                                        ; preds = %for.cond
  %18 = load i32* %s, align 4
  ret i32 %18
}
