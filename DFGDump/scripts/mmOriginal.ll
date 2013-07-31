; ModuleID = 'mm.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@c = global [4 x [4 x i32]] zeroinitializer, align 4

define void @_Z2mmPA4_iS0_([4 x i32]* %a, [4 x i32]* %b) nounwind {
entry:
  %a.addr = alloca [4 x i32]*, align 4
  %b.addr = alloca [4 x i32]*, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store [4 x i32]* %a, [4 x i32]** %a.addr, align 4
  store [4 x i32]* %b, [4 x i32]** %b.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32* %i, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc14, %for.body
  %1 = load i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 4
  br i1 %cmp2, label %for.body3, label %for.end16

for.body3:                                        ; preds = %for.cond1
  %2 = load i32* %j, align 4
  %3 = load i32* %i, align 4
  %arrayidx = getelementptr inbounds [4 x [4 x i32]]* @c, i32 0, i32 %3
  %arrayidx4 = getelementptr inbounds [4 x i32]* %arrayidx, i32 0, i32 %2
  store i32 0, i32* %arrayidx4, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body3
  %4 = load i32* %k, align 4
  %cmp6 = icmp slt i32 %4, 4
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %5 = load i32* %k, align 4
  %6 = load i32* %i, align 4
  %7 = load [4 x i32]** %a.addr, align 4
  %arrayidx8 = getelementptr inbounds [4 x i32]* %7, i32 %6
  %arrayidx9 = getelementptr inbounds [4 x i32]* %arrayidx8, i32 0, i32 %5
  %8 = load i32* %arrayidx9, align 4
  %9 = load i32* %j, align 4
  %10 = load i32* %k, align 4
  %11 = load [4 x i32]** %b.addr, align 4
  %arrayidx10 = getelementptr inbounds [4 x i32]* %11, i32 %10
  %arrayidx11 = getelementptr inbounds [4 x i32]* %arrayidx10, i32 0, i32 %9
  %12 = load i32* %arrayidx11, align 4
  %mul = mul nsw i32 %8, %12
  %13 = load i32* %j, align 4
  %14 = load i32* %i, align 4
  %arrayidx12 = getelementptr inbounds [4 x [4 x i32]]* @c, i32 0, i32 %14
  %arrayidx13 = getelementptr inbounds [4 x i32]* %arrayidx12, i32 0, i32 %13
  %15 = load i32* %arrayidx13, align 4
  %add = add nsw i32 %15, %mul
  store i32 %add, i32* %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %16 = load i32* %k, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond5

for.end:                                          ; preds = %for.cond5
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %17 = load i32* %j, align 4
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond1

for.end16:                                        ; preds = %for.cond1
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  %18 = load i32* %i, align 4
  %inc18 = add nsw i32 %18, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end19:                                        ; preds = %for.cond
  ret void
}
