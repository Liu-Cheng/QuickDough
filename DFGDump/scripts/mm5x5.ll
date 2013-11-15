; ModuleID = 'fun3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [5 x [5 x i32]] zeroinitializer, align 16

define void @_Z5mm5x5PA5_iS0_iS0_([5 x i32]* %a, [5 x i32]* %b, i32 %init, [5 x i32]* %c) nounwind uwtable {
entry:
  %arrayidx5 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  %arrayidx12 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  %arrayidx12.1 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [5 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  %arrayidx12.2 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 2
  %6 = load i32* %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2 = getelementptr inbounds [5 x i32]* %arrayidx15.2, i32 0, i64 0
  %7 = load i32* %arrayidx16.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %arrayidx20.2 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 0
  %8 = load i32* %arrayidx20.2, align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* %arrayidx20.2, align 4
  %arrayidx12.3 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 3
  %9 = load i32* %arrayidx12.3, align 4
  %arrayidx15.3 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3 = getelementptr inbounds [5 x i32]* %arrayidx15.3, i32 0, i64 0
  %10 = load i32* %arrayidx16.3, align 4
  %mul.3 = mul nsw i32 %9, %10
  %arrayidx20.3 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 0
  %11 = load i32* %arrayidx20.3, align 4
  %add.3 = add nsw i32 %11, %mul.3
  store i32 %add.3, i32* %arrayidx20.3, align 4
  %arrayidx12.4 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 4
  %12 = load i32* %arrayidx12.4, align 4
  %arrayidx15.4 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4 = getelementptr inbounds [5 x i32]* %arrayidx15.4, i32 0, i64 0
  %13 = load i32* %arrayidx16.4, align 4
  %mul.4 = mul nsw i32 %12, %13
  %arrayidx20.4 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 0
  %14 = load i32* %arrayidx20.4, align 4
  %add.4 = add nsw i32 %14, %mul.4
  store i32 %add.4, i32* %arrayidx20.4, align 4
  %arrayidx5.1 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  %arrayidx12.15 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 0
  %15 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 1
  %16 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %15, %16
  %arrayidx20.110 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 1
  %17 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %17, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  %arrayidx12.1.1 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 1
  %18 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [5 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %19 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %18, %19
  %arrayidx20.1.1 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 1
  %20 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %20, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  %arrayidx12.2.1 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 2
  %21 = load i32* %arrayidx12.2.1, align 4
  %arrayidx15.2.1 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.1 = getelementptr inbounds [5 x i32]* %arrayidx15.2.1, i32 0, i64 1
  %22 = load i32* %arrayidx16.2.1, align 4
  %mul.2.1 = mul nsw i32 %21, %22
  %arrayidx20.2.1 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 1
  %23 = load i32* %arrayidx20.2.1, align 4
  %add.2.1 = add nsw i32 %23, %mul.2.1
  store i32 %add.2.1, i32* %arrayidx20.2.1, align 4
  %arrayidx12.3.1 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 3
  %24 = load i32* %arrayidx12.3.1, align 4
  %arrayidx15.3.1 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.1 = getelementptr inbounds [5 x i32]* %arrayidx15.3.1, i32 0, i64 1
  %25 = load i32* %arrayidx16.3.1, align 4
  %mul.3.1 = mul nsw i32 %24, %25
  %arrayidx20.3.1 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 1
  %26 = load i32* %arrayidx20.3.1, align 4
  %add.3.1 = add nsw i32 %26, %mul.3.1
  store i32 %add.3.1, i32* %arrayidx20.3.1, align 4
  %arrayidx12.4.1 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 4
  %27 = load i32* %arrayidx12.4.1, align 4
  %arrayidx15.4.1 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.1 = getelementptr inbounds [5 x i32]* %arrayidx15.4.1, i32 0, i64 1
  %28 = load i32* %arrayidx16.4.1, align 4
  %mul.4.1 = mul nsw i32 %27, %28
  %arrayidx20.4.1 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 1
  %29 = load i32* %arrayidx20.4.1, align 4
  %add.4.1 = add nsw i32 %29, %mul.4.1
  store i32 %add.4.1, i32* %arrayidx20.4.1, align 4
  %arrayidx5.2 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2, align 4
  %arrayidx12.215 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 0
  %30 = load i32* %arrayidx12.215, align 4
  %arrayidx16.216 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 2
  %31 = load i32* %arrayidx16.216, align 4
  %mul.217 = mul nsw i32 %30, %31
  %arrayidx20.220 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 2
  %32 = load i32* %arrayidx20.220, align 4
  %add.221 = add nsw i32 %32, %mul.217
  store i32 %add.221, i32* %arrayidx20.220, align 4
  %arrayidx12.1.2 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 1
  %33 = load i32* %arrayidx12.1.2, align 4
  %arrayidx15.1.2 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.2 = getelementptr inbounds [5 x i32]* %arrayidx15.1.2, i32 0, i64 2
  %34 = load i32* %arrayidx16.1.2, align 4
  %mul.1.2 = mul nsw i32 %33, %34
  %arrayidx20.1.2 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 2
  %35 = load i32* %arrayidx20.1.2, align 4
  %add.1.2 = add nsw i32 %35, %mul.1.2
  store i32 %add.1.2, i32* %arrayidx20.1.2, align 4
  %arrayidx12.2.2 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 2
  %36 = load i32* %arrayidx12.2.2, align 4
  %arrayidx15.2.2 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.2 = getelementptr inbounds [5 x i32]* %arrayidx15.2.2, i32 0, i64 2
  %37 = load i32* %arrayidx16.2.2, align 4
  %mul.2.2 = mul nsw i32 %36, %37
  %arrayidx20.2.2 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 2
  %38 = load i32* %arrayidx20.2.2, align 4
  %add.2.2 = add nsw i32 %38, %mul.2.2
  store i32 %add.2.2, i32* %arrayidx20.2.2, align 4
  %arrayidx12.3.2 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 3
  %39 = load i32* %arrayidx12.3.2, align 4
  %arrayidx15.3.2 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.2 = getelementptr inbounds [5 x i32]* %arrayidx15.3.2, i32 0, i64 2
  %40 = load i32* %arrayidx16.3.2, align 4
  %mul.3.2 = mul nsw i32 %39, %40
  %arrayidx20.3.2 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 2
  %41 = load i32* %arrayidx20.3.2, align 4
  %add.3.2 = add nsw i32 %41, %mul.3.2
  store i32 %add.3.2, i32* %arrayidx20.3.2, align 4
  %arrayidx12.4.2 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 4
  %42 = load i32* %arrayidx12.4.2, align 4
  %arrayidx15.4.2 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.2 = getelementptr inbounds [5 x i32]* %arrayidx15.4.2, i32 0, i64 2
  %43 = load i32* %arrayidx16.4.2, align 4
  %mul.4.2 = mul nsw i32 %42, %43
  %arrayidx20.4.2 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 2
  %44 = load i32* %arrayidx20.4.2, align 4
  %add.4.2 = add nsw i32 %44, %mul.4.2
  store i32 %add.4.2, i32* %arrayidx20.4.2, align 4
  %arrayidx5.3 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3, align 4
  %arrayidx12.325 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 0
  %45 = load i32* %arrayidx12.325, align 4
  %arrayidx16.326 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 3
  %46 = load i32* %arrayidx16.326, align 4
  %mul.327 = mul nsw i32 %45, %46
  %arrayidx20.330 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 3
  %47 = load i32* %arrayidx20.330, align 4
  %add.331 = add nsw i32 %47, %mul.327
  store i32 %add.331, i32* %arrayidx20.330, align 4
  %arrayidx12.1.3 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 1
  %48 = load i32* %arrayidx12.1.3, align 4
  %arrayidx15.1.3 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.3 = getelementptr inbounds [5 x i32]* %arrayidx15.1.3, i32 0, i64 3
  %49 = load i32* %arrayidx16.1.3, align 4
  %mul.1.3 = mul nsw i32 %48, %49
  %arrayidx20.1.3 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 3
  %50 = load i32* %arrayidx20.1.3, align 4
  %add.1.3 = add nsw i32 %50, %mul.1.3
  store i32 %add.1.3, i32* %arrayidx20.1.3, align 4
  %arrayidx12.2.3 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 2
  %51 = load i32* %arrayidx12.2.3, align 4
  %arrayidx15.2.3 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.3 = getelementptr inbounds [5 x i32]* %arrayidx15.2.3, i32 0, i64 3
  %52 = load i32* %arrayidx16.2.3, align 4
  %mul.2.3 = mul nsw i32 %51, %52
  %arrayidx20.2.3 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 3
  %53 = load i32* %arrayidx20.2.3, align 4
  %add.2.3 = add nsw i32 %53, %mul.2.3
  store i32 %add.2.3, i32* %arrayidx20.2.3, align 4
  %arrayidx12.3.3 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 3
  %54 = load i32* %arrayidx12.3.3, align 4
  %arrayidx15.3.3 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.3 = getelementptr inbounds [5 x i32]* %arrayidx15.3.3, i32 0, i64 3
  %55 = load i32* %arrayidx16.3.3, align 4
  %mul.3.3 = mul nsw i32 %54, %55
  %arrayidx20.3.3 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 3
  %56 = load i32* %arrayidx20.3.3, align 4
  %add.3.3 = add nsw i32 %56, %mul.3.3
  store i32 %add.3.3, i32* %arrayidx20.3.3, align 4
  %arrayidx12.4.3 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 4
  %57 = load i32* %arrayidx12.4.3, align 4
  %arrayidx15.4.3 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.3 = getelementptr inbounds [5 x i32]* %arrayidx15.4.3, i32 0, i64 3
  %58 = load i32* %arrayidx16.4.3, align 4
  %mul.4.3 = mul nsw i32 %57, %58
  %arrayidx20.4.3 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 3
  %59 = load i32* %arrayidx20.4.3, align 4
  %add.4.3 = add nsw i32 %59, %mul.4.3
  store i32 %add.4.3, i32* %arrayidx20.4.3, align 4
  %arrayidx5.4 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4, align 4
  %arrayidx12.435 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 0
  %60 = load i32* %arrayidx12.435, align 4
  %arrayidx16.436 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 4
  %61 = load i32* %arrayidx16.436, align 4
  %mul.437 = mul nsw i32 %60, %61
  %arrayidx20.440 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 4
  %62 = load i32* %arrayidx20.440, align 4
  %add.441 = add nsw i32 %62, %mul.437
  store i32 %add.441, i32* %arrayidx20.440, align 4
  %arrayidx12.1.4 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 1
  %63 = load i32* %arrayidx12.1.4, align 4
  %arrayidx15.1.4 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.4 = getelementptr inbounds [5 x i32]* %arrayidx15.1.4, i32 0, i64 4
  %64 = load i32* %arrayidx16.1.4, align 4
  %mul.1.4 = mul nsw i32 %63, %64
  %arrayidx20.1.4 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 4
  %65 = load i32* %arrayidx20.1.4, align 4
  %add.1.4 = add nsw i32 %65, %mul.1.4
  store i32 %add.1.4, i32* %arrayidx20.1.4, align 4
  %arrayidx12.2.4 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 2
  %66 = load i32* %arrayidx12.2.4, align 4
  %arrayidx15.2.4 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.4 = getelementptr inbounds [5 x i32]* %arrayidx15.2.4, i32 0, i64 4
  %67 = load i32* %arrayidx16.2.4, align 4
  %mul.2.4 = mul nsw i32 %66, %67
  %arrayidx20.2.4 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 4
  %68 = load i32* %arrayidx20.2.4, align 4
  %add.2.4 = add nsw i32 %68, %mul.2.4
  store i32 %add.2.4, i32* %arrayidx20.2.4, align 4
  %arrayidx12.3.4 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 3
  %69 = load i32* %arrayidx12.3.4, align 4
  %arrayidx15.3.4 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.4 = getelementptr inbounds [5 x i32]* %arrayidx15.3.4, i32 0, i64 4
  %70 = load i32* %arrayidx16.3.4, align 4
  %mul.3.4 = mul nsw i32 %69, %70
  %arrayidx20.3.4 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 4
  %71 = load i32* %arrayidx20.3.4, align 4
  %add.3.4 = add nsw i32 %71, %mul.3.4
  store i32 %add.3.4, i32* %arrayidx20.3.4, align 4
  %arrayidx12.4.4 = getelementptr inbounds [5 x i32]* %a, i32 0, i64 4
  %72 = load i32* %arrayidx12.4.4, align 4
  %arrayidx15.4.4 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.4 = getelementptr inbounds [5 x i32]* %arrayidx15.4.4, i32 0, i64 4
  %73 = load i32* %arrayidx16.4.4, align 4
  %mul.4.4 = mul nsw i32 %72, %73
  %arrayidx20.4.4 = getelementptr inbounds [5 x i32]* %c, i32 0, i64 4
  %74 = load i32* %arrayidx20.4.4, align 4
  %add.4.4 = add nsw i32 %74, %mul.4.4
  store i32 %add.4.4, i32* %arrayidx20.4.4, align 4
  %arrayidx.144 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx5.145 = getelementptr inbounds [5 x i32]* %arrayidx.144, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.145, align 4
  %arrayidx11.146 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.147 = getelementptr inbounds [5 x i32]* %arrayidx11.146, i32 0, i64 0
  %75 = load i32* %arrayidx12.147, align 4
  %arrayidx16.148 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 0
  %76 = load i32* %arrayidx16.148, align 4
  %mul.149 = mul nsw i32 %75, %76
  %arrayidx19.150 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.151 = getelementptr inbounds [5 x i32]* %arrayidx19.150, i32 0, i64 0
  %77 = load i32* %arrayidx20.151, align 4
  %add.152 = add nsw i32 %77, %mul.149
  store i32 %add.152, i32* %arrayidx20.151, align 4
  %arrayidx11.1.154 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.1.155 = getelementptr inbounds [5 x i32]* %arrayidx11.1.154, i32 0, i64 1
  %78 = load i32* %arrayidx12.1.155, align 4
  %arrayidx15.1.156 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.157 = getelementptr inbounds [5 x i32]* %arrayidx15.1.156, i32 0, i64 0
  %79 = load i32* %arrayidx16.1.157, align 4
  %mul.1.158 = mul nsw i32 %78, %79
  %arrayidx19.1.159 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.1.160 = getelementptr inbounds [5 x i32]* %arrayidx19.1.159, i32 0, i64 0
  %80 = load i32* %arrayidx20.1.160, align 4
  %add.1.161 = add nsw i32 %80, %mul.1.158
  store i32 %add.1.161, i32* %arrayidx20.1.160, align 4
  %arrayidx11.2.163 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.2.164 = getelementptr inbounds [5 x i32]* %arrayidx11.2.163, i32 0, i64 2
  %81 = load i32* %arrayidx12.2.164, align 4
  %arrayidx15.2.165 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.166 = getelementptr inbounds [5 x i32]* %arrayidx15.2.165, i32 0, i64 0
  %82 = load i32* %arrayidx16.2.166, align 4
  %mul.2.167 = mul nsw i32 %81, %82
  %arrayidx19.2.168 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.2.169 = getelementptr inbounds [5 x i32]* %arrayidx19.2.168, i32 0, i64 0
  %83 = load i32* %arrayidx20.2.169, align 4
  %add.2.170 = add nsw i32 %83, %mul.2.167
  store i32 %add.2.170, i32* %arrayidx20.2.169, align 4
  %arrayidx11.3.172 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.3.173 = getelementptr inbounds [5 x i32]* %arrayidx11.3.172, i32 0, i64 3
  %84 = load i32* %arrayidx12.3.173, align 4
  %arrayidx15.3.174 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.175 = getelementptr inbounds [5 x i32]* %arrayidx15.3.174, i32 0, i64 0
  %85 = load i32* %arrayidx16.3.175, align 4
  %mul.3.176 = mul nsw i32 %84, %85
  %arrayidx19.3.177 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.3.178 = getelementptr inbounds [5 x i32]* %arrayidx19.3.177, i32 0, i64 0
  %86 = load i32* %arrayidx20.3.178, align 4
  %add.3.179 = add nsw i32 %86, %mul.3.176
  store i32 %add.3.179, i32* %arrayidx20.3.178, align 4
  %arrayidx11.4.181 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.4.182 = getelementptr inbounds [5 x i32]* %arrayidx11.4.181, i32 0, i64 4
  %87 = load i32* %arrayidx12.4.182, align 4
  %arrayidx15.4.183 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.184 = getelementptr inbounds [5 x i32]* %arrayidx15.4.183, i32 0, i64 0
  %88 = load i32* %arrayidx16.4.184, align 4
  %mul.4.185 = mul nsw i32 %87, %88
  %arrayidx19.4.186 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.4.187 = getelementptr inbounds [5 x i32]* %arrayidx19.4.186, i32 0, i64 0
  %89 = load i32* %arrayidx20.4.187, align 4
  %add.4.188 = add nsw i32 %89, %mul.4.185
  store i32 %add.4.188, i32* %arrayidx20.4.187, align 4
  %arrayidx.1.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [5 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  %arrayidx11.14.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [5 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %90 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 1
  %91 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %90, %91
  %arrayidx19.19.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [5 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %92 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %92, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  %arrayidx11.1.1.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [5 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %93 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [5 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %94 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %93, %94
  %arrayidx19.1.1.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [5 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %95 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %95, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  %arrayidx11.2.1.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.2.1.1 = getelementptr inbounds [5 x i32]* %arrayidx11.2.1.1, i32 0, i64 2
  %96 = load i32* %arrayidx12.2.1.1, align 4
  %arrayidx15.2.1.1 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.1.1 = getelementptr inbounds [5 x i32]* %arrayidx15.2.1.1, i32 0, i64 1
  %97 = load i32* %arrayidx16.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %96, %97
  %arrayidx19.2.1.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.2.1.1 = getelementptr inbounds [5 x i32]* %arrayidx19.2.1.1, i32 0, i64 1
  %98 = load i32* %arrayidx20.2.1.1, align 4
  %add.2.1.1 = add nsw i32 %98, %mul.2.1.1
  store i32 %add.2.1.1, i32* %arrayidx20.2.1.1, align 4
  %arrayidx11.3.1.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.3.1.1 = getelementptr inbounds [5 x i32]* %arrayidx11.3.1.1, i32 0, i64 3
  %99 = load i32* %arrayidx12.3.1.1, align 4
  %arrayidx15.3.1.1 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.1.1 = getelementptr inbounds [5 x i32]* %arrayidx15.3.1.1, i32 0, i64 1
  %100 = load i32* %arrayidx16.3.1.1, align 4
  %mul.3.1.1 = mul nsw i32 %99, %100
  %arrayidx19.3.1.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.3.1.1 = getelementptr inbounds [5 x i32]* %arrayidx19.3.1.1, i32 0, i64 1
  %101 = load i32* %arrayidx20.3.1.1, align 4
  %add.3.1.1 = add nsw i32 %101, %mul.3.1.1
  store i32 %add.3.1.1, i32* %arrayidx20.3.1.1, align 4
  %arrayidx11.4.1.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.4.1.1 = getelementptr inbounds [5 x i32]* %arrayidx11.4.1.1, i32 0, i64 4
  %102 = load i32* %arrayidx12.4.1.1, align 4
  %arrayidx15.4.1.1 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.1.1 = getelementptr inbounds [5 x i32]* %arrayidx15.4.1.1, i32 0, i64 1
  %103 = load i32* %arrayidx16.4.1.1, align 4
  %mul.4.1.1 = mul nsw i32 %102, %103
  %arrayidx19.4.1.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.4.1.1 = getelementptr inbounds [5 x i32]* %arrayidx19.4.1.1, i32 0, i64 1
  %104 = load i32* %arrayidx20.4.1.1, align 4
  %add.4.1.1 = add nsw i32 %104, %mul.4.1.1
  store i32 %add.4.1.1, i32* %arrayidx20.4.1.1, align 4
  %arrayidx.2.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [5 x i32]* %arrayidx.2.1, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.1, align 4
  %arrayidx11.214.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.215.1 = getelementptr inbounds [5 x i32]* %arrayidx11.214.1, i32 0, i64 0
  %105 = load i32* %arrayidx12.215.1, align 4
  %arrayidx16.216.1 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 2
  %106 = load i32* %arrayidx16.216.1, align 4
  %mul.217.1 = mul nsw i32 %105, %106
  %arrayidx19.219.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.220.1 = getelementptr inbounds [5 x i32]* %arrayidx19.219.1, i32 0, i64 2
  %107 = load i32* %arrayidx20.220.1, align 4
  %add.221.1 = add nsw i32 %107, %mul.217.1
  store i32 %add.221.1, i32* %arrayidx20.220.1, align 4
  %arrayidx11.1.2.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.1.2.1 = getelementptr inbounds [5 x i32]* %arrayidx11.1.2.1, i32 0, i64 1
  %108 = load i32* %arrayidx12.1.2.1, align 4
  %arrayidx15.1.2.1 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.2.1 = getelementptr inbounds [5 x i32]* %arrayidx15.1.2.1, i32 0, i64 2
  %109 = load i32* %arrayidx16.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %108, %109
  %arrayidx19.1.2.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.1.2.1 = getelementptr inbounds [5 x i32]* %arrayidx19.1.2.1, i32 0, i64 2
  %110 = load i32* %arrayidx20.1.2.1, align 4
  %add.1.2.1 = add nsw i32 %110, %mul.1.2.1
  store i32 %add.1.2.1, i32* %arrayidx20.1.2.1, align 4
  %arrayidx11.2.2.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.2.2.1 = getelementptr inbounds [5 x i32]* %arrayidx11.2.2.1, i32 0, i64 2
  %111 = load i32* %arrayidx12.2.2.1, align 4
  %arrayidx15.2.2.1 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.2.1 = getelementptr inbounds [5 x i32]* %arrayidx15.2.2.1, i32 0, i64 2
  %112 = load i32* %arrayidx16.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %111, %112
  %arrayidx19.2.2.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.2.2.1 = getelementptr inbounds [5 x i32]* %arrayidx19.2.2.1, i32 0, i64 2
  %113 = load i32* %arrayidx20.2.2.1, align 4
  %add.2.2.1 = add nsw i32 %113, %mul.2.2.1
  store i32 %add.2.2.1, i32* %arrayidx20.2.2.1, align 4
  %arrayidx11.3.2.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.3.2.1 = getelementptr inbounds [5 x i32]* %arrayidx11.3.2.1, i32 0, i64 3
  %114 = load i32* %arrayidx12.3.2.1, align 4
  %arrayidx15.3.2.1 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.2.1 = getelementptr inbounds [5 x i32]* %arrayidx15.3.2.1, i32 0, i64 2
  %115 = load i32* %arrayidx16.3.2.1, align 4
  %mul.3.2.1 = mul nsw i32 %114, %115
  %arrayidx19.3.2.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.3.2.1 = getelementptr inbounds [5 x i32]* %arrayidx19.3.2.1, i32 0, i64 2
  %116 = load i32* %arrayidx20.3.2.1, align 4
  %add.3.2.1 = add nsw i32 %116, %mul.3.2.1
  store i32 %add.3.2.1, i32* %arrayidx20.3.2.1, align 4
  %arrayidx11.4.2.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.4.2.1 = getelementptr inbounds [5 x i32]* %arrayidx11.4.2.1, i32 0, i64 4
  %117 = load i32* %arrayidx12.4.2.1, align 4
  %arrayidx15.4.2.1 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.2.1 = getelementptr inbounds [5 x i32]* %arrayidx15.4.2.1, i32 0, i64 2
  %118 = load i32* %arrayidx16.4.2.1, align 4
  %mul.4.2.1 = mul nsw i32 %117, %118
  %arrayidx19.4.2.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.4.2.1 = getelementptr inbounds [5 x i32]* %arrayidx19.4.2.1, i32 0, i64 2
  %119 = load i32* %arrayidx20.4.2.1, align 4
  %add.4.2.1 = add nsw i32 %119, %mul.4.2.1
  store i32 %add.4.2.1, i32* %arrayidx20.4.2.1, align 4
  %arrayidx.3.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx5.3.1 = getelementptr inbounds [5 x i32]* %arrayidx.3.1, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.1, align 4
  %arrayidx11.324.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.325.1 = getelementptr inbounds [5 x i32]* %arrayidx11.324.1, i32 0, i64 0
  %120 = load i32* %arrayidx12.325.1, align 4
  %arrayidx16.326.1 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 3
  %121 = load i32* %arrayidx16.326.1, align 4
  %mul.327.1 = mul nsw i32 %120, %121
  %arrayidx19.329.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.330.1 = getelementptr inbounds [5 x i32]* %arrayidx19.329.1, i32 0, i64 3
  %122 = load i32* %arrayidx20.330.1, align 4
  %add.331.1 = add nsw i32 %122, %mul.327.1
  store i32 %add.331.1, i32* %arrayidx20.330.1, align 4
  %arrayidx11.1.3.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.1.3.1 = getelementptr inbounds [5 x i32]* %arrayidx11.1.3.1, i32 0, i64 1
  %123 = load i32* %arrayidx12.1.3.1, align 4
  %arrayidx15.1.3.1 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.3.1 = getelementptr inbounds [5 x i32]* %arrayidx15.1.3.1, i32 0, i64 3
  %124 = load i32* %arrayidx16.1.3.1, align 4
  %mul.1.3.1 = mul nsw i32 %123, %124
  %arrayidx19.1.3.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.1.3.1 = getelementptr inbounds [5 x i32]* %arrayidx19.1.3.1, i32 0, i64 3
  %125 = load i32* %arrayidx20.1.3.1, align 4
  %add.1.3.1 = add nsw i32 %125, %mul.1.3.1
  store i32 %add.1.3.1, i32* %arrayidx20.1.3.1, align 4
  %arrayidx11.2.3.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.2.3.1 = getelementptr inbounds [5 x i32]* %arrayidx11.2.3.1, i32 0, i64 2
  %126 = load i32* %arrayidx12.2.3.1, align 4
  %arrayidx15.2.3.1 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.3.1 = getelementptr inbounds [5 x i32]* %arrayidx15.2.3.1, i32 0, i64 3
  %127 = load i32* %arrayidx16.2.3.1, align 4
  %mul.2.3.1 = mul nsw i32 %126, %127
  %arrayidx19.2.3.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.2.3.1 = getelementptr inbounds [5 x i32]* %arrayidx19.2.3.1, i32 0, i64 3
  %128 = load i32* %arrayidx20.2.3.1, align 4
  %add.2.3.1 = add nsw i32 %128, %mul.2.3.1
  store i32 %add.2.3.1, i32* %arrayidx20.2.3.1, align 4
  %arrayidx11.3.3.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.3.3.1 = getelementptr inbounds [5 x i32]* %arrayidx11.3.3.1, i32 0, i64 3
  %129 = load i32* %arrayidx12.3.3.1, align 4
  %arrayidx15.3.3.1 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.3.1 = getelementptr inbounds [5 x i32]* %arrayidx15.3.3.1, i32 0, i64 3
  %130 = load i32* %arrayidx16.3.3.1, align 4
  %mul.3.3.1 = mul nsw i32 %129, %130
  %arrayidx19.3.3.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.3.3.1 = getelementptr inbounds [5 x i32]* %arrayidx19.3.3.1, i32 0, i64 3
  %131 = load i32* %arrayidx20.3.3.1, align 4
  %add.3.3.1 = add nsw i32 %131, %mul.3.3.1
  store i32 %add.3.3.1, i32* %arrayidx20.3.3.1, align 4
  %arrayidx11.4.3.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.4.3.1 = getelementptr inbounds [5 x i32]* %arrayidx11.4.3.1, i32 0, i64 4
  %132 = load i32* %arrayidx12.4.3.1, align 4
  %arrayidx15.4.3.1 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.3.1 = getelementptr inbounds [5 x i32]* %arrayidx15.4.3.1, i32 0, i64 3
  %133 = load i32* %arrayidx16.4.3.1, align 4
  %mul.4.3.1 = mul nsw i32 %132, %133
  %arrayidx19.4.3.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.4.3.1 = getelementptr inbounds [5 x i32]* %arrayidx19.4.3.1, i32 0, i64 3
  %134 = load i32* %arrayidx20.4.3.1, align 4
  %add.4.3.1 = add nsw i32 %134, %mul.4.3.1
  store i32 %add.4.3.1, i32* %arrayidx20.4.3.1, align 4
  %arrayidx.4.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx5.4.1 = getelementptr inbounds [5 x i32]* %arrayidx.4.1, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.1, align 4
  %arrayidx11.434.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.435.1 = getelementptr inbounds [5 x i32]* %arrayidx11.434.1, i32 0, i64 0
  %135 = load i32* %arrayidx12.435.1, align 4
  %arrayidx16.436.1 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 4
  %136 = load i32* %arrayidx16.436.1, align 4
  %mul.437.1 = mul nsw i32 %135, %136
  %arrayidx19.439.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.440.1 = getelementptr inbounds [5 x i32]* %arrayidx19.439.1, i32 0, i64 4
  %137 = load i32* %arrayidx20.440.1, align 4
  %add.441.1 = add nsw i32 %137, %mul.437.1
  store i32 %add.441.1, i32* %arrayidx20.440.1, align 4
  %arrayidx11.1.4.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.1.4.1 = getelementptr inbounds [5 x i32]* %arrayidx11.1.4.1, i32 0, i64 1
  %138 = load i32* %arrayidx12.1.4.1, align 4
  %arrayidx15.1.4.1 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.4.1 = getelementptr inbounds [5 x i32]* %arrayidx15.1.4.1, i32 0, i64 4
  %139 = load i32* %arrayidx16.1.4.1, align 4
  %mul.1.4.1 = mul nsw i32 %138, %139
  %arrayidx19.1.4.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.1.4.1 = getelementptr inbounds [5 x i32]* %arrayidx19.1.4.1, i32 0, i64 4
  %140 = load i32* %arrayidx20.1.4.1, align 4
  %add.1.4.1 = add nsw i32 %140, %mul.1.4.1
  store i32 %add.1.4.1, i32* %arrayidx20.1.4.1, align 4
  %arrayidx11.2.4.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.2.4.1 = getelementptr inbounds [5 x i32]* %arrayidx11.2.4.1, i32 0, i64 2
  %141 = load i32* %arrayidx12.2.4.1, align 4
  %arrayidx15.2.4.1 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.4.1 = getelementptr inbounds [5 x i32]* %arrayidx15.2.4.1, i32 0, i64 4
  %142 = load i32* %arrayidx16.2.4.1, align 4
  %mul.2.4.1 = mul nsw i32 %141, %142
  %arrayidx19.2.4.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.2.4.1 = getelementptr inbounds [5 x i32]* %arrayidx19.2.4.1, i32 0, i64 4
  %143 = load i32* %arrayidx20.2.4.1, align 4
  %add.2.4.1 = add nsw i32 %143, %mul.2.4.1
  store i32 %add.2.4.1, i32* %arrayidx20.2.4.1, align 4
  %arrayidx11.3.4.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.3.4.1 = getelementptr inbounds [5 x i32]* %arrayidx11.3.4.1, i32 0, i64 3
  %144 = load i32* %arrayidx12.3.4.1, align 4
  %arrayidx15.3.4.1 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.4.1 = getelementptr inbounds [5 x i32]* %arrayidx15.3.4.1, i32 0, i64 4
  %145 = load i32* %arrayidx16.3.4.1, align 4
  %mul.3.4.1 = mul nsw i32 %144, %145
  %arrayidx19.3.4.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.3.4.1 = getelementptr inbounds [5 x i32]* %arrayidx19.3.4.1, i32 0, i64 4
  %146 = load i32* %arrayidx20.3.4.1, align 4
  %add.3.4.1 = add nsw i32 %146, %mul.3.4.1
  store i32 %add.3.4.1, i32* %arrayidx20.3.4.1, align 4
  %arrayidx11.4.4.1 = getelementptr inbounds [5 x i32]* %a, i64 1
  %arrayidx12.4.4.1 = getelementptr inbounds [5 x i32]* %arrayidx11.4.4.1, i32 0, i64 4
  %147 = load i32* %arrayidx12.4.4.1, align 4
  %arrayidx15.4.4.1 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.4.1 = getelementptr inbounds [5 x i32]* %arrayidx15.4.4.1, i32 0, i64 4
  %148 = load i32* %arrayidx16.4.4.1, align 4
  %mul.4.4.1 = mul nsw i32 %147, %148
  %arrayidx19.4.4.1 = getelementptr inbounds [5 x i32]* %c, i64 1
  %arrayidx20.4.4.1 = getelementptr inbounds [5 x i32]* %arrayidx19.4.4.1, i32 0, i64 4
  %149 = load i32* %arrayidx20.4.4.1, align 4
  %add.4.4.1 = add nsw i32 %149, %mul.4.4.1
  store i32 %add.4.4.1, i32* %arrayidx20.4.4.1, align 4
  %arrayidx.292 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx5.293 = getelementptr inbounds [5 x i32]* %arrayidx.292, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.293, align 4
  %arrayidx11.294 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.295 = getelementptr inbounds [5 x i32]* %arrayidx11.294, i32 0, i64 0
  %150 = load i32* %arrayidx12.295, align 4
  %arrayidx16.296 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 0
  %151 = load i32* %arrayidx16.296, align 4
  %mul.297 = mul nsw i32 %150, %151
  %arrayidx19.298 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.299 = getelementptr inbounds [5 x i32]* %arrayidx19.298, i32 0, i64 0
  %152 = load i32* %arrayidx20.299, align 4
  %add.2100 = add nsw i32 %152, %mul.297
  store i32 %add.2100, i32* %arrayidx20.299, align 4
  %arrayidx11.1.2102 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.1.2103 = getelementptr inbounds [5 x i32]* %arrayidx11.1.2102, i32 0, i64 1
  %153 = load i32* %arrayidx12.1.2103, align 4
  %arrayidx15.1.2104 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.2105 = getelementptr inbounds [5 x i32]* %arrayidx15.1.2104, i32 0, i64 0
  %154 = load i32* %arrayidx16.1.2105, align 4
  %mul.1.2106 = mul nsw i32 %153, %154
  %arrayidx19.1.2107 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.1.2108 = getelementptr inbounds [5 x i32]* %arrayidx19.1.2107, i32 0, i64 0
  %155 = load i32* %arrayidx20.1.2108, align 4
  %add.1.2109 = add nsw i32 %155, %mul.1.2106
  store i32 %add.1.2109, i32* %arrayidx20.1.2108, align 4
  %arrayidx11.2.2111 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.2.2112 = getelementptr inbounds [5 x i32]* %arrayidx11.2.2111, i32 0, i64 2
  %156 = load i32* %arrayidx12.2.2112, align 4
  %arrayidx15.2.2113 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.2114 = getelementptr inbounds [5 x i32]* %arrayidx15.2.2113, i32 0, i64 0
  %157 = load i32* %arrayidx16.2.2114, align 4
  %mul.2.2115 = mul nsw i32 %156, %157
  %arrayidx19.2.2116 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.2.2117 = getelementptr inbounds [5 x i32]* %arrayidx19.2.2116, i32 0, i64 0
  %158 = load i32* %arrayidx20.2.2117, align 4
  %add.2.2118 = add nsw i32 %158, %mul.2.2115
  store i32 %add.2.2118, i32* %arrayidx20.2.2117, align 4
  %arrayidx11.3.2120 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.3.2121 = getelementptr inbounds [5 x i32]* %arrayidx11.3.2120, i32 0, i64 3
  %159 = load i32* %arrayidx12.3.2121, align 4
  %arrayidx15.3.2122 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.2123 = getelementptr inbounds [5 x i32]* %arrayidx15.3.2122, i32 0, i64 0
  %160 = load i32* %arrayidx16.3.2123, align 4
  %mul.3.2124 = mul nsw i32 %159, %160
  %arrayidx19.3.2125 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.3.2126 = getelementptr inbounds [5 x i32]* %arrayidx19.3.2125, i32 0, i64 0
  %161 = load i32* %arrayidx20.3.2126, align 4
  %add.3.2127 = add nsw i32 %161, %mul.3.2124
  store i32 %add.3.2127, i32* %arrayidx20.3.2126, align 4
  %arrayidx11.4.2129 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.4.2130 = getelementptr inbounds [5 x i32]* %arrayidx11.4.2129, i32 0, i64 4
  %162 = load i32* %arrayidx12.4.2130, align 4
  %arrayidx15.4.2131 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.2132 = getelementptr inbounds [5 x i32]* %arrayidx15.4.2131, i32 0, i64 0
  %163 = load i32* %arrayidx16.4.2132, align 4
  %mul.4.2133 = mul nsw i32 %162, %163
  %arrayidx19.4.2134 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.4.2135 = getelementptr inbounds [5 x i32]* %arrayidx19.4.2134, i32 0, i64 0
  %164 = load i32* %arrayidx20.4.2135, align 4
  %add.4.2136 = add nsw i32 %164, %mul.4.2133
  store i32 %add.4.2136, i32* %arrayidx20.4.2135, align 4
  %arrayidx.1.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [5 x i32]* %arrayidx.1.2, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.2, align 4
  %arrayidx11.14.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.15.2 = getelementptr inbounds [5 x i32]* %arrayidx11.14.2, i32 0, i64 0
  %165 = load i32* %arrayidx12.15.2, align 4
  %arrayidx16.16.2 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 1
  %166 = load i32* %arrayidx16.16.2, align 4
  %mul.17.2 = mul nsw i32 %165, %166
  %arrayidx19.19.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.110.2 = getelementptr inbounds [5 x i32]* %arrayidx19.19.2, i32 0, i64 1
  %167 = load i32* %arrayidx20.110.2, align 4
  %add.111.2 = add nsw i32 %167, %mul.17.2
  store i32 %add.111.2, i32* %arrayidx20.110.2, align 4
  %arrayidx11.1.1.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.1.1.2 = getelementptr inbounds [5 x i32]* %arrayidx11.1.1.2, i32 0, i64 1
  %168 = load i32* %arrayidx12.1.1.2, align 4
  %arrayidx15.1.1.2 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.1.2 = getelementptr inbounds [5 x i32]* %arrayidx15.1.1.2, i32 0, i64 1
  %169 = load i32* %arrayidx16.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %168, %169
  %arrayidx19.1.1.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.1.1.2 = getelementptr inbounds [5 x i32]* %arrayidx19.1.1.2, i32 0, i64 1
  %170 = load i32* %arrayidx20.1.1.2, align 4
  %add.1.1.2 = add nsw i32 %170, %mul.1.1.2
  store i32 %add.1.1.2, i32* %arrayidx20.1.1.2, align 4
  %arrayidx11.2.1.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.2.1.2 = getelementptr inbounds [5 x i32]* %arrayidx11.2.1.2, i32 0, i64 2
  %171 = load i32* %arrayidx12.2.1.2, align 4
  %arrayidx15.2.1.2 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.1.2 = getelementptr inbounds [5 x i32]* %arrayidx15.2.1.2, i32 0, i64 1
  %172 = load i32* %arrayidx16.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %171, %172
  %arrayidx19.2.1.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.2.1.2 = getelementptr inbounds [5 x i32]* %arrayidx19.2.1.2, i32 0, i64 1
  %173 = load i32* %arrayidx20.2.1.2, align 4
  %add.2.1.2 = add nsw i32 %173, %mul.2.1.2
  store i32 %add.2.1.2, i32* %arrayidx20.2.1.2, align 4
  %arrayidx11.3.1.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.3.1.2 = getelementptr inbounds [5 x i32]* %arrayidx11.3.1.2, i32 0, i64 3
  %174 = load i32* %arrayidx12.3.1.2, align 4
  %arrayidx15.3.1.2 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.1.2 = getelementptr inbounds [5 x i32]* %arrayidx15.3.1.2, i32 0, i64 1
  %175 = load i32* %arrayidx16.3.1.2, align 4
  %mul.3.1.2 = mul nsw i32 %174, %175
  %arrayidx19.3.1.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.3.1.2 = getelementptr inbounds [5 x i32]* %arrayidx19.3.1.2, i32 0, i64 1
  %176 = load i32* %arrayidx20.3.1.2, align 4
  %add.3.1.2 = add nsw i32 %176, %mul.3.1.2
  store i32 %add.3.1.2, i32* %arrayidx20.3.1.2, align 4
  %arrayidx11.4.1.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.4.1.2 = getelementptr inbounds [5 x i32]* %arrayidx11.4.1.2, i32 0, i64 4
  %177 = load i32* %arrayidx12.4.1.2, align 4
  %arrayidx15.4.1.2 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.1.2 = getelementptr inbounds [5 x i32]* %arrayidx15.4.1.2, i32 0, i64 1
  %178 = load i32* %arrayidx16.4.1.2, align 4
  %mul.4.1.2 = mul nsw i32 %177, %178
  %arrayidx19.4.1.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.4.1.2 = getelementptr inbounds [5 x i32]* %arrayidx19.4.1.2, i32 0, i64 1
  %179 = load i32* %arrayidx20.4.1.2, align 4
  %add.4.1.2 = add nsw i32 %179, %mul.4.1.2
  store i32 %add.4.1.2, i32* %arrayidx20.4.1.2, align 4
  %arrayidx.2.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [5 x i32]* %arrayidx.2.2, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.2, align 4
  %arrayidx11.214.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.215.2 = getelementptr inbounds [5 x i32]* %arrayidx11.214.2, i32 0, i64 0
  %180 = load i32* %arrayidx12.215.2, align 4
  %arrayidx16.216.2 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 2
  %181 = load i32* %arrayidx16.216.2, align 4
  %mul.217.2 = mul nsw i32 %180, %181
  %arrayidx19.219.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.220.2 = getelementptr inbounds [5 x i32]* %arrayidx19.219.2, i32 0, i64 2
  %182 = load i32* %arrayidx20.220.2, align 4
  %add.221.2 = add nsw i32 %182, %mul.217.2
  store i32 %add.221.2, i32* %arrayidx20.220.2, align 4
  %arrayidx11.1.2.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.1.2.2 = getelementptr inbounds [5 x i32]* %arrayidx11.1.2.2, i32 0, i64 1
  %183 = load i32* %arrayidx12.1.2.2, align 4
  %arrayidx15.1.2.2 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.2.2 = getelementptr inbounds [5 x i32]* %arrayidx15.1.2.2, i32 0, i64 2
  %184 = load i32* %arrayidx16.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %183, %184
  %arrayidx19.1.2.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.1.2.2 = getelementptr inbounds [5 x i32]* %arrayidx19.1.2.2, i32 0, i64 2
  %185 = load i32* %arrayidx20.1.2.2, align 4
  %add.1.2.2 = add nsw i32 %185, %mul.1.2.2
  store i32 %add.1.2.2, i32* %arrayidx20.1.2.2, align 4
  %arrayidx11.2.2.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.2.2.2 = getelementptr inbounds [5 x i32]* %arrayidx11.2.2.2, i32 0, i64 2
  %186 = load i32* %arrayidx12.2.2.2, align 4
  %arrayidx15.2.2.2 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.2.2 = getelementptr inbounds [5 x i32]* %arrayidx15.2.2.2, i32 0, i64 2
  %187 = load i32* %arrayidx16.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %186, %187
  %arrayidx19.2.2.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.2.2.2 = getelementptr inbounds [5 x i32]* %arrayidx19.2.2.2, i32 0, i64 2
  %188 = load i32* %arrayidx20.2.2.2, align 4
  %add.2.2.2 = add nsw i32 %188, %mul.2.2.2
  store i32 %add.2.2.2, i32* %arrayidx20.2.2.2, align 4
  %arrayidx11.3.2.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.3.2.2 = getelementptr inbounds [5 x i32]* %arrayidx11.3.2.2, i32 0, i64 3
  %189 = load i32* %arrayidx12.3.2.2, align 4
  %arrayidx15.3.2.2 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.2.2 = getelementptr inbounds [5 x i32]* %arrayidx15.3.2.2, i32 0, i64 2
  %190 = load i32* %arrayidx16.3.2.2, align 4
  %mul.3.2.2 = mul nsw i32 %189, %190
  %arrayidx19.3.2.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.3.2.2 = getelementptr inbounds [5 x i32]* %arrayidx19.3.2.2, i32 0, i64 2
  %191 = load i32* %arrayidx20.3.2.2, align 4
  %add.3.2.2 = add nsw i32 %191, %mul.3.2.2
  store i32 %add.3.2.2, i32* %arrayidx20.3.2.2, align 4
  %arrayidx11.4.2.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.4.2.2 = getelementptr inbounds [5 x i32]* %arrayidx11.4.2.2, i32 0, i64 4
  %192 = load i32* %arrayidx12.4.2.2, align 4
  %arrayidx15.4.2.2 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.2.2 = getelementptr inbounds [5 x i32]* %arrayidx15.4.2.2, i32 0, i64 2
  %193 = load i32* %arrayidx16.4.2.2, align 4
  %mul.4.2.2 = mul nsw i32 %192, %193
  %arrayidx19.4.2.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.4.2.2 = getelementptr inbounds [5 x i32]* %arrayidx19.4.2.2, i32 0, i64 2
  %194 = load i32* %arrayidx20.4.2.2, align 4
  %add.4.2.2 = add nsw i32 %194, %mul.4.2.2
  store i32 %add.4.2.2, i32* %arrayidx20.4.2.2, align 4
  %arrayidx.3.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx5.3.2 = getelementptr inbounds [5 x i32]* %arrayidx.3.2, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.2, align 4
  %arrayidx11.324.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.325.2 = getelementptr inbounds [5 x i32]* %arrayidx11.324.2, i32 0, i64 0
  %195 = load i32* %arrayidx12.325.2, align 4
  %arrayidx16.326.2 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 3
  %196 = load i32* %arrayidx16.326.2, align 4
  %mul.327.2 = mul nsw i32 %195, %196
  %arrayidx19.329.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.330.2 = getelementptr inbounds [5 x i32]* %arrayidx19.329.2, i32 0, i64 3
  %197 = load i32* %arrayidx20.330.2, align 4
  %add.331.2 = add nsw i32 %197, %mul.327.2
  store i32 %add.331.2, i32* %arrayidx20.330.2, align 4
  %arrayidx11.1.3.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.1.3.2 = getelementptr inbounds [5 x i32]* %arrayidx11.1.3.2, i32 0, i64 1
  %198 = load i32* %arrayidx12.1.3.2, align 4
  %arrayidx15.1.3.2 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.3.2 = getelementptr inbounds [5 x i32]* %arrayidx15.1.3.2, i32 0, i64 3
  %199 = load i32* %arrayidx16.1.3.2, align 4
  %mul.1.3.2 = mul nsw i32 %198, %199
  %arrayidx19.1.3.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.1.3.2 = getelementptr inbounds [5 x i32]* %arrayidx19.1.3.2, i32 0, i64 3
  %200 = load i32* %arrayidx20.1.3.2, align 4
  %add.1.3.2 = add nsw i32 %200, %mul.1.3.2
  store i32 %add.1.3.2, i32* %arrayidx20.1.3.2, align 4
  %arrayidx11.2.3.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.2.3.2 = getelementptr inbounds [5 x i32]* %arrayidx11.2.3.2, i32 0, i64 2
  %201 = load i32* %arrayidx12.2.3.2, align 4
  %arrayidx15.2.3.2 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.3.2 = getelementptr inbounds [5 x i32]* %arrayidx15.2.3.2, i32 0, i64 3
  %202 = load i32* %arrayidx16.2.3.2, align 4
  %mul.2.3.2 = mul nsw i32 %201, %202
  %arrayidx19.2.3.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.2.3.2 = getelementptr inbounds [5 x i32]* %arrayidx19.2.3.2, i32 0, i64 3
  %203 = load i32* %arrayidx20.2.3.2, align 4
  %add.2.3.2 = add nsw i32 %203, %mul.2.3.2
  store i32 %add.2.3.2, i32* %arrayidx20.2.3.2, align 4
  %arrayidx11.3.3.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.3.3.2 = getelementptr inbounds [5 x i32]* %arrayidx11.3.3.2, i32 0, i64 3
  %204 = load i32* %arrayidx12.3.3.2, align 4
  %arrayidx15.3.3.2 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.3.2 = getelementptr inbounds [5 x i32]* %arrayidx15.3.3.2, i32 0, i64 3
  %205 = load i32* %arrayidx16.3.3.2, align 4
  %mul.3.3.2 = mul nsw i32 %204, %205
  %arrayidx19.3.3.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.3.3.2 = getelementptr inbounds [5 x i32]* %arrayidx19.3.3.2, i32 0, i64 3
  %206 = load i32* %arrayidx20.3.3.2, align 4
  %add.3.3.2 = add nsw i32 %206, %mul.3.3.2
  store i32 %add.3.3.2, i32* %arrayidx20.3.3.2, align 4
  %arrayidx11.4.3.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.4.3.2 = getelementptr inbounds [5 x i32]* %arrayidx11.4.3.2, i32 0, i64 4
  %207 = load i32* %arrayidx12.4.3.2, align 4
  %arrayidx15.4.3.2 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.3.2 = getelementptr inbounds [5 x i32]* %arrayidx15.4.3.2, i32 0, i64 3
  %208 = load i32* %arrayidx16.4.3.2, align 4
  %mul.4.3.2 = mul nsw i32 %207, %208
  %arrayidx19.4.3.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.4.3.2 = getelementptr inbounds [5 x i32]* %arrayidx19.4.3.2, i32 0, i64 3
  %209 = load i32* %arrayidx20.4.3.2, align 4
  %add.4.3.2 = add nsw i32 %209, %mul.4.3.2
  store i32 %add.4.3.2, i32* %arrayidx20.4.3.2, align 4
  %arrayidx.4.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx5.4.2 = getelementptr inbounds [5 x i32]* %arrayidx.4.2, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.2, align 4
  %arrayidx11.434.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.435.2 = getelementptr inbounds [5 x i32]* %arrayidx11.434.2, i32 0, i64 0
  %210 = load i32* %arrayidx12.435.2, align 4
  %arrayidx16.436.2 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 4
  %211 = load i32* %arrayidx16.436.2, align 4
  %mul.437.2 = mul nsw i32 %210, %211
  %arrayidx19.439.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.440.2 = getelementptr inbounds [5 x i32]* %arrayidx19.439.2, i32 0, i64 4
  %212 = load i32* %arrayidx20.440.2, align 4
  %add.441.2 = add nsw i32 %212, %mul.437.2
  store i32 %add.441.2, i32* %arrayidx20.440.2, align 4
  %arrayidx11.1.4.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.1.4.2 = getelementptr inbounds [5 x i32]* %arrayidx11.1.4.2, i32 0, i64 1
  %213 = load i32* %arrayidx12.1.4.2, align 4
  %arrayidx15.1.4.2 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.4.2 = getelementptr inbounds [5 x i32]* %arrayidx15.1.4.2, i32 0, i64 4
  %214 = load i32* %arrayidx16.1.4.2, align 4
  %mul.1.4.2 = mul nsw i32 %213, %214
  %arrayidx19.1.4.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.1.4.2 = getelementptr inbounds [5 x i32]* %arrayidx19.1.4.2, i32 0, i64 4
  %215 = load i32* %arrayidx20.1.4.2, align 4
  %add.1.4.2 = add nsw i32 %215, %mul.1.4.2
  store i32 %add.1.4.2, i32* %arrayidx20.1.4.2, align 4
  %arrayidx11.2.4.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.2.4.2 = getelementptr inbounds [5 x i32]* %arrayidx11.2.4.2, i32 0, i64 2
  %216 = load i32* %arrayidx12.2.4.2, align 4
  %arrayidx15.2.4.2 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.4.2 = getelementptr inbounds [5 x i32]* %arrayidx15.2.4.2, i32 0, i64 4
  %217 = load i32* %arrayidx16.2.4.2, align 4
  %mul.2.4.2 = mul nsw i32 %216, %217
  %arrayidx19.2.4.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.2.4.2 = getelementptr inbounds [5 x i32]* %arrayidx19.2.4.2, i32 0, i64 4
  %218 = load i32* %arrayidx20.2.4.2, align 4
  %add.2.4.2 = add nsw i32 %218, %mul.2.4.2
  store i32 %add.2.4.2, i32* %arrayidx20.2.4.2, align 4
  %arrayidx11.3.4.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.3.4.2 = getelementptr inbounds [5 x i32]* %arrayidx11.3.4.2, i32 0, i64 3
  %219 = load i32* %arrayidx12.3.4.2, align 4
  %arrayidx15.3.4.2 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.4.2 = getelementptr inbounds [5 x i32]* %arrayidx15.3.4.2, i32 0, i64 4
  %220 = load i32* %arrayidx16.3.4.2, align 4
  %mul.3.4.2 = mul nsw i32 %219, %220
  %arrayidx19.3.4.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.3.4.2 = getelementptr inbounds [5 x i32]* %arrayidx19.3.4.2, i32 0, i64 4
  %221 = load i32* %arrayidx20.3.4.2, align 4
  %add.3.4.2 = add nsw i32 %221, %mul.3.4.2
  store i32 %add.3.4.2, i32* %arrayidx20.3.4.2, align 4
  %arrayidx11.4.4.2 = getelementptr inbounds [5 x i32]* %a, i64 2
  %arrayidx12.4.4.2 = getelementptr inbounds [5 x i32]* %arrayidx11.4.4.2, i32 0, i64 4
  %222 = load i32* %arrayidx12.4.4.2, align 4
  %arrayidx15.4.4.2 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.4.2 = getelementptr inbounds [5 x i32]* %arrayidx15.4.4.2, i32 0, i64 4
  %223 = load i32* %arrayidx16.4.4.2, align 4
  %mul.4.4.2 = mul nsw i32 %222, %223
  %arrayidx19.4.4.2 = getelementptr inbounds [5 x i32]* %c, i64 2
  %arrayidx20.4.4.2 = getelementptr inbounds [5 x i32]* %arrayidx19.4.4.2, i32 0, i64 4
  %224 = load i32* %arrayidx20.4.4.2, align 4
  %add.4.4.2 = add nsw i32 %224, %mul.4.4.2
  store i32 %add.4.4.2, i32* %arrayidx20.4.4.2, align 4
  %arrayidx.3140 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx5.3141 = getelementptr inbounds [5 x i32]* %arrayidx.3140, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.3141, align 4
  %arrayidx11.3142 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.3143 = getelementptr inbounds [5 x i32]* %arrayidx11.3142, i32 0, i64 0
  %225 = load i32* %arrayidx12.3143, align 4
  %arrayidx16.3144 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 0
  %226 = load i32* %arrayidx16.3144, align 4
  %mul.3145 = mul nsw i32 %225, %226
  %arrayidx19.3146 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.3147 = getelementptr inbounds [5 x i32]* %arrayidx19.3146, i32 0, i64 0
  %227 = load i32* %arrayidx20.3147, align 4
  %add.3148 = add nsw i32 %227, %mul.3145
  store i32 %add.3148, i32* %arrayidx20.3147, align 4
  %arrayidx11.1.3150 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.1.3151 = getelementptr inbounds [5 x i32]* %arrayidx11.1.3150, i32 0, i64 1
  %228 = load i32* %arrayidx12.1.3151, align 4
  %arrayidx15.1.3152 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.3153 = getelementptr inbounds [5 x i32]* %arrayidx15.1.3152, i32 0, i64 0
  %229 = load i32* %arrayidx16.1.3153, align 4
  %mul.1.3154 = mul nsw i32 %228, %229
  %arrayidx19.1.3155 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.1.3156 = getelementptr inbounds [5 x i32]* %arrayidx19.1.3155, i32 0, i64 0
  %230 = load i32* %arrayidx20.1.3156, align 4
  %add.1.3157 = add nsw i32 %230, %mul.1.3154
  store i32 %add.1.3157, i32* %arrayidx20.1.3156, align 4
  %arrayidx11.2.3159 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.2.3160 = getelementptr inbounds [5 x i32]* %arrayidx11.2.3159, i32 0, i64 2
  %231 = load i32* %arrayidx12.2.3160, align 4
  %arrayidx15.2.3161 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.3162 = getelementptr inbounds [5 x i32]* %arrayidx15.2.3161, i32 0, i64 0
  %232 = load i32* %arrayidx16.2.3162, align 4
  %mul.2.3163 = mul nsw i32 %231, %232
  %arrayidx19.2.3164 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.2.3165 = getelementptr inbounds [5 x i32]* %arrayidx19.2.3164, i32 0, i64 0
  %233 = load i32* %arrayidx20.2.3165, align 4
  %add.2.3166 = add nsw i32 %233, %mul.2.3163
  store i32 %add.2.3166, i32* %arrayidx20.2.3165, align 4
  %arrayidx11.3.3168 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.3.3169 = getelementptr inbounds [5 x i32]* %arrayidx11.3.3168, i32 0, i64 3
  %234 = load i32* %arrayidx12.3.3169, align 4
  %arrayidx15.3.3170 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.3171 = getelementptr inbounds [5 x i32]* %arrayidx15.3.3170, i32 0, i64 0
  %235 = load i32* %arrayidx16.3.3171, align 4
  %mul.3.3172 = mul nsw i32 %234, %235
  %arrayidx19.3.3173 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.3.3174 = getelementptr inbounds [5 x i32]* %arrayidx19.3.3173, i32 0, i64 0
  %236 = load i32* %arrayidx20.3.3174, align 4
  %add.3.3175 = add nsw i32 %236, %mul.3.3172
  store i32 %add.3.3175, i32* %arrayidx20.3.3174, align 4
  %arrayidx11.4.3177 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.4.3178 = getelementptr inbounds [5 x i32]* %arrayidx11.4.3177, i32 0, i64 4
  %237 = load i32* %arrayidx12.4.3178, align 4
  %arrayidx15.4.3179 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.3180 = getelementptr inbounds [5 x i32]* %arrayidx15.4.3179, i32 0, i64 0
  %238 = load i32* %arrayidx16.4.3180, align 4
  %mul.4.3181 = mul nsw i32 %237, %238
  %arrayidx19.4.3182 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.4.3183 = getelementptr inbounds [5 x i32]* %arrayidx19.4.3182, i32 0, i64 0
  %239 = load i32* %arrayidx20.4.3183, align 4
  %add.4.3184 = add nsw i32 %239, %mul.4.3181
  store i32 %add.4.3184, i32* %arrayidx20.4.3183, align 4
  %arrayidx.1.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx5.1.3 = getelementptr inbounds [5 x i32]* %arrayidx.1.3, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.3, align 4
  %arrayidx11.14.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.15.3 = getelementptr inbounds [5 x i32]* %arrayidx11.14.3, i32 0, i64 0
  %240 = load i32* %arrayidx12.15.3, align 4
  %arrayidx16.16.3 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 1
  %241 = load i32* %arrayidx16.16.3, align 4
  %mul.17.3 = mul nsw i32 %240, %241
  %arrayidx19.19.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.110.3 = getelementptr inbounds [5 x i32]* %arrayidx19.19.3, i32 0, i64 1
  %242 = load i32* %arrayidx20.110.3, align 4
  %add.111.3 = add nsw i32 %242, %mul.17.3
  store i32 %add.111.3, i32* %arrayidx20.110.3, align 4
  %arrayidx11.1.1.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.1.1.3 = getelementptr inbounds [5 x i32]* %arrayidx11.1.1.3, i32 0, i64 1
  %243 = load i32* %arrayidx12.1.1.3, align 4
  %arrayidx15.1.1.3 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.1.3 = getelementptr inbounds [5 x i32]* %arrayidx15.1.1.3, i32 0, i64 1
  %244 = load i32* %arrayidx16.1.1.3, align 4
  %mul.1.1.3 = mul nsw i32 %243, %244
  %arrayidx19.1.1.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.1.1.3 = getelementptr inbounds [5 x i32]* %arrayidx19.1.1.3, i32 0, i64 1
  %245 = load i32* %arrayidx20.1.1.3, align 4
  %add.1.1.3 = add nsw i32 %245, %mul.1.1.3
  store i32 %add.1.1.3, i32* %arrayidx20.1.1.3, align 4
  %arrayidx11.2.1.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.2.1.3 = getelementptr inbounds [5 x i32]* %arrayidx11.2.1.3, i32 0, i64 2
  %246 = load i32* %arrayidx12.2.1.3, align 4
  %arrayidx15.2.1.3 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.1.3 = getelementptr inbounds [5 x i32]* %arrayidx15.2.1.3, i32 0, i64 1
  %247 = load i32* %arrayidx16.2.1.3, align 4
  %mul.2.1.3 = mul nsw i32 %246, %247
  %arrayidx19.2.1.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.2.1.3 = getelementptr inbounds [5 x i32]* %arrayidx19.2.1.3, i32 0, i64 1
  %248 = load i32* %arrayidx20.2.1.3, align 4
  %add.2.1.3 = add nsw i32 %248, %mul.2.1.3
  store i32 %add.2.1.3, i32* %arrayidx20.2.1.3, align 4
  %arrayidx11.3.1.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.3.1.3 = getelementptr inbounds [5 x i32]* %arrayidx11.3.1.3, i32 0, i64 3
  %249 = load i32* %arrayidx12.3.1.3, align 4
  %arrayidx15.3.1.3 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.1.3 = getelementptr inbounds [5 x i32]* %arrayidx15.3.1.3, i32 0, i64 1
  %250 = load i32* %arrayidx16.3.1.3, align 4
  %mul.3.1.3 = mul nsw i32 %249, %250
  %arrayidx19.3.1.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.3.1.3 = getelementptr inbounds [5 x i32]* %arrayidx19.3.1.3, i32 0, i64 1
  %251 = load i32* %arrayidx20.3.1.3, align 4
  %add.3.1.3 = add nsw i32 %251, %mul.3.1.3
  store i32 %add.3.1.3, i32* %arrayidx20.3.1.3, align 4
  %arrayidx11.4.1.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.4.1.3 = getelementptr inbounds [5 x i32]* %arrayidx11.4.1.3, i32 0, i64 4
  %252 = load i32* %arrayidx12.4.1.3, align 4
  %arrayidx15.4.1.3 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.1.3 = getelementptr inbounds [5 x i32]* %arrayidx15.4.1.3, i32 0, i64 1
  %253 = load i32* %arrayidx16.4.1.3, align 4
  %mul.4.1.3 = mul nsw i32 %252, %253
  %arrayidx19.4.1.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.4.1.3 = getelementptr inbounds [5 x i32]* %arrayidx19.4.1.3, i32 0, i64 1
  %254 = load i32* %arrayidx20.4.1.3, align 4
  %add.4.1.3 = add nsw i32 %254, %mul.4.1.3
  store i32 %add.4.1.3, i32* %arrayidx20.4.1.3, align 4
  %arrayidx.2.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx5.2.3 = getelementptr inbounds [5 x i32]* %arrayidx.2.3, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.3, align 4
  %arrayidx11.214.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.215.3 = getelementptr inbounds [5 x i32]* %arrayidx11.214.3, i32 0, i64 0
  %255 = load i32* %arrayidx12.215.3, align 4
  %arrayidx16.216.3 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 2
  %256 = load i32* %arrayidx16.216.3, align 4
  %mul.217.3 = mul nsw i32 %255, %256
  %arrayidx19.219.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.220.3 = getelementptr inbounds [5 x i32]* %arrayidx19.219.3, i32 0, i64 2
  %257 = load i32* %arrayidx20.220.3, align 4
  %add.221.3 = add nsw i32 %257, %mul.217.3
  store i32 %add.221.3, i32* %arrayidx20.220.3, align 4
  %arrayidx11.1.2.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.1.2.3 = getelementptr inbounds [5 x i32]* %arrayidx11.1.2.3, i32 0, i64 1
  %258 = load i32* %arrayidx12.1.2.3, align 4
  %arrayidx15.1.2.3 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.2.3 = getelementptr inbounds [5 x i32]* %arrayidx15.1.2.3, i32 0, i64 2
  %259 = load i32* %arrayidx16.1.2.3, align 4
  %mul.1.2.3 = mul nsw i32 %258, %259
  %arrayidx19.1.2.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.1.2.3 = getelementptr inbounds [5 x i32]* %arrayidx19.1.2.3, i32 0, i64 2
  %260 = load i32* %arrayidx20.1.2.3, align 4
  %add.1.2.3 = add nsw i32 %260, %mul.1.2.3
  store i32 %add.1.2.3, i32* %arrayidx20.1.2.3, align 4
  %arrayidx11.2.2.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.2.2.3 = getelementptr inbounds [5 x i32]* %arrayidx11.2.2.3, i32 0, i64 2
  %261 = load i32* %arrayidx12.2.2.3, align 4
  %arrayidx15.2.2.3 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.2.3 = getelementptr inbounds [5 x i32]* %arrayidx15.2.2.3, i32 0, i64 2
  %262 = load i32* %arrayidx16.2.2.3, align 4
  %mul.2.2.3 = mul nsw i32 %261, %262
  %arrayidx19.2.2.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.2.2.3 = getelementptr inbounds [5 x i32]* %arrayidx19.2.2.3, i32 0, i64 2
  %263 = load i32* %arrayidx20.2.2.3, align 4
  %add.2.2.3 = add nsw i32 %263, %mul.2.2.3
  store i32 %add.2.2.3, i32* %arrayidx20.2.2.3, align 4
  %arrayidx11.3.2.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.3.2.3 = getelementptr inbounds [5 x i32]* %arrayidx11.3.2.3, i32 0, i64 3
  %264 = load i32* %arrayidx12.3.2.3, align 4
  %arrayidx15.3.2.3 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.2.3 = getelementptr inbounds [5 x i32]* %arrayidx15.3.2.3, i32 0, i64 2
  %265 = load i32* %arrayidx16.3.2.3, align 4
  %mul.3.2.3 = mul nsw i32 %264, %265
  %arrayidx19.3.2.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.3.2.3 = getelementptr inbounds [5 x i32]* %arrayidx19.3.2.3, i32 0, i64 2
  %266 = load i32* %arrayidx20.3.2.3, align 4
  %add.3.2.3 = add nsw i32 %266, %mul.3.2.3
  store i32 %add.3.2.3, i32* %arrayidx20.3.2.3, align 4
  %arrayidx11.4.2.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.4.2.3 = getelementptr inbounds [5 x i32]* %arrayidx11.4.2.3, i32 0, i64 4
  %267 = load i32* %arrayidx12.4.2.3, align 4
  %arrayidx15.4.2.3 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.2.3 = getelementptr inbounds [5 x i32]* %arrayidx15.4.2.3, i32 0, i64 2
  %268 = load i32* %arrayidx16.4.2.3, align 4
  %mul.4.2.3 = mul nsw i32 %267, %268
  %arrayidx19.4.2.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.4.2.3 = getelementptr inbounds [5 x i32]* %arrayidx19.4.2.3, i32 0, i64 2
  %269 = load i32* %arrayidx20.4.2.3, align 4
  %add.4.2.3 = add nsw i32 %269, %mul.4.2.3
  store i32 %add.4.2.3, i32* %arrayidx20.4.2.3, align 4
  %arrayidx.3.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx5.3.3 = getelementptr inbounds [5 x i32]* %arrayidx.3.3, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.3, align 4
  %arrayidx11.324.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.325.3 = getelementptr inbounds [5 x i32]* %arrayidx11.324.3, i32 0, i64 0
  %270 = load i32* %arrayidx12.325.3, align 4
  %arrayidx16.326.3 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 3
  %271 = load i32* %arrayidx16.326.3, align 4
  %mul.327.3 = mul nsw i32 %270, %271
  %arrayidx19.329.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.330.3 = getelementptr inbounds [5 x i32]* %arrayidx19.329.3, i32 0, i64 3
  %272 = load i32* %arrayidx20.330.3, align 4
  %add.331.3 = add nsw i32 %272, %mul.327.3
  store i32 %add.331.3, i32* %arrayidx20.330.3, align 4
  %arrayidx11.1.3.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.1.3.3 = getelementptr inbounds [5 x i32]* %arrayidx11.1.3.3, i32 0, i64 1
  %273 = load i32* %arrayidx12.1.3.3, align 4
  %arrayidx15.1.3.3 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.3.3 = getelementptr inbounds [5 x i32]* %arrayidx15.1.3.3, i32 0, i64 3
  %274 = load i32* %arrayidx16.1.3.3, align 4
  %mul.1.3.3 = mul nsw i32 %273, %274
  %arrayidx19.1.3.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.1.3.3 = getelementptr inbounds [5 x i32]* %arrayidx19.1.3.3, i32 0, i64 3
  %275 = load i32* %arrayidx20.1.3.3, align 4
  %add.1.3.3 = add nsw i32 %275, %mul.1.3.3
  store i32 %add.1.3.3, i32* %arrayidx20.1.3.3, align 4
  %arrayidx11.2.3.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.2.3.3 = getelementptr inbounds [5 x i32]* %arrayidx11.2.3.3, i32 0, i64 2
  %276 = load i32* %arrayidx12.2.3.3, align 4
  %arrayidx15.2.3.3 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.3.3 = getelementptr inbounds [5 x i32]* %arrayidx15.2.3.3, i32 0, i64 3
  %277 = load i32* %arrayidx16.2.3.3, align 4
  %mul.2.3.3 = mul nsw i32 %276, %277
  %arrayidx19.2.3.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.2.3.3 = getelementptr inbounds [5 x i32]* %arrayidx19.2.3.3, i32 0, i64 3
  %278 = load i32* %arrayidx20.2.3.3, align 4
  %add.2.3.3 = add nsw i32 %278, %mul.2.3.3
  store i32 %add.2.3.3, i32* %arrayidx20.2.3.3, align 4
  %arrayidx11.3.3.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.3.3.3 = getelementptr inbounds [5 x i32]* %arrayidx11.3.3.3, i32 0, i64 3
  %279 = load i32* %arrayidx12.3.3.3, align 4
  %arrayidx15.3.3.3 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.3.3 = getelementptr inbounds [5 x i32]* %arrayidx15.3.3.3, i32 0, i64 3
  %280 = load i32* %arrayidx16.3.3.3, align 4
  %mul.3.3.3 = mul nsw i32 %279, %280
  %arrayidx19.3.3.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.3.3.3 = getelementptr inbounds [5 x i32]* %arrayidx19.3.3.3, i32 0, i64 3
  %281 = load i32* %arrayidx20.3.3.3, align 4
  %add.3.3.3 = add nsw i32 %281, %mul.3.3.3
  store i32 %add.3.3.3, i32* %arrayidx20.3.3.3, align 4
  %arrayidx11.4.3.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.4.3.3 = getelementptr inbounds [5 x i32]* %arrayidx11.4.3.3, i32 0, i64 4
  %282 = load i32* %arrayidx12.4.3.3, align 4
  %arrayidx15.4.3.3 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.3.3 = getelementptr inbounds [5 x i32]* %arrayidx15.4.3.3, i32 0, i64 3
  %283 = load i32* %arrayidx16.4.3.3, align 4
  %mul.4.3.3 = mul nsw i32 %282, %283
  %arrayidx19.4.3.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.4.3.3 = getelementptr inbounds [5 x i32]* %arrayidx19.4.3.3, i32 0, i64 3
  %284 = load i32* %arrayidx20.4.3.3, align 4
  %add.4.3.3 = add nsw i32 %284, %mul.4.3.3
  store i32 %add.4.3.3, i32* %arrayidx20.4.3.3, align 4
  %arrayidx.4.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx5.4.3 = getelementptr inbounds [5 x i32]* %arrayidx.4.3, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.3, align 4
  %arrayidx11.434.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.435.3 = getelementptr inbounds [5 x i32]* %arrayidx11.434.3, i32 0, i64 0
  %285 = load i32* %arrayidx12.435.3, align 4
  %arrayidx16.436.3 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 4
  %286 = load i32* %arrayidx16.436.3, align 4
  %mul.437.3 = mul nsw i32 %285, %286
  %arrayidx19.439.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.440.3 = getelementptr inbounds [5 x i32]* %arrayidx19.439.3, i32 0, i64 4
  %287 = load i32* %arrayidx20.440.3, align 4
  %add.441.3 = add nsw i32 %287, %mul.437.3
  store i32 %add.441.3, i32* %arrayidx20.440.3, align 4
  %arrayidx11.1.4.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.1.4.3 = getelementptr inbounds [5 x i32]* %arrayidx11.1.4.3, i32 0, i64 1
  %288 = load i32* %arrayidx12.1.4.3, align 4
  %arrayidx15.1.4.3 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.4.3 = getelementptr inbounds [5 x i32]* %arrayidx15.1.4.3, i32 0, i64 4
  %289 = load i32* %arrayidx16.1.4.3, align 4
  %mul.1.4.3 = mul nsw i32 %288, %289
  %arrayidx19.1.4.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.1.4.3 = getelementptr inbounds [5 x i32]* %arrayidx19.1.4.3, i32 0, i64 4
  %290 = load i32* %arrayidx20.1.4.3, align 4
  %add.1.4.3 = add nsw i32 %290, %mul.1.4.3
  store i32 %add.1.4.3, i32* %arrayidx20.1.4.3, align 4
  %arrayidx11.2.4.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.2.4.3 = getelementptr inbounds [5 x i32]* %arrayidx11.2.4.3, i32 0, i64 2
  %291 = load i32* %arrayidx12.2.4.3, align 4
  %arrayidx15.2.4.3 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.4.3 = getelementptr inbounds [5 x i32]* %arrayidx15.2.4.3, i32 0, i64 4
  %292 = load i32* %arrayidx16.2.4.3, align 4
  %mul.2.4.3 = mul nsw i32 %291, %292
  %arrayidx19.2.4.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.2.4.3 = getelementptr inbounds [5 x i32]* %arrayidx19.2.4.3, i32 0, i64 4
  %293 = load i32* %arrayidx20.2.4.3, align 4
  %add.2.4.3 = add nsw i32 %293, %mul.2.4.3
  store i32 %add.2.4.3, i32* %arrayidx20.2.4.3, align 4
  %arrayidx11.3.4.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.3.4.3 = getelementptr inbounds [5 x i32]* %arrayidx11.3.4.3, i32 0, i64 3
  %294 = load i32* %arrayidx12.3.4.3, align 4
  %arrayidx15.3.4.3 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.4.3 = getelementptr inbounds [5 x i32]* %arrayidx15.3.4.3, i32 0, i64 4
  %295 = load i32* %arrayidx16.3.4.3, align 4
  %mul.3.4.3 = mul nsw i32 %294, %295
  %arrayidx19.3.4.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.3.4.3 = getelementptr inbounds [5 x i32]* %arrayidx19.3.4.3, i32 0, i64 4
  %296 = load i32* %arrayidx20.3.4.3, align 4
  %add.3.4.3 = add nsw i32 %296, %mul.3.4.3
  store i32 %add.3.4.3, i32* %arrayidx20.3.4.3, align 4
  %arrayidx11.4.4.3 = getelementptr inbounds [5 x i32]* %a, i64 3
  %arrayidx12.4.4.3 = getelementptr inbounds [5 x i32]* %arrayidx11.4.4.3, i32 0, i64 4
  %297 = load i32* %arrayidx12.4.4.3, align 4
  %arrayidx15.4.4.3 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.4.3 = getelementptr inbounds [5 x i32]* %arrayidx15.4.4.3, i32 0, i64 4
  %298 = load i32* %arrayidx16.4.4.3, align 4
  %mul.4.4.3 = mul nsw i32 %297, %298
  %arrayidx19.4.4.3 = getelementptr inbounds [5 x i32]* %c, i64 3
  %arrayidx20.4.4.3 = getelementptr inbounds [5 x i32]* %arrayidx19.4.4.3, i32 0, i64 4
  %299 = load i32* %arrayidx20.4.4.3, align 4
  %add.4.4.3 = add nsw i32 %299, %mul.4.4.3
  store i32 %add.4.4.3, i32* %arrayidx20.4.4.3, align 4
  %arrayidx.4188 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx5.4189 = getelementptr inbounds [5 x i32]* %arrayidx.4188, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.4189, align 4
  %arrayidx11.4190 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.4191 = getelementptr inbounds [5 x i32]* %arrayidx11.4190, i32 0, i64 0
  %300 = load i32* %arrayidx12.4191, align 4
  %arrayidx16.4192 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 0
  %301 = load i32* %arrayidx16.4192, align 4
  %mul.4193 = mul nsw i32 %300, %301
  %arrayidx19.4194 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.4195 = getelementptr inbounds [5 x i32]* %arrayidx19.4194, i32 0, i64 0
  %302 = load i32* %arrayidx20.4195, align 4
  %add.4196 = add nsw i32 %302, %mul.4193
  store i32 %add.4196, i32* %arrayidx20.4195, align 4
  %arrayidx11.1.4198 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.1.4199 = getelementptr inbounds [5 x i32]* %arrayidx11.1.4198, i32 0, i64 1
  %303 = load i32* %arrayidx12.1.4199, align 4
  %arrayidx15.1.4200 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.4201 = getelementptr inbounds [5 x i32]* %arrayidx15.1.4200, i32 0, i64 0
  %304 = load i32* %arrayidx16.1.4201, align 4
  %mul.1.4202 = mul nsw i32 %303, %304
  %arrayidx19.1.4203 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.1.4204 = getelementptr inbounds [5 x i32]* %arrayidx19.1.4203, i32 0, i64 0
  %305 = load i32* %arrayidx20.1.4204, align 4
  %add.1.4205 = add nsw i32 %305, %mul.1.4202
  store i32 %add.1.4205, i32* %arrayidx20.1.4204, align 4
  %arrayidx11.2.4207 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.2.4208 = getelementptr inbounds [5 x i32]* %arrayidx11.2.4207, i32 0, i64 2
  %306 = load i32* %arrayidx12.2.4208, align 4
  %arrayidx15.2.4209 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.4210 = getelementptr inbounds [5 x i32]* %arrayidx15.2.4209, i32 0, i64 0
  %307 = load i32* %arrayidx16.2.4210, align 4
  %mul.2.4211 = mul nsw i32 %306, %307
  %arrayidx19.2.4212 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.2.4213 = getelementptr inbounds [5 x i32]* %arrayidx19.2.4212, i32 0, i64 0
  %308 = load i32* %arrayidx20.2.4213, align 4
  %add.2.4214 = add nsw i32 %308, %mul.2.4211
  store i32 %add.2.4214, i32* %arrayidx20.2.4213, align 4
  %arrayidx11.3.4216 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.3.4217 = getelementptr inbounds [5 x i32]* %arrayidx11.3.4216, i32 0, i64 3
  %309 = load i32* %arrayidx12.3.4217, align 4
  %arrayidx15.3.4218 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.4219 = getelementptr inbounds [5 x i32]* %arrayidx15.3.4218, i32 0, i64 0
  %310 = load i32* %arrayidx16.3.4219, align 4
  %mul.3.4220 = mul nsw i32 %309, %310
  %arrayidx19.3.4221 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.3.4222 = getelementptr inbounds [5 x i32]* %arrayidx19.3.4221, i32 0, i64 0
  %311 = load i32* %arrayidx20.3.4222, align 4
  %add.3.4223 = add nsw i32 %311, %mul.3.4220
  store i32 %add.3.4223, i32* %arrayidx20.3.4222, align 4
  %arrayidx11.4.4225 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.4.4226 = getelementptr inbounds [5 x i32]* %arrayidx11.4.4225, i32 0, i64 4
  %312 = load i32* %arrayidx12.4.4226, align 4
  %arrayidx15.4.4227 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.4228 = getelementptr inbounds [5 x i32]* %arrayidx15.4.4227, i32 0, i64 0
  %313 = load i32* %arrayidx16.4.4228, align 4
  %mul.4.4229 = mul nsw i32 %312, %313
  %arrayidx19.4.4230 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.4.4231 = getelementptr inbounds [5 x i32]* %arrayidx19.4.4230, i32 0, i64 0
  %314 = load i32* %arrayidx20.4.4231, align 4
  %add.4.4232 = add nsw i32 %314, %mul.4.4229
  store i32 %add.4.4232, i32* %arrayidx20.4.4231, align 4
  %arrayidx.1.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx5.1.4 = getelementptr inbounds [5 x i32]* %arrayidx.1.4, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.4, align 4
  %arrayidx11.14.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.15.4 = getelementptr inbounds [5 x i32]* %arrayidx11.14.4, i32 0, i64 0
  %315 = load i32* %arrayidx12.15.4, align 4
  %arrayidx16.16.4 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 1
  %316 = load i32* %arrayidx16.16.4, align 4
  %mul.17.4 = mul nsw i32 %315, %316
  %arrayidx19.19.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.110.4 = getelementptr inbounds [5 x i32]* %arrayidx19.19.4, i32 0, i64 1
  %317 = load i32* %arrayidx20.110.4, align 4
  %add.111.4 = add nsw i32 %317, %mul.17.4
  store i32 %add.111.4, i32* %arrayidx20.110.4, align 4
  %arrayidx11.1.1.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.1.1.4 = getelementptr inbounds [5 x i32]* %arrayidx11.1.1.4, i32 0, i64 1
  %318 = load i32* %arrayidx12.1.1.4, align 4
  %arrayidx15.1.1.4 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.1.4 = getelementptr inbounds [5 x i32]* %arrayidx15.1.1.4, i32 0, i64 1
  %319 = load i32* %arrayidx16.1.1.4, align 4
  %mul.1.1.4 = mul nsw i32 %318, %319
  %arrayidx19.1.1.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.1.1.4 = getelementptr inbounds [5 x i32]* %arrayidx19.1.1.4, i32 0, i64 1
  %320 = load i32* %arrayidx20.1.1.4, align 4
  %add.1.1.4 = add nsw i32 %320, %mul.1.1.4
  store i32 %add.1.1.4, i32* %arrayidx20.1.1.4, align 4
  %arrayidx11.2.1.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.2.1.4 = getelementptr inbounds [5 x i32]* %arrayidx11.2.1.4, i32 0, i64 2
  %321 = load i32* %arrayidx12.2.1.4, align 4
  %arrayidx15.2.1.4 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.1.4 = getelementptr inbounds [5 x i32]* %arrayidx15.2.1.4, i32 0, i64 1
  %322 = load i32* %arrayidx16.2.1.4, align 4
  %mul.2.1.4 = mul nsw i32 %321, %322
  %arrayidx19.2.1.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.2.1.4 = getelementptr inbounds [5 x i32]* %arrayidx19.2.1.4, i32 0, i64 1
  %323 = load i32* %arrayidx20.2.1.4, align 4
  %add.2.1.4 = add nsw i32 %323, %mul.2.1.4
  store i32 %add.2.1.4, i32* %arrayidx20.2.1.4, align 4
  %arrayidx11.3.1.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.3.1.4 = getelementptr inbounds [5 x i32]* %arrayidx11.3.1.4, i32 0, i64 3
  %324 = load i32* %arrayidx12.3.1.4, align 4
  %arrayidx15.3.1.4 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.1.4 = getelementptr inbounds [5 x i32]* %arrayidx15.3.1.4, i32 0, i64 1
  %325 = load i32* %arrayidx16.3.1.4, align 4
  %mul.3.1.4 = mul nsw i32 %324, %325
  %arrayidx19.3.1.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.3.1.4 = getelementptr inbounds [5 x i32]* %arrayidx19.3.1.4, i32 0, i64 1
  %326 = load i32* %arrayidx20.3.1.4, align 4
  %add.3.1.4 = add nsw i32 %326, %mul.3.1.4
  store i32 %add.3.1.4, i32* %arrayidx20.3.1.4, align 4
  %arrayidx11.4.1.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.4.1.4 = getelementptr inbounds [5 x i32]* %arrayidx11.4.1.4, i32 0, i64 4
  %327 = load i32* %arrayidx12.4.1.4, align 4
  %arrayidx15.4.1.4 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.1.4 = getelementptr inbounds [5 x i32]* %arrayidx15.4.1.4, i32 0, i64 1
  %328 = load i32* %arrayidx16.4.1.4, align 4
  %mul.4.1.4 = mul nsw i32 %327, %328
  %arrayidx19.4.1.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.4.1.4 = getelementptr inbounds [5 x i32]* %arrayidx19.4.1.4, i32 0, i64 1
  %329 = load i32* %arrayidx20.4.1.4, align 4
  %add.4.1.4 = add nsw i32 %329, %mul.4.1.4
  store i32 %add.4.1.4, i32* %arrayidx20.4.1.4, align 4
  %arrayidx.2.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx5.2.4 = getelementptr inbounds [5 x i32]* %arrayidx.2.4, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.4, align 4
  %arrayidx11.214.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.215.4 = getelementptr inbounds [5 x i32]* %arrayidx11.214.4, i32 0, i64 0
  %330 = load i32* %arrayidx12.215.4, align 4
  %arrayidx16.216.4 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 2
  %331 = load i32* %arrayidx16.216.4, align 4
  %mul.217.4 = mul nsw i32 %330, %331
  %arrayidx19.219.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.220.4 = getelementptr inbounds [5 x i32]* %arrayidx19.219.4, i32 0, i64 2
  %332 = load i32* %arrayidx20.220.4, align 4
  %add.221.4 = add nsw i32 %332, %mul.217.4
  store i32 %add.221.4, i32* %arrayidx20.220.4, align 4
  %arrayidx11.1.2.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.1.2.4 = getelementptr inbounds [5 x i32]* %arrayidx11.1.2.4, i32 0, i64 1
  %333 = load i32* %arrayidx12.1.2.4, align 4
  %arrayidx15.1.2.4 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.2.4 = getelementptr inbounds [5 x i32]* %arrayidx15.1.2.4, i32 0, i64 2
  %334 = load i32* %arrayidx16.1.2.4, align 4
  %mul.1.2.4 = mul nsw i32 %333, %334
  %arrayidx19.1.2.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.1.2.4 = getelementptr inbounds [5 x i32]* %arrayidx19.1.2.4, i32 0, i64 2
  %335 = load i32* %arrayidx20.1.2.4, align 4
  %add.1.2.4 = add nsw i32 %335, %mul.1.2.4
  store i32 %add.1.2.4, i32* %arrayidx20.1.2.4, align 4
  %arrayidx11.2.2.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.2.2.4 = getelementptr inbounds [5 x i32]* %arrayidx11.2.2.4, i32 0, i64 2
  %336 = load i32* %arrayidx12.2.2.4, align 4
  %arrayidx15.2.2.4 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.2.4 = getelementptr inbounds [5 x i32]* %arrayidx15.2.2.4, i32 0, i64 2
  %337 = load i32* %arrayidx16.2.2.4, align 4
  %mul.2.2.4 = mul nsw i32 %336, %337
  %arrayidx19.2.2.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.2.2.4 = getelementptr inbounds [5 x i32]* %arrayidx19.2.2.4, i32 0, i64 2
  %338 = load i32* %arrayidx20.2.2.4, align 4
  %add.2.2.4 = add nsw i32 %338, %mul.2.2.4
  store i32 %add.2.2.4, i32* %arrayidx20.2.2.4, align 4
  %arrayidx11.3.2.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.3.2.4 = getelementptr inbounds [5 x i32]* %arrayidx11.3.2.4, i32 0, i64 3
  %339 = load i32* %arrayidx12.3.2.4, align 4
  %arrayidx15.3.2.4 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.2.4 = getelementptr inbounds [5 x i32]* %arrayidx15.3.2.4, i32 0, i64 2
  %340 = load i32* %arrayidx16.3.2.4, align 4
  %mul.3.2.4 = mul nsw i32 %339, %340
  %arrayidx19.3.2.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.3.2.4 = getelementptr inbounds [5 x i32]* %arrayidx19.3.2.4, i32 0, i64 2
  %341 = load i32* %arrayidx20.3.2.4, align 4
  %add.3.2.4 = add nsw i32 %341, %mul.3.2.4
  store i32 %add.3.2.4, i32* %arrayidx20.3.2.4, align 4
  %arrayidx11.4.2.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.4.2.4 = getelementptr inbounds [5 x i32]* %arrayidx11.4.2.4, i32 0, i64 4
  %342 = load i32* %arrayidx12.4.2.4, align 4
  %arrayidx15.4.2.4 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.2.4 = getelementptr inbounds [5 x i32]* %arrayidx15.4.2.4, i32 0, i64 2
  %343 = load i32* %arrayidx16.4.2.4, align 4
  %mul.4.2.4 = mul nsw i32 %342, %343
  %arrayidx19.4.2.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.4.2.4 = getelementptr inbounds [5 x i32]* %arrayidx19.4.2.4, i32 0, i64 2
  %344 = load i32* %arrayidx20.4.2.4, align 4
  %add.4.2.4 = add nsw i32 %344, %mul.4.2.4
  store i32 %add.4.2.4, i32* %arrayidx20.4.2.4, align 4
  %arrayidx.3.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx5.3.4 = getelementptr inbounds [5 x i32]* %arrayidx.3.4, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.4, align 4
  %arrayidx11.324.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.325.4 = getelementptr inbounds [5 x i32]* %arrayidx11.324.4, i32 0, i64 0
  %345 = load i32* %arrayidx12.325.4, align 4
  %arrayidx16.326.4 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 3
  %346 = load i32* %arrayidx16.326.4, align 4
  %mul.327.4 = mul nsw i32 %345, %346
  %arrayidx19.329.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.330.4 = getelementptr inbounds [5 x i32]* %arrayidx19.329.4, i32 0, i64 3
  %347 = load i32* %arrayidx20.330.4, align 4
  %add.331.4 = add nsw i32 %347, %mul.327.4
  store i32 %add.331.4, i32* %arrayidx20.330.4, align 4
  %arrayidx11.1.3.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.1.3.4 = getelementptr inbounds [5 x i32]* %arrayidx11.1.3.4, i32 0, i64 1
  %348 = load i32* %arrayidx12.1.3.4, align 4
  %arrayidx15.1.3.4 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.3.4 = getelementptr inbounds [5 x i32]* %arrayidx15.1.3.4, i32 0, i64 3
  %349 = load i32* %arrayidx16.1.3.4, align 4
  %mul.1.3.4 = mul nsw i32 %348, %349
  %arrayidx19.1.3.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.1.3.4 = getelementptr inbounds [5 x i32]* %arrayidx19.1.3.4, i32 0, i64 3
  %350 = load i32* %arrayidx20.1.3.4, align 4
  %add.1.3.4 = add nsw i32 %350, %mul.1.3.4
  store i32 %add.1.3.4, i32* %arrayidx20.1.3.4, align 4
  %arrayidx11.2.3.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.2.3.4 = getelementptr inbounds [5 x i32]* %arrayidx11.2.3.4, i32 0, i64 2
  %351 = load i32* %arrayidx12.2.3.4, align 4
  %arrayidx15.2.3.4 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.3.4 = getelementptr inbounds [5 x i32]* %arrayidx15.2.3.4, i32 0, i64 3
  %352 = load i32* %arrayidx16.2.3.4, align 4
  %mul.2.3.4 = mul nsw i32 %351, %352
  %arrayidx19.2.3.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.2.3.4 = getelementptr inbounds [5 x i32]* %arrayidx19.2.3.4, i32 0, i64 3
  %353 = load i32* %arrayidx20.2.3.4, align 4
  %add.2.3.4 = add nsw i32 %353, %mul.2.3.4
  store i32 %add.2.3.4, i32* %arrayidx20.2.3.4, align 4
  %arrayidx11.3.3.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.3.3.4 = getelementptr inbounds [5 x i32]* %arrayidx11.3.3.4, i32 0, i64 3
  %354 = load i32* %arrayidx12.3.3.4, align 4
  %arrayidx15.3.3.4 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.3.4 = getelementptr inbounds [5 x i32]* %arrayidx15.3.3.4, i32 0, i64 3
  %355 = load i32* %arrayidx16.3.3.4, align 4
  %mul.3.3.4 = mul nsw i32 %354, %355
  %arrayidx19.3.3.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.3.3.4 = getelementptr inbounds [5 x i32]* %arrayidx19.3.3.4, i32 0, i64 3
  %356 = load i32* %arrayidx20.3.3.4, align 4
  %add.3.3.4 = add nsw i32 %356, %mul.3.3.4
  store i32 %add.3.3.4, i32* %arrayidx20.3.3.4, align 4
  %arrayidx11.4.3.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.4.3.4 = getelementptr inbounds [5 x i32]* %arrayidx11.4.3.4, i32 0, i64 4
  %357 = load i32* %arrayidx12.4.3.4, align 4
  %arrayidx15.4.3.4 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.3.4 = getelementptr inbounds [5 x i32]* %arrayidx15.4.3.4, i32 0, i64 3
  %358 = load i32* %arrayidx16.4.3.4, align 4
  %mul.4.3.4 = mul nsw i32 %357, %358
  %arrayidx19.4.3.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.4.3.4 = getelementptr inbounds [5 x i32]* %arrayidx19.4.3.4, i32 0, i64 3
  %359 = load i32* %arrayidx20.4.3.4, align 4
  %add.4.3.4 = add nsw i32 %359, %mul.4.3.4
  store i32 %add.4.3.4, i32* %arrayidx20.4.3.4, align 4
  %arrayidx.4.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx5.4.4 = getelementptr inbounds [5 x i32]* %arrayidx.4.4, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.4, align 4
  %arrayidx11.434.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.435.4 = getelementptr inbounds [5 x i32]* %arrayidx11.434.4, i32 0, i64 0
  %360 = load i32* %arrayidx12.435.4, align 4
  %arrayidx16.436.4 = getelementptr inbounds [5 x i32]* %b, i32 0, i64 4
  %361 = load i32* %arrayidx16.436.4, align 4
  %mul.437.4 = mul nsw i32 %360, %361
  %arrayidx19.439.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.440.4 = getelementptr inbounds [5 x i32]* %arrayidx19.439.4, i32 0, i64 4
  %362 = load i32* %arrayidx20.440.4, align 4
  %add.441.4 = add nsw i32 %362, %mul.437.4
  store i32 %add.441.4, i32* %arrayidx20.440.4, align 4
  %arrayidx11.1.4.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.1.4.4 = getelementptr inbounds [5 x i32]* %arrayidx11.1.4.4, i32 0, i64 1
  %363 = load i32* %arrayidx12.1.4.4, align 4
  %arrayidx15.1.4.4 = getelementptr inbounds [5 x i32]* %b, i64 1
  %arrayidx16.1.4.4 = getelementptr inbounds [5 x i32]* %arrayidx15.1.4.4, i32 0, i64 4
  %364 = load i32* %arrayidx16.1.4.4, align 4
  %mul.1.4.4 = mul nsw i32 %363, %364
  %arrayidx19.1.4.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.1.4.4 = getelementptr inbounds [5 x i32]* %arrayidx19.1.4.4, i32 0, i64 4
  %365 = load i32* %arrayidx20.1.4.4, align 4
  %add.1.4.4 = add nsw i32 %365, %mul.1.4.4
  store i32 %add.1.4.4, i32* %arrayidx20.1.4.4, align 4
  %arrayidx11.2.4.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.2.4.4 = getelementptr inbounds [5 x i32]* %arrayidx11.2.4.4, i32 0, i64 2
  %366 = load i32* %arrayidx12.2.4.4, align 4
  %arrayidx15.2.4.4 = getelementptr inbounds [5 x i32]* %b, i64 2
  %arrayidx16.2.4.4 = getelementptr inbounds [5 x i32]* %arrayidx15.2.4.4, i32 0, i64 4
  %367 = load i32* %arrayidx16.2.4.4, align 4
  %mul.2.4.4 = mul nsw i32 %366, %367
  %arrayidx19.2.4.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.2.4.4 = getelementptr inbounds [5 x i32]* %arrayidx19.2.4.4, i32 0, i64 4
  %368 = load i32* %arrayidx20.2.4.4, align 4
  %add.2.4.4 = add nsw i32 %368, %mul.2.4.4
  store i32 %add.2.4.4, i32* %arrayidx20.2.4.4, align 4
  %arrayidx11.3.4.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.3.4.4 = getelementptr inbounds [5 x i32]* %arrayidx11.3.4.4, i32 0, i64 3
  %369 = load i32* %arrayidx12.3.4.4, align 4
  %arrayidx15.3.4.4 = getelementptr inbounds [5 x i32]* %b, i64 3
  %arrayidx16.3.4.4 = getelementptr inbounds [5 x i32]* %arrayidx15.3.4.4, i32 0, i64 4
  %370 = load i32* %arrayidx16.3.4.4, align 4
  %mul.3.4.4 = mul nsw i32 %369, %370
  %arrayidx19.3.4.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.3.4.4 = getelementptr inbounds [5 x i32]* %arrayidx19.3.4.4, i32 0, i64 4
  %371 = load i32* %arrayidx20.3.4.4, align 4
  %add.3.4.4 = add nsw i32 %371, %mul.3.4.4
  store i32 %add.3.4.4, i32* %arrayidx20.3.4.4, align 4
  %arrayidx11.4.4.4 = getelementptr inbounds [5 x i32]* %a, i64 4
  %arrayidx12.4.4.4 = getelementptr inbounds [5 x i32]* %arrayidx11.4.4.4, i32 0, i64 4
  %372 = load i32* %arrayidx12.4.4.4, align 4
  %arrayidx15.4.4.4 = getelementptr inbounds [5 x i32]* %b, i64 4
  %arrayidx16.4.4.4 = getelementptr inbounds [5 x i32]* %arrayidx15.4.4.4, i32 0, i64 4
  %373 = load i32* %arrayidx16.4.4.4, align 4
  %mul.4.4.4 = mul nsw i32 %372, %373
  %arrayidx19.4.4.4 = getelementptr inbounds [5 x i32]* %c, i64 4
  %arrayidx20.4.4.4 = getelementptr inbounds [5 x i32]* %arrayidx19.4.4.4, i32 0, i64 4
  %374 = load i32* %arrayidx20.4.4.4, align 4
  %add.4.4.4 = add nsw i32 %374, %mul.4.4.4
  store i32 %add.4.4.4, i32* %arrayidx20.4.4.4, align 4
  ret void
}
