; ModuleID = 'fun3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

@c = global [4 x [4 x i32]] zeroinitializer, align 4

define void @_Z2mmPA4_iS0_([4 x i32]* %a, [4 x i32]* %b) nounwind {
entry:
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %arrayidx9 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 0
  %0 = load i32* %arrayidx9, align 4
  %arrayidx11 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 0
  %1 = load i32* %arrayidx11, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %arrayidx9.1 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 1
  %3 = load i32* %arrayidx9.1, align 4
  %arrayidx10.1 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1 = getelementptr inbounds [4 x i32]* %arrayidx10.1, i32 0, i32 0
  %4 = load i32* %arrayidx11.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %5 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %arrayidx9.2 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 2
  %6 = load i32* %arrayidx9.2, align 4
  %arrayidx10.2 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2 = getelementptr inbounds [4 x i32]* %arrayidx10.2, i32 0, i32 0
  %7 = load i32* %arrayidx11.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %8 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %arrayidx9.3 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 3
  %9 = load i32* %arrayidx9.3, align 4
  %arrayidx10.3 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3 = getelementptr inbounds [4 x i32]* %arrayidx10.3, i32 0, i32 0
  %10 = load i32* %arrayidx11.3, align 4
  %mul.3 = mul nsw i32 %9, %10
  %11 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  %add.3 = add nsw i32 %11, %mul.3
  store i32 %add.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %arrayidx9.14 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 0
  %12 = load i32* %arrayidx9.14, align 4
  %arrayidx11.15 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 1
  %13 = load i32* %arrayidx11.15, align 4
  %mul.16 = mul nsw i32 %12, %13
  %14 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %add.19 = add nsw i32 %14, %mul.16
  store i32 %add.19, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %arrayidx9.1.1 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 1
  %15 = load i32* %arrayidx9.1.1, align 4
  %arrayidx10.1.1 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.1 = getelementptr inbounds [4 x i32]* %arrayidx10.1.1, i32 0, i32 1
  %16 = load i32* %arrayidx11.1.1, align 4
  %mul.1.1 = mul nsw i32 %15, %16
  %17 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %add.1.1 = add nsw i32 %17, %mul.1.1
  store i32 %add.1.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %arrayidx9.2.1 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 2
  %18 = load i32* %arrayidx9.2.1, align 4
  %arrayidx10.2.1 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.1 = getelementptr inbounds [4 x i32]* %arrayidx10.2.1, i32 0, i32 1
  %19 = load i32* %arrayidx11.2.1, align 4
  %mul.2.1 = mul nsw i32 %18, %19
  %20 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %add.2.1 = add nsw i32 %20, %mul.2.1
  store i32 %add.2.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %arrayidx9.3.1 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 3
  %21 = load i32* %arrayidx9.3.1, align 4
  %arrayidx10.3.1 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.1 = getelementptr inbounds [4 x i32]* %arrayidx10.3.1, i32 0, i32 1
  %22 = load i32* %arrayidx11.3.1, align 4
  %mul.3.1 = mul nsw i32 %21, %22
  %23 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  %add.3.1 = add nsw i32 %23, %mul.3.1
  store i32 %add.3.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  %arrayidx9.212 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 0
  %24 = load i32* %arrayidx9.212, align 4
  %arrayidx11.213 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 2
  %25 = load i32* %arrayidx11.213, align 4
  %mul.214 = mul nsw i32 %24, %25
  %26 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  %add.217 = add nsw i32 %26, %mul.214
  store i32 %add.217, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  %arrayidx9.1.2 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 1
  %27 = load i32* %arrayidx9.1.2, align 4
  %arrayidx10.1.2 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.2 = getelementptr inbounds [4 x i32]* %arrayidx10.1.2, i32 0, i32 2
  %28 = load i32* %arrayidx11.1.2, align 4
  %mul.1.2 = mul nsw i32 %27, %28
  %29 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  %add.1.2 = add nsw i32 %29, %mul.1.2
  store i32 %add.1.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  %arrayidx9.2.2 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 2
  %30 = load i32* %arrayidx9.2.2, align 4
  %arrayidx10.2.2 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.2 = getelementptr inbounds [4 x i32]* %arrayidx10.2.2, i32 0, i32 2
  %31 = load i32* %arrayidx11.2.2, align 4
  %mul.2.2 = mul nsw i32 %30, %31
  %32 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  %add.2.2 = add nsw i32 %32, %mul.2.2
  store i32 %add.2.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  %arrayidx9.3.2 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 3
  %33 = load i32* %arrayidx9.3.2, align 4
  %arrayidx10.3.2 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.2 = getelementptr inbounds [4 x i32]* %arrayidx10.3.2, i32 0, i32 2
  %34 = load i32* %arrayidx11.3.2, align 4
  %mul.3.2 = mul nsw i32 %33, %34
  %35 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  %add.3.2 = add nsw i32 %35, %mul.3.2
  store i32 %add.3.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  %arrayidx9.320 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 0
  %36 = load i32* %arrayidx9.320, align 4
  %arrayidx11.321 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 3
  %37 = load i32* %arrayidx11.321, align 4
  %mul.322 = mul nsw i32 %36, %37
  %38 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  %add.325 = add nsw i32 %38, %mul.322
  store i32 %add.325, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  %arrayidx9.1.3 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 1
  %39 = load i32* %arrayidx9.1.3, align 4
  %arrayidx10.1.3 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.3 = getelementptr inbounds [4 x i32]* %arrayidx10.1.3, i32 0, i32 3
  %40 = load i32* %arrayidx11.1.3, align 4
  %mul.1.3 = mul nsw i32 %39, %40
  %41 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  %add.1.3 = add nsw i32 %41, %mul.1.3
  store i32 %add.1.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  %arrayidx9.2.3 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 2
  %42 = load i32* %arrayidx9.2.3, align 4
  %arrayidx10.2.3 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.3 = getelementptr inbounds [4 x i32]* %arrayidx10.2.3, i32 0, i32 3
  %43 = load i32* %arrayidx11.2.3, align 4
  %mul.2.3 = mul nsw i32 %42, %43
  %44 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  %add.2.3 = add nsw i32 %44, %mul.2.3
  store i32 %add.2.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  %arrayidx9.3.3 = getelementptr inbounds [4 x i32]* %a, i32 0, i32 3
  %45 = load i32* %arrayidx9.3.3, align 4
  %arrayidx10.3.3 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.3 = getelementptr inbounds [4 x i32]* %arrayidx10.3.3, i32 0, i32 3
  %46 = load i32* %arrayidx11.3.3, align 4
  %mul.3.3 = mul nsw i32 %45, %46
  %47 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  %add.3.3 = add nsw i32 %47, %mul.3.3
  store i32 %add.3.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %arrayidx8.130 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.131 = getelementptr inbounds [4 x i32]* %arrayidx8.130, i32 0, i32 0
  %48 = load i32* %arrayidx9.131, align 4
  %arrayidx11.132 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 0
  %49 = load i32* %arrayidx11.132, align 4
  %mul.133 = mul nsw i32 %48, %49
  %50 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %add.136 = add nsw i32 %50, %mul.133
  store i32 %add.136, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %arrayidx8.1.138 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.1.139 = getelementptr inbounds [4 x i32]* %arrayidx8.1.138, i32 0, i32 1
  %51 = load i32* %arrayidx9.1.139, align 4
  %arrayidx10.1.140 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.141 = getelementptr inbounds [4 x i32]* %arrayidx10.1.140, i32 0, i32 0
  %52 = load i32* %arrayidx11.1.141, align 4
  %mul.1.142 = mul nsw i32 %51, %52
  %53 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %add.1.145 = add nsw i32 %53, %mul.1.142
  store i32 %add.1.145, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %arrayidx8.2.147 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.2.148 = getelementptr inbounds [4 x i32]* %arrayidx8.2.147, i32 0, i32 2
  %54 = load i32* %arrayidx9.2.148, align 4
  %arrayidx10.2.149 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.150 = getelementptr inbounds [4 x i32]* %arrayidx10.2.149, i32 0, i32 0
  %55 = load i32* %arrayidx11.2.150, align 4
  %mul.2.151 = mul nsw i32 %54, %55
  %56 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %add.2.154 = add nsw i32 %56, %mul.2.151
  store i32 %add.2.154, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %arrayidx8.3.156 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.3.157 = getelementptr inbounds [4 x i32]* %arrayidx8.3.156, i32 0, i32 3
  %57 = load i32* %arrayidx9.3.157, align 4
  %arrayidx10.3.158 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.159 = getelementptr inbounds [4 x i32]* %arrayidx10.3.158, i32 0, i32 0
  %58 = load i32* %arrayidx11.3.159, align 4
  %mul.3.160 = mul nsw i32 %57, %58
  %59 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  %add.3.163 = add nsw i32 %59, %mul.3.160
  store i32 %add.3.163, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 0), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %arrayidx8.13.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.14.1 = getelementptr inbounds [4 x i32]* %arrayidx8.13.1, i32 0, i32 0
  %60 = load i32* %arrayidx9.14.1, align 4
  %arrayidx11.15.1 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 1
  %61 = load i32* %arrayidx11.15.1, align 4
  %mul.16.1 = mul nsw i32 %60, %61
  %62 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %add.19.1 = add nsw i32 %62, %mul.16.1
  store i32 %add.19.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %arrayidx8.1.1.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.1.1.1 = getelementptr inbounds [4 x i32]* %arrayidx8.1.1.1, i32 0, i32 1
  %63 = load i32* %arrayidx9.1.1.1, align 4
  %arrayidx10.1.1.1 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.1.1 = getelementptr inbounds [4 x i32]* %arrayidx10.1.1.1, i32 0, i32 1
  %64 = load i32* %arrayidx11.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %63, %64
  %65 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %add.1.1.1 = add nsw i32 %65, %mul.1.1.1
  store i32 %add.1.1.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %arrayidx8.2.1.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.2.1.1 = getelementptr inbounds [4 x i32]* %arrayidx8.2.1.1, i32 0, i32 2
  %66 = load i32* %arrayidx9.2.1.1, align 4
  %arrayidx10.2.1.1 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.1.1 = getelementptr inbounds [4 x i32]* %arrayidx10.2.1.1, i32 0, i32 1
  %67 = load i32* %arrayidx11.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %66, %67
  %68 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %add.2.1.1 = add nsw i32 %68, %mul.2.1.1
  store i32 %add.2.1.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %arrayidx8.3.1.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.3.1.1 = getelementptr inbounds [4 x i32]* %arrayidx8.3.1.1, i32 0, i32 3
  %69 = load i32* %arrayidx9.3.1.1, align 4
  %arrayidx10.3.1.1 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.1.1 = getelementptr inbounds [4 x i32]* %arrayidx10.3.1.1, i32 0, i32 1
  %70 = load i32* %arrayidx11.3.1.1, align 4
  %mul.3.1.1 = mul nsw i32 %69, %70
  %71 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  %add.3.1.1 = add nsw i32 %71, %mul.3.1.1
  store i32 %add.3.1.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 1), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  %arrayidx8.211.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.212.1 = getelementptr inbounds [4 x i32]* %arrayidx8.211.1, i32 0, i32 0
  %72 = load i32* %arrayidx9.212.1, align 4
  %arrayidx11.213.1 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 2
  %73 = load i32* %arrayidx11.213.1, align 4
  %mul.214.1 = mul nsw i32 %72, %73
  %74 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  %add.217.1 = add nsw i32 %74, %mul.214.1
  store i32 %add.217.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  %arrayidx8.1.2.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.1.2.1 = getelementptr inbounds [4 x i32]* %arrayidx8.1.2.1, i32 0, i32 1
  %75 = load i32* %arrayidx9.1.2.1, align 4
  %arrayidx10.1.2.1 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.2.1 = getelementptr inbounds [4 x i32]* %arrayidx10.1.2.1, i32 0, i32 2
  %76 = load i32* %arrayidx11.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %75, %76
  %77 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  %add.1.2.1 = add nsw i32 %77, %mul.1.2.1
  store i32 %add.1.2.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  %arrayidx8.2.2.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.2.2.1 = getelementptr inbounds [4 x i32]* %arrayidx8.2.2.1, i32 0, i32 2
  %78 = load i32* %arrayidx9.2.2.1, align 4
  %arrayidx10.2.2.1 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.2.1 = getelementptr inbounds [4 x i32]* %arrayidx10.2.2.1, i32 0, i32 2
  %79 = load i32* %arrayidx11.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %78, %79
  %80 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  %add.2.2.1 = add nsw i32 %80, %mul.2.2.1
  store i32 %add.2.2.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  %arrayidx8.3.2.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.3.2.1 = getelementptr inbounds [4 x i32]* %arrayidx8.3.2.1, i32 0, i32 3
  %81 = load i32* %arrayidx9.3.2.1, align 4
  %arrayidx10.3.2.1 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.2.1 = getelementptr inbounds [4 x i32]* %arrayidx10.3.2.1, i32 0, i32 2
  %82 = load i32* %arrayidx11.3.2.1, align 4
  %mul.3.2.1 = mul nsw i32 %81, %82
  %83 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  %add.3.2.1 = add nsw i32 %83, %mul.3.2.1
  store i32 %add.3.2.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 2), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  %arrayidx8.319.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.320.1 = getelementptr inbounds [4 x i32]* %arrayidx8.319.1, i32 0, i32 0
  %84 = load i32* %arrayidx9.320.1, align 4
  %arrayidx11.321.1 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 3
  %85 = load i32* %arrayidx11.321.1, align 4
  %mul.322.1 = mul nsw i32 %84, %85
  %86 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  %add.325.1 = add nsw i32 %86, %mul.322.1
  store i32 %add.325.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  %arrayidx8.1.3.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.1.3.1 = getelementptr inbounds [4 x i32]* %arrayidx8.1.3.1, i32 0, i32 1
  %87 = load i32* %arrayidx9.1.3.1, align 4
  %arrayidx10.1.3.1 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.3.1 = getelementptr inbounds [4 x i32]* %arrayidx10.1.3.1, i32 0, i32 3
  %88 = load i32* %arrayidx11.1.3.1, align 4
  %mul.1.3.1 = mul nsw i32 %87, %88
  %89 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  %add.1.3.1 = add nsw i32 %89, %mul.1.3.1
  store i32 %add.1.3.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  %arrayidx8.2.3.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.2.3.1 = getelementptr inbounds [4 x i32]* %arrayidx8.2.3.1, i32 0, i32 2
  %90 = load i32* %arrayidx9.2.3.1, align 4
  %arrayidx10.2.3.1 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.3.1 = getelementptr inbounds [4 x i32]* %arrayidx10.2.3.1, i32 0, i32 3
  %91 = load i32* %arrayidx11.2.3.1, align 4
  %mul.2.3.1 = mul nsw i32 %90, %91
  %92 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  %add.2.3.1 = add nsw i32 %92, %mul.2.3.1
  store i32 %add.2.3.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  %arrayidx8.3.3.1 = getelementptr inbounds [4 x i32]* %a, i32 1
  %arrayidx9.3.3.1 = getelementptr inbounds [4 x i32]* %arrayidx8.3.3.1, i32 0, i32 3
  %93 = load i32* %arrayidx9.3.3.1, align 4
  %arrayidx10.3.3.1 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.3.1 = getelementptr inbounds [4 x i32]* %arrayidx10.3.3.1, i32 0, i32 3
  %94 = load i32* %arrayidx11.3.3.1, align 4
  %mul.3.3.1 = mul nsw i32 %93, %94
  %95 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  %add.3.3.1 = add nsw i32 %95, %mul.3.3.1
  store i32 %add.3.3.1, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 1, i32 3), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  %arrayidx8.269 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.270 = getelementptr inbounds [4 x i32]* %arrayidx8.269, i32 0, i32 0
  %96 = load i32* %arrayidx9.270, align 4
  %arrayidx11.271 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 0
  %97 = load i32* %arrayidx11.271, align 4
  %mul.272 = mul nsw i32 %96, %97
  %98 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  %add.275 = add nsw i32 %98, %mul.272
  store i32 %add.275, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  %arrayidx8.1.277 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.1.278 = getelementptr inbounds [4 x i32]* %arrayidx8.1.277, i32 0, i32 1
  %99 = load i32* %arrayidx9.1.278, align 4
  %arrayidx10.1.279 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.280 = getelementptr inbounds [4 x i32]* %arrayidx10.1.279, i32 0, i32 0
  %100 = load i32* %arrayidx11.1.280, align 4
  %mul.1.281 = mul nsw i32 %99, %100
  %101 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  %add.1.284 = add nsw i32 %101, %mul.1.281
  store i32 %add.1.284, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  %arrayidx8.2.286 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.2.287 = getelementptr inbounds [4 x i32]* %arrayidx8.2.286, i32 0, i32 2
  %102 = load i32* %arrayidx9.2.287, align 4
  %arrayidx10.2.288 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.289 = getelementptr inbounds [4 x i32]* %arrayidx10.2.288, i32 0, i32 0
  %103 = load i32* %arrayidx11.2.289, align 4
  %mul.2.290 = mul nsw i32 %102, %103
  %104 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  %add.2.293 = add nsw i32 %104, %mul.2.290
  store i32 %add.2.293, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  %arrayidx8.3.295 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.3.296 = getelementptr inbounds [4 x i32]* %arrayidx8.3.295, i32 0, i32 3
  %105 = load i32* %arrayidx9.3.296, align 4
  %arrayidx10.3.297 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.298 = getelementptr inbounds [4 x i32]* %arrayidx10.3.297, i32 0, i32 0
  %106 = load i32* %arrayidx11.3.298, align 4
  %mul.3.299 = mul nsw i32 %105, %106
  %107 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  %add.3.2102 = add nsw i32 %107, %mul.3.299
  store i32 %add.3.2102, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 0), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  %arrayidx8.13.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.14.2 = getelementptr inbounds [4 x i32]* %arrayidx8.13.2, i32 0, i32 0
  %108 = load i32* %arrayidx9.14.2, align 4
  %arrayidx11.15.2 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 1
  %109 = load i32* %arrayidx11.15.2, align 4
  %mul.16.2 = mul nsw i32 %108, %109
  %110 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  %add.19.2 = add nsw i32 %110, %mul.16.2
  store i32 %add.19.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  %arrayidx8.1.1.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.1.1.2 = getelementptr inbounds [4 x i32]* %arrayidx8.1.1.2, i32 0, i32 1
  %111 = load i32* %arrayidx9.1.1.2, align 4
  %arrayidx10.1.1.2 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.1.2 = getelementptr inbounds [4 x i32]* %arrayidx10.1.1.2, i32 0, i32 1
  %112 = load i32* %arrayidx11.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %111, %112
  %113 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  %add.1.1.2 = add nsw i32 %113, %mul.1.1.2
  store i32 %add.1.1.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  %arrayidx8.2.1.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.2.1.2 = getelementptr inbounds [4 x i32]* %arrayidx8.2.1.2, i32 0, i32 2
  %114 = load i32* %arrayidx9.2.1.2, align 4
  %arrayidx10.2.1.2 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.1.2 = getelementptr inbounds [4 x i32]* %arrayidx10.2.1.2, i32 0, i32 1
  %115 = load i32* %arrayidx11.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %114, %115
  %116 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  %add.2.1.2 = add nsw i32 %116, %mul.2.1.2
  store i32 %add.2.1.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  %arrayidx8.3.1.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.3.1.2 = getelementptr inbounds [4 x i32]* %arrayidx8.3.1.2, i32 0, i32 3
  %117 = load i32* %arrayidx9.3.1.2, align 4
  %arrayidx10.3.1.2 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.1.2 = getelementptr inbounds [4 x i32]* %arrayidx10.3.1.2, i32 0, i32 1
  %118 = load i32* %arrayidx11.3.1.2, align 4
  %mul.3.1.2 = mul nsw i32 %117, %118
  %119 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  %add.3.1.2 = add nsw i32 %119, %mul.3.1.2
  store i32 %add.3.1.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 1), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  %arrayidx8.211.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.212.2 = getelementptr inbounds [4 x i32]* %arrayidx8.211.2, i32 0, i32 0
  %120 = load i32* %arrayidx9.212.2, align 4
  %arrayidx11.213.2 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 2
  %121 = load i32* %arrayidx11.213.2, align 4
  %mul.214.2 = mul nsw i32 %120, %121
  %122 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  %add.217.2 = add nsw i32 %122, %mul.214.2
  store i32 %add.217.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  %arrayidx8.1.2.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.1.2.2 = getelementptr inbounds [4 x i32]* %arrayidx8.1.2.2, i32 0, i32 1
  %123 = load i32* %arrayidx9.1.2.2, align 4
  %arrayidx10.1.2.2 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.2.2 = getelementptr inbounds [4 x i32]* %arrayidx10.1.2.2, i32 0, i32 2
  %124 = load i32* %arrayidx11.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %123, %124
  %125 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  %add.1.2.2 = add nsw i32 %125, %mul.1.2.2
  store i32 %add.1.2.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  %arrayidx8.2.2.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.2.2.2 = getelementptr inbounds [4 x i32]* %arrayidx8.2.2.2, i32 0, i32 2
  %126 = load i32* %arrayidx9.2.2.2, align 4
  %arrayidx10.2.2.2 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.2.2 = getelementptr inbounds [4 x i32]* %arrayidx10.2.2.2, i32 0, i32 2
  %127 = load i32* %arrayidx11.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %126, %127
  %128 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  %add.2.2.2 = add nsw i32 %128, %mul.2.2.2
  store i32 %add.2.2.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  %arrayidx8.3.2.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.3.2.2 = getelementptr inbounds [4 x i32]* %arrayidx8.3.2.2, i32 0, i32 3
  %129 = load i32* %arrayidx9.3.2.2, align 4
  %arrayidx10.3.2.2 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.2.2 = getelementptr inbounds [4 x i32]* %arrayidx10.3.2.2, i32 0, i32 2
  %130 = load i32* %arrayidx11.3.2.2, align 4
  %mul.3.2.2 = mul nsw i32 %129, %130
  %131 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  %add.3.2.2 = add nsw i32 %131, %mul.3.2.2
  store i32 %add.3.2.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 2), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  %arrayidx8.319.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.320.2 = getelementptr inbounds [4 x i32]* %arrayidx8.319.2, i32 0, i32 0
  %132 = load i32* %arrayidx9.320.2, align 4
  %arrayidx11.321.2 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 3
  %133 = load i32* %arrayidx11.321.2, align 4
  %mul.322.2 = mul nsw i32 %132, %133
  %134 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  %add.325.2 = add nsw i32 %134, %mul.322.2
  store i32 %add.325.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  %arrayidx8.1.3.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.1.3.2 = getelementptr inbounds [4 x i32]* %arrayidx8.1.3.2, i32 0, i32 1
  %135 = load i32* %arrayidx9.1.3.2, align 4
  %arrayidx10.1.3.2 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.3.2 = getelementptr inbounds [4 x i32]* %arrayidx10.1.3.2, i32 0, i32 3
  %136 = load i32* %arrayidx11.1.3.2, align 4
  %mul.1.3.2 = mul nsw i32 %135, %136
  %137 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  %add.1.3.2 = add nsw i32 %137, %mul.1.3.2
  store i32 %add.1.3.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  %arrayidx8.2.3.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.2.3.2 = getelementptr inbounds [4 x i32]* %arrayidx8.2.3.2, i32 0, i32 2
  %138 = load i32* %arrayidx9.2.3.2, align 4
  %arrayidx10.2.3.2 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.3.2 = getelementptr inbounds [4 x i32]* %arrayidx10.2.3.2, i32 0, i32 3
  %139 = load i32* %arrayidx11.2.3.2, align 4
  %mul.2.3.2 = mul nsw i32 %138, %139
  %140 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  %add.2.3.2 = add nsw i32 %140, %mul.2.3.2
  store i32 %add.2.3.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  %arrayidx8.3.3.2 = getelementptr inbounds [4 x i32]* %a, i32 2
  %arrayidx9.3.3.2 = getelementptr inbounds [4 x i32]* %arrayidx8.3.3.2, i32 0, i32 3
  %141 = load i32* %arrayidx9.3.3.2, align 4
  %arrayidx10.3.3.2 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.3.2 = getelementptr inbounds [4 x i32]* %arrayidx10.3.3.2, i32 0, i32 3
  %142 = load i32* %arrayidx11.3.3.2, align 4
  %mul.3.3.2 = mul nsw i32 %141, %142
  %143 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  %add.3.3.2 = add nsw i32 %143, %mul.3.3.2
  store i32 %add.3.3.2, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 2, i32 3), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  %arrayidx8.3108 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.3109 = getelementptr inbounds [4 x i32]* %arrayidx8.3108, i32 0, i32 0
  %144 = load i32* %arrayidx9.3109, align 4
  %arrayidx11.3110 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 0
  %145 = load i32* %arrayidx11.3110, align 4
  %mul.3111 = mul nsw i32 %144, %145
  %146 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  %add.3114 = add nsw i32 %146, %mul.3111
  store i32 %add.3114, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  %arrayidx8.1.3116 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.1.3117 = getelementptr inbounds [4 x i32]* %arrayidx8.1.3116, i32 0, i32 1
  %147 = load i32* %arrayidx9.1.3117, align 4
  %arrayidx10.1.3118 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.3119 = getelementptr inbounds [4 x i32]* %arrayidx10.1.3118, i32 0, i32 0
  %148 = load i32* %arrayidx11.1.3119, align 4
  %mul.1.3120 = mul nsw i32 %147, %148
  %149 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  %add.1.3123 = add nsw i32 %149, %mul.1.3120
  store i32 %add.1.3123, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  %arrayidx8.2.3125 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.2.3126 = getelementptr inbounds [4 x i32]* %arrayidx8.2.3125, i32 0, i32 2
  %150 = load i32* %arrayidx9.2.3126, align 4
  %arrayidx10.2.3127 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.3128 = getelementptr inbounds [4 x i32]* %arrayidx10.2.3127, i32 0, i32 0
  %151 = load i32* %arrayidx11.2.3128, align 4
  %mul.2.3129 = mul nsw i32 %150, %151
  %152 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  %add.2.3132 = add nsw i32 %152, %mul.2.3129
  store i32 %add.2.3132, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  %arrayidx8.3.3134 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.3.3135 = getelementptr inbounds [4 x i32]* %arrayidx8.3.3134, i32 0, i32 3
  %153 = load i32* %arrayidx9.3.3135, align 4
  %arrayidx10.3.3136 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.3137 = getelementptr inbounds [4 x i32]* %arrayidx10.3.3136, i32 0, i32 0
  %154 = load i32* %arrayidx11.3.3137, align 4
  %mul.3.3138 = mul nsw i32 %153, %154
  %155 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  %add.3.3141 = add nsw i32 %155, %mul.3.3138
  store i32 %add.3.3141, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 0), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  %arrayidx8.13.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.14.3 = getelementptr inbounds [4 x i32]* %arrayidx8.13.3, i32 0, i32 0
  %156 = load i32* %arrayidx9.14.3, align 4
  %arrayidx11.15.3 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 1
  %157 = load i32* %arrayidx11.15.3, align 4
  %mul.16.3 = mul nsw i32 %156, %157
  %158 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  %add.19.3 = add nsw i32 %158, %mul.16.3
  store i32 %add.19.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  %arrayidx8.1.1.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.1.1.3 = getelementptr inbounds [4 x i32]* %arrayidx8.1.1.3, i32 0, i32 1
  %159 = load i32* %arrayidx9.1.1.3, align 4
  %arrayidx10.1.1.3 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.1.3 = getelementptr inbounds [4 x i32]* %arrayidx10.1.1.3, i32 0, i32 1
  %160 = load i32* %arrayidx11.1.1.3, align 4
  %mul.1.1.3 = mul nsw i32 %159, %160
  %161 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  %add.1.1.3 = add nsw i32 %161, %mul.1.1.3
  store i32 %add.1.1.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  %arrayidx8.2.1.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.2.1.3 = getelementptr inbounds [4 x i32]* %arrayidx8.2.1.3, i32 0, i32 2
  %162 = load i32* %arrayidx9.2.1.3, align 4
  %arrayidx10.2.1.3 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.1.3 = getelementptr inbounds [4 x i32]* %arrayidx10.2.1.3, i32 0, i32 1
  %163 = load i32* %arrayidx11.2.1.3, align 4
  %mul.2.1.3 = mul nsw i32 %162, %163
  %164 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  %add.2.1.3 = add nsw i32 %164, %mul.2.1.3
  store i32 %add.2.1.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  %arrayidx8.3.1.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.3.1.3 = getelementptr inbounds [4 x i32]* %arrayidx8.3.1.3, i32 0, i32 3
  %165 = load i32* %arrayidx9.3.1.3, align 4
  %arrayidx10.3.1.3 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.1.3 = getelementptr inbounds [4 x i32]* %arrayidx10.3.1.3, i32 0, i32 1
  %166 = load i32* %arrayidx11.3.1.3, align 4
  %mul.3.1.3 = mul nsw i32 %165, %166
  %167 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  %add.3.1.3 = add nsw i32 %167, %mul.3.1.3
  store i32 %add.3.1.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 1), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  %arrayidx8.211.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.212.3 = getelementptr inbounds [4 x i32]* %arrayidx8.211.3, i32 0, i32 0
  %168 = load i32* %arrayidx9.212.3, align 4
  %arrayidx11.213.3 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 2
  %169 = load i32* %arrayidx11.213.3, align 4
  %mul.214.3 = mul nsw i32 %168, %169
  %170 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  %add.217.3 = add nsw i32 %170, %mul.214.3
  store i32 %add.217.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  %arrayidx8.1.2.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.1.2.3 = getelementptr inbounds [4 x i32]* %arrayidx8.1.2.3, i32 0, i32 1
  %171 = load i32* %arrayidx9.1.2.3, align 4
  %arrayidx10.1.2.3 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.2.3 = getelementptr inbounds [4 x i32]* %arrayidx10.1.2.3, i32 0, i32 2
  %172 = load i32* %arrayidx11.1.2.3, align 4
  %mul.1.2.3 = mul nsw i32 %171, %172
  %173 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  %add.1.2.3 = add nsw i32 %173, %mul.1.2.3
  store i32 %add.1.2.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  %arrayidx8.2.2.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.2.2.3 = getelementptr inbounds [4 x i32]* %arrayidx8.2.2.3, i32 0, i32 2
  %174 = load i32* %arrayidx9.2.2.3, align 4
  %arrayidx10.2.2.3 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.2.3 = getelementptr inbounds [4 x i32]* %arrayidx10.2.2.3, i32 0, i32 2
  %175 = load i32* %arrayidx11.2.2.3, align 4
  %mul.2.2.3 = mul nsw i32 %174, %175
  %176 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  %add.2.2.3 = add nsw i32 %176, %mul.2.2.3
  store i32 %add.2.2.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  %arrayidx8.3.2.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.3.2.3 = getelementptr inbounds [4 x i32]* %arrayidx8.3.2.3, i32 0, i32 3
  %177 = load i32* %arrayidx9.3.2.3, align 4
  %arrayidx10.3.2.3 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.2.3 = getelementptr inbounds [4 x i32]* %arrayidx10.3.2.3, i32 0, i32 2
  %178 = load i32* %arrayidx11.3.2.3, align 4
  %mul.3.2.3 = mul nsw i32 %177, %178
  %179 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  %add.3.2.3 = add nsw i32 %179, %mul.3.2.3
  store i32 %add.3.2.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 2), align 4
  store i32 0, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  %arrayidx8.319.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.320.3 = getelementptr inbounds [4 x i32]* %arrayidx8.319.3, i32 0, i32 0
  %180 = load i32* %arrayidx9.320.3, align 4
  %arrayidx11.321.3 = getelementptr inbounds [4 x i32]* %b, i32 0, i32 3
  %181 = load i32* %arrayidx11.321.3, align 4
  %mul.322.3 = mul nsw i32 %180, %181
  %182 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  %add.325.3 = add nsw i32 %182, %mul.322.3
  store i32 %add.325.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  %arrayidx8.1.3.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.1.3.3 = getelementptr inbounds [4 x i32]* %arrayidx8.1.3.3, i32 0, i32 1
  %183 = load i32* %arrayidx9.1.3.3, align 4
  %arrayidx10.1.3.3 = getelementptr inbounds [4 x i32]* %b, i32 1
  %arrayidx11.1.3.3 = getelementptr inbounds [4 x i32]* %arrayidx10.1.3.3, i32 0, i32 3
  %184 = load i32* %arrayidx11.1.3.3, align 4
  %mul.1.3.3 = mul nsw i32 %183, %184
  %185 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  %add.1.3.3 = add nsw i32 %185, %mul.1.3.3
  store i32 %add.1.3.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  %arrayidx8.2.3.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.2.3.3 = getelementptr inbounds [4 x i32]* %arrayidx8.2.3.3, i32 0, i32 2
  %186 = load i32* %arrayidx9.2.3.3, align 4
  %arrayidx10.2.3.3 = getelementptr inbounds [4 x i32]* %b, i32 2
  %arrayidx11.2.3.3 = getelementptr inbounds [4 x i32]* %arrayidx10.2.3.3, i32 0, i32 3
  %187 = load i32* %arrayidx11.2.3.3, align 4
  %mul.2.3.3 = mul nsw i32 %186, %187
  %188 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  %add.2.3.3 = add nsw i32 %188, %mul.2.3.3
  store i32 %add.2.3.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  %arrayidx8.3.3.3 = getelementptr inbounds [4 x i32]* %a, i32 3
  %arrayidx9.3.3.3 = getelementptr inbounds [4 x i32]* %arrayidx8.3.3.3, i32 0, i32 3
  %189 = load i32* %arrayidx9.3.3.3, align 4
  %arrayidx10.3.3.3 = getelementptr inbounds [4 x i32]* %b, i32 3
  %arrayidx11.3.3.3 = getelementptr inbounds [4 x i32]* %arrayidx10.3.3.3, i32 0, i32 3
  %190 = load i32* %arrayidx11.3.3.3, align 4
  %mul.3.3.3 = mul nsw i32 %189, %190
  %191 = load i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  %add.3.3.3 = add nsw i32 %191, %mul.3.3.3
  store i32 %add.3.3.3, i32* getelementptr inbounds ([4 x [4 x i32]]* @c, i32 0, i32 3, i32 3), align 4
  ret void
}
