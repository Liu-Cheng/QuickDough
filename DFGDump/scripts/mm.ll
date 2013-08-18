; ModuleID = 'fun3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@c = global [2 x [2 x i32]] zeroinitializer, align 4

define void @_Z2mmPA2_iS0_([2 x i32]* %a, [2 x i32]* %b) nounwind {
entry:
  store i32 0, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %arrayidx9 = getelementptr inbounds [2 x i32]* %a, i32 0, i32 0
  %0 = load i32* %arrayidx9, align 4
  %arrayidx11 = getelementptr inbounds [2 x i32]* %b, i32 0, i32 0
  %1 = load i32* %arrayidx11, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %arrayidx9.1 = getelementptr inbounds [2 x i32]* %a, i32 0, i32 1
  %3 = load i32* %arrayidx9.1, align 4
  %arrayidx10.1 = getelementptr inbounds [2 x i32]* %b, i32 1
  %arrayidx11.1 = getelementptr inbounds [2 x i32]* %arrayidx10.1, i32 0, i32 0
  %4 = load i32* %arrayidx11.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %5 = load i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %arrayidx9.14 = getelementptr inbounds [2 x i32]* %a, i32 0, i32 0
  %6 = load i32* %arrayidx9.14, align 4
  %arrayidx11.15 = getelementptr inbounds [2 x i32]* %b, i32 0, i32 1
  %7 = load i32* %arrayidx11.15, align 4
  %mul.16 = mul nsw i32 %6, %7
  %8 = load i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %add.19 = add nsw i32 %8, %mul.16
  store i32 %add.19, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %arrayidx9.1.1 = getelementptr inbounds [2 x i32]* %a, i32 0, i32 1
  %9 = load i32* %arrayidx9.1.1, align 4
  %arrayidx10.1.1 = getelementptr inbounds [2 x i32]* %b, i32 1
  %arrayidx11.1.1 = getelementptr inbounds [2 x i32]* %arrayidx10.1.1, i32 0, i32 1
  %10 = load i32* %arrayidx11.1.1, align 4
  %mul.1.1 = mul nsw i32 %9, %10
  %11 = load i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %add.1.1 = add nsw i32 %11, %mul.1.1
  store i32 %add.1.1, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %arrayidx8.114 = getelementptr inbounds [2 x i32]* %a, i32 1
  %arrayidx9.115 = getelementptr inbounds [2 x i32]* %arrayidx8.114, i32 0, i32 0
  %12 = load i32* %arrayidx9.115, align 4
  %arrayidx11.116 = getelementptr inbounds [2 x i32]* %b, i32 0, i32 0
  %13 = load i32* %arrayidx11.116, align 4
  %mul.117 = mul nsw i32 %12, %13
  %14 = load i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %add.120 = add nsw i32 %14, %mul.117
  store i32 %add.120, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %arrayidx8.1.122 = getelementptr inbounds [2 x i32]* %a, i32 1
  %arrayidx9.1.123 = getelementptr inbounds [2 x i32]* %arrayidx8.1.122, i32 0, i32 1
  %15 = load i32* %arrayidx9.1.123, align 4
  %arrayidx10.1.124 = getelementptr inbounds [2 x i32]* %b, i32 1
  %arrayidx11.1.125 = getelementptr inbounds [2 x i32]* %arrayidx10.1.124, i32 0, i32 0
  %16 = load i32* %arrayidx11.1.125, align 4
  %mul.1.126 = mul nsw i32 %15, %16
  %17 = load i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %add.1.129 = add nsw i32 %17, %mul.1.126
  store i32 %add.1.129, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  store i32 0, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %arrayidx8.13.1 = getelementptr inbounds [2 x i32]* %a, i32 1
  %arrayidx9.14.1 = getelementptr inbounds [2 x i32]* %arrayidx8.13.1, i32 0, i32 0
  %18 = load i32* %arrayidx9.14.1, align 4
  %arrayidx11.15.1 = getelementptr inbounds [2 x i32]* %b, i32 0, i32 1
  %19 = load i32* %arrayidx11.15.1, align 4
  %mul.16.1 = mul nsw i32 %18, %19
  %20 = load i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %add.19.1 = add nsw i32 %20, %mul.16.1
  store i32 %add.19.1, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %arrayidx8.1.1.1 = getelementptr inbounds [2 x i32]* %a, i32 1
  %arrayidx9.1.1.1 = getelementptr inbounds [2 x i32]* %arrayidx8.1.1.1, i32 0, i32 1
  %21 = load i32* %arrayidx9.1.1.1, align 4
  %arrayidx10.1.1.1 = getelementptr inbounds [2 x i32]* %b, i32 1
  %arrayidx11.1.1.1 = getelementptr inbounds [2 x i32]* %arrayidx10.1.1.1, i32 0, i32 1
  %22 = load i32* %arrayidx11.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %21, %22
  %23 = load i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %add.1.1.1 = add nsw i32 %23, %mul.1.1.1
  store i32 %add.1.1.1, i32* getelementptr inbounds ([2 x [2 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  ret void
}
