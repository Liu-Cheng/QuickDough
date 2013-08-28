; ModuleID = 'fun3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z9matrixAddPA10_iS0_S0_([10 x i32]* %a, [10 x i32]* %b, [10 x i32]* %c) nounwind uwtable {
entry:
  %arrayidx5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx5, align 4
  %arrayidx9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx9, align 4
  %add = add nsw i32 %0, %1
  %arrayidx13 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  store i32 %add, i32* %arrayidx13, align 4
  %arrayidx5.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %2 = load i32* %arrayidx5.1, align 4
  %arrayidx9.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %3 = load i32* %arrayidx9.1, align 4
  %add.1 = add nsw i32 %2, %3
  %arrayidx13.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  store i32 %add.1, i32* %arrayidx13.1, align 4
  %arrayidx5.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %4 = load i32* %arrayidx5.2, align 4
  %arrayidx9.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %5 = load i32* %arrayidx9.2, align 4
  %add.2 = add nsw i32 %4, %5
  %arrayidx13.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  store i32 %add.2, i32* %arrayidx13.2, align 4
  %arrayidx5.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %6 = load i32* %arrayidx5.3, align 4
  %arrayidx9.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %7 = load i32* %arrayidx9.3, align 4
  %add.3 = add nsw i32 %6, %7
  %arrayidx13.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  store i32 %add.3, i32* %arrayidx13.3, align 4
  %arrayidx5.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %8 = load i32* %arrayidx5.4, align 4
  %arrayidx9.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %9 = load i32* %arrayidx9.4, align 4
  %add.4 = add nsw i32 %8, %9
  %arrayidx13.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  store i32 %add.4, i32* %arrayidx13.4, align 4
  %arrayidx5.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %10 = load i32* %arrayidx5.5, align 4
  %arrayidx9.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %11 = load i32* %arrayidx9.5, align 4
  %add.5 = add nsw i32 %10, %11
  %arrayidx13.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  store i32 %add.5, i32* %arrayidx13.5, align 4
  %arrayidx5.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %12 = load i32* %arrayidx5.6, align 4
  %arrayidx9.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %13 = load i32* %arrayidx9.6, align 4
  %add.6 = add nsw i32 %12, %13
  %arrayidx13.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  store i32 %add.6, i32* %arrayidx13.6, align 4
  %arrayidx5.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %14 = load i32* %arrayidx5.7, align 4
  %arrayidx9.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %15 = load i32* %arrayidx9.7, align 4
  %add.7 = add nsw i32 %14, %15
  %arrayidx13.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  store i32 %add.7, i32* %arrayidx13.7, align 4
  %arrayidx5.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %16 = load i32* %arrayidx5.8, align 4
  %arrayidx9.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %17 = load i32* %arrayidx9.8, align 4
  %add.8 = add nsw i32 %16, %17
  %arrayidx13.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  store i32 %add.8, i32* %arrayidx13.8, align 4
  %arrayidx5.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %18 = load i32* %arrayidx5.9, align 4
  %arrayidx9.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %19 = load i32* %arrayidx9.9, align 4
  %add.9 = add nsw i32 %18, %19
  %arrayidx13.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  store i32 %add.9, i32* %arrayidx13.9, align 4
  %arrayidx.13 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.14 = getelementptr inbounds [10 x i32]* %arrayidx.13, i32 0, i64 0
  %20 = load i32* %arrayidx5.14, align 4
  %arrayidx8.15 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.16 = getelementptr inbounds [10 x i32]* %arrayidx8.15, i32 0, i64 0
  %21 = load i32* %arrayidx9.16, align 4
  %add.17 = add nsw i32 %20, %21
  %arrayidx12.18 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.19 = getelementptr inbounds [10 x i32]* %arrayidx12.18, i32 0, i64 0
  store i32 %add.17, i32* %arrayidx13.19, align 4
  %arrayidx.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [10 x i32]* %arrayidx.1.1, i32 0, i64 1
  %22 = load i32* %arrayidx5.1.1, align 4
  %arrayidx8.1.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.1.1 = getelementptr inbounds [10 x i32]* %arrayidx8.1.1, i32 0, i64 1
  %23 = load i32* %arrayidx9.1.1, align 4
  %add.1.1 = add nsw i32 %22, %23
  %arrayidx12.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.1.1 = getelementptr inbounds [10 x i32]* %arrayidx12.1.1, i32 0, i64 1
  store i32 %add.1.1, i32* %arrayidx13.1.1, align 4
  %arrayidx.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [10 x i32]* %arrayidx.2.1, i32 0, i64 2
  %24 = load i32* %arrayidx5.2.1, align 4
  %arrayidx8.2.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.2.1 = getelementptr inbounds [10 x i32]* %arrayidx8.2.1, i32 0, i64 2
  %25 = load i32* %arrayidx9.2.1, align 4
  %add.2.1 = add nsw i32 %24, %25
  %arrayidx12.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.2.1 = getelementptr inbounds [10 x i32]* %arrayidx12.2.1, i32 0, i64 2
  store i32 %add.2.1, i32* %arrayidx13.2.1, align 4
  %arrayidx.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.3.1 = getelementptr inbounds [10 x i32]* %arrayidx.3.1, i32 0, i64 3
  %26 = load i32* %arrayidx5.3.1, align 4
  %arrayidx8.3.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.3.1 = getelementptr inbounds [10 x i32]* %arrayidx8.3.1, i32 0, i64 3
  %27 = load i32* %arrayidx9.3.1, align 4
  %add.3.1 = add nsw i32 %26, %27
  %arrayidx12.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.3.1 = getelementptr inbounds [10 x i32]* %arrayidx12.3.1, i32 0, i64 3
  store i32 %add.3.1, i32* %arrayidx13.3.1, align 4
  %arrayidx.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.4.1 = getelementptr inbounds [10 x i32]* %arrayidx.4.1, i32 0, i64 4
  %28 = load i32* %arrayidx5.4.1, align 4
  %arrayidx8.4.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.4.1 = getelementptr inbounds [10 x i32]* %arrayidx8.4.1, i32 0, i64 4
  %29 = load i32* %arrayidx9.4.1, align 4
  %add.4.1 = add nsw i32 %28, %29
  %arrayidx12.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.4.1 = getelementptr inbounds [10 x i32]* %arrayidx12.4.1, i32 0, i64 4
  store i32 %add.4.1, i32* %arrayidx13.4.1, align 4
  %arrayidx.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.5.1 = getelementptr inbounds [10 x i32]* %arrayidx.5.1, i32 0, i64 5
  %30 = load i32* %arrayidx5.5.1, align 4
  %arrayidx8.5.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.5.1 = getelementptr inbounds [10 x i32]* %arrayidx8.5.1, i32 0, i64 5
  %31 = load i32* %arrayidx9.5.1, align 4
  %add.5.1 = add nsw i32 %30, %31
  %arrayidx12.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.5.1 = getelementptr inbounds [10 x i32]* %arrayidx12.5.1, i32 0, i64 5
  store i32 %add.5.1, i32* %arrayidx13.5.1, align 4
  %arrayidx.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.6.1 = getelementptr inbounds [10 x i32]* %arrayidx.6.1, i32 0, i64 6
  %32 = load i32* %arrayidx5.6.1, align 4
  %arrayidx8.6.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.6.1 = getelementptr inbounds [10 x i32]* %arrayidx8.6.1, i32 0, i64 6
  %33 = load i32* %arrayidx9.6.1, align 4
  %add.6.1 = add nsw i32 %32, %33
  %arrayidx12.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.6.1 = getelementptr inbounds [10 x i32]* %arrayidx12.6.1, i32 0, i64 6
  store i32 %add.6.1, i32* %arrayidx13.6.1, align 4
  %arrayidx.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.7.1 = getelementptr inbounds [10 x i32]* %arrayidx.7.1, i32 0, i64 7
  %34 = load i32* %arrayidx5.7.1, align 4
  %arrayidx8.7.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.7.1 = getelementptr inbounds [10 x i32]* %arrayidx8.7.1, i32 0, i64 7
  %35 = load i32* %arrayidx9.7.1, align 4
  %add.7.1 = add nsw i32 %34, %35
  %arrayidx12.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.7.1 = getelementptr inbounds [10 x i32]* %arrayidx12.7.1, i32 0, i64 7
  store i32 %add.7.1, i32* %arrayidx13.7.1, align 4
  %arrayidx.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.8.1 = getelementptr inbounds [10 x i32]* %arrayidx.8.1, i32 0, i64 8
  %36 = load i32* %arrayidx5.8.1, align 4
  %arrayidx8.8.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.8.1 = getelementptr inbounds [10 x i32]* %arrayidx8.8.1, i32 0, i64 8
  %37 = load i32* %arrayidx9.8.1, align 4
  %add.8.1 = add nsw i32 %36, %37
  %arrayidx12.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.8.1 = getelementptr inbounds [10 x i32]* %arrayidx12.8.1, i32 0, i64 8
  store i32 %add.8.1, i32* %arrayidx13.8.1, align 4
  %arrayidx.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx5.9.1 = getelementptr inbounds [10 x i32]* %arrayidx.9.1, i32 0, i64 9
  %38 = load i32* %arrayidx5.9.1, align 4
  %arrayidx8.9.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx9.9.1 = getelementptr inbounds [10 x i32]* %arrayidx8.9.1, i32 0, i64 9
  %39 = load i32* %arrayidx9.9.1, align 4
  %add.9.1 = add nsw i32 %38, %39
  %arrayidx12.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx13.9.1 = getelementptr inbounds [10 x i32]* %arrayidx12.9.1, i32 0, i64 9
  store i32 %add.9.1, i32* %arrayidx13.9.1, align 4
  %arrayidx.211 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.212 = getelementptr inbounds [10 x i32]* %arrayidx.211, i32 0, i64 0
  %40 = load i32* %arrayidx5.212, align 4
  %arrayidx8.213 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.214 = getelementptr inbounds [10 x i32]* %arrayidx8.213, i32 0, i64 0
  %41 = load i32* %arrayidx9.214, align 4
  %add.215 = add nsw i32 %40, %41
  %arrayidx12.216 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.217 = getelementptr inbounds [10 x i32]* %arrayidx12.216, i32 0, i64 0
  store i32 %add.215, i32* %arrayidx13.217, align 4
  %arrayidx.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [10 x i32]* %arrayidx.1.2, i32 0, i64 1
  %42 = load i32* %arrayidx5.1.2, align 4
  %arrayidx8.1.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.1.2 = getelementptr inbounds [10 x i32]* %arrayidx8.1.2, i32 0, i64 1
  %43 = load i32* %arrayidx9.1.2, align 4
  %add.1.2 = add nsw i32 %42, %43
  %arrayidx12.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.1.2 = getelementptr inbounds [10 x i32]* %arrayidx12.1.2, i32 0, i64 1
  store i32 %add.1.2, i32* %arrayidx13.1.2, align 4
  %arrayidx.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [10 x i32]* %arrayidx.2.2, i32 0, i64 2
  %44 = load i32* %arrayidx5.2.2, align 4
  %arrayidx8.2.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.2.2 = getelementptr inbounds [10 x i32]* %arrayidx8.2.2, i32 0, i64 2
  %45 = load i32* %arrayidx9.2.2, align 4
  %add.2.2 = add nsw i32 %44, %45
  %arrayidx12.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.2.2 = getelementptr inbounds [10 x i32]* %arrayidx12.2.2, i32 0, i64 2
  store i32 %add.2.2, i32* %arrayidx13.2.2, align 4
  %arrayidx.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.3.2 = getelementptr inbounds [10 x i32]* %arrayidx.3.2, i32 0, i64 3
  %46 = load i32* %arrayidx5.3.2, align 4
  %arrayidx8.3.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.3.2 = getelementptr inbounds [10 x i32]* %arrayidx8.3.2, i32 0, i64 3
  %47 = load i32* %arrayidx9.3.2, align 4
  %add.3.2 = add nsw i32 %46, %47
  %arrayidx12.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.3.2 = getelementptr inbounds [10 x i32]* %arrayidx12.3.2, i32 0, i64 3
  store i32 %add.3.2, i32* %arrayidx13.3.2, align 4
  %arrayidx.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.4.2 = getelementptr inbounds [10 x i32]* %arrayidx.4.2, i32 0, i64 4
  %48 = load i32* %arrayidx5.4.2, align 4
  %arrayidx8.4.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.4.2 = getelementptr inbounds [10 x i32]* %arrayidx8.4.2, i32 0, i64 4
  %49 = load i32* %arrayidx9.4.2, align 4
  %add.4.2 = add nsw i32 %48, %49
  %arrayidx12.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.4.2 = getelementptr inbounds [10 x i32]* %arrayidx12.4.2, i32 0, i64 4
  store i32 %add.4.2, i32* %arrayidx13.4.2, align 4
  %arrayidx.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.5.2 = getelementptr inbounds [10 x i32]* %arrayidx.5.2, i32 0, i64 5
  %50 = load i32* %arrayidx5.5.2, align 4
  %arrayidx8.5.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.5.2 = getelementptr inbounds [10 x i32]* %arrayidx8.5.2, i32 0, i64 5
  %51 = load i32* %arrayidx9.5.2, align 4
  %add.5.2 = add nsw i32 %50, %51
  %arrayidx12.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.5.2 = getelementptr inbounds [10 x i32]* %arrayidx12.5.2, i32 0, i64 5
  store i32 %add.5.2, i32* %arrayidx13.5.2, align 4
  %arrayidx.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.6.2 = getelementptr inbounds [10 x i32]* %arrayidx.6.2, i32 0, i64 6
  %52 = load i32* %arrayidx5.6.2, align 4
  %arrayidx8.6.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.6.2 = getelementptr inbounds [10 x i32]* %arrayidx8.6.2, i32 0, i64 6
  %53 = load i32* %arrayidx9.6.2, align 4
  %add.6.2 = add nsw i32 %52, %53
  %arrayidx12.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.6.2 = getelementptr inbounds [10 x i32]* %arrayidx12.6.2, i32 0, i64 6
  store i32 %add.6.2, i32* %arrayidx13.6.2, align 4
  %arrayidx.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.7.2 = getelementptr inbounds [10 x i32]* %arrayidx.7.2, i32 0, i64 7
  %54 = load i32* %arrayidx5.7.2, align 4
  %arrayidx8.7.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.7.2 = getelementptr inbounds [10 x i32]* %arrayidx8.7.2, i32 0, i64 7
  %55 = load i32* %arrayidx9.7.2, align 4
  %add.7.2 = add nsw i32 %54, %55
  %arrayidx12.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.7.2 = getelementptr inbounds [10 x i32]* %arrayidx12.7.2, i32 0, i64 7
  store i32 %add.7.2, i32* %arrayidx13.7.2, align 4
  %arrayidx.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.8.2 = getelementptr inbounds [10 x i32]* %arrayidx.8.2, i32 0, i64 8
  %56 = load i32* %arrayidx5.8.2, align 4
  %arrayidx8.8.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.8.2 = getelementptr inbounds [10 x i32]* %arrayidx8.8.2, i32 0, i64 8
  %57 = load i32* %arrayidx9.8.2, align 4
  %add.8.2 = add nsw i32 %56, %57
  %arrayidx12.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.8.2 = getelementptr inbounds [10 x i32]* %arrayidx12.8.2, i32 0, i64 8
  store i32 %add.8.2, i32* %arrayidx13.8.2, align 4
  %arrayidx.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx5.9.2 = getelementptr inbounds [10 x i32]* %arrayidx.9.2, i32 0, i64 9
  %58 = load i32* %arrayidx5.9.2, align 4
  %arrayidx8.9.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx9.9.2 = getelementptr inbounds [10 x i32]* %arrayidx8.9.2, i32 0, i64 9
  %59 = load i32* %arrayidx9.9.2, align 4
  %add.9.2 = add nsw i32 %58, %59
  %arrayidx12.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx13.9.2 = getelementptr inbounds [10 x i32]* %arrayidx12.9.2, i32 0, i64 9
  store i32 %add.9.2, i32* %arrayidx13.9.2, align 4
  %arrayidx.319 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.320 = getelementptr inbounds [10 x i32]* %arrayidx.319, i32 0, i64 0
  %60 = load i32* %arrayidx5.320, align 4
  %arrayidx8.321 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.322 = getelementptr inbounds [10 x i32]* %arrayidx8.321, i32 0, i64 0
  %61 = load i32* %arrayidx9.322, align 4
  %add.323 = add nsw i32 %60, %61
  %arrayidx12.324 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.325 = getelementptr inbounds [10 x i32]* %arrayidx12.324, i32 0, i64 0
  store i32 %add.323, i32* %arrayidx13.325, align 4
  %arrayidx.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.1.3 = getelementptr inbounds [10 x i32]* %arrayidx.1.3, i32 0, i64 1
  %62 = load i32* %arrayidx5.1.3, align 4
  %arrayidx8.1.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.1.3 = getelementptr inbounds [10 x i32]* %arrayidx8.1.3, i32 0, i64 1
  %63 = load i32* %arrayidx9.1.3, align 4
  %add.1.3 = add nsw i32 %62, %63
  %arrayidx12.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.1.3 = getelementptr inbounds [10 x i32]* %arrayidx12.1.3, i32 0, i64 1
  store i32 %add.1.3, i32* %arrayidx13.1.3, align 4
  %arrayidx.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.2.3 = getelementptr inbounds [10 x i32]* %arrayidx.2.3, i32 0, i64 2
  %64 = load i32* %arrayidx5.2.3, align 4
  %arrayidx8.2.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.2.3 = getelementptr inbounds [10 x i32]* %arrayidx8.2.3, i32 0, i64 2
  %65 = load i32* %arrayidx9.2.3, align 4
  %add.2.3 = add nsw i32 %64, %65
  %arrayidx12.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.2.3 = getelementptr inbounds [10 x i32]* %arrayidx12.2.3, i32 0, i64 2
  store i32 %add.2.3, i32* %arrayidx13.2.3, align 4
  %arrayidx.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.3.3 = getelementptr inbounds [10 x i32]* %arrayidx.3.3, i32 0, i64 3
  %66 = load i32* %arrayidx5.3.3, align 4
  %arrayidx8.3.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.3.3 = getelementptr inbounds [10 x i32]* %arrayidx8.3.3, i32 0, i64 3
  %67 = load i32* %arrayidx9.3.3, align 4
  %add.3.3 = add nsw i32 %66, %67
  %arrayidx12.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.3.3 = getelementptr inbounds [10 x i32]* %arrayidx12.3.3, i32 0, i64 3
  store i32 %add.3.3, i32* %arrayidx13.3.3, align 4
  %arrayidx.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.4.3 = getelementptr inbounds [10 x i32]* %arrayidx.4.3, i32 0, i64 4
  %68 = load i32* %arrayidx5.4.3, align 4
  %arrayidx8.4.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.4.3 = getelementptr inbounds [10 x i32]* %arrayidx8.4.3, i32 0, i64 4
  %69 = load i32* %arrayidx9.4.3, align 4
  %add.4.3 = add nsw i32 %68, %69
  %arrayidx12.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.4.3 = getelementptr inbounds [10 x i32]* %arrayidx12.4.3, i32 0, i64 4
  store i32 %add.4.3, i32* %arrayidx13.4.3, align 4
  %arrayidx.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.5.3 = getelementptr inbounds [10 x i32]* %arrayidx.5.3, i32 0, i64 5
  %70 = load i32* %arrayidx5.5.3, align 4
  %arrayidx8.5.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.5.3 = getelementptr inbounds [10 x i32]* %arrayidx8.5.3, i32 0, i64 5
  %71 = load i32* %arrayidx9.5.3, align 4
  %add.5.3 = add nsw i32 %70, %71
  %arrayidx12.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.5.3 = getelementptr inbounds [10 x i32]* %arrayidx12.5.3, i32 0, i64 5
  store i32 %add.5.3, i32* %arrayidx13.5.3, align 4
  %arrayidx.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.6.3 = getelementptr inbounds [10 x i32]* %arrayidx.6.3, i32 0, i64 6
  %72 = load i32* %arrayidx5.6.3, align 4
  %arrayidx8.6.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.6.3 = getelementptr inbounds [10 x i32]* %arrayidx8.6.3, i32 0, i64 6
  %73 = load i32* %arrayidx9.6.3, align 4
  %add.6.3 = add nsw i32 %72, %73
  %arrayidx12.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.6.3 = getelementptr inbounds [10 x i32]* %arrayidx12.6.3, i32 0, i64 6
  store i32 %add.6.3, i32* %arrayidx13.6.3, align 4
  %arrayidx.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.7.3 = getelementptr inbounds [10 x i32]* %arrayidx.7.3, i32 0, i64 7
  %74 = load i32* %arrayidx5.7.3, align 4
  %arrayidx8.7.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.7.3 = getelementptr inbounds [10 x i32]* %arrayidx8.7.3, i32 0, i64 7
  %75 = load i32* %arrayidx9.7.3, align 4
  %add.7.3 = add nsw i32 %74, %75
  %arrayidx12.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.7.3 = getelementptr inbounds [10 x i32]* %arrayidx12.7.3, i32 0, i64 7
  store i32 %add.7.3, i32* %arrayidx13.7.3, align 4
  %arrayidx.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.8.3 = getelementptr inbounds [10 x i32]* %arrayidx.8.3, i32 0, i64 8
  %76 = load i32* %arrayidx5.8.3, align 4
  %arrayidx8.8.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.8.3 = getelementptr inbounds [10 x i32]* %arrayidx8.8.3, i32 0, i64 8
  %77 = load i32* %arrayidx9.8.3, align 4
  %add.8.3 = add nsw i32 %76, %77
  %arrayidx12.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.8.3 = getelementptr inbounds [10 x i32]* %arrayidx12.8.3, i32 0, i64 8
  store i32 %add.8.3, i32* %arrayidx13.8.3, align 4
  %arrayidx.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx5.9.3 = getelementptr inbounds [10 x i32]* %arrayidx.9.3, i32 0, i64 9
  %78 = load i32* %arrayidx5.9.3, align 4
  %arrayidx8.9.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx9.9.3 = getelementptr inbounds [10 x i32]* %arrayidx8.9.3, i32 0, i64 9
  %79 = load i32* %arrayidx9.9.3, align 4
  %add.9.3 = add nsw i32 %78, %79
  %arrayidx12.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx13.9.3 = getelementptr inbounds [10 x i32]* %arrayidx12.9.3, i32 0, i64 9
  store i32 %add.9.3, i32* %arrayidx13.9.3, align 4
  %arrayidx.427 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.428 = getelementptr inbounds [10 x i32]* %arrayidx.427, i32 0, i64 0
  %80 = load i32* %arrayidx5.428, align 4
  %arrayidx8.429 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.430 = getelementptr inbounds [10 x i32]* %arrayidx8.429, i32 0, i64 0
  %81 = load i32* %arrayidx9.430, align 4
  %add.431 = add nsw i32 %80, %81
  %arrayidx12.432 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.433 = getelementptr inbounds [10 x i32]* %arrayidx12.432, i32 0, i64 0
  store i32 %add.431, i32* %arrayidx13.433, align 4
  %arrayidx.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.1.4 = getelementptr inbounds [10 x i32]* %arrayidx.1.4, i32 0, i64 1
  %82 = load i32* %arrayidx5.1.4, align 4
  %arrayidx8.1.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.1.4 = getelementptr inbounds [10 x i32]* %arrayidx8.1.4, i32 0, i64 1
  %83 = load i32* %arrayidx9.1.4, align 4
  %add.1.4 = add nsw i32 %82, %83
  %arrayidx12.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.1.4 = getelementptr inbounds [10 x i32]* %arrayidx12.1.4, i32 0, i64 1
  store i32 %add.1.4, i32* %arrayidx13.1.4, align 4
  %arrayidx.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.2.4 = getelementptr inbounds [10 x i32]* %arrayidx.2.4, i32 0, i64 2
  %84 = load i32* %arrayidx5.2.4, align 4
  %arrayidx8.2.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.2.4 = getelementptr inbounds [10 x i32]* %arrayidx8.2.4, i32 0, i64 2
  %85 = load i32* %arrayidx9.2.4, align 4
  %add.2.4 = add nsw i32 %84, %85
  %arrayidx12.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.2.4 = getelementptr inbounds [10 x i32]* %arrayidx12.2.4, i32 0, i64 2
  store i32 %add.2.4, i32* %arrayidx13.2.4, align 4
  %arrayidx.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.3.4 = getelementptr inbounds [10 x i32]* %arrayidx.3.4, i32 0, i64 3
  %86 = load i32* %arrayidx5.3.4, align 4
  %arrayidx8.3.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.3.4 = getelementptr inbounds [10 x i32]* %arrayidx8.3.4, i32 0, i64 3
  %87 = load i32* %arrayidx9.3.4, align 4
  %add.3.4 = add nsw i32 %86, %87
  %arrayidx12.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.3.4 = getelementptr inbounds [10 x i32]* %arrayidx12.3.4, i32 0, i64 3
  store i32 %add.3.4, i32* %arrayidx13.3.4, align 4
  %arrayidx.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.4.4 = getelementptr inbounds [10 x i32]* %arrayidx.4.4, i32 0, i64 4
  %88 = load i32* %arrayidx5.4.4, align 4
  %arrayidx8.4.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.4.4 = getelementptr inbounds [10 x i32]* %arrayidx8.4.4, i32 0, i64 4
  %89 = load i32* %arrayidx9.4.4, align 4
  %add.4.4 = add nsw i32 %88, %89
  %arrayidx12.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.4.4 = getelementptr inbounds [10 x i32]* %arrayidx12.4.4, i32 0, i64 4
  store i32 %add.4.4, i32* %arrayidx13.4.4, align 4
  %arrayidx.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.5.4 = getelementptr inbounds [10 x i32]* %arrayidx.5.4, i32 0, i64 5
  %90 = load i32* %arrayidx5.5.4, align 4
  %arrayidx8.5.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.5.4 = getelementptr inbounds [10 x i32]* %arrayidx8.5.4, i32 0, i64 5
  %91 = load i32* %arrayidx9.5.4, align 4
  %add.5.4 = add nsw i32 %90, %91
  %arrayidx12.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.5.4 = getelementptr inbounds [10 x i32]* %arrayidx12.5.4, i32 0, i64 5
  store i32 %add.5.4, i32* %arrayidx13.5.4, align 4
  %arrayidx.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.6.4 = getelementptr inbounds [10 x i32]* %arrayidx.6.4, i32 0, i64 6
  %92 = load i32* %arrayidx5.6.4, align 4
  %arrayidx8.6.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.6.4 = getelementptr inbounds [10 x i32]* %arrayidx8.6.4, i32 0, i64 6
  %93 = load i32* %arrayidx9.6.4, align 4
  %add.6.4 = add nsw i32 %92, %93
  %arrayidx12.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.6.4 = getelementptr inbounds [10 x i32]* %arrayidx12.6.4, i32 0, i64 6
  store i32 %add.6.4, i32* %arrayidx13.6.4, align 4
  %arrayidx.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.7.4 = getelementptr inbounds [10 x i32]* %arrayidx.7.4, i32 0, i64 7
  %94 = load i32* %arrayidx5.7.4, align 4
  %arrayidx8.7.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.7.4 = getelementptr inbounds [10 x i32]* %arrayidx8.7.4, i32 0, i64 7
  %95 = load i32* %arrayidx9.7.4, align 4
  %add.7.4 = add nsw i32 %94, %95
  %arrayidx12.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.7.4 = getelementptr inbounds [10 x i32]* %arrayidx12.7.4, i32 0, i64 7
  store i32 %add.7.4, i32* %arrayidx13.7.4, align 4
  %arrayidx.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.8.4 = getelementptr inbounds [10 x i32]* %arrayidx.8.4, i32 0, i64 8
  %96 = load i32* %arrayidx5.8.4, align 4
  %arrayidx8.8.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.8.4 = getelementptr inbounds [10 x i32]* %arrayidx8.8.4, i32 0, i64 8
  %97 = load i32* %arrayidx9.8.4, align 4
  %add.8.4 = add nsw i32 %96, %97
  %arrayidx12.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.8.4 = getelementptr inbounds [10 x i32]* %arrayidx12.8.4, i32 0, i64 8
  store i32 %add.8.4, i32* %arrayidx13.8.4, align 4
  %arrayidx.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx5.9.4 = getelementptr inbounds [10 x i32]* %arrayidx.9.4, i32 0, i64 9
  %98 = load i32* %arrayidx5.9.4, align 4
  %arrayidx8.9.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx9.9.4 = getelementptr inbounds [10 x i32]* %arrayidx8.9.4, i32 0, i64 9
  %99 = load i32* %arrayidx9.9.4, align 4
  %add.9.4 = add nsw i32 %98, %99
  %arrayidx12.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx13.9.4 = getelementptr inbounds [10 x i32]* %arrayidx12.9.4, i32 0, i64 9
  store i32 %add.9.4, i32* %arrayidx13.9.4, align 4
  %arrayidx.535 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.536 = getelementptr inbounds [10 x i32]* %arrayidx.535, i32 0, i64 0
  %100 = load i32* %arrayidx5.536, align 4
  %arrayidx8.537 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.538 = getelementptr inbounds [10 x i32]* %arrayidx8.537, i32 0, i64 0
  %101 = load i32* %arrayidx9.538, align 4
  %add.539 = add nsw i32 %100, %101
  %arrayidx12.540 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.541 = getelementptr inbounds [10 x i32]* %arrayidx12.540, i32 0, i64 0
  store i32 %add.539, i32* %arrayidx13.541, align 4
  %arrayidx.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.1.5 = getelementptr inbounds [10 x i32]* %arrayidx.1.5, i32 0, i64 1
  %102 = load i32* %arrayidx5.1.5, align 4
  %arrayidx8.1.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.1.5 = getelementptr inbounds [10 x i32]* %arrayidx8.1.5, i32 0, i64 1
  %103 = load i32* %arrayidx9.1.5, align 4
  %add.1.5 = add nsw i32 %102, %103
  %arrayidx12.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.1.5 = getelementptr inbounds [10 x i32]* %arrayidx12.1.5, i32 0, i64 1
  store i32 %add.1.5, i32* %arrayidx13.1.5, align 4
  %arrayidx.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.2.5 = getelementptr inbounds [10 x i32]* %arrayidx.2.5, i32 0, i64 2
  %104 = load i32* %arrayidx5.2.5, align 4
  %arrayidx8.2.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.2.5 = getelementptr inbounds [10 x i32]* %arrayidx8.2.5, i32 0, i64 2
  %105 = load i32* %arrayidx9.2.5, align 4
  %add.2.5 = add nsw i32 %104, %105
  %arrayidx12.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.2.5 = getelementptr inbounds [10 x i32]* %arrayidx12.2.5, i32 0, i64 2
  store i32 %add.2.5, i32* %arrayidx13.2.5, align 4
  %arrayidx.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.3.5 = getelementptr inbounds [10 x i32]* %arrayidx.3.5, i32 0, i64 3
  %106 = load i32* %arrayidx5.3.5, align 4
  %arrayidx8.3.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.3.5 = getelementptr inbounds [10 x i32]* %arrayidx8.3.5, i32 0, i64 3
  %107 = load i32* %arrayidx9.3.5, align 4
  %add.3.5 = add nsw i32 %106, %107
  %arrayidx12.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.3.5 = getelementptr inbounds [10 x i32]* %arrayidx12.3.5, i32 0, i64 3
  store i32 %add.3.5, i32* %arrayidx13.3.5, align 4
  %arrayidx.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.4.5 = getelementptr inbounds [10 x i32]* %arrayidx.4.5, i32 0, i64 4
  %108 = load i32* %arrayidx5.4.5, align 4
  %arrayidx8.4.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.4.5 = getelementptr inbounds [10 x i32]* %arrayidx8.4.5, i32 0, i64 4
  %109 = load i32* %arrayidx9.4.5, align 4
  %add.4.5 = add nsw i32 %108, %109
  %arrayidx12.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.4.5 = getelementptr inbounds [10 x i32]* %arrayidx12.4.5, i32 0, i64 4
  store i32 %add.4.5, i32* %arrayidx13.4.5, align 4
  %arrayidx.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.5.5 = getelementptr inbounds [10 x i32]* %arrayidx.5.5, i32 0, i64 5
  %110 = load i32* %arrayidx5.5.5, align 4
  %arrayidx8.5.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.5.5 = getelementptr inbounds [10 x i32]* %arrayidx8.5.5, i32 0, i64 5
  %111 = load i32* %arrayidx9.5.5, align 4
  %add.5.5 = add nsw i32 %110, %111
  %arrayidx12.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.5.5 = getelementptr inbounds [10 x i32]* %arrayidx12.5.5, i32 0, i64 5
  store i32 %add.5.5, i32* %arrayidx13.5.5, align 4
  %arrayidx.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.6.5 = getelementptr inbounds [10 x i32]* %arrayidx.6.5, i32 0, i64 6
  %112 = load i32* %arrayidx5.6.5, align 4
  %arrayidx8.6.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.6.5 = getelementptr inbounds [10 x i32]* %arrayidx8.6.5, i32 0, i64 6
  %113 = load i32* %arrayidx9.6.5, align 4
  %add.6.5 = add nsw i32 %112, %113
  %arrayidx12.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.6.5 = getelementptr inbounds [10 x i32]* %arrayidx12.6.5, i32 0, i64 6
  store i32 %add.6.5, i32* %arrayidx13.6.5, align 4
  %arrayidx.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.7.5 = getelementptr inbounds [10 x i32]* %arrayidx.7.5, i32 0, i64 7
  %114 = load i32* %arrayidx5.7.5, align 4
  %arrayidx8.7.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.7.5 = getelementptr inbounds [10 x i32]* %arrayidx8.7.5, i32 0, i64 7
  %115 = load i32* %arrayidx9.7.5, align 4
  %add.7.5 = add nsw i32 %114, %115
  %arrayidx12.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.7.5 = getelementptr inbounds [10 x i32]* %arrayidx12.7.5, i32 0, i64 7
  store i32 %add.7.5, i32* %arrayidx13.7.5, align 4
  %arrayidx.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.8.5 = getelementptr inbounds [10 x i32]* %arrayidx.8.5, i32 0, i64 8
  %116 = load i32* %arrayidx5.8.5, align 4
  %arrayidx8.8.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.8.5 = getelementptr inbounds [10 x i32]* %arrayidx8.8.5, i32 0, i64 8
  %117 = load i32* %arrayidx9.8.5, align 4
  %add.8.5 = add nsw i32 %116, %117
  %arrayidx12.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.8.5 = getelementptr inbounds [10 x i32]* %arrayidx12.8.5, i32 0, i64 8
  store i32 %add.8.5, i32* %arrayidx13.8.5, align 4
  %arrayidx.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx5.9.5 = getelementptr inbounds [10 x i32]* %arrayidx.9.5, i32 0, i64 9
  %118 = load i32* %arrayidx5.9.5, align 4
  %arrayidx8.9.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx9.9.5 = getelementptr inbounds [10 x i32]* %arrayidx8.9.5, i32 0, i64 9
  %119 = load i32* %arrayidx9.9.5, align 4
  %add.9.5 = add nsw i32 %118, %119
  %arrayidx12.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx13.9.5 = getelementptr inbounds [10 x i32]* %arrayidx12.9.5, i32 0, i64 9
  store i32 %add.9.5, i32* %arrayidx13.9.5, align 4
  %arrayidx.643 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.644 = getelementptr inbounds [10 x i32]* %arrayidx.643, i32 0, i64 0
  %120 = load i32* %arrayidx5.644, align 4
  %arrayidx8.645 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.646 = getelementptr inbounds [10 x i32]* %arrayidx8.645, i32 0, i64 0
  %121 = load i32* %arrayidx9.646, align 4
  %add.647 = add nsw i32 %120, %121
  %arrayidx12.648 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.649 = getelementptr inbounds [10 x i32]* %arrayidx12.648, i32 0, i64 0
  store i32 %add.647, i32* %arrayidx13.649, align 4
  %arrayidx.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.1.6 = getelementptr inbounds [10 x i32]* %arrayidx.1.6, i32 0, i64 1
  %122 = load i32* %arrayidx5.1.6, align 4
  %arrayidx8.1.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.1.6 = getelementptr inbounds [10 x i32]* %arrayidx8.1.6, i32 0, i64 1
  %123 = load i32* %arrayidx9.1.6, align 4
  %add.1.6 = add nsw i32 %122, %123
  %arrayidx12.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.1.6 = getelementptr inbounds [10 x i32]* %arrayidx12.1.6, i32 0, i64 1
  store i32 %add.1.6, i32* %arrayidx13.1.6, align 4
  %arrayidx.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.2.6 = getelementptr inbounds [10 x i32]* %arrayidx.2.6, i32 0, i64 2
  %124 = load i32* %arrayidx5.2.6, align 4
  %arrayidx8.2.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.2.6 = getelementptr inbounds [10 x i32]* %arrayidx8.2.6, i32 0, i64 2
  %125 = load i32* %arrayidx9.2.6, align 4
  %add.2.6 = add nsw i32 %124, %125
  %arrayidx12.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.2.6 = getelementptr inbounds [10 x i32]* %arrayidx12.2.6, i32 0, i64 2
  store i32 %add.2.6, i32* %arrayidx13.2.6, align 4
  %arrayidx.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.3.6 = getelementptr inbounds [10 x i32]* %arrayidx.3.6, i32 0, i64 3
  %126 = load i32* %arrayidx5.3.6, align 4
  %arrayidx8.3.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.3.6 = getelementptr inbounds [10 x i32]* %arrayidx8.3.6, i32 0, i64 3
  %127 = load i32* %arrayidx9.3.6, align 4
  %add.3.6 = add nsw i32 %126, %127
  %arrayidx12.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.3.6 = getelementptr inbounds [10 x i32]* %arrayidx12.3.6, i32 0, i64 3
  store i32 %add.3.6, i32* %arrayidx13.3.6, align 4
  %arrayidx.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.4.6 = getelementptr inbounds [10 x i32]* %arrayidx.4.6, i32 0, i64 4
  %128 = load i32* %arrayidx5.4.6, align 4
  %arrayidx8.4.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.4.6 = getelementptr inbounds [10 x i32]* %arrayidx8.4.6, i32 0, i64 4
  %129 = load i32* %arrayidx9.4.6, align 4
  %add.4.6 = add nsw i32 %128, %129
  %arrayidx12.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.4.6 = getelementptr inbounds [10 x i32]* %arrayidx12.4.6, i32 0, i64 4
  store i32 %add.4.6, i32* %arrayidx13.4.6, align 4
  %arrayidx.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.5.6 = getelementptr inbounds [10 x i32]* %arrayidx.5.6, i32 0, i64 5
  %130 = load i32* %arrayidx5.5.6, align 4
  %arrayidx8.5.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.5.6 = getelementptr inbounds [10 x i32]* %arrayidx8.5.6, i32 0, i64 5
  %131 = load i32* %arrayidx9.5.6, align 4
  %add.5.6 = add nsw i32 %130, %131
  %arrayidx12.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.5.6 = getelementptr inbounds [10 x i32]* %arrayidx12.5.6, i32 0, i64 5
  store i32 %add.5.6, i32* %arrayidx13.5.6, align 4
  %arrayidx.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.6.6 = getelementptr inbounds [10 x i32]* %arrayidx.6.6, i32 0, i64 6
  %132 = load i32* %arrayidx5.6.6, align 4
  %arrayidx8.6.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.6.6 = getelementptr inbounds [10 x i32]* %arrayidx8.6.6, i32 0, i64 6
  %133 = load i32* %arrayidx9.6.6, align 4
  %add.6.6 = add nsw i32 %132, %133
  %arrayidx12.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.6.6 = getelementptr inbounds [10 x i32]* %arrayidx12.6.6, i32 0, i64 6
  store i32 %add.6.6, i32* %arrayidx13.6.6, align 4
  %arrayidx.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.7.6 = getelementptr inbounds [10 x i32]* %arrayidx.7.6, i32 0, i64 7
  %134 = load i32* %arrayidx5.7.6, align 4
  %arrayidx8.7.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.7.6 = getelementptr inbounds [10 x i32]* %arrayidx8.7.6, i32 0, i64 7
  %135 = load i32* %arrayidx9.7.6, align 4
  %add.7.6 = add nsw i32 %134, %135
  %arrayidx12.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.7.6 = getelementptr inbounds [10 x i32]* %arrayidx12.7.6, i32 0, i64 7
  store i32 %add.7.6, i32* %arrayidx13.7.6, align 4
  %arrayidx.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.8.6 = getelementptr inbounds [10 x i32]* %arrayidx.8.6, i32 0, i64 8
  %136 = load i32* %arrayidx5.8.6, align 4
  %arrayidx8.8.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.8.6 = getelementptr inbounds [10 x i32]* %arrayidx8.8.6, i32 0, i64 8
  %137 = load i32* %arrayidx9.8.6, align 4
  %add.8.6 = add nsw i32 %136, %137
  %arrayidx12.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.8.6 = getelementptr inbounds [10 x i32]* %arrayidx12.8.6, i32 0, i64 8
  store i32 %add.8.6, i32* %arrayidx13.8.6, align 4
  %arrayidx.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx5.9.6 = getelementptr inbounds [10 x i32]* %arrayidx.9.6, i32 0, i64 9
  %138 = load i32* %arrayidx5.9.6, align 4
  %arrayidx8.9.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx9.9.6 = getelementptr inbounds [10 x i32]* %arrayidx8.9.6, i32 0, i64 9
  %139 = load i32* %arrayidx9.9.6, align 4
  %add.9.6 = add nsw i32 %138, %139
  %arrayidx12.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx13.9.6 = getelementptr inbounds [10 x i32]* %arrayidx12.9.6, i32 0, i64 9
  store i32 %add.9.6, i32* %arrayidx13.9.6, align 4
  %arrayidx.751 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.752 = getelementptr inbounds [10 x i32]* %arrayidx.751, i32 0, i64 0
  %140 = load i32* %arrayidx5.752, align 4
  %arrayidx8.753 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.754 = getelementptr inbounds [10 x i32]* %arrayidx8.753, i32 0, i64 0
  %141 = load i32* %arrayidx9.754, align 4
  %add.755 = add nsw i32 %140, %141
  %arrayidx12.756 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.757 = getelementptr inbounds [10 x i32]* %arrayidx12.756, i32 0, i64 0
  store i32 %add.755, i32* %arrayidx13.757, align 4
  %arrayidx.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.1.7 = getelementptr inbounds [10 x i32]* %arrayidx.1.7, i32 0, i64 1
  %142 = load i32* %arrayidx5.1.7, align 4
  %arrayidx8.1.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.1.7 = getelementptr inbounds [10 x i32]* %arrayidx8.1.7, i32 0, i64 1
  %143 = load i32* %arrayidx9.1.7, align 4
  %add.1.7 = add nsw i32 %142, %143
  %arrayidx12.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.1.7 = getelementptr inbounds [10 x i32]* %arrayidx12.1.7, i32 0, i64 1
  store i32 %add.1.7, i32* %arrayidx13.1.7, align 4
  %arrayidx.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.2.7 = getelementptr inbounds [10 x i32]* %arrayidx.2.7, i32 0, i64 2
  %144 = load i32* %arrayidx5.2.7, align 4
  %arrayidx8.2.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.2.7 = getelementptr inbounds [10 x i32]* %arrayidx8.2.7, i32 0, i64 2
  %145 = load i32* %arrayidx9.2.7, align 4
  %add.2.7 = add nsw i32 %144, %145
  %arrayidx12.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.2.7 = getelementptr inbounds [10 x i32]* %arrayidx12.2.7, i32 0, i64 2
  store i32 %add.2.7, i32* %arrayidx13.2.7, align 4
  %arrayidx.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.3.7 = getelementptr inbounds [10 x i32]* %arrayidx.3.7, i32 0, i64 3
  %146 = load i32* %arrayidx5.3.7, align 4
  %arrayidx8.3.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.3.7 = getelementptr inbounds [10 x i32]* %arrayidx8.3.7, i32 0, i64 3
  %147 = load i32* %arrayidx9.3.7, align 4
  %add.3.7 = add nsw i32 %146, %147
  %arrayidx12.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.3.7 = getelementptr inbounds [10 x i32]* %arrayidx12.3.7, i32 0, i64 3
  store i32 %add.3.7, i32* %arrayidx13.3.7, align 4
  %arrayidx.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.4.7 = getelementptr inbounds [10 x i32]* %arrayidx.4.7, i32 0, i64 4
  %148 = load i32* %arrayidx5.4.7, align 4
  %arrayidx8.4.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.4.7 = getelementptr inbounds [10 x i32]* %arrayidx8.4.7, i32 0, i64 4
  %149 = load i32* %arrayidx9.4.7, align 4
  %add.4.7 = add nsw i32 %148, %149
  %arrayidx12.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.4.7 = getelementptr inbounds [10 x i32]* %arrayidx12.4.7, i32 0, i64 4
  store i32 %add.4.7, i32* %arrayidx13.4.7, align 4
  %arrayidx.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.5.7 = getelementptr inbounds [10 x i32]* %arrayidx.5.7, i32 0, i64 5
  %150 = load i32* %arrayidx5.5.7, align 4
  %arrayidx8.5.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.5.7 = getelementptr inbounds [10 x i32]* %arrayidx8.5.7, i32 0, i64 5
  %151 = load i32* %arrayidx9.5.7, align 4
  %add.5.7 = add nsw i32 %150, %151
  %arrayidx12.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.5.7 = getelementptr inbounds [10 x i32]* %arrayidx12.5.7, i32 0, i64 5
  store i32 %add.5.7, i32* %arrayidx13.5.7, align 4
  %arrayidx.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.6.7 = getelementptr inbounds [10 x i32]* %arrayidx.6.7, i32 0, i64 6
  %152 = load i32* %arrayidx5.6.7, align 4
  %arrayidx8.6.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.6.7 = getelementptr inbounds [10 x i32]* %arrayidx8.6.7, i32 0, i64 6
  %153 = load i32* %arrayidx9.6.7, align 4
  %add.6.7 = add nsw i32 %152, %153
  %arrayidx12.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.6.7 = getelementptr inbounds [10 x i32]* %arrayidx12.6.7, i32 0, i64 6
  store i32 %add.6.7, i32* %arrayidx13.6.7, align 4
  %arrayidx.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.7.7 = getelementptr inbounds [10 x i32]* %arrayidx.7.7, i32 0, i64 7
  %154 = load i32* %arrayidx5.7.7, align 4
  %arrayidx8.7.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.7.7 = getelementptr inbounds [10 x i32]* %arrayidx8.7.7, i32 0, i64 7
  %155 = load i32* %arrayidx9.7.7, align 4
  %add.7.7 = add nsw i32 %154, %155
  %arrayidx12.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.7.7 = getelementptr inbounds [10 x i32]* %arrayidx12.7.7, i32 0, i64 7
  store i32 %add.7.7, i32* %arrayidx13.7.7, align 4
  %arrayidx.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.8.7 = getelementptr inbounds [10 x i32]* %arrayidx.8.7, i32 0, i64 8
  %156 = load i32* %arrayidx5.8.7, align 4
  %arrayidx8.8.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.8.7 = getelementptr inbounds [10 x i32]* %arrayidx8.8.7, i32 0, i64 8
  %157 = load i32* %arrayidx9.8.7, align 4
  %add.8.7 = add nsw i32 %156, %157
  %arrayidx12.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.8.7 = getelementptr inbounds [10 x i32]* %arrayidx12.8.7, i32 0, i64 8
  store i32 %add.8.7, i32* %arrayidx13.8.7, align 4
  %arrayidx.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx5.9.7 = getelementptr inbounds [10 x i32]* %arrayidx.9.7, i32 0, i64 9
  %158 = load i32* %arrayidx5.9.7, align 4
  %arrayidx8.9.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx9.9.7 = getelementptr inbounds [10 x i32]* %arrayidx8.9.7, i32 0, i64 9
  %159 = load i32* %arrayidx9.9.7, align 4
  %add.9.7 = add nsw i32 %158, %159
  %arrayidx12.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx13.9.7 = getelementptr inbounds [10 x i32]* %arrayidx12.9.7, i32 0, i64 9
  store i32 %add.9.7, i32* %arrayidx13.9.7, align 4
  %arrayidx.859 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.860 = getelementptr inbounds [10 x i32]* %arrayidx.859, i32 0, i64 0
  %160 = load i32* %arrayidx5.860, align 4
  %arrayidx8.861 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.862 = getelementptr inbounds [10 x i32]* %arrayidx8.861, i32 0, i64 0
  %161 = load i32* %arrayidx9.862, align 4
  %add.863 = add nsw i32 %160, %161
  %arrayidx12.864 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.865 = getelementptr inbounds [10 x i32]* %arrayidx12.864, i32 0, i64 0
  store i32 %add.863, i32* %arrayidx13.865, align 4
  %arrayidx.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.1.8 = getelementptr inbounds [10 x i32]* %arrayidx.1.8, i32 0, i64 1
  %162 = load i32* %arrayidx5.1.8, align 4
  %arrayidx8.1.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.1.8 = getelementptr inbounds [10 x i32]* %arrayidx8.1.8, i32 0, i64 1
  %163 = load i32* %arrayidx9.1.8, align 4
  %add.1.8 = add nsw i32 %162, %163
  %arrayidx12.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.1.8 = getelementptr inbounds [10 x i32]* %arrayidx12.1.8, i32 0, i64 1
  store i32 %add.1.8, i32* %arrayidx13.1.8, align 4
  %arrayidx.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.2.8 = getelementptr inbounds [10 x i32]* %arrayidx.2.8, i32 0, i64 2
  %164 = load i32* %arrayidx5.2.8, align 4
  %arrayidx8.2.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.2.8 = getelementptr inbounds [10 x i32]* %arrayidx8.2.8, i32 0, i64 2
  %165 = load i32* %arrayidx9.2.8, align 4
  %add.2.8 = add nsw i32 %164, %165
  %arrayidx12.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.2.8 = getelementptr inbounds [10 x i32]* %arrayidx12.2.8, i32 0, i64 2
  store i32 %add.2.8, i32* %arrayidx13.2.8, align 4
  %arrayidx.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.3.8 = getelementptr inbounds [10 x i32]* %arrayidx.3.8, i32 0, i64 3
  %166 = load i32* %arrayidx5.3.8, align 4
  %arrayidx8.3.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.3.8 = getelementptr inbounds [10 x i32]* %arrayidx8.3.8, i32 0, i64 3
  %167 = load i32* %arrayidx9.3.8, align 4
  %add.3.8 = add nsw i32 %166, %167
  %arrayidx12.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.3.8 = getelementptr inbounds [10 x i32]* %arrayidx12.3.8, i32 0, i64 3
  store i32 %add.3.8, i32* %arrayidx13.3.8, align 4
  %arrayidx.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.4.8 = getelementptr inbounds [10 x i32]* %arrayidx.4.8, i32 0, i64 4
  %168 = load i32* %arrayidx5.4.8, align 4
  %arrayidx8.4.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.4.8 = getelementptr inbounds [10 x i32]* %arrayidx8.4.8, i32 0, i64 4
  %169 = load i32* %arrayidx9.4.8, align 4
  %add.4.8 = add nsw i32 %168, %169
  %arrayidx12.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.4.8 = getelementptr inbounds [10 x i32]* %arrayidx12.4.8, i32 0, i64 4
  store i32 %add.4.8, i32* %arrayidx13.4.8, align 4
  %arrayidx.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.5.8 = getelementptr inbounds [10 x i32]* %arrayidx.5.8, i32 0, i64 5
  %170 = load i32* %arrayidx5.5.8, align 4
  %arrayidx8.5.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.5.8 = getelementptr inbounds [10 x i32]* %arrayidx8.5.8, i32 0, i64 5
  %171 = load i32* %arrayidx9.5.8, align 4
  %add.5.8 = add nsw i32 %170, %171
  %arrayidx12.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.5.8 = getelementptr inbounds [10 x i32]* %arrayidx12.5.8, i32 0, i64 5
  store i32 %add.5.8, i32* %arrayidx13.5.8, align 4
  %arrayidx.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.6.8 = getelementptr inbounds [10 x i32]* %arrayidx.6.8, i32 0, i64 6
  %172 = load i32* %arrayidx5.6.8, align 4
  %arrayidx8.6.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.6.8 = getelementptr inbounds [10 x i32]* %arrayidx8.6.8, i32 0, i64 6
  %173 = load i32* %arrayidx9.6.8, align 4
  %add.6.8 = add nsw i32 %172, %173
  %arrayidx12.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.6.8 = getelementptr inbounds [10 x i32]* %arrayidx12.6.8, i32 0, i64 6
  store i32 %add.6.8, i32* %arrayidx13.6.8, align 4
  %arrayidx.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.7.8 = getelementptr inbounds [10 x i32]* %arrayidx.7.8, i32 0, i64 7
  %174 = load i32* %arrayidx5.7.8, align 4
  %arrayidx8.7.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.7.8 = getelementptr inbounds [10 x i32]* %arrayidx8.7.8, i32 0, i64 7
  %175 = load i32* %arrayidx9.7.8, align 4
  %add.7.8 = add nsw i32 %174, %175
  %arrayidx12.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.7.8 = getelementptr inbounds [10 x i32]* %arrayidx12.7.8, i32 0, i64 7
  store i32 %add.7.8, i32* %arrayidx13.7.8, align 4
  %arrayidx.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.8.8 = getelementptr inbounds [10 x i32]* %arrayidx.8.8, i32 0, i64 8
  %176 = load i32* %arrayidx5.8.8, align 4
  %arrayidx8.8.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.8.8 = getelementptr inbounds [10 x i32]* %arrayidx8.8.8, i32 0, i64 8
  %177 = load i32* %arrayidx9.8.8, align 4
  %add.8.8 = add nsw i32 %176, %177
  %arrayidx12.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.8.8 = getelementptr inbounds [10 x i32]* %arrayidx12.8.8, i32 0, i64 8
  store i32 %add.8.8, i32* %arrayidx13.8.8, align 4
  %arrayidx.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx5.9.8 = getelementptr inbounds [10 x i32]* %arrayidx.9.8, i32 0, i64 9
  %178 = load i32* %arrayidx5.9.8, align 4
  %arrayidx8.9.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx9.9.8 = getelementptr inbounds [10 x i32]* %arrayidx8.9.8, i32 0, i64 9
  %179 = load i32* %arrayidx9.9.8, align 4
  %add.9.8 = add nsw i32 %178, %179
  %arrayidx12.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx13.9.8 = getelementptr inbounds [10 x i32]* %arrayidx12.9.8, i32 0, i64 9
  store i32 %add.9.8, i32* %arrayidx13.9.8, align 4
  %arrayidx.967 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.968 = getelementptr inbounds [10 x i32]* %arrayidx.967, i32 0, i64 0
  %180 = load i32* %arrayidx5.968, align 4
  %arrayidx8.969 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.970 = getelementptr inbounds [10 x i32]* %arrayidx8.969, i32 0, i64 0
  %181 = load i32* %arrayidx9.970, align 4
  %add.971 = add nsw i32 %180, %181
  %arrayidx12.972 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.973 = getelementptr inbounds [10 x i32]* %arrayidx12.972, i32 0, i64 0
  store i32 %add.971, i32* %arrayidx13.973, align 4
  %arrayidx.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.1.9 = getelementptr inbounds [10 x i32]* %arrayidx.1.9, i32 0, i64 1
  %182 = load i32* %arrayidx5.1.9, align 4
  %arrayidx8.1.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.1.9 = getelementptr inbounds [10 x i32]* %arrayidx8.1.9, i32 0, i64 1
  %183 = load i32* %arrayidx9.1.9, align 4
  %add.1.9 = add nsw i32 %182, %183
  %arrayidx12.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.1.9 = getelementptr inbounds [10 x i32]* %arrayidx12.1.9, i32 0, i64 1
  store i32 %add.1.9, i32* %arrayidx13.1.9, align 4
  %arrayidx.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.2.9 = getelementptr inbounds [10 x i32]* %arrayidx.2.9, i32 0, i64 2
  %184 = load i32* %arrayidx5.2.9, align 4
  %arrayidx8.2.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.2.9 = getelementptr inbounds [10 x i32]* %arrayidx8.2.9, i32 0, i64 2
  %185 = load i32* %arrayidx9.2.9, align 4
  %add.2.9 = add nsw i32 %184, %185
  %arrayidx12.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.2.9 = getelementptr inbounds [10 x i32]* %arrayidx12.2.9, i32 0, i64 2
  store i32 %add.2.9, i32* %arrayidx13.2.9, align 4
  %arrayidx.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.3.9 = getelementptr inbounds [10 x i32]* %arrayidx.3.9, i32 0, i64 3
  %186 = load i32* %arrayidx5.3.9, align 4
  %arrayidx8.3.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.3.9 = getelementptr inbounds [10 x i32]* %arrayidx8.3.9, i32 0, i64 3
  %187 = load i32* %arrayidx9.3.9, align 4
  %add.3.9 = add nsw i32 %186, %187
  %arrayidx12.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.3.9 = getelementptr inbounds [10 x i32]* %arrayidx12.3.9, i32 0, i64 3
  store i32 %add.3.9, i32* %arrayidx13.3.9, align 4
  %arrayidx.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.4.9 = getelementptr inbounds [10 x i32]* %arrayidx.4.9, i32 0, i64 4
  %188 = load i32* %arrayidx5.4.9, align 4
  %arrayidx8.4.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.4.9 = getelementptr inbounds [10 x i32]* %arrayidx8.4.9, i32 0, i64 4
  %189 = load i32* %arrayidx9.4.9, align 4
  %add.4.9 = add nsw i32 %188, %189
  %arrayidx12.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.4.9 = getelementptr inbounds [10 x i32]* %arrayidx12.4.9, i32 0, i64 4
  store i32 %add.4.9, i32* %arrayidx13.4.9, align 4
  %arrayidx.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.5.9 = getelementptr inbounds [10 x i32]* %arrayidx.5.9, i32 0, i64 5
  %190 = load i32* %arrayidx5.5.9, align 4
  %arrayidx8.5.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.5.9 = getelementptr inbounds [10 x i32]* %arrayidx8.5.9, i32 0, i64 5
  %191 = load i32* %arrayidx9.5.9, align 4
  %add.5.9 = add nsw i32 %190, %191
  %arrayidx12.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.5.9 = getelementptr inbounds [10 x i32]* %arrayidx12.5.9, i32 0, i64 5
  store i32 %add.5.9, i32* %arrayidx13.5.9, align 4
  %arrayidx.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.6.9 = getelementptr inbounds [10 x i32]* %arrayidx.6.9, i32 0, i64 6
  %192 = load i32* %arrayidx5.6.9, align 4
  %arrayidx8.6.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.6.9 = getelementptr inbounds [10 x i32]* %arrayidx8.6.9, i32 0, i64 6
  %193 = load i32* %arrayidx9.6.9, align 4
  %add.6.9 = add nsw i32 %192, %193
  %arrayidx12.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.6.9 = getelementptr inbounds [10 x i32]* %arrayidx12.6.9, i32 0, i64 6
  store i32 %add.6.9, i32* %arrayidx13.6.9, align 4
  %arrayidx.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.7.9 = getelementptr inbounds [10 x i32]* %arrayidx.7.9, i32 0, i64 7
  %194 = load i32* %arrayidx5.7.9, align 4
  %arrayidx8.7.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.7.9 = getelementptr inbounds [10 x i32]* %arrayidx8.7.9, i32 0, i64 7
  %195 = load i32* %arrayidx9.7.9, align 4
  %add.7.9 = add nsw i32 %194, %195
  %arrayidx12.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.7.9 = getelementptr inbounds [10 x i32]* %arrayidx12.7.9, i32 0, i64 7
  store i32 %add.7.9, i32* %arrayidx13.7.9, align 4
  %arrayidx.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.8.9 = getelementptr inbounds [10 x i32]* %arrayidx.8.9, i32 0, i64 8
  %196 = load i32* %arrayidx5.8.9, align 4
  %arrayidx8.8.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.8.9 = getelementptr inbounds [10 x i32]* %arrayidx8.8.9, i32 0, i64 8
  %197 = load i32* %arrayidx9.8.9, align 4
  %add.8.9 = add nsw i32 %196, %197
  %arrayidx12.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.8.9 = getelementptr inbounds [10 x i32]* %arrayidx12.8.9, i32 0, i64 8
  store i32 %add.8.9, i32* %arrayidx13.8.9, align 4
  %arrayidx.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx5.9.9 = getelementptr inbounds [10 x i32]* %arrayidx.9.9, i32 0, i64 9
  %198 = load i32* %arrayidx5.9.9, align 4
  %arrayidx8.9.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx9.9.9 = getelementptr inbounds [10 x i32]* %arrayidx8.9.9, i32 0, i64 9
  %199 = load i32* %arrayidx9.9.9, align 4
  %add.9.9 = add nsw i32 %198, %199
  %arrayidx12.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx13.9.9 = getelementptr inbounds [10 x i32]* %arrayidx12.9.9, i32 0, i64 9
  store i32 %add.9.9, i32* %arrayidx13.9.9, align 4
  ret void
}
