; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [10 x [10 x i32]] zeroinitializer, align 16

define void @_Z7mm10x10PA10_iS0_iS0_([10 x i32]* %a, [10 x i32]* %b, i32 %init, [10 x i32]* %c) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %arrayidx12.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  br label %for.inc.1

for.inc21:                                        ; preds = %for.inc.9
  %arrayidx5.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  br label %for.body8.1

for.inc24:                                        ; preds = %for.inc21.9
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx12.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %6 = load i32* %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2, i32 0, i64 0
  %7 = load i32* %arrayidx16.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %arrayidx20.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %8 = load i32* %arrayidx20.2, align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* %arrayidx20.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx12.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %9 = load i32* %arrayidx12.3, align 4
  %arrayidx15.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3, i32 0, i64 0
  %10 = load i32* %arrayidx16.3, align 4
  %mul.3 = mul nsw i32 %9, %10
  %arrayidx20.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %11 = load i32* %arrayidx20.3, align 4
  %add.3 = add nsw i32 %11, %mul.3
  store i32 %add.3, i32* %arrayidx20.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx12.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %12 = load i32* %arrayidx12.4, align 4
  %arrayidx15.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4, i32 0, i64 0
  %13 = load i32* %arrayidx16.4, align 4
  %mul.4 = mul nsw i32 %12, %13
  %arrayidx20.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %14 = load i32* %arrayidx20.4, align 4
  %add.4 = add nsw i32 %14, %mul.4
  store i32 %add.4, i32* %arrayidx20.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx12.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %15 = load i32* %arrayidx12.5, align 4
  %arrayidx15.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5, i32 0, i64 0
  %16 = load i32* %arrayidx16.5, align 4
  %mul.5 = mul nsw i32 %15, %16
  %arrayidx20.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %17 = load i32* %arrayidx20.5, align 4
  %add.5 = add nsw i32 %17, %mul.5
  store i32 %add.5, i32* %arrayidx20.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx12.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %18 = load i32* %arrayidx12.6, align 4
  %arrayidx15.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6, i32 0, i64 0
  %19 = load i32* %arrayidx16.6, align 4
  %mul.6 = mul nsw i32 %18, %19
  %arrayidx20.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %20 = load i32* %arrayidx20.6, align 4
  %add.6 = add nsw i32 %20, %mul.6
  store i32 %add.6, i32* %arrayidx20.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx12.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %21 = load i32* %arrayidx12.7, align 4
  %arrayidx15.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7, i32 0, i64 0
  %22 = load i32* %arrayidx16.7, align 4
  %mul.7 = mul nsw i32 %21, %22
  %arrayidx20.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %23 = load i32* %arrayidx20.7, align 4
  %add.7 = add nsw i32 %23, %mul.7
  store i32 %add.7, i32* %arrayidx20.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx12.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %24 = load i32* %arrayidx12.8, align 4
  %arrayidx15.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8, i32 0, i64 0
  %25 = load i32* %arrayidx16.8, align 4
  %mul.8 = mul nsw i32 %24, %25
  %arrayidx20.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %26 = load i32* %arrayidx20.8, align 4
  %add.8 = add nsw i32 %26, %mul.8
  store i32 %add.8, i32* %arrayidx20.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx12.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %27 = load i32* %arrayidx12.9, align 4
  %arrayidx15.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9, i32 0, i64 0
  %28 = load i32* %arrayidx16.9, align 4
  %mul.9 = mul nsw i32 %27, %28
  %arrayidx20.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 0
  %29 = load i32* %arrayidx20.9, align 4
  %add.9 = add nsw i32 %29, %mul.9
  store i32 %add.9, i32* %arrayidx20.9, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.inc.8
  br label %for.inc21

for.body8.1:                                      ; preds = %for.inc21
  %arrayidx12.15 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %30 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %31 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %30, %31
  %arrayidx20.110 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %32 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %32, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body8.1
  %arrayidx12.1.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %33 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %34 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %33, %34
  %arrayidx20.1.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %35 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %35, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.112
  %arrayidx12.2.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %36 = load i32* %arrayidx12.2.1, align 4
  %arrayidx15.2.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1, i32 0, i64 1
  %37 = load i32* %arrayidx16.2.1, align 4
  %mul.2.1 = mul nsw i32 %36, %37
  %arrayidx20.2.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %38 = load i32* %arrayidx20.2.1, align 4
  %add.2.1 = add nsw i32 %38, %mul.2.1
  store i32 %add.2.1, i32* %arrayidx20.2.1, align 4
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %arrayidx12.3.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %39 = load i32* %arrayidx12.3.1, align 4
  %arrayidx15.3.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1, i32 0, i64 1
  %40 = load i32* %arrayidx16.3.1, align 4
  %mul.3.1 = mul nsw i32 %39, %40
  %arrayidx20.3.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %41 = load i32* %arrayidx20.3.1, align 4
  %add.3.1 = add nsw i32 %41, %mul.3.1
  store i32 %add.3.1, i32* %arrayidx20.3.1, align 4
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %for.inc.2.1
  %arrayidx12.4.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %42 = load i32* %arrayidx12.4.1, align 4
  %arrayidx15.4.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1, i32 0, i64 1
  %43 = load i32* %arrayidx16.4.1, align 4
  %mul.4.1 = mul nsw i32 %42, %43
  %arrayidx20.4.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %44 = load i32* %arrayidx20.4.1, align 4
  %add.4.1 = add nsw i32 %44, %mul.4.1
  store i32 %add.4.1, i32* %arrayidx20.4.1, align 4
  br label %for.inc.4.1

for.inc.4.1:                                      ; preds = %for.inc.3.1
  %arrayidx12.5.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %45 = load i32* %arrayidx12.5.1, align 4
  %arrayidx15.5.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1, i32 0, i64 1
  %46 = load i32* %arrayidx16.5.1, align 4
  %mul.5.1 = mul nsw i32 %45, %46
  %arrayidx20.5.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %47 = load i32* %arrayidx20.5.1, align 4
  %add.5.1 = add nsw i32 %47, %mul.5.1
  store i32 %add.5.1, i32* %arrayidx20.5.1, align 4
  br label %for.inc.5.1

for.inc.5.1:                                      ; preds = %for.inc.4.1
  %arrayidx12.6.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %48 = load i32* %arrayidx12.6.1, align 4
  %arrayidx15.6.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1, i32 0, i64 1
  %49 = load i32* %arrayidx16.6.1, align 4
  %mul.6.1 = mul nsw i32 %48, %49
  %arrayidx20.6.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %50 = load i32* %arrayidx20.6.1, align 4
  %add.6.1 = add nsw i32 %50, %mul.6.1
  store i32 %add.6.1, i32* %arrayidx20.6.1, align 4
  br label %for.inc.6.1

for.inc.6.1:                                      ; preds = %for.inc.5.1
  %arrayidx12.7.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %51 = load i32* %arrayidx12.7.1, align 4
  %arrayidx15.7.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1, i32 0, i64 1
  %52 = load i32* %arrayidx16.7.1, align 4
  %mul.7.1 = mul nsw i32 %51, %52
  %arrayidx20.7.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %53 = load i32* %arrayidx20.7.1, align 4
  %add.7.1 = add nsw i32 %53, %mul.7.1
  store i32 %add.7.1, i32* %arrayidx20.7.1, align 4
  br label %for.inc.7.1

for.inc.7.1:                                      ; preds = %for.inc.6.1
  %arrayidx12.8.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %54 = load i32* %arrayidx12.8.1, align 4
  %arrayidx15.8.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1, i32 0, i64 1
  %55 = load i32* %arrayidx16.8.1, align 4
  %mul.8.1 = mul nsw i32 %54, %55
  %arrayidx20.8.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %56 = load i32* %arrayidx20.8.1, align 4
  %add.8.1 = add nsw i32 %56, %mul.8.1
  store i32 %add.8.1, i32* %arrayidx20.8.1, align 4
  br label %for.inc.8.1

for.inc.8.1:                                      ; preds = %for.inc.7.1
  %arrayidx12.9.1 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %57 = load i32* %arrayidx12.9.1, align 4
  %arrayidx15.9.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1, i32 0, i64 1
  %58 = load i32* %arrayidx16.9.1, align 4
  %mul.9.1 = mul nsw i32 %57, %58
  %arrayidx20.9.1 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 1
  %59 = load i32* %arrayidx20.9.1, align 4
  %add.9.1 = add nsw i32 %59, %mul.9.1
  store i32 %add.9.1, i32* %arrayidx20.9.1, align 4
  br label %for.inc.9.1

for.inc.9.1:                                      ; preds = %for.inc.8.1
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.inc.9.1
  %arrayidx5.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc21.1
  %arrayidx12.215 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %60 = load i32* %arrayidx12.215, align 4
  %arrayidx16.216 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %61 = load i32* %arrayidx16.216, align 4
  %mul.217 = mul nsw i32 %60, %61
  %arrayidx20.220 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %62 = load i32* %arrayidx20.220, align 4
  %add.221 = add nsw i32 %62, %mul.217
  store i32 %add.221, i32* %arrayidx20.220, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body8.2
  %arrayidx12.1.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %63 = load i32* %arrayidx12.1.2, align 4
  %arrayidx15.1.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2, i32 0, i64 2
  %64 = load i32* %arrayidx16.1.2, align 4
  %mul.1.2 = mul nsw i32 %63, %64
  %arrayidx20.1.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %65 = load i32* %arrayidx20.1.2, align 4
  %add.1.2 = add nsw i32 %65, %mul.1.2
  store i32 %add.1.2, i32* %arrayidx20.1.2, align 4
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.222
  %arrayidx12.2.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %66 = load i32* %arrayidx12.2.2, align 4
  %arrayidx15.2.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2, i32 0, i64 2
  %67 = load i32* %arrayidx16.2.2, align 4
  %mul.2.2 = mul nsw i32 %66, %67
  %arrayidx20.2.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %68 = load i32* %arrayidx20.2.2, align 4
  %add.2.2 = add nsw i32 %68, %mul.2.2
  store i32 %add.2.2, i32* %arrayidx20.2.2, align 4
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  %arrayidx12.3.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %69 = load i32* %arrayidx12.3.2, align 4
  %arrayidx15.3.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2, i32 0, i64 2
  %70 = load i32* %arrayidx16.3.2, align 4
  %mul.3.2 = mul nsw i32 %69, %70
  %arrayidx20.3.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %71 = load i32* %arrayidx20.3.2, align 4
  %add.3.2 = add nsw i32 %71, %mul.3.2
  store i32 %add.3.2, i32* %arrayidx20.3.2, align 4
  br label %for.inc.3.2

for.inc.3.2:                                      ; preds = %for.inc.2.2
  %arrayidx12.4.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %72 = load i32* %arrayidx12.4.2, align 4
  %arrayidx15.4.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2, i32 0, i64 2
  %73 = load i32* %arrayidx16.4.2, align 4
  %mul.4.2 = mul nsw i32 %72, %73
  %arrayidx20.4.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %74 = load i32* %arrayidx20.4.2, align 4
  %add.4.2 = add nsw i32 %74, %mul.4.2
  store i32 %add.4.2, i32* %arrayidx20.4.2, align 4
  br label %for.inc.4.2

for.inc.4.2:                                      ; preds = %for.inc.3.2
  %arrayidx12.5.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %75 = load i32* %arrayidx12.5.2, align 4
  %arrayidx15.5.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2, i32 0, i64 2
  %76 = load i32* %arrayidx16.5.2, align 4
  %mul.5.2 = mul nsw i32 %75, %76
  %arrayidx20.5.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %77 = load i32* %arrayidx20.5.2, align 4
  %add.5.2 = add nsw i32 %77, %mul.5.2
  store i32 %add.5.2, i32* %arrayidx20.5.2, align 4
  br label %for.inc.5.2

for.inc.5.2:                                      ; preds = %for.inc.4.2
  %arrayidx12.6.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %78 = load i32* %arrayidx12.6.2, align 4
  %arrayidx15.6.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2, i32 0, i64 2
  %79 = load i32* %arrayidx16.6.2, align 4
  %mul.6.2 = mul nsw i32 %78, %79
  %arrayidx20.6.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %80 = load i32* %arrayidx20.6.2, align 4
  %add.6.2 = add nsw i32 %80, %mul.6.2
  store i32 %add.6.2, i32* %arrayidx20.6.2, align 4
  br label %for.inc.6.2

for.inc.6.2:                                      ; preds = %for.inc.5.2
  %arrayidx12.7.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %81 = load i32* %arrayidx12.7.2, align 4
  %arrayidx15.7.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2, i32 0, i64 2
  %82 = load i32* %arrayidx16.7.2, align 4
  %mul.7.2 = mul nsw i32 %81, %82
  %arrayidx20.7.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %83 = load i32* %arrayidx20.7.2, align 4
  %add.7.2 = add nsw i32 %83, %mul.7.2
  store i32 %add.7.2, i32* %arrayidx20.7.2, align 4
  br label %for.inc.7.2

for.inc.7.2:                                      ; preds = %for.inc.6.2
  %arrayidx12.8.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %84 = load i32* %arrayidx12.8.2, align 4
  %arrayidx15.8.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2, i32 0, i64 2
  %85 = load i32* %arrayidx16.8.2, align 4
  %mul.8.2 = mul nsw i32 %84, %85
  %arrayidx20.8.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %86 = load i32* %arrayidx20.8.2, align 4
  %add.8.2 = add nsw i32 %86, %mul.8.2
  store i32 %add.8.2, i32* %arrayidx20.8.2, align 4
  br label %for.inc.8.2

for.inc.8.2:                                      ; preds = %for.inc.7.2
  %arrayidx12.9.2 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %87 = load i32* %arrayidx12.9.2, align 4
  %arrayidx15.9.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2, i32 0, i64 2
  %88 = load i32* %arrayidx16.9.2, align 4
  %mul.9.2 = mul nsw i32 %87, %88
  %arrayidx20.9.2 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 2
  %89 = load i32* %arrayidx20.9.2, align 4
  %add.9.2 = add nsw i32 %89, %mul.9.2
  store i32 %add.9.2, i32* %arrayidx20.9.2, align 4
  br label %for.inc.9.2

for.inc.9.2:                                      ; preds = %for.inc.8.2
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %for.inc.9.2
  %arrayidx5.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3, align 4
  br label %for.body8.3

for.body8.3:                                      ; preds = %for.inc21.2
  %arrayidx12.325 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %90 = load i32* %arrayidx12.325, align 4
  %arrayidx16.326 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %91 = load i32* %arrayidx16.326, align 4
  %mul.327 = mul nsw i32 %90, %91
  %arrayidx20.330 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %92 = load i32* %arrayidx20.330, align 4
  %add.331 = add nsw i32 %92, %mul.327
  store i32 %add.331, i32* %arrayidx20.330, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body8.3
  %arrayidx12.1.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %93 = load i32* %arrayidx12.1.3, align 4
  %arrayidx15.1.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3, i32 0, i64 3
  %94 = load i32* %arrayidx16.1.3, align 4
  %mul.1.3 = mul nsw i32 %93, %94
  %arrayidx20.1.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %95 = load i32* %arrayidx20.1.3, align 4
  %add.1.3 = add nsw i32 %95, %mul.1.3
  store i32 %add.1.3, i32* %arrayidx20.1.3, align 4
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %for.inc.332
  %arrayidx12.2.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %96 = load i32* %arrayidx12.2.3, align 4
  %arrayidx15.2.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3, i32 0, i64 3
  %97 = load i32* %arrayidx16.2.3, align 4
  %mul.2.3 = mul nsw i32 %96, %97
  %arrayidx20.2.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %98 = load i32* %arrayidx20.2.3, align 4
  %add.2.3 = add nsw i32 %98, %mul.2.3
  store i32 %add.2.3, i32* %arrayidx20.2.3, align 4
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %for.inc.1.3
  %arrayidx12.3.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %99 = load i32* %arrayidx12.3.3, align 4
  %arrayidx15.3.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3, i32 0, i64 3
  %100 = load i32* %arrayidx16.3.3, align 4
  %mul.3.3 = mul nsw i32 %99, %100
  %arrayidx20.3.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %101 = load i32* %arrayidx20.3.3, align 4
  %add.3.3 = add nsw i32 %101, %mul.3.3
  store i32 %add.3.3, i32* %arrayidx20.3.3, align 4
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %for.inc.2.3
  %arrayidx12.4.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %102 = load i32* %arrayidx12.4.3, align 4
  %arrayidx15.4.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3, i32 0, i64 3
  %103 = load i32* %arrayidx16.4.3, align 4
  %mul.4.3 = mul nsw i32 %102, %103
  %arrayidx20.4.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %104 = load i32* %arrayidx20.4.3, align 4
  %add.4.3 = add nsw i32 %104, %mul.4.3
  store i32 %add.4.3, i32* %arrayidx20.4.3, align 4
  br label %for.inc.4.3

for.inc.4.3:                                      ; preds = %for.inc.3.3
  %arrayidx12.5.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %105 = load i32* %arrayidx12.5.3, align 4
  %arrayidx15.5.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3, i32 0, i64 3
  %106 = load i32* %arrayidx16.5.3, align 4
  %mul.5.3 = mul nsw i32 %105, %106
  %arrayidx20.5.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %107 = load i32* %arrayidx20.5.3, align 4
  %add.5.3 = add nsw i32 %107, %mul.5.3
  store i32 %add.5.3, i32* %arrayidx20.5.3, align 4
  br label %for.inc.5.3

for.inc.5.3:                                      ; preds = %for.inc.4.3
  %arrayidx12.6.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %108 = load i32* %arrayidx12.6.3, align 4
  %arrayidx15.6.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3, i32 0, i64 3
  %109 = load i32* %arrayidx16.6.3, align 4
  %mul.6.3 = mul nsw i32 %108, %109
  %arrayidx20.6.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %110 = load i32* %arrayidx20.6.3, align 4
  %add.6.3 = add nsw i32 %110, %mul.6.3
  store i32 %add.6.3, i32* %arrayidx20.6.3, align 4
  br label %for.inc.6.3

for.inc.6.3:                                      ; preds = %for.inc.5.3
  %arrayidx12.7.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %111 = load i32* %arrayidx12.7.3, align 4
  %arrayidx15.7.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3, i32 0, i64 3
  %112 = load i32* %arrayidx16.7.3, align 4
  %mul.7.3 = mul nsw i32 %111, %112
  %arrayidx20.7.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %113 = load i32* %arrayidx20.7.3, align 4
  %add.7.3 = add nsw i32 %113, %mul.7.3
  store i32 %add.7.3, i32* %arrayidx20.7.3, align 4
  br label %for.inc.7.3

for.inc.7.3:                                      ; preds = %for.inc.6.3
  %arrayidx12.8.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %114 = load i32* %arrayidx12.8.3, align 4
  %arrayidx15.8.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3, i32 0, i64 3
  %115 = load i32* %arrayidx16.8.3, align 4
  %mul.8.3 = mul nsw i32 %114, %115
  %arrayidx20.8.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %116 = load i32* %arrayidx20.8.3, align 4
  %add.8.3 = add nsw i32 %116, %mul.8.3
  store i32 %add.8.3, i32* %arrayidx20.8.3, align 4
  br label %for.inc.8.3

for.inc.8.3:                                      ; preds = %for.inc.7.3
  %arrayidx12.9.3 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %117 = load i32* %arrayidx12.9.3, align 4
  %arrayidx15.9.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3, i32 0, i64 3
  %118 = load i32* %arrayidx16.9.3, align 4
  %mul.9.3 = mul nsw i32 %117, %118
  %arrayidx20.9.3 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 3
  %119 = load i32* %arrayidx20.9.3, align 4
  %add.9.3 = add nsw i32 %119, %mul.9.3
  store i32 %add.9.3, i32* %arrayidx20.9.3, align 4
  br label %for.inc.9.3

for.inc.9.3:                                      ; preds = %for.inc.8.3
  br label %for.inc21.3

for.inc21.3:                                      ; preds = %for.inc.9.3
  %arrayidx5.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4, align 4
  br label %for.body8.4

for.body8.4:                                      ; preds = %for.inc21.3
  %arrayidx12.435 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %120 = load i32* %arrayidx12.435, align 4
  %arrayidx16.436 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %121 = load i32* %arrayidx16.436, align 4
  %mul.437 = mul nsw i32 %120, %121
  %arrayidx20.440 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %122 = load i32* %arrayidx20.440, align 4
  %add.441 = add nsw i32 %122, %mul.437
  store i32 %add.441, i32* %arrayidx20.440, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body8.4
  %arrayidx12.1.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %123 = load i32* %arrayidx12.1.4, align 4
  %arrayidx15.1.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4, i32 0, i64 4
  %124 = load i32* %arrayidx16.1.4, align 4
  %mul.1.4 = mul nsw i32 %123, %124
  %arrayidx20.1.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %125 = load i32* %arrayidx20.1.4, align 4
  %add.1.4 = add nsw i32 %125, %mul.1.4
  store i32 %add.1.4, i32* %arrayidx20.1.4, align 4
  br label %for.inc.1.4

for.inc.1.4:                                      ; preds = %for.inc.442
  %arrayidx12.2.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %126 = load i32* %arrayidx12.2.4, align 4
  %arrayidx15.2.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4, i32 0, i64 4
  %127 = load i32* %arrayidx16.2.4, align 4
  %mul.2.4 = mul nsw i32 %126, %127
  %arrayidx20.2.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %128 = load i32* %arrayidx20.2.4, align 4
  %add.2.4 = add nsw i32 %128, %mul.2.4
  store i32 %add.2.4, i32* %arrayidx20.2.4, align 4
  br label %for.inc.2.4

for.inc.2.4:                                      ; preds = %for.inc.1.4
  %arrayidx12.3.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %129 = load i32* %arrayidx12.3.4, align 4
  %arrayidx15.3.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4, i32 0, i64 4
  %130 = load i32* %arrayidx16.3.4, align 4
  %mul.3.4 = mul nsw i32 %129, %130
  %arrayidx20.3.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %131 = load i32* %arrayidx20.3.4, align 4
  %add.3.4 = add nsw i32 %131, %mul.3.4
  store i32 %add.3.4, i32* %arrayidx20.3.4, align 4
  br label %for.inc.3.4

for.inc.3.4:                                      ; preds = %for.inc.2.4
  %arrayidx12.4.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %132 = load i32* %arrayidx12.4.4, align 4
  %arrayidx15.4.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4, i32 0, i64 4
  %133 = load i32* %arrayidx16.4.4, align 4
  %mul.4.4 = mul nsw i32 %132, %133
  %arrayidx20.4.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %134 = load i32* %arrayidx20.4.4, align 4
  %add.4.4 = add nsw i32 %134, %mul.4.4
  store i32 %add.4.4, i32* %arrayidx20.4.4, align 4
  br label %for.inc.4.4

for.inc.4.4:                                      ; preds = %for.inc.3.4
  %arrayidx12.5.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %135 = load i32* %arrayidx12.5.4, align 4
  %arrayidx15.5.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4, i32 0, i64 4
  %136 = load i32* %arrayidx16.5.4, align 4
  %mul.5.4 = mul nsw i32 %135, %136
  %arrayidx20.5.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %137 = load i32* %arrayidx20.5.4, align 4
  %add.5.4 = add nsw i32 %137, %mul.5.4
  store i32 %add.5.4, i32* %arrayidx20.5.4, align 4
  br label %for.inc.5.4

for.inc.5.4:                                      ; preds = %for.inc.4.4
  %arrayidx12.6.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %138 = load i32* %arrayidx12.6.4, align 4
  %arrayidx15.6.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4, i32 0, i64 4
  %139 = load i32* %arrayidx16.6.4, align 4
  %mul.6.4 = mul nsw i32 %138, %139
  %arrayidx20.6.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %140 = load i32* %arrayidx20.6.4, align 4
  %add.6.4 = add nsw i32 %140, %mul.6.4
  store i32 %add.6.4, i32* %arrayidx20.6.4, align 4
  br label %for.inc.6.4

for.inc.6.4:                                      ; preds = %for.inc.5.4
  %arrayidx12.7.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %141 = load i32* %arrayidx12.7.4, align 4
  %arrayidx15.7.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4, i32 0, i64 4
  %142 = load i32* %arrayidx16.7.4, align 4
  %mul.7.4 = mul nsw i32 %141, %142
  %arrayidx20.7.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %143 = load i32* %arrayidx20.7.4, align 4
  %add.7.4 = add nsw i32 %143, %mul.7.4
  store i32 %add.7.4, i32* %arrayidx20.7.4, align 4
  br label %for.inc.7.4

for.inc.7.4:                                      ; preds = %for.inc.6.4
  %arrayidx12.8.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %144 = load i32* %arrayidx12.8.4, align 4
  %arrayidx15.8.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4, i32 0, i64 4
  %145 = load i32* %arrayidx16.8.4, align 4
  %mul.8.4 = mul nsw i32 %144, %145
  %arrayidx20.8.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %146 = load i32* %arrayidx20.8.4, align 4
  %add.8.4 = add nsw i32 %146, %mul.8.4
  store i32 %add.8.4, i32* %arrayidx20.8.4, align 4
  br label %for.inc.8.4

for.inc.8.4:                                      ; preds = %for.inc.7.4
  %arrayidx12.9.4 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %147 = load i32* %arrayidx12.9.4, align 4
  %arrayidx15.9.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4, i32 0, i64 4
  %148 = load i32* %arrayidx16.9.4, align 4
  %mul.9.4 = mul nsw i32 %147, %148
  %arrayidx20.9.4 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 4
  %149 = load i32* %arrayidx20.9.4, align 4
  %add.9.4 = add nsw i32 %149, %mul.9.4
  store i32 %add.9.4, i32* %arrayidx20.9.4, align 4
  br label %for.inc.9.4

for.inc.9.4:                                      ; preds = %for.inc.8.4
  br label %for.inc21.4

for.inc21.4:                                      ; preds = %for.inc.9.4
  %arrayidx5.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5, align 4
  br label %for.body8.5

for.body8.5:                                      ; preds = %for.inc21.4
  %arrayidx12.545 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %150 = load i32* %arrayidx12.545, align 4
  %arrayidx16.546 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %151 = load i32* %arrayidx16.546, align 4
  %mul.547 = mul nsw i32 %150, %151
  %arrayidx20.550 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %152 = load i32* %arrayidx20.550, align 4
  %add.551 = add nsw i32 %152, %mul.547
  store i32 %add.551, i32* %arrayidx20.550, align 4
  br label %for.inc.552

for.inc.552:                                      ; preds = %for.body8.5
  %arrayidx12.1.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %153 = load i32* %arrayidx12.1.5, align 4
  %arrayidx15.1.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5, i32 0, i64 5
  %154 = load i32* %arrayidx16.1.5, align 4
  %mul.1.5 = mul nsw i32 %153, %154
  %arrayidx20.1.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %155 = load i32* %arrayidx20.1.5, align 4
  %add.1.5 = add nsw i32 %155, %mul.1.5
  store i32 %add.1.5, i32* %arrayidx20.1.5, align 4
  br label %for.inc.1.5

for.inc.1.5:                                      ; preds = %for.inc.552
  %arrayidx12.2.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %156 = load i32* %arrayidx12.2.5, align 4
  %arrayidx15.2.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5, i32 0, i64 5
  %157 = load i32* %arrayidx16.2.5, align 4
  %mul.2.5 = mul nsw i32 %156, %157
  %arrayidx20.2.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %158 = load i32* %arrayidx20.2.5, align 4
  %add.2.5 = add nsw i32 %158, %mul.2.5
  store i32 %add.2.5, i32* %arrayidx20.2.5, align 4
  br label %for.inc.2.5

for.inc.2.5:                                      ; preds = %for.inc.1.5
  %arrayidx12.3.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %159 = load i32* %arrayidx12.3.5, align 4
  %arrayidx15.3.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5, i32 0, i64 5
  %160 = load i32* %arrayidx16.3.5, align 4
  %mul.3.5 = mul nsw i32 %159, %160
  %arrayidx20.3.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %161 = load i32* %arrayidx20.3.5, align 4
  %add.3.5 = add nsw i32 %161, %mul.3.5
  store i32 %add.3.5, i32* %arrayidx20.3.5, align 4
  br label %for.inc.3.5

for.inc.3.5:                                      ; preds = %for.inc.2.5
  %arrayidx12.4.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %162 = load i32* %arrayidx12.4.5, align 4
  %arrayidx15.4.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5, i32 0, i64 5
  %163 = load i32* %arrayidx16.4.5, align 4
  %mul.4.5 = mul nsw i32 %162, %163
  %arrayidx20.4.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %164 = load i32* %arrayidx20.4.5, align 4
  %add.4.5 = add nsw i32 %164, %mul.4.5
  store i32 %add.4.5, i32* %arrayidx20.4.5, align 4
  br label %for.inc.4.5

for.inc.4.5:                                      ; preds = %for.inc.3.5
  %arrayidx12.5.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %165 = load i32* %arrayidx12.5.5, align 4
  %arrayidx15.5.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5, i32 0, i64 5
  %166 = load i32* %arrayidx16.5.5, align 4
  %mul.5.5 = mul nsw i32 %165, %166
  %arrayidx20.5.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %167 = load i32* %arrayidx20.5.5, align 4
  %add.5.5 = add nsw i32 %167, %mul.5.5
  store i32 %add.5.5, i32* %arrayidx20.5.5, align 4
  br label %for.inc.5.5

for.inc.5.5:                                      ; preds = %for.inc.4.5
  %arrayidx12.6.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %168 = load i32* %arrayidx12.6.5, align 4
  %arrayidx15.6.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5, i32 0, i64 5
  %169 = load i32* %arrayidx16.6.5, align 4
  %mul.6.5 = mul nsw i32 %168, %169
  %arrayidx20.6.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %170 = load i32* %arrayidx20.6.5, align 4
  %add.6.5 = add nsw i32 %170, %mul.6.5
  store i32 %add.6.5, i32* %arrayidx20.6.5, align 4
  br label %for.inc.6.5

for.inc.6.5:                                      ; preds = %for.inc.5.5
  %arrayidx12.7.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %171 = load i32* %arrayidx12.7.5, align 4
  %arrayidx15.7.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5, i32 0, i64 5
  %172 = load i32* %arrayidx16.7.5, align 4
  %mul.7.5 = mul nsw i32 %171, %172
  %arrayidx20.7.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %173 = load i32* %arrayidx20.7.5, align 4
  %add.7.5 = add nsw i32 %173, %mul.7.5
  store i32 %add.7.5, i32* %arrayidx20.7.5, align 4
  br label %for.inc.7.5

for.inc.7.5:                                      ; preds = %for.inc.6.5
  %arrayidx12.8.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %174 = load i32* %arrayidx12.8.5, align 4
  %arrayidx15.8.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5, i32 0, i64 5
  %175 = load i32* %arrayidx16.8.5, align 4
  %mul.8.5 = mul nsw i32 %174, %175
  %arrayidx20.8.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %176 = load i32* %arrayidx20.8.5, align 4
  %add.8.5 = add nsw i32 %176, %mul.8.5
  store i32 %add.8.5, i32* %arrayidx20.8.5, align 4
  br label %for.inc.8.5

for.inc.8.5:                                      ; preds = %for.inc.7.5
  %arrayidx12.9.5 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %177 = load i32* %arrayidx12.9.5, align 4
  %arrayidx15.9.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5, i32 0, i64 5
  %178 = load i32* %arrayidx16.9.5, align 4
  %mul.9.5 = mul nsw i32 %177, %178
  %arrayidx20.9.5 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 5
  %179 = load i32* %arrayidx20.9.5, align 4
  %add.9.5 = add nsw i32 %179, %mul.9.5
  store i32 %add.9.5, i32* %arrayidx20.9.5, align 4
  br label %for.inc.9.5

for.inc.9.5:                                      ; preds = %for.inc.8.5
  br label %for.inc21.5

for.inc21.5:                                      ; preds = %for.inc.9.5
  %arrayidx5.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6, align 4
  br label %for.body8.6

for.body8.6:                                      ; preds = %for.inc21.5
  %arrayidx12.655 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %180 = load i32* %arrayidx12.655, align 4
  %arrayidx16.656 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %181 = load i32* %arrayidx16.656, align 4
  %mul.657 = mul nsw i32 %180, %181
  %arrayidx20.660 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %182 = load i32* %arrayidx20.660, align 4
  %add.661 = add nsw i32 %182, %mul.657
  store i32 %add.661, i32* %arrayidx20.660, align 4
  br label %for.inc.662

for.inc.662:                                      ; preds = %for.body8.6
  %arrayidx12.1.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %183 = load i32* %arrayidx12.1.6, align 4
  %arrayidx15.1.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6, i32 0, i64 6
  %184 = load i32* %arrayidx16.1.6, align 4
  %mul.1.6 = mul nsw i32 %183, %184
  %arrayidx20.1.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %185 = load i32* %arrayidx20.1.6, align 4
  %add.1.6 = add nsw i32 %185, %mul.1.6
  store i32 %add.1.6, i32* %arrayidx20.1.6, align 4
  br label %for.inc.1.6

for.inc.1.6:                                      ; preds = %for.inc.662
  %arrayidx12.2.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %186 = load i32* %arrayidx12.2.6, align 4
  %arrayidx15.2.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6, i32 0, i64 6
  %187 = load i32* %arrayidx16.2.6, align 4
  %mul.2.6 = mul nsw i32 %186, %187
  %arrayidx20.2.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %188 = load i32* %arrayidx20.2.6, align 4
  %add.2.6 = add nsw i32 %188, %mul.2.6
  store i32 %add.2.6, i32* %arrayidx20.2.6, align 4
  br label %for.inc.2.6

for.inc.2.6:                                      ; preds = %for.inc.1.6
  %arrayidx12.3.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %189 = load i32* %arrayidx12.3.6, align 4
  %arrayidx15.3.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6, i32 0, i64 6
  %190 = load i32* %arrayidx16.3.6, align 4
  %mul.3.6 = mul nsw i32 %189, %190
  %arrayidx20.3.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %191 = load i32* %arrayidx20.3.6, align 4
  %add.3.6 = add nsw i32 %191, %mul.3.6
  store i32 %add.3.6, i32* %arrayidx20.3.6, align 4
  br label %for.inc.3.6

for.inc.3.6:                                      ; preds = %for.inc.2.6
  %arrayidx12.4.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %192 = load i32* %arrayidx12.4.6, align 4
  %arrayidx15.4.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6, i32 0, i64 6
  %193 = load i32* %arrayidx16.4.6, align 4
  %mul.4.6 = mul nsw i32 %192, %193
  %arrayidx20.4.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %194 = load i32* %arrayidx20.4.6, align 4
  %add.4.6 = add nsw i32 %194, %mul.4.6
  store i32 %add.4.6, i32* %arrayidx20.4.6, align 4
  br label %for.inc.4.6

for.inc.4.6:                                      ; preds = %for.inc.3.6
  %arrayidx12.5.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %195 = load i32* %arrayidx12.5.6, align 4
  %arrayidx15.5.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6, i32 0, i64 6
  %196 = load i32* %arrayidx16.5.6, align 4
  %mul.5.6 = mul nsw i32 %195, %196
  %arrayidx20.5.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %197 = load i32* %arrayidx20.5.6, align 4
  %add.5.6 = add nsw i32 %197, %mul.5.6
  store i32 %add.5.6, i32* %arrayidx20.5.6, align 4
  br label %for.inc.5.6

for.inc.5.6:                                      ; preds = %for.inc.4.6
  %arrayidx12.6.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %198 = load i32* %arrayidx12.6.6, align 4
  %arrayidx15.6.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6, i32 0, i64 6
  %199 = load i32* %arrayidx16.6.6, align 4
  %mul.6.6 = mul nsw i32 %198, %199
  %arrayidx20.6.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %200 = load i32* %arrayidx20.6.6, align 4
  %add.6.6 = add nsw i32 %200, %mul.6.6
  store i32 %add.6.6, i32* %arrayidx20.6.6, align 4
  br label %for.inc.6.6

for.inc.6.6:                                      ; preds = %for.inc.5.6
  %arrayidx12.7.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %201 = load i32* %arrayidx12.7.6, align 4
  %arrayidx15.7.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6, i32 0, i64 6
  %202 = load i32* %arrayidx16.7.6, align 4
  %mul.7.6 = mul nsw i32 %201, %202
  %arrayidx20.7.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %203 = load i32* %arrayidx20.7.6, align 4
  %add.7.6 = add nsw i32 %203, %mul.7.6
  store i32 %add.7.6, i32* %arrayidx20.7.6, align 4
  br label %for.inc.7.6

for.inc.7.6:                                      ; preds = %for.inc.6.6
  %arrayidx12.8.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %204 = load i32* %arrayidx12.8.6, align 4
  %arrayidx15.8.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6, i32 0, i64 6
  %205 = load i32* %arrayidx16.8.6, align 4
  %mul.8.6 = mul nsw i32 %204, %205
  %arrayidx20.8.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %206 = load i32* %arrayidx20.8.6, align 4
  %add.8.6 = add nsw i32 %206, %mul.8.6
  store i32 %add.8.6, i32* %arrayidx20.8.6, align 4
  br label %for.inc.8.6

for.inc.8.6:                                      ; preds = %for.inc.7.6
  %arrayidx12.9.6 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %207 = load i32* %arrayidx12.9.6, align 4
  %arrayidx15.9.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6, i32 0, i64 6
  %208 = load i32* %arrayidx16.9.6, align 4
  %mul.9.6 = mul nsw i32 %207, %208
  %arrayidx20.9.6 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 6
  %209 = load i32* %arrayidx20.9.6, align 4
  %add.9.6 = add nsw i32 %209, %mul.9.6
  store i32 %add.9.6, i32* %arrayidx20.9.6, align 4
  br label %for.inc.9.6

for.inc.9.6:                                      ; preds = %for.inc.8.6
  br label %for.inc21.6

for.inc21.6:                                      ; preds = %for.inc.9.6
  %arrayidx5.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7, align 4
  br label %for.body8.7

for.body8.7:                                      ; preds = %for.inc21.6
  %arrayidx12.765 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %210 = load i32* %arrayidx12.765, align 4
  %arrayidx16.766 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %211 = load i32* %arrayidx16.766, align 4
  %mul.767 = mul nsw i32 %210, %211
  %arrayidx20.770 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %212 = load i32* %arrayidx20.770, align 4
  %add.771 = add nsw i32 %212, %mul.767
  store i32 %add.771, i32* %arrayidx20.770, align 4
  br label %for.inc.772

for.inc.772:                                      ; preds = %for.body8.7
  %arrayidx12.1.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %213 = load i32* %arrayidx12.1.7, align 4
  %arrayidx15.1.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7, i32 0, i64 7
  %214 = load i32* %arrayidx16.1.7, align 4
  %mul.1.7 = mul nsw i32 %213, %214
  %arrayidx20.1.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %215 = load i32* %arrayidx20.1.7, align 4
  %add.1.7 = add nsw i32 %215, %mul.1.7
  store i32 %add.1.7, i32* %arrayidx20.1.7, align 4
  br label %for.inc.1.7

for.inc.1.7:                                      ; preds = %for.inc.772
  %arrayidx12.2.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %216 = load i32* %arrayidx12.2.7, align 4
  %arrayidx15.2.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7, i32 0, i64 7
  %217 = load i32* %arrayidx16.2.7, align 4
  %mul.2.7 = mul nsw i32 %216, %217
  %arrayidx20.2.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %218 = load i32* %arrayidx20.2.7, align 4
  %add.2.7 = add nsw i32 %218, %mul.2.7
  store i32 %add.2.7, i32* %arrayidx20.2.7, align 4
  br label %for.inc.2.7

for.inc.2.7:                                      ; preds = %for.inc.1.7
  %arrayidx12.3.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %219 = load i32* %arrayidx12.3.7, align 4
  %arrayidx15.3.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7, i32 0, i64 7
  %220 = load i32* %arrayidx16.3.7, align 4
  %mul.3.7 = mul nsw i32 %219, %220
  %arrayidx20.3.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %221 = load i32* %arrayidx20.3.7, align 4
  %add.3.7 = add nsw i32 %221, %mul.3.7
  store i32 %add.3.7, i32* %arrayidx20.3.7, align 4
  br label %for.inc.3.7

for.inc.3.7:                                      ; preds = %for.inc.2.7
  %arrayidx12.4.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %222 = load i32* %arrayidx12.4.7, align 4
  %arrayidx15.4.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7, i32 0, i64 7
  %223 = load i32* %arrayidx16.4.7, align 4
  %mul.4.7 = mul nsw i32 %222, %223
  %arrayidx20.4.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %224 = load i32* %arrayidx20.4.7, align 4
  %add.4.7 = add nsw i32 %224, %mul.4.7
  store i32 %add.4.7, i32* %arrayidx20.4.7, align 4
  br label %for.inc.4.7

for.inc.4.7:                                      ; preds = %for.inc.3.7
  %arrayidx12.5.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %225 = load i32* %arrayidx12.5.7, align 4
  %arrayidx15.5.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7, i32 0, i64 7
  %226 = load i32* %arrayidx16.5.7, align 4
  %mul.5.7 = mul nsw i32 %225, %226
  %arrayidx20.5.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %227 = load i32* %arrayidx20.5.7, align 4
  %add.5.7 = add nsw i32 %227, %mul.5.7
  store i32 %add.5.7, i32* %arrayidx20.5.7, align 4
  br label %for.inc.5.7

for.inc.5.7:                                      ; preds = %for.inc.4.7
  %arrayidx12.6.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %228 = load i32* %arrayidx12.6.7, align 4
  %arrayidx15.6.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7, i32 0, i64 7
  %229 = load i32* %arrayidx16.6.7, align 4
  %mul.6.7 = mul nsw i32 %228, %229
  %arrayidx20.6.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %230 = load i32* %arrayidx20.6.7, align 4
  %add.6.7 = add nsw i32 %230, %mul.6.7
  store i32 %add.6.7, i32* %arrayidx20.6.7, align 4
  br label %for.inc.6.7

for.inc.6.7:                                      ; preds = %for.inc.5.7
  %arrayidx12.7.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %231 = load i32* %arrayidx12.7.7, align 4
  %arrayidx15.7.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7, i32 0, i64 7
  %232 = load i32* %arrayidx16.7.7, align 4
  %mul.7.7 = mul nsw i32 %231, %232
  %arrayidx20.7.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %233 = load i32* %arrayidx20.7.7, align 4
  %add.7.7 = add nsw i32 %233, %mul.7.7
  store i32 %add.7.7, i32* %arrayidx20.7.7, align 4
  br label %for.inc.7.7

for.inc.7.7:                                      ; preds = %for.inc.6.7
  %arrayidx12.8.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %234 = load i32* %arrayidx12.8.7, align 4
  %arrayidx15.8.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7, i32 0, i64 7
  %235 = load i32* %arrayidx16.8.7, align 4
  %mul.8.7 = mul nsw i32 %234, %235
  %arrayidx20.8.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %236 = load i32* %arrayidx20.8.7, align 4
  %add.8.7 = add nsw i32 %236, %mul.8.7
  store i32 %add.8.7, i32* %arrayidx20.8.7, align 4
  br label %for.inc.8.7

for.inc.8.7:                                      ; preds = %for.inc.7.7
  %arrayidx12.9.7 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %237 = load i32* %arrayidx12.9.7, align 4
  %arrayidx15.9.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7, i32 0, i64 7
  %238 = load i32* %arrayidx16.9.7, align 4
  %mul.9.7 = mul nsw i32 %237, %238
  %arrayidx20.9.7 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 7
  %239 = load i32* %arrayidx20.9.7, align 4
  %add.9.7 = add nsw i32 %239, %mul.9.7
  store i32 %add.9.7, i32* %arrayidx20.9.7, align 4
  br label %for.inc.9.7

for.inc.9.7:                                      ; preds = %for.inc.8.7
  br label %for.inc21.7

for.inc21.7:                                      ; preds = %for.inc.9.7
  %arrayidx5.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8, align 4
  br label %for.body8.8

for.body8.8:                                      ; preds = %for.inc21.7
  %arrayidx12.875 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %240 = load i32* %arrayidx12.875, align 4
  %arrayidx16.876 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %241 = load i32* %arrayidx16.876, align 4
  %mul.877 = mul nsw i32 %240, %241
  %arrayidx20.880 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %242 = load i32* %arrayidx20.880, align 4
  %add.881 = add nsw i32 %242, %mul.877
  store i32 %add.881, i32* %arrayidx20.880, align 4
  br label %for.inc.882

for.inc.882:                                      ; preds = %for.body8.8
  %arrayidx12.1.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %243 = load i32* %arrayidx12.1.8, align 4
  %arrayidx15.1.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8, i32 0, i64 8
  %244 = load i32* %arrayidx16.1.8, align 4
  %mul.1.8 = mul nsw i32 %243, %244
  %arrayidx20.1.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %245 = load i32* %arrayidx20.1.8, align 4
  %add.1.8 = add nsw i32 %245, %mul.1.8
  store i32 %add.1.8, i32* %arrayidx20.1.8, align 4
  br label %for.inc.1.8

for.inc.1.8:                                      ; preds = %for.inc.882
  %arrayidx12.2.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %246 = load i32* %arrayidx12.2.8, align 4
  %arrayidx15.2.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8, i32 0, i64 8
  %247 = load i32* %arrayidx16.2.8, align 4
  %mul.2.8 = mul nsw i32 %246, %247
  %arrayidx20.2.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %248 = load i32* %arrayidx20.2.8, align 4
  %add.2.8 = add nsw i32 %248, %mul.2.8
  store i32 %add.2.8, i32* %arrayidx20.2.8, align 4
  br label %for.inc.2.8

for.inc.2.8:                                      ; preds = %for.inc.1.8
  %arrayidx12.3.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %249 = load i32* %arrayidx12.3.8, align 4
  %arrayidx15.3.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8, i32 0, i64 8
  %250 = load i32* %arrayidx16.3.8, align 4
  %mul.3.8 = mul nsw i32 %249, %250
  %arrayidx20.3.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %251 = load i32* %arrayidx20.3.8, align 4
  %add.3.8 = add nsw i32 %251, %mul.3.8
  store i32 %add.3.8, i32* %arrayidx20.3.8, align 4
  br label %for.inc.3.8

for.inc.3.8:                                      ; preds = %for.inc.2.8
  %arrayidx12.4.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %252 = load i32* %arrayidx12.4.8, align 4
  %arrayidx15.4.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8, i32 0, i64 8
  %253 = load i32* %arrayidx16.4.8, align 4
  %mul.4.8 = mul nsw i32 %252, %253
  %arrayidx20.4.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %254 = load i32* %arrayidx20.4.8, align 4
  %add.4.8 = add nsw i32 %254, %mul.4.8
  store i32 %add.4.8, i32* %arrayidx20.4.8, align 4
  br label %for.inc.4.8

for.inc.4.8:                                      ; preds = %for.inc.3.8
  %arrayidx12.5.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %255 = load i32* %arrayidx12.5.8, align 4
  %arrayidx15.5.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8, i32 0, i64 8
  %256 = load i32* %arrayidx16.5.8, align 4
  %mul.5.8 = mul nsw i32 %255, %256
  %arrayidx20.5.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %257 = load i32* %arrayidx20.5.8, align 4
  %add.5.8 = add nsw i32 %257, %mul.5.8
  store i32 %add.5.8, i32* %arrayidx20.5.8, align 4
  br label %for.inc.5.8

for.inc.5.8:                                      ; preds = %for.inc.4.8
  %arrayidx12.6.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %258 = load i32* %arrayidx12.6.8, align 4
  %arrayidx15.6.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8, i32 0, i64 8
  %259 = load i32* %arrayidx16.6.8, align 4
  %mul.6.8 = mul nsw i32 %258, %259
  %arrayidx20.6.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %260 = load i32* %arrayidx20.6.8, align 4
  %add.6.8 = add nsw i32 %260, %mul.6.8
  store i32 %add.6.8, i32* %arrayidx20.6.8, align 4
  br label %for.inc.6.8

for.inc.6.8:                                      ; preds = %for.inc.5.8
  %arrayidx12.7.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %261 = load i32* %arrayidx12.7.8, align 4
  %arrayidx15.7.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8, i32 0, i64 8
  %262 = load i32* %arrayidx16.7.8, align 4
  %mul.7.8 = mul nsw i32 %261, %262
  %arrayidx20.7.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %263 = load i32* %arrayidx20.7.8, align 4
  %add.7.8 = add nsw i32 %263, %mul.7.8
  store i32 %add.7.8, i32* %arrayidx20.7.8, align 4
  br label %for.inc.7.8

for.inc.7.8:                                      ; preds = %for.inc.6.8
  %arrayidx12.8.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %264 = load i32* %arrayidx12.8.8, align 4
  %arrayidx15.8.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8, i32 0, i64 8
  %265 = load i32* %arrayidx16.8.8, align 4
  %mul.8.8 = mul nsw i32 %264, %265
  %arrayidx20.8.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %266 = load i32* %arrayidx20.8.8, align 4
  %add.8.8 = add nsw i32 %266, %mul.8.8
  store i32 %add.8.8, i32* %arrayidx20.8.8, align 4
  br label %for.inc.8.8

for.inc.8.8:                                      ; preds = %for.inc.7.8
  %arrayidx12.9.8 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %267 = load i32* %arrayidx12.9.8, align 4
  %arrayidx15.9.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8, i32 0, i64 8
  %268 = load i32* %arrayidx16.9.8, align 4
  %mul.9.8 = mul nsw i32 %267, %268
  %arrayidx20.9.8 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 8
  %269 = load i32* %arrayidx20.9.8, align 4
  %add.9.8 = add nsw i32 %269, %mul.9.8
  store i32 %add.9.8, i32* %arrayidx20.9.8, align 4
  br label %for.inc.9.8

for.inc.9.8:                                      ; preds = %for.inc.8.8
  br label %for.inc21.8

for.inc21.8:                                      ; preds = %for.inc.9.8
  %arrayidx5.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9, align 4
  br label %for.body8.9

for.body8.9:                                      ; preds = %for.inc21.8
  %arrayidx12.985 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 0
  %270 = load i32* %arrayidx12.985, align 4
  %arrayidx16.986 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %271 = load i32* %arrayidx16.986, align 4
  %mul.987 = mul nsw i32 %270, %271
  %arrayidx20.990 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %272 = load i32* %arrayidx20.990, align 4
  %add.991 = add nsw i32 %272, %mul.987
  store i32 %add.991, i32* %arrayidx20.990, align 4
  br label %for.inc.992

for.inc.992:                                      ; preds = %for.body8.9
  %arrayidx12.1.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 1
  %273 = load i32* %arrayidx12.1.9, align 4
  %arrayidx15.1.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9, i32 0, i64 9
  %274 = load i32* %arrayidx16.1.9, align 4
  %mul.1.9 = mul nsw i32 %273, %274
  %arrayidx20.1.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %275 = load i32* %arrayidx20.1.9, align 4
  %add.1.9 = add nsw i32 %275, %mul.1.9
  store i32 %add.1.9, i32* %arrayidx20.1.9, align 4
  br label %for.inc.1.9

for.inc.1.9:                                      ; preds = %for.inc.992
  %arrayidx12.2.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 2
  %276 = load i32* %arrayidx12.2.9, align 4
  %arrayidx15.2.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9, i32 0, i64 9
  %277 = load i32* %arrayidx16.2.9, align 4
  %mul.2.9 = mul nsw i32 %276, %277
  %arrayidx20.2.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %278 = load i32* %arrayidx20.2.9, align 4
  %add.2.9 = add nsw i32 %278, %mul.2.9
  store i32 %add.2.9, i32* %arrayidx20.2.9, align 4
  br label %for.inc.2.9

for.inc.2.9:                                      ; preds = %for.inc.1.9
  %arrayidx12.3.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 3
  %279 = load i32* %arrayidx12.3.9, align 4
  %arrayidx15.3.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9, i32 0, i64 9
  %280 = load i32* %arrayidx16.3.9, align 4
  %mul.3.9 = mul nsw i32 %279, %280
  %arrayidx20.3.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %281 = load i32* %arrayidx20.3.9, align 4
  %add.3.9 = add nsw i32 %281, %mul.3.9
  store i32 %add.3.9, i32* %arrayidx20.3.9, align 4
  br label %for.inc.3.9

for.inc.3.9:                                      ; preds = %for.inc.2.9
  %arrayidx12.4.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 4
  %282 = load i32* %arrayidx12.4.9, align 4
  %arrayidx15.4.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9, i32 0, i64 9
  %283 = load i32* %arrayidx16.4.9, align 4
  %mul.4.9 = mul nsw i32 %282, %283
  %arrayidx20.4.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %284 = load i32* %arrayidx20.4.9, align 4
  %add.4.9 = add nsw i32 %284, %mul.4.9
  store i32 %add.4.9, i32* %arrayidx20.4.9, align 4
  br label %for.inc.4.9

for.inc.4.9:                                      ; preds = %for.inc.3.9
  %arrayidx12.5.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 5
  %285 = load i32* %arrayidx12.5.9, align 4
  %arrayidx15.5.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9, i32 0, i64 9
  %286 = load i32* %arrayidx16.5.9, align 4
  %mul.5.9 = mul nsw i32 %285, %286
  %arrayidx20.5.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %287 = load i32* %arrayidx20.5.9, align 4
  %add.5.9 = add nsw i32 %287, %mul.5.9
  store i32 %add.5.9, i32* %arrayidx20.5.9, align 4
  br label %for.inc.5.9

for.inc.5.9:                                      ; preds = %for.inc.4.9
  %arrayidx12.6.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 6
  %288 = load i32* %arrayidx12.6.9, align 4
  %arrayidx15.6.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9, i32 0, i64 9
  %289 = load i32* %arrayidx16.6.9, align 4
  %mul.6.9 = mul nsw i32 %288, %289
  %arrayidx20.6.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %290 = load i32* %arrayidx20.6.9, align 4
  %add.6.9 = add nsw i32 %290, %mul.6.9
  store i32 %add.6.9, i32* %arrayidx20.6.9, align 4
  br label %for.inc.6.9

for.inc.6.9:                                      ; preds = %for.inc.5.9
  %arrayidx12.7.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 7
  %291 = load i32* %arrayidx12.7.9, align 4
  %arrayidx15.7.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9, i32 0, i64 9
  %292 = load i32* %arrayidx16.7.9, align 4
  %mul.7.9 = mul nsw i32 %291, %292
  %arrayidx20.7.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %293 = load i32* %arrayidx20.7.9, align 4
  %add.7.9 = add nsw i32 %293, %mul.7.9
  store i32 %add.7.9, i32* %arrayidx20.7.9, align 4
  br label %for.inc.7.9

for.inc.7.9:                                      ; preds = %for.inc.6.9
  %arrayidx12.8.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 8
  %294 = load i32* %arrayidx12.8.9, align 4
  %arrayidx15.8.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9, i32 0, i64 9
  %295 = load i32* %arrayidx16.8.9, align 4
  %mul.8.9 = mul nsw i32 %294, %295
  %arrayidx20.8.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %296 = load i32* %arrayidx20.8.9, align 4
  %add.8.9 = add nsw i32 %296, %mul.8.9
  store i32 %add.8.9, i32* %arrayidx20.8.9, align 4
  br label %for.inc.8.9

for.inc.8.9:                                      ; preds = %for.inc.7.9
  %arrayidx12.9.9 = getelementptr inbounds [10 x i32]* %a, i32 0, i64 9
  %297 = load i32* %arrayidx12.9.9, align 4
  %arrayidx15.9.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9, i32 0, i64 9
  %298 = load i32* %arrayidx16.9.9, align 4
  %mul.9.9 = mul nsw i32 %297, %298
  %arrayidx20.9.9 = getelementptr inbounds [10 x i32]* %c, i32 0, i64 9
  %299 = load i32* %arrayidx20.9.9, align 4
  %add.9.9 = add nsw i32 %299, %mul.9.9
  store i32 %add.9.9, i32* %arrayidx20.9.9, align 4
  br label %for.inc.9.9

for.inc.9.9:                                      ; preds = %for.inc.8.9
  br label %for.inc21.9

for.inc21.9:                                      ; preds = %for.inc.9.9
  br label %for.inc24

for.body3.1:                                      ; preds = %for.inc24
  %arrayidx.194 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.195 = getelementptr inbounds [10 x i32]* %arrayidx.194, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.195, align 4
  br label %for.body8.1103

for.body8.1103:                                   ; preds = %for.body3.1
  %arrayidx11.196 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.197 = getelementptr inbounds [10 x i32]* %arrayidx11.196, i32 0, i64 0
  %300 = load i32* %arrayidx12.197, align 4
  %arrayidx16.198 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %301 = load i32* %arrayidx16.198, align 4
  %mul.199 = mul nsw i32 %300, %301
  %arrayidx19.1100 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1101 = getelementptr inbounds [10 x i32]* %arrayidx19.1100, i32 0, i64 0
  %302 = load i32* %arrayidx20.1101, align 4
  %add.1102 = add nsw i32 %302, %mul.199
  store i32 %add.1102, i32* %arrayidx20.1101, align 4
  br label %for.inc.1112

for.inc.1112:                                     ; preds = %for.body8.1103
  %arrayidx11.1.1104 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.1105 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1104, i32 0, i64 1
  %303 = load i32* %arrayidx12.1.1105, align 4
  %arrayidx15.1.1106 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1107 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1106, i32 0, i64 0
  %304 = load i32* %arrayidx16.1.1107, align 4
  %mul.1.1108 = mul nsw i32 %303, %304
  %arrayidx19.1.1109 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.1110 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1109, i32 0, i64 0
  %305 = load i32* %arrayidx20.1.1110, align 4
  %add.1.1111 = add nsw i32 %305, %mul.1.1108
  store i32 %add.1.1111, i32* %arrayidx20.1.1110, align 4
  br label %for.inc.1.1121

for.inc.1.1121:                                   ; preds = %for.inc.1112
  %arrayidx11.2.1113 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.1114 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1113, i32 0, i64 2
  %306 = load i32* %arrayidx12.2.1114, align 4
  %arrayidx15.2.1115 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1116 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1115, i32 0, i64 0
  %307 = load i32* %arrayidx16.2.1116, align 4
  %mul.2.1117 = mul nsw i32 %306, %307
  %arrayidx19.2.1118 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.1119 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1118, i32 0, i64 0
  %308 = load i32* %arrayidx20.2.1119, align 4
  %add.2.1120 = add nsw i32 %308, %mul.2.1117
  store i32 %add.2.1120, i32* %arrayidx20.2.1119, align 4
  br label %for.inc.2.1130

for.inc.2.1130:                                   ; preds = %for.inc.1.1121
  %arrayidx11.3.1122 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.1123 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1122, i32 0, i64 3
  %309 = load i32* %arrayidx12.3.1123, align 4
  %arrayidx15.3.1124 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1125 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1124, i32 0, i64 0
  %310 = load i32* %arrayidx16.3.1125, align 4
  %mul.3.1126 = mul nsw i32 %309, %310
  %arrayidx19.3.1127 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.1128 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1127, i32 0, i64 0
  %311 = load i32* %arrayidx20.3.1128, align 4
  %add.3.1129 = add nsw i32 %311, %mul.3.1126
  store i32 %add.3.1129, i32* %arrayidx20.3.1128, align 4
  br label %for.inc.3.1139

for.inc.3.1139:                                   ; preds = %for.inc.2.1130
  %arrayidx11.4.1131 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.1132 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1131, i32 0, i64 4
  %312 = load i32* %arrayidx12.4.1132, align 4
  %arrayidx15.4.1133 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1134 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1133, i32 0, i64 0
  %313 = load i32* %arrayidx16.4.1134, align 4
  %mul.4.1135 = mul nsw i32 %312, %313
  %arrayidx19.4.1136 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.1137 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1136, i32 0, i64 0
  %314 = load i32* %arrayidx20.4.1137, align 4
  %add.4.1138 = add nsw i32 %314, %mul.4.1135
  store i32 %add.4.1138, i32* %arrayidx20.4.1137, align 4
  br label %for.inc.4.1148

for.inc.4.1148:                                   ; preds = %for.inc.3.1139
  %arrayidx11.5.1140 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.1141 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1140, i32 0, i64 5
  %315 = load i32* %arrayidx12.5.1141, align 4
  %arrayidx15.5.1142 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1143 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1142, i32 0, i64 0
  %316 = load i32* %arrayidx16.5.1143, align 4
  %mul.5.1144 = mul nsw i32 %315, %316
  %arrayidx19.5.1145 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.1146 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1145, i32 0, i64 0
  %317 = load i32* %arrayidx20.5.1146, align 4
  %add.5.1147 = add nsw i32 %317, %mul.5.1144
  store i32 %add.5.1147, i32* %arrayidx20.5.1146, align 4
  br label %for.inc.5.1157

for.inc.5.1157:                                   ; preds = %for.inc.4.1148
  %arrayidx11.6.1149 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.1150 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1149, i32 0, i64 6
  %318 = load i32* %arrayidx12.6.1150, align 4
  %arrayidx15.6.1151 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1152 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1151, i32 0, i64 0
  %319 = load i32* %arrayidx16.6.1152, align 4
  %mul.6.1153 = mul nsw i32 %318, %319
  %arrayidx19.6.1154 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.1155 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1154, i32 0, i64 0
  %320 = load i32* %arrayidx20.6.1155, align 4
  %add.6.1156 = add nsw i32 %320, %mul.6.1153
  store i32 %add.6.1156, i32* %arrayidx20.6.1155, align 4
  br label %for.inc.6.1166

for.inc.6.1166:                                   ; preds = %for.inc.5.1157
  %arrayidx11.7.1158 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.1159 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1158, i32 0, i64 7
  %321 = load i32* %arrayidx12.7.1159, align 4
  %arrayidx15.7.1160 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1161 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1160, i32 0, i64 0
  %322 = load i32* %arrayidx16.7.1161, align 4
  %mul.7.1162 = mul nsw i32 %321, %322
  %arrayidx19.7.1163 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.1164 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1163, i32 0, i64 0
  %323 = load i32* %arrayidx20.7.1164, align 4
  %add.7.1165 = add nsw i32 %323, %mul.7.1162
  store i32 %add.7.1165, i32* %arrayidx20.7.1164, align 4
  br label %for.inc.7.1175

for.inc.7.1175:                                   ; preds = %for.inc.6.1166
  %arrayidx11.8.1167 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.1168 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1167, i32 0, i64 8
  %324 = load i32* %arrayidx12.8.1168, align 4
  %arrayidx15.8.1169 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1170 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1169, i32 0, i64 0
  %325 = load i32* %arrayidx16.8.1170, align 4
  %mul.8.1171 = mul nsw i32 %324, %325
  %arrayidx19.8.1172 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.1173 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1172, i32 0, i64 0
  %326 = load i32* %arrayidx20.8.1173, align 4
  %add.8.1174 = add nsw i32 %326, %mul.8.1171
  store i32 %add.8.1174, i32* %arrayidx20.8.1173, align 4
  br label %for.inc.8.1184

for.inc.8.1184:                                   ; preds = %for.inc.7.1175
  %arrayidx11.9.1176 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.1177 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1176, i32 0, i64 9
  %327 = load i32* %arrayidx12.9.1177, align 4
  %arrayidx15.9.1178 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1179 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1178, i32 0, i64 0
  %328 = load i32* %arrayidx16.9.1179, align 4
  %mul.9.1180 = mul nsw i32 %327, %328
  %arrayidx19.9.1181 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.1182 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1181, i32 0, i64 0
  %329 = load i32* %arrayidx20.9.1182, align 4
  %add.9.1183 = add nsw i32 %329, %mul.9.1180
  store i32 %add.9.1183, i32* %arrayidx20.9.1182, align 4
  br label %for.inc.9.1185

for.inc.9.1185:                                   ; preds = %for.inc.8.1184
  br label %for.inc21.1186

for.inc21.1186:                                   ; preds = %for.inc.9.1185
  %arrayidx.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [10 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  br label %for.body8.1.1

for.body8.1.1:                                    ; preds = %for.inc21.1186
  %arrayidx11.14.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [10 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %330 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %331 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %330, %331
  %arrayidx19.19.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [10 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %332 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %332, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  br label %for.inc.112.1

for.inc.112.1:                                    ; preds = %for.body8.1.1
  %arrayidx11.1.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %333 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %334 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %333, %334
  %arrayidx19.1.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %335 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %335, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  br label %for.inc.1.1.1

for.inc.1.1.1:                                    ; preds = %for.inc.112.1
  %arrayidx11.2.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.1, i32 0, i64 2
  %336 = load i32* %arrayidx12.2.1.1, align 4
  %arrayidx15.2.1.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.1, i32 0, i64 1
  %337 = load i32* %arrayidx16.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %336, %337
  %arrayidx19.2.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.1, i32 0, i64 1
  %338 = load i32* %arrayidx20.2.1.1, align 4
  %add.2.1.1 = add nsw i32 %338, %mul.2.1.1
  store i32 %add.2.1.1, i32* %arrayidx20.2.1.1, align 4
  br label %for.inc.2.1.1

for.inc.2.1.1:                                    ; preds = %for.inc.1.1.1
  %arrayidx11.3.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.1, i32 0, i64 3
  %339 = load i32* %arrayidx12.3.1.1, align 4
  %arrayidx15.3.1.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.1, i32 0, i64 1
  %340 = load i32* %arrayidx16.3.1.1, align 4
  %mul.3.1.1 = mul nsw i32 %339, %340
  %arrayidx19.3.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.1, i32 0, i64 1
  %341 = load i32* %arrayidx20.3.1.1, align 4
  %add.3.1.1 = add nsw i32 %341, %mul.3.1.1
  store i32 %add.3.1.1, i32* %arrayidx20.3.1.1, align 4
  br label %for.inc.3.1.1

for.inc.3.1.1:                                    ; preds = %for.inc.2.1.1
  %arrayidx11.4.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.1, i32 0, i64 4
  %342 = load i32* %arrayidx12.4.1.1, align 4
  %arrayidx15.4.1.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.1, i32 0, i64 1
  %343 = load i32* %arrayidx16.4.1.1, align 4
  %mul.4.1.1 = mul nsw i32 %342, %343
  %arrayidx19.4.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.1, i32 0, i64 1
  %344 = load i32* %arrayidx20.4.1.1, align 4
  %add.4.1.1 = add nsw i32 %344, %mul.4.1.1
  store i32 %add.4.1.1, i32* %arrayidx20.4.1.1, align 4
  br label %for.inc.4.1.1

for.inc.4.1.1:                                    ; preds = %for.inc.3.1.1
  %arrayidx11.5.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.1, i32 0, i64 5
  %345 = load i32* %arrayidx12.5.1.1, align 4
  %arrayidx15.5.1.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.1, i32 0, i64 1
  %346 = load i32* %arrayidx16.5.1.1, align 4
  %mul.5.1.1 = mul nsw i32 %345, %346
  %arrayidx19.5.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.1, i32 0, i64 1
  %347 = load i32* %arrayidx20.5.1.1, align 4
  %add.5.1.1 = add nsw i32 %347, %mul.5.1.1
  store i32 %add.5.1.1, i32* %arrayidx20.5.1.1, align 4
  br label %for.inc.5.1.1

for.inc.5.1.1:                                    ; preds = %for.inc.4.1.1
  %arrayidx11.6.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.1, i32 0, i64 6
  %348 = load i32* %arrayidx12.6.1.1, align 4
  %arrayidx15.6.1.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.1, i32 0, i64 1
  %349 = load i32* %arrayidx16.6.1.1, align 4
  %mul.6.1.1 = mul nsw i32 %348, %349
  %arrayidx19.6.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.1, i32 0, i64 1
  %350 = load i32* %arrayidx20.6.1.1, align 4
  %add.6.1.1 = add nsw i32 %350, %mul.6.1.1
  store i32 %add.6.1.1, i32* %arrayidx20.6.1.1, align 4
  br label %for.inc.6.1.1

for.inc.6.1.1:                                    ; preds = %for.inc.5.1.1
  %arrayidx11.7.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.1, i32 0, i64 7
  %351 = load i32* %arrayidx12.7.1.1, align 4
  %arrayidx15.7.1.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.1, i32 0, i64 1
  %352 = load i32* %arrayidx16.7.1.1, align 4
  %mul.7.1.1 = mul nsw i32 %351, %352
  %arrayidx19.7.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.1, i32 0, i64 1
  %353 = load i32* %arrayidx20.7.1.1, align 4
  %add.7.1.1 = add nsw i32 %353, %mul.7.1.1
  store i32 %add.7.1.1, i32* %arrayidx20.7.1.1, align 4
  br label %for.inc.7.1.1

for.inc.7.1.1:                                    ; preds = %for.inc.6.1.1
  %arrayidx11.8.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.1, i32 0, i64 8
  %354 = load i32* %arrayidx12.8.1.1, align 4
  %arrayidx15.8.1.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.1, i32 0, i64 1
  %355 = load i32* %arrayidx16.8.1.1, align 4
  %mul.8.1.1 = mul nsw i32 %354, %355
  %arrayidx19.8.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.1, i32 0, i64 1
  %356 = load i32* %arrayidx20.8.1.1, align 4
  %add.8.1.1 = add nsw i32 %356, %mul.8.1.1
  store i32 %add.8.1.1, i32* %arrayidx20.8.1.1, align 4
  br label %for.inc.8.1.1

for.inc.8.1.1:                                    ; preds = %for.inc.7.1.1
  %arrayidx11.9.1.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.1.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.1, i32 0, i64 9
  %357 = load i32* %arrayidx12.9.1.1, align 4
  %arrayidx15.9.1.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.1, i32 0, i64 1
  %358 = load i32* %arrayidx16.9.1.1, align 4
  %mul.9.1.1 = mul nsw i32 %357, %358
  %arrayidx19.9.1.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.1.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.1, i32 0, i64 1
  %359 = load i32* %arrayidx20.9.1.1, align 4
  %add.9.1.1 = add nsw i32 %359, %mul.9.1.1
  store i32 %add.9.1.1, i32* %arrayidx20.9.1.1, align 4
  br label %for.inc.9.1.1

for.inc.9.1.1:                                    ; preds = %for.inc.8.1.1
  br label %for.inc21.1.1

for.inc21.1.1:                                    ; preds = %for.inc.9.1.1
  %arrayidx.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [10 x i32]* %arrayidx.2.1, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.1, align 4
  br label %for.body8.2.1

for.body8.2.1:                                    ; preds = %for.inc21.1.1
  %arrayidx11.214.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.215.1 = getelementptr inbounds [10 x i32]* %arrayidx11.214.1, i32 0, i64 0
  %360 = load i32* %arrayidx12.215.1, align 4
  %arrayidx16.216.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %361 = load i32* %arrayidx16.216.1, align 4
  %mul.217.1 = mul nsw i32 %360, %361
  %arrayidx19.219.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.220.1 = getelementptr inbounds [10 x i32]* %arrayidx19.219.1, i32 0, i64 2
  %362 = load i32* %arrayidx20.220.1, align 4
  %add.221.1 = add nsw i32 %362, %mul.217.1
  store i32 %add.221.1, i32* %arrayidx20.220.1, align 4
  br label %for.inc.222.1

for.inc.222.1:                                    ; preds = %for.body8.2.1
  %arrayidx11.1.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.1, i32 0, i64 1
  %363 = load i32* %arrayidx12.1.2.1, align 4
  %arrayidx15.1.2.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.1, i32 0, i64 2
  %364 = load i32* %arrayidx16.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %363, %364
  %arrayidx19.1.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.1, i32 0, i64 2
  %365 = load i32* %arrayidx20.1.2.1, align 4
  %add.1.2.1 = add nsw i32 %365, %mul.1.2.1
  store i32 %add.1.2.1, i32* %arrayidx20.1.2.1, align 4
  br label %for.inc.1.2.1

for.inc.1.2.1:                                    ; preds = %for.inc.222.1
  %arrayidx11.2.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.1, i32 0, i64 2
  %366 = load i32* %arrayidx12.2.2.1, align 4
  %arrayidx15.2.2.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.1, i32 0, i64 2
  %367 = load i32* %arrayidx16.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %366, %367
  %arrayidx19.2.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.1, i32 0, i64 2
  %368 = load i32* %arrayidx20.2.2.1, align 4
  %add.2.2.1 = add nsw i32 %368, %mul.2.2.1
  store i32 %add.2.2.1, i32* %arrayidx20.2.2.1, align 4
  br label %for.inc.2.2.1

for.inc.2.2.1:                                    ; preds = %for.inc.1.2.1
  %arrayidx11.3.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.1, i32 0, i64 3
  %369 = load i32* %arrayidx12.3.2.1, align 4
  %arrayidx15.3.2.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.1, i32 0, i64 2
  %370 = load i32* %arrayidx16.3.2.1, align 4
  %mul.3.2.1 = mul nsw i32 %369, %370
  %arrayidx19.3.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.1, i32 0, i64 2
  %371 = load i32* %arrayidx20.3.2.1, align 4
  %add.3.2.1 = add nsw i32 %371, %mul.3.2.1
  store i32 %add.3.2.1, i32* %arrayidx20.3.2.1, align 4
  br label %for.inc.3.2.1

for.inc.3.2.1:                                    ; preds = %for.inc.2.2.1
  %arrayidx11.4.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.1, i32 0, i64 4
  %372 = load i32* %arrayidx12.4.2.1, align 4
  %arrayidx15.4.2.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.1, i32 0, i64 2
  %373 = load i32* %arrayidx16.4.2.1, align 4
  %mul.4.2.1 = mul nsw i32 %372, %373
  %arrayidx19.4.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.1, i32 0, i64 2
  %374 = load i32* %arrayidx20.4.2.1, align 4
  %add.4.2.1 = add nsw i32 %374, %mul.4.2.1
  store i32 %add.4.2.1, i32* %arrayidx20.4.2.1, align 4
  br label %for.inc.4.2.1

for.inc.4.2.1:                                    ; preds = %for.inc.3.2.1
  %arrayidx11.5.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.1, i32 0, i64 5
  %375 = load i32* %arrayidx12.5.2.1, align 4
  %arrayidx15.5.2.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.1, i32 0, i64 2
  %376 = load i32* %arrayidx16.5.2.1, align 4
  %mul.5.2.1 = mul nsw i32 %375, %376
  %arrayidx19.5.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.1, i32 0, i64 2
  %377 = load i32* %arrayidx20.5.2.1, align 4
  %add.5.2.1 = add nsw i32 %377, %mul.5.2.1
  store i32 %add.5.2.1, i32* %arrayidx20.5.2.1, align 4
  br label %for.inc.5.2.1

for.inc.5.2.1:                                    ; preds = %for.inc.4.2.1
  %arrayidx11.6.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.1, i32 0, i64 6
  %378 = load i32* %arrayidx12.6.2.1, align 4
  %arrayidx15.6.2.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.1, i32 0, i64 2
  %379 = load i32* %arrayidx16.6.2.1, align 4
  %mul.6.2.1 = mul nsw i32 %378, %379
  %arrayidx19.6.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.1, i32 0, i64 2
  %380 = load i32* %arrayidx20.6.2.1, align 4
  %add.6.2.1 = add nsw i32 %380, %mul.6.2.1
  store i32 %add.6.2.1, i32* %arrayidx20.6.2.1, align 4
  br label %for.inc.6.2.1

for.inc.6.2.1:                                    ; preds = %for.inc.5.2.1
  %arrayidx11.7.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.1, i32 0, i64 7
  %381 = load i32* %arrayidx12.7.2.1, align 4
  %arrayidx15.7.2.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.1, i32 0, i64 2
  %382 = load i32* %arrayidx16.7.2.1, align 4
  %mul.7.2.1 = mul nsw i32 %381, %382
  %arrayidx19.7.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.1, i32 0, i64 2
  %383 = load i32* %arrayidx20.7.2.1, align 4
  %add.7.2.1 = add nsw i32 %383, %mul.7.2.1
  store i32 %add.7.2.1, i32* %arrayidx20.7.2.1, align 4
  br label %for.inc.7.2.1

for.inc.7.2.1:                                    ; preds = %for.inc.6.2.1
  %arrayidx11.8.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.1, i32 0, i64 8
  %384 = load i32* %arrayidx12.8.2.1, align 4
  %arrayidx15.8.2.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.1, i32 0, i64 2
  %385 = load i32* %arrayidx16.8.2.1, align 4
  %mul.8.2.1 = mul nsw i32 %384, %385
  %arrayidx19.8.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.1, i32 0, i64 2
  %386 = load i32* %arrayidx20.8.2.1, align 4
  %add.8.2.1 = add nsw i32 %386, %mul.8.2.1
  store i32 %add.8.2.1, i32* %arrayidx20.8.2.1, align 4
  br label %for.inc.8.2.1

for.inc.8.2.1:                                    ; preds = %for.inc.7.2.1
  %arrayidx11.9.2.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.2.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.1, i32 0, i64 9
  %387 = load i32* %arrayidx12.9.2.1, align 4
  %arrayidx15.9.2.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.1, i32 0, i64 2
  %388 = load i32* %arrayidx16.9.2.1, align 4
  %mul.9.2.1 = mul nsw i32 %387, %388
  %arrayidx19.9.2.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.2.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.1, i32 0, i64 2
  %389 = load i32* %arrayidx20.9.2.1, align 4
  %add.9.2.1 = add nsw i32 %389, %mul.9.2.1
  store i32 %add.9.2.1, i32* %arrayidx20.9.2.1, align 4
  br label %for.inc.9.2.1

for.inc.9.2.1:                                    ; preds = %for.inc.8.2.1
  br label %for.inc21.2.1

for.inc21.2.1:                                    ; preds = %for.inc.9.2.1
  %arrayidx.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.3.1 = getelementptr inbounds [10 x i32]* %arrayidx.3.1, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.1, align 4
  br label %for.body8.3.1

for.body8.3.1:                                    ; preds = %for.inc21.2.1
  %arrayidx11.324.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.325.1 = getelementptr inbounds [10 x i32]* %arrayidx11.324.1, i32 0, i64 0
  %390 = load i32* %arrayidx12.325.1, align 4
  %arrayidx16.326.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %391 = load i32* %arrayidx16.326.1, align 4
  %mul.327.1 = mul nsw i32 %390, %391
  %arrayidx19.329.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.330.1 = getelementptr inbounds [10 x i32]* %arrayidx19.329.1, i32 0, i64 3
  %392 = load i32* %arrayidx20.330.1, align 4
  %add.331.1 = add nsw i32 %392, %mul.327.1
  store i32 %add.331.1, i32* %arrayidx20.330.1, align 4
  br label %for.inc.332.1

for.inc.332.1:                                    ; preds = %for.body8.3.1
  %arrayidx11.1.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.1, i32 0, i64 1
  %393 = load i32* %arrayidx12.1.3.1, align 4
  %arrayidx15.1.3.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.1, i32 0, i64 3
  %394 = load i32* %arrayidx16.1.3.1, align 4
  %mul.1.3.1 = mul nsw i32 %393, %394
  %arrayidx19.1.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.1, i32 0, i64 3
  %395 = load i32* %arrayidx20.1.3.1, align 4
  %add.1.3.1 = add nsw i32 %395, %mul.1.3.1
  store i32 %add.1.3.1, i32* %arrayidx20.1.3.1, align 4
  br label %for.inc.1.3.1

for.inc.1.3.1:                                    ; preds = %for.inc.332.1
  %arrayidx11.2.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.1, i32 0, i64 2
  %396 = load i32* %arrayidx12.2.3.1, align 4
  %arrayidx15.2.3.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.1, i32 0, i64 3
  %397 = load i32* %arrayidx16.2.3.1, align 4
  %mul.2.3.1 = mul nsw i32 %396, %397
  %arrayidx19.2.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.1, i32 0, i64 3
  %398 = load i32* %arrayidx20.2.3.1, align 4
  %add.2.3.1 = add nsw i32 %398, %mul.2.3.1
  store i32 %add.2.3.1, i32* %arrayidx20.2.3.1, align 4
  br label %for.inc.2.3.1

for.inc.2.3.1:                                    ; preds = %for.inc.1.3.1
  %arrayidx11.3.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.1, i32 0, i64 3
  %399 = load i32* %arrayidx12.3.3.1, align 4
  %arrayidx15.3.3.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.1, i32 0, i64 3
  %400 = load i32* %arrayidx16.3.3.1, align 4
  %mul.3.3.1 = mul nsw i32 %399, %400
  %arrayidx19.3.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.1, i32 0, i64 3
  %401 = load i32* %arrayidx20.3.3.1, align 4
  %add.3.3.1 = add nsw i32 %401, %mul.3.3.1
  store i32 %add.3.3.1, i32* %arrayidx20.3.3.1, align 4
  br label %for.inc.3.3.1

for.inc.3.3.1:                                    ; preds = %for.inc.2.3.1
  %arrayidx11.4.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.1, i32 0, i64 4
  %402 = load i32* %arrayidx12.4.3.1, align 4
  %arrayidx15.4.3.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.1, i32 0, i64 3
  %403 = load i32* %arrayidx16.4.3.1, align 4
  %mul.4.3.1 = mul nsw i32 %402, %403
  %arrayidx19.4.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.1, i32 0, i64 3
  %404 = load i32* %arrayidx20.4.3.1, align 4
  %add.4.3.1 = add nsw i32 %404, %mul.4.3.1
  store i32 %add.4.3.1, i32* %arrayidx20.4.3.1, align 4
  br label %for.inc.4.3.1

for.inc.4.3.1:                                    ; preds = %for.inc.3.3.1
  %arrayidx11.5.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.1, i32 0, i64 5
  %405 = load i32* %arrayidx12.5.3.1, align 4
  %arrayidx15.5.3.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.1, i32 0, i64 3
  %406 = load i32* %arrayidx16.5.3.1, align 4
  %mul.5.3.1 = mul nsw i32 %405, %406
  %arrayidx19.5.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.1, i32 0, i64 3
  %407 = load i32* %arrayidx20.5.3.1, align 4
  %add.5.3.1 = add nsw i32 %407, %mul.5.3.1
  store i32 %add.5.3.1, i32* %arrayidx20.5.3.1, align 4
  br label %for.inc.5.3.1

for.inc.5.3.1:                                    ; preds = %for.inc.4.3.1
  %arrayidx11.6.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.1, i32 0, i64 6
  %408 = load i32* %arrayidx12.6.3.1, align 4
  %arrayidx15.6.3.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.1, i32 0, i64 3
  %409 = load i32* %arrayidx16.6.3.1, align 4
  %mul.6.3.1 = mul nsw i32 %408, %409
  %arrayidx19.6.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.1, i32 0, i64 3
  %410 = load i32* %arrayidx20.6.3.1, align 4
  %add.6.3.1 = add nsw i32 %410, %mul.6.3.1
  store i32 %add.6.3.1, i32* %arrayidx20.6.3.1, align 4
  br label %for.inc.6.3.1

for.inc.6.3.1:                                    ; preds = %for.inc.5.3.1
  %arrayidx11.7.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.1, i32 0, i64 7
  %411 = load i32* %arrayidx12.7.3.1, align 4
  %arrayidx15.7.3.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.1, i32 0, i64 3
  %412 = load i32* %arrayidx16.7.3.1, align 4
  %mul.7.3.1 = mul nsw i32 %411, %412
  %arrayidx19.7.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.1, i32 0, i64 3
  %413 = load i32* %arrayidx20.7.3.1, align 4
  %add.7.3.1 = add nsw i32 %413, %mul.7.3.1
  store i32 %add.7.3.1, i32* %arrayidx20.7.3.1, align 4
  br label %for.inc.7.3.1

for.inc.7.3.1:                                    ; preds = %for.inc.6.3.1
  %arrayidx11.8.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.1, i32 0, i64 8
  %414 = load i32* %arrayidx12.8.3.1, align 4
  %arrayidx15.8.3.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.1, i32 0, i64 3
  %415 = load i32* %arrayidx16.8.3.1, align 4
  %mul.8.3.1 = mul nsw i32 %414, %415
  %arrayidx19.8.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.1, i32 0, i64 3
  %416 = load i32* %arrayidx20.8.3.1, align 4
  %add.8.3.1 = add nsw i32 %416, %mul.8.3.1
  store i32 %add.8.3.1, i32* %arrayidx20.8.3.1, align 4
  br label %for.inc.8.3.1

for.inc.8.3.1:                                    ; preds = %for.inc.7.3.1
  %arrayidx11.9.3.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.3.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.1, i32 0, i64 9
  %417 = load i32* %arrayidx12.9.3.1, align 4
  %arrayidx15.9.3.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.1, i32 0, i64 3
  %418 = load i32* %arrayidx16.9.3.1, align 4
  %mul.9.3.1 = mul nsw i32 %417, %418
  %arrayidx19.9.3.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.3.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.1, i32 0, i64 3
  %419 = load i32* %arrayidx20.9.3.1, align 4
  %add.9.3.1 = add nsw i32 %419, %mul.9.3.1
  store i32 %add.9.3.1, i32* %arrayidx20.9.3.1, align 4
  br label %for.inc.9.3.1

for.inc.9.3.1:                                    ; preds = %for.inc.8.3.1
  br label %for.inc21.3.1

for.inc21.3.1:                                    ; preds = %for.inc.9.3.1
  %arrayidx.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.4.1 = getelementptr inbounds [10 x i32]* %arrayidx.4.1, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.1, align 4
  br label %for.body8.4.1

for.body8.4.1:                                    ; preds = %for.inc21.3.1
  %arrayidx11.434.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.435.1 = getelementptr inbounds [10 x i32]* %arrayidx11.434.1, i32 0, i64 0
  %420 = load i32* %arrayidx12.435.1, align 4
  %arrayidx16.436.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %421 = load i32* %arrayidx16.436.1, align 4
  %mul.437.1 = mul nsw i32 %420, %421
  %arrayidx19.439.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.440.1 = getelementptr inbounds [10 x i32]* %arrayidx19.439.1, i32 0, i64 4
  %422 = load i32* %arrayidx20.440.1, align 4
  %add.441.1 = add nsw i32 %422, %mul.437.1
  store i32 %add.441.1, i32* %arrayidx20.440.1, align 4
  br label %for.inc.442.1

for.inc.442.1:                                    ; preds = %for.body8.4.1
  %arrayidx11.1.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.1, i32 0, i64 1
  %423 = load i32* %arrayidx12.1.4.1, align 4
  %arrayidx15.1.4.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.1, i32 0, i64 4
  %424 = load i32* %arrayidx16.1.4.1, align 4
  %mul.1.4.1 = mul nsw i32 %423, %424
  %arrayidx19.1.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.1, i32 0, i64 4
  %425 = load i32* %arrayidx20.1.4.1, align 4
  %add.1.4.1 = add nsw i32 %425, %mul.1.4.1
  store i32 %add.1.4.1, i32* %arrayidx20.1.4.1, align 4
  br label %for.inc.1.4.1

for.inc.1.4.1:                                    ; preds = %for.inc.442.1
  %arrayidx11.2.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.1, i32 0, i64 2
  %426 = load i32* %arrayidx12.2.4.1, align 4
  %arrayidx15.2.4.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.1, i32 0, i64 4
  %427 = load i32* %arrayidx16.2.4.1, align 4
  %mul.2.4.1 = mul nsw i32 %426, %427
  %arrayidx19.2.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.1, i32 0, i64 4
  %428 = load i32* %arrayidx20.2.4.1, align 4
  %add.2.4.1 = add nsw i32 %428, %mul.2.4.1
  store i32 %add.2.4.1, i32* %arrayidx20.2.4.1, align 4
  br label %for.inc.2.4.1

for.inc.2.4.1:                                    ; preds = %for.inc.1.4.1
  %arrayidx11.3.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.1, i32 0, i64 3
  %429 = load i32* %arrayidx12.3.4.1, align 4
  %arrayidx15.3.4.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.1, i32 0, i64 4
  %430 = load i32* %arrayidx16.3.4.1, align 4
  %mul.3.4.1 = mul nsw i32 %429, %430
  %arrayidx19.3.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.1, i32 0, i64 4
  %431 = load i32* %arrayidx20.3.4.1, align 4
  %add.3.4.1 = add nsw i32 %431, %mul.3.4.1
  store i32 %add.3.4.1, i32* %arrayidx20.3.4.1, align 4
  br label %for.inc.3.4.1

for.inc.3.4.1:                                    ; preds = %for.inc.2.4.1
  %arrayidx11.4.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.1, i32 0, i64 4
  %432 = load i32* %arrayidx12.4.4.1, align 4
  %arrayidx15.4.4.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.1, i32 0, i64 4
  %433 = load i32* %arrayidx16.4.4.1, align 4
  %mul.4.4.1 = mul nsw i32 %432, %433
  %arrayidx19.4.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.1, i32 0, i64 4
  %434 = load i32* %arrayidx20.4.4.1, align 4
  %add.4.4.1 = add nsw i32 %434, %mul.4.4.1
  store i32 %add.4.4.1, i32* %arrayidx20.4.4.1, align 4
  br label %for.inc.4.4.1

for.inc.4.4.1:                                    ; preds = %for.inc.3.4.1
  %arrayidx11.5.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.1, i32 0, i64 5
  %435 = load i32* %arrayidx12.5.4.1, align 4
  %arrayidx15.5.4.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.1, i32 0, i64 4
  %436 = load i32* %arrayidx16.5.4.1, align 4
  %mul.5.4.1 = mul nsw i32 %435, %436
  %arrayidx19.5.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.1, i32 0, i64 4
  %437 = load i32* %arrayidx20.5.4.1, align 4
  %add.5.4.1 = add nsw i32 %437, %mul.5.4.1
  store i32 %add.5.4.1, i32* %arrayidx20.5.4.1, align 4
  br label %for.inc.5.4.1

for.inc.5.4.1:                                    ; preds = %for.inc.4.4.1
  %arrayidx11.6.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.1, i32 0, i64 6
  %438 = load i32* %arrayidx12.6.4.1, align 4
  %arrayidx15.6.4.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.1, i32 0, i64 4
  %439 = load i32* %arrayidx16.6.4.1, align 4
  %mul.6.4.1 = mul nsw i32 %438, %439
  %arrayidx19.6.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.1, i32 0, i64 4
  %440 = load i32* %arrayidx20.6.4.1, align 4
  %add.6.4.1 = add nsw i32 %440, %mul.6.4.1
  store i32 %add.6.4.1, i32* %arrayidx20.6.4.1, align 4
  br label %for.inc.6.4.1

for.inc.6.4.1:                                    ; preds = %for.inc.5.4.1
  %arrayidx11.7.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.1, i32 0, i64 7
  %441 = load i32* %arrayidx12.7.4.1, align 4
  %arrayidx15.7.4.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.1, i32 0, i64 4
  %442 = load i32* %arrayidx16.7.4.1, align 4
  %mul.7.4.1 = mul nsw i32 %441, %442
  %arrayidx19.7.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.1, i32 0, i64 4
  %443 = load i32* %arrayidx20.7.4.1, align 4
  %add.7.4.1 = add nsw i32 %443, %mul.7.4.1
  store i32 %add.7.4.1, i32* %arrayidx20.7.4.1, align 4
  br label %for.inc.7.4.1

for.inc.7.4.1:                                    ; preds = %for.inc.6.4.1
  %arrayidx11.8.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.1, i32 0, i64 8
  %444 = load i32* %arrayidx12.8.4.1, align 4
  %arrayidx15.8.4.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.1, i32 0, i64 4
  %445 = load i32* %arrayidx16.8.4.1, align 4
  %mul.8.4.1 = mul nsw i32 %444, %445
  %arrayidx19.8.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.1, i32 0, i64 4
  %446 = load i32* %arrayidx20.8.4.1, align 4
  %add.8.4.1 = add nsw i32 %446, %mul.8.4.1
  store i32 %add.8.4.1, i32* %arrayidx20.8.4.1, align 4
  br label %for.inc.8.4.1

for.inc.8.4.1:                                    ; preds = %for.inc.7.4.1
  %arrayidx11.9.4.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.4.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.1, i32 0, i64 9
  %447 = load i32* %arrayidx12.9.4.1, align 4
  %arrayidx15.9.4.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.1, i32 0, i64 4
  %448 = load i32* %arrayidx16.9.4.1, align 4
  %mul.9.4.1 = mul nsw i32 %447, %448
  %arrayidx19.9.4.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.4.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.1, i32 0, i64 4
  %449 = load i32* %arrayidx20.9.4.1, align 4
  %add.9.4.1 = add nsw i32 %449, %mul.9.4.1
  store i32 %add.9.4.1, i32* %arrayidx20.9.4.1, align 4
  br label %for.inc.9.4.1

for.inc.9.4.1:                                    ; preds = %for.inc.8.4.1
  br label %for.inc21.4.1

for.inc21.4.1:                                    ; preds = %for.inc.9.4.1
  %arrayidx.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.5.1 = getelementptr inbounds [10 x i32]* %arrayidx.5.1, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.1, align 4
  br label %for.body8.5.1

for.body8.5.1:                                    ; preds = %for.inc21.4.1
  %arrayidx11.544.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.545.1 = getelementptr inbounds [10 x i32]* %arrayidx11.544.1, i32 0, i64 0
  %450 = load i32* %arrayidx12.545.1, align 4
  %arrayidx16.546.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %451 = load i32* %arrayidx16.546.1, align 4
  %mul.547.1 = mul nsw i32 %450, %451
  %arrayidx19.549.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.550.1 = getelementptr inbounds [10 x i32]* %arrayidx19.549.1, i32 0, i64 5
  %452 = load i32* %arrayidx20.550.1, align 4
  %add.551.1 = add nsw i32 %452, %mul.547.1
  store i32 %add.551.1, i32* %arrayidx20.550.1, align 4
  br label %for.inc.552.1

for.inc.552.1:                                    ; preds = %for.body8.5.1
  %arrayidx11.1.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.1, i32 0, i64 1
  %453 = load i32* %arrayidx12.1.5.1, align 4
  %arrayidx15.1.5.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.1, i32 0, i64 5
  %454 = load i32* %arrayidx16.1.5.1, align 4
  %mul.1.5.1 = mul nsw i32 %453, %454
  %arrayidx19.1.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.1, i32 0, i64 5
  %455 = load i32* %arrayidx20.1.5.1, align 4
  %add.1.5.1 = add nsw i32 %455, %mul.1.5.1
  store i32 %add.1.5.1, i32* %arrayidx20.1.5.1, align 4
  br label %for.inc.1.5.1

for.inc.1.5.1:                                    ; preds = %for.inc.552.1
  %arrayidx11.2.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.1, i32 0, i64 2
  %456 = load i32* %arrayidx12.2.5.1, align 4
  %arrayidx15.2.5.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.1, i32 0, i64 5
  %457 = load i32* %arrayidx16.2.5.1, align 4
  %mul.2.5.1 = mul nsw i32 %456, %457
  %arrayidx19.2.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.1, i32 0, i64 5
  %458 = load i32* %arrayidx20.2.5.1, align 4
  %add.2.5.1 = add nsw i32 %458, %mul.2.5.1
  store i32 %add.2.5.1, i32* %arrayidx20.2.5.1, align 4
  br label %for.inc.2.5.1

for.inc.2.5.1:                                    ; preds = %for.inc.1.5.1
  %arrayidx11.3.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.1, i32 0, i64 3
  %459 = load i32* %arrayidx12.3.5.1, align 4
  %arrayidx15.3.5.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.1, i32 0, i64 5
  %460 = load i32* %arrayidx16.3.5.1, align 4
  %mul.3.5.1 = mul nsw i32 %459, %460
  %arrayidx19.3.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.1, i32 0, i64 5
  %461 = load i32* %arrayidx20.3.5.1, align 4
  %add.3.5.1 = add nsw i32 %461, %mul.3.5.1
  store i32 %add.3.5.1, i32* %arrayidx20.3.5.1, align 4
  br label %for.inc.3.5.1

for.inc.3.5.1:                                    ; preds = %for.inc.2.5.1
  %arrayidx11.4.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.1, i32 0, i64 4
  %462 = load i32* %arrayidx12.4.5.1, align 4
  %arrayidx15.4.5.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.1, i32 0, i64 5
  %463 = load i32* %arrayidx16.4.5.1, align 4
  %mul.4.5.1 = mul nsw i32 %462, %463
  %arrayidx19.4.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.1, i32 0, i64 5
  %464 = load i32* %arrayidx20.4.5.1, align 4
  %add.4.5.1 = add nsw i32 %464, %mul.4.5.1
  store i32 %add.4.5.1, i32* %arrayidx20.4.5.1, align 4
  br label %for.inc.4.5.1

for.inc.4.5.1:                                    ; preds = %for.inc.3.5.1
  %arrayidx11.5.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.1, i32 0, i64 5
  %465 = load i32* %arrayidx12.5.5.1, align 4
  %arrayidx15.5.5.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.1, i32 0, i64 5
  %466 = load i32* %arrayidx16.5.5.1, align 4
  %mul.5.5.1 = mul nsw i32 %465, %466
  %arrayidx19.5.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.1, i32 0, i64 5
  %467 = load i32* %arrayidx20.5.5.1, align 4
  %add.5.5.1 = add nsw i32 %467, %mul.5.5.1
  store i32 %add.5.5.1, i32* %arrayidx20.5.5.1, align 4
  br label %for.inc.5.5.1

for.inc.5.5.1:                                    ; preds = %for.inc.4.5.1
  %arrayidx11.6.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.1, i32 0, i64 6
  %468 = load i32* %arrayidx12.6.5.1, align 4
  %arrayidx15.6.5.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.1, i32 0, i64 5
  %469 = load i32* %arrayidx16.6.5.1, align 4
  %mul.6.5.1 = mul nsw i32 %468, %469
  %arrayidx19.6.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.1, i32 0, i64 5
  %470 = load i32* %arrayidx20.6.5.1, align 4
  %add.6.5.1 = add nsw i32 %470, %mul.6.5.1
  store i32 %add.6.5.1, i32* %arrayidx20.6.5.1, align 4
  br label %for.inc.6.5.1

for.inc.6.5.1:                                    ; preds = %for.inc.5.5.1
  %arrayidx11.7.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.1, i32 0, i64 7
  %471 = load i32* %arrayidx12.7.5.1, align 4
  %arrayidx15.7.5.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.1, i32 0, i64 5
  %472 = load i32* %arrayidx16.7.5.1, align 4
  %mul.7.5.1 = mul nsw i32 %471, %472
  %arrayidx19.7.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.1, i32 0, i64 5
  %473 = load i32* %arrayidx20.7.5.1, align 4
  %add.7.5.1 = add nsw i32 %473, %mul.7.5.1
  store i32 %add.7.5.1, i32* %arrayidx20.7.5.1, align 4
  br label %for.inc.7.5.1

for.inc.7.5.1:                                    ; preds = %for.inc.6.5.1
  %arrayidx11.8.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.1, i32 0, i64 8
  %474 = load i32* %arrayidx12.8.5.1, align 4
  %arrayidx15.8.5.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.1, i32 0, i64 5
  %475 = load i32* %arrayidx16.8.5.1, align 4
  %mul.8.5.1 = mul nsw i32 %474, %475
  %arrayidx19.8.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.1, i32 0, i64 5
  %476 = load i32* %arrayidx20.8.5.1, align 4
  %add.8.5.1 = add nsw i32 %476, %mul.8.5.1
  store i32 %add.8.5.1, i32* %arrayidx20.8.5.1, align 4
  br label %for.inc.8.5.1

for.inc.8.5.1:                                    ; preds = %for.inc.7.5.1
  %arrayidx11.9.5.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.5.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.1, i32 0, i64 9
  %477 = load i32* %arrayidx12.9.5.1, align 4
  %arrayidx15.9.5.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.1, i32 0, i64 5
  %478 = load i32* %arrayidx16.9.5.1, align 4
  %mul.9.5.1 = mul nsw i32 %477, %478
  %arrayidx19.9.5.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.5.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.1, i32 0, i64 5
  %479 = load i32* %arrayidx20.9.5.1, align 4
  %add.9.5.1 = add nsw i32 %479, %mul.9.5.1
  store i32 %add.9.5.1, i32* %arrayidx20.9.5.1, align 4
  br label %for.inc.9.5.1

for.inc.9.5.1:                                    ; preds = %for.inc.8.5.1
  br label %for.inc21.5.1

for.inc21.5.1:                                    ; preds = %for.inc.9.5.1
  %arrayidx.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.6.1 = getelementptr inbounds [10 x i32]* %arrayidx.6.1, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.1, align 4
  br label %for.body8.6.1

for.body8.6.1:                                    ; preds = %for.inc21.5.1
  %arrayidx11.654.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.655.1 = getelementptr inbounds [10 x i32]* %arrayidx11.654.1, i32 0, i64 0
  %480 = load i32* %arrayidx12.655.1, align 4
  %arrayidx16.656.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %481 = load i32* %arrayidx16.656.1, align 4
  %mul.657.1 = mul nsw i32 %480, %481
  %arrayidx19.659.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.660.1 = getelementptr inbounds [10 x i32]* %arrayidx19.659.1, i32 0, i64 6
  %482 = load i32* %arrayidx20.660.1, align 4
  %add.661.1 = add nsw i32 %482, %mul.657.1
  store i32 %add.661.1, i32* %arrayidx20.660.1, align 4
  br label %for.inc.662.1

for.inc.662.1:                                    ; preds = %for.body8.6.1
  %arrayidx11.1.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.1, i32 0, i64 1
  %483 = load i32* %arrayidx12.1.6.1, align 4
  %arrayidx15.1.6.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.1, i32 0, i64 6
  %484 = load i32* %arrayidx16.1.6.1, align 4
  %mul.1.6.1 = mul nsw i32 %483, %484
  %arrayidx19.1.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.1, i32 0, i64 6
  %485 = load i32* %arrayidx20.1.6.1, align 4
  %add.1.6.1 = add nsw i32 %485, %mul.1.6.1
  store i32 %add.1.6.1, i32* %arrayidx20.1.6.1, align 4
  br label %for.inc.1.6.1

for.inc.1.6.1:                                    ; preds = %for.inc.662.1
  %arrayidx11.2.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.1, i32 0, i64 2
  %486 = load i32* %arrayidx12.2.6.1, align 4
  %arrayidx15.2.6.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.1, i32 0, i64 6
  %487 = load i32* %arrayidx16.2.6.1, align 4
  %mul.2.6.1 = mul nsw i32 %486, %487
  %arrayidx19.2.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.1, i32 0, i64 6
  %488 = load i32* %arrayidx20.2.6.1, align 4
  %add.2.6.1 = add nsw i32 %488, %mul.2.6.1
  store i32 %add.2.6.1, i32* %arrayidx20.2.6.1, align 4
  br label %for.inc.2.6.1

for.inc.2.6.1:                                    ; preds = %for.inc.1.6.1
  %arrayidx11.3.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.1, i32 0, i64 3
  %489 = load i32* %arrayidx12.3.6.1, align 4
  %arrayidx15.3.6.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.1, i32 0, i64 6
  %490 = load i32* %arrayidx16.3.6.1, align 4
  %mul.3.6.1 = mul nsw i32 %489, %490
  %arrayidx19.3.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.1, i32 0, i64 6
  %491 = load i32* %arrayidx20.3.6.1, align 4
  %add.3.6.1 = add nsw i32 %491, %mul.3.6.1
  store i32 %add.3.6.1, i32* %arrayidx20.3.6.1, align 4
  br label %for.inc.3.6.1

for.inc.3.6.1:                                    ; preds = %for.inc.2.6.1
  %arrayidx11.4.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.1, i32 0, i64 4
  %492 = load i32* %arrayidx12.4.6.1, align 4
  %arrayidx15.4.6.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.1, i32 0, i64 6
  %493 = load i32* %arrayidx16.4.6.1, align 4
  %mul.4.6.1 = mul nsw i32 %492, %493
  %arrayidx19.4.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.1, i32 0, i64 6
  %494 = load i32* %arrayidx20.4.6.1, align 4
  %add.4.6.1 = add nsw i32 %494, %mul.4.6.1
  store i32 %add.4.6.1, i32* %arrayidx20.4.6.1, align 4
  br label %for.inc.4.6.1

for.inc.4.6.1:                                    ; preds = %for.inc.3.6.1
  %arrayidx11.5.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.1, i32 0, i64 5
  %495 = load i32* %arrayidx12.5.6.1, align 4
  %arrayidx15.5.6.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.1, i32 0, i64 6
  %496 = load i32* %arrayidx16.5.6.1, align 4
  %mul.5.6.1 = mul nsw i32 %495, %496
  %arrayidx19.5.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.1, i32 0, i64 6
  %497 = load i32* %arrayidx20.5.6.1, align 4
  %add.5.6.1 = add nsw i32 %497, %mul.5.6.1
  store i32 %add.5.6.1, i32* %arrayidx20.5.6.1, align 4
  br label %for.inc.5.6.1

for.inc.5.6.1:                                    ; preds = %for.inc.4.6.1
  %arrayidx11.6.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.1, i32 0, i64 6
  %498 = load i32* %arrayidx12.6.6.1, align 4
  %arrayidx15.6.6.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.1, i32 0, i64 6
  %499 = load i32* %arrayidx16.6.6.1, align 4
  %mul.6.6.1 = mul nsw i32 %498, %499
  %arrayidx19.6.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.1, i32 0, i64 6
  %500 = load i32* %arrayidx20.6.6.1, align 4
  %add.6.6.1 = add nsw i32 %500, %mul.6.6.1
  store i32 %add.6.6.1, i32* %arrayidx20.6.6.1, align 4
  br label %for.inc.6.6.1

for.inc.6.6.1:                                    ; preds = %for.inc.5.6.1
  %arrayidx11.7.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.1, i32 0, i64 7
  %501 = load i32* %arrayidx12.7.6.1, align 4
  %arrayidx15.7.6.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.1, i32 0, i64 6
  %502 = load i32* %arrayidx16.7.6.1, align 4
  %mul.7.6.1 = mul nsw i32 %501, %502
  %arrayidx19.7.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.1, i32 0, i64 6
  %503 = load i32* %arrayidx20.7.6.1, align 4
  %add.7.6.1 = add nsw i32 %503, %mul.7.6.1
  store i32 %add.7.6.1, i32* %arrayidx20.7.6.1, align 4
  br label %for.inc.7.6.1

for.inc.7.6.1:                                    ; preds = %for.inc.6.6.1
  %arrayidx11.8.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.1, i32 0, i64 8
  %504 = load i32* %arrayidx12.8.6.1, align 4
  %arrayidx15.8.6.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.1, i32 0, i64 6
  %505 = load i32* %arrayidx16.8.6.1, align 4
  %mul.8.6.1 = mul nsw i32 %504, %505
  %arrayidx19.8.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.1, i32 0, i64 6
  %506 = load i32* %arrayidx20.8.6.1, align 4
  %add.8.6.1 = add nsw i32 %506, %mul.8.6.1
  store i32 %add.8.6.1, i32* %arrayidx20.8.6.1, align 4
  br label %for.inc.8.6.1

for.inc.8.6.1:                                    ; preds = %for.inc.7.6.1
  %arrayidx11.9.6.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.6.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.1, i32 0, i64 9
  %507 = load i32* %arrayidx12.9.6.1, align 4
  %arrayidx15.9.6.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.1, i32 0, i64 6
  %508 = load i32* %arrayidx16.9.6.1, align 4
  %mul.9.6.1 = mul nsw i32 %507, %508
  %arrayidx19.9.6.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.6.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.1, i32 0, i64 6
  %509 = load i32* %arrayidx20.9.6.1, align 4
  %add.9.6.1 = add nsw i32 %509, %mul.9.6.1
  store i32 %add.9.6.1, i32* %arrayidx20.9.6.1, align 4
  br label %for.inc.9.6.1

for.inc.9.6.1:                                    ; preds = %for.inc.8.6.1
  br label %for.inc21.6.1

for.inc21.6.1:                                    ; preds = %for.inc.9.6.1
  %arrayidx.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.7.1 = getelementptr inbounds [10 x i32]* %arrayidx.7.1, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.1, align 4
  br label %for.body8.7.1

for.body8.7.1:                                    ; preds = %for.inc21.6.1
  %arrayidx11.764.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.765.1 = getelementptr inbounds [10 x i32]* %arrayidx11.764.1, i32 0, i64 0
  %510 = load i32* %arrayidx12.765.1, align 4
  %arrayidx16.766.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %511 = load i32* %arrayidx16.766.1, align 4
  %mul.767.1 = mul nsw i32 %510, %511
  %arrayidx19.769.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.770.1 = getelementptr inbounds [10 x i32]* %arrayidx19.769.1, i32 0, i64 7
  %512 = load i32* %arrayidx20.770.1, align 4
  %add.771.1 = add nsw i32 %512, %mul.767.1
  store i32 %add.771.1, i32* %arrayidx20.770.1, align 4
  br label %for.inc.772.1

for.inc.772.1:                                    ; preds = %for.body8.7.1
  %arrayidx11.1.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.1, i32 0, i64 1
  %513 = load i32* %arrayidx12.1.7.1, align 4
  %arrayidx15.1.7.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.1, i32 0, i64 7
  %514 = load i32* %arrayidx16.1.7.1, align 4
  %mul.1.7.1 = mul nsw i32 %513, %514
  %arrayidx19.1.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.1, i32 0, i64 7
  %515 = load i32* %arrayidx20.1.7.1, align 4
  %add.1.7.1 = add nsw i32 %515, %mul.1.7.1
  store i32 %add.1.7.1, i32* %arrayidx20.1.7.1, align 4
  br label %for.inc.1.7.1

for.inc.1.7.1:                                    ; preds = %for.inc.772.1
  %arrayidx11.2.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.1, i32 0, i64 2
  %516 = load i32* %arrayidx12.2.7.1, align 4
  %arrayidx15.2.7.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.1, i32 0, i64 7
  %517 = load i32* %arrayidx16.2.7.1, align 4
  %mul.2.7.1 = mul nsw i32 %516, %517
  %arrayidx19.2.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.1, i32 0, i64 7
  %518 = load i32* %arrayidx20.2.7.1, align 4
  %add.2.7.1 = add nsw i32 %518, %mul.2.7.1
  store i32 %add.2.7.1, i32* %arrayidx20.2.7.1, align 4
  br label %for.inc.2.7.1

for.inc.2.7.1:                                    ; preds = %for.inc.1.7.1
  %arrayidx11.3.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.1, i32 0, i64 3
  %519 = load i32* %arrayidx12.3.7.1, align 4
  %arrayidx15.3.7.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.1, i32 0, i64 7
  %520 = load i32* %arrayidx16.3.7.1, align 4
  %mul.3.7.1 = mul nsw i32 %519, %520
  %arrayidx19.3.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.1, i32 0, i64 7
  %521 = load i32* %arrayidx20.3.7.1, align 4
  %add.3.7.1 = add nsw i32 %521, %mul.3.7.1
  store i32 %add.3.7.1, i32* %arrayidx20.3.7.1, align 4
  br label %for.inc.3.7.1

for.inc.3.7.1:                                    ; preds = %for.inc.2.7.1
  %arrayidx11.4.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.1, i32 0, i64 4
  %522 = load i32* %arrayidx12.4.7.1, align 4
  %arrayidx15.4.7.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.1, i32 0, i64 7
  %523 = load i32* %arrayidx16.4.7.1, align 4
  %mul.4.7.1 = mul nsw i32 %522, %523
  %arrayidx19.4.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.1, i32 0, i64 7
  %524 = load i32* %arrayidx20.4.7.1, align 4
  %add.4.7.1 = add nsw i32 %524, %mul.4.7.1
  store i32 %add.4.7.1, i32* %arrayidx20.4.7.1, align 4
  br label %for.inc.4.7.1

for.inc.4.7.1:                                    ; preds = %for.inc.3.7.1
  %arrayidx11.5.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.1, i32 0, i64 5
  %525 = load i32* %arrayidx12.5.7.1, align 4
  %arrayidx15.5.7.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.1, i32 0, i64 7
  %526 = load i32* %arrayidx16.5.7.1, align 4
  %mul.5.7.1 = mul nsw i32 %525, %526
  %arrayidx19.5.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.1, i32 0, i64 7
  %527 = load i32* %arrayidx20.5.7.1, align 4
  %add.5.7.1 = add nsw i32 %527, %mul.5.7.1
  store i32 %add.5.7.1, i32* %arrayidx20.5.7.1, align 4
  br label %for.inc.5.7.1

for.inc.5.7.1:                                    ; preds = %for.inc.4.7.1
  %arrayidx11.6.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.1, i32 0, i64 6
  %528 = load i32* %arrayidx12.6.7.1, align 4
  %arrayidx15.6.7.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.1, i32 0, i64 7
  %529 = load i32* %arrayidx16.6.7.1, align 4
  %mul.6.7.1 = mul nsw i32 %528, %529
  %arrayidx19.6.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.1, i32 0, i64 7
  %530 = load i32* %arrayidx20.6.7.1, align 4
  %add.6.7.1 = add nsw i32 %530, %mul.6.7.1
  store i32 %add.6.7.1, i32* %arrayidx20.6.7.1, align 4
  br label %for.inc.6.7.1

for.inc.6.7.1:                                    ; preds = %for.inc.5.7.1
  %arrayidx11.7.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.1, i32 0, i64 7
  %531 = load i32* %arrayidx12.7.7.1, align 4
  %arrayidx15.7.7.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.1, i32 0, i64 7
  %532 = load i32* %arrayidx16.7.7.1, align 4
  %mul.7.7.1 = mul nsw i32 %531, %532
  %arrayidx19.7.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.1, i32 0, i64 7
  %533 = load i32* %arrayidx20.7.7.1, align 4
  %add.7.7.1 = add nsw i32 %533, %mul.7.7.1
  store i32 %add.7.7.1, i32* %arrayidx20.7.7.1, align 4
  br label %for.inc.7.7.1

for.inc.7.7.1:                                    ; preds = %for.inc.6.7.1
  %arrayidx11.8.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.1, i32 0, i64 8
  %534 = load i32* %arrayidx12.8.7.1, align 4
  %arrayidx15.8.7.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.1, i32 0, i64 7
  %535 = load i32* %arrayidx16.8.7.1, align 4
  %mul.8.7.1 = mul nsw i32 %534, %535
  %arrayidx19.8.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.1, i32 0, i64 7
  %536 = load i32* %arrayidx20.8.7.1, align 4
  %add.8.7.1 = add nsw i32 %536, %mul.8.7.1
  store i32 %add.8.7.1, i32* %arrayidx20.8.7.1, align 4
  br label %for.inc.8.7.1

for.inc.8.7.1:                                    ; preds = %for.inc.7.7.1
  %arrayidx11.9.7.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.7.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.1, i32 0, i64 9
  %537 = load i32* %arrayidx12.9.7.1, align 4
  %arrayidx15.9.7.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.1, i32 0, i64 7
  %538 = load i32* %arrayidx16.9.7.1, align 4
  %mul.9.7.1 = mul nsw i32 %537, %538
  %arrayidx19.9.7.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.7.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.1, i32 0, i64 7
  %539 = load i32* %arrayidx20.9.7.1, align 4
  %add.9.7.1 = add nsw i32 %539, %mul.9.7.1
  store i32 %add.9.7.1, i32* %arrayidx20.9.7.1, align 4
  br label %for.inc.9.7.1

for.inc.9.7.1:                                    ; preds = %for.inc.8.7.1
  br label %for.inc21.7.1

for.inc21.7.1:                                    ; preds = %for.inc.9.7.1
  %arrayidx.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.8.1 = getelementptr inbounds [10 x i32]* %arrayidx.8.1, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.1, align 4
  br label %for.body8.8.1

for.body8.8.1:                                    ; preds = %for.inc21.7.1
  %arrayidx11.874.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.875.1 = getelementptr inbounds [10 x i32]* %arrayidx11.874.1, i32 0, i64 0
  %540 = load i32* %arrayidx12.875.1, align 4
  %arrayidx16.876.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %541 = load i32* %arrayidx16.876.1, align 4
  %mul.877.1 = mul nsw i32 %540, %541
  %arrayidx19.879.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.880.1 = getelementptr inbounds [10 x i32]* %arrayidx19.879.1, i32 0, i64 8
  %542 = load i32* %arrayidx20.880.1, align 4
  %add.881.1 = add nsw i32 %542, %mul.877.1
  store i32 %add.881.1, i32* %arrayidx20.880.1, align 4
  br label %for.inc.882.1

for.inc.882.1:                                    ; preds = %for.body8.8.1
  %arrayidx11.1.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.1, i32 0, i64 1
  %543 = load i32* %arrayidx12.1.8.1, align 4
  %arrayidx15.1.8.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.1, i32 0, i64 8
  %544 = load i32* %arrayidx16.1.8.1, align 4
  %mul.1.8.1 = mul nsw i32 %543, %544
  %arrayidx19.1.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.1, i32 0, i64 8
  %545 = load i32* %arrayidx20.1.8.1, align 4
  %add.1.8.1 = add nsw i32 %545, %mul.1.8.1
  store i32 %add.1.8.1, i32* %arrayidx20.1.8.1, align 4
  br label %for.inc.1.8.1

for.inc.1.8.1:                                    ; preds = %for.inc.882.1
  %arrayidx11.2.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.1, i32 0, i64 2
  %546 = load i32* %arrayidx12.2.8.1, align 4
  %arrayidx15.2.8.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.1, i32 0, i64 8
  %547 = load i32* %arrayidx16.2.8.1, align 4
  %mul.2.8.1 = mul nsw i32 %546, %547
  %arrayidx19.2.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.1, i32 0, i64 8
  %548 = load i32* %arrayidx20.2.8.1, align 4
  %add.2.8.1 = add nsw i32 %548, %mul.2.8.1
  store i32 %add.2.8.1, i32* %arrayidx20.2.8.1, align 4
  br label %for.inc.2.8.1

for.inc.2.8.1:                                    ; preds = %for.inc.1.8.1
  %arrayidx11.3.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.1, i32 0, i64 3
  %549 = load i32* %arrayidx12.3.8.1, align 4
  %arrayidx15.3.8.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.1, i32 0, i64 8
  %550 = load i32* %arrayidx16.3.8.1, align 4
  %mul.3.8.1 = mul nsw i32 %549, %550
  %arrayidx19.3.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.1, i32 0, i64 8
  %551 = load i32* %arrayidx20.3.8.1, align 4
  %add.3.8.1 = add nsw i32 %551, %mul.3.8.1
  store i32 %add.3.8.1, i32* %arrayidx20.3.8.1, align 4
  br label %for.inc.3.8.1

for.inc.3.8.1:                                    ; preds = %for.inc.2.8.1
  %arrayidx11.4.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.1, i32 0, i64 4
  %552 = load i32* %arrayidx12.4.8.1, align 4
  %arrayidx15.4.8.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.1, i32 0, i64 8
  %553 = load i32* %arrayidx16.4.8.1, align 4
  %mul.4.8.1 = mul nsw i32 %552, %553
  %arrayidx19.4.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.1, i32 0, i64 8
  %554 = load i32* %arrayidx20.4.8.1, align 4
  %add.4.8.1 = add nsw i32 %554, %mul.4.8.1
  store i32 %add.4.8.1, i32* %arrayidx20.4.8.1, align 4
  br label %for.inc.4.8.1

for.inc.4.8.1:                                    ; preds = %for.inc.3.8.1
  %arrayidx11.5.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.1, i32 0, i64 5
  %555 = load i32* %arrayidx12.5.8.1, align 4
  %arrayidx15.5.8.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.1, i32 0, i64 8
  %556 = load i32* %arrayidx16.5.8.1, align 4
  %mul.5.8.1 = mul nsw i32 %555, %556
  %arrayidx19.5.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.1, i32 0, i64 8
  %557 = load i32* %arrayidx20.5.8.1, align 4
  %add.5.8.1 = add nsw i32 %557, %mul.5.8.1
  store i32 %add.5.8.1, i32* %arrayidx20.5.8.1, align 4
  br label %for.inc.5.8.1

for.inc.5.8.1:                                    ; preds = %for.inc.4.8.1
  %arrayidx11.6.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.1, i32 0, i64 6
  %558 = load i32* %arrayidx12.6.8.1, align 4
  %arrayidx15.6.8.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.1, i32 0, i64 8
  %559 = load i32* %arrayidx16.6.8.1, align 4
  %mul.6.8.1 = mul nsw i32 %558, %559
  %arrayidx19.6.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.1, i32 0, i64 8
  %560 = load i32* %arrayidx20.6.8.1, align 4
  %add.6.8.1 = add nsw i32 %560, %mul.6.8.1
  store i32 %add.6.8.1, i32* %arrayidx20.6.8.1, align 4
  br label %for.inc.6.8.1

for.inc.6.8.1:                                    ; preds = %for.inc.5.8.1
  %arrayidx11.7.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.1, i32 0, i64 7
  %561 = load i32* %arrayidx12.7.8.1, align 4
  %arrayidx15.7.8.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.1, i32 0, i64 8
  %562 = load i32* %arrayidx16.7.8.1, align 4
  %mul.7.8.1 = mul nsw i32 %561, %562
  %arrayidx19.7.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.1, i32 0, i64 8
  %563 = load i32* %arrayidx20.7.8.1, align 4
  %add.7.8.1 = add nsw i32 %563, %mul.7.8.1
  store i32 %add.7.8.1, i32* %arrayidx20.7.8.1, align 4
  br label %for.inc.7.8.1

for.inc.7.8.1:                                    ; preds = %for.inc.6.8.1
  %arrayidx11.8.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.1, i32 0, i64 8
  %564 = load i32* %arrayidx12.8.8.1, align 4
  %arrayidx15.8.8.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.1, i32 0, i64 8
  %565 = load i32* %arrayidx16.8.8.1, align 4
  %mul.8.8.1 = mul nsw i32 %564, %565
  %arrayidx19.8.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.1, i32 0, i64 8
  %566 = load i32* %arrayidx20.8.8.1, align 4
  %add.8.8.1 = add nsw i32 %566, %mul.8.8.1
  store i32 %add.8.8.1, i32* %arrayidx20.8.8.1, align 4
  br label %for.inc.8.8.1

for.inc.8.8.1:                                    ; preds = %for.inc.7.8.1
  %arrayidx11.9.8.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.8.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.1, i32 0, i64 9
  %567 = load i32* %arrayidx12.9.8.1, align 4
  %arrayidx15.9.8.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.1, i32 0, i64 8
  %568 = load i32* %arrayidx16.9.8.1, align 4
  %mul.9.8.1 = mul nsw i32 %567, %568
  %arrayidx19.9.8.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.8.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.1, i32 0, i64 8
  %569 = load i32* %arrayidx20.9.8.1, align 4
  %add.9.8.1 = add nsw i32 %569, %mul.9.8.1
  store i32 %add.9.8.1, i32* %arrayidx20.9.8.1, align 4
  br label %for.inc.9.8.1

for.inc.9.8.1:                                    ; preds = %for.inc.8.8.1
  br label %for.inc21.8.1

for.inc21.8.1:                                    ; preds = %for.inc.9.8.1
  %arrayidx.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx5.9.1 = getelementptr inbounds [10 x i32]* %arrayidx.9.1, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.1, align 4
  br label %for.body8.9.1

for.body8.9.1:                                    ; preds = %for.inc21.8.1
  %arrayidx11.984.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.985.1 = getelementptr inbounds [10 x i32]* %arrayidx11.984.1, i32 0, i64 0
  %570 = load i32* %arrayidx12.985.1, align 4
  %arrayidx16.986.1 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %571 = load i32* %arrayidx16.986.1, align 4
  %mul.987.1 = mul nsw i32 %570, %571
  %arrayidx19.989.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.990.1 = getelementptr inbounds [10 x i32]* %arrayidx19.989.1, i32 0, i64 9
  %572 = load i32* %arrayidx20.990.1, align 4
  %add.991.1 = add nsw i32 %572, %mul.987.1
  store i32 %add.991.1, i32* %arrayidx20.990.1, align 4
  br label %for.inc.992.1

for.inc.992.1:                                    ; preds = %for.body8.9.1
  %arrayidx11.1.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.1.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.1, i32 0, i64 1
  %573 = load i32* %arrayidx12.1.9.1, align 4
  %arrayidx15.1.9.1 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.1, i32 0, i64 9
  %574 = load i32* %arrayidx16.1.9.1, align 4
  %mul.1.9.1 = mul nsw i32 %573, %574
  %arrayidx19.1.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.1.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.1, i32 0, i64 9
  %575 = load i32* %arrayidx20.1.9.1, align 4
  %add.1.9.1 = add nsw i32 %575, %mul.1.9.1
  store i32 %add.1.9.1, i32* %arrayidx20.1.9.1, align 4
  br label %for.inc.1.9.1

for.inc.1.9.1:                                    ; preds = %for.inc.992.1
  %arrayidx11.2.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.2.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.1, i32 0, i64 2
  %576 = load i32* %arrayidx12.2.9.1, align 4
  %arrayidx15.2.9.1 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.1, i32 0, i64 9
  %577 = load i32* %arrayidx16.2.9.1, align 4
  %mul.2.9.1 = mul nsw i32 %576, %577
  %arrayidx19.2.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.2.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.1, i32 0, i64 9
  %578 = load i32* %arrayidx20.2.9.1, align 4
  %add.2.9.1 = add nsw i32 %578, %mul.2.9.1
  store i32 %add.2.9.1, i32* %arrayidx20.2.9.1, align 4
  br label %for.inc.2.9.1

for.inc.2.9.1:                                    ; preds = %for.inc.1.9.1
  %arrayidx11.3.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.3.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.1, i32 0, i64 3
  %579 = load i32* %arrayidx12.3.9.1, align 4
  %arrayidx15.3.9.1 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.1, i32 0, i64 9
  %580 = load i32* %arrayidx16.3.9.1, align 4
  %mul.3.9.1 = mul nsw i32 %579, %580
  %arrayidx19.3.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.3.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.1, i32 0, i64 9
  %581 = load i32* %arrayidx20.3.9.1, align 4
  %add.3.9.1 = add nsw i32 %581, %mul.3.9.1
  store i32 %add.3.9.1, i32* %arrayidx20.3.9.1, align 4
  br label %for.inc.3.9.1

for.inc.3.9.1:                                    ; preds = %for.inc.2.9.1
  %arrayidx11.4.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.4.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.1, i32 0, i64 4
  %582 = load i32* %arrayidx12.4.9.1, align 4
  %arrayidx15.4.9.1 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.1, i32 0, i64 9
  %583 = load i32* %arrayidx16.4.9.1, align 4
  %mul.4.9.1 = mul nsw i32 %582, %583
  %arrayidx19.4.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.4.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.1, i32 0, i64 9
  %584 = load i32* %arrayidx20.4.9.1, align 4
  %add.4.9.1 = add nsw i32 %584, %mul.4.9.1
  store i32 %add.4.9.1, i32* %arrayidx20.4.9.1, align 4
  br label %for.inc.4.9.1

for.inc.4.9.1:                                    ; preds = %for.inc.3.9.1
  %arrayidx11.5.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.5.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.1, i32 0, i64 5
  %585 = load i32* %arrayidx12.5.9.1, align 4
  %arrayidx15.5.9.1 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.1, i32 0, i64 9
  %586 = load i32* %arrayidx16.5.9.1, align 4
  %mul.5.9.1 = mul nsw i32 %585, %586
  %arrayidx19.5.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.5.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.1, i32 0, i64 9
  %587 = load i32* %arrayidx20.5.9.1, align 4
  %add.5.9.1 = add nsw i32 %587, %mul.5.9.1
  store i32 %add.5.9.1, i32* %arrayidx20.5.9.1, align 4
  br label %for.inc.5.9.1

for.inc.5.9.1:                                    ; preds = %for.inc.4.9.1
  %arrayidx11.6.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.6.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.1, i32 0, i64 6
  %588 = load i32* %arrayidx12.6.9.1, align 4
  %arrayidx15.6.9.1 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.1, i32 0, i64 9
  %589 = load i32* %arrayidx16.6.9.1, align 4
  %mul.6.9.1 = mul nsw i32 %588, %589
  %arrayidx19.6.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.6.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.1, i32 0, i64 9
  %590 = load i32* %arrayidx20.6.9.1, align 4
  %add.6.9.1 = add nsw i32 %590, %mul.6.9.1
  store i32 %add.6.9.1, i32* %arrayidx20.6.9.1, align 4
  br label %for.inc.6.9.1

for.inc.6.9.1:                                    ; preds = %for.inc.5.9.1
  %arrayidx11.7.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.7.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.1, i32 0, i64 7
  %591 = load i32* %arrayidx12.7.9.1, align 4
  %arrayidx15.7.9.1 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.1, i32 0, i64 9
  %592 = load i32* %arrayidx16.7.9.1, align 4
  %mul.7.9.1 = mul nsw i32 %591, %592
  %arrayidx19.7.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.7.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.1, i32 0, i64 9
  %593 = load i32* %arrayidx20.7.9.1, align 4
  %add.7.9.1 = add nsw i32 %593, %mul.7.9.1
  store i32 %add.7.9.1, i32* %arrayidx20.7.9.1, align 4
  br label %for.inc.7.9.1

for.inc.7.9.1:                                    ; preds = %for.inc.6.9.1
  %arrayidx11.8.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.8.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.1, i32 0, i64 8
  %594 = load i32* %arrayidx12.8.9.1, align 4
  %arrayidx15.8.9.1 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.1, i32 0, i64 9
  %595 = load i32* %arrayidx16.8.9.1, align 4
  %mul.8.9.1 = mul nsw i32 %594, %595
  %arrayidx19.8.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.8.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.1, i32 0, i64 9
  %596 = load i32* %arrayidx20.8.9.1, align 4
  %add.8.9.1 = add nsw i32 %596, %mul.8.9.1
  store i32 %add.8.9.1, i32* %arrayidx20.8.9.1, align 4
  br label %for.inc.8.9.1

for.inc.8.9.1:                                    ; preds = %for.inc.7.9.1
  %arrayidx11.9.9.1 = getelementptr inbounds [10 x i32]* %a, i64 1
  %arrayidx12.9.9.1 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.1, i32 0, i64 9
  %597 = load i32* %arrayidx12.9.9.1, align 4
  %arrayidx15.9.9.1 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.1 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.1, i32 0, i64 9
  %598 = load i32* %arrayidx16.9.9.1, align 4
  %mul.9.9.1 = mul nsw i32 %597, %598
  %arrayidx19.9.9.1 = getelementptr inbounds [10 x i32]* %c, i64 1
  %arrayidx20.9.9.1 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.1, i32 0, i64 9
  %599 = load i32* %arrayidx20.9.9.1, align 4
  %add.9.9.1 = add nsw i32 %599, %mul.9.9.1
  store i32 %add.9.9.1, i32* %arrayidx20.9.9.1, align 4
  br label %for.inc.9.9.1

for.inc.9.9.1:                                    ; preds = %for.inc.8.9.1
  br label %for.inc21.9.1

for.inc21.9.1:                                    ; preds = %for.inc.9.9.1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.9.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc24.1
  %arrayidx.2187 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.2188 = getelementptr inbounds [10 x i32]* %arrayidx.2187, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.2188, align 4
  br label %for.body8.2196

for.body8.2196:                                   ; preds = %for.body3.2
  %arrayidx11.2189 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2190 = getelementptr inbounds [10 x i32]* %arrayidx11.2189, i32 0, i64 0
  %600 = load i32* %arrayidx12.2190, align 4
  %arrayidx16.2191 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %601 = load i32* %arrayidx16.2191, align 4
  %mul.2192 = mul nsw i32 %600, %601
  %arrayidx19.2193 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2194 = getelementptr inbounds [10 x i32]* %arrayidx19.2193, i32 0, i64 0
  %602 = load i32* %arrayidx20.2194, align 4
  %add.2195 = add nsw i32 %602, %mul.2192
  store i32 %add.2195, i32* %arrayidx20.2194, align 4
  br label %for.inc.2205

for.inc.2205:                                     ; preds = %for.body8.2196
  %arrayidx11.1.2197 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.2198 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2197, i32 0, i64 1
  %603 = load i32* %arrayidx12.1.2198, align 4
  %arrayidx15.1.2199 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2200 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2199, i32 0, i64 0
  %604 = load i32* %arrayidx16.1.2200, align 4
  %mul.1.2201 = mul nsw i32 %603, %604
  %arrayidx19.1.2202 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.2203 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2202, i32 0, i64 0
  %605 = load i32* %arrayidx20.1.2203, align 4
  %add.1.2204 = add nsw i32 %605, %mul.1.2201
  store i32 %add.1.2204, i32* %arrayidx20.1.2203, align 4
  br label %for.inc.1.2214

for.inc.1.2214:                                   ; preds = %for.inc.2205
  %arrayidx11.2.2206 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.2207 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2206, i32 0, i64 2
  %606 = load i32* %arrayidx12.2.2207, align 4
  %arrayidx15.2.2208 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2209 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2208, i32 0, i64 0
  %607 = load i32* %arrayidx16.2.2209, align 4
  %mul.2.2210 = mul nsw i32 %606, %607
  %arrayidx19.2.2211 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.2212 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2211, i32 0, i64 0
  %608 = load i32* %arrayidx20.2.2212, align 4
  %add.2.2213 = add nsw i32 %608, %mul.2.2210
  store i32 %add.2.2213, i32* %arrayidx20.2.2212, align 4
  br label %for.inc.2.2223

for.inc.2.2223:                                   ; preds = %for.inc.1.2214
  %arrayidx11.3.2215 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.2216 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2215, i32 0, i64 3
  %609 = load i32* %arrayidx12.3.2216, align 4
  %arrayidx15.3.2217 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2218 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2217, i32 0, i64 0
  %610 = load i32* %arrayidx16.3.2218, align 4
  %mul.3.2219 = mul nsw i32 %609, %610
  %arrayidx19.3.2220 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.2221 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2220, i32 0, i64 0
  %611 = load i32* %arrayidx20.3.2221, align 4
  %add.3.2222 = add nsw i32 %611, %mul.3.2219
  store i32 %add.3.2222, i32* %arrayidx20.3.2221, align 4
  br label %for.inc.3.2232

for.inc.3.2232:                                   ; preds = %for.inc.2.2223
  %arrayidx11.4.2224 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.2225 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2224, i32 0, i64 4
  %612 = load i32* %arrayidx12.4.2225, align 4
  %arrayidx15.4.2226 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2227 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2226, i32 0, i64 0
  %613 = load i32* %arrayidx16.4.2227, align 4
  %mul.4.2228 = mul nsw i32 %612, %613
  %arrayidx19.4.2229 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.2230 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2229, i32 0, i64 0
  %614 = load i32* %arrayidx20.4.2230, align 4
  %add.4.2231 = add nsw i32 %614, %mul.4.2228
  store i32 %add.4.2231, i32* %arrayidx20.4.2230, align 4
  br label %for.inc.4.2241

for.inc.4.2241:                                   ; preds = %for.inc.3.2232
  %arrayidx11.5.2233 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.2234 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2233, i32 0, i64 5
  %615 = load i32* %arrayidx12.5.2234, align 4
  %arrayidx15.5.2235 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2236 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2235, i32 0, i64 0
  %616 = load i32* %arrayidx16.5.2236, align 4
  %mul.5.2237 = mul nsw i32 %615, %616
  %arrayidx19.5.2238 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.2239 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2238, i32 0, i64 0
  %617 = load i32* %arrayidx20.5.2239, align 4
  %add.5.2240 = add nsw i32 %617, %mul.5.2237
  store i32 %add.5.2240, i32* %arrayidx20.5.2239, align 4
  br label %for.inc.5.2250

for.inc.5.2250:                                   ; preds = %for.inc.4.2241
  %arrayidx11.6.2242 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.2243 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2242, i32 0, i64 6
  %618 = load i32* %arrayidx12.6.2243, align 4
  %arrayidx15.6.2244 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2245 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2244, i32 0, i64 0
  %619 = load i32* %arrayidx16.6.2245, align 4
  %mul.6.2246 = mul nsw i32 %618, %619
  %arrayidx19.6.2247 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.2248 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2247, i32 0, i64 0
  %620 = load i32* %arrayidx20.6.2248, align 4
  %add.6.2249 = add nsw i32 %620, %mul.6.2246
  store i32 %add.6.2249, i32* %arrayidx20.6.2248, align 4
  br label %for.inc.6.2259

for.inc.6.2259:                                   ; preds = %for.inc.5.2250
  %arrayidx11.7.2251 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.2252 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2251, i32 0, i64 7
  %621 = load i32* %arrayidx12.7.2252, align 4
  %arrayidx15.7.2253 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2254 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2253, i32 0, i64 0
  %622 = load i32* %arrayidx16.7.2254, align 4
  %mul.7.2255 = mul nsw i32 %621, %622
  %arrayidx19.7.2256 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.2257 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2256, i32 0, i64 0
  %623 = load i32* %arrayidx20.7.2257, align 4
  %add.7.2258 = add nsw i32 %623, %mul.7.2255
  store i32 %add.7.2258, i32* %arrayidx20.7.2257, align 4
  br label %for.inc.7.2268

for.inc.7.2268:                                   ; preds = %for.inc.6.2259
  %arrayidx11.8.2260 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.2261 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2260, i32 0, i64 8
  %624 = load i32* %arrayidx12.8.2261, align 4
  %arrayidx15.8.2262 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2263 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2262, i32 0, i64 0
  %625 = load i32* %arrayidx16.8.2263, align 4
  %mul.8.2264 = mul nsw i32 %624, %625
  %arrayidx19.8.2265 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.2266 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2265, i32 0, i64 0
  %626 = load i32* %arrayidx20.8.2266, align 4
  %add.8.2267 = add nsw i32 %626, %mul.8.2264
  store i32 %add.8.2267, i32* %arrayidx20.8.2266, align 4
  br label %for.inc.8.2277

for.inc.8.2277:                                   ; preds = %for.inc.7.2268
  %arrayidx11.9.2269 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.2270 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2269, i32 0, i64 9
  %627 = load i32* %arrayidx12.9.2270, align 4
  %arrayidx15.9.2271 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2272 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2271, i32 0, i64 0
  %628 = load i32* %arrayidx16.9.2272, align 4
  %mul.9.2273 = mul nsw i32 %627, %628
  %arrayidx19.9.2274 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.2275 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2274, i32 0, i64 0
  %629 = load i32* %arrayidx20.9.2275, align 4
  %add.9.2276 = add nsw i32 %629, %mul.9.2273
  store i32 %add.9.2276, i32* %arrayidx20.9.2275, align 4
  br label %for.inc.9.2278

for.inc.9.2278:                                   ; preds = %for.inc.8.2277
  br label %for.inc21.2279

for.inc21.2279:                                   ; preds = %for.inc.9.2278
  %arrayidx.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [10 x i32]* %arrayidx.1.2, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.2, align 4
  br label %for.body8.1.2

for.body8.1.2:                                    ; preds = %for.inc21.2279
  %arrayidx11.14.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.15.2 = getelementptr inbounds [10 x i32]* %arrayidx11.14.2, i32 0, i64 0
  %630 = load i32* %arrayidx12.15.2, align 4
  %arrayidx16.16.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %631 = load i32* %arrayidx16.16.2, align 4
  %mul.17.2 = mul nsw i32 %630, %631
  %arrayidx19.19.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.110.2 = getelementptr inbounds [10 x i32]* %arrayidx19.19.2, i32 0, i64 1
  %632 = load i32* %arrayidx20.110.2, align 4
  %add.111.2 = add nsw i32 %632, %mul.17.2
  store i32 %add.111.2, i32* %arrayidx20.110.2, align 4
  br label %for.inc.112.2

for.inc.112.2:                                    ; preds = %for.body8.1.2
  %arrayidx11.1.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.2, i32 0, i64 1
  %633 = load i32* %arrayidx12.1.1.2, align 4
  %arrayidx15.1.1.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.2, i32 0, i64 1
  %634 = load i32* %arrayidx16.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %633, %634
  %arrayidx19.1.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.2, i32 0, i64 1
  %635 = load i32* %arrayidx20.1.1.2, align 4
  %add.1.1.2 = add nsw i32 %635, %mul.1.1.2
  store i32 %add.1.1.2, i32* %arrayidx20.1.1.2, align 4
  br label %for.inc.1.1.2

for.inc.1.1.2:                                    ; preds = %for.inc.112.2
  %arrayidx11.2.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.2, i32 0, i64 2
  %636 = load i32* %arrayidx12.2.1.2, align 4
  %arrayidx15.2.1.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.2, i32 0, i64 1
  %637 = load i32* %arrayidx16.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %636, %637
  %arrayidx19.2.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.2, i32 0, i64 1
  %638 = load i32* %arrayidx20.2.1.2, align 4
  %add.2.1.2 = add nsw i32 %638, %mul.2.1.2
  store i32 %add.2.1.2, i32* %arrayidx20.2.1.2, align 4
  br label %for.inc.2.1.2

for.inc.2.1.2:                                    ; preds = %for.inc.1.1.2
  %arrayidx11.3.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.2, i32 0, i64 3
  %639 = load i32* %arrayidx12.3.1.2, align 4
  %arrayidx15.3.1.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.2, i32 0, i64 1
  %640 = load i32* %arrayidx16.3.1.2, align 4
  %mul.3.1.2 = mul nsw i32 %639, %640
  %arrayidx19.3.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.2, i32 0, i64 1
  %641 = load i32* %arrayidx20.3.1.2, align 4
  %add.3.1.2 = add nsw i32 %641, %mul.3.1.2
  store i32 %add.3.1.2, i32* %arrayidx20.3.1.2, align 4
  br label %for.inc.3.1.2

for.inc.3.1.2:                                    ; preds = %for.inc.2.1.2
  %arrayidx11.4.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.2, i32 0, i64 4
  %642 = load i32* %arrayidx12.4.1.2, align 4
  %arrayidx15.4.1.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.2, i32 0, i64 1
  %643 = load i32* %arrayidx16.4.1.2, align 4
  %mul.4.1.2 = mul nsw i32 %642, %643
  %arrayidx19.4.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.2, i32 0, i64 1
  %644 = load i32* %arrayidx20.4.1.2, align 4
  %add.4.1.2 = add nsw i32 %644, %mul.4.1.2
  store i32 %add.4.1.2, i32* %arrayidx20.4.1.2, align 4
  br label %for.inc.4.1.2

for.inc.4.1.2:                                    ; preds = %for.inc.3.1.2
  %arrayidx11.5.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.2, i32 0, i64 5
  %645 = load i32* %arrayidx12.5.1.2, align 4
  %arrayidx15.5.1.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.2, i32 0, i64 1
  %646 = load i32* %arrayidx16.5.1.2, align 4
  %mul.5.1.2 = mul nsw i32 %645, %646
  %arrayidx19.5.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.2, i32 0, i64 1
  %647 = load i32* %arrayidx20.5.1.2, align 4
  %add.5.1.2 = add nsw i32 %647, %mul.5.1.2
  store i32 %add.5.1.2, i32* %arrayidx20.5.1.2, align 4
  br label %for.inc.5.1.2

for.inc.5.1.2:                                    ; preds = %for.inc.4.1.2
  %arrayidx11.6.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.2, i32 0, i64 6
  %648 = load i32* %arrayidx12.6.1.2, align 4
  %arrayidx15.6.1.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.2, i32 0, i64 1
  %649 = load i32* %arrayidx16.6.1.2, align 4
  %mul.6.1.2 = mul nsw i32 %648, %649
  %arrayidx19.6.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.2, i32 0, i64 1
  %650 = load i32* %arrayidx20.6.1.2, align 4
  %add.6.1.2 = add nsw i32 %650, %mul.6.1.2
  store i32 %add.6.1.2, i32* %arrayidx20.6.1.2, align 4
  br label %for.inc.6.1.2

for.inc.6.1.2:                                    ; preds = %for.inc.5.1.2
  %arrayidx11.7.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.2, i32 0, i64 7
  %651 = load i32* %arrayidx12.7.1.2, align 4
  %arrayidx15.7.1.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.2, i32 0, i64 1
  %652 = load i32* %arrayidx16.7.1.2, align 4
  %mul.7.1.2 = mul nsw i32 %651, %652
  %arrayidx19.7.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.2, i32 0, i64 1
  %653 = load i32* %arrayidx20.7.1.2, align 4
  %add.7.1.2 = add nsw i32 %653, %mul.7.1.2
  store i32 %add.7.1.2, i32* %arrayidx20.7.1.2, align 4
  br label %for.inc.7.1.2

for.inc.7.1.2:                                    ; preds = %for.inc.6.1.2
  %arrayidx11.8.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.2, i32 0, i64 8
  %654 = load i32* %arrayidx12.8.1.2, align 4
  %arrayidx15.8.1.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.2, i32 0, i64 1
  %655 = load i32* %arrayidx16.8.1.2, align 4
  %mul.8.1.2 = mul nsw i32 %654, %655
  %arrayidx19.8.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.2, i32 0, i64 1
  %656 = load i32* %arrayidx20.8.1.2, align 4
  %add.8.1.2 = add nsw i32 %656, %mul.8.1.2
  store i32 %add.8.1.2, i32* %arrayidx20.8.1.2, align 4
  br label %for.inc.8.1.2

for.inc.8.1.2:                                    ; preds = %for.inc.7.1.2
  %arrayidx11.9.1.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.1.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.2, i32 0, i64 9
  %657 = load i32* %arrayidx12.9.1.2, align 4
  %arrayidx15.9.1.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.2, i32 0, i64 1
  %658 = load i32* %arrayidx16.9.1.2, align 4
  %mul.9.1.2 = mul nsw i32 %657, %658
  %arrayidx19.9.1.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.1.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.2, i32 0, i64 1
  %659 = load i32* %arrayidx20.9.1.2, align 4
  %add.9.1.2 = add nsw i32 %659, %mul.9.1.2
  store i32 %add.9.1.2, i32* %arrayidx20.9.1.2, align 4
  br label %for.inc.9.1.2

for.inc.9.1.2:                                    ; preds = %for.inc.8.1.2
  br label %for.inc21.1.2

for.inc21.1.2:                                    ; preds = %for.inc.9.1.2
  %arrayidx.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [10 x i32]* %arrayidx.2.2, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.2, align 4
  br label %for.body8.2.2

for.body8.2.2:                                    ; preds = %for.inc21.1.2
  %arrayidx11.214.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.215.2 = getelementptr inbounds [10 x i32]* %arrayidx11.214.2, i32 0, i64 0
  %660 = load i32* %arrayidx12.215.2, align 4
  %arrayidx16.216.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %661 = load i32* %arrayidx16.216.2, align 4
  %mul.217.2 = mul nsw i32 %660, %661
  %arrayidx19.219.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.220.2 = getelementptr inbounds [10 x i32]* %arrayidx19.219.2, i32 0, i64 2
  %662 = load i32* %arrayidx20.220.2, align 4
  %add.221.2 = add nsw i32 %662, %mul.217.2
  store i32 %add.221.2, i32* %arrayidx20.220.2, align 4
  br label %for.inc.222.2

for.inc.222.2:                                    ; preds = %for.body8.2.2
  %arrayidx11.1.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.2, i32 0, i64 1
  %663 = load i32* %arrayidx12.1.2.2, align 4
  %arrayidx15.1.2.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.2, i32 0, i64 2
  %664 = load i32* %arrayidx16.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %663, %664
  %arrayidx19.1.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.2, i32 0, i64 2
  %665 = load i32* %arrayidx20.1.2.2, align 4
  %add.1.2.2 = add nsw i32 %665, %mul.1.2.2
  store i32 %add.1.2.2, i32* %arrayidx20.1.2.2, align 4
  br label %for.inc.1.2.2

for.inc.1.2.2:                                    ; preds = %for.inc.222.2
  %arrayidx11.2.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.2, i32 0, i64 2
  %666 = load i32* %arrayidx12.2.2.2, align 4
  %arrayidx15.2.2.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.2, i32 0, i64 2
  %667 = load i32* %arrayidx16.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %666, %667
  %arrayidx19.2.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.2, i32 0, i64 2
  %668 = load i32* %arrayidx20.2.2.2, align 4
  %add.2.2.2 = add nsw i32 %668, %mul.2.2.2
  store i32 %add.2.2.2, i32* %arrayidx20.2.2.2, align 4
  br label %for.inc.2.2.2

for.inc.2.2.2:                                    ; preds = %for.inc.1.2.2
  %arrayidx11.3.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.2, i32 0, i64 3
  %669 = load i32* %arrayidx12.3.2.2, align 4
  %arrayidx15.3.2.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.2, i32 0, i64 2
  %670 = load i32* %arrayidx16.3.2.2, align 4
  %mul.3.2.2 = mul nsw i32 %669, %670
  %arrayidx19.3.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.2, i32 0, i64 2
  %671 = load i32* %arrayidx20.3.2.2, align 4
  %add.3.2.2 = add nsw i32 %671, %mul.3.2.2
  store i32 %add.3.2.2, i32* %arrayidx20.3.2.2, align 4
  br label %for.inc.3.2.2

for.inc.3.2.2:                                    ; preds = %for.inc.2.2.2
  %arrayidx11.4.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.2, i32 0, i64 4
  %672 = load i32* %arrayidx12.4.2.2, align 4
  %arrayidx15.4.2.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.2, i32 0, i64 2
  %673 = load i32* %arrayidx16.4.2.2, align 4
  %mul.4.2.2 = mul nsw i32 %672, %673
  %arrayidx19.4.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.2, i32 0, i64 2
  %674 = load i32* %arrayidx20.4.2.2, align 4
  %add.4.2.2 = add nsw i32 %674, %mul.4.2.2
  store i32 %add.4.2.2, i32* %arrayidx20.4.2.2, align 4
  br label %for.inc.4.2.2

for.inc.4.2.2:                                    ; preds = %for.inc.3.2.2
  %arrayidx11.5.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.2, i32 0, i64 5
  %675 = load i32* %arrayidx12.5.2.2, align 4
  %arrayidx15.5.2.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.2, i32 0, i64 2
  %676 = load i32* %arrayidx16.5.2.2, align 4
  %mul.5.2.2 = mul nsw i32 %675, %676
  %arrayidx19.5.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.2, i32 0, i64 2
  %677 = load i32* %arrayidx20.5.2.2, align 4
  %add.5.2.2 = add nsw i32 %677, %mul.5.2.2
  store i32 %add.5.2.2, i32* %arrayidx20.5.2.2, align 4
  br label %for.inc.5.2.2

for.inc.5.2.2:                                    ; preds = %for.inc.4.2.2
  %arrayidx11.6.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.2, i32 0, i64 6
  %678 = load i32* %arrayidx12.6.2.2, align 4
  %arrayidx15.6.2.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.2, i32 0, i64 2
  %679 = load i32* %arrayidx16.6.2.2, align 4
  %mul.6.2.2 = mul nsw i32 %678, %679
  %arrayidx19.6.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.2, i32 0, i64 2
  %680 = load i32* %arrayidx20.6.2.2, align 4
  %add.6.2.2 = add nsw i32 %680, %mul.6.2.2
  store i32 %add.6.2.2, i32* %arrayidx20.6.2.2, align 4
  br label %for.inc.6.2.2

for.inc.6.2.2:                                    ; preds = %for.inc.5.2.2
  %arrayidx11.7.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.2, i32 0, i64 7
  %681 = load i32* %arrayidx12.7.2.2, align 4
  %arrayidx15.7.2.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.2, i32 0, i64 2
  %682 = load i32* %arrayidx16.7.2.2, align 4
  %mul.7.2.2 = mul nsw i32 %681, %682
  %arrayidx19.7.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.2, i32 0, i64 2
  %683 = load i32* %arrayidx20.7.2.2, align 4
  %add.7.2.2 = add nsw i32 %683, %mul.7.2.2
  store i32 %add.7.2.2, i32* %arrayidx20.7.2.2, align 4
  br label %for.inc.7.2.2

for.inc.7.2.2:                                    ; preds = %for.inc.6.2.2
  %arrayidx11.8.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.2, i32 0, i64 8
  %684 = load i32* %arrayidx12.8.2.2, align 4
  %arrayidx15.8.2.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.2, i32 0, i64 2
  %685 = load i32* %arrayidx16.8.2.2, align 4
  %mul.8.2.2 = mul nsw i32 %684, %685
  %arrayidx19.8.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.2, i32 0, i64 2
  %686 = load i32* %arrayidx20.8.2.2, align 4
  %add.8.2.2 = add nsw i32 %686, %mul.8.2.2
  store i32 %add.8.2.2, i32* %arrayidx20.8.2.2, align 4
  br label %for.inc.8.2.2

for.inc.8.2.2:                                    ; preds = %for.inc.7.2.2
  %arrayidx11.9.2.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.2.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.2, i32 0, i64 9
  %687 = load i32* %arrayidx12.9.2.2, align 4
  %arrayidx15.9.2.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.2, i32 0, i64 2
  %688 = load i32* %arrayidx16.9.2.2, align 4
  %mul.9.2.2 = mul nsw i32 %687, %688
  %arrayidx19.9.2.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.2.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.2, i32 0, i64 2
  %689 = load i32* %arrayidx20.9.2.2, align 4
  %add.9.2.2 = add nsw i32 %689, %mul.9.2.2
  store i32 %add.9.2.2, i32* %arrayidx20.9.2.2, align 4
  br label %for.inc.9.2.2

for.inc.9.2.2:                                    ; preds = %for.inc.8.2.2
  br label %for.inc21.2.2

for.inc21.2.2:                                    ; preds = %for.inc.9.2.2
  %arrayidx.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.3.2 = getelementptr inbounds [10 x i32]* %arrayidx.3.2, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.2, align 4
  br label %for.body8.3.2

for.body8.3.2:                                    ; preds = %for.inc21.2.2
  %arrayidx11.324.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.325.2 = getelementptr inbounds [10 x i32]* %arrayidx11.324.2, i32 0, i64 0
  %690 = load i32* %arrayidx12.325.2, align 4
  %arrayidx16.326.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %691 = load i32* %arrayidx16.326.2, align 4
  %mul.327.2 = mul nsw i32 %690, %691
  %arrayidx19.329.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.330.2 = getelementptr inbounds [10 x i32]* %arrayidx19.329.2, i32 0, i64 3
  %692 = load i32* %arrayidx20.330.2, align 4
  %add.331.2 = add nsw i32 %692, %mul.327.2
  store i32 %add.331.2, i32* %arrayidx20.330.2, align 4
  br label %for.inc.332.2

for.inc.332.2:                                    ; preds = %for.body8.3.2
  %arrayidx11.1.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.2, i32 0, i64 1
  %693 = load i32* %arrayidx12.1.3.2, align 4
  %arrayidx15.1.3.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.2, i32 0, i64 3
  %694 = load i32* %arrayidx16.1.3.2, align 4
  %mul.1.3.2 = mul nsw i32 %693, %694
  %arrayidx19.1.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.2, i32 0, i64 3
  %695 = load i32* %arrayidx20.1.3.2, align 4
  %add.1.3.2 = add nsw i32 %695, %mul.1.3.2
  store i32 %add.1.3.2, i32* %arrayidx20.1.3.2, align 4
  br label %for.inc.1.3.2

for.inc.1.3.2:                                    ; preds = %for.inc.332.2
  %arrayidx11.2.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.2, i32 0, i64 2
  %696 = load i32* %arrayidx12.2.3.2, align 4
  %arrayidx15.2.3.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.2, i32 0, i64 3
  %697 = load i32* %arrayidx16.2.3.2, align 4
  %mul.2.3.2 = mul nsw i32 %696, %697
  %arrayidx19.2.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.2, i32 0, i64 3
  %698 = load i32* %arrayidx20.2.3.2, align 4
  %add.2.3.2 = add nsw i32 %698, %mul.2.3.2
  store i32 %add.2.3.2, i32* %arrayidx20.2.3.2, align 4
  br label %for.inc.2.3.2

for.inc.2.3.2:                                    ; preds = %for.inc.1.3.2
  %arrayidx11.3.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.2, i32 0, i64 3
  %699 = load i32* %arrayidx12.3.3.2, align 4
  %arrayidx15.3.3.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.2, i32 0, i64 3
  %700 = load i32* %arrayidx16.3.3.2, align 4
  %mul.3.3.2 = mul nsw i32 %699, %700
  %arrayidx19.3.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.2, i32 0, i64 3
  %701 = load i32* %arrayidx20.3.3.2, align 4
  %add.3.3.2 = add nsw i32 %701, %mul.3.3.2
  store i32 %add.3.3.2, i32* %arrayidx20.3.3.2, align 4
  br label %for.inc.3.3.2

for.inc.3.3.2:                                    ; preds = %for.inc.2.3.2
  %arrayidx11.4.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.2, i32 0, i64 4
  %702 = load i32* %arrayidx12.4.3.2, align 4
  %arrayidx15.4.3.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.2, i32 0, i64 3
  %703 = load i32* %arrayidx16.4.3.2, align 4
  %mul.4.3.2 = mul nsw i32 %702, %703
  %arrayidx19.4.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.2, i32 0, i64 3
  %704 = load i32* %arrayidx20.4.3.2, align 4
  %add.4.3.2 = add nsw i32 %704, %mul.4.3.2
  store i32 %add.4.3.2, i32* %arrayidx20.4.3.2, align 4
  br label %for.inc.4.3.2

for.inc.4.3.2:                                    ; preds = %for.inc.3.3.2
  %arrayidx11.5.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.2, i32 0, i64 5
  %705 = load i32* %arrayidx12.5.3.2, align 4
  %arrayidx15.5.3.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.2, i32 0, i64 3
  %706 = load i32* %arrayidx16.5.3.2, align 4
  %mul.5.3.2 = mul nsw i32 %705, %706
  %arrayidx19.5.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.2, i32 0, i64 3
  %707 = load i32* %arrayidx20.5.3.2, align 4
  %add.5.3.2 = add nsw i32 %707, %mul.5.3.2
  store i32 %add.5.3.2, i32* %arrayidx20.5.3.2, align 4
  br label %for.inc.5.3.2

for.inc.5.3.2:                                    ; preds = %for.inc.4.3.2
  %arrayidx11.6.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.2, i32 0, i64 6
  %708 = load i32* %arrayidx12.6.3.2, align 4
  %arrayidx15.6.3.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.2, i32 0, i64 3
  %709 = load i32* %arrayidx16.6.3.2, align 4
  %mul.6.3.2 = mul nsw i32 %708, %709
  %arrayidx19.6.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.2, i32 0, i64 3
  %710 = load i32* %arrayidx20.6.3.2, align 4
  %add.6.3.2 = add nsw i32 %710, %mul.6.3.2
  store i32 %add.6.3.2, i32* %arrayidx20.6.3.2, align 4
  br label %for.inc.6.3.2

for.inc.6.3.2:                                    ; preds = %for.inc.5.3.2
  %arrayidx11.7.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.2, i32 0, i64 7
  %711 = load i32* %arrayidx12.7.3.2, align 4
  %arrayidx15.7.3.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.2, i32 0, i64 3
  %712 = load i32* %arrayidx16.7.3.2, align 4
  %mul.7.3.2 = mul nsw i32 %711, %712
  %arrayidx19.7.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.2, i32 0, i64 3
  %713 = load i32* %arrayidx20.7.3.2, align 4
  %add.7.3.2 = add nsw i32 %713, %mul.7.3.2
  store i32 %add.7.3.2, i32* %arrayidx20.7.3.2, align 4
  br label %for.inc.7.3.2

for.inc.7.3.2:                                    ; preds = %for.inc.6.3.2
  %arrayidx11.8.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.2, i32 0, i64 8
  %714 = load i32* %arrayidx12.8.3.2, align 4
  %arrayidx15.8.3.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.2, i32 0, i64 3
  %715 = load i32* %arrayidx16.8.3.2, align 4
  %mul.8.3.2 = mul nsw i32 %714, %715
  %arrayidx19.8.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.2, i32 0, i64 3
  %716 = load i32* %arrayidx20.8.3.2, align 4
  %add.8.3.2 = add nsw i32 %716, %mul.8.3.2
  store i32 %add.8.3.2, i32* %arrayidx20.8.3.2, align 4
  br label %for.inc.8.3.2

for.inc.8.3.2:                                    ; preds = %for.inc.7.3.2
  %arrayidx11.9.3.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.3.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.2, i32 0, i64 9
  %717 = load i32* %arrayidx12.9.3.2, align 4
  %arrayidx15.9.3.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.2, i32 0, i64 3
  %718 = load i32* %arrayidx16.9.3.2, align 4
  %mul.9.3.2 = mul nsw i32 %717, %718
  %arrayidx19.9.3.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.3.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.2, i32 0, i64 3
  %719 = load i32* %arrayidx20.9.3.2, align 4
  %add.9.3.2 = add nsw i32 %719, %mul.9.3.2
  store i32 %add.9.3.2, i32* %arrayidx20.9.3.2, align 4
  br label %for.inc.9.3.2

for.inc.9.3.2:                                    ; preds = %for.inc.8.3.2
  br label %for.inc21.3.2

for.inc21.3.2:                                    ; preds = %for.inc.9.3.2
  %arrayidx.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.4.2 = getelementptr inbounds [10 x i32]* %arrayidx.4.2, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.2, align 4
  br label %for.body8.4.2

for.body8.4.2:                                    ; preds = %for.inc21.3.2
  %arrayidx11.434.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.435.2 = getelementptr inbounds [10 x i32]* %arrayidx11.434.2, i32 0, i64 0
  %720 = load i32* %arrayidx12.435.2, align 4
  %arrayidx16.436.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %721 = load i32* %arrayidx16.436.2, align 4
  %mul.437.2 = mul nsw i32 %720, %721
  %arrayidx19.439.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.440.2 = getelementptr inbounds [10 x i32]* %arrayidx19.439.2, i32 0, i64 4
  %722 = load i32* %arrayidx20.440.2, align 4
  %add.441.2 = add nsw i32 %722, %mul.437.2
  store i32 %add.441.2, i32* %arrayidx20.440.2, align 4
  br label %for.inc.442.2

for.inc.442.2:                                    ; preds = %for.body8.4.2
  %arrayidx11.1.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.2, i32 0, i64 1
  %723 = load i32* %arrayidx12.1.4.2, align 4
  %arrayidx15.1.4.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.2, i32 0, i64 4
  %724 = load i32* %arrayidx16.1.4.2, align 4
  %mul.1.4.2 = mul nsw i32 %723, %724
  %arrayidx19.1.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.2, i32 0, i64 4
  %725 = load i32* %arrayidx20.1.4.2, align 4
  %add.1.4.2 = add nsw i32 %725, %mul.1.4.2
  store i32 %add.1.4.2, i32* %arrayidx20.1.4.2, align 4
  br label %for.inc.1.4.2

for.inc.1.4.2:                                    ; preds = %for.inc.442.2
  %arrayidx11.2.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.2, i32 0, i64 2
  %726 = load i32* %arrayidx12.2.4.2, align 4
  %arrayidx15.2.4.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.2, i32 0, i64 4
  %727 = load i32* %arrayidx16.2.4.2, align 4
  %mul.2.4.2 = mul nsw i32 %726, %727
  %arrayidx19.2.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.2, i32 0, i64 4
  %728 = load i32* %arrayidx20.2.4.2, align 4
  %add.2.4.2 = add nsw i32 %728, %mul.2.4.2
  store i32 %add.2.4.2, i32* %arrayidx20.2.4.2, align 4
  br label %for.inc.2.4.2

for.inc.2.4.2:                                    ; preds = %for.inc.1.4.2
  %arrayidx11.3.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.2, i32 0, i64 3
  %729 = load i32* %arrayidx12.3.4.2, align 4
  %arrayidx15.3.4.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.2, i32 0, i64 4
  %730 = load i32* %arrayidx16.3.4.2, align 4
  %mul.3.4.2 = mul nsw i32 %729, %730
  %arrayidx19.3.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.2, i32 0, i64 4
  %731 = load i32* %arrayidx20.3.4.2, align 4
  %add.3.4.2 = add nsw i32 %731, %mul.3.4.2
  store i32 %add.3.4.2, i32* %arrayidx20.3.4.2, align 4
  br label %for.inc.3.4.2

for.inc.3.4.2:                                    ; preds = %for.inc.2.4.2
  %arrayidx11.4.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.2, i32 0, i64 4
  %732 = load i32* %arrayidx12.4.4.2, align 4
  %arrayidx15.4.4.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.2, i32 0, i64 4
  %733 = load i32* %arrayidx16.4.4.2, align 4
  %mul.4.4.2 = mul nsw i32 %732, %733
  %arrayidx19.4.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.2, i32 0, i64 4
  %734 = load i32* %arrayidx20.4.4.2, align 4
  %add.4.4.2 = add nsw i32 %734, %mul.4.4.2
  store i32 %add.4.4.2, i32* %arrayidx20.4.4.2, align 4
  br label %for.inc.4.4.2

for.inc.4.4.2:                                    ; preds = %for.inc.3.4.2
  %arrayidx11.5.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.2, i32 0, i64 5
  %735 = load i32* %arrayidx12.5.4.2, align 4
  %arrayidx15.5.4.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.2, i32 0, i64 4
  %736 = load i32* %arrayidx16.5.4.2, align 4
  %mul.5.4.2 = mul nsw i32 %735, %736
  %arrayidx19.5.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.2, i32 0, i64 4
  %737 = load i32* %arrayidx20.5.4.2, align 4
  %add.5.4.2 = add nsw i32 %737, %mul.5.4.2
  store i32 %add.5.4.2, i32* %arrayidx20.5.4.2, align 4
  br label %for.inc.5.4.2

for.inc.5.4.2:                                    ; preds = %for.inc.4.4.2
  %arrayidx11.6.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.2, i32 0, i64 6
  %738 = load i32* %arrayidx12.6.4.2, align 4
  %arrayidx15.6.4.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.2, i32 0, i64 4
  %739 = load i32* %arrayidx16.6.4.2, align 4
  %mul.6.4.2 = mul nsw i32 %738, %739
  %arrayidx19.6.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.2, i32 0, i64 4
  %740 = load i32* %arrayidx20.6.4.2, align 4
  %add.6.4.2 = add nsw i32 %740, %mul.6.4.2
  store i32 %add.6.4.2, i32* %arrayidx20.6.4.2, align 4
  br label %for.inc.6.4.2

for.inc.6.4.2:                                    ; preds = %for.inc.5.4.2
  %arrayidx11.7.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.2, i32 0, i64 7
  %741 = load i32* %arrayidx12.7.4.2, align 4
  %arrayidx15.7.4.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.2, i32 0, i64 4
  %742 = load i32* %arrayidx16.7.4.2, align 4
  %mul.7.4.2 = mul nsw i32 %741, %742
  %arrayidx19.7.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.2, i32 0, i64 4
  %743 = load i32* %arrayidx20.7.4.2, align 4
  %add.7.4.2 = add nsw i32 %743, %mul.7.4.2
  store i32 %add.7.4.2, i32* %arrayidx20.7.4.2, align 4
  br label %for.inc.7.4.2

for.inc.7.4.2:                                    ; preds = %for.inc.6.4.2
  %arrayidx11.8.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.2, i32 0, i64 8
  %744 = load i32* %arrayidx12.8.4.2, align 4
  %arrayidx15.8.4.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.2, i32 0, i64 4
  %745 = load i32* %arrayidx16.8.4.2, align 4
  %mul.8.4.2 = mul nsw i32 %744, %745
  %arrayidx19.8.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.2, i32 0, i64 4
  %746 = load i32* %arrayidx20.8.4.2, align 4
  %add.8.4.2 = add nsw i32 %746, %mul.8.4.2
  store i32 %add.8.4.2, i32* %arrayidx20.8.4.2, align 4
  br label %for.inc.8.4.2

for.inc.8.4.2:                                    ; preds = %for.inc.7.4.2
  %arrayidx11.9.4.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.4.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.2, i32 0, i64 9
  %747 = load i32* %arrayidx12.9.4.2, align 4
  %arrayidx15.9.4.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.2, i32 0, i64 4
  %748 = load i32* %arrayidx16.9.4.2, align 4
  %mul.9.4.2 = mul nsw i32 %747, %748
  %arrayidx19.9.4.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.4.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.2, i32 0, i64 4
  %749 = load i32* %arrayidx20.9.4.2, align 4
  %add.9.4.2 = add nsw i32 %749, %mul.9.4.2
  store i32 %add.9.4.2, i32* %arrayidx20.9.4.2, align 4
  br label %for.inc.9.4.2

for.inc.9.4.2:                                    ; preds = %for.inc.8.4.2
  br label %for.inc21.4.2

for.inc21.4.2:                                    ; preds = %for.inc.9.4.2
  %arrayidx.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.5.2 = getelementptr inbounds [10 x i32]* %arrayidx.5.2, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.2, align 4
  br label %for.body8.5.2

for.body8.5.2:                                    ; preds = %for.inc21.4.2
  %arrayidx11.544.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.545.2 = getelementptr inbounds [10 x i32]* %arrayidx11.544.2, i32 0, i64 0
  %750 = load i32* %arrayidx12.545.2, align 4
  %arrayidx16.546.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %751 = load i32* %arrayidx16.546.2, align 4
  %mul.547.2 = mul nsw i32 %750, %751
  %arrayidx19.549.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.550.2 = getelementptr inbounds [10 x i32]* %arrayidx19.549.2, i32 0, i64 5
  %752 = load i32* %arrayidx20.550.2, align 4
  %add.551.2 = add nsw i32 %752, %mul.547.2
  store i32 %add.551.2, i32* %arrayidx20.550.2, align 4
  br label %for.inc.552.2

for.inc.552.2:                                    ; preds = %for.body8.5.2
  %arrayidx11.1.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.2, i32 0, i64 1
  %753 = load i32* %arrayidx12.1.5.2, align 4
  %arrayidx15.1.5.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.2, i32 0, i64 5
  %754 = load i32* %arrayidx16.1.5.2, align 4
  %mul.1.5.2 = mul nsw i32 %753, %754
  %arrayidx19.1.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.2, i32 0, i64 5
  %755 = load i32* %arrayidx20.1.5.2, align 4
  %add.1.5.2 = add nsw i32 %755, %mul.1.5.2
  store i32 %add.1.5.2, i32* %arrayidx20.1.5.2, align 4
  br label %for.inc.1.5.2

for.inc.1.5.2:                                    ; preds = %for.inc.552.2
  %arrayidx11.2.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.2, i32 0, i64 2
  %756 = load i32* %arrayidx12.2.5.2, align 4
  %arrayidx15.2.5.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.2, i32 0, i64 5
  %757 = load i32* %arrayidx16.2.5.2, align 4
  %mul.2.5.2 = mul nsw i32 %756, %757
  %arrayidx19.2.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.2, i32 0, i64 5
  %758 = load i32* %arrayidx20.2.5.2, align 4
  %add.2.5.2 = add nsw i32 %758, %mul.2.5.2
  store i32 %add.2.5.2, i32* %arrayidx20.2.5.2, align 4
  br label %for.inc.2.5.2

for.inc.2.5.2:                                    ; preds = %for.inc.1.5.2
  %arrayidx11.3.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.2, i32 0, i64 3
  %759 = load i32* %arrayidx12.3.5.2, align 4
  %arrayidx15.3.5.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.2, i32 0, i64 5
  %760 = load i32* %arrayidx16.3.5.2, align 4
  %mul.3.5.2 = mul nsw i32 %759, %760
  %arrayidx19.3.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.2, i32 0, i64 5
  %761 = load i32* %arrayidx20.3.5.2, align 4
  %add.3.5.2 = add nsw i32 %761, %mul.3.5.2
  store i32 %add.3.5.2, i32* %arrayidx20.3.5.2, align 4
  br label %for.inc.3.5.2

for.inc.3.5.2:                                    ; preds = %for.inc.2.5.2
  %arrayidx11.4.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.2, i32 0, i64 4
  %762 = load i32* %arrayidx12.4.5.2, align 4
  %arrayidx15.4.5.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.2, i32 0, i64 5
  %763 = load i32* %arrayidx16.4.5.2, align 4
  %mul.4.5.2 = mul nsw i32 %762, %763
  %arrayidx19.4.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.2, i32 0, i64 5
  %764 = load i32* %arrayidx20.4.5.2, align 4
  %add.4.5.2 = add nsw i32 %764, %mul.4.5.2
  store i32 %add.4.5.2, i32* %arrayidx20.4.5.2, align 4
  br label %for.inc.4.5.2

for.inc.4.5.2:                                    ; preds = %for.inc.3.5.2
  %arrayidx11.5.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.2, i32 0, i64 5
  %765 = load i32* %arrayidx12.5.5.2, align 4
  %arrayidx15.5.5.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.2, i32 0, i64 5
  %766 = load i32* %arrayidx16.5.5.2, align 4
  %mul.5.5.2 = mul nsw i32 %765, %766
  %arrayidx19.5.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.2, i32 0, i64 5
  %767 = load i32* %arrayidx20.5.5.2, align 4
  %add.5.5.2 = add nsw i32 %767, %mul.5.5.2
  store i32 %add.5.5.2, i32* %arrayidx20.5.5.2, align 4
  br label %for.inc.5.5.2

for.inc.5.5.2:                                    ; preds = %for.inc.4.5.2
  %arrayidx11.6.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.2, i32 0, i64 6
  %768 = load i32* %arrayidx12.6.5.2, align 4
  %arrayidx15.6.5.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.2, i32 0, i64 5
  %769 = load i32* %arrayidx16.6.5.2, align 4
  %mul.6.5.2 = mul nsw i32 %768, %769
  %arrayidx19.6.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.2, i32 0, i64 5
  %770 = load i32* %arrayidx20.6.5.2, align 4
  %add.6.5.2 = add nsw i32 %770, %mul.6.5.2
  store i32 %add.6.5.2, i32* %arrayidx20.6.5.2, align 4
  br label %for.inc.6.5.2

for.inc.6.5.2:                                    ; preds = %for.inc.5.5.2
  %arrayidx11.7.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.2, i32 0, i64 7
  %771 = load i32* %arrayidx12.7.5.2, align 4
  %arrayidx15.7.5.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.2, i32 0, i64 5
  %772 = load i32* %arrayidx16.7.5.2, align 4
  %mul.7.5.2 = mul nsw i32 %771, %772
  %arrayidx19.7.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.2, i32 0, i64 5
  %773 = load i32* %arrayidx20.7.5.2, align 4
  %add.7.5.2 = add nsw i32 %773, %mul.7.5.2
  store i32 %add.7.5.2, i32* %arrayidx20.7.5.2, align 4
  br label %for.inc.7.5.2

for.inc.7.5.2:                                    ; preds = %for.inc.6.5.2
  %arrayidx11.8.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.2, i32 0, i64 8
  %774 = load i32* %arrayidx12.8.5.2, align 4
  %arrayidx15.8.5.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.2, i32 0, i64 5
  %775 = load i32* %arrayidx16.8.5.2, align 4
  %mul.8.5.2 = mul nsw i32 %774, %775
  %arrayidx19.8.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.2, i32 0, i64 5
  %776 = load i32* %arrayidx20.8.5.2, align 4
  %add.8.5.2 = add nsw i32 %776, %mul.8.5.2
  store i32 %add.8.5.2, i32* %arrayidx20.8.5.2, align 4
  br label %for.inc.8.5.2

for.inc.8.5.2:                                    ; preds = %for.inc.7.5.2
  %arrayidx11.9.5.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.5.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.2, i32 0, i64 9
  %777 = load i32* %arrayidx12.9.5.2, align 4
  %arrayidx15.9.5.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.2, i32 0, i64 5
  %778 = load i32* %arrayidx16.9.5.2, align 4
  %mul.9.5.2 = mul nsw i32 %777, %778
  %arrayidx19.9.5.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.5.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.2, i32 0, i64 5
  %779 = load i32* %arrayidx20.9.5.2, align 4
  %add.9.5.2 = add nsw i32 %779, %mul.9.5.2
  store i32 %add.9.5.2, i32* %arrayidx20.9.5.2, align 4
  br label %for.inc.9.5.2

for.inc.9.5.2:                                    ; preds = %for.inc.8.5.2
  br label %for.inc21.5.2

for.inc21.5.2:                                    ; preds = %for.inc.9.5.2
  %arrayidx.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.6.2 = getelementptr inbounds [10 x i32]* %arrayidx.6.2, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.2, align 4
  br label %for.body8.6.2

for.body8.6.2:                                    ; preds = %for.inc21.5.2
  %arrayidx11.654.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.655.2 = getelementptr inbounds [10 x i32]* %arrayidx11.654.2, i32 0, i64 0
  %780 = load i32* %arrayidx12.655.2, align 4
  %arrayidx16.656.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %781 = load i32* %arrayidx16.656.2, align 4
  %mul.657.2 = mul nsw i32 %780, %781
  %arrayidx19.659.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.660.2 = getelementptr inbounds [10 x i32]* %arrayidx19.659.2, i32 0, i64 6
  %782 = load i32* %arrayidx20.660.2, align 4
  %add.661.2 = add nsw i32 %782, %mul.657.2
  store i32 %add.661.2, i32* %arrayidx20.660.2, align 4
  br label %for.inc.662.2

for.inc.662.2:                                    ; preds = %for.body8.6.2
  %arrayidx11.1.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.2, i32 0, i64 1
  %783 = load i32* %arrayidx12.1.6.2, align 4
  %arrayidx15.1.6.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.2, i32 0, i64 6
  %784 = load i32* %arrayidx16.1.6.2, align 4
  %mul.1.6.2 = mul nsw i32 %783, %784
  %arrayidx19.1.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.2, i32 0, i64 6
  %785 = load i32* %arrayidx20.1.6.2, align 4
  %add.1.6.2 = add nsw i32 %785, %mul.1.6.2
  store i32 %add.1.6.2, i32* %arrayidx20.1.6.2, align 4
  br label %for.inc.1.6.2

for.inc.1.6.2:                                    ; preds = %for.inc.662.2
  %arrayidx11.2.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.2, i32 0, i64 2
  %786 = load i32* %arrayidx12.2.6.2, align 4
  %arrayidx15.2.6.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.2, i32 0, i64 6
  %787 = load i32* %arrayidx16.2.6.2, align 4
  %mul.2.6.2 = mul nsw i32 %786, %787
  %arrayidx19.2.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.2, i32 0, i64 6
  %788 = load i32* %arrayidx20.2.6.2, align 4
  %add.2.6.2 = add nsw i32 %788, %mul.2.6.2
  store i32 %add.2.6.2, i32* %arrayidx20.2.6.2, align 4
  br label %for.inc.2.6.2

for.inc.2.6.2:                                    ; preds = %for.inc.1.6.2
  %arrayidx11.3.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.2, i32 0, i64 3
  %789 = load i32* %arrayidx12.3.6.2, align 4
  %arrayidx15.3.6.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.2, i32 0, i64 6
  %790 = load i32* %arrayidx16.3.6.2, align 4
  %mul.3.6.2 = mul nsw i32 %789, %790
  %arrayidx19.3.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.2, i32 0, i64 6
  %791 = load i32* %arrayidx20.3.6.2, align 4
  %add.3.6.2 = add nsw i32 %791, %mul.3.6.2
  store i32 %add.3.6.2, i32* %arrayidx20.3.6.2, align 4
  br label %for.inc.3.6.2

for.inc.3.6.2:                                    ; preds = %for.inc.2.6.2
  %arrayidx11.4.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.2, i32 0, i64 4
  %792 = load i32* %arrayidx12.4.6.2, align 4
  %arrayidx15.4.6.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.2, i32 0, i64 6
  %793 = load i32* %arrayidx16.4.6.2, align 4
  %mul.4.6.2 = mul nsw i32 %792, %793
  %arrayidx19.4.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.2, i32 0, i64 6
  %794 = load i32* %arrayidx20.4.6.2, align 4
  %add.4.6.2 = add nsw i32 %794, %mul.4.6.2
  store i32 %add.4.6.2, i32* %arrayidx20.4.6.2, align 4
  br label %for.inc.4.6.2

for.inc.4.6.2:                                    ; preds = %for.inc.3.6.2
  %arrayidx11.5.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.2, i32 0, i64 5
  %795 = load i32* %arrayidx12.5.6.2, align 4
  %arrayidx15.5.6.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.2, i32 0, i64 6
  %796 = load i32* %arrayidx16.5.6.2, align 4
  %mul.5.6.2 = mul nsw i32 %795, %796
  %arrayidx19.5.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.2, i32 0, i64 6
  %797 = load i32* %arrayidx20.5.6.2, align 4
  %add.5.6.2 = add nsw i32 %797, %mul.5.6.2
  store i32 %add.5.6.2, i32* %arrayidx20.5.6.2, align 4
  br label %for.inc.5.6.2

for.inc.5.6.2:                                    ; preds = %for.inc.4.6.2
  %arrayidx11.6.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.2, i32 0, i64 6
  %798 = load i32* %arrayidx12.6.6.2, align 4
  %arrayidx15.6.6.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.2, i32 0, i64 6
  %799 = load i32* %arrayidx16.6.6.2, align 4
  %mul.6.6.2 = mul nsw i32 %798, %799
  %arrayidx19.6.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.2, i32 0, i64 6
  %800 = load i32* %arrayidx20.6.6.2, align 4
  %add.6.6.2 = add nsw i32 %800, %mul.6.6.2
  store i32 %add.6.6.2, i32* %arrayidx20.6.6.2, align 4
  br label %for.inc.6.6.2

for.inc.6.6.2:                                    ; preds = %for.inc.5.6.2
  %arrayidx11.7.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.2, i32 0, i64 7
  %801 = load i32* %arrayidx12.7.6.2, align 4
  %arrayidx15.7.6.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.2, i32 0, i64 6
  %802 = load i32* %arrayidx16.7.6.2, align 4
  %mul.7.6.2 = mul nsw i32 %801, %802
  %arrayidx19.7.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.2, i32 0, i64 6
  %803 = load i32* %arrayidx20.7.6.2, align 4
  %add.7.6.2 = add nsw i32 %803, %mul.7.6.2
  store i32 %add.7.6.2, i32* %arrayidx20.7.6.2, align 4
  br label %for.inc.7.6.2

for.inc.7.6.2:                                    ; preds = %for.inc.6.6.2
  %arrayidx11.8.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.2, i32 0, i64 8
  %804 = load i32* %arrayidx12.8.6.2, align 4
  %arrayidx15.8.6.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.2, i32 0, i64 6
  %805 = load i32* %arrayidx16.8.6.2, align 4
  %mul.8.6.2 = mul nsw i32 %804, %805
  %arrayidx19.8.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.2, i32 0, i64 6
  %806 = load i32* %arrayidx20.8.6.2, align 4
  %add.8.6.2 = add nsw i32 %806, %mul.8.6.2
  store i32 %add.8.6.2, i32* %arrayidx20.8.6.2, align 4
  br label %for.inc.8.6.2

for.inc.8.6.2:                                    ; preds = %for.inc.7.6.2
  %arrayidx11.9.6.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.6.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.2, i32 0, i64 9
  %807 = load i32* %arrayidx12.9.6.2, align 4
  %arrayidx15.9.6.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.2, i32 0, i64 6
  %808 = load i32* %arrayidx16.9.6.2, align 4
  %mul.9.6.2 = mul nsw i32 %807, %808
  %arrayidx19.9.6.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.6.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.2, i32 0, i64 6
  %809 = load i32* %arrayidx20.9.6.2, align 4
  %add.9.6.2 = add nsw i32 %809, %mul.9.6.2
  store i32 %add.9.6.2, i32* %arrayidx20.9.6.2, align 4
  br label %for.inc.9.6.2

for.inc.9.6.2:                                    ; preds = %for.inc.8.6.2
  br label %for.inc21.6.2

for.inc21.6.2:                                    ; preds = %for.inc.9.6.2
  %arrayidx.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.7.2 = getelementptr inbounds [10 x i32]* %arrayidx.7.2, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.2, align 4
  br label %for.body8.7.2

for.body8.7.2:                                    ; preds = %for.inc21.6.2
  %arrayidx11.764.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.765.2 = getelementptr inbounds [10 x i32]* %arrayidx11.764.2, i32 0, i64 0
  %810 = load i32* %arrayidx12.765.2, align 4
  %arrayidx16.766.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %811 = load i32* %arrayidx16.766.2, align 4
  %mul.767.2 = mul nsw i32 %810, %811
  %arrayidx19.769.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.770.2 = getelementptr inbounds [10 x i32]* %arrayidx19.769.2, i32 0, i64 7
  %812 = load i32* %arrayidx20.770.2, align 4
  %add.771.2 = add nsw i32 %812, %mul.767.2
  store i32 %add.771.2, i32* %arrayidx20.770.2, align 4
  br label %for.inc.772.2

for.inc.772.2:                                    ; preds = %for.body8.7.2
  %arrayidx11.1.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.2, i32 0, i64 1
  %813 = load i32* %arrayidx12.1.7.2, align 4
  %arrayidx15.1.7.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.2, i32 0, i64 7
  %814 = load i32* %arrayidx16.1.7.2, align 4
  %mul.1.7.2 = mul nsw i32 %813, %814
  %arrayidx19.1.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.2, i32 0, i64 7
  %815 = load i32* %arrayidx20.1.7.2, align 4
  %add.1.7.2 = add nsw i32 %815, %mul.1.7.2
  store i32 %add.1.7.2, i32* %arrayidx20.1.7.2, align 4
  br label %for.inc.1.7.2

for.inc.1.7.2:                                    ; preds = %for.inc.772.2
  %arrayidx11.2.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.2, i32 0, i64 2
  %816 = load i32* %arrayidx12.2.7.2, align 4
  %arrayidx15.2.7.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.2, i32 0, i64 7
  %817 = load i32* %arrayidx16.2.7.2, align 4
  %mul.2.7.2 = mul nsw i32 %816, %817
  %arrayidx19.2.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.2, i32 0, i64 7
  %818 = load i32* %arrayidx20.2.7.2, align 4
  %add.2.7.2 = add nsw i32 %818, %mul.2.7.2
  store i32 %add.2.7.2, i32* %arrayidx20.2.7.2, align 4
  br label %for.inc.2.7.2

for.inc.2.7.2:                                    ; preds = %for.inc.1.7.2
  %arrayidx11.3.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.2, i32 0, i64 3
  %819 = load i32* %arrayidx12.3.7.2, align 4
  %arrayidx15.3.7.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.2, i32 0, i64 7
  %820 = load i32* %arrayidx16.3.7.2, align 4
  %mul.3.7.2 = mul nsw i32 %819, %820
  %arrayidx19.3.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.2, i32 0, i64 7
  %821 = load i32* %arrayidx20.3.7.2, align 4
  %add.3.7.2 = add nsw i32 %821, %mul.3.7.2
  store i32 %add.3.7.2, i32* %arrayidx20.3.7.2, align 4
  br label %for.inc.3.7.2

for.inc.3.7.2:                                    ; preds = %for.inc.2.7.2
  %arrayidx11.4.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.2, i32 0, i64 4
  %822 = load i32* %arrayidx12.4.7.2, align 4
  %arrayidx15.4.7.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.2, i32 0, i64 7
  %823 = load i32* %arrayidx16.4.7.2, align 4
  %mul.4.7.2 = mul nsw i32 %822, %823
  %arrayidx19.4.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.2, i32 0, i64 7
  %824 = load i32* %arrayidx20.4.7.2, align 4
  %add.4.7.2 = add nsw i32 %824, %mul.4.7.2
  store i32 %add.4.7.2, i32* %arrayidx20.4.7.2, align 4
  br label %for.inc.4.7.2

for.inc.4.7.2:                                    ; preds = %for.inc.3.7.2
  %arrayidx11.5.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.2, i32 0, i64 5
  %825 = load i32* %arrayidx12.5.7.2, align 4
  %arrayidx15.5.7.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.2, i32 0, i64 7
  %826 = load i32* %arrayidx16.5.7.2, align 4
  %mul.5.7.2 = mul nsw i32 %825, %826
  %arrayidx19.5.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.2, i32 0, i64 7
  %827 = load i32* %arrayidx20.5.7.2, align 4
  %add.5.7.2 = add nsw i32 %827, %mul.5.7.2
  store i32 %add.5.7.2, i32* %arrayidx20.5.7.2, align 4
  br label %for.inc.5.7.2

for.inc.5.7.2:                                    ; preds = %for.inc.4.7.2
  %arrayidx11.6.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.2, i32 0, i64 6
  %828 = load i32* %arrayidx12.6.7.2, align 4
  %arrayidx15.6.7.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.2, i32 0, i64 7
  %829 = load i32* %arrayidx16.6.7.2, align 4
  %mul.6.7.2 = mul nsw i32 %828, %829
  %arrayidx19.6.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.2, i32 0, i64 7
  %830 = load i32* %arrayidx20.6.7.2, align 4
  %add.6.7.2 = add nsw i32 %830, %mul.6.7.2
  store i32 %add.6.7.2, i32* %arrayidx20.6.7.2, align 4
  br label %for.inc.6.7.2

for.inc.6.7.2:                                    ; preds = %for.inc.5.7.2
  %arrayidx11.7.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.2, i32 0, i64 7
  %831 = load i32* %arrayidx12.7.7.2, align 4
  %arrayidx15.7.7.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.2, i32 0, i64 7
  %832 = load i32* %arrayidx16.7.7.2, align 4
  %mul.7.7.2 = mul nsw i32 %831, %832
  %arrayidx19.7.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.2, i32 0, i64 7
  %833 = load i32* %arrayidx20.7.7.2, align 4
  %add.7.7.2 = add nsw i32 %833, %mul.7.7.2
  store i32 %add.7.7.2, i32* %arrayidx20.7.7.2, align 4
  br label %for.inc.7.7.2

for.inc.7.7.2:                                    ; preds = %for.inc.6.7.2
  %arrayidx11.8.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.2, i32 0, i64 8
  %834 = load i32* %arrayidx12.8.7.2, align 4
  %arrayidx15.8.7.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.2, i32 0, i64 7
  %835 = load i32* %arrayidx16.8.7.2, align 4
  %mul.8.7.2 = mul nsw i32 %834, %835
  %arrayidx19.8.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.2, i32 0, i64 7
  %836 = load i32* %arrayidx20.8.7.2, align 4
  %add.8.7.2 = add nsw i32 %836, %mul.8.7.2
  store i32 %add.8.7.2, i32* %arrayidx20.8.7.2, align 4
  br label %for.inc.8.7.2

for.inc.8.7.2:                                    ; preds = %for.inc.7.7.2
  %arrayidx11.9.7.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.7.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.2, i32 0, i64 9
  %837 = load i32* %arrayidx12.9.7.2, align 4
  %arrayidx15.9.7.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.2, i32 0, i64 7
  %838 = load i32* %arrayidx16.9.7.2, align 4
  %mul.9.7.2 = mul nsw i32 %837, %838
  %arrayidx19.9.7.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.7.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.2, i32 0, i64 7
  %839 = load i32* %arrayidx20.9.7.2, align 4
  %add.9.7.2 = add nsw i32 %839, %mul.9.7.2
  store i32 %add.9.7.2, i32* %arrayidx20.9.7.2, align 4
  br label %for.inc.9.7.2

for.inc.9.7.2:                                    ; preds = %for.inc.8.7.2
  br label %for.inc21.7.2

for.inc21.7.2:                                    ; preds = %for.inc.9.7.2
  %arrayidx.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.8.2 = getelementptr inbounds [10 x i32]* %arrayidx.8.2, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.2, align 4
  br label %for.body8.8.2

for.body8.8.2:                                    ; preds = %for.inc21.7.2
  %arrayidx11.874.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.875.2 = getelementptr inbounds [10 x i32]* %arrayidx11.874.2, i32 0, i64 0
  %840 = load i32* %arrayidx12.875.2, align 4
  %arrayidx16.876.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %841 = load i32* %arrayidx16.876.2, align 4
  %mul.877.2 = mul nsw i32 %840, %841
  %arrayidx19.879.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.880.2 = getelementptr inbounds [10 x i32]* %arrayidx19.879.2, i32 0, i64 8
  %842 = load i32* %arrayidx20.880.2, align 4
  %add.881.2 = add nsw i32 %842, %mul.877.2
  store i32 %add.881.2, i32* %arrayidx20.880.2, align 4
  br label %for.inc.882.2

for.inc.882.2:                                    ; preds = %for.body8.8.2
  %arrayidx11.1.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.2, i32 0, i64 1
  %843 = load i32* %arrayidx12.1.8.2, align 4
  %arrayidx15.1.8.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.2, i32 0, i64 8
  %844 = load i32* %arrayidx16.1.8.2, align 4
  %mul.1.8.2 = mul nsw i32 %843, %844
  %arrayidx19.1.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.2, i32 0, i64 8
  %845 = load i32* %arrayidx20.1.8.2, align 4
  %add.1.8.2 = add nsw i32 %845, %mul.1.8.2
  store i32 %add.1.8.2, i32* %arrayidx20.1.8.2, align 4
  br label %for.inc.1.8.2

for.inc.1.8.2:                                    ; preds = %for.inc.882.2
  %arrayidx11.2.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.2, i32 0, i64 2
  %846 = load i32* %arrayidx12.2.8.2, align 4
  %arrayidx15.2.8.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.2, i32 0, i64 8
  %847 = load i32* %arrayidx16.2.8.2, align 4
  %mul.2.8.2 = mul nsw i32 %846, %847
  %arrayidx19.2.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.2, i32 0, i64 8
  %848 = load i32* %arrayidx20.2.8.2, align 4
  %add.2.8.2 = add nsw i32 %848, %mul.2.8.2
  store i32 %add.2.8.2, i32* %arrayidx20.2.8.2, align 4
  br label %for.inc.2.8.2

for.inc.2.8.2:                                    ; preds = %for.inc.1.8.2
  %arrayidx11.3.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.2, i32 0, i64 3
  %849 = load i32* %arrayidx12.3.8.2, align 4
  %arrayidx15.3.8.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.2, i32 0, i64 8
  %850 = load i32* %arrayidx16.3.8.2, align 4
  %mul.3.8.2 = mul nsw i32 %849, %850
  %arrayidx19.3.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.2, i32 0, i64 8
  %851 = load i32* %arrayidx20.3.8.2, align 4
  %add.3.8.2 = add nsw i32 %851, %mul.3.8.2
  store i32 %add.3.8.2, i32* %arrayidx20.3.8.2, align 4
  br label %for.inc.3.8.2

for.inc.3.8.2:                                    ; preds = %for.inc.2.8.2
  %arrayidx11.4.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.2, i32 0, i64 4
  %852 = load i32* %arrayidx12.4.8.2, align 4
  %arrayidx15.4.8.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.2, i32 0, i64 8
  %853 = load i32* %arrayidx16.4.8.2, align 4
  %mul.4.8.2 = mul nsw i32 %852, %853
  %arrayidx19.4.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.2, i32 0, i64 8
  %854 = load i32* %arrayidx20.4.8.2, align 4
  %add.4.8.2 = add nsw i32 %854, %mul.4.8.2
  store i32 %add.4.8.2, i32* %arrayidx20.4.8.2, align 4
  br label %for.inc.4.8.2

for.inc.4.8.2:                                    ; preds = %for.inc.3.8.2
  %arrayidx11.5.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.2, i32 0, i64 5
  %855 = load i32* %arrayidx12.5.8.2, align 4
  %arrayidx15.5.8.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.2, i32 0, i64 8
  %856 = load i32* %arrayidx16.5.8.2, align 4
  %mul.5.8.2 = mul nsw i32 %855, %856
  %arrayidx19.5.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.2, i32 0, i64 8
  %857 = load i32* %arrayidx20.5.8.2, align 4
  %add.5.8.2 = add nsw i32 %857, %mul.5.8.2
  store i32 %add.5.8.2, i32* %arrayidx20.5.8.2, align 4
  br label %for.inc.5.8.2

for.inc.5.8.2:                                    ; preds = %for.inc.4.8.2
  %arrayidx11.6.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.2, i32 0, i64 6
  %858 = load i32* %arrayidx12.6.8.2, align 4
  %arrayidx15.6.8.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.2, i32 0, i64 8
  %859 = load i32* %arrayidx16.6.8.2, align 4
  %mul.6.8.2 = mul nsw i32 %858, %859
  %arrayidx19.6.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.2, i32 0, i64 8
  %860 = load i32* %arrayidx20.6.8.2, align 4
  %add.6.8.2 = add nsw i32 %860, %mul.6.8.2
  store i32 %add.6.8.2, i32* %arrayidx20.6.8.2, align 4
  br label %for.inc.6.8.2

for.inc.6.8.2:                                    ; preds = %for.inc.5.8.2
  %arrayidx11.7.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.2, i32 0, i64 7
  %861 = load i32* %arrayidx12.7.8.2, align 4
  %arrayidx15.7.8.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.2, i32 0, i64 8
  %862 = load i32* %arrayidx16.7.8.2, align 4
  %mul.7.8.2 = mul nsw i32 %861, %862
  %arrayidx19.7.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.2, i32 0, i64 8
  %863 = load i32* %arrayidx20.7.8.2, align 4
  %add.7.8.2 = add nsw i32 %863, %mul.7.8.2
  store i32 %add.7.8.2, i32* %arrayidx20.7.8.2, align 4
  br label %for.inc.7.8.2

for.inc.7.8.2:                                    ; preds = %for.inc.6.8.2
  %arrayidx11.8.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.2, i32 0, i64 8
  %864 = load i32* %arrayidx12.8.8.2, align 4
  %arrayidx15.8.8.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.2, i32 0, i64 8
  %865 = load i32* %arrayidx16.8.8.2, align 4
  %mul.8.8.2 = mul nsw i32 %864, %865
  %arrayidx19.8.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.2, i32 0, i64 8
  %866 = load i32* %arrayidx20.8.8.2, align 4
  %add.8.8.2 = add nsw i32 %866, %mul.8.8.2
  store i32 %add.8.8.2, i32* %arrayidx20.8.8.2, align 4
  br label %for.inc.8.8.2

for.inc.8.8.2:                                    ; preds = %for.inc.7.8.2
  %arrayidx11.9.8.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.8.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.2, i32 0, i64 9
  %867 = load i32* %arrayidx12.9.8.2, align 4
  %arrayidx15.9.8.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.2, i32 0, i64 8
  %868 = load i32* %arrayidx16.9.8.2, align 4
  %mul.9.8.2 = mul nsw i32 %867, %868
  %arrayidx19.9.8.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.8.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.2, i32 0, i64 8
  %869 = load i32* %arrayidx20.9.8.2, align 4
  %add.9.8.2 = add nsw i32 %869, %mul.9.8.2
  store i32 %add.9.8.2, i32* %arrayidx20.9.8.2, align 4
  br label %for.inc.9.8.2

for.inc.9.8.2:                                    ; preds = %for.inc.8.8.2
  br label %for.inc21.8.2

for.inc21.8.2:                                    ; preds = %for.inc.9.8.2
  %arrayidx.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx5.9.2 = getelementptr inbounds [10 x i32]* %arrayidx.9.2, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.2, align 4
  br label %for.body8.9.2

for.body8.9.2:                                    ; preds = %for.inc21.8.2
  %arrayidx11.984.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.985.2 = getelementptr inbounds [10 x i32]* %arrayidx11.984.2, i32 0, i64 0
  %870 = load i32* %arrayidx12.985.2, align 4
  %arrayidx16.986.2 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %871 = load i32* %arrayidx16.986.2, align 4
  %mul.987.2 = mul nsw i32 %870, %871
  %arrayidx19.989.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.990.2 = getelementptr inbounds [10 x i32]* %arrayidx19.989.2, i32 0, i64 9
  %872 = load i32* %arrayidx20.990.2, align 4
  %add.991.2 = add nsw i32 %872, %mul.987.2
  store i32 %add.991.2, i32* %arrayidx20.990.2, align 4
  br label %for.inc.992.2

for.inc.992.2:                                    ; preds = %for.body8.9.2
  %arrayidx11.1.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.1.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.2, i32 0, i64 1
  %873 = load i32* %arrayidx12.1.9.2, align 4
  %arrayidx15.1.9.2 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.2, i32 0, i64 9
  %874 = load i32* %arrayidx16.1.9.2, align 4
  %mul.1.9.2 = mul nsw i32 %873, %874
  %arrayidx19.1.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.1.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.2, i32 0, i64 9
  %875 = load i32* %arrayidx20.1.9.2, align 4
  %add.1.9.2 = add nsw i32 %875, %mul.1.9.2
  store i32 %add.1.9.2, i32* %arrayidx20.1.9.2, align 4
  br label %for.inc.1.9.2

for.inc.1.9.2:                                    ; preds = %for.inc.992.2
  %arrayidx11.2.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.2.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.2, i32 0, i64 2
  %876 = load i32* %arrayidx12.2.9.2, align 4
  %arrayidx15.2.9.2 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.2, i32 0, i64 9
  %877 = load i32* %arrayidx16.2.9.2, align 4
  %mul.2.9.2 = mul nsw i32 %876, %877
  %arrayidx19.2.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.2.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.2, i32 0, i64 9
  %878 = load i32* %arrayidx20.2.9.2, align 4
  %add.2.9.2 = add nsw i32 %878, %mul.2.9.2
  store i32 %add.2.9.2, i32* %arrayidx20.2.9.2, align 4
  br label %for.inc.2.9.2

for.inc.2.9.2:                                    ; preds = %for.inc.1.9.2
  %arrayidx11.3.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.3.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.2, i32 0, i64 3
  %879 = load i32* %arrayidx12.3.9.2, align 4
  %arrayidx15.3.9.2 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.2, i32 0, i64 9
  %880 = load i32* %arrayidx16.3.9.2, align 4
  %mul.3.9.2 = mul nsw i32 %879, %880
  %arrayidx19.3.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.3.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.2, i32 0, i64 9
  %881 = load i32* %arrayidx20.3.9.2, align 4
  %add.3.9.2 = add nsw i32 %881, %mul.3.9.2
  store i32 %add.3.9.2, i32* %arrayidx20.3.9.2, align 4
  br label %for.inc.3.9.2

for.inc.3.9.2:                                    ; preds = %for.inc.2.9.2
  %arrayidx11.4.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.4.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.2, i32 0, i64 4
  %882 = load i32* %arrayidx12.4.9.2, align 4
  %arrayidx15.4.9.2 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.2, i32 0, i64 9
  %883 = load i32* %arrayidx16.4.9.2, align 4
  %mul.4.9.2 = mul nsw i32 %882, %883
  %arrayidx19.4.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.4.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.2, i32 0, i64 9
  %884 = load i32* %arrayidx20.4.9.2, align 4
  %add.4.9.2 = add nsw i32 %884, %mul.4.9.2
  store i32 %add.4.9.2, i32* %arrayidx20.4.9.2, align 4
  br label %for.inc.4.9.2

for.inc.4.9.2:                                    ; preds = %for.inc.3.9.2
  %arrayidx11.5.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.5.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.2, i32 0, i64 5
  %885 = load i32* %arrayidx12.5.9.2, align 4
  %arrayidx15.5.9.2 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.2, i32 0, i64 9
  %886 = load i32* %arrayidx16.5.9.2, align 4
  %mul.5.9.2 = mul nsw i32 %885, %886
  %arrayidx19.5.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.5.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.2, i32 0, i64 9
  %887 = load i32* %arrayidx20.5.9.2, align 4
  %add.5.9.2 = add nsw i32 %887, %mul.5.9.2
  store i32 %add.5.9.2, i32* %arrayidx20.5.9.2, align 4
  br label %for.inc.5.9.2

for.inc.5.9.2:                                    ; preds = %for.inc.4.9.2
  %arrayidx11.6.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.6.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.2, i32 0, i64 6
  %888 = load i32* %arrayidx12.6.9.2, align 4
  %arrayidx15.6.9.2 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.2, i32 0, i64 9
  %889 = load i32* %arrayidx16.6.9.2, align 4
  %mul.6.9.2 = mul nsw i32 %888, %889
  %arrayidx19.6.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.6.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.2, i32 0, i64 9
  %890 = load i32* %arrayidx20.6.9.2, align 4
  %add.6.9.2 = add nsw i32 %890, %mul.6.9.2
  store i32 %add.6.9.2, i32* %arrayidx20.6.9.2, align 4
  br label %for.inc.6.9.2

for.inc.6.9.2:                                    ; preds = %for.inc.5.9.2
  %arrayidx11.7.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.7.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.2, i32 0, i64 7
  %891 = load i32* %arrayidx12.7.9.2, align 4
  %arrayidx15.7.9.2 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.2, i32 0, i64 9
  %892 = load i32* %arrayidx16.7.9.2, align 4
  %mul.7.9.2 = mul nsw i32 %891, %892
  %arrayidx19.7.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.7.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.2, i32 0, i64 9
  %893 = load i32* %arrayidx20.7.9.2, align 4
  %add.7.9.2 = add nsw i32 %893, %mul.7.9.2
  store i32 %add.7.9.2, i32* %arrayidx20.7.9.2, align 4
  br label %for.inc.7.9.2

for.inc.7.9.2:                                    ; preds = %for.inc.6.9.2
  %arrayidx11.8.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.8.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.2, i32 0, i64 8
  %894 = load i32* %arrayidx12.8.9.2, align 4
  %arrayidx15.8.9.2 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.2, i32 0, i64 9
  %895 = load i32* %arrayidx16.8.9.2, align 4
  %mul.8.9.2 = mul nsw i32 %894, %895
  %arrayidx19.8.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.8.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.2, i32 0, i64 9
  %896 = load i32* %arrayidx20.8.9.2, align 4
  %add.8.9.2 = add nsw i32 %896, %mul.8.9.2
  store i32 %add.8.9.2, i32* %arrayidx20.8.9.2, align 4
  br label %for.inc.8.9.2

for.inc.8.9.2:                                    ; preds = %for.inc.7.9.2
  %arrayidx11.9.9.2 = getelementptr inbounds [10 x i32]* %a, i64 2
  %arrayidx12.9.9.2 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.2, i32 0, i64 9
  %897 = load i32* %arrayidx12.9.9.2, align 4
  %arrayidx15.9.9.2 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.2 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.2, i32 0, i64 9
  %898 = load i32* %arrayidx16.9.9.2, align 4
  %mul.9.9.2 = mul nsw i32 %897, %898
  %arrayidx19.9.9.2 = getelementptr inbounds [10 x i32]* %c, i64 2
  %arrayidx20.9.9.2 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.2, i32 0, i64 9
  %899 = load i32* %arrayidx20.9.9.2, align 4
  %add.9.9.2 = add nsw i32 %899, %mul.9.9.2
  store i32 %add.9.9.2, i32* %arrayidx20.9.9.2, align 4
  br label %for.inc.9.9.2

for.inc.9.9.2:                                    ; preds = %for.inc.8.9.2
  br label %for.inc21.9.2

for.inc21.9.2:                                    ; preds = %for.inc.9.9.2
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc21.9.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc24.2
  %arrayidx.3280 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.3281 = getelementptr inbounds [10 x i32]* %arrayidx.3280, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.3281, align 4
  br label %for.body8.3289

for.body8.3289:                                   ; preds = %for.body3.3
  %arrayidx11.3282 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3283 = getelementptr inbounds [10 x i32]* %arrayidx11.3282, i32 0, i64 0
  %900 = load i32* %arrayidx12.3283, align 4
  %arrayidx16.3284 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %901 = load i32* %arrayidx16.3284, align 4
  %mul.3285 = mul nsw i32 %900, %901
  %arrayidx19.3286 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3287 = getelementptr inbounds [10 x i32]* %arrayidx19.3286, i32 0, i64 0
  %902 = load i32* %arrayidx20.3287, align 4
  %add.3288 = add nsw i32 %902, %mul.3285
  store i32 %add.3288, i32* %arrayidx20.3287, align 4
  br label %for.inc.3298

for.inc.3298:                                     ; preds = %for.body8.3289
  %arrayidx11.1.3290 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.3291 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3290, i32 0, i64 1
  %903 = load i32* %arrayidx12.1.3291, align 4
  %arrayidx15.1.3292 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3293 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3292, i32 0, i64 0
  %904 = load i32* %arrayidx16.1.3293, align 4
  %mul.1.3294 = mul nsw i32 %903, %904
  %arrayidx19.1.3295 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.3296 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3295, i32 0, i64 0
  %905 = load i32* %arrayidx20.1.3296, align 4
  %add.1.3297 = add nsw i32 %905, %mul.1.3294
  store i32 %add.1.3297, i32* %arrayidx20.1.3296, align 4
  br label %for.inc.1.3307

for.inc.1.3307:                                   ; preds = %for.inc.3298
  %arrayidx11.2.3299 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.3300 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3299, i32 0, i64 2
  %906 = load i32* %arrayidx12.2.3300, align 4
  %arrayidx15.2.3301 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3302 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3301, i32 0, i64 0
  %907 = load i32* %arrayidx16.2.3302, align 4
  %mul.2.3303 = mul nsw i32 %906, %907
  %arrayidx19.2.3304 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.3305 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3304, i32 0, i64 0
  %908 = load i32* %arrayidx20.2.3305, align 4
  %add.2.3306 = add nsw i32 %908, %mul.2.3303
  store i32 %add.2.3306, i32* %arrayidx20.2.3305, align 4
  br label %for.inc.2.3316

for.inc.2.3316:                                   ; preds = %for.inc.1.3307
  %arrayidx11.3.3308 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.3309 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3308, i32 0, i64 3
  %909 = load i32* %arrayidx12.3.3309, align 4
  %arrayidx15.3.3310 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3311 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3310, i32 0, i64 0
  %910 = load i32* %arrayidx16.3.3311, align 4
  %mul.3.3312 = mul nsw i32 %909, %910
  %arrayidx19.3.3313 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.3314 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3313, i32 0, i64 0
  %911 = load i32* %arrayidx20.3.3314, align 4
  %add.3.3315 = add nsw i32 %911, %mul.3.3312
  store i32 %add.3.3315, i32* %arrayidx20.3.3314, align 4
  br label %for.inc.3.3325

for.inc.3.3325:                                   ; preds = %for.inc.2.3316
  %arrayidx11.4.3317 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.3318 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3317, i32 0, i64 4
  %912 = load i32* %arrayidx12.4.3318, align 4
  %arrayidx15.4.3319 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3320 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3319, i32 0, i64 0
  %913 = load i32* %arrayidx16.4.3320, align 4
  %mul.4.3321 = mul nsw i32 %912, %913
  %arrayidx19.4.3322 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.3323 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3322, i32 0, i64 0
  %914 = load i32* %arrayidx20.4.3323, align 4
  %add.4.3324 = add nsw i32 %914, %mul.4.3321
  store i32 %add.4.3324, i32* %arrayidx20.4.3323, align 4
  br label %for.inc.4.3334

for.inc.4.3334:                                   ; preds = %for.inc.3.3325
  %arrayidx11.5.3326 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.3327 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3326, i32 0, i64 5
  %915 = load i32* %arrayidx12.5.3327, align 4
  %arrayidx15.5.3328 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3329 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3328, i32 0, i64 0
  %916 = load i32* %arrayidx16.5.3329, align 4
  %mul.5.3330 = mul nsw i32 %915, %916
  %arrayidx19.5.3331 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.3332 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3331, i32 0, i64 0
  %917 = load i32* %arrayidx20.5.3332, align 4
  %add.5.3333 = add nsw i32 %917, %mul.5.3330
  store i32 %add.5.3333, i32* %arrayidx20.5.3332, align 4
  br label %for.inc.5.3343

for.inc.5.3343:                                   ; preds = %for.inc.4.3334
  %arrayidx11.6.3335 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.3336 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3335, i32 0, i64 6
  %918 = load i32* %arrayidx12.6.3336, align 4
  %arrayidx15.6.3337 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3338 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3337, i32 0, i64 0
  %919 = load i32* %arrayidx16.6.3338, align 4
  %mul.6.3339 = mul nsw i32 %918, %919
  %arrayidx19.6.3340 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.3341 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3340, i32 0, i64 0
  %920 = load i32* %arrayidx20.6.3341, align 4
  %add.6.3342 = add nsw i32 %920, %mul.6.3339
  store i32 %add.6.3342, i32* %arrayidx20.6.3341, align 4
  br label %for.inc.6.3352

for.inc.6.3352:                                   ; preds = %for.inc.5.3343
  %arrayidx11.7.3344 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.3345 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3344, i32 0, i64 7
  %921 = load i32* %arrayidx12.7.3345, align 4
  %arrayidx15.7.3346 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3347 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3346, i32 0, i64 0
  %922 = load i32* %arrayidx16.7.3347, align 4
  %mul.7.3348 = mul nsw i32 %921, %922
  %arrayidx19.7.3349 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.3350 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3349, i32 0, i64 0
  %923 = load i32* %arrayidx20.7.3350, align 4
  %add.7.3351 = add nsw i32 %923, %mul.7.3348
  store i32 %add.7.3351, i32* %arrayidx20.7.3350, align 4
  br label %for.inc.7.3361

for.inc.7.3361:                                   ; preds = %for.inc.6.3352
  %arrayidx11.8.3353 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.3354 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3353, i32 0, i64 8
  %924 = load i32* %arrayidx12.8.3354, align 4
  %arrayidx15.8.3355 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3356 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3355, i32 0, i64 0
  %925 = load i32* %arrayidx16.8.3356, align 4
  %mul.8.3357 = mul nsw i32 %924, %925
  %arrayidx19.8.3358 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.3359 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3358, i32 0, i64 0
  %926 = load i32* %arrayidx20.8.3359, align 4
  %add.8.3360 = add nsw i32 %926, %mul.8.3357
  store i32 %add.8.3360, i32* %arrayidx20.8.3359, align 4
  br label %for.inc.8.3370

for.inc.8.3370:                                   ; preds = %for.inc.7.3361
  %arrayidx11.9.3362 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.3363 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3362, i32 0, i64 9
  %927 = load i32* %arrayidx12.9.3363, align 4
  %arrayidx15.9.3364 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3365 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3364, i32 0, i64 0
  %928 = load i32* %arrayidx16.9.3365, align 4
  %mul.9.3366 = mul nsw i32 %927, %928
  %arrayidx19.9.3367 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.3368 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3367, i32 0, i64 0
  %929 = load i32* %arrayidx20.9.3368, align 4
  %add.9.3369 = add nsw i32 %929, %mul.9.3366
  store i32 %add.9.3369, i32* %arrayidx20.9.3368, align 4
  br label %for.inc.9.3371

for.inc.9.3371:                                   ; preds = %for.inc.8.3370
  br label %for.inc21.3372

for.inc21.3372:                                   ; preds = %for.inc.9.3371
  %arrayidx.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.1.3 = getelementptr inbounds [10 x i32]* %arrayidx.1.3, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.3, align 4
  br label %for.body8.1.3

for.body8.1.3:                                    ; preds = %for.inc21.3372
  %arrayidx11.14.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.15.3 = getelementptr inbounds [10 x i32]* %arrayidx11.14.3, i32 0, i64 0
  %930 = load i32* %arrayidx12.15.3, align 4
  %arrayidx16.16.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %931 = load i32* %arrayidx16.16.3, align 4
  %mul.17.3 = mul nsw i32 %930, %931
  %arrayidx19.19.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.110.3 = getelementptr inbounds [10 x i32]* %arrayidx19.19.3, i32 0, i64 1
  %932 = load i32* %arrayidx20.110.3, align 4
  %add.111.3 = add nsw i32 %932, %mul.17.3
  store i32 %add.111.3, i32* %arrayidx20.110.3, align 4
  br label %for.inc.112.3

for.inc.112.3:                                    ; preds = %for.body8.1.3
  %arrayidx11.1.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.3, i32 0, i64 1
  %933 = load i32* %arrayidx12.1.1.3, align 4
  %arrayidx15.1.1.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.3, i32 0, i64 1
  %934 = load i32* %arrayidx16.1.1.3, align 4
  %mul.1.1.3 = mul nsw i32 %933, %934
  %arrayidx19.1.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.3, i32 0, i64 1
  %935 = load i32* %arrayidx20.1.1.3, align 4
  %add.1.1.3 = add nsw i32 %935, %mul.1.1.3
  store i32 %add.1.1.3, i32* %arrayidx20.1.1.3, align 4
  br label %for.inc.1.1.3

for.inc.1.1.3:                                    ; preds = %for.inc.112.3
  %arrayidx11.2.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.3, i32 0, i64 2
  %936 = load i32* %arrayidx12.2.1.3, align 4
  %arrayidx15.2.1.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.3, i32 0, i64 1
  %937 = load i32* %arrayidx16.2.1.3, align 4
  %mul.2.1.3 = mul nsw i32 %936, %937
  %arrayidx19.2.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.3, i32 0, i64 1
  %938 = load i32* %arrayidx20.2.1.3, align 4
  %add.2.1.3 = add nsw i32 %938, %mul.2.1.3
  store i32 %add.2.1.3, i32* %arrayidx20.2.1.3, align 4
  br label %for.inc.2.1.3

for.inc.2.1.3:                                    ; preds = %for.inc.1.1.3
  %arrayidx11.3.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.3, i32 0, i64 3
  %939 = load i32* %arrayidx12.3.1.3, align 4
  %arrayidx15.3.1.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.3, i32 0, i64 1
  %940 = load i32* %arrayidx16.3.1.3, align 4
  %mul.3.1.3 = mul nsw i32 %939, %940
  %arrayidx19.3.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.3, i32 0, i64 1
  %941 = load i32* %arrayidx20.3.1.3, align 4
  %add.3.1.3 = add nsw i32 %941, %mul.3.1.3
  store i32 %add.3.1.3, i32* %arrayidx20.3.1.3, align 4
  br label %for.inc.3.1.3

for.inc.3.1.3:                                    ; preds = %for.inc.2.1.3
  %arrayidx11.4.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.3, i32 0, i64 4
  %942 = load i32* %arrayidx12.4.1.3, align 4
  %arrayidx15.4.1.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.3, i32 0, i64 1
  %943 = load i32* %arrayidx16.4.1.3, align 4
  %mul.4.1.3 = mul nsw i32 %942, %943
  %arrayidx19.4.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.3, i32 0, i64 1
  %944 = load i32* %arrayidx20.4.1.3, align 4
  %add.4.1.3 = add nsw i32 %944, %mul.4.1.3
  store i32 %add.4.1.3, i32* %arrayidx20.4.1.3, align 4
  br label %for.inc.4.1.3

for.inc.4.1.3:                                    ; preds = %for.inc.3.1.3
  %arrayidx11.5.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.3, i32 0, i64 5
  %945 = load i32* %arrayidx12.5.1.3, align 4
  %arrayidx15.5.1.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.3, i32 0, i64 1
  %946 = load i32* %arrayidx16.5.1.3, align 4
  %mul.5.1.3 = mul nsw i32 %945, %946
  %arrayidx19.5.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.3, i32 0, i64 1
  %947 = load i32* %arrayidx20.5.1.3, align 4
  %add.5.1.3 = add nsw i32 %947, %mul.5.1.3
  store i32 %add.5.1.3, i32* %arrayidx20.5.1.3, align 4
  br label %for.inc.5.1.3

for.inc.5.1.3:                                    ; preds = %for.inc.4.1.3
  %arrayidx11.6.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.3, i32 0, i64 6
  %948 = load i32* %arrayidx12.6.1.3, align 4
  %arrayidx15.6.1.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.3, i32 0, i64 1
  %949 = load i32* %arrayidx16.6.1.3, align 4
  %mul.6.1.3 = mul nsw i32 %948, %949
  %arrayidx19.6.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.3, i32 0, i64 1
  %950 = load i32* %arrayidx20.6.1.3, align 4
  %add.6.1.3 = add nsw i32 %950, %mul.6.1.3
  store i32 %add.6.1.3, i32* %arrayidx20.6.1.3, align 4
  br label %for.inc.6.1.3

for.inc.6.1.3:                                    ; preds = %for.inc.5.1.3
  %arrayidx11.7.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.3, i32 0, i64 7
  %951 = load i32* %arrayidx12.7.1.3, align 4
  %arrayidx15.7.1.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.3, i32 0, i64 1
  %952 = load i32* %arrayidx16.7.1.3, align 4
  %mul.7.1.3 = mul nsw i32 %951, %952
  %arrayidx19.7.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.3, i32 0, i64 1
  %953 = load i32* %arrayidx20.7.1.3, align 4
  %add.7.1.3 = add nsw i32 %953, %mul.7.1.3
  store i32 %add.7.1.3, i32* %arrayidx20.7.1.3, align 4
  br label %for.inc.7.1.3

for.inc.7.1.3:                                    ; preds = %for.inc.6.1.3
  %arrayidx11.8.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.3, i32 0, i64 8
  %954 = load i32* %arrayidx12.8.1.3, align 4
  %arrayidx15.8.1.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.3, i32 0, i64 1
  %955 = load i32* %arrayidx16.8.1.3, align 4
  %mul.8.1.3 = mul nsw i32 %954, %955
  %arrayidx19.8.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.3, i32 0, i64 1
  %956 = load i32* %arrayidx20.8.1.3, align 4
  %add.8.1.3 = add nsw i32 %956, %mul.8.1.3
  store i32 %add.8.1.3, i32* %arrayidx20.8.1.3, align 4
  br label %for.inc.8.1.3

for.inc.8.1.3:                                    ; preds = %for.inc.7.1.3
  %arrayidx11.9.1.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.1.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.3, i32 0, i64 9
  %957 = load i32* %arrayidx12.9.1.3, align 4
  %arrayidx15.9.1.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.3, i32 0, i64 1
  %958 = load i32* %arrayidx16.9.1.3, align 4
  %mul.9.1.3 = mul nsw i32 %957, %958
  %arrayidx19.9.1.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.1.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.3, i32 0, i64 1
  %959 = load i32* %arrayidx20.9.1.3, align 4
  %add.9.1.3 = add nsw i32 %959, %mul.9.1.3
  store i32 %add.9.1.3, i32* %arrayidx20.9.1.3, align 4
  br label %for.inc.9.1.3

for.inc.9.1.3:                                    ; preds = %for.inc.8.1.3
  br label %for.inc21.1.3

for.inc21.1.3:                                    ; preds = %for.inc.9.1.3
  %arrayidx.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.2.3 = getelementptr inbounds [10 x i32]* %arrayidx.2.3, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.3, align 4
  br label %for.body8.2.3

for.body8.2.3:                                    ; preds = %for.inc21.1.3
  %arrayidx11.214.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.215.3 = getelementptr inbounds [10 x i32]* %arrayidx11.214.3, i32 0, i64 0
  %960 = load i32* %arrayidx12.215.3, align 4
  %arrayidx16.216.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %961 = load i32* %arrayidx16.216.3, align 4
  %mul.217.3 = mul nsw i32 %960, %961
  %arrayidx19.219.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.220.3 = getelementptr inbounds [10 x i32]* %arrayidx19.219.3, i32 0, i64 2
  %962 = load i32* %arrayidx20.220.3, align 4
  %add.221.3 = add nsw i32 %962, %mul.217.3
  store i32 %add.221.3, i32* %arrayidx20.220.3, align 4
  br label %for.inc.222.3

for.inc.222.3:                                    ; preds = %for.body8.2.3
  %arrayidx11.1.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.3, i32 0, i64 1
  %963 = load i32* %arrayidx12.1.2.3, align 4
  %arrayidx15.1.2.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.3, i32 0, i64 2
  %964 = load i32* %arrayidx16.1.2.3, align 4
  %mul.1.2.3 = mul nsw i32 %963, %964
  %arrayidx19.1.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.3, i32 0, i64 2
  %965 = load i32* %arrayidx20.1.2.3, align 4
  %add.1.2.3 = add nsw i32 %965, %mul.1.2.3
  store i32 %add.1.2.3, i32* %arrayidx20.1.2.3, align 4
  br label %for.inc.1.2.3

for.inc.1.2.3:                                    ; preds = %for.inc.222.3
  %arrayidx11.2.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.3, i32 0, i64 2
  %966 = load i32* %arrayidx12.2.2.3, align 4
  %arrayidx15.2.2.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.3, i32 0, i64 2
  %967 = load i32* %arrayidx16.2.2.3, align 4
  %mul.2.2.3 = mul nsw i32 %966, %967
  %arrayidx19.2.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.3, i32 0, i64 2
  %968 = load i32* %arrayidx20.2.2.3, align 4
  %add.2.2.3 = add nsw i32 %968, %mul.2.2.3
  store i32 %add.2.2.3, i32* %arrayidx20.2.2.3, align 4
  br label %for.inc.2.2.3

for.inc.2.2.3:                                    ; preds = %for.inc.1.2.3
  %arrayidx11.3.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.3, i32 0, i64 3
  %969 = load i32* %arrayidx12.3.2.3, align 4
  %arrayidx15.3.2.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.3, i32 0, i64 2
  %970 = load i32* %arrayidx16.3.2.3, align 4
  %mul.3.2.3 = mul nsw i32 %969, %970
  %arrayidx19.3.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.3, i32 0, i64 2
  %971 = load i32* %arrayidx20.3.2.3, align 4
  %add.3.2.3 = add nsw i32 %971, %mul.3.2.3
  store i32 %add.3.2.3, i32* %arrayidx20.3.2.3, align 4
  br label %for.inc.3.2.3

for.inc.3.2.3:                                    ; preds = %for.inc.2.2.3
  %arrayidx11.4.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.3, i32 0, i64 4
  %972 = load i32* %arrayidx12.4.2.3, align 4
  %arrayidx15.4.2.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.3, i32 0, i64 2
  %973 = load i32* %arrayidx16.4.2.3, align 4
  %mul.4.2.3 = mul nsw i32 %972, %973
  %arrayidx19.4.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.3, i32 0, i64 2
  %974 = load i32* %arrayidx20.4.2.3, align 4
  %add.4.2.3 = add nsw i32 %974, %mul.4.2.3
  store i32 %add.4.2.3, i32* %arrayidx20.4.2.3, align 4
  br label %for.inc.4.2.3

for.inc.4.2.3:                                    ; preds = %for.inc.3.2.3
  %arrayidx11.5.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.3, i32 0, i64 5
  %975 = load i32* %arrayidx12.5.2.3, align 4
  %arrayidx15.5.2.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.3, i32 0, i64 2
  %976 = load i32* %arrayidx16.5.2.3, align 4
  %mul.5.2.3 = mul nsw i32 %975, %976
  %arrayidx19.5.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.3, i32 0, i64 2
  %977 = load i32* %arrayidx20.5.2.3, align 4
  %add.5.2.3 = add nsw i32 %977, %mul.5.2.3
  store i32 %add.5.2.3, i32* %arrayidx20.5.2.3, align 4
  br label %for.inc.5.2.3

for.inc.5.2.3:                                    ; preds = %for.inc.4.2.3
  %arrayidx11.6.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.3, i32 0, i64 6
  %978 = load i32* %arrayidx12.6.2.3, align 4
  %arrayidx15.6.2.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.3, i32 0, i64 2
  %979 = load i32* %arrayidx16.6.2.3, align 4
  %mul.6.2.3 = mul nsw i32 %978, %979
  %arrayidx19.6.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.3, i32 0, i64 2
  %980 = load i32* %arrayidx20.6.2.3, align 4
  %add.6.2.3 = add nsw i32 %980, %mul.6.2.3
  store i32 %add.6.2.3, i32* %arrayidx20.6.2.3, align 4
  br label %for.inc.6.2.3

for.inc.6.2.3:                                    ; preds = %for.inc.5.2.3
  %arrayidx11.7.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.3, i32 0, i64 7
  %981 = load i32* %arrayidx12.7.2.3, align 4
  %arrayidx15.7.2.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.3, i32 0, i64 2
  %982 = load i32* %arrayidx16.7.2.3, align 4
  %mul.7.2.3 = mul nsw i32 %981, %982
  %arrayidx19.7.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.3, i32 0, i64 2
  %983 = load i32* %arrayidx20.7.2.3, align 4
  %add.7.2.3 = add nsw i32 %983, %mul.7.2.3
  store i32 %add.7.2.3, i32* %arrayidx20.7.2.3, align 4
  br label %for.inc.7.2.3

for.inc.7.2.3:                                    ; preds = %for.inc.6.2.3
  %arrayidx11.8.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.3, i32 0, i64 8
  %984 = load i32* %arrayidx12.8.2.3, align 4
  %arrayidx15.8.2.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.3, i32 0, i64 2
  %985 = load i32* %arrayidx16.8.2.3, align 4
  %mul.8.2.3 = mul nsw i32 %984, %985
  %arrayidx19.8.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.3, i32 0, i64 2
  %986 = load i32* %arrayidx20.8.2.3, align 4
  %add.8.2.3 = add nsw i32 %986, %mul.8.2.3
  store i32 %add.8.2.3, i32* %arrayidx20.8.2.3, align 4
  br label %for.inc.8.2.3

for.inc.8.2.3:                                    ; preds = %for.inc.7.2.3
  %arrayidx11.9.2.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.2.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.3, i32 0, i64 9
  %987 = load i32* %arrayidx12.9.2.3, align 4
  %arrayidx15.9.2.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.3, i32 0, i64 2
  %988 = load i32* %arrayidx16.9.2.3, align 4
  %mul.9.2.3 = mul nsw i32 %987, %988
  %arrayidx19.9.2.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.2.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.3, i32 0, i64 2
  %989 = load i32* %arrayidx20.9.2.3, align 4
  %add.9.2.3 = add nsw i32 %989, %mul.9.2.3
  store i32 %add.9.2.3, i32* %arrayidx20.9.2.3, align 4
  br label %for.inc.9.2.3

for.inc.9.2.3:                                    ; preds = %for.inc.8.2.3
  br label %for.inc21.2.3

for.inc21.2.3:                                    ; preds = %for.inc.9.2.3
  %arrayidx.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.3.3 = getelementptr inbounds [10 x i32]* %arrayidx.3.3, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.3, align 4
  br label %for.body8.3.3

for.body8.3.3:                                    ; preds = %for.inc21.2.3
  %arrayidx11.324.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.325.3 = getelementptr inbounds [10 x i32]* %arrayidx11.324.3, i32 0, i64 0
  %990 = load i32* %arrayidx12.325.3, align 4
  %arrayidx16.326.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %991 = load i32* %arrayidx16.326.3, align 4
  %mul.327.3 = mul nsw i32 %990, %991
  %arrayidx19.329.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.330.3 = getelementptr inbounds [10 x i32]* %arrayidx19.329.3, i32 0, i64 3
  %992 = load i32* %arrayidx20.330.3, align 4
  %add.331.3 = add nsw i32 %992, %mul.327.3
  store i32 %add.331.3, i32* %arrayidx20.330.3, align 4
  br label %for.inc.332.3

for.inc.332.3:                                    ; preds = %for.body8.3.3
  %arrayidx11.1.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.3, i32 0, i64 1
  %993 = load i32* %arrayidx12.1.3.3, align 4
  %arrayidx15.1.3.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.3, i32 0, i64 3
  %994 = load i32* %arrayidx16.1.3.3, align 4
  %mul.1.3.3 = mul nsw i32 %993, %994
  %arrayidx19.1.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.3, i32 0, i64 3
  %995 = load i32* %arrayidx20.1.3.3, align 4
  %add.1.3.3 = add nsw i32 %995, %mul.1.3.3
  store i32 %add.1.3.3, i32* %arrayidx20.1.3.3, align 4
  br label %for.inc.1.3.3

for.inc.1.3.3:                                    ; preds = %for.inc.332.3
  %arrayidx11.2.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.3, i32 0, i64 2
  %996 = load i32* %arrayidx12.2.3.3, align 4
  %arrayidx15.2.3.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.3, i32 0, i64 3
  %997 = load i32* %arrayidx16.2.3.3, align 4
  %mul.2.3.3 = mul nsw i32 %996, %997
  %arrayidx19.2.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.3, i32 0, i64 3
  %998 = load i32* %arrayidx20.2.3.3, align 4
  %add.2.3.3 = add nsw i32 %998, %mul.2.3.3
  store i32 %add.2.3.3, i32* %arrayidx20.2.3.3, align 4
  br label %for.inc.2.3.3

for.inc.2.3.3:                                    ; preds = %for.inc.1.3.3
  %arrayidx11.3.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.3, i32 0, i64 3
  %999 = load i32* %arrayidx12.3.3.3, align 4
  %arrayidx15.3.3.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.3, i32 0, i64 3
  %1000 = load i32* %arrayidx16.3.3.3, align 4
  %mul.3.3.3 = mul nsw i32 %999, %1000
  %arrayidx19.3.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.3, i32 0, i64 3
  %1001 = load i32* %arrayidx20.3.3.3, align 4
  %add.3.3.3 = add nsw i32 %1001, %mul.3.3.3
  store i32 %add.3.3.3, i32* %arrayidx20.3.3.3, align 4
  br label %for.inc.3.3.3

for.inc.3.3.3:                                    ; preds = %for.inc.2.3.3
  %arrayidx11.4.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.3, i32 0, i64 4
  %1002 = load i32* %arrayidx12.4.3.3, align 4
  %arrayidx15.4.3.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.3, i32 0, i64 3
  %1003 = load i32* %arrayidx16.4.3.3, align 4
  %mul.4.3.3 = mul nsw i32 %1002, %1003
  %arrayidx19.4.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.3, i32 0, i64 3
  %1004 = load i32* %arrayidx20.4.3.3, align 4
  %add.4.3.3 = add nsw i32 %1004, %mul.4.3.3
  store i32 %add.4.3.3, i32* %arrayidx20.4.3.3, align 4
  br label %for.inc.4.3.3

for.inc.4.3.3:                                    ; preds = %for.inc.3.3.3
  %arrayidx11.5.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.3, i32 0, i64 5
  %1005 = load i32* %arrayidx12.5.3.3, align 4
  %arrayidx15.5.3.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.3, i32 0, i64 3
  %1006 = load i32* %arrayidx16.5.3.3, align 4
  %mul.5.3.3 = mul nsw i32 %1005, %1006
  %arrayidx19.5.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.3, i32 0, i64 3
  %1007 = load i32* %arrayidx20.5.3.3, align 4
  %add.5.3.3 = add nsw i32 %1007, %mul.5.3.3
  store i32 %add.5.3.3, i32* %arrayidx20.5.3.3, align 4
  br label %for.inc.5.3.3

for.inc.5.3.3:                                    ; preds = %for.inc.4.3.3
  %arrayidx11.6.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.3, i32 0, i64 6
  %1008 = load i32* %arrayidx12.6.3.3, align 4
  %arrayidx15.6.3.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.3, i32 0, i64 3
  %1009 = load i32* %arrayidx16.6.3.3, align 4
  %mul.6.3.3 = mul nsw i32 %1008, %1009
  %arrayidx19.6.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.3, i32 0, i64 3
  %1010 = load i32* %arrayidx20.6.3.3, align 4
  %add.6.3.3 = add nsw i32 %1010, %mul.6.3.3
  store i32 %add.6.3.3, i32* %arrayidx20.6.3.3, align 4
  br label %for.inc.6.3.3

for.inc.6.3.3:                                    ; preds = %for.inc.5.3.3
  %arrayidx11.7.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.3, i32 0, i64 7
  %1011 = load i32* %arrayidx12.7.3.3, align 4
  %arrayidx15.7.3.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.3, i32 0, i64 3
  %1012 = load i32* %arrayidx16.7.3.3, align 4
  %mul.7.3.3 = mul nsw i32 %1011, %1012
  %arrayidx19.7.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.3, i32 0, i64 3
  %1013 = load i32* %arrayidx20.7.3.3, align 4
  %add.7.3.3 = add nsw i32 %1013, %mul.7.3.3
  store i32 %add.7.3.3, i32* %arrayidx20.7.3.3, align 4
  br label %for.inc.7.3.3

for.inc.7.3.3:                                    ; preds = %for.inc.6.3.3
  %arrayidx11.8.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.3, i32 0, i64 8
  %1014 = load i32* %arrayidx12.8.3.3, align 4
  %arrayidx15.8.3.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.3, i32 0, i64 3
  %1015 = load i32* %arrayidx16.8.3.3, align 4
  %mul.8.3.3 = mul nsw i32 %1014, %1015
  %arrayidx19.8.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.3, i32 0, i64 3
  %1016 = load i32* %arrayidx20.8.3.3, align 4
  %add.8.3.3 = add nsw i32 %1016, %mul.8.3.3
  store i32 %add.8.3.3, i32* %arrayidx20.8.3.3, align 4
  br label %for.inc.8.3.3

for.inc.8.3.3:                                    ; preds = %for.inc.7.3.3
  %arrayidx11.9.3.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.3.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.3, i32 0, i64 9
  %1017 = load i32* %arrayidx12.9.3.3, align 4
  %arrayidx15.9.3.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.3, i32 0, i64 3
  %1018 = load i32* %arrayidx16.9.3.3, align 4
  %mul.9.3.3 = mul nsw i32 %1017, %1018
  %arrayidx19.9.3.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.3.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.3, i32 0, i64 3
  %1019 = load i32* %arrayidx20.9.3.3, align 4
  %add.9.3.3 = add nsw i32 %1019, %mul.9.3.3
  store i32 %add.9.3.3, i32* %arrayidx20.9.3.3, align 4
  br label %for.inc.9.3.3

for.inc.9.3.3:                                    ; preds = %for.inc.8.3.3
  br label %for.inc21.3.3

for.inc21.3.3:                                    ; preds = %for.inc.9.3.3
  %arrayidx.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.4.3 = getelementptr inbounds [10 x i32]* %arrayidx.4.3, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.3, align 4
  br label %for.body8.4.3

for.body8.4.3:                                    ; preds = %for.inc21.3.3
  %arrayidx11.434.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.435.3 = getelementptr inbounds [10 x i32]* %arrayidx11.434.3, i32 0, i64 0
  %1020 = load i32* %arrayidx12.435.3, align 4
  %arrayidx16.436.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %1021 = load i32* %arrayidx16.436.3, align 4
  %mul.437.3 = mul nsw i32 %1020, %1021
  %arrayidx19.439.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.440.3 = getelementptr inbounds [10 x i32]* %arrayidx19.439.3, i32 0, i64 4
  %1022 = load i32* %arrayidx20.440.3, align 4
  %add.441.3 = add nsw i32 %1022, %mul.437.3
  store i32 %add.441.3, i32* %arrayidx20.440.3, align 4
  br label %for.inc.442.3

for.inc.442.3:                                    ; preds = %for.body8.4.3
  %arrayidx11.1.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.3, i32 0, i64 1
  %1023 = load i32* %arrayidx12.1.4.3, align 4
  %arrayidx15.1.4.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.3, i32 0, i64 4
  %1024 = load i32* %arrayidx16.1.4.3, align 4
  %mul.1.4.3 = mul nsw i32 %1023, %1024
  %arrayidx19.1.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.3, i32 0, i64 4
  %1025 = load i32* %arrayidx20.1.4.3, align 4
  %add.1.4.3 = add nsw i32 %1025, %mul.1.4.3
  store i32 %add.1.4.3, i32* %arrayidx20.1.4.3, align 4
  br label %for.inc.1.4.3

for.inc.1.4.3:                                    ; preds = %for.inc.442.3
  %arrayidx11.2.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.3, i32 0, i64 2
  %1026 = load i32* %arrayidx12.2.4.3, align 4
  %arrayidx15.2.4.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.3, i32 0, i64 4
  %1027 = load i32* %arrayidx16.2.4.3, align 4
  %mul.2.4.3 = mul nsw i32 %1026, %1027
  %arrayidx19.2.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.3, i32 0, i64 4
  %1028 = load i32* %arrayidx20.2.4.3, align 4
  %add.2.4.3 = add nsw i32 %1028, %mul.2.4.3
  store i32 %add.2.4.3, i32* %arrayidx20.2.4.3, align 4
  br label %for.inc.2.4.3

for.inc.2.4.3:                                    ; preds = %for.inc.1.4.3
  %arrayidx11.3.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.3, i32 0, i64 3
  %1029 = load i32* %arrayidx12.3.4.3, align 4
  %arrayidx15.3.4.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.3, i32 0, i64 4
  %1030 = load i32* %arrayidx16.3.4.3, align 4
  %mul.3.4.3 = mul nsw i32 %1029, %1030
  %arrayidx19.3.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.3, i32 0, i64 4
  %1031 = load i32* %arrayidx20.3.4.3, align 4
  %add.3.4.3 = add nsw i32 %1031, %mul.3.4.3
  store i32 %add.3.4.3, i32* %arrayidx20.3.4.3, align 4
  br label %for.inc.3.4.3

for.inc.3.4.3:                                    ; preds = %for.inc.2.4.3
  %arrayidx11.4.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.3, i32 0, i64 4
  %1032 = load i32* %arrayidx12.4.4.3, align 4
  %arrayidx15.4.4.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.3, i32 0, i64 4
  %1033 = load i32* %arrayidx16.4.4.3, align 4
  %mul.4.4.3 = mul nsw i32 %1032, %1033
  %arrayidx19.4.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.3, i32 0, i64 4
  %1034 = load i32* %arrayidx20.4.4.3, align 4
  %add.4.4.3 = add nsw i32 %1034, %mul.4.4.3
  store i32 %add.4.4.3, i32* %arrayidx20.4.4.3, align 4
  br label %for.inc.4.4.3

for.inc.4.4.3:                                    ; preds = %for.inc.3.4.3
  %arrayidx11.5.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.3, i32 0, i64 5
  %1035 = load i32* %arrayidx12.5.4.3, align 4
  %arrayidx15.5.4.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.3, i32 0, i64 4
  %1036 = load i32* %arrayidx16.5.4.3, align 4
  %mul.5.4.3 = mul nsw i32 %1035, %1036
  %arrayidx19.5.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.3, i32 0, i64 4
  %1037 = load i32* %arrayidx20.5.4.3, align 4
  %add.5.4.3 = add nsw i32 %1037, %mul.5.4.3
  store i32 %add.5.4.3, i32* %arrayidx20.5.4.3, align 4
  br label %for.inc.5.4.3

for.inc.5.4.3:                                    ; preds = %for.inc.4.4.3
  %arrayidx11.6.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.3, i32 0, i64 6
  %1038 = load i32* %arrayidx12.6.4.3, align 4
  %arrayidx15.6.4.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.3, i32 0, i64 4
  %1039 = load i32* %arrayidx16.6.4.3, align 4
  %mul.6.4.3 = mul nsw i32 %1038, %1039
  %arrayidx19.6.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.3, i32 0, i64 4
  %1040 = load i32* %arrayidx20.6.4.3, align 4
  %add.6.4.3 = add nsw i32 %1040, %mul.6.4.3
  store i32 %add.6.4.3, i32* %arrayidx20.6.4.3, align 4
  br label %for.inc.6.4.3

for.inc.6.4.3:                                    ; preds = %for.inc.5.4.3
  %arrayidx11.7.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.3, i32 0, i64 7
  %1041 = load i32* %arrayidx12.7.4.3, align 4
  %arrayidx15.7.4.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.3, i32 0, i64 4
  %1042 = load i32* %arrayidx16.7.4.3, align 4
  %mul.7.4.3 = mul nsw i32 %1041, %1042
  %arrayidx19.7.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.3, i32 0, i64 4
  %1043 = load i32* %arrayidx20.7.4.3, align 4
  %add.7.4.3 = add nsw i32 %1043, %mul.7.4.3
  store i32 %add.7.4.3, i32* %arrayidx20.7.4.3, align 4
  br label %for.inc.7.4.3

for.inc.7.4.3:                                    ; preds = %for.inc.6.4.3
  %arrayidx11.8.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.3, i32 0, i64 8
  %1044 = load i32* %arrayidx12.8.4.3, align 4
  %arrayidx15.8.4.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.3, i32 0, i64 4
  %1045 = load i32* %arrayidx16.8.4.3, align 4
  %mul.8.4.3 = mul nsw i32 %1044, %1045
  %arrayidx19.8.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.3, i32 0, i64 4
  %1046 = load i32* %arrayidx20.8.4.3, align 4
  %add.8.4.3 = add nsw i32 %1046, %mul.8.4.3
  store i32 %add.8.4.3, i32* %arrayidx20.8.4.3, align 4
  br label %for.inc.8.4.3

for.inc.8.4.3:                                    ; preds = %for.inc.7.4.3
  %arrayidx11.9.4.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.4.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.3, i32 0, i64 9
  %1047 = load i32* %arrayidx12.9.4.3, align 4
  %arrayidx15.9.4.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.3, i32 0, i64 4
  %1048 = load i32* %arrayidx16.9.4.3, align 4
  %mul.9.4.3 = mul nsw i32 %1047, %1048
  %arrayidx19.9.4.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.4.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.3, i32 0, i64 4
  %1049 = load i32* %arrayidx20.9.4.3, align 4
  %add.9.4.3 = add nsw i32 %1049, %mul.9.4.3
  store i32 %add.9.4.3, i32* %arrayidx20.9.4.3, align 4
  br label %for.inc.9.4.3

for.inc.9.4.3:                                    ; preds = %for.inc.8.4.3
  br label %for.inc21.4.3

for.inc21.4.3:                                    ; preds = %for.inc.9.4.3
  %arrayidx.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.5.3 = getelementptr inbounds [10 x i32]* %arrayidx.5.3, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.3, align 4
  br label %for.body8.5.3

for.body8.5.3:                                    ; preds = %for.inc21.4.3
  %arrayidx11.544.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.545.3 = getelementptr inbounds [10 x i32]* %arrayidx11.544.3, i32 0, i64 0
  %1050 = load i32* %arrayidx12.545.3, align 4
  %arrayidx16.546.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %1051 = load i32* %arrayidx16.546.3, align 4
  %mul.547.3 = mul nsw i32 %1050, %1051
  %arrayidx19.549.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.550.3 = getelementptr inbounds [10 x i32]* %arrayidx19.549.3, i32 0, i64 5
  %1052 = load i32* %arrayidx20.550.3, align 4
  %add.551.3 = add nsw i32 %1052, %mul.547.3
  store i32 %add.551.3, i32* %arrayidx20.550.3, align 4
  br label %for.inc.552.3

for.inc.552.3:                                    ; preds = %for.body8.5.3
  %arrayidx11.1.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.3, i32 0, i64 1
  %1053 = load i32* %arrayidx12.1.5.3, align 4
  %arrayidx15.1.5.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.3, i32 0, i64 5
  %1054 = load i32* %arrayidx16.1.5.3, align 4
  %mul.1.5.3 = mul nsw i32 %1053, %1054
  %arrayidx19.1.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.3, i32 0, i64 5
  %1055 = load i32* %arrayidx20.1.5.3, align 4
  %add.1.5.3 = add nsw i32 %1055, %mul.1.5.3
  store i32 %add.1.5.3, i32* %arrayidx20.1.5.3, align 4
  br label %for.inc.1.5.3

for.inc.1.5.3:                                    ; preds = %for.inc.552.3
  %arrayidx11.2.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.3, i32 0, i64 2
  %1056 = load i32* %arrayidx12.2.5.3, align 4
  %arrayidx15.2.5.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.3, i32 0, i64 5
  %1057 = load i32* %arrayidx16.2.5.3, align 4
  %mul.2.5.3 = mul nsw i32 %1056, %1057
  %arrayidx19.2.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.3, i32 0, i64 5
  %1058 = load i32* %arrayidx20.2.5.3, align 4
  %add.2.5.3 = add nsw i32 %1058, %mul.2.5.3
  store i32 %add.2.5.3, i32* %arrayidx20.2.5.3, align 4
  br label %for.inc.2.5.3

for.inc.2.5.3:                                    ; preds = %for.inc.1.5.3
  %arrayidx11.3.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.3, i32 0, i64 3
  %1059 = load i32* %arrayidx12.3.5.3, align 4
  %arrayidx15.3.5.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.3, i32 0, i64 5
  %1060 = load i32* %arrayidx16.3.5.3, align 4
  %mul.3.5.3 = mul nsw i32 %1059, %1060
  %arrayidx19.3.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.3, i32 0, i64 5
  %1061 = load i32* %arrayidx20.3.5.3, align 4
  %add.3.5.3 = add nsw i32 %1061, %mul.3.5.3
  store i32 %add.3.5.3, i32* %arrayidx20.3.5.3, align 4
  br label %for.inc.3.5.3

for.inc.3.5.3:                                    ; preds = %for.inc.2.5.3
  %arrayidx11.4.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.3, i32 0, i64 4
  %1062 = load i32* %arrayidx12.4.5.3, align 4
  %arrayidx15.4.5.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.3, i32 0, i64 5
  %1063 = load i32* %arrayidx16.4.5.3, align 4
  %mul.4.5.3 = mul nsw i32 %1062, %1063
  %arrayidx19.4.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.3, i32 0, i64 5
  %1064 = load i32* %arrayidx20.4.5.3, align 4
  %add.4.5.3 = add nsw i32 %1064, %mul.4.5.3
  store i32 %add.4.5.3, i32* %arrayidx20.4.5.3, align 4
  br label %for.inc.4.5.3

for.inc.4.5.3:                                    ; preds = %for.inc.3.5.3
  %arrayidx11.5.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.3, i32 0, i64 5
  %1065 = load i32* %arrayidx12.5.5.3, align 4
  %arrayidx15.5.5.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.3, i32 0, i64 5
  %1066 = load i32* %arrayidx16.5.5.3, align 4
  %mul.5.5.3 = mul nsw i32 %1065, %1066
  %arrayidx19.5.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.3, i32 0, i64 5
  %1067 = load i32* %arrayidx20.5.5.3, align 4
  %add.5.5.3 = add nsw i32 %1067, %mul.5.5.3
  store i32 %add.5.5.3, i32* %arrayidx20.5.5.3, align 4
  br label %for.inc.5.5.3

for.inc.5.5.3:                                    ; preds = %for.inc.4.5.3
  %arrayidx11.6.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.3, i32 0, i64 6
  %1068 = load i32* %arrayidx12.6.5.3, align 4
  %arrayidx15.6.5.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.3, i32 0, i64 5
  %1069 = load i32* %arrayidx16.6.5.3, align 4
  %mul.6.5.3 = mul nsw i32 %1068, %1069
  %arrayidx19.6.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.3, i32 0, i64 5
  %1070 = load i32* %arrayidx20.6.5.3, align 4
  %add.6.5.3 = add nsw i32 %1070, %mul.6.5.3
  store i32 %add.6.5.3, i32* %arrayidx20.6.5.3, align 4
  br label %for.inc.6.5.3

for.inc.6.5.3:                                    ; preds = %for.inc.5.5.3
  %arrayidx11.7.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.3, i32 0, i64 7
  %1071 = load i32* %arrayidx12.7.5.3, align 4
  %arrayidx15.7.5.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.3, i32 0, i64 5
  %1072 = load i32* %arrayidx16.7.5.3, align 4
  %mul.7.5.3 = mul nsw i32 %1071, %1072
  %arrayidx19.7.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.3, i32 0, i64 5
  %1073 = load i32* %arrayidx20.7.5.3, align 4
  %add.7.5.3 = add nsw i32 %1073, %mul.7.5.3
  store i32 %add.7.5.3, i32* %arrayidx20.7.5.3, align 4
  br label %for.inc.7.5.3

for.inc.7.5.3:                                    ; preds = %for.inc.6.5.3
  %arrayidx11.8.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.3, i32 0, i64 8
  %1074 = load i32* %arrayidx12.8.5.3, align 4
  %arrayidx15.8.5.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.3, i32 0, i64 5
  %1075 = load i32* %arrayidx16.8.5.3, align 4
  %mul.8.5.3 = mul nsw i32 %1074, %1075
  %arrayidx19.8.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.3, i32 0, i64 5
  %1076 = load i32* %arrayidx20.8.5.3, align 4
  %add.8.5.3 = add nsw i32 %1076, %mul.8.5.3
  store i32 %add.8.5.3, i32* %arrayidx20.8.5.3, align 4
  br label %for.inc.8.5.3

for.inc.8.5.3:                                    ; preds = %for.inc.7.5.3
  %arrayidx11.9.5.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.5.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.3, i32 0, i64 9
  %1077 = load i32* %arrayidx12.9.5.3, align 4
  %arrayidx15.9.5.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.3, i32 0, i64 5
  %1078 = load i32* %arrayidx16.9.5.3, align 4
  %mul.9.5.3 = mul nsw i32 %1077, %1078
  %arrayidx19.9.5.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.5.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.3, i32 0, i64 5
  %1079 = load i32* %arrayidx20.9.5.3, align 4
  %add.9.5.3 = add nsw i32 %1079, %mul.9.5.3
  store i32 %add.9.5.3, i32* %arrayidx20.9.5.3, align 4
  br label %for.inc.9.5.3

for.inc.9.5.3:                                    ; preds = %for.inc.8.5.3
  br label %for.inc21.5.3

for.inc21.5.3:                                    ; preds = %for.inc.9.5.3
  %arrayidx.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.6.3 = getelementptr inbounds [10 x i32]* %arrayidx.6.3, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.3, align 4
  br label %for.body8.6.3

for.body8.6.3:                                    ; preds = %for.inc21.5.3
  %arrayidx11.654.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.655.3 = getelementptr inbounds [10 x i32]* %arrayidx11.654.3, i32 0, i64 0
  %1080 = load i32* %arrayidx12.655.3, align 4
  %arrayidx16.656.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %1081 = load i32* %arrayidx16.656.3, align 4
  %mul.657.3 = mul nsw i32 %1080, %1081
  %arrayidx19.659.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.660.3 = getelementptr inbounds [10 x i32]* %arrayidx19.659.3, i32 0, i64 6
  %1082 = load i32* %arrayidx20.660.3, align 4
  %add.661.3 = add nsw i32 %1082, %mul.657.3
  store i32 %add.661.3, i32* %arrayidx20.660.3, align 4
  br label %for.inc.662.3

for.inc.662.3:                                    ; preds = %for.body8.6.3
  %arrayidx11.1.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.3, i32 0, i64 1
  %1083 = load i32* %arrayidx12.1.6.3, align 4
  %arrayidx15.1.6.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.3, i32 0, i64 6
  %1084 = load i32* %arrayidx16.1.6.3, align 4
  %mul.1.6.3 = mul nsw i32 %1083, %1084
  %arrayidx19.1.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.3, i32 0, i64 6
  %1085 = load i32* %arrayidx20.1.6.3, align 4
  %add.1.6.3 = add nsw i32 %1085, %mul.1.6.3
  store i32 %add.1.6.3, i32* %arrayidx20.1.6.3, align 4
  br label %for.inc.1.6.3

for.inc.1.6.3:                                    ; preds = %for.inc.662.3
  %arrayidx11.2.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.3, i32 0, i64 2
  %1086 = load i32* %arrayidx12.2.6.3, align 4
  %arrayidx15.2.6.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.3, i32 0, i64 6
  %1087 = load i32* %arrayidx16.2.6.3, align 4
  %mul.2.6.3 = mul nsw i32 %1086, %1087
  %arrayidx19.2.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.3, i32 0, i64 6
  %1088 = load i32* %arrayidx20.2.6.3, align 4
  %add.2.6.3 = add nsw i32 %1088, %mul.2.6.3
  store i32 %add.2.6.3, i32* %arrayidx20.2.6.3, align 4
  br label %for.inc.2.6.3

for.inc.2.6.3:                                    ; preds = %for.inc.1.6.3
  %arrayidx11.3.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.3, i32 0, i64 3
  %1089 = load i32* %arrayidx12.3.6.3, align 4
  %arrayidx15.3.6.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.3, i32 0, i64 6
  %1090 = load i32* %arrayidx16.3.6.3, align 4
  %mul.3.6.3 = mul nsw i32 %1089, %1090
  %arrayidx19.3.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.3, i32 0, i64 6
  %1091 = load i32* %arrayidx20.3.6.3, align 4
  %add.3.6.3 = add nsw i32 %1091, %mul.3.6.3
  store i32 %add.3.6.3, i32* %arrayidx20.3.6.3, align 4
  br label %for.inc.3.6.3

for.inc.3.6.3:                                    ; preds = %for.inc.2.6.3
  %arrayidx11.4.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.3, i32 0, i64 4
  %1092 = load i32* %arrayidx12.4.6.3, align 4
  %arrayidx15.4.6.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.3, i32 0, i64 6
  %1093 = load i32* %arrayidx16.4.6.3, align 4
  %mul.4.6.3 = mul nsw i32 %1092, %1093
  %arrayidx19.4.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.3, i32 0, i64 6
  %1094 = load i32* %arrayidx20.4.6.3, align 4
  %add.4.6.3 = add nsw i32 %1094, %mul.4.6.3
  store i32 %add.4.6.3, i32* %arrayidx20.4.6.3, align 4
  br label %for.inc.4.6.3

for.inc.4.6.3:                                    ; preds = %for.inc.3.6.3
  %arrayidx11.5.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.3, i32 0, i64 5
  %1095 = load i32* %arrayidx12.5.6.3, align 4
  %arrayidx15.5.6.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.3, i32 0, i64 6
  %1096 = load i32* %arrayidx16.5.6.3, align 4
  %mul.5.6.3 = mul nsw i32 %1095, %1096
  %arrayidx19.5.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.3, i32 0, i64 6
  %1097 = load i32* %arrayidx20.5.6.3, align 4
  %add.5.6.3 = add nsw i32 %1097, %mul.5.6.3
  store i32 %add.5.6.3, i32* %arrayidx20.5.6.3, align 4
  br label %for.inc.5.6.3

for.inc.5.6.3:                                    ; preds = %for.inc.4.6.3
  %arrayidx11.6.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.3, i32 0, i64 6
  %1098 = load i32* %arrayidx12.6.6.3, align 4
  %arrayidx15.6.6.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.3, i32 0, i64 6
  %1099 = load i32* %arrayidx16.6.6.3, align 4
  %mul.6.6.3 = mul nsw i32 %1098, %1099
  %arrayidx19.6.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.3, i32 0, i64 6
  %1100 = load i32* %arrayidx20.6.6.3, align 4
  %add.6.6.3 = add nsw i32 %1100, %mul.6.6.3
  store i32 %add.6.6.3, i32* %arrayidx20.6.6.3, align 4
  br label %for.inc.6.6.3

for.inc.6.6.3:                                    ; preds = %for.inc.5.6.3
  %arrayidx11.7.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.3, i32 0, i64 7
  %1101 = load i32* %arrayidx12.7.6.3, align 4
  %arrayidx15.7.6.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.3, i32 0, i64 6
  %1102 = load i32* %arrayidx16.7.6.3, align 4
  %mul.7.6.3 = mul nsw i32 %1101, %1102
  %arrayidx19.7.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.3, i32 0, i64 6
  %1103 = load i32* %arrayidx20.7.6.3, align 4
  %add.7.6.3 = add nsw i32 %1103, %mul.7.6.3
  store i32 %add.7.6.3, i32* %arrayidx20.7.6.3, align 4
  br label %for.inc.7.6.3

for.inc.7.6.3:                                    ; preds = %for.inc.6.6.3
  %arrayidx11.8.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.3, i32 0, i64 8
  %1104 = load i32* %arrayidx12.8.6.3, align 4
  %arrayidx15.8.6.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.3, i32 0, i64 6
  %1105 = load i32* %arrayidx16.8.6.3, align 4
  %mul.8.6.3 = mul nsw i32 %1104, %1105
  %arrayidx19.8.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.3, i32 0, i64 6
  %1106 = load i32* %arrayidx20.8.6.3, align 4
  %add.8.6.3 = add nsw i32 %1106, %mul.8.6.3
  store i32 %add.8.6.3, i32* %arrayidx20.8.6.3, align 4
  br label %for.inc.8.6.3

for.inc.8.6.3:                                    ; preds = %for.inc.7.6.3
  %arrayidx11.9.6.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.6.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.3, i32 0, i64 9
  %1107 = load i32* %arrayidx12.9.6.3, align 4
  %arrayidx15.9.6.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.3, i32 0, i64 6
  %1108 = load i32* %arrayidx16.9.6.3, align 4
  %mul.9.6.3 = mul nsw i32 %1107, %1108
  %arrayidx19.9.6.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.6.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.3, i32 0, i64 6
  %1109 = load i32* %arrayidx20.9.6.3, align 4
  %add.9.6.3 = add nsw i32 %1109, %mul.9.6.3
  store i32 %add.9.6.3, i32* %arrayidx20.9.6.3, align 4
  br label %for.inc.9.6.3

for.inc.9.6.3:                                    ; preds = %for.inc.8.6.3
  br label %for.inc21.6.3

for.inc21.6.3:                                    ; preds = %for.inc.9.6.3
  %arrayidx.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.7.3 = getelementptr inbounds [10 x i32]* %arrayidx.7.3, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.3, align 4
  br label %for.body8.7.3

for.body8.7.3:                                    ; preds = %for.inc21.6.3
  %arrayidx11.764.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.765.3 = getelementptr inbounds [10 x i32]* %arrayidx11.764.3, i32 0, i64 0
  %1110 = load i32* %arrayidx12.765.3, align 4
  %arrayidx16.766.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %1111 = load i32* %arrayidx16.766.3, align 4
  %mul.767.3 = mul nsw i32 %1110, %1111
  %arrayidx19.769.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.770.3 = getelementptr inbounds [10 x i32]* %arrayidx19.769.3, i32 0, i64 7
  %1112 = load i32* %arrayidx20.770.3, align 4
  %add.771.3 = add nsw i32 %1112, %mul.767.3
  store i32 %add.771.3, i32* %arrayidx20.770.3, align 4
  br label %for.inc.772.3

for.inc.772.3:                                    ; preds = %for.body8.7.3
  %arrayidx11.1.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.3, i32 0, i64 1
  %1113 = load i32* %arrayidx12.1.7.3, align 4
  %arrayidx15.1.7.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.3, i32 0, i64 7
  %1114 = load i32* %arrayidx16.1.7.3, align 4
  %mul.1.7.3 = mul nsw i32 %1113, %1114
  %arrayidx19.1.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.3, i32 0, i64 7
  %1115 = load i32* %arrayidx20.1.7.3, align 4
  %add.1.7.3 = add nsw i32 %1115, %mul.1.7.3
  store i32 %add.1.7.3, i32* %arrayidx20.1.7.3, align 4
  br label %for.inc.1.7.3

for.inc.1.7.3:                                    ; preds = %for.inc.772.3
  %arrayidx11.2.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.3, i32 0, i64 2
  %1116 = load i32* %arrayidx12.2.7.3, align 4
  %arrayidx15.2.7.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.3, i32 0, i64 7
  %1117 = load i32* %arrayidx16.2.7.3, align 4
  %mul.2.7.3 = mul nsw i32 %1116, %1117
  %arrayidx19.2.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.3, i32 0, i64 7
  %1118 = load i32* %arrayidx20.2.7.3, align 4
  %add.2.7.3 = add nsw i32 %1118, %mul.2.7.3
  store i32 %add.2.7.3, i32* %arrayidx20.2.7.3, align 4
  br label %for.inc.2.7.3

for.inc.2.7.3:                                    ; preds = %for.inc.1.7.3
  %arrayidx11.3.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.3, i32 0, i64 3
  %1119 = load i32* %arrayidx12.3.7.3, align 4
  %arrayidx15.3.7.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.3, i32 0, i64 7
  %1120 = load i32* %arrayidx16.3.7.3, align 4
  %mul.3.7.3 = mul nsw i32 %1119, %1120
  %arrayidx19.3.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.3, i32 0, i64 7
  %1121 = load i32* %arrayidx20.3.7.3, align 4
  %add.3.7.3 = add nsw i32 %1121, %mul.3.7.3
  store i32 %add.3.7.3, i32* %arrayidx20.3.7.3, align 4
  br label %for.inc.3.7.3

for.inc.3.7.3:                                    ; preds = %for.inc.2.7.3
  %arrayidx11.4.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.3, i32 0, i64 4
  %1122 = load i32* %arrayidx12.4.7.3, align 4
  %arrayidx15.4.7.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.3, i32 0, i64 7
  %1123 = load i32* %arrayidx16.4.7.3, align 4
  %mul.4.7.3 = mul nsw i32 %1122, %1123
  %arrayidx19.4.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.3, i32 0, i64 7
  %1124 = load i32* %arrayidx20.4.7.3, align 4
  %add.4.7.3 = add nsw i32 %1124, %mul.4.7.3
  store i32 %add.4.7.3, i32* %arrayidx20.4.7.3, align 4
  br label %for.inc.4.7.3

for.inc.4.7.3:                                    ; preds = %for.inc.3.7.3
  %arrayidx11.5.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.3, i32 0, i64 5
  %1125 = load i32* %arrayidx12.5.7.3, align 4
  %arrayidx15.5.7.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.3, i32 0, i64 7
  %1126 = load i32* %arrayidx16.5.7.3, align 4
  %mul.5.7.3 = mul nsw i32 %1125, %1126
  %arrayidx19.5.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.3, i32 0, i64 7
  %1127 = load i32* %arrayidx20.5.7.3, align 4
  %add.5.7.3 = add nsw i32 %1127, %mul.5.7.3
  store i32 %add.5.7.3, i32* %arrayidx20.5.7.3, align 4
  br label %for.inc.5.7.3

for.inc.5.7.3:                                    ; preds = %for.inc.4.7.3
  %arrayidx11.6.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.3, i32 0, i64 6
  %1128 = load i32* %arrayidx12.6.7.3, align 4
  %arrayidx15.6.7.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.3, i32 0, i64 7
  %1129 = load i32* %arrayidx16.6.7.3, align 4
  %mul.6.7.3 = mul nsw i32 %1128, %1129
  %arrayidx19.6.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.3, i32 0, i64 7
  %1130 = load i32* %arrayidx20.6.7.3, align 4
  %add.6.7.3 = add nsw i32 %1130, %mul.6.7.3
  store i32 %add.6.7.3, i32* %arrayidx20.6.7.3, align 4
  br label %for.inc.6.7.3

for.inc.6.7.3:                                    ; preds = %for.inc.5.7.3
  %arrayidx11.7.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.3, i32 0, i64 7
  %1131 = load i32* %arrayidx12.7.7.3, align 4
  %arrayidx15.7.7.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.3, i32 0, i64 7
  %1132 = load i32* %arrayidx16.7.7.3, align 4
  %mul.7.7.3 = mul nsw i32 %1131, %1132
  %arrayidx19.7.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.3, i32 0, i64 7
  %1133 = load i32* %arrayidx20.7.7.3, align 4
  %add.7.7.3 = add nsw i32 %1133, %mul.7.7.3
  store i32 %add.7.7.3, i32* %arrayidx20.7.7.3, align 4
  br label %for.inc.7.7.3

for.inc.7.7.3:                                    ; preds = %for.inc.6.7.3
  %arrayidx11.8.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.3, i32 0, i64 8
  %1134 = load i32* %arrayidx12.8.7.3, align 4
  %arrayidx15.8.7.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.3, i32 0, i64 7
  %1135 = load i32* %arrayidx16.8.7.3, align 4
  %mul.8.7.3 = mul nsw i32 %1134, %1135
  %arrayidx19.8.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.3, i32 0, i64 7
  %1136 = load i32* %arrayidx20.8.7.3, align 4
  %add.8.7.3 = add nsw i32 %1136, %mul.8.7.3
  store i32 %add.8.7.3, i32* %arrayidx20.8.7.3, align 4
  br label %for.inc.8.7.3

for.inc.8.7.3:                                    ; preds = %for.inc.7.7.3
  %arrayidx11.9.7.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.7.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.3, i32 0, i64 9
  %1137 = load i32* %arrayidx12.9.7.3, align 4
  %arrayidx15.9.7.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.3, i32 0, i64 7
  %1138 = load i32* %arrayidx16.9.7.3, align 4
  %mul.9.7.3 = mul nsw i32 %1137, %1138
  %arrayidx19.9.7.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.7.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.3, i32 0, i64 7
  %1139 = load i32* %arrayidx20.9.7.3, align 4
  %add.9.7.3 = add nsw i32 %1139, %mul.9.7.3
  store i32 %add.9.7.3, i32* %arrayidx20.9.7.3, align 4
  br label %for.inc.9.7.3

for.inc.9.7.3:                                    ; preds = %for.inc.8.7.3
  br label %for.inc21.7.3

for.inc21.7.3:                                    ; preds = %for.inc.9.7.3
  %arrayidx.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.8.3 = getelementptr inbounds [10 x i32]* %arrayidx.8.3, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.3, align 4
  br label %for.body8.8.3

for.body8.8.3:                                    ; preds = %for.inc21.7.3
  %arrayidx11.874.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.875.3 = getelementptr inbounds [10 x i32]* %arrayidx11.874.3, i32 0, i64 0
  %1140 = load i32* %arrayidx12.875.3, align 4
  %arrayidx16.876.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %1141 = load i32* %arrayidx16.876.3, align 4
  %mul.877.3 = mul nsw i32 %1140, %1141
  %arrayidx19.879.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.880.3 = getelementptr inbounds [10 x i32]* %arrayidx19.879.3, i32 0, i64 8
  %1142 = load i32* %arrayidx20.880.3, align 4
  %add.881.3 = add nsw i32 %1142, %mul.877.3
  store i32 %add.881.3, i32* %arrayidx20.880.3, align 4
  br label %for.inc.882.3

for.inc.882.3:                                    ; preds = %for.body8.8.3
  %arrayidx11.1.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.3, i32 0, i64 1
  %1143 = load i32* %arrayidx12.1.8.3, align 4
  %arrayidx15.1.8.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.3, i32 0, i64 8
  %1144 = load i32* %arrayidx16.1.8.3, align 4
  %mul.1.8.3 = mul nsw i32 %1143, %1144
  %arrayidx19.1.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.3, i32 0, i64 8
  %1145 = load i32* %arrayidx20.1.8.3, align 4
  %add.1.8.3 = add nsw i32 %1145, %mul.1.8.3
  store i32 %add.1.8.3, i32* %arrayidx20.1.8.3, align 4
  br label %for.inc.1.8.3

for.inc.1.8.3:                                    ; preds = %for.inc.882.3
  %arrayidx11.2.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.3, i32 0, i64 2
  %1146 = load i32* %arrayidx12.2.8.3, align 4
  %arrayidx15.2.8.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.3, i32 0, i64 8
  %1147 = load i32* %arrayidx16.2.8.3, align 4
  %mul.2.8.3 = mul nsw i32 %1146, %1147
  %arrayidx19.2.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.3, i32 0, i64 8
  %1148 = load i32* %arrayidx20.2.8.3, align 4
  %add.2.8.3 = add nsw i32 %1148, %mul.2.8.3
  store i32 %add.2.8.3, i32* %arrayidx20.2.8.3, align 4
  br label %for.inc.2.8.3

for.inc.2.8.3:                                    ; preds = %for.inc.1.8.3
  %arrayidx11.3.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.3, i32 0, i64 3
  %1149 = load i32* %arrayidx12.3.8.3, align 4
  %arrayidx15.3.8.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.3, i32 0, i64 8
  %1150 = load i32* %arrayidx16.3.8.3, align 4
  %mul.3.8.3 = mul nsw i32 %1149, %1150
  %arrayidx19.3.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.3, i32 0, i64 8
  %1151 = load i32* %arrayidx20.3.8.3, align 4
  %add.3.8.3 = add nsw i32 %1151, %mul.3.8.3
  store i32 %add.3.8.3, i32* %arrayidx20.3.8.3, align 4
  br label %for.inc.3.8.3

for.inc.3.8.3:                                    ; preds = %for.inc.2.8.3
  %arrayidx11.4.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.3, i32 0, i64 4
  %1152 = load i32* %arrayidx12.4.8.3, align 4
  %arrayidx15.4.8.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.3, i32 0, i64 8
  %1153 = load i32* %arrayidx16.4.8.3, align 4
  %mul.4.8.3 = mul nsw i32 %1152, %1153
  %arrayidx19.4.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.3, i32 0, i64 8
  %1154 = load i32* %arrayidx20.4.8.3, align 4
  %add.4.8.3 = add nsw i32 %1154, %mul.4.8.3
  store i32 %add.4.8.3, i32* %arrayidx20.4.8.3, align 4
  br label %for.inc.4.8.3

for.inc.4.8.3:                                    ; preds = %for.inc.3.8.3
  %arrayidx11.5.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.3, i32 0, i64 5
  %1155 = load i32* %arrayidx12.5.8.3, align 4
  %arrayidx15.5.8.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.3, i32 0, i64 8
  %1156 = load i32* %arrayidx16.5.8.3, align 4
  %mul.5.8.3 = mul nsw i32 %1155, %1156
  %arrayidx19.5.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.3, i32 0, i64 8
  %1157 = load i32* %arrayidx20.5.8.3, align 4
  %add.5.8.3 = add nsw i32 %1157, %mul.5.8.3
  store i32 %add.5.8.3, i32* %arrayidx20.5.8.3, align 4
  br label %for.inc.5.8.3

for.inc.5.8.3:                                    ; preds = %for.inc.4.8.3
  %arrayidx11.6.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.3, i32 0, i64 6
  %1158 = load i32* %arrayidx12.6.8.3, align 4
  %arrayidx15.6.8.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.3, i32 0, i64 8
  %1159 = load i32* %arrayidx16.6.8.3, align 4
  %mul.6.8.3 = mul nsw i32 %1158, %1159
  %arrayidx19.6.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.3, i32 0, i64 8
  %1160 = load i32* %arrayidx20.6.8.3, align 4
  %add.6.8.3 = add nsw i32 %1160, %mul.6.8.3
  store i32 %add.6.8.3, i32* %arrayidx20.6.8.3, align 4
  br label %for.inc.6.8.3

for.inc.6.8.3:                                    ; preds = %for.inc.5.8.3
  %arrayidx11.7.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.3, i32 0, i64 7
  %1161 = load i32* %arrayidx12.7.8.3, align 4
  %arrayidx15.7.8.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.3, i32 0, i64 8
  %1162 = load i32* %arrayidx16.7.8.3, align 4
  %mul.7.8.3 = mul nsw i32 %1161, %1162
  %arrayidx19.7.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.3, i32 0, i64 8
  %1163 = load i32* %arrayidx20.7.8.3, align 4
  %add.7.8.3 = add nsw i32 %1163, %mul.7.8.3
  store i32 %add.7.8.3, i32* %arrayidx20.7.8.3, align 4
  br label %for.inc.7.8.3

for.inc.7.8.3:                                    ; preds = %for.inc.6.8.3
  %arrayidx11.8.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.3, i32 0, i64 8
  %1164 = load i32* %arrayidx12.8.8.3, align 4
  %arrayidx15.8.8.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.3, i32 0, i64 8
  %1165 = load i32* %arrayidx16.8.8.3, align 4
  %mul.8.8.3 = mul nsw i32 %1164, %1165
  %arrayidx19.8.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.3, i32 0, i64 8
  %1166 = load i32* %arrayidx20.8.8.3, align 4
  %add.8.8.3 = add nsw i32 %1166, %mul.8.8.3
  store i32 %add.8.8.3, i32* %arrayidx20.8.8.3, align 4
  br label %for.inc.8.8.3

for.inc.8.8.3:                                    ; preds = %for.inc.7.8.3
  %arrayidx11.9.8.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.8.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.3, i32 0, i64 9
  %1167 = load i32* %arrayidx12.9.8.3, align 4
  %arrayidx15.9.8.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.3, i32 0, i64 8
  %1168 = load i32* %arrayidx16.9.8.3, align 4
  %mul.9.8.3 = mul nsw i32 %1167, %1168
  %arrayidx19.9.8.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.8.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.3, i32 0, i64 8
  %1169 = load i32* %arrayidx20.9.8.3, align 4
  %add.9.8.3 = add nsw i32 %1169, %mul.9.8.3
  store i32 %add.9.8.3, i32* %arrayidx20.9.8.3, align 4
  br label %for.inc.9.8.3

for.inc.9.8.3:                                    ; preds = %for.inc.8.8.3
  br label %for.inc21.8.3

for.inc21.8.3:                                    ; preds = %for.inc.9.8.3
  %arrayidx.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx5.9.3 = getelementptr inbounds [10 x i32]* %arrayidx.9.3, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.3, align 4
  br label %for.body8.9.3

for.body8.9.3:                                    ; preds = %for.inc21.8.3
  %arrayidx11.984.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.985.3 = getelementptr inbounds [10 x i32]* %arrayidx11.984.3, i32 0, i64 0
  %1170 = load i32* %arrayidx12.985.3, align 4
  %arrayidx16.986.3 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %1171 = load i32* %arrayidx16.986.3, align 4
  %mul.987.3 = mul nsw i32 %1170, %1171
  %arrayidx19.989.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.990.3 = getelementptr inbounds [10 x i32]* %arrayidx19.989.3, i32 0, i64 9
  %1172 = load i32* %arrayidx20.990.3, align 4
  %add.991.3 = add nsw i32 %1172, %mul.987.3
  store i32 %add.991.3, i32* %arrayidx20.990.3, align 4
  br label %for.inc.992.3

for.inc.992.3:                                    ; preds = %for.body8.9.3
  %arrayidx11.1.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.1.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.3, i32 0, i64 1
  %1173 = load i32* %arrayidx12.1.9.3, align 4
  %arrayidx15.1.9.3 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.3, i32 0, i64 9
  %1174 = load i32* %arrayidx16.1.9.3, align 4
  %mul.1.9.3 = mul nsw i32 %1173, %1174
  %arrayidx19.1.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.1.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.3, i32 0, i64 9
  %1175 = load i32* %arrayidx20.1.9.3, align 4
  %add.1.9.3 = add nsw i32 %1175, %mul.1.9.3
  store i32 %add.1.9.3, i32* %arrayidx20.1.9.3, align 4
  br label %for.inc.1.9.3

for.inc.1.9.3:                                    ; preds = %for.inc.992.3
  %arrayidx11.2.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.2.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.3, i32 0, i64 2
  %1176 = load i32* %arrayidx12.2.9.3, align 4
  %arrayidx15.2.9.3 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.3, i32 0, i64 9
  %1177 = load i32* %arrayidx16.2.9.3, align 4
  %mul.2.9.3 = mul nsw i32 %1176, %1177
  %arrayidx19.2.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.2.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.3, i32 0, i64 9
  %1178 = load i32* %arrayidx20.2.9.3, align 4
  %add.2.9.3 = add nsw i32 %1178, %mul.2.9.3
  store i32 %add.2.9.3, i32* %arrayidx20.2.9.3, align 4
  br label %for.inc.2.9.3

for.inc.2.9.3:                                    ; preds = %for.inc.1.9.3
  %arrayidx11.3.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.3.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.3, i32 0, i64 3
  %1179 = load i32* %arrayidx12.3.9.3, align 4
  %arrayidx15.3.9.3 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.3, i32 0, i64 9
  %1180 = load i32* %arrayidx16.3.9.3, align 4
  %mul.3.9.3 = mul nsw i32 %1179, %1180
  %arrayidx19.3.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.3.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.3, i32 0, i64 9
  %1181 = load i32* %arrayidx20.3.9.3, align 4
  %add.3.9.3 = add nsw i32 %1181, %mul.3.9.3
  store i32 %add.3.9.3, i32* %arrayidx20.3.9.3, align 4
  br label %for.inc.3.9.3

for.inc.3.9.3:                                    ; preds = %for.inc.2.9.3
  %arrayidx11.4.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.4.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.3, i32 0, i64 4
  %1182 = load i32* %arrayidx12.4.9.3, align 4
  %arrayidx15.4.9.3 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.3, i32 0, i64 9
  %1183 = load i32* %arrayidx16.4.9.3, align 4
  %mul.4.9.3 = mul nsw i32 %1182, %1183
  %arrayidx19.4.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.4.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.3, i32 0, i64 9
  %1184 = load i32* %arrayidx20.4.9.3, align 4
  %add.4.9.3 = add nsw i32 %1184, %mul.4.9.3
  store i32 %add.4.9.3, i32* %arrayidx20.4.9.3, align 4
  br label %for.inc.4.9.3

for.inc.4.9.3:                                    ; preds = %for.inc.3.9.3
  %arrayidx11.5.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.5.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.3, i32 0, i64 5
  %1185 = load i32* %arrayidx12.5.9.3, align 4
  %arrayidx15.5.9.3 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.3, i32 0, i64 9
  %1186 = load i32* %arrayidx16.5.9.3, align 4
  %mul.5.9.3 = mul nsw i32 %1185, %1186
  %arrayidx19.5.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.5.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.3, i32 0, i64 9
  %1187 = load i32* %arrayidx20.5.9.3, align 4
  %add.5.9.3 = add nsw i32 %1187, %mul.5.9.3
  store i32 %add.5.9.3, i32* %arrayidx20.5.9.3, align 4
  br label %for.inc.5.9.3

for.inc.5.9.3:                                    ; preds = %for.inc.4.9.3
  %arrayidx11.6.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.6.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.3, i32 0, i64 6
  %1188 = load i32* %arrayidx12.6.9.3, align 4
  %arrayidx15.6.9.3 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.3, i32 0, i64 9
  %1189 = load i32* %arrayidx16.6.9.3, align 4
  %mul.6.9.3 = mul nsw i32 %1188, %1189
  %arrayidx19.6.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.6.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.3, i32 0, i64 9
  %1190 = load i32* %arrayidx20.6.9.3, align 4
  %add.6.9.3 = add nsw i32 %1190, %mul.6.9.3
  store i32 %add.6.9.3, i32* %arrayidx20.6.9.3, align 4
  br label %for.inc.6.9.3

for.inc.6.9.3:                                    ; preds = %for.inc.5.9.3
  %arrayidx11.7.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.7.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.3, i32 0, i64 7
  %1191 = load i32* %arrayidx12.7.9.3, align 4
  %arrayidx15.7.9.3 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.3, i32 0, i64 9
  %1192 = load i32* %arrayidx16.7.9.3, align 4
  %mul.7.9.3 = mul nsw i32 %1191, %1192
  %arrayidx19.7.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.7.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.3, i32 0, i64 9
  %1193 = load i32* %arrayidx20.7.9.3, align 4
  %add.7.9.3 = add nsw i32 %1193, %mul.7.9.3
  store i32 %add.7.9.3, i32* %arrayidx20.7.9.3, align 4
  br label %for.inc.7.9.3

for.inc.7.9.3:                                    ; preds = %for.inc.6.9.3
  %arrayidx11.8.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.8.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.3, i32 0, i64 8
  %1194 = load i32* %arrayidx12.8.9.3, align 4
  %arrayidx15.8.9.3 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.3, i32 0, i64 9
  %1195 = load i32* %arrayidx16.8.9.3, align 4
  %mul.8.9.3 = mul nsw i32 %1194, %1195
  %arrayidx19.8.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.8.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.3, i32 0, i64 9
  %1196 = load i32* %arrayidx20.8.9.3, align 4
  %add.8.9.3 = add nsw i32 %1196, %mul.8.9.3
  store i32 %add.8.9.3, i32* %arrayidx20.8.9.3, align 4
  br label %for.inc.8.9.3

for.inc.8.9.3:                                    ; preds = %for.inc.7.9.3
  %arrayidx11.9.9.3 = getelementptr inbounds [10 x i32]* %a, i64 3
  %arrayidx12.9.9.3 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.3, i32 0, i64 9
  %1197 = load i32* %arrayidx12.9.9.3, align 4
  %arrayidx15.9.9.3 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.3 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.3, i32 0, i64 9
  %1198 = load i32* %arrayidx16.9.9.3, align 4
  %mul.9.9.3 = mul nsw i32 %1197, %1198
  %arrayidx19.9.9.3 = getelementptr inbounds [10 x i32]* %c, i64 3
  %arrayidx20.9.9.3 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.3, i32 0, i64 9
  %1199 = load i32* %arrayidx20.9.9.3, align 4
  %add.9.9.3 = add nsw i32 %1199, %mul.9.9.3
  store i32 %add.9.9.3, i32* %arrayidx20.9.9.3, align 4
  br label %for.inc.9.9.3

for.inc.9.9.3:                                    ; preds = %for.inc.8.9.3
  br label %for.inc21.9.3

for.inc21.9.3:                                    ; preds = %for.inc.9.9.3
  br label %for.inc24.3

for.inc24.3:                                      ; preds = %for.inc21.9.3
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc24.3
  %arrayidx.4373 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.4374 = getelementptr inbounds [10 x i32]* %arrayidx.4373, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.4374, align 4
  br label %for.body8.4382

for.body8.4382:                                   ; preds = %for.body3.4
  %arrayidx11.4375 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4376 = getelementptr inbounds [10 x i32]* %arrayidx11.4375, i32 0, i64 0
  %1200 = load i32* %arrayidx12.4376, align 4
  %arrayidx16.4377 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %1201 = load i32* %arrayidx16.4377, align 4
  %mul.4378 = mul nsw i32 %1200, %1201
  %arrayidx19.4379 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4380 = getelementptr inbounds [10 x i32]* %arrayidx19.4379, i32 0, i64 0
  %1202 = load i32* %arrayidx20.4380, align 4
  %add.4381 = add nsw i32 %1202, %mul.4378
  store i32 %add.4381, i32* %arrayidx20.4380, align 4
  br label %for.inc.4391

for.inc.4391:                                     ; preds = %for.body8.4382
  %arrayidx11.1.4383 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.4384 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4383, i32 0, i64 1
  %1203 = load i32* %arrayidx12.1.4384, align 4
  %arrayidx15.1.4385 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4386 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4385, i32 0, i64 0
  %1204 = load i32* %arrayidx16.1.4386, align 4
  %mul.1.4387 = mul nsw i32 %1203, %1204
  %arrayidx19.1.4388 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.4389 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4388, i32 0, i64 0
  %1205 = load i32* %arrayidx20.1.4389, align 4
  %add.1.4390 = add nsw i32 %1205, %mul.1.4387
  store i32 %add.1.4390, i32* %arrayidx20.1.4389, align 4
  br label %for.inc.1.4400

for.inc.1.4400:                                   ; preds = %for.inc.4391
  %arrayidx11.2.4392 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.4393 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4392, i32 0, i64 2
  %1206 = load i32* %arrayidx12.2.4393, align 4
  %arrayidx15.2.4394 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4395 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4394, i32 0, i64 0
  %1207 = load i32* %arrayidx16.2.4395, align 4
  %mul.2.4396 = mul nsw i32 %1206, %1207
  %arrayidx19.2.4397 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.4398 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4397, i32 0, i64 0
  %1208 = load i32* %arrayidx20.2.4398, align 4
  %add.2.4399 = add nsw i32 %1208, %mul.2.4396
  store i32 %add.2.4399, i32* %arrayidx20.2.4398, align 4
  br label %for.inc.2.4409

for.inc.2.4409:                                   ; preds = %for.inc.1.4400
  %arrayidx11.3.4401 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.4402 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4401, i32 0, i64 3
  %1209 = load i32* %arrayidx12.3.4402, align 4
  %arrayidx15.3.4403 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4404 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4403, i32 0, i64 0
  %1210 = load i32* %arrayidx16.3.4404, align 4
  %mul.3.4405 = mul nsw i32 %1209, %1210
  %arrayidx19.3.4406 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.4407 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4406, i32 0, i64 0
  %1211 = load i32* %arrayidx20.3.4407, align 4
  %add.3.4408 = add nsw i32 %1211, %mul.3.4405
  store i32 %add.3.4408, i32* %arrayidx20.3.4407, align 4
  br label %for.inc.3.4418

for.inc.3.4418:                                   ; preds = %for.inc.2.4409
  %arrayidx11.4.4410 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.4411 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4410, i32 0, i64 4
  %1212 = load i32* %arrayidx12.4.4411, align 4
  %arrayidx15.4.4412 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4413 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4412, i32 0, i64 0
  %1213 = load i32* %arrayidx16.4.4413, align 4
  %mul.4.4414 = mul nsw i32 %1212, %1213
  %arrayidx19.4.4415 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.4416 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4415, i32 0, i64 0
  %1214 = load i32* %arrayidx20.4.4416, align 4
  %add.4.4417 = add nsw i32 %1214, %mul.4.4414
  store i32 %add.4.4417, i32* %arrayidx20.4.4416, align 4
  br label %for.inc.4.4427

for.inc.4.4427:                                   ; preds = %for.inc.3.4418
  %arrayidx11.5.4419 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.4420 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4419, i32 0, i64 5
  %1215 = load i32* %arrayidx12.5.4420, align 4
  %arrayidx15.5.4421 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4422 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4421, i32 0, i64 0
  %1216 = load i32* %arrayidx16.5.4422, align 4
  %mul.5.4423 = mul nsw i32 %1215, %1216
  %arrayidx19.5.4424 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.4425 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4424, i32 0, i64 0
  %1217 = load i32* %arrayidx20.5.4425, align 4
  %add.5.4426 = add nsw i32 %1217, %mul.5.4423
  store i32 %add.5.4426, i32* %arrayidx20.5.4425, align 4
  br label %for.inc.5.4436

for.inc.5.4436:                                   ; preds = %for.inc.4.4427
  %arrayidx11.6.4428 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.4429 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4428, i32 0, i64 6
  %1218 = load i32* %arrayidx12.6.4429, align 4
  %arrayidx15.6.4430 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4431 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4430, i32 0, i64 0
  %1219 = load i32* %arrayidx16.6.4431, align 4
  %mul.6.4432 = mul nsw i32 %1218, %1219
  %arrayidx19.6.4433 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.4434 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4433, i32 0, i64 0
  %1220 = load i32* %arrayidx20.6.4434, align 4
  %add.6.4435 = add nsw i32 %1220, %mul.6.4432
  store i32 %add.6.4435, i32* %arrayidx20.6.4434, align 4
  br label %for.inc.6.4445

for.inc.6.4445:                                   ; preds = %for.inc.5.4436
  %arrayidx11.7.4437 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.4438 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4437, i32 0, i64 7
  %1221 = load i32* %arrayidx12.7.4438, align 4
  %arrayidx15.7.4439 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4440 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4439, i32 0, i64 0
  %1222 = load i32* %arrayidx16.7.4440, align 4
  %mul.7.4441 = mul nsw i32 %1221, %1222
  %arrayidx19.7.4442 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.4443 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4442, i32 0, i64 0
  %1223 = load i32* %arrayidx20.7.4443, align 4
  %add.7.4444 = add nsw i32 %1223, %mul.7.4441
  store i32 %add.7.4444, i32* %arrayidx20.7.4443, align 4
  br label %for.inc.7.4454

for.inc.7.4454:                                   ; preds = %for.inc.6.4445
  %arrayidx11.8.4446 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.4447 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4446, i32 0, i64 8
  %1224 = load i32* %arrayidx12.8.4447, align 4
  %arrayidx15.8.4448 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4449 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4448, i32 0, i64 0
  %1225 = load i32* %arrayidx16.8.4449, align 4
  %mul.8.4450 = mul nsw i32 %1224, %1225
  %arrayidx19.8.4451 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.4452 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4451, i32 0, i64 0
  %1226 = load i32* %arrayidx20.8.4452, align 4
  %add.8.4453 = add nsw i32 %1226, %mul.8.4450
  store i32 %add.8.4453, i32* %arrayidx20.8.4452, align 4
  br label %for.inc.8.4463

for.inc.8.4463:                                   ; preds = %for.inc.7.4454
  %arrayidx11.9.4455 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.4456 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4455, i32 0, i64 9
  %1227 = load i32* %arrayidx12.9.4456, align 4
  %arrayidx15.9.4457 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4458 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4457, i32 0, i64 0
  %1228 = load i32* %arrayidx16.9.4458, align 4
  %mul.9.4459 = mul nsw i32 %1227, %1228
  %arrayidx19.9.4460 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.4461 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4460, i32 0, i64 0
  %1229 = load i32* %arrayidx20.9.4461, align 4
  %add.9.4462 = add nsw i32 %1229, %mul.9.4459
  store i32 %add.9.4462, i32* %arrayidx20.9.4461, align 4
  br label %for.inc.9.4464

for.inc.9.4464:                                   ; preds = %for.inc.8.4463
  br label %for.inc21.4465

for.inc21.4465:                                   ; preds = %for.inc.9.4464
  %arrayidx.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.1.4 = getelementptr inbounds [10 x i32]* %arrayidx.1.4, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.4, align 4
  br label %for.body8.1.4

for.body8.1.4:                                    ; preds = %for.inc21.4465
  %arrayidx11.14.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.15.4 = getelementptr inbounds [10 x i32]* %arrayidx11.14.4, i32 0, i64 0
  %1230 = load i32* %arrayidx12.15.4, align 4
  %arrayidx16.16.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %1231 = load i32* %arrayidx16.16.4, align 4
  %mul.17.4 = mul nsw i32 %1230, %1231
  %arrayidx19.19.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.110.4 = getelementptr inbounds [10 x i32]* %arrayidx19.19.4, i32 0, i64 1
  %1232 = load i32* %arrayidx20.110.4, align 4
  %add.111.4 = add nsw i32 %1232, %mul.17.4
  store i32 %add.111.4, i32* %arrayidx20.110.4, align 4
  br label %for.inc.112.4

for.inc.112.4:                                    ; preds = %for.body8.1.4
  %arrayidx11.1.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.4, i32 0, i64 1
  %1233 = load i32* %arrayidx12.1.1.4, align 4
  %arrayidx15.1.1.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.4, i32 0, i64 1
  %1234 = load i32* %arrayidx16.1.1.4, align 4
  %mul.1.1.4 = mul nsw i32 %1233, %1234
  %arrayidx19.1.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.4, i32 0, i64 1
  %1235 = load i32* %arrayidx20.1.1.4, align 4
  %add.1.1.4 = add nsw i32 %1235, %mul.1.1.4
  store i32 %add.1.1.4, i32* %arrayidx20.1.1.4, align 4
  br label %for.inc.1.1.4

for.inc.1.1.4:                                    ; preds = %for.inc.112.4
  %arrayidx11.2.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.4, i32 0, i64 2
  %1236 = load i32* %arrayidx12.2.1.4, align 4
  %arrayidx15.2.1.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.4, i32 0, i64 1
  %1237 = load i32* %arrayidx16.2.1.4, align 4
  %mul.2.1.4 = mul nsw i32 %1236, %1237
  %arrayidx19.2.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.4, i32 0, i64 1
  %1238 = load i32* %arrayidx20.2.1.4, align 4
  %add.2.1.4 = add nsw i32 %1238, %mul.2.1.4
  store i32 %add.2.1.4, i32* %arrayidx20.2.1.4, align 4
  br label %for.inc.2.1.4

for.inc.2.1.4:                                    ; preds = %for.inc.1.1.4
  %arrayidx11.3.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.4, i32 0, i64 3
  %1239 = load i32* %arrayidx12.3.1.4, align 4
  %arrayidx15.3.1.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.4, i32 0, i64 1
  %1240 = load i32* %arrayidx16.3.1.4, align 4
  %mul.3.1.4 = mul nsw i32 %1239, %1240
  %arrayidx19.3.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.4, i32 0, i64 1
  %1241 = load i32* %arrayidx20.3.1.4, align 4
  %add.3.1.4 = add nsw i32 %1241, %mul.3.1.4
  store i32 %add.3.1.4, i32* %arrayidx20.3.1.4, align 4
  br label %for.inc.3.1.4

for.inc.3.1.4:                                    ; preds = %for.inc.2.1.4
  %arrayidx11.4.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.4, i32 0, i64 4
  %1242 = load i32* %arrayidx12.4.1.4, align 4
  %arrayidx15.4.1.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.4, i32 0, i64 1
  %1243 = load i32* %arrayidx16.4.1.4, align 4
  %mul.4.1.4 = mul nsw i32 %1242, %1243
  %arrayidx19.4.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.4, i32 0, i64 1
  %1244 = load i32* %arrayidx20.4.1.4, align 4
  %add.4.1.4 = add nsw i32 %1244, %mul.4.1.4
  store i32 %add.4.1.4, i32* %arrayidx20.4.1.4, align 4
  br label %for.inc.4.1.4

for.inc.4.1.4:                                    ; preds = %for.inc.3.1.4
  %arrayidx11.5.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.4, i32 0, i64 5
  %1245 = load i32* %arrayidx12.5.1.4, align 4
  %arrayidx15.5.1.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.4, i32 0, i64 1
  %1246 = load i32* %arrayidx16.5.1.4, align 4
  %mul.5.1.4 = mul nsw i32 %1245, %1246
  %arrayidx19.5.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.4, i32 0, i64 1
  %1247 = load i32* %arrayidx20.5.1.4, align 4
  %add.5.1.4 = add nsw i32 %1247, %mul.5.1.4
  store i32 %add.5.1.4, i32* %arrayidx20.5.1.4, align 4
  br label %for.inc.5.1.4

for.inc.5.1.4:                                    ; preds = %for.inc.4.1.4
  %arrayidx11.6.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.4, i32 0, i64 6
  %1248 = load i32* %arrayidx12.6.1.4, align 4
  %arrayidx15.6.1.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.4, i32 0, i64 1
  %1249 = load i32* %arrayidx16.6.1.4, align 4
  %mul.6.1.4 = mul nsw i32 %1248, %1249
  %arrayidx19.6.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.4, i32 0, i64 1
  %1250 = load i32* %arrayidx20.6.1.4, align 4
  %add.6.1.4 = add nsw i32 %1250, %mul.6.1.4
  store i32 %add.6.1.4, i32* %arrayidx20.6.1.4, align 4
  br label %for.inc.6.1.4

for.inc.6.1.4:                                    ; preds = %for.inc.5.1.4
  %arrayidx11.7.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.4, i32 0, i64 7
  %1251 = load i32* %arrayidx12.7.1.4, align 4
  %arrayidx15.7.1.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.4, i32 0, i64 1
  %1252 = load i32* %arrayidx16.7.1.4, align 4
  %mul.7.1.4 = mul nsw i32 %1251, %1252
  %arrayidx19.7.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.4, i32 0, i64 1
  %1253 = load i32* %arrayidx20.7.1.4, align 4
  %add.7.1.4 = add nsw i32 %1253, %mul.7.1.4
  store i32 %add.7.1.4, i32* %arrayidx20.7.1.4, align 4
  br label %for.inc.7.1.4

for.inc.7.1.4:                                    ; preds = %for.inc.6.1.4
  %arrayidx11.8.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.4, i32 0, i64 8
  %1254 = load i32* %arrayidx12.8.1.4, align 4
  %arrayidx15.8.1.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.4, i32 0, i64 1
  %1255 = load i32* %arrayidx16.8.1.4, align 4
  %mul.8.1.4 = mul nsw i32 %1254, %1255
  %arrayidx19.8.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.4, i32 0, i64 1
  %1256 = load i32* %arrayidx20.8.1.4, align 4
  %add.8.1.4 = add nsw i32 %1256, %mul.8.1.4
  store i32 %add.8.1.4, i32* %arrayidx20.8.1.4, align 4
  br label %for.inc.8.1.4

for.inc.8.1.4:                                    ; preds = %for.inc.7.1.4
  %arrayidx11.9.1.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.1.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.4, i32 0, i64 9
  %1257 = load i32* %arrayidx12.9.1.4, align 4
  %arrayidx15.9.1.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.4, i32 0, i64 1
  %1258 = load i32* %arrayidx16.9.1.4, align 4
  %mul.9.1.4 = mul nsw i32 %1257, %1258
  %arrayidx19.9.1.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.1.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.4, i32 0, i64 1
  %1259 = load i32* %arrayidx20.9.1.4, align 4
  %add.9.1.4 = add nsw i32 %1259, %mul.9.1.4
  store i32 %add.9.1.4, i32* %arrayidx20.9.1.4, align 4
  br label %for.inc.9.1.4

for.inc.9.1.4:                                    ; preds = %for.inc.8.1.4
  br label %for.inc21.1.4

for.inc21.1.4:                                    ; preds = %for.inc.9.1.4
  %arrayidx.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.2.4 = getelementptr inbounds [10 x i32]* %arrayidx.2.4, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.4, align 4
  br label %for.body8.2.4

for.body8.2.4:                                    ; preds = %for.inc21.1.4
  %arrayidx11.214.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.215.4 = getelementptr inbounds [10 x i32]* %arrayidx11.214.4, i32 0, i64 0
  %1260 = load i32* %arrayidx12.215.4, align 4
  %arrayidx16.216.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %1261 = load i32* %arrayidx16.216.4, align 4
  %mul.217.4 = mul nsw i32 %1260, %1261
  %arrayidx19.219.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.220.4 = getelementptr inbounds [10 x i32]* %arrayidx19.219.4, i32 0, i64 2
  %1262 = load i32* %arrayidx20.220.4, align 4
  %add.221.4 = add nsw i32 %1262, %mul.217.4
  store i32 %add.221.4, i32* %arrayidx20.220.4, align 4
  br label %for.inc.222.4

for.inc.222.4:                                    ; preds = %for.body8.2.4
  %arrayidx11.1.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.4, i32 0, i64 1
  %1263 = load i32* %arrayidx12.1.2.4, align 4
  %arrayidx15.1.2.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.4, i32 0, i64 2
  %1264 = load i32* %arrayidx16.1.2.4, align 4
  %mul.1.2.4 = mul nsw i32 %1263, %1264
  %arrayidx19.1.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.4, i32 0, i64 2
  %1265 = load i32* %arrayidx20.1.2.4, align 4
  %add.1.2.4 = add nsw i32 %1265, %mul.1.2.4
  store i32 %add.1.2.4, i32* %arrayidx20.1.2.4, align 4
  br label %for.inc.1.2.4

for.inc.1.2.4:                                    ; preds = %for.inc.222.4
  %arrayidx11.2.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.4, i32 0, i64 2
  %1266 = load i32* %arrayidx12.2.2.4, align 4
  %arrayidx15.2.2.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.4, i32 0, i64 2
  %1267 = load i32* %arrayidx16.2.2.4, align 4
  %mul.2.2.4 = mul nsw i32 %1266, %1267
  %arrayidx19.2.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.4, i32 0, i64 2
  %1268 = load i32* %arrayidx20.2.2.4, align 4
  %add.2.2.4 = add nsw i32 %1268, %mul.2.2.4
  store i32 %add.2.2.4, i32* %arrayidx20.2.2.4, align 4
  br label %for.inc.2.2.4

for.inc.2.2.4:                                    ; preds = %for.inc.1.2.4
  %arrayidx11.3.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.4, i32 0, i64 3
  %1269 = load i32* %arrayidx12.3.2.4, align 4
  %arrayidx15.3.2.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.4, i32 0, i64 2
  %1270 = load i32* %arrayidx16.3.2.4, align 4
  %mul.3.2.4 = mul nsw i32 %1269, %1270
  %arrayidx19.3.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.4, i32 0, i64 2
  %1271 = load i32* %arrayidx20.3.2.4, align 4
  %add.3.2.4 = add nsw i32 %1271, %mul.3.2.4
  store i32 %add.3.2.4, i32* %arrayidx20.3.2.4, align 4
  br label %for.inc.3.2.4

for.inc.3.2.4:                                    ; preds = %for.inc.2.2.4
  %arrayidx11.4.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.4, i32 0, i64 4
  %1272 = load i32* %arrayidx12.4.2.4, align 4
  %arrayidx15.4.2.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.4, i32 0, i64 2
  %1273 = load i32* %arrayidx16.4.2.4, align 4
  %mul.4.2.4 = mul nsw i32 %1272, %1273
  %arrayidx19.4.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.4, i32 0, i64 2
  %1274 = load i32* %arrayidx20.4.2.4, align 4
  %add.4.2.4 = add nsw i32 %1274, %mul.4.2.4
  store i32 %add.4.2.4, i32* %arrayidx20.4.2.4, align 4
  br label %for.inc.4.2.4

for.inc.4.2.4:                                    ; preds = %for.inc.3.2.4
  %arrayidx11.5.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.4, i32 0, i64 5
  %1275 = load i32* %arrayidx12.5.2.4, align 4
  %arrayidx15.5.2.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.4, i32 0, i64 2
  %1276 = load i32* %arrayidx16.5.2.4, align 4
  %mul.5.2.4 = mul nsw i32 %1275, %1276
  %arrayidx19.5.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.4, i32 0, i64 2
  %1277 = load i32* %arrayidx20.5.2.4, align 4
  %add.5.2.4 = add nsw i32 %1277, %mul.5.2.4
  store i32 %add.5.2.4, i32* %arrayidx20.5.2.4, align 4
  br label %for.inc.5.2.4

for.inc.5.2.4:                                    ; preds = %for.inc.4.2.4
  %arrayidx11.6.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.4, i32 0, i64 6
  %1278 = load i32* %arrayidx12.6.2.4, align 4
  %arrayidx15.6.2.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.4, i32 0, i64 2
  %1279 = load i32* %arrayidx16.6.2.4, align 4
  %mul.6.2.4 = mul nsw i32 %1278, %1279
  %arrayidx19.6.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.4, i32 0, i64 2
  %1280 = load i32* %arrayidx20.6.2.4, align 4
  %add.6.2.4 = add nsw i32 %1280, %mul.6.2.4
  store i32 %add.6.2.4, i32* %arrayidx20.6.2.4, align 4
  br label %for.inc.6.2.4

for.inc.6.2.4:                                    ; preds = %for.inc.5.2.4
  %arrayidx11.7.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.4, i32 0, i64 7
  %1281 = load i32* %arrayidx12.7.2.4, align 4
  %arrayidx15.7.2.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.4, i32 0, i64 2
  %1282 = load i32* %arrayidx16.7.2.4, align 4
  %mul.7.2.4 = mul nsw i32 %1281, %1282
  %arrayidx19.7.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.4, i32 0, i64 2
  %1283 = load i32* %arrayidx20.7.2.4, align 4
  %add.7.2.4 = add nsw i32 %1283, %mul.7.2.4
  store i32 %add.7.2.4, i32* %arrayidx20.7.2.4, align 4
  br label %for.inc.7.2.4

for.inc.7.2.4:                                    ; preds = %for.inc.6.2.4
  %arrayidx11.8.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.4, i32 0, i64 8
  %1284 = load i32* %arrayidx12.8.2.4, align 4
  %arrayidx15.8.2.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.4, i32 0, i64 2
  %1285 = load i32* %arrayidx16.8.2.4, align 4
  %mul.8.2.4 = mul nsw i32 %1284, %1285
  %arrayidx19.8.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.4, i32 0, i64 2
  %1286 = load i32* %arrayidx20.8.2.4, align 4
  %add.8.2.4 = add nsw i32 %1286, %mul.8.2.4
  store i32 %add.8.2.4, i32* %arrayidx20.8.2.4, align 4
  br label %for.inc.8.2.4

for.inc.8.2.4:                                    ; preds = %for.inc.7.2.4
  %arrayidx11.9.2.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.2.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.4, i32 0, i64 9
  %1287 = load i32* %arrayidx12.9.2.4, align 4
  %arrayidx15.9.2.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.4, i32 0, i64 2
  %1288 = load i32* %arrayidx16.9.2.4, align 4
  %mul.9.2.4 = mul nsw i32 %1287, %1288
  %arrayidx19.9.2.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.2.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.4, i32 0, i64 2
  %1289 = load i32* %arrayidx20.9.2.4, align 4
  %add.9.2.4 = add nsw i32 %1289, %mul.9.2.4
  store i32 %add.9.2.4, i32* %arrayidx20.9.2.4, align 4
  br label %for.inc.9.2.4

for.inc.9.2.4:                                    ; preds = %for.inc.8.2.4
  br label %for.inc21.2.4

for.inc21.2.4:                                    ; preds = %for.inc.9.2.4
  %arrayidx.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.3.4 = getelementptr inbounds [10 x i32]* %arrayidx.3.4, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.4, align 4
  br label %for.body8.3.4

for.body8.3.4:                                    ; preds = %for.inc21.2.4
  %arrayidx11.324.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.325.4 = getelementptr inbounds [10 x i32]* %arrayidx11.324.4, i32 0, i64 0
  %1290 = load i32* %arrayidx12.325.4, align 4
  %arrayidx16.326.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %1291 = load i32* %arrayidx16.326.4, align 4
  %mul.327.4 = mul nsw i32 %1290, %1291
  %arrayidx19.329.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.330.4 = getelementptr inbounds [10 x i32]* %arrayidx19.329.4, i32 0, i64 3
  %1292 = load i32* %arrayidx20.330.4, align 4
  %add.331.4 = add nsw i32 %1292, %mul.327.4
  store i32 %add.331.4, i32* %arrayidx20.330.4, align 4
  br label %for.inc.332.4

for.inc.332.4:                                    ; preds = %for.body8.3.4
  %arrayidx11.1.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.4, i32 0, i64 1
  %1293 = load i32* %arrayidx12.1.3.4, align 4
  %arrayidx15.1.3.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.4, i32 0, i64 3
  %1294 = load i32* %arrayidx16.1.3.4, align 4
  %mul.1.3.4 = mul nsw i32 %1293, %1294
  %arrayidx19.1.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.4, i32 0, i64 3
  %1295 = load i32* %arrayidx20.1.3.4, align 4
  %add.1.3.4 = add nsw i32 %1295, %mul.1.3.4
  store i32 %add.1.3.4, i32* %arrayidx20.1.3.4, align 4
  br label %for.inc.1.3.4

for.inc.1.3.4:                                    ; preds = %for.inc.332.4
  %arrayidx11.2.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.4, i32 0, i64 2
  %1296 = load i32* %arrayidx12.2.3.4, align 4
  %arrayidx15.2.3.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.4, i32 0, i64 3
  %1297 = load i32* %arrayidx16.2.3.4, align 4
  %mul.2.3.4 = mul nsw i32 %1296, %1297
  %arrayidx19.2.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.4, i32 0, i64 3
  %1298 = load i32* %arrayidx20.2.3.4, align 4
  %add.2.3.4 = add nsw i32 %1298, %mul.2.3.4
  store i32 %add.2.3.4, i32* %arrayidx20.2.3.4, align 4
  br label %for.inc.2.3.4

for.inc.2.3.4:                                    ; preds = %for.inc.1.3.4
  %arrayidx11.3.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.4, i32 0, i64 3
  %1299 = load i32* %arrayidx12.3.3.4, align 4
  %arrayidx15.3.3.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.4, i32 0, i64 3
  %1300 = load i32* %arrayidx16.3.3.4, align 4
  %mul.3.3.4 = mul nsw i32 %1299, %1300
  %arrayidx19.3.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.4, i32 0, i64 3
  %1301 = load i32* %arrayidx20.3.3.4, align 4
  %add.3.3.4 = add nsw i32 %1301, %mul.3.3.4
  store i32 %add.3.3.4, i32* %arrayidx20.3.3.4, align 4
  br label %for.inc.3.3.4

for.inc.3.3.4:                                    ; preds = %for.inc.2.3.4
  %arrayidx11.4.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.4, i32 0, i64 4
  %1302 = load i32* %arrayidx12.4.3.4, align 4
  %arrayidx15.4.3.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.4, i32 0, i64 3
  %1303 = load i32* %arrayidx16.4.3.4, align 4
  %mul.4.3.4 = mul nsw i32 %1302, %1303
  %arrayidx19.4.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.4, i32 0, i64 3
  %1304 = load i32* %arrayidx20.4.3.4, align 4
  %add.4.3.4 = add nsw i32 %1304, %mul.4.3.4
  store i32 %add.4.3.4, i32* %arrayidx20.4.3.4, align 4
  br label %for.inc.4.3.4

for.inc.4.3.4:                                    ; preds = %for.inc.3.3.4
  %arrayidx11.5.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.4, i32 0, i64 5
  %1305 = load i32* %arrayidx12.5.3.4, align 4
  %arrayidx15.5.3.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.4, i32 0, i64 3
  %1306 = load i32* %arrayidx16.5.3.4, align 4
  %mul.5.3.4 = mul nsw i32 %1305, %1306
  %arrayidx19.5.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.4, i32 0, i64 3
  %1307 = load i32* %arrayidx20.5.3.4, align 4
  %add.5.3.4 = add nsw i32 %1307, %mul.5.3.4
  store i32 %add.5.3.4, i32* %arrayidx20.5.3.4, align 4
  br label %for.inc.5.3.4

for.inc.5.3.4:                                    ; preds = %for.inc.4.3.4
  %arrayidx11.6.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.4, i32 0, i64 6
  %1308 = load i32* %arrayidx12.6.3.4, align 4
  %arrayidx15.6.3.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.4, i32 0, i64 3
  %1309 = load i32* %arrayidx16.6.3.4, align 4
  %mul.6.3.4 = mul nsw i32 %1308, %1309
  %arrayidx19.6.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.4, i32 0, i64 3
  %1310 = load i32* %arrayidx20.6.3.4, align 4
  %add.6.3.4 = add nsw i32 %1310, %mul.6.3.4
  store i32 %add.6.3.4, i32* %arrayidx20.6.3.4, align 4
  br label %for.inc.6.3.4

for.inc.6.3.4:                                    ; preds = %for.inc.5.3.4
  %arrayidx11.7.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.4, i32 0, i64 7
  %1311 = load i32* %arrayidx12.7.3.4, align 4
  %arrayidx15.7.3.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.4, i32 0, i64 3
  %1312 = load i32* %arrayidx16.7.3.4, align 4
  %mul.7.3.4 = mul nsw i32 %1311, %1312
  %arrayidx19.7.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.4, i32 0, i64 3
  %1313 = load i32* %arrayidx20.7.3.4, align 4
  %add.7.3.4 = add nsw i32 %1313, %mul.7.3.4
  store i32 %add.7.3.4, i32* %arrayidx20.7.3.4, align 4
  br label %for.inc.7.3.4

for.inc.7.3.4:                                    ; preds = %for.inc.6.3.4
  %arrayidx11.8.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.4, i32 0, i64 8
  %1314 = load i32* %arrayidx12.8.3.4, align 4
  %arrayidx15.8.3.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.4, i32 0, i64 3
  %1315 = load i32* %arrayidx16.8.3.4, align 4
  %mul.8.3.4 = mul nsw i32 %1314, %1315
  %arrayidx19.8.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.4, i32 0, i64 3
  %1316 = load i32* %arrayidx20.8.3.4, align 4
  %add.8.3.4 = add nsw i32 %1316, %mul.8.3.4
  store i32 %add.8.3.4, i32* %arrayidx20.8.3.4, align 4
  br label %for.inc.8.3.4

for.inc.8.3.4:                                    ; preds = %for.inc.7.3.4
  %arrayidx11.9.3.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.3.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.4, i32 0, i64 9
  %1317 = load i32* %arrayidx12.9.3.4, align 4
  %arrayidx15.9.3.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.4, i32 0, i64 3
  %1318 = load i32* %arrayidx16.9.3.4, align 4
  %mul.9.3.4 = mul nsw i32 %1317, %1318
  %arrayidx19.9.3.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.3.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.4, i32 0, i64 3
  %1319 = load i32* %arrayidx20.9.3.4, align 4
  %add.9.3.4 = add nsw i32 %1319, %mul.9.3.4
  store i32 %add.9.3.4, i32* %arrayidx20.9.3.4, align 4
  br label %for.inc.9.3.4

for.inc.9.3.4:                                    ; preds = %for.inc.8.3.4
  br label %for.inc21.3.4

for.inc21.3.4:                                    ; preds = %for.inc.9.3.4
  %arrayidx.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.4.4 = getelementptr inbounds [10 x i32]* %arrayidx.4.4, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.4, align 4
  br label %for.body8.4.4

for.body8.4.4:                                    ; preds = %for.inc21.3.4
  %arrayidx11.434.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.435.4 = getelementptr inbounds [10 x i32]* %arrayidx11.434.4, i32 0, i64 0
  %1320 = load i32* %arrayidx12.435.4, align 4
  %arrayidx16.436.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %1321 = load i32* %arrayidx16.436.4, align 4
  %mul.437.4 = mul nsw i32 %1320, %1321
  %arrayidx19.439.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.440.4 = getelementptr inbounds [10 x i32]* %arrayidx19.439.4, i32 0, i64 4
  %1322 = load i32* %arrayidx20.440.4, align 4
  %add.441.4 = add nsw i32 %1322, %mul.437.4
  store i32 %add.441.4, i32* %arrayidx20.440.4, align 4
  br label %for.inc.442.4

for.inc.442.4:                                    ; preds = %for.body8.4.4
  %arrayidx11.1.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.4, i32 0, i64 1
  %1323 = load i32* %arrayidx12.1.4.4, align 4
  %arrayidx15.1.4.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.4, i32 0, i64 4
  %1324 = load i32* %arrayidx16.1.4.4, align 4
  %mul.1.4.4 = mul nsw i32 %1323, %1324
  %arrayidx19.1.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.4, i32 0, i64 4
  %1325 = load i32* %arrayidx20.1.4.4, align 4
  %add.1.4.4 = add nsw i32 %1325, %mul.1.4.4
  store i32 %add.1.4.4, i32* %arrayidx20.1.4.4, align 4
  br label %for.inc.1.4.4

for.inc.1.4.4:                                    ; preds = %for.inc.442.4
  %arrayidx11.2.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.4, i32 0, i64 2
  %1326 = load i32* %arrayidx12.2.4.4, align 4
  %arrayidx15.2.4.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.4, i32 0, i64 4
  %1327 = load i32* %arrayidx16.2.4.4, align 4
  %mul.2.4.4 = mul nsw i32 %1326, %1327
  %arrayidx19.2.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.4, i32 0, i64 4
  %1328 = load i32* %arrayidx20.2.4.4, align 4
  %add.2.4.4 = add nsw i32 %1328, %mul.2.4.4
  store i32 %add.2.4.4, i32* %arrayidx20.2.4.4, align 4
  br label %for.inc.2.4.4

for.inc.2.4.4:                                    ; preds = %for.inc.1.4.4
  %arrayidx11.3.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.4, i32 0, i64 3
  %1329 = load i32* %arrayidx12.3.4.4, align 4
  %arrayidx15.3.4.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.4, i32 0, i64 4
  %1330 = load i32* %arrayidx16.3.4.4, align 4
  %mul.3.4.4 = mul nsw i32 %1329, %1330
  %arrayidx19.3.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.4, i32 0, i64 4
  %1331 = load i32* %arrayidx20.3.4.4, align 4
  %add.3.4.4 = add nsw i32 %1331, %mul.3.4.4
  store i32 %add.3.4.4, i32* %arrayidx20.3.4.4, align 4
  br label %for.inc.3.4.4

for.inc.3.4.4:                                    ; preds = %for.inc.2.4.4
  %arrayidx11.4.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.4, i32 0, i64 4
  %1332 = load i32* %arrayidx12.4.4.4, align 4
  %arrayidx15.4.4.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.4, i32 0, i64 4
  %1333 = load i32* %arrayidx16.4.4.4, align 4
  %mul.4.4.4 = mul nsw i32 %1332, %1333
  %arrayidx19.4.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.4, i32 0, i64 4
  %1334 = load i32* %arrayidx20.4.4.4, align 4
  %add.4.4.4 = add nsw i32 %1334, %mul.4.4.4
  store i32 %add.4.4.4, i32* %arrayidx20.4.4.4, align 4
  br label %for.inc.4.4.4

for.inc.4.4.4:                                    ; preds = %for.inc.3.4.4
  %arrayidx11.5.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.4, i32 0, i64 5
  %1335 = load i32* %arrayidx12.5.4.4, align 4
  %arrayidx15.5.4.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.4, i32 0, i64 4
  %1336 = load i32* %arrayidx16.5.4.4, align 4
  %mul.5.4.4 = mul nsw i32 %1335, %1336
  %arrayidx19.5.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.4, i32 0, i64 4
  %1337 = load i32* %arrayidx20.5.4.4, align 4
  %add.5.4.4 = add nsw i32 %1337, %mul.5.4.4
  store i32 %add.5.4.4, i32* %arrayidx20.5.4.4, align 4
  br label %for.inc.5.4.4

for.inc.5.4.4:                                    ; preds = %for.inc.4.4.4
  %arrayidx11.6.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.4, i32 0, i64 6
  %1338 = load i32* %arrayidx12.6.4.4, align 4
  %arrayidx15.6.4.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.4, i32 0, i64 4
  %1339 = load i32* %arrayidx16.6.4.4, align 4
  %mul.6.4.4 = mul nsw i32 %1338, %1339
  %arrayidx19.6.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.4, i32 0, i64 4
  %1340 = load i32* %arrayidx20.6.4.4, align 4
  %add.6.4.4 = add nsw i32 %1340, %mul.6.4.4
  store i32 %add.6.4.4, i32* %arrayidx20.6.4.4, align 4
  br label %for.inc.6.4.4

for.inc.6.4.4:                                    ; preds = %for.inc.5.4.4
  %arrayidx11.7.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.4, i32 0, i64 7
  %1341 = load i32* %arrayidx12.7.4.4, align 4
  %arrayidx15.7.4.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.4, i32 0, i64 4
  %1342 = load i32* %arrayidx16.7.4.4, align 4
  %mul.7.4.4 = mul nsw i32 %1341, %1342
  %arrayidx19.7.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.4, i32 0, i64 4
  %1343 = load i32* %arrayidx20.7.4.4, align 4
  %add.7.4.4 = add nsw i32 %1343, %mul.7.4.4
  store i32 %add.7.4.4, i32* %arrayidx20.7.4.4, align 4
  br label %for.inc.7.4.4

for.inc.7.4.4:                                    ; preds = %for.inc.6.4.4
  %arrayidx11.8.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.4, i32 0, i64 8
  %1344 = load i32* %arrayidx12.8.4.4, align 4
  %arrayidx15.8.4.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.4, i32 0, i64 4
  %1345 = load i32* %arrayidx16.8.4.4, align 4
  %mul.8.4.4 = mul nsw i32 %1344, %1345
  %arrayidx19.8.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.4, i32 0, i64 4
  %1346 = load i32* %arrayidx20.8.4.4, align 4
  %add.8.4.4 = add nsw i32 %1346, %mul.8.4.4
  store i32 %add.8.4.4, i32* %arrayidx20.8.4.4, align 4
  br label %for.inc.8.4.4

for.inc.8.4.4:                                    ; preds = %for.inc.7.4.4
  %arrayidx11.9.4.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.4.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.4, i32 0, i64 9
  %1347 = load i32* %arrayidx12.9.4.4, align 4
  %arrayidx15.9.4.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.4, i32 0, i64 4
  %1348 = load i32* %arrayidx16.9.4.4, align 4
  %mul.9.4.4 = mul nsw i32 %1347, %1348
  %arrayidx19.9.4.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.4.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.4, i32 0, i64 4
  %1349 = load i32* %arrayidx20.9.4.4, align 4
  %add.9.4.4 = add nsw i32 %1349, %mul.9.4.4
  store i32 %add.9.4.4, i32* %arrayidx20.9.4.4, align 4
  br label %for.inc.9.4.4

for.inc.9.4.4:                                    ; preds = %for.inc.8.4.4
  br label %for.inc21.4.4

for.inc21.4.4:                                    ; preds = %for.inc.9.4.4
  %arrayidx.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.5.4 = getelementptr inbounds [10 x i32]* %arrayidx.5.4, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.4, align 4
  br label %for.body8.5.4

for.body8.5.4:                                    ; preds = %for.inc21.4.4
  %arrayidx11.544.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.545.4 = getelementptr inbounds [10 x i32]* %arrayidx11.544.4, i32 0, i64 0
  %1350 = load i32* %arrayidx12.545.4, align 4
  %arrayidx16.546.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %1351 = load i32* %arrayidx16.546.4, align 4
  %mul.547.4 = mul nsw i32 %1350, %1351
  %arrayidx19.549.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.550.4 = getelementptr inbounds [10 x i32]* %arrayidx19.549.4, i32 0, i64 5
  %1352 = load i32* %arrayidx20.550.4, align 4
  %add.551.4 = add nsw i32 %1352, %mul.547.4
  store i32 %add.551.4, i32* %arrayidx20.550.4, align 4
  br label %for.inc.552.4

for.inc.552.4:                                    ; preds = %for.body8.5.4
  %arrayidx11.1.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.4, i32 0, i64 1
  %1353 = load i32* %arrayidx12.1.5.4, align 4
  %arrayidx15.1.5.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.4, i32 0, i64 5
  %1354 = load i32* %arrayidx16.1.5.4, align 4
  %mul.1.5.4 = mul nsw i32 %1353, %1354
  %arrayidx19.1.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.4, i32 0, i64 5
  %1355 = load i32* %arrayidx20.1.5.4, align 4
  %add.1.5.4 = add nsw i32 %1355, %mul.1.5.4
  store i32 %add.1.5.4, i32* %arrayidx20.1.5.4, align 4
  br label %for.inc.1.5.4

for.inc.1.5.4:                                    ; preds = %for.inc.552.4
  %arrayidx11.2.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.4, i32 0, i64 2
  %1356 = load i32* %arrayidx12.2.5.4, align 4
  %arrayidx15.2.5.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.4, i32 0, i64 5
  %1357 = load i32* %arrayidx16.2.5.4, align 4
  %mul.2.5.4 = mul nsw i32 %1356, %1357
  %arrayidx19.2.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.4, i32 0, i64 5
  %1358 = load i32* %arrayidx20.2.5.4, align 4
  %add.2.5.4 = add nsw i32 %1358, %mul.2.5.4
  store i32 %add.2.5.4, i32* %arrayidx20.2.5.4, align 4
  br label %for.inc.2.5.4

for.inc.2.5.4:                                    ; preds = %for.inc.1.5.4
  %arrayidx11.3.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.4, i32 0, i64 3
  %1359 = load i32* %arrayidx12.3.5.4, align 4
  %arrayidx15.3.5.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.4, i32 0, i64 5
  %1360 = load i32* %arrayidx16.3.5.4, align 4
  %mul.3.5.4 = mul nsw i32 %1359, %1360
  %arrayidx19.3.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.4, i32 0, i64 5
  %1361 = load i32* %arrayidx20.3.5.4, align 4
  %add.3.5.4 = add nsw i32 %1361, %mul.3.5.4
  store i32 %add.3.5.4, i32* %arrayidx20.3.5.4, align 4
  br label %for.inc.3.5.4

for.inc.3.5.4:                                    ; preds = %for.inc.2.5.4
  %arrayidx11.4.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.4, i32 0, i64 4
  %1362 = load i32* %arrayidx12.4.5.4, align 4
  %arrayidx15.4.5.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.4, i32 0, i64 5
  %1363 = load i32* %arrayidx16.4.5.4, align 4
  %mul.4.5.4 = mul nsw i32 %1362, %1363
  %arrayidx19.4.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.4, i32 0, i64 5
  %1364 = load i32* %arrayidx20.4.5.4, align 4
  %add.4.5.4 = add nsw i32 %1364, %mul.4.5.4
  store i32 %add.4.5.4, i32* %arrayidx20.4.5.4, align 4
  br label %for.inc.4.5.4

for.inc.4.5.4:                                    ; preds = %for.inc.3.5.4
  %arrayidx11.5.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.4, i32 0, i64 5
  %1365 = load i32* %arrayidx12.5.5.4, align 4
  %arrayidx15.5.5.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.4, i32 0, i64 5
  %1366 = load i32* %arrayidx16.5.5.4, align 4
  %mul.5.5.4 = mul nsw i32 %1365, %1366
  %arrayidx19.5.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.4, i32 0, i64 5
  %1367 = load i32* %arrayidx20.5.5.4, align 4
  %add.5.5.4 = add nsw i32 %1367, %mul.5.5.4
  store i32 %add.5.5.4, i32* %arrayidx20.5.5.4, align 4
  br label %for.inc.5.5.4

for.inc.5.5.4:                                    ; preds = %for.inc.4.5.4
  %arrayidx11.6.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.4, i32 0, i64 6
  %1368 = load i32* %arrayidx12.6.5.4, align 4
  %arrayidx15.6.5.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.4, i32 0, i64 5
  %1369 = load i32* %arrayidx16.6.5.4, align 4
  %mul.6.5.4 = mul nsw i32 %1368, %1369
  %arrayidx19.6.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.4, i32 0, i64 5
  %1370 = load i32* %arrayidx20.6.5.4, align 4
  %add.6.5.4 = add nsw i32 %1370, %mul.6.5.4
  store i32 %add.6.5.4, i32* %arrayidx20.6.5.4, align 4
  br label %for.inc.6.5.4

for.inc.6.5.4:                                    ; preds = %for.inc.5.5.4
  %arrayidx11.7.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.4, i32 0, i64 7
  %1371 = load i32* %arrayidx12.7.5.4, align 4
  %arrayidx15.7.5.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.4, i32 0, i64 5
  %1372 = load i32* %arrayidx16.7.5.4, align 4
  %mul.7.5.4 = mul nsw i32 %1371, %1372
  %arrayidx19.7.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.4, i32 0, i64 5
  %1373 = load i32* %arrayidx20.7.5.4, align 4
  %add.7.5.4 = add nsw i32 %1373, %mul.7.5.4
  store i32 %add.7.5.4, i32* %arrayidx20.7.5.4, align 4
  br label %for.inc.7.5.4

for.inc.7.5.4:                                    ; preds = %for.inc.6.5.4
  %arrayidx11.8.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.4, i32 0, i64 8
  %1374 = load i32* %arrayidx12.8.5.4, align 4
  %arrayidx15.8.5.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.4, i32 0, i64 5
  %1375 = load i32* %arrayidx16.8.5.4, align 4
  %mul.8.5.4 = mul nsw i32 %1374, %1375
  %arrayidx19.8.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.4, i32 0, i64 5
  %1376 = load i32* %arrayidx20.8.5.4, align 4
  %add.8.5.4 = add nsw i32 %1376, %mul.8.5.4
  store i32 %add.8.5.4, i32* %arrayidx20.8.5.4, align 4
  br label %for.inc.8.5.4

for.inc.8.5.4:                                    ; preds = %for.inc.7.5.4
  %arrayidx11.9.5.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.5.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.4, i32 0, i64 9
  %1377 = load i32* %arrayidx12.9.5.4, align 4
  %arrayidx15.9.5.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.4, i32 0, i64 5
  %1378 = load i32* %arrayidx16.9.5.4, align 4
  %mul.9.5.4 = mul nsw i32 %1377, %1378
  %arrayidx19.9.5.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.5.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.4, i32 0, i64 5
  %1379 = load i32* %arrayidx20.9.5.4, align 4
  %add.9.5.4 = add nsw i32 %1379, %mul.9.5.4
  store i32 %add.9.5.4, i32* %arrayidx20.9.5.4, align 4
  br label %for.inc.9.5.4

for.inc.9.5.4:                                    ; preds = %for.inc.8.5.4
  br label %for.inc21.5.4

for.inc21.5.4:                                    ; preds = %for.inc.9.5.4
  %arrayidx.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.6.4 = getelementptr inbounds [10 x i32]* %arrayidx.6.4, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.4, align 4
  br label %for.body8.6.4

for.body8.6.4:                                    ; preds = %for.inc21.5.4
  %arrayidx11.654.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.655.4 = getelementptr inbounds [10 x i32]* %arrayidx11.654.4, i32 0, i64 0
  %1380 = load i32* %arrayidx12.655.4, align 4
  %arrayidx16.656.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %1381 = load i32* %arrayidx16.656.4, align 4
  %mul.657.4 = mul nsw i32 %1380, %1381
  %arrayidx19.659.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.660.4 = getelementptr inbounds [10 x i32]* %arrayidx19.659.4, i32 0, i64 6
  %1382 = load i32* %arrayidx20.660.4, align 4
  %add.661.4 = add nsw i32 %1382, %mul.657.4
  store i32 %add.661.4, i32* %arrayidx20.660.4, align 4
  br label %for.inc.662.4

for.inc.662.4:                                    ; preds = %for.body8.6.4
  %arrayidx11.1.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.4, i32 0, i64 1
  %1383 = load i32* %arrayidx12.1.6.4, align 4
  %arrayidx15.1.6.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.4, i32 0, i64 6
  %1384 = load i32* %arrayidx16.1.6.4, align 4
  %mul.1.6.4 = mul nsw i32 %1383, %1384
  %arrayidx19.1.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.4, i32 0, i64 6
  %1385 = load i32* %arrayidx20.1.6.4, align 4
  %add.1.6.4 = add nsw i32 %1385, %mul.1.6.4
  store i32 %add.1.6.4, i32* %arrayidx20.1.6.4, align 4
  br label %for.inc.1.6.4

for.inc.1.6.4:                                    ; preds = %for.inc.662.4
  %arrayidx11.2.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.4, i32 0, i64 2
  %1386 = load i32* %arrayidx12.2.6.4, align 4
  %arrayidx15.2.6.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.4, i32 0, i64 6
  %1387 = load i32* %arrayidx16.2.6.4, align 4
  %mul.2.6.4 = mul nsw i32 %1386, %1387
  %arrayidx19.2.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.4, i32 0, i64 6
  %1388 = load i32* %arrayidx20.2.6.4, align 4
  %add.2.6.4 = add nsw i32 %1388, %mul.2.6.4
  store i32 %add.2.6.4, i32* %arrayidx20.2.6.4, align 4
  br label %for.inc.2.6.4

for.inc.2.6.4:                                    ; preds = %for.inc.1.6.4
  %arrayidx11.3.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.4, i32 0, i64 3
  %1389 = load i32* %arrayidx12.3.6.4, align 4
  %arrayidx15.3.6.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.4, i32 0, i64 6
  %1390 = load i32* %arrayidx16.3.6.4, align 4
  %mul.3.6.4 = mul nsw i32 %1389, %1390
  %arrayidx19.3.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.4, i32 0, i64 6
  %1391 = load i32* %arrayidx20.3.6.4, align 4
  %add.3.6.4 = add nsw i32 %1391, %mul.3.6.4
  store i32 %add.3.6.4, i32* %arrayidx20.3.6.4, align 4
  br label %for.inc.3.6.4

for.inc.3.6.4:                                    ; preds = %for.inc.2.6.4
  %arrayidx11.4.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.4, i32 0, i64 4
  %1392 = load i32* %arrayidx12.4.6.4, align 4
  %arrayidx15.4.6.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.4, i32 0, i64 6
  %1393 = load i32* %arrayidx16.4.6.4, align 4
  %mul.4.6.4 = mul nsw i32 %1392, %1393
  %arrayidx19.4.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.4, i32 0, i64 6
  %1394 = load i32* %arrayidx20.4.6.4, align 4
  %add.4.6.4 = add nsw i32 %1394, %mul.4.6.4
  store i32 %add.4.6.4, i32* %arrayidx20.4.6.4, align 4
  br label %for.inc.4.6.4

for.inc.4.6.4:                                    ; preds = %for.inc.3.6.4
  %arrayidx11.5.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.4, i32 0, i64 5
  %1395 = load i32* %arrayidx12.5.6.4, align 4
  %arrayidx15.5.6.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.4, i32 0, i64 6
  %1396 = load i32* %arrayidx16.5.6.4, align 4
  %mul.5.6.4 = mul nsw i32 %1395, %1396
  %arrayidx19.5.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.4, i32 0, i64 6
  %1397 = load i32* %arrayidx20.5.6.4, align 4
  %add.5.6.4 = add nsw i32 %1397, %mul.5.6.4
  store i32 %add.5.6.4, i32* %arrayidx20.5.6.4, align 4
  br label %for.inc.5.6.4

for.inc.5.6.4:                                    ; preds = %for.inc.4.6.4
  %arrayidx11.6.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.4, i32 0, i64 6
  %1398 = load i32* %arrayidx12.6.6.4, align 4
  %arrayidx15.6.6.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.4, i32 0, i64 6
  %1399 = load i32* %arrayidx16.6.6.4, align 4
  %mul.6.6.4 = mul nsw i32 %1398, %1399
  %arrayidx19.6.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.4, i32 0, i64 6
  %1400 = load i32* %arrayidx20.6.6.4, align 4
  %add.6.6.4 = add nsw i32 %1400, %mul.6.6.4
  store i32 %add.6.6.4, i32* %arrayidx20.6.6.4, align 4
  br label %for.inc.6.6.4

for.inc.6.6.4:                                    ; preds = %for.inc.5.6.4
  %arrayidx11.7.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.4, i32 0, i64 7
  %1401 = load i32* %arrayidx12.7.6.4, align 4
  %arrayidx15.7.6.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.4, i32 0, i64 6
  %1402 = load i32* %arrayidx16.7.6.4, align 4
  %mul.7.6.4 = mul nsw i32 %1401, %1402
  %arrayidx19.7.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.4, i32 0, i64 6
  %1403 = load i32* %arrayidx20.7.6.4, align 4
  %add.7.6.4 = add nsw i32 %1403, %mul.7.6.4
  store i32 %add.7.6.4, i32* %arrayidx20.7.6.4, align 4
  br label %for.inc.7.6.4

for.inc.7.6.4:                                    ; preds = %for.inc.6.6.4
  %arrayidx11.8.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.4, i32 0, i64 8
  %1404 = load i32* %arrayidx12.8.6.4, align 4
  %arrayidx15.8.6.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.4, i32 0, i64 6
  %1405 = load i32* %arrayidx16.8.6.4, align 4
  %mul.8.6.4 = mul nsw i32 %1404, %1405
  %arrayidx19.8.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.4, i32 0, i64 6
  %1406 = load i32* %arrayidx20.8.6.4, align 4
  %add.8.6.4 = add nsw i32 %1406, %mul.8.6.4
  store i32 %add.8.6.4, i32* %arrayidx20.8.6.4, align 4
  br label %for.inc.8.6.4

for.inc.8.6.4:                                    ; preds = %for.inc.7.6.4
  %arrayidx11.9.6.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.6.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.4, i32 0, i64 9
  %1407 = load i32* %arrayidx12.9.6.4, align 4
  %arrayidx15.9.6.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.4, i32 0, i64 6
  %1408 = load i32* %arrayidx16.9.6.4, align 4
  %mul.9.6.4 = mul nsw i32 %1407, %1408
  %arrayidx19.9.6.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.6.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.4, i32 0, i64 6
  %1409 = load i32* %arrayidx20.9.6.4, align 4
  %add.9.6.4 = add nsw i32 %1409, %mul.9.6.4
  store i32 %add.9.6.4, i32* %arrayidx20.9.6.4, align 4
  br label %for.inc.9.6.4

for.inc.9.6.4:                                    ; preds = %for.inc.8.6.4
  br label %for.inc21.6.4

for.inc21.6.4:                                    ; preds = %for.inc.9.6.4
  %arrayidx.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.7.4 = getelementptr inbounds [10 x i32]* %arrayidx.7.4, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.4, align 4
  br label %for.body8.7.4

for.body8.7.4:                                    ; preds = %for.inc21.6.4
  %arrayidx11.764.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.765.4 = getelementptr inbounds [10 x i32]* %arrayidx11.764.4, i32 0, i64 0
  %1410 = load i32* %arrayidx12.765.4, align 4
  %arrayidx16.766.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %1411 = load i32* %arrayidx16.766.4, align 4
  %mul.767.4 = mul nsw i32 %1410, %1411
  %arrayidx19.769.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.770.4 = getelementptr inbounds [10 x i32]* %arrayidx19.769.4, i32 0, i64 7
  %1412 = load i32* %arrayidx20.770.4, align 4
  %add.771.4 = add nsw i32 %1412, %mul.767.4
  store i32 %add.771.4, i32* %arrayidx20.770.4, align 4
  br label %for.inc.772.4

for.inc.772.4:                                    ; preds = %for.body8.7.4
  %arrayidx11.1.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.4, i32 0, i64 1
  %1413 = load i32* %arrayidx12.1.7.4, align 4
  %arrayidx15.1.7.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.4, i32 0, i64 7
  %1414 = load i32* %arrayidx16.1.7.4, align 4
  %mul.1.7.4 = mul nsw i32 %1413, %1414
  %arrayidx19.1.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.4, i32 0, i64 7
  %1415 = load i32* %arrayidx20.1.7.4, align 4
  %add.1.7.4 = add nsw i32 %1415, %mul.1.7.4
  store i32 %add.1.7.4, i32* %arrayidx20.1.7.4, align 4
  br label %for.inc.1.7.4

for.inc.1.7.4:                                    ; preds = %for.inc.772.4
  %arrayidx11.2.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.4, i32 0, i64 2
  %1416 = load i32* %arrayidx12.2.7.4, align 4
  %arrayidx15.2.7.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.4, i32 0, i64 7
  %1417 = load i32* %arrayidx16.2.7.4, align 4
  %mul.2.7.4 = mul nsw i32 %1416, %1417
  %arrayidx19.2.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.4, i32 0, i64 7
  %1418 = load i32* %arrayidx20.2.7.4, align 4
  %add.2.7.4 = add nsw i32 %1418, %mul.2.7.4
  store i32 %add.2.7.4, i32* %arrayidx20.2.7.4, align 4
  br label %for.inc.2.7.4

for.inc.2.7.4:                                    ; preds = %for.inc.1.7.4
  %arrayidx11.3.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.4, i32 0, i64 3
  %1419 = load i32* %arrayidx12.3.7.4, align 4
  %arrayidx15.3.7.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.4, i32 0, i64 7
  %1420 = load i32* %arrayidx16.3.7.4, align 4
  %mul.3.7.4 = mul nsw i32 %1419, %1420
  %arrayidx19.3.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.4, i32 0, i64 7
  %1421 = load i32* %arrayidx20.3.7.4, align 4
  %add.3.7.4 = add nsw i32 %1421, %mul.3.7.4
  store i32 %add.3.7.4, i32* %arrayidx20.3.7.4, align 4
  br label %for.inc.3.7.4

for.inc.3.7.4:                                    ; preds = %for.inc.2.7.4
  %arrayidx11.4.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.4, i32 0, i64 4
  %1422 = load i32* %arrayidx12.4.7.4, align 4
  %arrayidx15.4.7.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.4, i32 0, i64 7
  %1423 = load i32* %arrayidx16.4.7.4, align 4
  %mul.4.7.4 = mul nsw i32 %1422, %1423
  %arrayidx19.4.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.4, i32 0, i64 7
  %1424 = load i32* %arrayidx20.4.7.4, align 4
  %add.4.7.4 = add nsw i32 %1424, %mul.4.7.4
  store i32 %add.4.7.4, i32* %arrayidx20.4.7.4, align 4
  br label %for.inc.4.7.4

for.inc.4.7.4:                                    ; preds = %for.inc.3.7.4
  %arrayidx11.5.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.4, i32 0, i64 5
  %1425 = load i32* %arrayidx12.5.7.4, align 4
  %arrayidx15.5.7.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.4, i32 0, i64 7
  %1426 = load i32* %arrayidx16.5.7.4, align 4
  %mul.5.7.4 = mul nsw i32 %1425, %1426
  %arrayidx19.5.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.4, i32 0, i64 7
  %1427 = load i32* %arrayidx20.5.7.4, align 4
  %add.5.7.4 = add nsw i32 %1427, %mul.5.7.4
  store i32 %add.5.7.4, i32* %arrayidx20.5.7.4, align 4
  br label %for.inc.5.7.4

for.inc.5.7.4:                                    ; preds = %for.inc.4.7.4
  %arrayidx11.6.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.4, i32 0, i64 6
  %1428 = load i32* %arrayidx12.6.7.4, align 4
  %arrayidx15.6.7.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.4, i32 0, i64 7
  %1429 = load i32* %arrayidx16.6.7.4, align 4
  %mul.6.7.4 = mul nsw i32 %1428, %1429
  %arrayidx19.6.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.4, i32 0, i64 7
  %1430 = load i32* %arrayidx20.6.7.4, align 4
  %add.6.7.4 = add nsw i32 %1430, %mul.6.7.4
  store i32 %add.6.7.4, i32* %arrayidx20.6.7.4, align 4
  br label %for.inc.6.7.4

for.inc.6.7.4:                                    ; preds = %for.inc.5.7.4
  %arrayidx11.7.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.4, i32 0, i64 7
  %1431 = load i32* %arrayidx12.7.7.4, align 4
  %arrayidx15.7.7.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.4, i32 0, i64 7
  %1432 = load i32* %arrayidx16.7.7.4, align 4
  %mul.7.7.4 = mul nsw i32 %1431, %1432
  %arrayidx19.7.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.4, i32 0, i64 7
  %1433 = load i32* %arrayidx20.7.7.4, align 4
  %add.7.7.4 = add nsw i32 %1433, %mul.7.7.4
  store i32 %add.7.7.4, i32* %arrayidx20.7.7.4, align 4
  br label %for.inc.7.7.4

for.inc.7.7.4:                                    ; preds = %for.inc.6.7.4
  %arrayidx11.8.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.4, i32 0, i64 8
  %1434 = load i32* %arrayidx12.8.7.4, align 4
  %arrayidx15.8.7.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.4, i32 0, i64 7
  %1435 = load i32* %arrayidx16.8.7.4, align 4
  %mul.8.7.4 = mul nsw i32 %1434, %1435
  %arrayidx19.8.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.4, i32 0, i64 7
  %1436 = load i32* %arrayidx20.8.7.4, align 4
  %add.8.7.4 = add nsw i32 %1436, %mul.8.7.4
  store i32 %add.8.7.4, i32* %arrayidx20.8.7.4, align 4
  br label %for.inc.8.7.4

for.inc.8.7.4:                                    ; preds = %for.inc.7.7.4
  %arrayidx11.9.7.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.7.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.4, i32 0, i64 9
  %1437 = load i32* %arrayidx12.9.7.4, align 4
  %arrayidx15.9.7.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.4, i32 0, i64 7
  %1438 = load i32* %arrayidx16.9.7.4, align 4
  %mul.9.7.4 = mul nsw i32 %1437, %1438
  %arrayidx19.9.7.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.7.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.4, i32 0, i64 7
  %1439 = load i32* %arrayidx20.9.7.4, align 4
  %add.9.7.4 = add nsw i32 %1439, %mul.9.7.4
  store i32 %add.9.7.4, i32* %arrayidx20.9.7.4, align 4
  br label %for.inc.9.7.4

for.inc.9.7.4:                                    ; preds = %for.inc.8.7.4
  br label %for.inc21.7.4

for.inc21.7.4:                                    ; preds = %for.inc.9.7.4
  %arrayidx.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.8.4 = getelementptr inbounds [10 x i32]* %arrayidx.8.4, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.4, align 4
  br label %for.body8.8.4

for.body8.8.4:                                    ; preds = %for.inc21.7.4
  %arrayidx11.874.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.875.4 = getelementptr inbounds [10 x i32]* %arrayidx11.874.4, i32 0, i64 0
  %1440 = load i32* %arrayidx12.875.4, align 4
  %arrayidx16.876.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %1441 = load i32* %arrayidx16.876.4, align 4
  %mul.877.4 = mul nsw i32 %1440, %1441
  %arrayidx19.879.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.880.4 = getelementptr inbounds [10 x i32]* %arrayidx19.879.4, i32 0, i64 8
  %1442 = load i32* %arrayidx20.880.4, align 4
  %add.881.4 = add nsw i32 %1442, %mul.877.4
  store i32 %add.881.4, i32* %arrayidx20.880.4, align 4
  br label %for.inc.882.4

for.inc.882.4:                                    ; preds = %for.body8.8.4
  %arrayidx11.1.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.4, i32 0, i64 1
  %1443 = load i32* %arrayidx12.1.8.4, align 4
  %arrayidx15.1.8.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.4, i32 0, i64 8
  %1444 = load i32* %arrayidx16.1.8.4, align 4
  %mul.1.8.4 = mul nsw i32 %1443, %1444
  %arrayidx19.1.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.4, i32 0, i64 8
  %1445 = load i32* %arrayidx20.1.8.4, align 4
  %add.1.8.4 = add nsw i32 %1445, %mul.1.8.4
  store i32 %add.1.8.4, i32* %arrayidx20.1.8.4, align 4
  br label %for.inc.1.8.4

for.inc.1.8.4:                                    ; preds = %for.inc.882.4
  %arrayidx11.2.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.4, i32 0, i64 2
  %1446 = load i32* %arrayidx12.2.8.4, align 4
  %arrayidx15.2.8.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.4, i32 0, i64 8
  %1447 = load i32* %arrayidx16.2.8.4, align 4
  %mul.2.8.4 = mul nsw i32 %1446, %1447
  %arrayidx19.2.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.4, i32 0, i64 8
  %1448 = load i32* %arrayidx20.2.8.4, align 4
  %add.2.8.4 = add nsw i32 %1448, %mul.2.8.4
  store i32 %add.2.8.4, i32* %arrayidx20.2.8.4, align 4
  br label %for.inc.2.8.4

for.inc.2.8.4:                                    ; preds = %for.inc.1.8.4
  %arrayidx11.3.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.4, i32 0, i64 3
  %1449 = load i32* %arrayidx12.3.8.4, align 4
  %arrayidx15.3.8.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.4, i32 0, i64 8
  %1450 = load i32* %arrayidx16.3.8.4, align 4
  %mul.3.8.4 = mul nsw i32 %1449, %1450
  %arrayidx19.3.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.4, i32 0, i64 8
  %1451 = load i32* %arrayidx20.3.8.4, align 4
  %add.3.8.4 = add nsw i32 %1451, %mul.3.8.4
  store i32 %add.3.8.4, i32* %arrayidx20.3.8.4, align 4
  br label %for.inc.3.8.4

for.inc.3.8.4:                                    ; preds = %for.inc.2.8.4
  %arrayidx11.4.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.4, i32 0, i64 4
  %1452 = load i32* %arrayidx12.4.8.4, align 4
  %arrayidx15.4.8.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.4, i32 0, i64 8
  %1453 = load i32* %arrayidx16.4.8.4, align 4
  %mul.4.8.4 = mul nsw i32 %1452, %1453
  %arrayidx19.4.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.4, i32 0, i64 8
  %1454 = load i32* %arrayidx20.4.8.4, align 4
  %add.4.8.4 = add nsw i32 %1454, %mul.4.8.4
  store i32 %add.4.8.4, i32* %arrayidx20.4.8.4, align 4
  br label %for.inc.4.8.4

for.inc.4.8.4:                                    ; preds = %for.inc.3.8.4
  %arrayidx11.5.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.4, i32 0, i64 5
  %1455 = load i32* %arrayidx12.5.8.4, align 4
  %arrayidx15.5.8.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.4, i32 0, i64 8
  %1456 = load i32* %arrayidx16.5.8.4, align 4
  %mul.5.8.4 = mul nsw i32 %1455, %1456
  %arrayidx19.5.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.4, i32 0, i64 8
  %1457 = load i32* %arrayidx20.5.8.4, align 4
  %add.5.8.4 = add nsw i32 %1457, %mul.5.8.4
  store i32 %add.5.8.4, i32* %arrayidx20.5.8.4, align 4
  br label %for.inc.5.8.4

for.inc.5.8.4:                                    ; preds = %for.inc.4.8.4
  %arrayidx11.6.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.4, i32 0, i64 6
  %1458 = load i32* %arrayidx12.6.8.4, align 4
  %arrayidx15.6.8.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.4, i32 0, i64 8
  %1459 = load i32* %arrayidx16.6.8.4, align 4
  %mul.6.8.4 = mul nsw i32 %1458, %1459
  %arrayidx19.6.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.4, i32 0, i64 8
  %1460 = load i32* %arrayidx20.6.8.4, align 4
  %add.6.8.4 = add nsw i32 %1460, %mul.6.8.4
  store i32 %add.6.8.4, i32* %arrayidx20.6.8.4, align 4
  br label %for.inc.6.8.4

for.inc.6.8.4:                                    ; preds = %for.inc.5.8.4
  %arrayidx11.7.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.4, i32 0, i64 7
  %1461 = load i32* %arrayidx12.7.8.4, align 4
  %arrayidx15.7.8.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.4, i32 0, i64 8
  %1462 = load i32* %arrayidx16.7.8.4, align 4
  %mul.7.8.4 = mul nsw i32 %1461, %1462
  %arrayidx19.7.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.4, i32 0, i64 8
  %1463 = load i32* %arrayidx20.7.8.4, align 4
  %add.7.8.4 = add nsw i32 %1463, %mul.7.8.4
  store i32 %add.7.8.4, i32* %arrayidx20.7.8.4, align 4
  br label %for.inc.7.8.4

for.inc.7.8.4:                                    ; preds = %for.inc.6.8.4
  %arrayidx11.8.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.4, i32 0, i64 8
  %1464 = load i32* %arrayidx12.8.8.4, align 4
  %arrayidx15.8.8.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.4, i32 0, i64 8
  %1465 = load i32* %arrayidx16.8.8.4, align 4
  %mul.8.8.4 = mul nsw i32 %1464, %1465
  %arrayidx19.8.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.4, i32 0, i64 8
  %1466 = load i32* %arrayidx20.8.8.4, align 4
  %add.8.8.4 = add nsw i32 %1466, %mul.8.8.4
  store i32 %add.8.8.4, i32* %arrayidx20.8.8.4, align 4
  br label %for.inc.8.8.4

for.inc.8.8.4:                                    ; preds = %for.inc.7.8.4
  %arrayidx11.9.8.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.8.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.4, i32 0, i64 9
  %1467 = load i32* %arrayidx12.9.8.4, align 4
  %arrayidx15.9.8.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.4, i32 0, i64 8
  %1468 = load i32* %arrayidx16.9.8.4, align 4
  %mul.9.8.4 = mul nsw i32 %1467, %1468
  %arrayidx19.9.8.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.8.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.4, i32 0, i64 8
  %1469 = load i32* %arrayidx20.9.8.4, align 4
  %add.9.8.4 = add nsw i32 %1469, %mul.9.8.4
  store i32 %add.9.8.4, i32* %arrayidx20.9.8.4, align 4
  br label %for.inc.9.8.4

for.inc.9.8.4:                                    ; preds = %for.inc.8.8.4
  br label %for.inc21.8.4

for.inc21.8.4:                                    ; preds = %for.inc.9.8.4
  %arrayidx.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx5.9.4 = getelementptr inbounds [10 x i32]* %arrayidx.9.4, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.4, align 4
  br label %for.body8.9.4

for.body8.9.4:                                    ; preds = %for.inc21.8.4
  %arrayidx11.984.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.985.4 = getelementptr inbounds [10 x i32]* %arrayidx11.984.4, i32 0, i64 0
  %1470 = load i32* %arrayidx12.985.4, align 4
  %arrayidx16.986.4 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %1471 = load i32* %arrayidx16.986.4, align 4
  %mul.987.4 = mul nsw i32 %1470, %1471
  %arrayidx19.989.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.990.4 = getelementptr inbounds [10 x i32]* %arrayidx19.989.4, i32 0, i64 9
  %1472 = load i32* %arrayidx20.990.4, align 4
  %add.991.4 = add nsw i32 %1472, %mul.987.4
  store i32 %add.991.4, i32* %arrayidx20.990.4, align 4
  br label %for.inc.992.4

for.inc.992.4:                                    ; preds = %for.body8.9.4
  %arrayidx11.1.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.1.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.4, i32 0, i64 1
  %1473 = load i32* %arrayidx12.1.9.4, align 4
  %arrayidx15.1.9.4 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.4, i32 0, i64 9
  %1474 = load i32* %arrayidx16.1.9.4, align 4
  %mul.1.9.4 = mul nsw i32 %1473, %1474
  %arrayidx19.1.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.1.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.4, i32 0, i64 9
  %1475 = load i32* %arrayidx20.1.9.4, align 4
  %add.1.9.4 = add nsw i32 %1475, %mul.1.9.4
  store i32 %add.1.9.4, i32* %arrayidx20.1.9.4, align 4
  br label %for.inc.1.9.4

for.inc.1.9.4:                                    ; preds = %for.inc.992.4
  %arrayidx11.2.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.2.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.4, i32 0, i64 2
  %1476 = load i32* %arrayidx12.2.9.4, align 4
  %arrayidx15.2.9.4 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.4, i32 0, i64 9
  %1477 = load i32* %arrayidx16.2.9.4, align 4
  %mul.2.9.4 = mul nsw i32 %1476, %1477
  %arrayidx19.2.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.2.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.4, i32 0, i64 9
  %1478 = load i32* %arrayidx20.2.9.4, align 4
  %add.2.9.4 = add nsw i32 %1478, %mul.2.9.4
  store i32 %add.2.9.4, i32* %arrayidx20.2.9.4, align 4
  br label %for.inc.2.9.4

for.inc.2.9.4:                                    ; preds = %for.inc.1.9.4
  %arrayidx11.3.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.3.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.4, i32 0, i64 3
  %1479 = load i32* %arrayidx12.3.9.4, align 4
  %arrayidx15.3.9.4 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.4, i32 0, i64 9
  %1480 = load i32* %arrayidx16.3.9.4, align 4
  %mul.3.9.4 = mul nsw i32 %1479, %1480
  %arrayidx19.3.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.3.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.4, i32 0, i64 9
  %1481 = load i32* %arrayidx20.3.9.4, align 4
  %add.3.9.4 = add nsw i32 %1481, %mul.3.9.4
  store i32 %add.3.9.4, i32* %arrayidx20.3.9.4, align 4
  br label %for.inc.3.9.4

for.inc.3.9.4:                                    ; preds = %for.inc.2.9.4
  %arrayidx11.4.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.4.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.4, i32 0, i64 4
  %1482 = load i32* %arrayidx12.4.9.4, align 4
  %arrayidx15.4.9.4 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.4, i32 0, i64 9
  %1483 = load i32* %arrayidx16.4.9.4, align 4
  %mul.4.9.4 = mul nsw i32 %1482, %1483
  %arrayidx19.4.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.4.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.4, i32 0, i64 9
  %1484 = load i32* %arrayidx20.4.9.4, align 4
  %add.4.9.4 = add nsw i32 %1484, %mul.4.9.4
  store i32 %add.4.9.4, i32* %arrayidx20.4.9.4, align 4
  br label %for.inc.4.9.4

for.inc.4.9.4:                                    ; preds = %for.inc.3.9.4
  %arrayidx11.5.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.5.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.4, i32 0, i64 5
  %1485 = load i32* %arrayidx12.5.9.4, align 4
  %arrayidx15.5.9.4 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.4, i32 0, i64 9
  %1486 = load i32* %arrayidx16.5.9.4, align 4
  %mul.5.9.4 = mul nsw i32 %1485, %1486
  %arrayidx19.5.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.5.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.4, i32 0, i64 9
  %1487 = load i32* %arrayidx20.5.9.4, align 4
  %add.5.9.4 = add nsw i32 %1487, %mul.5.9.4
  store i32 %add.5.9.4, i32* %arrayidx20.5.9.4, align 4
  br label %for.inc.5.9.4

for.inc.5.9.4:                                    ; preds = %for.inc.4.9.4
  %arrayidx11.6.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.6.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.4, i32 0, i64 6
  %1488 = load i32* %arrayidx12.6.9.4, align 4
  %arrayidx15.6.9.4 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.4, i32 0, i64 9
  %1489 = load i32* %arrayidx16.6.9.4, align 4
  %mul.6.9.4 = mul nsw i32 %1488, %1489
  %arrayidx19.6.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.6.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.4, i32 0, i64 9
  %1490 = load i32* %arrayidx20.6.9.4, align 4
  %add.6.9.4 = add nsw i32 %1490, %mul.6.9.4
  store i32 %add.6.9.4, i32* %arrayidx20.6.9.4, align 4
  br label %for.inc.6.9.4

for.inc.6.9.4:                                    ; preds = %for.inc.5.9.4
  %arrayidx11.7.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.7.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.4, i32 0, i64 7
  %1491 = load i32* %arrayidx12.7.9.4, align 4
  %arrayidx15.7.9.4 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.4, i32 0, i64 9
  %1492 = load i32* %arrayidx16.7.9.4, align 4
  %mul.7.9.4 = mul nsw i32 %1491, %1492
  %arrayidx19.7.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.7.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.4, i32 0, i64 9
  %1493 = load i32* %arrayidx20.7.9.4, align 4
  %add.7.9.4 = add nsw i32 %1493, %mul.7.9.4
  store i32 %add.7.9.4, i32* %arrayidx20.7.9.4, align 4
  br label %for.inc.7.9.4

for.inc.7.9.4:                                    ; preds = %for.inc.6.9.4
  %arrayidx11.8.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.8.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.4, i32 0, i64 8
  %1494 = load i32* %arrayidx12.8.9.4, align 4
  %arrayidx15.8.9.4 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.4, i32 0, i64 9
  %1495 = load i32* %arrayidx16.8.9.4, align 4
  %mul.8.9.4 = mul nsw i32 %1494, %1495
  %arrayidx19.8.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.8.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.4, i32 0, i64 9
  %1496 = load i32* %arrayidx20.8.9.4, align 4
  %add.8.9.4 = add nsw i32 %1496, %mul.8.9.4
  store i32 %add.8.9.4, i32* %arrayidx20.8.9.4, align 4
  br label %for.inc.8.9.4

for.inc.8.9.4:                                    ; preds = %for.inc.7.9.4
  %arrayidx11.9.9.4 = getelementptr inbounds [10 x i32]* %a, i64 4
  %arrayidx12.9.9.4 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.4, i32 0, i64 9
  %1497 = load i32* %arrayidx12.9.9.4, align 4
  %arrayidx15.9.9.4 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.4 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.4, i32 0, i64 9
  %1498 = load i32* %arrayidx16.9.9.4, align 4
  %mul.9.9.4 = mul nsw i32 %1497, %1498
  %arrayidx19.9.9.4 = getelementptr inbounds [10 x i32]* %c, i64 4
  %arrayidx20.9.9.4 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.4, i32 0, i64 9
  %1499 = load i32* %arrayidx20.9.9.4, align 4
  %add.9.9.4 = add nsw i32 %1499, %mul.9.9.4
  store i32 %add.9.9.4, i32* %arrayidx20.9.9.4, align 4
  br label %for.inc.9.9.4

for.inc.9.9.4:                                    ; preds = %for.inc.8.9.4
  br label %for.inc21.9.4

for.inc21.9.4:                                    ; preds = %for.inc.9.9.4
  br label %for.inc24.4

for.inc24.4:                                      ; preds = %for.inc21.9.4
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.inc24.4
  %arrayidx.5466 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.5467 = getelementptr inbounds [10 x i32]* %arrayidx.5466, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.5467, align 4
  br label %for.body8.5475

for.body8.5475:                                   ; preds = %for.body3.5
  %arrayidx11.5468 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5469 = getelementptr inbounds [10 x i32]* %arrayidx11.5468, i32 0, i64 0
  %1500 = load i32* %arrayidx12.5469, align 4
  %arrayidx16.5470 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %1501 = load i32* %arrayidx16.5470, align 4
  %mul.5471 = mul nsw i32 %1500, %1501
  %arrayidx19.5472 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5473 = getelementptr inbounds [10 x i32]* %arrayidx19.5472, i32 0, i64 0
  %1502 = load i32* %arrayidx20.5473, align 4
  %add.5474 = add nsw i32 %1502, %mul.5471
  store i32 %add.5474, i32* %arrayidx20.5473, align 4
  br label %for.inc.5484

for.inc.5484:                                     ; preds = %for.body8.5475
  %arrayidx11.1.5476 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.5477 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5476, i32 0, i64 1
  %1503 = load i32* %arrayidx12.1.5477, align 4
  %arrayidx15.1.5478 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5479 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5478, i32 0, i64 0
  %1504 = load i32* %arrayidx16.1.5479, align 4
  %mul.1.5480 = mul nsw i32 %1503, %1504
  %arrayidx19.1.5481 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.5482 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5481, i32 0, i64 0
  %1505 = load i32* %arrayidx20.1.5482, align 4
  %add.1.5483 = add nsw i32 %1505, %mul.1.5480
  store i32 %add.1.5483, i32* %arrayidx20.1.5482, align 4
  br label %for.inc.1.5493

for.inc.1.5493:                                   ; preds = %for.inc.5484
  %arrayidx11.2.5485 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.5486 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5485, i32 0, i64 2
  %1506 = load i32* %arrayidx12.2.5486, align 4
  %arrayidx15.2.5487 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5488 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5487, i32 0, i64 0
  %1507 = load i32* %arrayidx16.2.5488, align 4
  %mul.2.5489 = mul nsw i32 %1506, %1507
  %arrayidx19.2.5490 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.5491 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5490, i32 0, i64 0
  %1508 = load i32* %arrayidx20.2.5491, align 4
  %add.2.5492 = add nsw i32 %1508, %mul.2.5489
  store i32 %add.2.5492, i32* %arrayidx20.2.5491, align 4
  br label %for.inc.2.5502

for.inc.2.5502:                                   ; preds = %for.inc.1.5493
  %arrayidx11.3.5494 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.5495 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5494, i32 0, i64 3
  %1509 = load i32* %arrayidx12.3.5495, align 4
  %arrayidx15.3.5496 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5497 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5496, i32 0, i64 0
  %1510 = load i32* %arrayidx16.3.5497, align 4
  %mul.3.5498 = mul nsw i32 %1509, %1510
  %arrayidx19.3.5499 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.5500 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5499, i32 0, i64 0
  %1511 = load i32* %arrayidx20.3.5500, align 4
  %add.3.5501 = add nsw i32 %1511, %mul.3.5498
  store i32 %add.3.5501, i32* %arrayidx20.3.5500, align 4
  br label %for.inc.3.5511

for.inc.3.5511:                                   ; preds = %for.inc.2.5502
  %arrayidx11.4.5503 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.5504 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5503, i32 0, i64 4
  %1512 = load i32* %arrayidx12.4.5504, align 4
  %arrayidx15.4.5505 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5506 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5505, i32 0, i64 0
  %1513 = load i32* %arrayidx16.4.5506, align 4
  %mul.4.5507 = mul nsw i32 %1512, %1513
  %arrayidx19.4.5508 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.5509 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5508, i32 0, i64 0
  %1514 = load i32* %arrayidx20.4.5509, align 4
  %add.4.5510 = add nsw i32 %1514, %mul.4.5507
  store i32 %add.4.5510, i32* %arrayidx20.4.5509, align 4
  br label %for.inc.4.5520

for.inc.4.5520:                                   ; preds = %for.inc.3.5511
  %arrayidx11.5.5512 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.5513 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5512, i32 0, i64 5
  %1515 = load i32* %arrayidx12.5.5513, align 4
  %arrayidx15.5.5514 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5515 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5514, i32 0, i64 0
  %1516 = load i32* %arrayidx16.5.5515, align 4
  %mul.5.5516 = mul nsw i32 %1515, %1516
  %arrayidx19.5.5517 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.5518 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5517, i32 0, i64 0
  %1517 = load i32* %arrayidx20.5.5518, align 4
  %add.5.5519 = add nsw i32 %1517, %mul.5.5516
  store i32 %add.5.5519, i32* %arrayidx20.5.5518, align 4
  br label %for.inc.5.5529

for.inc.5.5529:                                   ; preds = %for.inc.4.5520
  %arrayidx11.6.5521 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.5522 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5521, i32 0, i64 6
  %1518 = load i32* %arrayidx12.6.5522, align 4
  %arrayidx15.6.5523 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5524 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5523, i32 0, i64 0
  %1519 = load i32* %arrayidx16.6.5524, align 4
  %mul.6.5525 = mul nsw i32 %1518, %1519
  %arrayidx19.6.5526 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.5527 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5526, i32 0, i64 0
  %1520 = load i32* %arrayidx20.6.5527, align 4
  %add.6.5528 = add nsw i32 %1520, %mul.6.5525
  store i32 %add.6.5528, i32* %arrayidx20.6.5527, align 4
  br label %for.inc.6.5538

for.inc.6.5538:                                   ; preds = %for.inc.5.5529
  %arrayidx11.7.5530 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.5531 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5530, i32 0, i64 7
  %1521 = load i32* %arrayidx12.7.5531, align 4
  %arrayidx15.7.5532 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5533 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5532, i32 0, i64 0
  %1522 = load i32* %arrayidx16.7.5533, align 4
  %mul.7.5534 = mul nsw i32 %1521, %1522
  %arrayidx19.7.5535 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.5536 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5535, i32 0, i64 0
  %1523 = load i32* %arrayidx20.7.5536, align 4
  %add.7.5537 = add nsw i32 %1523, %mul.7.5534
  store i32 %add.7.5537, i32* %arrayidx20.7.5536, align 4
  br label %for.inc.7.5547

for.inc.7.5547:                                   ; preds = %for.inc.6.5538
  %arrayidx11.8.5539 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.5540 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5539, i32 0, i64 8
  %1524 = load i32* %arrayidx12.8.5540, align 4
  %arrayidx15.8.5541 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5542 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5541, i32 0, i64 0
  %1525 = load i32* %arrayidx16.8.5542, align 4
  %mul.8.5543 = mul nsw i32 %1524, %1525
  %arrayidx19.8.5544 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.5545 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5544, i32 0, i64 0
  %1526 = load i32* %arrayidx20.8.5545, align 4
  %add.8.5546 = add nsw i32 %1526, %mul.8.5543
  store i32 %add.8.5546, i32* %arrayidx20.8.5545, align 4
  br label %for.inc.8.5556

for.inc.8.5556:                                   ; preds = %for.inc.7.5547
  %arrayidx11.9.5548 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.5549 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5548, i32 0, i64 9
  %1527 = load i32* %arrayidx12.9.5549, align 4
  %arrayidx15.9.5550 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5551 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5550, i32 0, i64 0
  %1528 = load i32* %arrayidx16.9.5551, align 4
  %mul.9.5552 = mul nsw i32 %1527, %1528
  %arrayidx19.9.5553 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.5554 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5553, i32 0, i64 0
  %1529 = load i32* %arrayidx20.9.5554, align 4
  %add.9.5555 = add nsw i32 %1529, %mul.9.5552
  store i32 %add.9.5555, i32* %arrayidx20.9.5554, align 4
  br label %for.inc.9.5557

for.inc.9.5557:                                   ; preds = %for.inc.8.5556
  br label %for.inc21.5558

for.inc21.5558:                                   ; preds = %for.inc.9.5557
  %arrayidx.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.1.5 = getelementptr inbounds [10 x i32]* %arrayidx.1.5, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.5, align 4
  br label %for.body8.1.5

for.body8.1.5:                                    ; preds = %for.inc21.5558
  %arrayidx11.14.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.15.5 = getelementptr inbounds [10 x i32]* %arrayidx11.14.5, i32 0, i64 0
  %1530 = load i32* %arrayidx12.15.5, align 4
  %arrayidx16.16.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %1531 = load i32* %arrayidx16.16.5, align 4
  %mul.17.5 = mul nsw i32 %1530, %1531
  %arrayidx19.19.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.110.5 = getelementptr inbounds [10 x i32]* %arrayidx19.19.5, i32 0, i64 1
  %1532 = load i32* %arrayidx20.110.5, align 4
  %add.111.5 = add nsw i32 %1532, %mul.17.5
  store i32 %add.111.5, i32* %arrayidx20.110.5, align 4
  br label %for.inc.112.5

for.inc.112.5:                                    ; preds = %for.body8.1.5
  %arrayidx11.1.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.5, i32 0, i64 1
  %1533 = load i32* %arrayidx12.1.1.5, align 4
  %arrayidx15.1.1.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.5, i32 0, i64 1
  %1534 = load i32* %arrayidx16.1.1.5, align 4
  %mul.1.1.5 = mul nsw i32 %1533, %1534
  %arrayidx19.1.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.5, i32 0, i64 1
  %1535 = load i32* %arrayidx20.1.1.5, align 4
  %add.1.1.5 = add nsw i32 %1535, %mul.1.1.5
  store i32 %add.1.1.5, i32* %arrayidx20.1.1.5, align 4
  br label %for.inc.1.1.5

for.inc.1.1.5:                                    ; preds = %for.inc.112.5
  %arrayidx11.2.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.5, i32 0, i64 2
  %1536 = load i32* %arrayidx12.2.1.5, align 4
  %arrayidx15.2.1.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.5, i32 0, i64 1
  %1537 = load i32* %arrayidx16.2.1.5, align 4
  %mul.2.1.5 = mul nsw i32 %1536, %1537
  %arrayidx19.2.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.5, i32 0, i64 1
  %1538 = load i32* %arrayidx20.2.1.5, align 4
  %add.2.1.5 = add nsw i32 %1538, %mul.2.1.5
  store i32 %add.2.1.5, i32* %arrayidx20.2.1.5, align 4
  br label %for.inc.2.1.5

for.inc.2.1.5:                                    ; preds = %for.inc.1.1.5
  %arrayidx11.3.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.5, i32 0, i64 3
  %1539 = load i32* %arrayidx12.3.1.5, align 4
  %arrayidx15.3.1.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.5, i32 0, i64 1
  %1540 = load i32* %arrayidx16.3.1.5, align 4
  %mul.3.1.5 = mul nsw i32 %1539, %1540
  %arrayidx19.3.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.5, i32 0, i64 1
  %1541 = load i32* %arrayidx20.3.1.5, align 4
  %add.3.1.5 = add nsw i32 %1541, %mul.3.1.5
  store i32 %add.3.1.5, i32* %arrayidx20.3.1.5, align 4
  br label %for.inc.3.1.5

for.inc.3.1.5:                                    ; preds = %for.inc.2.1.5
  %arrayidx11.4.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.5, i32 0, i64 4
  %1542 = load i32* %arrayidx12.4.1.5, align 4
  %arrayidx15.4.1.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.5, i32 0, i64 1
  %1543 = load i32* %arrayidx16.4.1.5, align 4
  %mul.4.1.5 = mul nsw i32 %1542, %1543
  %arrayidx19.4.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.5, i32 0, i64 1
  %1544 = load i32* %arrayidx20.4.1.5, align 4
  %add.4.1.5 = add nsw i32 %1544, %mul.4.1.5
  store i32 %add.4.1.5, i32* %arrayidx20.4.1.5, align 4
  br label %for.inc.4.1.5

for.inc.4.1.5:                                    ; preds = %for.inc.3.1.5
  %arrayidx11.5.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.5, i32 0, i64 5
  %1545 = load i32* %arrayidx12.5.1.5, align 4
  %arrayidx15.5.1.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.5, i32 0, i64 1
  %1546 = load i32* %arrayidx16.5.1.5, align 4
  %mul.5.1.5 = mul nsw i32 %1545, %1546
  %arrayidx19.5.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.5, i32 0, i64 1
  %1547 = load i32* %arrayidx20.5.1.5, align 4
  %add.5.1.5 = add nsw i32 %1547, %mul.5.1.5
  store i32 %add.5.1.5, i32* %arrayidx20.5.1.5, align 4
  br label %for.inc.5.1.5

for.inc.5.1.5:                                    ; preds = %for.inc.4.1.5
  %arrayidx11.6.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.5, i32 0, i64 6
  %1548 = load i32* %arrayidx12.6.1.5, align 4
  %arrayidx15.6.1.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.5, i32 0, i64 1
  %1549 = load i32* %arrayidx16.6.1.5, align 4
  %mul.6.1.5 = mul nsw i32 %1548, %1549
  %arrayidx19.6.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.5, i32 0, i64 1
  %1550 = load i32* %arrayidx20.6.1.5, align 4
  %add.6.1.5 = add nsw i32 %1550, %mul.6.1.5
  store i32 %add.6.1.5, i32* %arrayidx20.6.1.5, align 4
  br label %for.inc.6.1.5

for.inc.6.1.5:                                    ; preds = %for.inc.5.1.5
  %arrayidx11.7.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.5, i32 0, i64 7
  %1551 = load i32* %arrayidx12.7.1.5, align 4
  %arrayidx15.7.1.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.5, i32 0, i64 1
  %1552 = load i32* %arrayidx16.7.1.5, align 4
  %mul.7.1.5 = mul nsw i32 %1551, %1552
  %arrayidx19.7.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.5, i32 0, i64 1
  %1553 = load i32* %arrayidx20.7.1.5, align 4
  %add.7.1.5 = add nsw i32 %1553, %mul.7.1.5
  store i32 %add.7.1.5, i32* %arrayidx20.7.1.5, align 4
  br label %for.inc.7.1.5

for.inc.7.1.5:                                    ; preds = %for.inc.6.1.5
  %arrayidx11.8.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.5, i32 0, i64 8
  %1554 = load i32* %arrayidx12.8.1.5, align 4
  %arrayidx15.8.1.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.5, i32 0, i64 1
  %1555 = load i32* %arrayidx16.8.1.5, align 4
  %mul.8.1.5 = mul nsw i32 %1554, %1555
  %arrayidx19.8.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.5, i32 0, i64 1
  %1556 = load i32* %arrayidx20.8.1.5, align 4
  %add.8.1.5 = add nsw i32 %1556, %mul.8.1.5
  store i32 %add.8.1.5, i32* %arrayidx20.8.1.5, align 4
  br label %for.inc.8.1.5

for.inc.8.1.5:                                    ; preds = %for.inc.7.1.5
  %arrayidx11.9.1.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.1.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.5, i32 0, i64 9
  %1557 = load i32* %arrayidx12.9.1.5, align 4
  %arrayidx15.9.1.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.5, i32 0, i64 1
  %1558 = load i32* %arrayidx16.9.1.5, align 4
  %mul.9.1.5 = mul nsw i32 %1557, %1558
  %arrayidx19.9.1.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.1.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.5, i32 0, i64 1
  %1559 = load i32* %arrayidx20.9.1.5, align 4
  %add.9.1.5 = add nsw i32 %1559, %mul.9.1.5
  store i32 %add.9.1.5, i32* %arrayidx20.9.1.5, align 4
  br label %for.inc.9.1.5

for.inc.9.1.5:                                    ; preds = %for.inc.8.1.5
  br label %for.inc21.1.5

for.inc21.1.5:                                    ; preds = %for.inc.9.1.5
  %arrayidx.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.2.5 = getelementptr inbounds [10 x i32]* %arrayidx.2.5, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.5, align 4
  br label %for.body8.2.5

for.body8.2.5:                                    ; preds = %for.inc21.1.5
  %arrayidx11.214.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.215.5 = getelementptr inbounds [10 x i32]* %arrayidx11.214.5, i32 0, i64 0
  %1560 = load i32* %arrayidx12.215.5, align 4
  %arrayidx16.216.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %1561 = load i32* %arrayidx16.216.5, align 4
  %mul.217.5 = mul nsw i32 %1560, %1561
  %arrayidx19.219.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.220.5 = getelementptr inbounds [10 x i32]* %arrayidx19.219.5, i32 0, i64 2
  %1562 = load i32* %arrayidx20.220.5, align 4
  %add.221.5 = add nsw i32 %1562, %mul.217.5
  store i32 %add.221.5, i32* %arrayidx20.220.5, align 4
  br label %for.inc.222.5

for.inc.222.5:                                    ; preds = %for.body8.2.5
  %arrayidx11.1.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.5, i32 0, i64 1
  %1563 = load i32* %arrayidx12.1.2.5, align 4
  %arrayidx15.1.2.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.5, i32 0, i64 2
  %1564 = load i32* %arrayidx16.1.2.5, align 4
  %mul.1.2.5 = mul nsw i32 %1563, %1564
  %arrayidx19.1.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.5, i32 0, i64 2
  %1565 = load i32* %arrayidx20.1.2.5, align 4
  %add.1.2.5 = add nsw i32 %1565, %mul.1.2.5
  store i32 %add.1.2.5, i32* %arrayidx20.1.2.5, align 4
  br label %for.inc.1.2.5

for.inc.1.2.5:                                    ; preds = %for.inc.222.5
  %arrayidx11.2.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.5, i32 0, i64 2
  %1566 = load i32* %arrayidx12.2.2.5, align 4
  %arrayidx15.2.2.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.5, i32 0, i64 2
  %1567 = load i32* %arrayidx16.2.2.5, align 4
  %mul.2.2.5 = mul nsw i32 %1566, %1567
  %arrayidx19.2.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.5, i32 0, i64 2
  %1568 = load i32* %arrayidx20.2.2.5, align 4
  %add.2.2.5 = add nsw i32 %1568, %mul.2.2.5
  store i32 %add.2.2.5, i32* %arrayidx20.2.2.5, align 4
  br label %for.inc.2.2.5

for.inc.2.2.5:                                    ; preds = %for.inc.1.2.5
  %arrayidx11.3.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.5, i32 0, i64 3
  %1569 = load i32* %arrayidx12.3.2.5, align 4
  %arrayidx15.3.2.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.5, i32 0, i64 2
  %1570 = load i32* %arrayidx16.3.2.5, align 4
  %mul.3.2.5 = mul nsw i32 %1569, %1570
  %arrayidx19.3.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.5, i32 0, i64 2
  %1571 = load i32* %arrayidx20.3.2.5, align 4
  %add.3.2.5 = add nsw i32 %1571, %mul.3.2.5
  store i32 %add.3.2.5, i32* %arrayidx20.3.2.5, align 4
  br label %for.inc.3.2.5

for.inc.3.2.5:                                    ; preds = %for.inc.2.2.5
  %arrayidx11.4.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.5, i32 0, i64 4
  %1572 = load i32* %arrayidx12.4.2.5, align 4
  %arrayidx15.4.2.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.5, i32 0, i64 2
  %1573 = load i32* %arrayidx16.4.2.5, align 4
  %mul.4.2.5 = mul nsw i32 %1572, %1573
  %arrayidx19.4.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.5, i32 0, i64 2
  %1574 = load i32* %arrayidx20.4.2.5, align 4
  %add.4.2.5 = add nsw i32 %1574, %mul.4.2.5
  store i32 %add.4.2.5, i32* %arrayidx20.4.2.5, align 4
  br label %for.inc.4.2.5

for.inc.4.2.5:                                    ; preds = %for.inc.3.2.5
  %arrayidx11.5.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.5, i32 0, i64 5
  %1575 = load i32* %arrayidx12.5.2.5, align 4
  %arrayidx15.5.2.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.5, i32 0, i64 2
  %1576 = load i32* %arrayidx16.5.2.5, align 4
  %mul.5.2.5 = mul nsw i32 %1575, %1576
  %arrayidx19.5.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.5, i32 0, i64 2
  %1577 = load i32* %arrayidx20.5.2.5, align 4
  %add.5.2.5 = add nsw i32 %1577, %mul.5.2.5
  store i32 %add.5.2.5, i32* %arrayidx20.5.2.5, align 4
  br label %for.inc.5.2.5

for.inc.5.2.5:                                    ; preds = %for.inc.4.2.5
  %arrayidx11.6.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.5, i32 0, i64 6
  %1578 = load i32* %arrayidx12.6.2.5, align 4
  %arrayidx15.6.2.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.5, i32 0, i64 2
  %1579 = load i32* %arrayidx16.6.2.5, align 4
  %mul.6.2.5 = mul nsw i32 %1578, %1579
  %arrayidx19.6.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.5, i32 0, i64 2
  %1580 = load i32* %arrayidx20.6.2.5, align 4
  %add.6.2.5 = add nsw i32 %1580, %mul.6.2.5
  store i32 %add.6.2.5, i32* %arrayidx20.6.2.5, align 4
  br label %for.inc.6.2.5

for.inc.6.2.5:                                    ; preds = %for.inc.5.2.5
  %arrayidx11.7.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.5, i32 0, i64 7
  %1581 = load i32* %arrayidx12.7.2.5, align 4
  %arrayidx15.7.2.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.5, i32 0, i64 2
  %1582 = load i32* %arrayidx16.7.2.5, align 4
  %mul.7.2.5 = mul nsw i32 %1581, %1582
  %arrayidx19.7.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.5, i32 0, i64 2
  %1583 = load i32* %arrayidx20.7.2.5, align 4
  %add.7.2.5 = add nsw i32 %1583, %mul.7.2.5
  store i32 %add.7.2.5, i32* %arrayidx20.7.2.5, align 4
  br label %for.inc.7.2.5

for.inc.7.2.5:                                    ; preds = %for.inc.6.2.5
  %arrayidx11.8.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.5, i32 0, i64 8
  %1584 = load i32* %arrayidx12.8.2.5, align 4
  %arrayidx15.8.2.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.5, i32 0, i64 2
  %1585 = load i32* %arrayidx16.8.2.5, align 4
  %mul.8.2.5 = mul nsw i32 %1584, %1585
  %arrayidx19.8.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.5, i32 0, i64 2
  %1586 = load i32* %arrayidx20.8.2.5, align 4
  %add.8.2.5 = add nsw i32 %1586, %mul.8.2.5
  store i32 %add.8.2.5, i32* %arrayidx20.8.2.5, align 4
  br label %for.inc.8.2.5

for.inc.8.2.5:                                    ; preds = %for.inc.7.2.5
  %arrayidx11.9.2.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.2.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.5, i32 0, i64 9
  %1587 = load i32* %arrayidx12.9.2.5, align 4
  %arrayidx15.9.2.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.5, i32 0, i64 2
  %1588 = load i32* %arrayidx16.9.2.5, align 4
  %mul.9.2.5 = mul nsw i32 %1587, %1588
  %arrayidx19.9.2.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.2.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.5, i32 0, i64 2
  %1589 = load i32* %arrayidx20.9.2.5, align 4
  %add.9.2.5 = add nsw i32 %1589, %mul.9.2.5
  store i32 %add.9.2.5, i32* %arrayidx20.9.2.5, align 4
  br label %for.inc.9.2.5

for.inc.9.2.5:                                    ; preds = %for.inc.8.2.5
  br label %for.inc21.2.5

for.inc21.2.5:                                    ; preds = %for.inc.9.2.5
  %arrayidx.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.3.5 = getelementptr inbounds [10 x i32]* %arrayidx.3.5, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.5, align 4
  br label %for.body8.3.5

for.body8.3.5:                                    ; preds = %for.inc21.2.5
  %arrayidx11.324.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.325.5 = getelementptr inbounds [10 x i32]* %arrayidx11.324.5, i32 0, i64 0
  %1590 = load i32* %arrayidx12.325.5, align 4
  %arrayidx16.326.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %1591 = load i32* %arrayidx16.326.5, align 4
  %mul.327.5 = mul nsw i32 %1590, %1591
  %arrayidx19.329.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.330.5 = getelementptr inbounds [10 x i32]* %arrayidx19.329.5, i32 0, i64 3
  %1592 = load i32* %arrayidx20.330.5, align 4
  %add.331.5 = add nsw i32 %1592, %mul.327.5
  store i32 %add.331.5, i32* %arrayidx20.330.5, align 4
  br label %for.inc.332.5

for.inc.332.5:                                    ; preds = %for.body8.3.5
  %arrayidx11.1.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.5, i32 0, i64 1
  %1593 = load i32* %arrayidx12.1.3.5, align 4
  %arrayidx15.1.3.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.5, i32 0, i64 3
  %1594 = load i32* %arrayidx16.1.3.5, align 4
  %mul.1.3.5 = mul nsw i32 %1593, %1594
  %arrayidx19.1.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.5, i32 0, i64 3
  %1595 = load i32* %arrayidx20.1.3.5, align 4
  %add.1.3.5 = add nsw i32 %1595, %mul.1.3.5
  store i32 %add.1.3.5, i32* %arrayidx20.1.3.5, align 4
  br label %for.inc.1.3.5

for.inc.1.3.5:                                    ; preds = %for.inc.332.5
  %arrayidx11.2.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.5, i32 0, i64 2
  %1596 = load i32* %arrayidx12.2.3.5, align 4
  %arrayidx15.2.3.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.5, i32 0, i64 3
  %1597 = load i32* %arrayidx16.2.3.5, align 4
  %mul.2.3.5 = mul nsw i32 %1596, %1597
  %arrayidx19.2.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.5, i32 0, i64 3
  %1598 = load i32* %arrayidx20.2.3.5, align 4
  %add.2.3.5 = add nsw i32 %1598, %mul.2.3.5
  store i32 %add.2.3.5, i32* %arrayidx20.2.3.5, align 4
  br label %for.inc.2.3.5

for.inc.2.3.5:                                    ; preds = %for.inc.1.3.5
  %arrayidx11.3.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.5, i32 0, i64 3
  %1599 = load i32* %arrayidx12.3.3.5, align 4
  %arrayidx15.3.3.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.5, i32 0, i64 3
  %1600 = load i32* %arrayidx16.3.3.5, align 4
  %mul.3.3.5 = mul nsw i32 %1599, %1600
  %arrayidx19.3.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.5, i32 0, i64 3
  %1601 = load i32* %arrayidx20.3.3.5, align 4
  %add.3.3.5 = add nsw i32 %1601, %mul.3.3.5
  store i32 %add.3.3.5, i32* %arrayidx20.3.3.5, align 4
  br label %for.inc.3.3.5

for.inc.3.3.5:                                    ; preds = %for.inc.2.3.5
  %arrayidx11.4.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.5, i32 0, i64 4
  %1602 = load i32* %arrayidx12.4.3.5, align 4
  %arrayidx15.4.3.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.5, i32 0, i64 3
  %1603 = load i32* %arrayidx16.4.3.5, align 4
  %mul.4.3.5 = mul nsw i32 %1602, %1603
  %arrayidx19.4.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.5, i32 0, i64 3
  %1604 = load i32* %arrayidx20.4.3.5, align 4
  %add.4.3.5 = add nsw i32 %1604, %mul.4.3.5
  store i32 %add.4.3.5, i32* %arrayidx20.4.3.5, align 4
  br label %for.inc.4.3.5

for.inc.4.3.5:                                    ; preds = %for.inc.3.3.5
  %arrayidx11.5.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.5, i32 0, i64 5
  %1605 = load i32* %arrayidx12.5.3.5, align 4
  %arrayidx15.5.3.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.5, i32 0, i64 3
  %1606 = load i32* %arrayidx16.5.3.5, align 4
  %mul.5.3.5 = mul nsw i32 %1605, %1606
  %arrayidx19.5.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.5, i32 0, i64 3
  %1607 = load i32* %arrayidx20.5.3.5, align 4
  %add.5.3.5 = add nsw i32 %1607, %mul.5.3.5
  store i32 %add.5.3.5, i32* %arrayidx20.5.3.5, align 4
  br label %for.inc.5.3.5

for.inc.5.3.5:                                    ; preds = %for.inc.4.3.5
  %arrayidx11.6.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.5, i32 0, i64 6
  %1608 = load i32* %arrayidx12.6.3.5, align 4
  %arrayidx15.6.3.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.5, i32 0, i64 3
  %1609 = load i32* %arrayidx16.6.3.5, align 4
  %mul.6.3.5 = mul nsw i32 %1608, %1609
  %arrayidx19.6.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.5, i32 0, i64 3
  %1610 = load i32* %arrayidx20.6.3.5, align 4
  %add.6.3.5 = add nsw i32 %1610, %mul.6.3.5
  store i32 %add.6.3.5, i32* %arrayidx20.6.3.5, align 4
  br label %for.inc.6.3.5

for.inc.6.3.5:                                    ; preds = %for.inc.5.3.5
  %arrayidx11.7.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.5, i32 0, i64 7
  %1611 = load i32* %arrayidx12.7.3.5, align 4
  %arrayidx15.7.3.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.5, i32 0, i64 3
  %1612 = load i32* %arrayidx16.7.3.5, align 4
  %mul.7.3.5 = mul nsw i32 %1611, %1612
  %arrayidx19.7.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.5, i32 0, i64 3
  %1613 = load i32* %arrayidx20.7.3.5, align 4
  %add.7.3.5 = add nsw i32 %1613, %mul.7.3.5
  store i32 %add.7.3.5, i32* %arrayidx20.7.3.5, align 4
  br label %for.inc.7.3.5

for.inc.7.3.5:                                    ; preds = %for.inc.6.3.5
  %arrayidx11.8.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.5, i32 0, i64 8
  %1614 = load i32* %arrayidx12.8.3.5, align 4
  %arrayidx15.8.3.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.5, i32 0, i64 3
  %1615 = load i32* %arrayidx16.8.3.5, align 4
  %mul.8.3.5 = mul nsw i32 %1614, %1615
  %arrayidx19.8.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.5, i32 0, i64 3
  %1616 = load i32* %arrayidx20.8.3.5, align 4
  %add.8.3.5 = add nsw i32 %1616, %mul.8.3.5
  store i32 %add.8.3.5, i32* %arrayidx20.8.3.5, align 4
  br label %for.inc.8.3.5

for.inc.8.3.5:                                    ; preds = %for.inc.7.3.5
  %arrayidx11.9.3.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.3.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.5, i32 0, i64 9
  %1617 = load i32* %arrayidx12.9.3.5, align 4
  %arrayidx15.9.3.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.5, i32 0, i64 3
  %1618 = load i32* %arrayidx16.9.3.5, align 4
  %mul.9.3.5 = mul nsw i32 %1617, %1618
  %arrayidx19.9.3.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.3.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.5, i32 0, i64 3
  %1619 = load i32* %arrayidx20.9.3.5, align 4
  %add.9.3.5 = add nsw i32 %1619, %mul.9.3.5
  store i32 %add.9.3.5, i32* %arrayidx20.9.3.5, align 4
  br label %for.inc.9.3.5

for.inc.9.3.5:                                    ; preds = %for.inc.8.3.5
  br label %for.inc21.3.5

for.inc21.3.5:                                    ; preds = %for.inc.9.3.5
  %arrayidx.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.4.5 = getelementptr inbounds [10 x i32]* %arrayidx.4.5, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.5, align 4
  br label %for.body8.4.5

for.body8.4.5:                                    ; preds = %for.inc21.3.5
  %arrayidx11.434.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.435.5 = getelementptr inbounds [10 x i32]* %arrayidx11.434.5, i32 0, i64 0
  %1620 = load i32* %arrayidx12.435.5, align 4
  %arrayidx16.436.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %1621 = load i32* %arrayidx16.436.5, align 4
  %mul.437.5 = mul nsw i32 %1620, %1621
  %arrayidx19.439.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.440.5 = getelementptr inbounds [10 x i32]* %arrayidx19.439.5, i32 0, i64 4
  %1622 = load i32* %arrayidx20.440.5, align 4
  %add.441.5 = add nsw i32 %1622, %mul.437.5
  store i32 %add.441.5, i32* %arrayidx20.440.5, align 4
  br label %for.inc.442.5

for.inc.442.5:                                    ; preds = %for.body8.4.5
  %arrayidx11.1.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.5, i32 0, i64 1
  %1623 = load i32* %arrayidx12.1.4.5, align 4
  %arrayidx15.1.4.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.5, i32 0, i64 4
  %1624 = load i32* %arrayidx16.1.4.5, align 4
  %mul.1.4.5 = mul nsw i32 %1623, %1624
  %arrayidx19.1.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.5, i32 0, i64 4
  %1625 = load i32* %arrayidx20.1.4.5, align 4
  %add.1.4.5 = add nsw i32 %1625, %mul.1.4.5
  store i32 %add.1.4.5, i32* %arrayidx20.1.4.5, align 4
  br label %for.inc.1.4.5

for.inc.1.4.5:                                    ; preds = %for.inc.442.5
  %arrayidx11.2.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.5, i32 0, i64 2
  %1626 = load i32* %arrayidx12.2.4.5, align 4
  %arrayidx15.2.4.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.5, i32 0, i64 4
  %1627 = load i32* %arrayidx16.2.4.5, align 4
  %mul.2.4.5 = mul nsw i32 %1626, %1627
  %arrayidx19.2.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.5, i32 0, i64 4
  %1628 = load i32* %arrayidx20.2.4.5, align 4
  %add.2.4.5 = add nsw i32 %1628, %mul.2.4.5
  store i32 %add.2.4.5, i32* %arrayidx20.2.4.5, align 4
  br label %for.inc.2.4.5

for.inc.2.4.5:                                    ; preds = %for.inc.1.4.5
  %arrayidx11.3.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.5, i32 0, i64 3
  %1629 = load i32* %arrayidx12.3.4.5, align 4
  %arrayidx15.3.4.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.5, i32 0, i64 4
  %1630 = load i32* %arrayidx16.3.4.5, align 4
  %mul.3.4.5 = mul nsw i32 %1629, %1630
  %arrayidx19.3.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.5, i32 0, i64 4
  %1631 = load i32* %arrayidx20.3.4.5, align 4
  %add.3.4.5 = add nsw i32 %1631, %mul.3.4.5
  store i32 %add.3.4.5, i32* %arrayidx20.3.4.5, align 4
  br label %for.inc.3.4.5

for.inc.3.4.5:                                    ; preds = %for.inc.2.4.5
  %arrayidx11.4.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.5, i32 0, i64 4
  %1632 = load i32* %arrayidx12.4.4.5, align 4
  %arrayidx15.4.4.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.5, i32 0, i64 4
  %1633 = load i32* %arrayidx16.4.4.5, align 4
  %mul.4.4.5 = mul nsw i32 %1632, %1633
  %arrayidx19.4.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.5, i32 0, i64 4
  %1634 = load i32* %arrayidx20.4.4.5, align 4
  %add.4.4.5 = add nsw i32 %1634, %mul.4.4.5
  store i32 %add.4.4.5, i32* %arrayidx20.4.4.5, align 4
  br label %for.inc.4.4.5

for.inc.4.4.5:                                    ; preds = %for.inc.3.4.5
  %arrayidx11.5.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.5, i32 0, i64 5
  %1635 = load i32* %arrayidx12.5.4.5, align 4
  %arrayidx15.5.4.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.5, i32 0, i64 4
  %1636 = load i32* %arrayidx16.5.4.5, align 4
  %mul.5.4.5 = mul nsw i32 %1635, %1636
  %arrayidx19.5.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.5, i32 0, i64 4
  %1637 = load i32* %arrayidx20.5.4.5, align 4
  %add.5.4.5 = add nsw i32 %1637, %mul.5.4.5
  store i32 %add.5.4.5, i32* %arrayidx20.5.4.5, align 4
  br label %for.inc.5.4.5

for.inc.5.4.5:                                    ; preds = %for.inc.4.4.5
  %arrayidx11.6.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.5, i32 0, i64 6
  %1638 = load i32* %arrayidx12.6.4.5, align 4
  %arrayidx15.6.4.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.5, i32 0, i64 4
  %1639 = load i32* %arrayidx16.6.4.5, align 4
  %mul.6.4.5 = mul nsw i32 %1638, %1639
  %arrayidx19.6.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.5, i32 0, i64 4
  %1640 = load i32* %arrayidx20.6.4.5, align 4
  %add.6.4.5 = add nsw i32 %1640, %mul.6.4.5
  store i32 %add.6.4.5, i32* %arrayidx20.6.4.5, align 4
  br label %for.inc.6.4.5

for.inc.6.4.5:                                    ; preds = %for.inc.5.4.5
  %arrayidx11.7.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.5, i32 0, i64 7
  %1641 = load i32* %arrayidx12.7.4.5, align 4
  %arrayidx15.7.4.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.5, i32 0, i64 4
  %1642 = load i32* %arrayidx16.7.4.5, align 4
  %mul.7.4.5 = mul nsw i32 %1641, %1642
  %arrayidx19.7.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.5, i32 0, i64 4
  %1643 = load i32* %arrayidx20.7.4.5, align 4
  %add.7.4.5 = add nsw i32 %1643, %mul.7.4.5
  store i32 %add.7.4.5, i32* %arrayidx20.7.4.5, align 4
  br label %for.inc.7.4.5

for.inc.7.4.5:                                    ; preds = %for.inc.6.4.5
  %arrayidx11.8.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.5, i32 0, i64 8
  %1644 = load i32* %arrayidx12.8.4.5, align 4
  %arrayidx15.8.4.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.5, i32 0, i64 4
  %1645 = load i32* %arrayidx16.8.4.5, align 4
  %mul.8.4.5 = mul nsw i32 %1644, %1645
  %arrayidx19.8.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.5, i32 0, i64 4
  %1646 = load i32* %arrayidx20.8.4.5, align 4
  %add.8.4.5 = add nsw i32 %1646, %mul.8.4.5
  store i32 %add.8.4.5, i32* %arrayidx20.8.4.5, align 4
  br label %for.inc.8.4.5

for.inc.8.4.5:                                    ; preds = %for.inc.7.4.5
  %arrayidx11.9.4.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.4.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.5, i32 0, i64 9
  %1647 = load i32* %arrayidx12.9.4.5, align 4
  %arrayidx15.9.4.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.5, i32 0, i64 4
  %1648 = load i32* %arrayidx16.9.4.5, align 4
  %mul.9.4.5 = mul nsw i32 %1647, %1648
  %arrayidx19.9.4.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.4.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.5, i32 0, i64 4
  %1649 = load i32* %arrayidx20.9.4.5, align 4
  %add.9.4.5 = add nsw i32 %1649, %mul.9.4.5
  store i32 %add.9.4.5, i32* %arrayidx20.9.4.5, align 4
  br label %for.inc.9.4.5

for.inc.9.4.5:                                    ; preds = %for.inc.8.4.5
  br label %for.inc21.4.5

for.inc21.4.5:                                    ; preds = %for.inc.9.4.5
  %arrayidx.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.5.5 = getelementptr inbounds [10 x i32]* %arrayidx.5.5, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.5, align 4
  br label %for.body8.5.5

for.body8.5.5:                                    ; preds = %for.inc21.4.5
  %arrayidx11.544.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.545.5 = getelementptr inbounds [10 x i32]* %arrayidx11.544.5, i32 0, i64 0
  %1650 = load i32* %arrayidx12.545.5, align 4
  %arrayidx16.546.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %1651 = load i32* %arrayidx16.546.5, align 4
  %mul.547.5 = mul nsw i32 %1650, %1651
  %arrayidx19.549.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.550.5 = getelementptr inbounds [10 x i32]* %arrayidx19.549.5, i32 0, i64 5
  %1652 = load i32* %arrayidx20.550.5, align 4
  %add.551.5 = add nsw i32 %1652, %mul.547.5
  store i32 %add.551.5, i32* %arrayidx20.550.5, align 4
  br label %for.inc.552.5

for.inc.552.5:                                    ; preds = %for.body8.5.5
  %arrayidx11.1.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.5, i32 0, i64 1
  %1653 = load i32* %arrayidx12.1.5.5, align 4
  %arrayidx15.1.5.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.5, i32 0, i64 5
  %1654 = load i32* %arrayidx16.1.5.5, align 4
  %mul.1.5.5 = mul nsw i32 %1653, %1654
  %arrayidx19.1.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.5, i32 0, i64 5
  %1655 = load i32* %arrayidx20.1.5.5, align 4
  %add.1.5.5 = add nsw i32 %1655, %mul.1.5.5
  store i32 %add.1.5.5, i32* %arrayidx20.1.5.5, align 4
  br label %for.inc.1.5.5

for.inc.1.5.5:                                    ; preds = %for.inc.552.5
  %arrayidx11.2.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.5, i32 0, i64 2
  %1656 = load i32* %arrayidx12.2.5.5, align 4
  %arrayidx15.2.5.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.5, i32 0, i64 5
  %1657 = load i32* %arrayidx16.2.5.5, align 4
  %mul.2.5.5 = mul nsw i32 %1656, %1657
  %arrayidx19.2.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.5, i32 0, i64 5
  %1658 = load i32* %arrayidx20.2.5.5, align 4
  %add.2.5.5 = add nsw i32 %1658, %mul.2.5.5
  store i32 %add.2.5.5, i32* %arrayidx20.2.5.5, align 4
  br label %for.inc.2.5.5

for.inc.2.5.5:                                    ; preds = %for.inc.1.5.5
  %arrayidx11.3.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.5, i32 0, i64 3
  %1659 = load i32* %arrayidx12.3.5.5, align 4
  %arrayidx15.3.5.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.5, i32 0, i64 5
  %1660 = load i32* %arrayidx16.3.5.5, align 4
  %mul.3.5.5 = mul nsw i32 %1659, %1660
  %arrayidx19.3.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.5, i32 0, i64 5
  %1661 = load i32* %arrayidx20.3.5.5, align 4
  %add.3.5.5 = add nsw i32 %1661, %mul.3.5.5
  store i32 %add.3.5.5, i32* %arrayidx20.3.5.5, align 4
  br label %for.inc.3.5.5

for.inc.3.5.5:                                    ; preds = %for.inc.2.5.5
  %arrayidx11.4.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.5, i32 0, i64 4
  %1662 = load i32* %arrayidx12.4.5.5, align 4
  %arrayidx15.4.5.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.5, i32 0, i64 5
  %1663 = load i32* %arrayidx16.4.5.5, align 4
  %mul.4.5.5 = mul nsw i32 %1662, %1663
  %arrayidx19.4.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.5, i32 0, i64 5
  %1664 = load i32* %arrayidx20.4.5.5, align 4
  %add.4.5.5 = add nsw i32 %1664, %mul.4.5.5
  store i32 %add.4.5.5, i32* %arrayidx20.4.5.5, align 4
  br label %for.inc.4.5.5

for.inc.4.5.5:                                    ; preds = %for.inc.3.5.5
  %arrayidx11.5.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.5, i32 0, i64 5
  %1665 = load i32* %arrayidx12.5.5.5, align 4
  %arrayidx15.5.5.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.5, i32 0, i64 5
  %1666 = load i32* %arrayidx16.5.5.5, align 4
  %mul.5.5.5 = mul nsw i32 %1665, %1666
  %arrayidx19.5.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.5, i32 0, i64 5
  %1667 = load i32* %arrayidx20.5.5.5, align 4
  %add.5.5.5 = add nsw i32 %1667, %mul.5.5.5
  store i32 %add.5.5.5, i32* %arrayidx20.5.5.5, align 4
  br label %for.inc.5.5.5

for.inc.5.5.5:                                    ; preds = %for.inc.4.5.5
  %arrayidx11.6.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.5, i32 0, i64 6
  %1668 = load i32* %arrayidx12.6.5.5, align 4
  %arrayidx15.6.5.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.5, i32 0, i64 5
  %1669 = load i32* %arrayidx16.6.5.5, align 4
  %mul.6.5.5 = mul nsw i32 %1668, %1669
  %arrayidx19.6.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.5, i32 0, i64 5
  %1670 = load i32* %arrayidx20.6.5.5, align 4
  %add.6.5.5 = add nsw i32 %1670, %mul.6.5.5
  store i32 %add.6.5.5, i32* %arrayidx20.6.5.5, align 4
  br label %for.inc.6.5.5

for.inc.6.5.5:                                    ; preds = %for.inc.5.5.5
  %arrayidx11.7.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.5, i32 0, i64 7
  %1671 = load i32* %arrayidx12.7.5.5, align 4
  %arrayidx15.7.5.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.5, i32 0, i64 5
  %1672 = load i32* %arrayidx16.7.5.5, align 4
  %mul.7.5.5 = mul nsw i32 %1671, %1672
  %arrayidx19.7.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.5, i32 0, i64 5
  %1673 = load i32* %arrayidx20.7.5.5, align 4
  %add.7.5.5 = add nsw i32 %1673, %mul.7.5.5
  store i32 %add.7.5.5, i32* %arrayidx20.7.5.5, align 4
  br label %for.inc.7.5.5

for.inc.7.5.5:                                    ; preds = %for.inc.6.5.5
  %arrayidx11.8.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.5, i32 0, i64 8
  %1674 = load i32* %arrayidx12.8.5.5, align 4
  %arrayidx15.8.5.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.5, i32 0, i64 5
  %1675 = load i32* %arrayidx16.8.5.5, align 4
  %mul.8.5.5 = mul nsw i32 %1674, %1675
  %arrayidx19.8.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.5, i32 0, i64 5
  %1676 = load i32* %arrayidx20.8.5.5, align 4
  %add.8.5.5 = add nsw i32 %1676, %mul.8.5.5
  store i32 %add.8.5.5, i32* %arrayidx20.8.5.5, align 4
  br label %for.inc.8.5.5

for.inc.8.5.5:                                    ; preds = %for.inc.7.5.5
  %arrayidx11.9.5.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.5.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.5, i32 0, i64 9
  %1677 = load i32* %arrayidx12.9.5.5, align 4
  %arrayidx15.9.5.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.5, i32 0, i64 5
  %1678 = load i32* %arrayidx16.9.5.5, align 4
  %mul.9.5.5 = mul nsw i32 %1677, %1678
  %arrayidx19.9.5.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.5.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.5, i32 0, i64 5
  %1679 = load i32* %arrayidx20.9.5.5, align 4
  %add.9.5.5 = add nsw i32 %1679, %mul.9.5.5
  store i32 %add.9.5.5, i32* %arrayidx20.9.5.5, align 4
  br label %for.inc.9.5.5

for.inc.9.5.5:                                    ; preds = %for.inc.8.5.5
  br label %for.inc21.5.5

for.inc21.5.5:                                    ; preds = %for.inc.9.5.5
  %arrayidx.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.6.5 = getelementptr inbounds [10 x i32]* %arrayidx.6.5, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.5, align 4
  br label %for.body8.6.5

for.body8.6.5:                                    ; preds = %for.inc21.5.5
  %arrayidx11.654.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.655.5 = getelementptr inbounds [10 x i32]* %arrayidx11.654.5, i32 0, i64 0
  %1680 = load i32* %arrayidx12.655.5, align 4
  %arrayidx16.656.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %1681 = load i32* %arrayidx16.656.5, align 4
  %mul.657.5 = mul nsw i32 %1680, %1681
  %arrayidx19.659.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.660.5 = getelementptr inbounds [10 x i32]* %arrayidx19.659.5, i32 0, i64 6
  %1682 = load i32* %arrayidx20.660.5, align 4
  %add.661.5 = add nsw i32 %1682, %mul.657.5
  store i32 %add.661.5, i32* %arrayidx20.660.5, align 4
  br label %for.inc.662.5

for.inc.662.5:                                    ; preds = %for.body8.6.5
  %arrayidx11.1.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.5, i32 0, i64 1
  %1683 = load i32* %arrayidx12.1.6.5, align 4
  %arrayidx15.1.6.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.5, i32 0, i64 6
  %1684 = load i32* %arrayidx16.1.6.5, align 4
  %mul.1.6.5 = mul nsw i32 %1683, %1684
  %arrayidx19.1.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.5, i32 0, i64 6
  %1685 = load i32* %arrayidx20.1.6.5, align 4
  %add.1.6.5 = add nsw i32 %1685, %mul.1.6.5
  store i32 %add.1.6.5, i32* %arrayidx20.1.6.5, align 4
  br label %for.inc.1.6.5

for.inc.1.6.5:                                    ; preds = %for.inc.662.5
  %arrayidx11.2.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.5, i32 0, i64 2
  %1686 = load i32* %arrayidx12.2.6.5, align 4
  %arrayidx15.2.6.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.5, i32 0, i64 6
  %1687 = load i32* %arrayidx16.2.6.5, align 4
  %mul.2.6.5 = mul nsw i32 %1686, %1687
  %arrayidx19.2.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.5, i32 0, i64 6
  %1688 = load i32* %arrayidx20.2.6.5, align 4
  %add.2.6.5 = add nsw i32 %1688, %mul.2.6.5
  store i32 %add.2.6.5, i32* %arrayidx20.2.6.5, align 4
  br label %for.inc.2.6.5

for.inc.2.6.5:                                    ; preds = %for.inc.1.6.5
  %arrayidx11.3.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.5, i32 0, i64 3
  %1689 = load i32* %arrayidx12.3.6.5, align 4
  %arrayidx15.3.6.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.5, i32 0, i64 6
  %1690 = load i32* %arrayidx16.3.6.5, align 4
  %mul.3.6.5 = mul nsw i32 %1689, %1690
  %arrayidx19.3.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.5, i32 0, i64 6
  %1691 = load i32* %arrayidx20.3.6.5, align 4
  %add.3.6.5 = add nsw i32 %1691, %mul.3.6.5
  store i32 %add.3.6.5, i32* %arrayidx20.3.6.5, align 4
  br label %for.inc.3.6.5

for.inc.3.6.5:                                    ; preds = %for.inc.2.6.5
  %arrayidx11.4.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.5, i32 0, i64 4
  %1692 = load i32* %arrayidx12.4.6.5, align 4
  %arrayidx15.4.6.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.5, i32 0, i64 6
  %1693 = load i32* %arrayidx16.4.6.5, align 4
  %mul.4.6.5 = mul nsw i32 %1692, %1693
  %arrayidx19.4.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.5, i32 0, i64 6
  %1694 = load i32* %arrayidx20.4.6.5, align 4
  %add.4.6.5 = add nsw i32 %1694, %mul.4.6.5
  store i32 %add.4.6.5, i32* %arrayidx20.4.6.5, align 4
  br label %for.inc.4.6.5

for.inc.4.6.5:                                    ; preds = %for.inc.3.6.5
  %arrayidx11.5.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.5, i32 0, i64 5
  %1695 = load i32* %arrayidx12.5.6.5, align 4
  %arrayidx15.5.6.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.5, i32 0, i64 6
  %1696 = load i32* %arrayidx16.5.6.5, align 4
  %mul.5.6.5 = mul nsw i32 %1695, %1696
  %arrayidx19.5.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.5, i32 0, i64 6
  %1697 = load i32* %arrayidx20.5.6.5, align 4
  %add.5.6.5 = add nsw i32 %1697, %mul.5.6.5
  store i32 %add.5.6.5, i32* %arrayidx20.5.6.5, align 4
  br label %for.inc.5.6.5

for.inc.5.6.5:                                    ; preds = %for.inc.4.6.5
  %arrayidx11.6.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.5, i32 0, i64 6
  %1698 = load i32* %arrayidx12.6.6.5, align 4
  %arrayidx15.6.6.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.5, i32 0, i64 6
  %1699 = load i32* %arrayidx16.6.6.5, align 4
  %mul.6.6.5 = mul nsw i32 %1698, %1699
  %arrayidx19.6.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.5, i32 0, i64 6
  %1700 = load i32* %arrayidx20.6.6.5, align 4
  %add.6.6.5 = add nsw i32 %1700, %mul.6.6.5
  store i32 %add.6.6.5, i32* %arrayidx20.6.6.5, align 4
  br label %for.inc.6.6.5

for.inc.6.6.5:                                    ; preds = %for.inc.5.6.5
  %arrayidx11.7.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.5, i32 0, i64 7
  %1701 = load i32* %arrayidx12.7.6.5, align 4
  %arrayidx15.7.6.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.5, i32 0, i64 6
  %1702 = load i32* %arrayidx16.7.6.5, align 4
  %mul.7.6.5 = mul nsw i32 %1701, %1702
  %arrayidx19.7.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.5, i32 0, i64 6
  %1703 = load i32* %arrayidx20.7.6.5, align 4
  %add.7.6.5 = add nsw i32 %1703, %mul.7.6.5
  store i32 %add.7.6.5, i32* %arrayidx20.7.6.5, align 4
  br label %for.inc.7.6.5

for.inc.7.6.5:                                    ; preds = %for.inc.6.6.5
  %arrayidx11.8.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.5, i32 0, i64 8
  %1704 = load i32* %arrayidx12.8.6.5, align 4
  %arrayidx15.8.6.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.5, i32 0, i64 6
  %1705 = load i32* %arrayidx16.8.6.5, align 4
  %mul.8.6.5 = mul nsw i32 %1704, %1705
  %arrayidx19.8.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.5, i32 0, i64 6
  %1706 = load i32* %arrayidx20.8.6.5, align 4
  %add.8.6.5 = add nsw i32 %1706, %mul.8.6.5
  store i32 %add.8.6.5, i32* %arrayidx20.8.6.5, align 4
  br label %for.inc.8.6.5

for.inc.8.6.5:                                    ; preds = %for.inc.7.6.5
  %arrayidx11.9.6.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.6.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.5, i32 0, i64 9
  %1707 = load i32* %arrayidx12.9.6.5, align 4
  %arrayidx15.9.6.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.5, i32 0, i64 6
  %1708 = load i32* %arrayidx16.9.6.5, align 4
  %mul.9.6.5 = mul nsw i32 %1707, %1708
  %arrayidx19.9.6.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.6.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.5, i32 0, i64 6
  %1709 = load i32* %arrayidx20.9.6.5, align 4
  %add.9.6.5 = add nsw i32 %1709, %mul.9.6.5
  store i32 %add.9.6.5, i32* %arrayidx20.9.6.5, align 4
  br label %for.inc.9.6.5

for.inc.9.6.5:                                    ; preds = %for.inc.8.6.5
  br label %for.inc21.6.5

for.inc21.6.5:                                    ; preds = %for.inc.9.6.5
  %arrayidx.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.7.5 = getelementptr inbounds [10 x i32]* %arrayidx.7.5, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.5, align 4
  br label %for.body8.7.5

for.body8.7.5:                                    ; preds = %for.inc21.6.5
  %arrayidx11.764.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.765.5 = getelementptr inbounds [10 x i32]* %arrayidx11.764.5, i32 0, i64 0
  %1710 = load i32* %arrayidx12.765.5, align 4
  %arrayidx16.766.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %1711 = load i32* %arrayidx16.766.5, align 4
  %mul.767.5 = mul nsw i32 %1710, %1711
  %arrayidx19.769.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.770.5 = getelementptr inbounds [10 x i32]* %arrayidx19.769.5, i32 0, i64 7
  %1712 = load i32* %arrayidx20.770.5, align 4
  %add.771.5 = add nsw i32 %1712, %mul.767.5
  store i32 %add.771.5, i32* %arrayidx20.770.5, align 4
  br label %for.inc.772.5

for.inc.772.5:                                    ; preds = %for.body8.7.5
  %arrayidx11.1.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.5, i32 0, i64 1
  %1713 = load i32* %arrayidx12.1.7.5, align 4
  %arrayidx15.1.7.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.5, i32 0, i64 7
  %1714 = load i32* %arrayidx16.1.7.5, align 4
  %mul.1.7.5 = mul nsw i32 %1713, %1714
  %arrayidx19.1.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.5, i32 0, i64 7
  %1715 = load i32* %arrayidx20.1.7.5, align 4
  %add.1.7.5 = add nsw i32 %1715, %mul.1.7.5
  store i32 %add.1.7.5, i32* %arrayidx20.1.7.5, align 4
  br label %for.inc.1.7.5

for.inc.1.7.5:                                    ; preds = %for.inc.772.5
  %arrayidx11.2.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.5, i32 0, i64 2
  %1716 = load i32* %arrayidx12.2.7.5, align 4
  %arrayidx15.2.7.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.5, i32 0, i64 7
  %1717 = load i32* %arrayidx16.2.7.5, align 4
  %mul.2.7.5 = mul nsw i32 %1716, %1717
  %arrayidx19.2.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.5, i32 0, i64 7
  %1718 = load i32* %arrayidx20.2.7.5, align 4
  %add.2.7.5 = add nsw i32 %1718, %mul.2.7.5
  store i32 %add.2.7.5, i32* %arrayidx20.2.7.5, align 4
  br label %for.inc.2.7.5

for.inc.2.7.5:                                    ; preds = %for.inc.1.7.5
  %arrayidx11.3.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.5, i32 0, i64 3
  %1719 = load i32* %arrayidx12.3.7.5, align 4
  %arrayidx15.3.7.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.5, i32 0, i64 7
  %1720 = load i32* %arrayidx16.3.7.5, align 4
  %mul.3.7.5 = mul nsw i32 %1719, %1720
  %arrayidx19.3.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.5, i32 0, i64 7
  %1721 = load i32* %arrayidx20.3.7.5, align 4
  %add.3.7.5 = add nsw i32 %1721, %mul.3.7.5
  store i32 %add.3.7.5, i32* %arrayidx20.3.7.5, align 4
  br label %for.inc.3.7.5

for.inc.3.7.5:                                    ; preds = %for.inc.2.7.5
  %arrayidx11.4.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.5, i32 0, i64 4
  %1722 = load i32* %arrayidx12.4.7.5, align 4
  %arrayidx15.4.7.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.5, i32 0, i64 7
  %1723 = load i32* %arrayidx16.4.7.5, align 4
  %mul.4.7.5 = mul nsw i32 %1722, %1723
  %arrayidx19.4.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.5, i32 0, i64 7
  %1724 = load i32* %arrayidx20.4.7.5, align 4
  %add.4.7.5 = add nsw i32 %1724, %mul.4.7.5
  store i32 %add.4.7.5, i32* %arrayidx20.4.7.5, align 4
  br label %for.inc.4.7.5

for.inc.4.7.5:                                    ; preds = %for.inc.3.7.5
  %arrayidx11.5.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.5, i32 0, i64 5
  %1725 = load i32* %arrayidx12.5.7.5, align 4
  %arrayidx15.5.7.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.5, i32 0, i64 7
  %1726 = load i32* %arrayidx16.5.7.5, align 4
  %mul.5.7.5 = mul nsw i32 %1725, %1726
  %arrayidx19.5.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.5, i32 0, i64 7
  %1727 = load i32* %arrayidx20.5.7.5, align 4
  %add.5.7.5 = add nsw i32 %1727, %mul.5.7.5
  store i32 %add.5.7.5, i32* %arrayidx20.5.7.5, align 4
  br label %for.inc.5.7.5

for.inc.5.7.5:                                    ; preds = %for.inc.4.7.5
  %arrayidx11.6.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.5, i32 0, i64 6
  %1728 = load i32* %arrayidx12.6.7.5, align 4
  %arrayidx15.6.7.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.5, i32 0, i64 7
  %1729 = load i32* %arrayidx16.6.7.5, align 4
  %mul.6.7.5 = mul nsw i32 %1728, %1729
  %arrayidx19.6.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.5, i32 0, i64 7
  %1730 = load i32* %arrayidx20.6.7.5, align 4
  %add.6.7.5 = add nsw i32 %1730, %mul.6.7.5
  store i32 %add.6.7.5, i32* %arrayidx20.6.7.5, align 4
  br label %for.inc.6.7.5

for.inc.6.7.5:                                    ; preds = %for.inc.5.7.5
  %arrayidx11.7.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.5, i32 0, i64 7
  %1731 = load i32* %arrayidx12.7.7.5, align 4
  %arrayidx15.7.7.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.5, i32 0, i64 7
  %1732 = load i32* %arrayidx16.7.7.5, align 4
  %mul.7.7.5 = mul nsw i32 %1731, %1732
  %arrayidx19.7.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.5, i32 0, i64 7
  %1733 = load i32* %arrayidx20.7.7.5, align 4
  %add.7.7.5 = add nsw i32 %1733, %mul.7.7.5
  store i32 %add.7.7.5, i32* %arrayidx20.7.7.5, align 4
  br label %for.inc.7.7.5

for.inc.7.7.5:                                    ; preds = %for.inc.6.7.5
  %arrayidx11.8.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.5, i32 0, i64 8
  %1734 = load i32* %arrayidx12.8.7.5, align 4
  %arrayidx15.8.7.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.5, i32 0, i64 7
  %1735 = load i32* %arrayidx16.8.7.5, align 4
  %mul.8.7.5 = mul nsw i32 %1734, %1735
  %arrayidx19.8.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.5, i32 0, i64 7
  %1736 = load i32* %arrayidx20.8.7.5, align 4
  %add.8.7.5 = add nsw i32 %1736, %mul.8.7.5
  store i32 %add.8.7.5, i32* %arrayidx20.8.7.5, align 4
  br label %for.inc.8.7.5

for.inc.8.7.5:                                    ; preds = %for.inc.7.7.5
  %arrayidx11.9.7.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.7.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.5, i32 0, i64 9
  %1737 = load i32* %arrayidx12.9.7.5, align 4
  %arrayidx15.9.7.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.5, i32 0, i64 7
  %1738 = load i32* %arrayidx16.9.7.5, align 4
  %mul.9.7.5 = mul nsw i32 %1737, %1738
  %arrayidx19.9.7.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.7.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.5, i32 0, i64 7
  %1739 = load i32* %arrayidx20.9.7.5, align 4
  %add.9.7.5 = add nsw i32 %1739, %mul.9.7.5
  store i32 %add.9.7.5, i32* %arrayidx20.9.7.5, align 4
  br label %for.inc.9.7.5

for.inc.9.7.5:                                    ; preds = %for.inc.8.7.5
  br label %for.inc21.7.5

for.inc21.7.5:                                    ; preds = %for.inc.9.7.5
  %arrayidx.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.8.5 = getelementptr inbounds [10 x i32]* %arrayidx.8.5, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.5, align 4
  br label %for.body8.8.5

for.body8.8.5:                                    ; preds = %for.inc21.7.5
  %arrayidx11.874.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.875.5 = getelementptr inbounds [10 x i32]* %arrayidx11.874.5, i32 0, i64 0
  %1740 = load i32* %arrayidx12.875.5, align 4
  %arrayidx16.876.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %1741 = load i32* %arrayidx16.876.5, align 4
  %mul.877.5 = mul nsw i32 %1740, %1741
  %arrayidx19.879.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.880.5 = getelementptr inbounds [10 x i32]* %arrayidx19.879.5, i32 0, i64 8
  %1742 = load i32* %arrayidx20.880.5, align 4
  %add.881.5 = add nsw i32 %1742, %mul.877.5
  store i32 %add.881.5, i32* %arrayidx20.880.5, align 4
  br label %for.inc.882.5

for.inc.882.5:                                    ; preds = %for.body8.8.5
  %arrayidx11.1.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.5, i32 0, i64 1
  %1743 = load i32* %arrayidx12.1.8.5, align 4
  %arrayidx15.1.8.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.5, i32 0, i64 8
  %1744 = load i32* %arrayidx16.1.8.5, align 4
  %mul.1.8.5 = mul nsw i32 %1743, %1744
  %arrayidx19.1.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.5, i32 0, i64 8
  %1745 = load i32* %arrayidx20.1.8.5, align 4
  %add.1.8.5 = add nsw i32 %1745, %mul.1.8.5
  store i32 %add.1.8.5, i32* %arrayidx20.1.8.5, align 4
  br label %for.inc.1.8.5

for.inc.1.8.5:                                    ; preds = %for.inc.882.5
  %arrayidx11.2.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.5, i32 0, i64 2
  %1746 = load i32* %arrayidx12.2.8.5, align 4
  %arrayidx15.2.8.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.5, i32 0, i64 8
  %1747 = load i32* %arrayidx16.2.8.5, align 4
  %mul.2.8.5 = mul nsw i32 %1746, %1747
  %arrayidx19.2.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.5, i32 0, i64 8
  %1748 = load i32* %arrayidx20.2.8.5, align 4
  %add.2.8.5 = add nsw i32 %1748, %mul.2.8.5
  store i32 %add.2.8.5, i32* %arrayidx20.2.8.5, align 4
  br label %for.inc.2.8.5

for.inc.2.8.5:                                    ; preds = %for.inc.1.8.5
  %arrayidx11.3.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.5, i32 0, i64 3
  %1749 = load i32* %arrayidx12.3.8.5, align 4
  %arrayidx15.3.8.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.5, i32 0, i64 8
  %1750 = load i32* %arrayidx16.3.8.5, align 4
  %mul.3.8.5 = mul nsw i32 %1749, %1750
  %arrayidx19.3.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.5, i32 0, i64 8
  %1751 = load i32* %arrayidx20.3.8.5, align 4
  %add.3.8.5 = add nsw i32 %1751, %mul.3.8.5
  store i32 %add.3.8.5, i32* %arrayidx20.3.8.5, align 4
  br label %for.inc.3.8.5

for.inc.3.8.5:                                    ; preds = %for.inc.2.8.5
  %arrayidx11.4.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.5, i32 0, i64 4
  %1752 = load i32* %arrayidx12.4.8.5, align 4
  %arrayidx15.4.8.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.5, i32 0, i64 8
  %1753 = load i32* %arrayidx16.4.8.5, align 4
  %mul.4.8.5 = mul nsw i32 %1752, %1753
  %arrayidx19.4.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.5, i32 0, i64 8
  %1754 = load i32* %arrayidx20.4.8.5, align 4
  %add.4.8.5 = add nsw i32 %1754, %mul.4.8.5
  store i32 %add.4.8.5, i32* %arrayidx20.4.8.5, align 4
  br label %for.inc.4.8.5

for.inc.4.8.5:                                    ; preds = %for.inc.3.8.5
  %arrayidx11.5.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.5, i32 0, i64 5
  %1755 = load i32* %arrayidx12.5.8.5, align 4
  %arrayidx15.5.8.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.5, i32 0, i64 8
  %1756 = load i32* %arrayidx16.5.8.5, align 4
  %mul.5.8.5 = mul nsw i32 %1755, %1756
  %arrayidx19.5.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.5, i32 0, i64 8
  %1757 = load i32* %arrayidx20.5.8.5, align 4
  %add.5.8.5 = add nsw i32 %1757, %mul.5.8.5
  store i32 %add.5.8.5, i32* %arrayidx20.5.8.5, align 4
  br label %for.inc.5.8.5

for.inc.5.8.5:                                    ; preds = %for.inc.4.8.5
  %arrayidx11.6.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.5, i32 0, i64 6
  %1758 = load i32* %arrayidx12.6.8.5, align 4
  %arrayidx15.6.8.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.5, i32 0, i64 8
  %1759 = load i32* %arrayidx16.6.8.5, align 4
  %mul.6.8.5 = mul nsw i32 %1758, %1759
  %arrayidx19.6.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.5, i32 0, i64 8
  %1760 = load i32* %arrayidx20.6.8.5, align 4
  %add.6.8.5 = add nsw i32 %1760, %mul.6.8.5
  store i32 %add.6.8.5, i32* %arrayidx20.6.8.5, align 4
  br label %for.inc.6.8.5

for.inc.6.8.5:                                    ; preds = %for.inc.5.8.5
  %arrayidx11.7.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.5, i32 0, i64 7
  %1761 = load i32* %arrayidx12.7.8.5, align 4
  %arrayidx15.7.8.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.5, i32 0, i64 8
  %1762 = load i32* %arrayidx16.7.8.5, align 4
  %mul.7.8.5 = mul nsw i32 %1761, %1762
  %arrayidx19.7.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.5, i32 0, i64 8
  %1763 = load i32* %arrayidx20.7.8.5, align 4
  %add.7.8.5 = add nsw i32 %1763, %mul.7.8.5
  store i32 %add.7.8.5, i32* %arrayidx20.7.8.5, align 4
  br label %for.inc.7.8.5

for.inc.7.8.5:                                    ; preds = %for.inc.6.8.5
  %arrayidx11.8.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.5, i32 0, i64 8
  %1764 = load i32* %arrayidx12.8.8.5, align 4
  %arrayidx15.8.8.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.5, i32 0, i64 8
  %1765 = load i32* %arrayidx16.8.8.5, align 4
  %mul.8.8.5 = mul nsw i32 %1764, %1765
  %arrayidx19.8.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.5, i32 0, i64 8
  %1766 = load i32* %arrayidx20.8.8.5, align 4
  %add.8.8.5 = add nsw i32 %1766, %mul.8.8.5
  store i32 %add.8.8.5, i32* %arrayidx20.8.8.5, align 4
  br label %for.inc.8.8.5

for.inc.8.8.5:                                    ; preds = %for.inc.7.8.5
  %arrayidx11.9.8.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.8.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.5, i32 0, i64 9
  %1767 = load i32* %arrayidx12.9.8.5, align 4
  %arrayidx15.9.8.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.5, i32 0, i64 8
  %1768 = load i32* %arrayidx16.9.8.5, align 4
  %mul.9.8.5 = mul nsw i32 %1767, %1768
  %arrayidx19.9.8.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.8.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.5, i32 0, i64 8
  %1769 = load i32* %arrayidx20.9.8.5, align 4
  %add.9.8.5 = add nsw i32 %1769, %mul.9.8.5
  store i32 %add.9.8.5, i32* %arrayidx20.9.8.5, align 4
  br label %for.inc.9.8.5

for.inc.9.8.5:                                    ; preds = %for.inc.8.8.5
  br label %for.inc21.8.5

for.inc21.8.5:                                    ; preds = %for.inc.9.8.5
  %arrayidx.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx5.9.5 = getelementptr inbounds [10 x i32]* %arrayidx.9.5, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.5, align 4
  br label %for.body8.9.5

for.body8.9.5:                                    ; preds = %for.inc21.8.5
  %arrayidx11.984.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.985.5 = getelementptr inbounds [10 x i32]* %arrayidx11.984.5, i32 0, i64 0
  %1770 = load i32* %arrayidx12.985.5, align 4
  %arrayidx16.986.5 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %1771 = load i32* %arrayidx16.986.5, align 4
  %mul.987.5 = mul nsw i32 %1770, %1771
  %arrayidx19.989.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.990.5 = getelementptr inbounds [10 x i32]* %arrayidx19.989.5, i32 0, i64 9
  %1772 = load i32* %arrayidx20.990.5, align 4
  %add.991.5 = add nsw i32 %1772, %mul.987.5
  store i32 %add.991.5, i32* %arrayidx20.990.5, align 4
  br label %for.inc.992.5

for.inc.992.5:                                    ; preds = %for.body8.9.5
  %arrayidx11.1.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.1.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.5, i32 0, i64 1
  %1773 = load i32* %arrayidx12.1.9.5, align 4
  %arrayidx15.1.9.5 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.5, i32 0, i64 9
  %1774 = load i32* %arrayidx16.1.9.5, align 4
  %mul.1.9.5 = mul nsw i32 %1773, %1774
  %arrayidx19.1.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.1.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.5, i32 0, i64 9
  %1775 = load i32* %arrayidx20.1.9.5, align 4
  %add.1.9.5 = add nsw i32 %1775, %mul.1.9.5
  store i32 %add.1.9.5, i32* %arrayidx20.1.9.5, align 4
  br label %for.inc.1.9.5

for.inc.1.9.5:                                    ; preds = %for.inc.992.5
  %arrayidx11.2.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.2.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.5, i32 0, i64 2
  %1776 = load i32* %arrayidx12.2.9.5, align 4
  %arrayidx15.2.9.5 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.5, i32 0, i64 9
  %1777 = load i32* %arrayidx16.2.9.5, align 4
  %mul.2.9.5 = mul nsw i32 %1776, %1777
  %arrayidx19.2.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.2.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.5, i32 0, i64 9
  %1778 = load i32* %arrayidx20.2.9.5, align 4
  %add.2.9.5 = add nsw i32 %1778, %mul.2.9.5
  store i32 %add.2.9.5, i32* %arrayidx20.2.9.5, align 4
  br label %for.inc.2.9.5

for.inc.2.9.5:                                    ; preds = %for.inc.1.9.5
  %arrayidx11.3.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.3.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.5, i32 0, i64 3
  %1779 = load i32* %arrayidx12.3.9.5, align 4
  %arrayidx15.3.9.5 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.5, i32 0, i64 9
  %1780 = load i32* %arrayidx16.3.9.5, align 4
  %mul.3.9.5 = mul nsw i32 %1779, %1780
  %arrayidx19.3.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.3.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.5, i32 0, i64 9
  %1781 = load i32* %arrayidx20.3.9.5, align 4
  %add.3.9.5 = add nsw i32 %1781, %mul.3.9.5
  store i32 %add.3.9.5, i32* %arrayidx20.3.9.5, align 4
  br label %for.inc.3.9.5

for.inc.3.9.5:                                    ; preds = %for.inc.2.9.5
  %arrayidx11.4.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.4.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.5, i32 0, i64 4
  %1782 = load i32* %arrayidx12.4.9.5, align 4
  %arrayidx15.4.9.5 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.5, i32 0, i64 9
  %1783 = load i32* %arrayidx16.4.9.5, align 4
  %mul.4.9.5 = mul nsw i32 %1782, %1783
  %arrayidx19.4.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.4.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.5, i32 0, i64 9
  %1784 = load i32* %arrayidx20.4.9.5, align 4
  %add.4.9.5 = add nsw i32 %1784, %mul.4.9.5
  store i32 %add.4.9.5, i32* %arrayidx20.4.9.5, align 4
  br label %for.inc.4.9.5

for.inc.4.9.5:                                    ; preds = %for.inc.3.9.5
  %arrayidx11.5.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.5.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.5, i32 0, i64 5
  %1785 = load i32* %arrayidx12.5.9.5, align 4
  %arrayidx15.5.9.5 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.5, i32 0, i64 9
  %1786 = load i32* %arrayidx16.5.9.5, align 4
  %mul.5.9.5 = mul nsw i32 %1785, %1786
  %arrayidx19.5.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.5.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.5, i32 0, i64 9
  %1787 = load i32* %arrayidx20.5.9.5, align 4
  %add.5.9.5 = add nsw i32 %1787, %mul.5.9.5
  store i32 %add.5.9.5, i32* %arrayidx20.5.9.5, align 4
  br label %for.inc.5.9.5

for.inc.5.9.5:                                    ; preds = %for.inc.4.9.5
  %arrayidx11.6.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.6.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.5, i32 0, i64 6
  %1788 = load i32* %arrayidx12.6.9.5, align 4
  %arrayidx15.6.9.5 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.5, i32 0, i64 9
  %1789 = load i32* %arrayidx16.6.9.5, align 4
  %mul.6.9.5 = mul nsw i32 %1788, %1789
  %arrayidx19.6.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.6.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.5, i32 0, i64 9
  %1790 = load i32* %arrayidx20.6.9.5, align 4
  %add.6.9.5 = add nsw i32 %1790, %mul.6.9.5
  store i32 %add.6.9.5, i32* %arrayidx20.6.9.5, align 4
  br label %for.inc.6.9.5

for.inc.6.9.5:                                    ; preds = %for.inc.5.9.5
  %arrayidx11.7.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.7.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.5, i32 0, i64 7
  %1791 = load i32* %arrayidx12.7.9.5, align 4
  %arrayidx15.7.9.5 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.5, i32 0, i64 9
  %1792 = load i32* %arrayidx16.7.9.5, align 4
  %mul.7.9.5 = mul nsw i32 %1791, %1792
  %arrayidx19.7.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.7.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.5, i32 0, i64 9
  %1793 = load i32* %arrayidx20.7.9.5, align 4
  %add.7.9.5 = add nsw i32 %1793, %mul.7.9.5
  store i32 %add.7.9.5, i32* %arrayidx20.7.9.5, align 4
  br label %for.inc.7.9.5

for.inc.7.9.5:                                    ; preds = %for.inc.6.9.5
  %arrayidx11.8.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.8.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.5, i32 0, i64 8
  %1794 = load i32* %arrayidx12.8.9.5, align 4
  %arrayidx15.8.9.5 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.5, i32 0, i64 9
  %1795 = load i32* %arrayidx16.8.9.5, align 4
  %mul.8.9.5 = mul nsw i32 %1794, %1795
  %arrayidx19.8.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.8.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.5, i32 0, i64 9
  %1796 = load i32* %arrayidx20.8.9.5, align 4
  %add.8.9.5 = add nsw i32 %1796, %mul.8.9.5
  store i32 %add.8.9.5, i32* %arrayidx20.8.9.5, align 4
  br label %for.inc.8.9.5

for.inc.8.9.5:                                    ; preds = %for.inc.7.9.5
  %arrayidx11.9.9.5 = getelementptr inbounds [10 x i32]* %a, i64 5
  %arrayidx12.9.9.5 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.5, i32 0, i64 9
  %1797 = load i32* %arrayidx12.9.9.5, align 4
  %arrayidx15.9.9.5 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.5 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.5, i32 0, i64 9
  %1798 = load i32* %arrayidx16.9.9.5, align 4
  %mul.9.9.5 = mul nsw i32 %1797, %1798
  %arrayidx19.9.9.5 = getelementptr inbounds [10 x i32]* %c, i64 5
  %arrayidx20.9.9.5 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.5, i32 0, i64 9
  %1799 = load i32* %arrayidx20.9.9.5, align 4
  %add.9.9.5 = add nsw i32 %1799, %mul.9.9.5
  store i32 %add.9.9.5, i32* %arrayidx20.9.9.5, align 4
  br label %for.inc.9.9.5

for.inc.9.9.5:                                    ; preds = %for.inc.8.9.5
  br label %for.inc21.9.5

for.inc21.9.5:                                    ; preds = %for.inc.9.9.5
  br label %for.inc24.5

for.inc24.5:                                      ; preds = %for.inc21.9.5
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.inc24.5
  %arrayidx.6559 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.6560 = getelementptr inbounds [10 x i32]* %arrayidx.6559, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.6560, align 4
  br label %for.body8.6568

for.body8.6568:                                   ; preds = %for.body3.6
  %arrayidx11.6561 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6562 = getelementptr inbounds [10 x i32]* %arrayidx11.6561, i32 0, i64 0
  %1800 = load i32* %arrayidx12.6562, align 4
  %arrayidx16.6563 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %1801 = load i32* %arrayidx16.6563, align 4
  %mul.6564 = mul nsw i32 %1800, %1801
  %arrayidx19.6565 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6566 = getelementptr inbounds [10 x i32]* %arrayidx19.6565, i32 0, i64 0
  %1802 = load i32* %arrayidx20.6566, align 4
  %add.6567 = add nsw i32 %1802, %mul.6564
  store i32 %add.6567, i32* %arrayidx20.6566, align 4
  br label %for.inc.6577

for.inc.6577:                                     ; preds = %for.body8.6568
  %arrayidx11.1.6569 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.6570 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6569, i32 0, i64 1
  %1803 = load i32* %arrayidx12.1.6570, align 4
  %arrayidx15.1.6571 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6572 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6571, i32 0, i64 0
  %1804 = load i32* %arrayidx16.1.6572, align 4
  %mul.1.6573 = mul nsw i32 %1803, %1804
  %arrayidx19.1.6574 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.6575 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6574, i32 0, i64 0
  %1805 = load i32* %arrayidx20.1.6575, align 4
  %add.1.6576 = add nsw i32 %1805, %mul.1.6573
  store i32 %add.1.6576, i32* %arrayidx20.1.6575, align 4
  br label %for.inc.1.6586

for.inc.1.6586:                                   ; preds = %for.inc.6577
  %arrayidx11.2.6578 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.6579 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6578, i32 0, i64 2
  %1806 = load i32* %arrayidx12.2.6579, align 4
  %arrayidx15.2.6580 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6581 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6580, i32 0, i64 0
  %1807 = load i32* %arrayidx16.2.6581, align 4
  %mul.2.6582 = mul nsw i32 %1806, %1807
  %arrayidx19.2.6583 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.6584 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6583, i32 0, i64 0
  %1808 = load i32* %arrayidx20.2.6584, align 4
  %add.2.6585 = add nsw i32 %1808, %mul.2.6582
  store i32 %add.2.6585, i32* %arrayidx20.2.6584, align 4
  br label %for.inc.2.6595

for.inc.2.6595:                                   ; preds = %for.inc.1.6586
  %arrayidx11.3.6587 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.6588 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6587, i32 0, i64 3
  %1809 = load i32* %arrayidx12.3.6588, align 4
  %arrayidx15.3.6589 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6590 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6589, i32 0, i64 0
  %1810 = load i32* %arrayidx16.3.6590, align 4
  %mul.3.6591 = mul nsw i32 %1809, %1810
  %arrayidx19.3.6592 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.6593 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6592, i32 0, i64 0
  %1811 = load i32* %arrayidx20.3.6593, align 4
  %add.3.6594 = add nsw i32 %1811, %mul.3.6591
  store i32 %add.3.6594, i32* %arrayidx20.3.6593, align 4
  br label %for.inc.3.6604

for.inc.3.6604:                                   ; preds = %for.inc.2.6595
  %arrayidx11.4.6596 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.6597 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6596, i32 0, i64 4
  %1812 = load i32* %arrayidx12.4.6597, align 4
  %arrayidx15.4.6598 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6599 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6598, i32 0, i64 0
  %1813 = load i32* %arrayidx16.4.6599, align 4
  %mul.4.6600 = mul nsw i32 %1812, %1813
  %arrayidx19.4.6601 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.6602 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6601, i32 0, i64 0
  %1814 = load i32* %arrayidx20.4.6602, align 4
  %add.4.6603 = add nsw i32 %1814, %mul.4.6600
  store i32 %add.4.6603, i32* %arrayidx20.4.6602, align 4
  br label %for.inc.4.6613

for.inc.4.6613:                                   ; preds = %for.inc.3.6604
  %arrayidx11.5.6605 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.6606 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6605, i32 0, i64 5
  %1815 = load i32* %arrayidx12.5.6606, align 4
  %arrayidx15.5.6607 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6608 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6607, i32 0, i64 0
  %1816 = load i32* %arrayidx16.5.6608, align 4
  %mul.5.6609 = mul nsw i32 %1815, %1816
  %arrayidx19.5.6610 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.6611 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6610, i32 0, i64 0
  %1817 = load i32* %arrayidx20.5.6611, align 4
  %add.5.6612 = add nsw i32 %1817, %mul.5.6609
  store i32 %add.5.6612, i32* %arrayidx20.5.6611, align 4
  br label %for.inc.5.6622

for.inc.5.6622:                                   ; preds = %for.inc.4.6613
  %arrayidx11.6.6614 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.6615 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6614, i32 0, i64 6
  %1818 = load i32* %arrayidx12.6.6615, align 4
  %arrayidx15.6.6616 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6617 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6616, i32 0, i64 0
  %1819 = load i32* %arrayidx16.6.6617, align 4
  %mul.6.6618 = mul nsw i32 %1818, %1819
  %arrayidx19.6.6619 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.6620 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6619, i32 0, i64 0
  %1820 = load i32* %arrayidx20.6.6620, align 4
  %add.6.6621 = add nsw i32 %1820, %mul.6.6618
  store i32 %add.6.6621, i32* %arrayidx20.6.6620, align 4
  br label %for.inc.6.6631

for.inc.6.6631:                                   ; preds = %for.inc.5.6622
  %arrayidx11.7.6623 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.6624 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6623, i32 0, i64 7
  %1821 = load i32* %arrayidx12.7.6624, align 4
  %arrayidx15.7.6625 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6626 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6625, i32 0, i64 0
  %1822 = load i32* %arrayidx16.7.6626, align 4
  %mul.7.6627 = mul nsw i32 %1821, %1822
  %arrayidx19.7.6628 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.6629 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6628, i32 0, i64 0
  %1823 = load i32* %arrayidx20.7.6629, align 4
  %add.7.6630 = add nsw i32 %1823, %mul.7.6627
  store i32 %add.7.6630, i32* %arrayidx20.7.6629, align 4
  br label %for.inc.7.6640

for.inc.7.6640:                                   ; preds = %for.inc.6.6631
  %arrayidx11.8.6632 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.6633 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6632, i32 0, i64 8
  %1824 = load i32* %arrayidx12.8.6633, align 4
  %arrayidx15.8.6634 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6635 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6634, i32 0, i64 0
  %1825 = load i32* %arrayidx16.8.6635, align 4
  %mul.8.6636 = mul nsw i32 %1824, %1825
  %arrayidx19.8.6637 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.6638 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6637, i32 0, i64 0
  %1826 = load i32* %arrayidx20.8.6638, align 4
  %add.8.6639 = add nsw i32 %1826, %mul.8.6636
  store i32 %add.8.6639, i32* %arrayidx20.8.6638, align 4
  br label %for.inc.8.6649

for.inc.8.6649:                                   ; preds = %for.inc.7.6640
  %arrayidx11.9.6641 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.6642 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6641, i32 0, i64 9
  %1827 = load i32* %arrayidx12.9.6642, align 4
  %arrayidx15.9.6643 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6644 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6643, i32 0, i64 0
  %1828 = load i32* %arrayidx16.9.6644, align 4
  %mul.9.6645 = mul nsw i32 %1827, %1828
  %arrayidx19.9.6646 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.6647 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6646, i32 0, i64 0
  %1829 = load i32* %arrayidx20.9.6647, align 4
  %add.9.6648 = add nsw i32 %1829, %mul.9.6645
  store i32 %add.9.6648, i32* %arrayidx20.9.6647, align 4
  br label %for.inc.9.6650

for.inc.9.6650:                                   ; preds = %for.inc.8.6649
  br label %for.inc21.6651

for.inc21.6651:                                   ; preds = %for.inc.9.6650
  %arrayidx.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.1.6 = getelementptr inbounds [10 x i32]* %arrayidx.1.6, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.6, align 4
  br label %for.body8.1.6

for.body8.1.6:                                    ; preds = %for.inc21.6651
  %arrayidx11.14.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.15.6 = getelementptr inbounds [10 x i32]* %arrayidx11.14.6, i32 0, i64 0
  %1830 = load i32* %arrayidx12.15.6, align 4
  %arrayidx16.16.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %1831 = load i32* %arrayidx16.16.6, align 4
  %mul.17.6 = mul nsw i32 %1830, %1831
  %arrayidx19.19.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.110.6 = getelementptr inbounds [10 x i32]* %arrayidx19.19.6, i32 0, i64 1
  %1832 = load i32* %arrayidx20.110.6, align 4
  %add.111.6 = add nsw i32 %1832, %mul.17.6
  store i32 %add.111.6, i32* %arrayidx20.110.6, align 4
  br label %for.inc.112.6

for.inc.112.6:                                    ; preds = %for.body8.1.6
  %arrayidx11.1.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.6, i32 0, i64 1
  %1833 = load i32* %arrayidx12.1.1.6, align 4
  %arrayidx15.1.1.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.6, i32 0, i64 1
  %1834 = load i32* %arrayidx16.1.1.6, align 4
  %mul.1.1.6 = mul nsw i32 %1833, %1834
  %arrayidx19.1.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.6, i32 0, i64 1
  %1835 = load i32* %arrayidx20.1.1.6, align 4
  %add.1.1.6 = add nsw i32 %1835, %mul.1.1.6
  store i32 %add.1.1.6, i32* %arrayidx20.1.1.6, align 4
  br label %for.inc.1.1.6

for.inc.1.1.6:                                    ; preds = %for.inc.112.6
  %arrayidx11.2.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.6, i32 0, i64 2
  %1836 = load i32* %arrayidx12.2.1.6, align 4
  %arrayidx15.2.1.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.6, i32 0, i64 1
  %1837 = load i32* %arrayidx16.2.1.6, align 4
  %mul.2.1.6 = mul nsw i32 %1836, %1837
  %arrayidx19.2.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.6, i32 0, i64 1
  %1838 = load i32* %arrayidx20.2.1.6, align 4
  %add.2.1.6 = add nsw i32 %1838, %mul.2.1.6
  store i32 %add.2.1.6, i32* %arrayidx20.2.1.6, align 4
  br label %for.inc.2.1.6

for.inc.2.1.6:                                    ; preds = %for.inc.1.1.6
  %arrayidx11.3.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.6, i32 0, i64 3
  %1839 = load i32* %arrayidx12.3.1.6, align 4
  %arrayidx15.3.1.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.6, i32 0, i64 1
  %1840 = load i32* %arrayidx16.3.1.6, align 4
  %mul.3.1.6 = mul nsw i32 %1839, %1840
  %arrayidx19.3.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.6, i32 0, i64 1
  %1841 = load i32* %arrayidx20.3.1.6, align 4
  %add.3.1.6 = add nsw i32 %1841, %mul.3.1.6
  store i32 %add.3.1.6, i32* %arrayidx20.3.1.6, align 4
  br label %for.inc.3.1.6

for.inc.3.1.6:                                    ; preds = %for.inc.2.1.6
  %arrayidx11.4.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.6, i32 0, i64 4
  %1842 = load i32* %arrayidx12.4.1.6, align 4
  %arrayidx15.4.1.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.6, i32 0, i64 1
  %1843 = load i32* %arrayidx16.4.1.6, align 4
  %mul.4.1.6 = mul nsw i32 %1842, %1843
  %arrayidx19.4.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.6, i32 0, i64 1
  %1844 = load i32* %arrayidx20.4.1.6, align 4
  %add.4.1.6 = add nsw i32 %1844, %mul.4.1.6
  store i32 %add.4.1.6, i32* %arrayidx20.4.1.6, align 4
  br label %for.inc.4.1.6

for.inc.4.1.6:                                    ; preds = %for.inc.3.1.6
  %arrayidx11.5.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.6, i32 0, i64 5
  %1845 = load i32* %arrayidx12.5.1.6, align 4
  %arrayidx15.5.1.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.6, i32 0, i64 1
  %1846 = load i32* %arrayidx16.5.1.6, align 4
  %mul.5.1.6 = mul nsw i32 %1845, %1846
  %arrayidx19.5.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.6, i32 0, i64 1
  %1847 = load i32* %arrayidx20.5.1.6, align 4
  %add.5.1.6 = add nsw i32 %1847, %mul.5.1.6
  store i32 %add.5.1.6, i32* %arrayidx20.5.1.6, align 4
  br label %for.inc.5.1.6

for.inc.5.1.6:                                    ; preds = %for.inc.4.1.6
  %arrayidx11.6.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.6, i32 0, i64 6
  %1848 = load i32* %arrayidx12.6.1.6, align 4
  %arrayidx15.6.1.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.6, i32 0, i64 1
  %1849 = load i32* %arrayidx16.6.1.6, align 4
  %mul.6.1.6 = mul nsw i32 %1848, %1849
  %arrayidx19.6.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.6, i32 0, i64 1
  %1850 = load i32* %arrayidx20.6.1.6, align 4
  %add.6.1.6 = add nsw i32 %1850, %mul.6.1.6
  store i32 %add.6.1.6, i32* %arrayidx20.6.1.6, align 4
  br label %for.inc.6.1.6

for.inc.6.1.6:                                    ; preds = %for.inc.5.1.6
  %arrayidx11.7.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.6, i32 0, i64 7
  %1851 = load i32* %arrayidx12.7.1.6, align 4
  %arrayidx15.7.1.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.6, i32 0, i64 1
  %1852 = load i32* %arrayidx16.7.1.6, align 4
  %mul.7.1.6 = mul nsw i32 %1851, %1852
  %arrayidx19.7.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.6, i32 0, i64 1
  %1853 = load i32* %arrayidx20.7.1.6, align 4
  %add.7.1.6 = add nsw i32 %1853, %mul.7.1.6
  store i32 %add.7.1.6, i32* %arrayidx20.7.1.6, align 4
  br label %for.inc.7.1.6

for.inc.7.1.6:                                    ; preds = %for.inc.6.1.6
  %arrayidx11.8.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.6, i32 0, i64 8
  %1854 = load i32* %arrayidx12.8.1.6, align 4
  %arrayidx15.8.1.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.6, i32 0, i64 1
  %1855 = load i32* %arrayidx16.8.1.6, align 4
  %mul.8.1.6 = mul nsw i32 %1854, %1855
  %arrayidx19.8.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.6, i32 0, i64 1
  %1856 = load i32* %arrayidx20.8.1.6, align 4
  %add.8.1.6 = add nsw i32 %1856, %mul.8.1.6
  store i32 %add.8.1.6, i32* %arrayidx20.8.1.6, align 4
  br label %for.inc.8.1.6

for.inc.8.1.6:                                    ; preds = %for.inc.7.1.6
  %arrayidx11.9.1.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.1.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.6, i32 0, i64 9
  %1857 = load i32* %arrayidx12.9.1.6, align 4
  %arrayidx15.9.1.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.6, i32 0, i64 1
  %1858 = load i32* %arrayidx16.9.1.6, align 4
  %mul.9.1.6 = mul nsw i32 %1857, %1858
  %arrayidx19.9.1.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.1.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.6, i32 0, i64 1
  %1859 = load i32* %arrayidx20.9.1.6, align 4
  %add.9.1.6 = add nsw i32 %1859, %mul.9.1.6
  store i32 %add.9.1.6, i32* %arrayidx20.9.1.6, align 4
  br label %for.inc.9.1.6

for.inc.9.1.6:                                    ; preds = %for.inc.8.1.6
  br label %for.inc21.1.6

for.inc21.1.6:                                    ; preds = %for.inc.9.1.6
  %arrayidx.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.2.6 = getelementptr inbounds [10 x i32]* %arrayidx.2.6, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.6, align 4
  br label %for.body8.2.6

for.body8.2.6:                                    ; preds = %for.inc21.1.6
  %arrayidx11.214.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.215.6 = getelementptr inbounds [10 x i32]* %arrayidx11.214.6, i32 0, i64 0
  %1860 = load i32* %arrayidx12.215.6, align 4
  %arrayidx16.216.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %1861 = load i32* %arrayidx16.216.6, align 4
  %mul.217.6 = mul nsw i32 %1860, %1861
  %arrayidx19.219.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.220.6 = getelementptr inbounds [10 x i32]* %arrayidx19.219.6, i32 0, i64 2
  %1862 = load i32* %arrayidx20.220.6, align 4
  %add.221.6 = add nsw i32 %1862, %mul.217.6
  store i32 %add.221.6, i32* %arrayidx20.220.6, align 4
  br label %for.inc.222.6

for.inc.222.6:                                    ; preds = %for.body8.2.6
  %arrayidx11.1.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.6, i32 0, i64 1
  %1863 = load i32* %arrayidx12.1.2.6, align 4
  %arrayidx15.1.2.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.6, i32 0, i64 2
  %1864 = load i32* %arrayidx16.1.2.6, align 4
  %mul.1.2.6 = mul nsw i32 %1863, %1864
  %arrayidx19.1.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.6, i32 0, i64 2
  %1865 = load i32* %arrayidx20.1.2.6, align 4
  %add.1.2.6 = add nsw i32 %1865, %mul.1.2.6
  store i32 %add.1.2.6, i32* %arrayidx20.1.2.6, align 4
  br label %for.inc.1.2.6

for.inc.1.2.6:                                    ; preds = %for.inc.222.6
  %arrayidx11.2.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.6, i32 0, i64 2
  %1866 = load i32* %arrayidx12.2.2.6, align 4
  %arrayidx15.2.2.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.6, i32 0, i64 2
  %1867 = load i32* %arrayidx16.2.2.6, align 4
  %mul.2.2.6 = mul nsw i32 %1866, %1867
  %arrayidx19.2.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.6, i32 0, i64 2
  %1868 = load i32* %arrayidx20.2.2.6, align 4
  %add.2.2.6 = add nsw i32 %1868, %mul.2.2.6
  store i32 %add.2.2.6, i32* %arrayidx20.2.2.6, align 4
  br label %for.inc.2.2.6

for.inc.2.2.6:                                    ; preds = %for.inc.1.2.6
  %arrayidx11.3.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.6, i32 0, i64 3
  %1869 = load i32* %arrayidx12.3.2.6, align 4
  %arrayidx15.3.2.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.6, i32 0, i64 2
  %1870 = load i32* %arrayidx16.3.2.6, align 4
  %mul.3.2.6 = mul nsw i32 %1869, %1870
  %arrayidx19.3.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.6, i32 0, i64 2
  %1871 = load i32* %arrayidx20.3.2.6, align 4
  %add.3.2.6 = add nsw i32 %1871, %mul.3.2.6
  store i32 %add.3.2.6, i32* %arrayidx20.3.2.6, align 4
  br label %for.inc.3.2.6

for.inc.3.2.6:                                    ; preds = %for.inc.2.2.6
  %arrayidx11.4.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.6, i32 0, i64 4
  %1872 = load i32* %arrayidx12.4.2.6, align 4
  %arrayidx15.4.2.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.6, i32 0, i64 2
  %1873 = load i32* %arrayidx16.4.2.6, align 4
  %mul.4.2.6 = mul nsw i32 %1872, %1873
  %arrayidx19.4.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.6, i32 0, i64 2
  %1874 = load i32* %arrayidx20.4.2.6, align 4
  %add.4.2.6 = add nsw i32 %1874, %mul.4.2.6
  store i32 %add.4.2.6, i32* %arrayidx20.4.2.6, align 4
  br label %for.inc.4.2.6

for.inc.4.2.6:                                    ; preds = %for.inc.3.2.6
  %arrayidx11.5.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.6, i32 0, i64 5
  %1875 = load i32* %arrayidx12.5.2.6, align 4
  %arrayidx15.5.2.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.6, i32 0, i64 2
  %1876 = load i32* %arrayidx16.5.2.6, align 4
  %mul.5.2.6 = mul nsw i32 %1875, %1876
  %arrayidx19.5.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.6, i32 0, i64 2
  %1877 = load i32* %arrayidx20.5.2.6, align 4
  %add.5.2.6 = add nsw i32 %1877, %mul.5.2.6
  store i32 %add.5.2.6, i32* %arrayidx20.5.2.6, align 4
  br label %for.inc.5.2.6

for.inc.5.2.6:                                    ; preds = %for.inc.4.2.6
  %arrayidx11.6.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.6, i32 0, i64 6
  %1878 = load i32* %arrayidx12.6.2.6, align 4
  %arrayidx15.6.2.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.6, i32 0, i64 2
  %1879 = load i32* %arrayidx16.6.2.6, align 4
  %mul.6.2.6 = mul nsw i32 %1878, %1879
  %arrayidx19.6.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.6, i32 0, i64 2
  %1880 = load i32* %arrayidx20.6.2.6, align 4
  %add.6.2.6 = add nsw i32 %1880, %mul.6.2.6
  store i32 %add.6.2.6, i32* %arrayidx20.6.2.6, align 4
  br label %for.inc.6.2.6

for.inc.6.2.6:                                    ; preds = %for.inc.5.2.6
  %arrayidx11.7.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.6, i32 0, i64 7
  %1881 = load i32* %arrayidx12.7.2.6, align 4
  %arrayidx15.7.2.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.6, i32 0, i64 2
  %1882 = load i32* %arrayidx16.7.2.6, align 4
  %mul.7.2.6 = mul nsw i32 %1881, %1882
  %arrayidx19.7.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.6, i32 0, i64 2
  %1883 = load i32* %arrayidx20.7.2.6, align 4
  %add.7.2.6 = add nsw i32 %1883, %mul.7.2.6
  store i32 %add.7.2.6, i32* %arrayidx20.7.2.6, align 4
  br label %for.inc.7.2.6

for.inc.7.2.6:                                    ; preds = %for.inc.6.2.6
  %arrayidx11.8.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.6, i32 0, i64 8
  %1884 = load i32* %arrayidx12.8.2.6, align 4
  %arrayidx15.8.2.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.6, i32 0, i64 2
  %1885 = load i32* %arrayidx16.8.2.6, align 4
  %mul.8.2.6 = mul nsw i32 %1884, %1885
  %arrayidx19.8.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.6, i32 0, i64 2
  %1886 = load i32* %arrayidx20.8.2.6, align 4
  %add.8.2.6 = add nsw i32 %1886, %mul.8.2.6
  store i32 %add.8.2.6, i32* %arrayidx20.8.2.6, align 4
  br label %for.inc.8.2.6

for.inc.8.2.6:                                    ; preds = %for.inc.7.2.6
  %arrayidx11.9.2.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.2.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.6, i32 0, i64 9
  %1887 = load i32* %arrayidx12.9.2.6, align 4
  %arrayidx15.9.2.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.6, i32 0, i64 2
  %1888 = load i32* %arrayidx16.9.2.6, align 4
  %mul.9.2.6 = mul nsw i32 %1887, %1888
  %arrayidx19.9.2.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.2.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.6, i32 0, i64 2
  %1889 = load i32* %arrayidx20.9.2.6, align 4
  %add.9.2.6 = add nsw i32 %1889, %mul.9.2.6
  store i32 %add.9.2.6, i32* %arrayidx20.9.2.6, align 4
  br label %for.inc.9.2.6

for.inc.9.2.6:                                    ; preds = %for.inc.8.2.6
  br label %for.inc21.2.6

for.inc21.2.6:                                    ; preds = %for.inc.9.2.6
  %arrayidx.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.3.6 = getelementptr inbounds [10 x i32]* %arrayidx.3.6, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.6, align 4
  br label %for.body8.3.6

for.body8.3.6:                                    ; preds = %for.inc21.2.6
  %arrayidx11.324.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.325.6 = getelementptr inbounds [10 x i32]* %arrayidx11.324.6, i32 0, i64 0
  %1890 = load i32* %arrayidx12.325.6, align 4
  %arrayidx16.326.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %1891 = load i32* %arrayidx16.326.6, align 4
  %mul.327.6 = mul nsw i32 %1890, %1891
  %arrayidx19.329.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.330.6 = getelementptr inbounds [10 x i32]* %arrayidx19.329.6, i32 0, i64 3
  %1892 = load i32* %arrayidx20.330.6, align 4
  %add.331.6 = add nsw i32 %1892, %mul.327.6
  store i32 %add.331.6, i32* %arrayidx20.330.6, align 4
  br label %for.inc.332.6

for.inc.332.6:                                    ; preds = %for.body8.3.6
  %arrayidx11.1.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.6, i32 0, i64 1
  %1893 = load i32* %arrayidx12.1.3.6, align 4
  %arrayidx15.1.3.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.6, i32 0, i64 3
  %1894 = load i32* %arrayidx16.1.3.6, align 4
  %mul.1.3.6 = mul nsw i32 %1893, %1894
  %arrayidx19.1.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.6, i32 0, i64 3
  %1895 = load i32* %arrayidx20.1.3.6, align 4
  %add.1.3.6 = add nsw i32 %1895, %mul.1.3.6
  store i32 %add.1.3.6, i32* %arrayidx20.1.3.6, align 4
  br label %for.inc.1.3.6

for.inc.1.3.6:                                    ; preds = %for.inc.332.6
  %arrayidx11.2.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.6, i32 0, i64 2
  %1896 = load i32* %arrayidx12.2.3.6, align 4
  %arrayidx15.2.3.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.6, i32 0, i64 3
  %1897 = load i32* %arrayidx16.2.3.6, align 4
  %mul.2.3.6 = mul nsw i32 %1896, %1897
  %arrayidx19.2.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.6, i32 0, i64 3
  %1898 = load i32* %arrayidx20.2.3.6, align 4
  %add.2.3.6 = add nsw i32 %1898, %mul.2.3.6
  store i32 %add.2.3.6, i32* %arrayidx20.2.3.6, align 4
  br label %for.inc.2.3.6

for.inc.2.3.6:                                    ; preds = %for.inc.1.3.6
  %arrayidx11.3.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.6, i32 0, i64 3
  %1899 = load i32* %arrayidx12.3.3.6, align 4
  %arrayidx15.3.3.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.6, i32 0, i64 3
  %1900 = load i32* %arrayidx16.3.3.6, align 4
  %mul.3.3.6 = mul nsw i32 %1899, %1900
  %arrayidx19.3.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.6, i32 0, i64 3
  %1901 = load i32* %arrayidx20.3.3.6, align 4
  %add.3.3.6 = add nsw i32 %1901, %mul.3.3.6
  store i32 %add.3.3.6, i32* %arrayidx20.3.3.6, align 4
  br label %for.inc.3.3.6

for.inc.3.3.6:                                    ; preds = %for.inc.2.3.6
  %arrayidx11.4.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.6, i32 0, i64 4
  %1902 = load i32* %arrayidx12.4.3.6, align 4
  %arrayidx15.4.3.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.6, i32 0, i64 3
  %1903 = load i32* %arrayidx16.4.3.6, align 4
  %mul.4.3.6 = mul nsw i32 %1902, %1903
  %arrayidx19.4.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.6, i32 0, i64 3
  %1904 = load i32* %arrayidx20.4.3.6, align 4
  %add.4.3.6 = add nsw i32 %1904, %mul.4.3.6
  store i32 %add.4.3.6, i32* %arrayidx20.4.3.6, align 4
  br label %for.inc.4.3.6

for.inc.4.3.6:                                    ; preds = %for.inc.3.3.6
  %arrayidx11.5.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.6, i32 0, i64 5
  %1905 = load i32* %arrayidx12.5.3.6, align 4
  %arrayidx15.5.3.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.6, i32 0, i64 3
  %1906 = load i32* %arrayidx16.5.3.6, align 4
  %mul.5.3.6 = mul nsw i32 %1905, %1906
  %arrayidx19.5.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.6, i32 0, i64 3
  %1907 = load i32* %arrayidx20.5.3.6, align 4
  %add.5.3.6 = add nsw i32 %1907, %mul.5.3.6
  store i32 %add.5.3.6, i32* %arrayidx20.5.3.6, align 4
  br label %for.inc.5.3.6

for.inc.5.3.6:                                    ; preds = %for.inc.4.3.6
  %arrayidx11.6.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.6, i32 0, i64 6
  %1908 = load i32* %arrayidx12.6.3.6, align 4
  %arrayidx15.6.3.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.6, i32 0, i64 3
  %1909 = load i32* %arrayidx16.6.3.6, align 4
  %mul.6.3.6 = mul nsw i32 %1908, %1909
  %arrayidx19.6.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.6, i32 0, i64 3
  %1910 = load i32* %arrayidx20.6.3.6, align 4
  %add.6.3.6 = add nsw i32 %1910, %mul.6.3.6
  store i32 %add.6.3.6, i32* %arrayidx20.6.3.6, align 4
  br label %for.inc.6.3.6

for.inc.6.3.6:                                    ; preds = %for.inc.5.3.6
  %arrayidx11.7.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.6, i32 0, i64 7
  %1911 = load i32* %arrayidx12.7.3.6, align 4
  %arrayidx15.7.3.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.6, i32 0, i64 3
  %1912 = load i32* %arrayidx16.7.3.6, align 4
  %mul.7.3.6 = mul nsw i32 %1911, %1912
  %arrayidx19.7.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.6, i32 0, i64 3
  %1913 = load i32* %arrayidx20.7.3.6, align 4
  %add.7.3.6 = add nsw i32 %1913, %mul.7.3.6
  store i32 %add.7.3.6, i32* %arrayidx20.7.3.6, align 4
  br label %for.inc.7.3.6

for.inc.7.3.6:                                    ; preds = %for.inc.6.3.6
  %arrayidx11.8.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.6, i32 0, i64 8
  %1914 = load i32* %arrayidx12.8.3.6, align 4
  %arrayidx15.8.3.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.6, i32 0, i64 3
  %1915 = load i32* %arrayidx16.8.3.6, align 4
  %mul.8.3.6 = mul nsw i32 %1914, %1915
  %arrayidx19.8.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.6, i32 0, i64 3
  %1916 = load i32* %arrayidx20.8.3.6, align 4
  %add.8.3.6 = add nsw i32 %1916, %mul.8.3.6
  store i32 %add.8.3.6, i32* %arrayidx20.8.3.6, align 4
  br label %for.inc.8.3.6

for.inc.8.3.6:                                    ; preds = %for.inc.7.3.6
  %arrayidx11.9.3.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.3.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.6, i32 0, i64 9
  %1917 = load i32* %arrayidx12.9.3.6, align 4
  %arrayidx15.9.3.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.6, i32 0, i64 3
  %1918 = load i32* %arrayidx16.9.3.6, align 4
  %mul.9.3.6 = mul nsw i32 %1917, %1918
  %arrayidx19.9.3.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.3.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.6, i32 0, i64 3
  %1919 = load i32* %arrayidx20.9.3.6, align 4
  %add.9.3.6 = add nsw i32 %1919, %mul.9.3.6
  store i32 %add.9.3.6, i32* %arrayidx20.9.3.6, align 4
  br label %for.inc.9.3.6

for.inc.9.3.6:                                    ; preds = %for.inc.8.3.6
  br label %for.inc21.3.6

for.inc21.3.6:                                    ; preds = %for.inc.9.3.6
  %arrayidx.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.4.6 = getelementptr inbounds [10 x i32]* %arrayidx.4.6, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.6, align 4
  br label %for.body8.4.6

for.body8.4.6:                                    ; preds = %for.inc21.3.6
  %arrayidx11.434.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.435.6 = getelementptr inbounds [10 x i32]* %arrayidx11.434.6, i32 0, i64 0
  %1920 = load i32* %arrayidx12.435.6, align 4
  %arrayidx16.436.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %1921 = load i32* %arrayidx16.436.6, align 4
  %mul.437.6 = mul nsw i32 %1920, %1921
  %arrayidx19.439.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.440.6 = getelementptr inbounds [10 x i32]* %arrayidx19.439.6, i32 0, i64 4
  %1922 = load i32* %arrayidx20.440.6, align 4
  %add.441.6 = add nsw i32 %1922, %mul.437.6
  store i32 %add.441.6, i32* %arrayidx20.440.6, align 4
  br label %for.inc.442.6

for.inc.442.6:                                    ; preds = %for.body8.4.6
  %arrayidx11.1.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.6, i32 0, i64 1
  %1923 = load i32* %arrayidx12.1.4.6, align 4
  %arrayidx15.1.4.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.6, i32 0, i64 4
  %1924 = load i32* %arrayidx16.1.4.6, align 4
  %mul.1.4.6 = mul nsw i32 %1923, %1924
  %arrayidx19.1.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.6, i32 0, i64 4
  %1925 = load i32* %arrayidx20.1.4.6, align 4
  %add.1.4.6 = add nsw i32 %1925, %mul.1.4.6
  store i32 %add.1.4.6, i32* %arrayidx20.1.4.6, align 4
  br label %for.inc.1.4.6

for.inc.1.4.6:                                    ; preds = %for.inc.442.6
  %arrayidx11.2.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.6, i32 0, i64 2
  %1926 = load i32* %arrayidx12.2.4.6, align 4
  %arrayidx15.2.4.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.6, i32 0, i64 4
  %1927 = load i32* %arrayidx16.2.4.6, align 4
  %mul.2.4.6 = mul nsw i32 %1926, %1927
  %arrayidx19.2.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.6, i32 0, i64 4
  %1928 = load i32* %arrayidx20.2.4.6, align 4
  %add.2.4.6 = add nsw i32 %1928, %mul.2.4.6
  store i32 %add.2.4.6, i32* %arrayidx20.2.4.6, align 4
  br label %for.inc.2.4.6

for.inc.2.4.6:                                    ; preds = %for.inc.1.4.6
  %arrayidx11.3.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.6, i32 0, i64 3
  %1929 = load i32* %arrayidx12.3.4.6, align 4
  %arrayidx15.3.4.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.6, i32 0, i64 4
  %1930 = load i32* %arrayidx16.3.4.6, align 4
  %mul.3.4.6 = mul nsw i32 %1929, %1930
  %arrayidx19.3.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.6, i32 0, i64 4
  %1931 = load i32* %arrayidx20.3.4.6, align 4
  %add.3.4.6 = add nsw i32 %1931, %mul.3.4.6
  store i32 %add.3.4.6, i32* %arrayidx20.3.4.6, align 4
  br label %for.inc.3.4.6

for.inc.3.4.6:                                    ; preds = %for.inc.2.4.6
  %arrayidx11.4.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.6, i32 0, i64 4
  %1932 = load i32* %arrayidx12.4.4.6, align 4
  %arrayidx15.4.4.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.6, i32 0, i64 4
  %1933 = load i32* %arrayidx16.4.4.6, align 4
  %mul.4.4.6 = mul nsw i32 %1932, %1933
  %arrayidx19.4.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.6, i32 0, i64 4
  %1934 = load i32* %arrayidx20.4.4.6, align 4
  %add.4.4.6 = add nsw i32 %1934, %mul.4.4.6
  store i32 %add.4.4.6, i32* %arrayidx20.4.4.6, align 4
  br label %for.inc.4.4.6

for.inc.4.4.6:                                    ; preds = %for.inc.3.4.6
  %arrayidx11.5.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.6, i32 0, i64 5
  %1935 = load i32* %arrayidx12.5.4.6, align 4
  %arrayidx15.5.4.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.6, i32 0, i64 4
  %1936 = load i32* %arrayidx16.5.4.6, align 4
  %mul.5.4.6 = mul nsw i32 %1935, %1936
  %arrayidx19.5.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.6, i32 0, i64 4
  %1937 = load i32* %arrayidx20.5.4.6, align 4
  %add.5.4.6 = add nsw i32 %1937, %mul.5.4.6
  store i32 %add.5.4.6, i32* %arrayidx20.5.4.6, align 4
  br label %for.inc.5.4.6

for.inc.5.4.6:                                    ; preds = %for.inc.4.4.6
  %arrayidx11.6.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.6, i32 0, i64 6
  %1938 = load i32* %arrayidx12.6.4.6, align 4
  %arrayidx15.6.4.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.6, i32 0, i64 4
  %1939 = load i32* %arrayidx16.6.4.6, align 4
  %mul.6.4.6 = mul nsw i32 %1938, %1939
  %arrayidx19.6.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.6, i32 0, i64 4
  %1940 = load i32* %arrayidx20.6.4.6, align 4
  %add.6.4.6 = add nsw i32 %1940, %mul.6.4.6
  store i32 %add.6.4.6, i32* %arrayidx20.6.4.6, align 4
  br label %for.inc.6.4.6

for.inc.6.4.6:                                    ; preds = %for.inc.5.4.6
  %arrayidx11.7.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.6, i32 0, i64 7
  %1941 = load i32* %arrayidx12.7.4.6, align 4
  %arrayidx15.7.4.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.6, i32 0, i64 4
  %1942 = load i32* %arrayidx16.7.4.6, align 4
  %mul.7.4.6 = mul nsw i32 %1941, %1942
  %arrayidx19.7.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.6, i32 0, i64 4
  %1943 = load i32* %arrayidx20.7.4.6, align 4
  %add.7.4.6 = add nsw i32 %1943, %mul.7.4.6
  store i32 %add.7.4.6, i32* %arrayidx20.7.4.6, align 4
  br label %for.inc.7.4.6

for.inc.7.4.6:                                    ; preds = %for.inc.6.4.6
  %arrayidx11.8.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.6, i32 0, i64 8
  %1944 = load i32* %arrayidx12.8.4.6, align 4
  %arrayidx15.8.4.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.6, i32 0, i64 4
  %1945 = load i32* %arrayidx16.8.4.6, align 4
  %mul.8.4.6 = mul nsw i32 %1944, %1945
  %arrayidx19.8.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.6, i32 0, i64 4
  %1946 = load i32* %arrayidx20.8.4.6, align 4
  %add.8.4.6 = add nsw i32 %1946, %mul.8.4.6
  store i32 %add.8.4.6, i32* %arrayidx20.8.4.6, align 4
  br label %for.inc.8.4.6

for.inc.8.4.6:                                    ; preds = %for.inc.7.4.6
  %arrayidx11.9.4.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.4.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.6, i32 0, i64 9
  %1947 = load i32* %arrayidx12.9.4.6, align 4
  %arrayidx15.9.4.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.6, i32 0, i64 4
  %1948 = load i32* %arrayidx16.9.4.6, align 4
  %mul.9.4.6 = mul nsw i32 %1947, %1948
  %arrayidx19.9.4.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.4.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.6, i32 0, i64 4
  %1949 = load i32* %arrayidx20.9.4.6, align 4
  %add.9.4.6 = add nsw i32 %1949, %mul.9.4.6
  store i32 %add.9.4.6, i32* %arrayidx20.9.4.6, align 4
  br label %for.inc.9.4.6

for.inc.9.4.6:                                    ; preds = %for.inc.8.4.6
  br label %for.inc21.4.6

for.inc21.4.6:                                    ; preds = %for.inc.9.4.6
  %arrayidx.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.5.6 = getelementptr inbounds [10 x i32]* %arrayidx.5.6, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.6, align 4
  br label %for.body8.5.6

for.body8.5.6:                                    ; preds = %for.inc21.4.6
  %arrayidx11.544.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.545.6 = getelementptr inbounds [10 x i32]* %arrayidx11.544.6, i32 0, i64 0
  %1950 = load i32* %arrayidx12.545.6, align 4
  %arrayidx16.546.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %1951 = load i32* %arrayidx16.546.6, align 4
  %mul.547.6 = mul nsw i32 %1950, %1951
  %arrayidx19.549.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.550.6 = getelementptr inbounds [10 x i32]* %arrayidx19.549.6, i32 0, i64 5
  %1952 = load i32* %arrayidx20.550.6, align 4
  %add.551.6 = add nsw i32 %1952, %mul.547.6
  store i32 %add.551.6, i32* %arrayidx20.550.6, align 4
  br label %for.inc.552.6

for.inc.552.6:                                    ; preds = %for.body8.5.6
  %arrayidx11.1.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.6, i32 0, i64 1
  %1953 = load i32* %arrayidx12.1.5.6, align 4
  %arrayidx15.1.5.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.6, i32 0, i64 5
  %1954 = load i32* %arrayidx16.1.5.6, align 4
  %mul.1.5.6 = mul nsw i32 %1953, %1954
  %arrayidx19.1.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.6, i32 0, i64 5
  %1955 = load i32* %arrayidx20.1.5.6, align 4
  %add.1.5.6 = add nsw i32 %1955, %mul.1.5.6
  store i32 %add.1.5.6, i32* %arrayidx20.1.5.6, align 4
  br label %for.inc.1.5.6

for.inc.1.5.6:                                    ; preds = %for.inc.552.6
  %arrayidx11.2.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.6, i32 0, i64 2
  %1956 = load i32* %arrayidx12.2.5.6, align 4
  %arrayidx15.2.5.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.6, i32 0, i64 5
  %1957 = load i32* %arrayidx16.2.5.6, align 4
  %mul.2.5.6 = mul nsw i32 %1956, %1957
  %arrayidx19.2.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.6, i32 0, i64 5
  %1958 = load i32* %arrayidx20.2.5.6, align 4
  %add.2.5.6 = add nsw i32 %1958, %mul.2.5.6
  store i32 %add.2.5.6, i32* %arrayidx20.2.5.6, align 4
  br label %for.inc.2.5.6

for.inc.2.5.6:                                    ; preds = %for.inc.1.5.6
  %arrayidx11.3.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.6, i32 0, i64 3
  %1959 = load i32* %arrayidx12.3.5.6, align 4
  %arrayidx15.3.5.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.6, i32 0, i64 5
  %1960 = load i32* %arrayidx16.3.5.6, align 4
  %mul.3.5.6 = mul nsw i32 %1959, %1960
  %arrayidx19.3.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.6, i32 0, i64 5
  %1961 = load i32* %arrayidx20.3.5.6, align 4
  %add.3.5.6 = add nsw i32 %1961, %mul.3.5.6
  store i32 %add.3.5.6, i32* %arrayidx20.3.5.6, align 4
  br label %for.inc.3.5.6

for.inc.3.5.6:                                    ; preds = %for.inc.2.5.6
  %arrayidx11.4.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.6, i32 0, i64 4
  %1962 = load i32* %arrayidx12.4.5.6, align 4
  %arrayidx15.4.5.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.6, i32 0, i64 5
  %1963 = load i32* %arrayidx16.4.5.6, align 4
  %mul.4.5.6 = mul nsw i32 %1962, %1963
  %arrayidx19.4.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.6, i32 0, i64 5
  %1964 = load i32* %arrayidx20.4.5.6, align 4
  %add.4.5.6 = add nsw i32 %1964, %mul.4.5.6
  store i32 %add.4.5.6, i32* %arrayidx20.4.5.6, align 4
  br label %for.inc.4.5.6

for.inc.4.5.6:                                    ; preds = %for.inc.3.5.6
  %arrayidx11.5.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.6, i32 0, i64 5
  %1965 = load i32* %arrayidx12.5.5.6, align 4
  %arrayidx15.5.5.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.6, i32 0, i64 5
  %1966 = load i32* %arrayidx16.5.5.6, align 4
  %mul.5.5.6 = mul nsw i32 %1965, %1966
  %arrayidx19.5.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.6, i32 0, i64 5
  %1967 = load i32* %arrayidx20.5.5.6, align 4
  %add.5.5.6 = add nsw i32 %1967, %mul.5.5.6
  store i32 %add.5.5.6, i32* %arrayidx20.5.5.6, align 4
  br label %for.inc.5.5.6

for.inc.5.5.6:                                    ; preds = %for.inc.4.5.6
  %arrayidx11.6.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.6, i32 0, i64 6
  %1968 = load i32* %arrayidx12.6.5.6, align 4
  %arrayidx15.6.5.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.6, i32 0, i64 5
  %1969 = load i32* %arrayidx16.6.5.6, align 4
  %mul.6.5.6 = mul nsw i32 %1968, %1969
  %arrayidx19.6.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.6, i32 0, i64 5
  %1970 = load i32* %arrayidx20.6.5.6, align 4
  %add.6.5.6 = add nsw i32 %1970, %mul.6.5.6
  store i32 %add.6.5.6, i32* %arrayidx20.6.5.6, align 4
  br label %for.inc.6.5.6

for.inc.6.5.6:                                    ; preds = %for.inc.5.5.6
  %arrayidx11.7.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.6, i32 0, i64 7
  %1971 = load i32* %arrayidx12.7.5.6, align 4
  %arrayidx15.7.5.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.6, i32 0, i64 5
  %1972 = load i32* %arrayidx16.7.5.6, align 4
  %mul.7.5.6 = mul nsw i32 %1971, %1972
  %arrayidx19.7.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.6, i32 0, i64 5
  %1973 = load i32* %arrayidx20.7.5.6, align 4
  %add.7.5.6 = add nsw i32 %1973, %mul.7.5.6
  store i32 %add.7.5.6, i32* %arrayidx20.7.5.6, align 4
  br label %for.inc.7.5.6

for.inc.7.5.6:                                    ; preds = %for.inc.6.5.6
  %arrayidx11.8.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.6, i32 0, i64 8
  %1974 = load i32* %arrayidx12.8.5.6, align 4
  %arrayidx15.8.5.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.6, i32 0, i64 5
  %1975 = load i32* %arrayidx16.8.5.6, align 4
  %mul.8.5.6 = mul nsw i32 %1974, %1975
  %arrayidx19.8.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.6, i32 0, i64 5
  %1976 = load i32* %arrayidx20.8.5.6, align 4
  %add.8.5.6 = add nsw i32 %1976, %mul.8.5.6
  store i32 %add.8.5.6, i32* %arrayidx20.8.5.6, align 4
  br label %for.inc.8.5.6

for.inc.8.5.6:                                    ; preds = %for.inc.7.5.6
  %arrayidx11.9.5.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.5.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.6, i32 0, i64 9
  %1977 = load i32* %arrayidx12.9.5.6, align 4
  %arrayidx15.9.5.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.6, i32 0, i64 5
  %1978 = load i32* %arrayidx16.9.5.6, align 4
  %mul.9.5.6 = mul nsw i32 %1977, %1978
  %arrayidx19.9.5.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.5.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.6, i32 0, i64 5
  %1979 = load i32* %arrayidx20.9.5.6, align 4
  %add.9.5.6 = add nsw i32 %1979, %mul.9.5.6
  store i32 %add.9.5.6, i32* %arrayidx20.9.5.6, align 4
  br label %for.inc.9.5.6

for.inc.9.5.6:                                    ; preds = %for.inc.8.5.6
  br label %for.inc21.5.6

for.inc21.5.6:                                    ; preds = %for.inc.9.5.6
  %arrayidx.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.6.6 = getelementptr inbounds [10 x i32]* %arrayidx.6.6, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.6, align 4
  br label %for.body8.6.6

for.body8.6.6:                                    ; preds = %for.inc21.5.6
  %arrayidx11.654.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.655.6 = getelementptr inbounds [10 x i32]* %arrayidx11.654.6, i32 0, i64 0
  %1980 = load i32* %arrayidx12.655.6, align 4
  %arrayidx16.656.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %1981 = load i32* %arrayidx16.656.6, align 4
  %mul.657.6 = mul nsw i32 %1980, %1981
  %arrayidx19.659.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.660.6 = getelementptr inbounds [10 x i32]* %arrayidx19.659.6, i32 0, i64 6
  %1982 = load i32* %arrayidx20.660.6, align 4
  %add.661.6 = add nsw i32 %1982, %mul.657.6
  store i32 %add.661.6, i32* %arrayidx20.660.6, align 4
  br label %for.inc.662.6

for.inc.662.6:                                    ; preds = %for.body8.6.6
  %arrayidx11.1.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.6, i32 0, i64 1
  %1983 = load i32* %arrayidx12.1.6.6, align 4
  %arrayidx15.1.6.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.6, i32 0, i64 6
  %1984 = load i32* %arrayidx16.1.6.6, align 4
  %mul.1.6.6 = mul nsw i32 %1983, %1984
  %arrayidx19.1.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.6, i32 0, i64 6
  %1985 = load i32* %arrayidx20.1.6.6, align 4
  %add.1.6.6 = add nsw i32 %1985, %mul.1.6.6
  store i32 %add.1.6.6, i32* %arrayidx20.1.6.6, align 4
  br label %for.inc.1.6.6

for.inc.1.6.6:                                    ; preds = %for.inc.662.6
  %arrayidx11.2.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.6, i32 0, i64 2
  %1986 = load i32* %arrayidx12.2.6.6, align 4
  %arrayidx15.2.6.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.6, i32 0, i64 6
  %1987 = load i32* %arrayidx16.2.6.6, align 4
  %mul.2.6.6 = mul nsw i32 %1986, %1987
  %arrayidx19.2.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.6, i32 0, i64 6
  %1988 = load i32* %arrayidx20.2.6.6, align 4
  %add.2.6.6 = add nsw i32 %1988, %mul.2.6.6
  store i32 %add.2.6.6, i32* %arrayidx20.2.6.6, align 4
  br label %for.inc.2.6.6

for.inc.2.6.6:                                    ; preds = %for.inc.1.6.6
  %arrayidx11.3.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.6, i32 0, i64 3
  %1989 = load i32* %arrayidx12.3.6.6, align 4
  %arrayidx15.3.6.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.6, i32 0, i64 6
  %1990 = load i32* %arrayidx16.3.6.6, align 4
  %mul.3.6.6 = mul nsw i32 %1989, %1990
  %arrayidx19.3.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.6, i32 0, i64 6
  %1991 = load i32* %arrayidx20.3.6.6, align 4
  %add.3.6.6 = add nsw i32 %1991, %mul.3.6.6
  store i32 %add.3.6.6, i32* %arrayidx20.3.6.6, align 4
  br label %for.inc.3.6.6

for.inc.3.6.6:                                    ; preds = %for.inc.2.6.6
  %arrayidx11.4.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.6, i32 0, i64 4
  %1992 = load i32* %arrayidx12.4.6.6, align 4
  %arrayidx15.4.6.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.6, i32 0, i64 6
  %1993 = load i32* %arrayidx16.4.6.6, align 4
  %mul.4.6.6 = mul nsw i32 %1992, %1993
  %arrayidx19.4.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.6, i32 0, i64 6
  %1994 = load i32* %arrayidx20.4.6.6, align 4
  %add.4.6.6 = add nsw i32 %1994, %mul.4.6.6
  store i32 %add.4.6.6, i32* %arrayidx20.4.6.6, align 4
  br label %for.inc.4.6.6

for.inc.4.6.6:                                    ; preds = %for.inc.3.6.6
  %arrayidx11.5.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.6, i32 0, i64 5
  %1995 = load i32* %arrayidx12.5.6.6, align 4
  %arrayidx15.5.6.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.6, i32 0, i64 6
  %1996 = load i32* %arrayidx16.5.6.6, align 4
  %mul.5.6.6 = mul nsw i32 %1995, %1996
  %arrayidx19.5.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.6, i32 0, i64 6
  %1997 = load i32* %arrayidx20.5.6.6, align 4
  %add.5.6.6 = add nsw i32 %1997, %mul.5.6.6
  store i32 %add.5.6.6, i32* %arrayidx20.5.6.6, align 4
  br label %for.inc.5.6.6

for.inc.5.6.6:                                    ; preds = %for.inc.4.6.6
  %arrayidx11.6.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.6, i32 0, i64 6
  %1998 = load i32* %arrayidx12.6.6.6, align 4
  %arrayidx15.6.6.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.6, i32 0, i64 6
  %1999 = load i32* %arrayidx16.6.6.6, align 4
  %mul.6.6.6 = mul nsw i32 %1998, %1999
  %arrayidx19.6.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.6, i32 0, i64 6
  %2000 = load i32* %arrayidx20.6.6.6, align 4
  %add.6.6.6 = add nsw i32 %2000, %mul.6.6.6
  store i32 %add.6.6.6, i32* %arrayidx20.6.6.6, align 4
  br label %for.inc.6.6.6

for.inc.6.6.6:                                    ; preds = %for.inc.5.6.6
  %arrayidx11.7.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.6, i32 0, i64 7
  %2001 = load i32* %arrayidx12.7.6.6, align 4
  %arrayidx15.7.6.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.6, i32 0, i64 6
  %2002 = load i32* %arrayidx16.7.6.6, align 4
  %mul.7.6.6 = mul nsw i32 %2001, %2002
  %arrayidx19.7.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.6, i32 0, i64 6
  %2003 = load i32* %arrayidx20.7.6.6, align 4
  %add.7.6.6 = add nsw i32 %2003, %mul.7.6.6
  store i32 %add.7.6.6, i32* %arrayidx20.7.6.6, align 4
  br label %for.inc.7.6.6

for.inc.7.6.6:                                    ; preds = %for.inc.6.6.6
  %arrayidx11.8.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.6, i32 0, i64 8
  %2004 = load i32* %arrayidx12.8.6.6, align 4
  %arrayidx15.8.6.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.6, i32 0, i64 6
  %2005 = load i32* %arrayidx16.8.6.6, align 4
  %mul.8.6.6 = mul nsw i32 %2004, %2005
  %arrayidx19.8.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.6, i32 0, i64 6
  %2006 = load i32* %arrayidx20.8.6.6, align 4
  %add.8.6.6 = add nsw i32 %2006, %mul.8.6.6
  store i32 %add.8.6.6, i32* %arrayidx20.8.6.6, align 4
  br label %for.inc.8.6.6

for.inc.8.6.6:                                    ; preds = %for.inc.7.6.6
  %arrayidx11.9.6.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.6.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.6, i32 0, i64 9
  %2007 = load i32* %arrayidx12.9.6.6, align 4
  %arrayidx15.9.6.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.6, i32 0, i64 6
  %2008 = load i32* %arrayidx16.9.6.6, align 4
  %mul.9.6.6 = mul nsw i32 %2007, %2008
  %arrayidx19.9.6.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.6.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.6, i32 0, i64 6
  %2009 = load i32* %arrayidx20.9.6.6, align 4
  %add.9.6.6 = add nsw i32 %2009, %mul.9.6.6
  store i32 %add.9.6.6, i32* %arrayidx20.9.6.6, align 4
  br label %for.inc.9.6.6

for.inc.9.6.6:                                    ; preds = %for.inc.8.6.6
  br label %for.inc21.6.6

for.inc21.6.6:                                    ; preds = %for.inc.9.6.6
  %arrayidx.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.7.6 = getelementptr inbounds [10 x i32]* %arrayidx.7.6, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.6, align 4
  br label %for.body8.7.6

for.body8.7.6:                                    ; preds = %for.inc21.6.6
  %arrayidx11.764.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.765.6 = getelementptr inbounds [10 x i32]* %arrayidx11.764.6, i32 0, i64 0
  %2010 = load i32* %arrayidx12.765.6, align 4
  %arrayidx16.766.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %2011 = load i32* %arrayidx16.766.6, align 4
  %mul.767.6 = mul nsw i32 %2010, %2011
  %arrayidx19.769.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.770.6 = getelementptr inbounds [10 x i32]* %arrayidx19.769.6, i32 0, i64 7
  %2012 = load i32* %arrayidx20.770.6, align 4
  %add.771.6 = add nsw i32 %2012, %mul.767.6
  store i32 %add.771.6, i32* %arrayidx20.770.6, align 4
  br label %for.inc.772.6

for.inc.772.6:                                    ; preds = %for.body8.7.6
  %arrayidx11.1.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.6, i32 0, i64 1
  %2013 = load i32* %arrayidx12.1.7.6, align 4
  %arrayidx15.1.7.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.6, i32 0, i64 7
  %2014 = load i32* %arrayidx16.1.7.6, align 4
  %mul.1.7.6 = mul nsw i32 %2013, %2014
  %arrayidx19.1.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.6, i32 0, i64 7
  %2015 = load i32* %arrayidx20.1.7.6, align 4
  %add.1.7.6 = add nsw i32 %2015, %mul.1.7.6
  store i32 %add.1.7.6, i32* %arrayidx20.1.7.6, align 4
  br label %for.inc.1.7.6

for.inc.1.7.6:                                    ; preds = %for.inc.772.6
  %arrayidx11.2.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.6, i32 0, i64 2
  %2016 = load i32* %arrayidx12.2.7.6, align 4
  %arrayidx15.2.7.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.6, i32 0, i64 7
  %2017 = load i32* %arrayidx16.2.7.6, align 4
  %mul.2.7.6 = mul nsw i32 %2016, %2017
  %arrayidx19.2.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.6, i32 0, i64 7
  %2018 = load i32* %arrayidx20.2.7.6, align 4
  %add.2.7.6 = add nsw i32 %2018, %mul.2.7.6
  store i32 %add.2.7.6, i32* %arrayidx20.2.7.6, align 4
  br label %for.inc.2.7.6

for.inc.2.7.6:                                    ; preds = %for.inc.1.7.6
  %arrayidx11.3.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.6, i32 0, i64 3
  %2019 = load i32* %arrayidx12.3.7.6, align 4
  %arrayidx15.3.7.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.6, i32 0, i64 7
  %2020 = load i32* %arrayidx16.3.7.6, align 4
  %mul.3.7.6 = mul nsw i32 %2019, %2020
  %arrayidx19.3.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.6, i32 0, i64 7
  %2021 = load i32* %arrayidx20.3.7.6, align 4
  %add.3.7.6 = add nsw i32 %2021, %mul.3.7.6
  store i32 %add.3.7.6, i32* %arrayidx20.3.7.6, align 4
  br label %for.inc.3.7.6

for.inc.3.7.6:                                    ; preds = %for.inc.2.7.6
  %arrayidx11.4.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.6, i32 0, i64 4
  %2022 = load i32* %arrayidx12.4.7.6, align 4
  %arrayidx15.4.7.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.6, i32 0, i64 7
  %2023 = load i32* %arrayidx16.4.7.6, align 4
  %mul.4.7.6 = mul nsw i32 %2022, %2023
  %arrayidx19.4.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.6, i32 0, i64 7
  %2024 = load i32* %arrayidx20.4.7.6, align 4
  %add.4.7.6 = add nsw i32 %2024, %mul.4.7.6
  store i32 %add.4.7.6, i32* %arrayidx20.4.7.6, align 4
  br label %for.inc.4.7.6

for.inc.4.7.6:                                    ; preds = %for.inc.3.7.6
  %arrayidx11.5.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.6, i32 0, i64 5
  %2025 = load i32* %arrayidx12.5.7.6, align 4
  %arrayidx15.5.7.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.6, i32 0, i64 7
  %2026 = load i32* %arrayidx16.5.7.6, align 4
  %mul.5.7.6 = mul nsw i32 %2025, %2026
  %arrayidx19.5.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.6, i32 0, i64 7
  %2027 = load i32* %arrayidx20.5.7.6, align 4
  %add.5.7.6 = add nsw i32 %2027, %mul.5.7.6
  store i32 %add.5.7.6, i32* %arrayidx20.5.7.6, align 4
  br label %for.inc.5.7.6

for.inc.5.7.6:                                    ; preds = %for.inc.4.7.6
  %arrayidx11.6.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.6, i32 0, i64 6
  %2028 = load i32* %arrayidx12.6.7.6, align 4
  %arrayidx15.6.7.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.6, i32 0, i64 7
  %2029 = load i32* %arrayidx16.6.7.6, align 4
  %mul.6.7.6 = mul nsw i32 %2028, %2029
  %arrayidx19.6.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.6, i32 0, i64 7
  %2030 = load i32* %arrayidx20.6.7.6, align 4
  %add.6.7.6 = add nsw i32 %2030, %mul.6.7.6
  store i32 %add.6.7.6, i32* %arrayidx20.6.7.6, align 4
  br label %for.inc.6.7.6

for.inc.6.7.6:                                    ; preds = %for.inc.5.7.6
  %arrayidx11.7.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.6, i32 0, i64 7
  %2031 = load i32* %arrayidx12.7.7.6, align 4
  %arrayidx15.7.7.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.6, i32 0, i64 7
  %2032 = load i32* %arrayidx16.7.7.6, align 4
  %mul.7.7.6 = mul nsw i32 %2031, %2032
  %arrayidx19.7.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.6, i32 0, i64 7
  %2033 = load i32* %arrayidx20.7.7.6, align 4
  %add.7.7.6 = add nsw i32 %2033, %mul.7.7.6
  store i32 %add.7.7.6, i32* %arrayidx20.7.7.6, align 4
  br label %for.inc.7.7.6

for.inc.7.7.6:                                    ; preds = %for.inc.6.7.6
  %arrayidx11.8.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.6, i32 0, i64 8
  %2034 = load i32* %arrayidx12.8.7.6, align 4
  %arrayidx15.8.7.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.6, i32 0, i64 7
  %2035 = load i32* %arrayidx16.8.7.6, align 4
  %mul.8.7.6 = mul nsw i32 %2034, %2035
  %arrayidx19.8.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.6, i32 0, i64 7
  %2036 = load i32* %arrayidx20.8.7.6, align 4
  %add.8.7.6 = add nsw i32 %2036, %mul.8.7.6
  store i32 %add.8.7.6, i32* %arrayidx20.8.7.6, align 4
  br label %for.inc.8.7.6

for.inc.8.7.6:                                    ; preds = %for.inc.7.7.6
  %arrayidx11.9.7.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.7.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.6, i32 0, i64 9
  %2037 = load i32* %arrayidx12.9.7.6, align 4
  %arrayidx15.9.7.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.6, i32 0, i64 7
  %2038 = load i32* %arrayidx16.9.7.6, align 4
  %mul.9.7.6 = mul nsw i32 %2037, %2038
  %arrayidx19.9.7.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.7.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.6, i32 0, i64 7
  %2039 = load i32* %arrayidx20.9.7.6, align 4
  %add.9.7.6 = add nsw i32 %2039, %mul.9.7.6
  store i32 %add.9.7.6, i32* %arrayidx20.9.7.6, align 4
  br label %for.inc.9.7.6

for.inc.9.7.6:                                    ; preds = %for.inc.8.7.6
  br label %for.inc21.7.6

for.inc21.7.6:                                    ; preds = %for.inc.9.7.6
  %arrayidx.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.8.6 = getelementptr inbounds [10 x i32]* %arrayidx.8.6, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.6, align 4
  br label %for.body8.8.6

for.body8.8.6:                                    ; preds = %for.inc21.7.6
  %arrayidx11.874.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.875.6 = getelementptr inbounds [10 x i32]* %arrayidx11.874.6, i32 0, i64 0
  %2040 = load i32* %arrayidx12.875.6, align 4
  %arrayidx16.876.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %2041 = load i32* %arrayidx16.876.6, align 4
  %mul.877.6 = mul nsw i32 %2040, %2041
  %arrayidx19.879.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.880.6 = getelementptr inbounds [10 x i32]* %arrayidx19.879.6, i32 0, i64 8
  %2042 = load i32* %arrayidx20.880.6, align 4
  %add.881.6 = add nsw i32 %2042, %mul.877.6
  store i32 %add.881.6, i32* %arrayidx20.880.6, align 4
  br label %for.inc.882.6

for.inc.882.6:                                    ; preds = %for.body8.8.6
  %arrayidx11.1.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.6, i32 0, i64 1
  %2043 = load i32* %arrayidx12.1.8.6, align 4
  %arrayidx15.1.8.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.6, i32 0, i64 8
  %2044 = load i32* %arrayidx16.1.8.6, align 4
  %mul.1.8.6 = mul nsw i32 %2043, %2044
  %arrayidx19.1.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.6, i32 0, i64 8
  %2045 = load i32* %arrayidx20.1.8.6, align 4
  %add.1.8.6 = add nsw i32 %2045, %mul.1.8.6
  store i32 %add.1.8.6, i32* %arrayidx20.1.8.6, align 4
  br label %for.inc.1.8.6

for.inc.1.8.6:                                    ; preds = %for.inc.882.6
  %arrayidx11.2.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.6, i32 0, i64 2
  %2046 = load i32* %arrayidx12.2.8.6, align 4
  %arrayidx15.2.8.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.6, i32 0, i64 8
  %2047 = load i32* %arrayidx16.2.8.6, align 4
  %mul.2.8.6 = mul nsw i32 %2046, %2047
  %arrayidx19.2.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.6, i32 0, i64 8
  %2048 = load i32* %arrayidx20.2.8.6, align 4
  %add.2.8.6 = add nsw i32 %2048, %mul.2.8.6
  store i32 %add.2.8.6, i32* %arrayidx20.2.8.6, align 4
  br label %for.inc.2.8.6

for.inc.2.8.6:                                    ; preds = %for.inc.1.8.6
  %arrayidx11.3.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.6, i32 0, i64 3
  %2049 = load i32* %arrayidx12.3.8.6, align 4
  %arrayidx15.3.8.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.6, i32 0, i64 8
  %2050 = load i32* %arrayidx16.3.8.6, align 4
  %mul.3.8.6 = mul nsw i32 %2049, %2050
  %arrayidx19.3.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.6, i32 0, i64 8
  %2051 = load i32* %arrayidx20.3.8.6, align 4
  %add.3.8.6 = add nsw i32 %2051, %mul.3.8.6
  store i32 %add.3.8.6, i32* %arrayidx20.3.8.6, align 4
  br label %for.inc.3.8.6

for.inc.3.8.6:                                    ; preds = %for.inc.2.8.6
  %arrayidx11.4.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.6, i32 0, i64 4
  %2052 = load i32* %arrayidx12.4.8.6, align 4
  %arrayidx15.4.8.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.6, i32 0, i64 8
  %2053 = load i32* %arrayidx16.4.8.6, align 4
  %mul.4.8.6 = mul nsw i32 %2052, %2053
  %arrayidx19.4.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.6, i32 0, i64 8
  %2054 = load i32* %arrayidx20.4.8.6, align 4
  %add.4.8.6 = add nsw i32 %2054, %mul.4.8.6
  store i32 %add.4.8.6, i32* %arrayidx20.4.8.6, align 4
  br label %for.inc.4.8.6

for.inc.4.8.6:                                    ; preds = %for.inc.3.8.6
  %arrayidx11.5.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.6, i32 0, i64 5
  %2055 = load i32* %arrayidx12.5.8.6, align 4
  %arrayidx15.5.8.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.6, i32 0, i64 8
  %2056 = load i32* %arrayidx16.5.8.6, align 4
  %mul.5.8.6 = mul nsw i32 %2055, %2056
  %arrayidx19.5.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.6, i32 0, i64 8
  %2057 = load i32* %arrayidx20.5.8.6, align 4
  %add.5.8.6 = add nsw i32 %2057, %mul.5.8.6
  store i32 %add.5.8.6, i32* %arrayidx20.5.8.6, align 4
  br label %for.inc.5.8.6

for.inc.5.8.6:                                    ; preds = %for.inc.4.8.6
  %arrayidx11.6.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.6, i32 0, i64 6
  %2058 = load i32* %arrayidx12.6.8.6, align 4
  %arrayidx15.6.8.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.6, i32 0, i64 8
  %2059 = load i32* %arrayidx16.6.8.6, align 4
  %mul.6.8.6 = mul nsw i32 %2058, %2059
  %arrayidx19.6.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.6, i32 0, i64 8
  %2060 = load i32* %arrayidx20.6.8.6, align 4
  %add.6.8.6 = add nsw i32 %2060, %mul.6.8.6
  store i32 %add.6.8.6, i32* %arrayidx20.6.8.6, align 4
  br label %for.inc.6.8.6

for.inc.6.8.6:                                    ; preds = %for.inc.5.8.6
  %arrayidx11.7.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.6, i32 0, i64 7
  %2061 = load i32* %arrayidx12.7.8.6, align 4
  %arrayidx15.7.8.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.6, i32 0, i64 8
  %2062 = load i32* %arrayidx16.7.8.6, align 4
  %mul.7.8.6 = mul nsw i32 %2061, %2062
  %arrayidx19.7.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.6, i32 0, i64 8
  %2063 = load i32* %arrayidx20.7.8.6, align 4
  %add.7.8.6 = add nsw i32 %2063, %mul.7.8.6
  store i32 %add.7.8.6, i32* %arrayidx20.7.8.6, align 4
  br label %for.inc.7.8.6

for.inc.7.8.6:                                    ; preds = %for.inc.6.8.6
  %arrayidx11.8.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.6, i32 0, i64 8
  %2064 = load i32* %arrayidx12.8.8.6, align 4
  %arrayidx15.8.8.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.6, i32 0, i64 8
  %2065 = load i32* %arrayidx16.8.8.6, align 4
  %mul.8.8.6 = mul nsw i32 %2064, %2065
  %arrayidx19.8.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.6, i32 0, i64 8
  %2066 = load i32* %arrayidx20.8.8.6, align 4
  %add.8.8.6 = add nsw i32 %2066, %mul.8.8.6
  store i32 %add.8.8.6, i32* %arrayidx20.8.8.6, align 4
  br label %for.inc.8.8.6

for.inc.8.8.6:                                    ; preds = %for.inc.7.8.6
  %arrayidx11.9.8.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.8.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.6, i32 0, i64 9
  %2067 = load i32* %arrayidx12.9.8.6, align 4
  %arrayidx15.9.8.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.6, i32 0, i64 8
  %2068 = load i32* %arrayidx16.9.8.6, align 4
  %mul.9.8.6 = mul nsw i32 %2067, %2068
  %arrayidx19.9.8.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.8.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.6, i32 0, i64 8
  %2069 = load i32* %arrayidx20.9.8.6, align 4
  %add.9.8.6 = add nsw i32 %2069, %mul.9.8.6
  store i32 %add.9.8.6, i32* %arrayidx20.9.8.6, align 4
  br label %for.inc.9.8.6

for.inc.9.8.6:                                    ; preds = %for.inc.8.8.6
  br label %for.inc21.8.6

for.inc21.8.6:                                    ; preds = %for.inc.9.8.6
  %arrayidx.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx5.9.6 = getelementptr inbounds [10 x i32]* %arrayidx.9.6, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.6, align 4
  br label %for.body8.9.6

for.body8.9.6:                                    ; preds = %for.inc21.8.6
  %arrayidx11.984.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.985.6 = getelementptr inbounds [10 x i32]* %arrayidx11.984.6, i32 0, i64 0
  %2070 = load i32* %arrayidx12.985.6, align 4
  %arrayidx16.986.6 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %2071 = load i32* %arrayidx16.986.6, align 4
  %mul.987.6 = mul nsw i32 %2070, %2071
  %arrayidx19.989.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.990.6 = getelementptr inbounds [10 x i32]* %arrayidx19.989.6, i32 0, i64 9
  %2072 = load i32* %arrayidx20.990.6, align 4
  %add.991.6 = add nsw i32 %2072, %mul.987.6
  store i32 %add.991.6, i32* %arrayidx20.990.6, align 4
  br label %for.inc.992.6

for.inc.992.6:                                    ; preds = %for.body8.9.6
  %arrayidx11.1.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.1.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.6, i32 0, i64 1
  %2073 = load i32* %arrayidx12.1.9.6, align 4
  %arrayidx15.1.9.6 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.6, i32 0, i64 9
  %2074 = load i32* %arrayidx16.1.9.6, align 4
  %mul.1.9.6 = mul nsw i32 %2073, %2074
  %arrayidx19.1.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.1.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.6, i32 0, i64 9
  %2075 = load i32* %arrayidx20.1.9.6, align 4
  %add.1.9.6 = add nsw i32 %2075, %mul.1.9.6
  store i32 %add.1.9.6, i32* %arrayidx20.1.9.6, align 4
  br label %for.inc.1.9.6

for.inc.1.9.6:                                    ; preds = %for.inc.992.6
  %arrayidx11.2.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.2.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.6, i32 0, i64 2
  %2076 = load i32* %arrayidx12.2.9.6, align 4
  %arrayidx15.2.9.6 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.6, i32 0, i64 9
  %2077 = load i32* %arrayidx16.2.9.6, align 4
  %mul.2.9.6 = mul nsw i32 %2076, %2077
  %arrayidx19.2.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.2.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.6, i32 0, i64 9
  %2078 = load i32* %arrayidx20.2.9.6, align 4
  %add.2.9.6 = add nsw i32 %2078, %mul.2.9.6
  store i32 %add.2.9.6, i32* %arrayidx20.2.9.6, align 4
  br label %for.inc.2.9.6

for.inc.2.9.6:                                    ; preds = %for.inc.1.9.6
  %arrayidx11.3.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.3.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.6, i32 0, i64 3
  %2079 = load i32* %arrayidx12.3.9.6, align 4
  %arrayidx15.3.9.6 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.6, i32 0, i64 9
  %2080 = load i32* %arrayidx16.3.9.6, align 4
  %mul.3.9.6 = mul nsw i32 %2079, %2080
  %arrayidx19.3.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.3.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.6, i32 0, i64 9
  %2081 = load i32* %arrayidx20.3.9.6, align 4
  %add.3.9.6 = add nsw i32 %2081, %mul.3.9.6
  store i32 %add.3.9.6, i32* %arrayidx20.3.9.6, align 4
  br label %for.inc.3.9.6

for.inc.3.9.6:                                    ; preds = %for.inc.2.9.6
  %arrayidx11.4.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.4.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.6, i32 0, i64 4
  %2082 = load i32* %arrayidx12.4.9.6, align 4
  %arrayidx15.4.9.6 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.6, i32 0, i64 9
  %2083 = load i32* %arrayidx16.4.9.6, align 4
  %mul.4.9.6 = mul nsw i32 %2082, %2083
  %arrayidx19.4.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.4.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.6, i32 0, i64 9
  %2084 = load i32* %arrayidx20.4.9.6, align 4
  %add.4.9.6 = add nsw i32 %2084, %mul.4.9.6
  store i32 %add.4.9.6, i32* %arrayidx20.4.9.6, align 4
  br label %for.inc.4.9.6

for.inc.4.9.6:                                    ; preds = %for.inc.3.9.6
  %arrayidx11.5.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.5.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.6, i32 0, i64 5
  %2085 = load i32* %arrayidx12.5.9.6, align 4
  %arrayidx15.5.9.6 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.6, i32 0, i64 9
  %2086 = load i32* %arrayidx16.5.9.6, align 4
  %mul.5.9.6 = mul nsw i32 %2085, %2086
  %arrayidx19.5.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.5.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.6, i32 0, i64 9
  %2087 = load i32* %arrayidx20.5.9.6, align 4
  %add.5.9.6 = add nsw i32 %2087, %mul.5.9.6
  store i32 %add.5.9.6, i32* %arrayidx20.5.9.6, align 4
  br label %for.inc.5.9.6

for.inc.5.9.6:                                    ; preds = %for.inc.4.9.6
  %arrayidx11.6.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.6.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.6, i32 0, i64 6
  %2088 = load i32* %arrayidx12.6.9.6, align 4
  %arrayidx15.6.9.6 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.6, i32 0, i64 9
  %2089 = load i32* %arrayidx16.6.9.6, align 4
  %mul.6.9.6 = mul nsw i32 %2088, %2089
  %arrayidx19.6.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.6.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.6, i32 0, i64 9
  %2090 = load i32* %arrayidx20.6.9.6, align 4
  %add.6.9.6 = add nsw i32 %2090, %mul.6.9.6
  store i32 %add.6.9.6, i32* %arrayidx20.6.9.6, align 4
  br label %for.inc.6.9.6

for.inc.6.9.6:                                    ; preds = %for.inc.5.9.6
  %arrayidx11.7.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.7.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.6, i32 0, i64 7
  %2091 = load i32* %arrayidx12.7.9.6, align 4
  %arrayidx15.7.9.6 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.6, i32 0, i64 9
  %2092 = load i32* %arrayidx16.7.9.6, align 4
  %mul.7.9.6 = mul nsw i32 %2091, %2092
  %arrayidx19.7.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.7.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.6, i32 0, i64 9
  %2093 = load i32* %arrayidx20.7.9.6, align 4
  %add.7.9.6 = add nsw i32 %2093, %mul.7.9.6
  store i32 %add.7.9.6, i32* %arrayidx20.7.9.6, align 4
  br label %for.inc.7.9.6

for.inc.7.9.6:                                    ; preds = %for.inc.6.9.6
  %arrayidx11.8.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.8.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.6, i32 0, i64 8
  %2094 = load i32* %arrayidx12.8.9.6, align 4
  %arrayidx15.8.9.6 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.6, i32 0, i64 9
  %2095 = load i32* %arrayidx16.8.9.6, align 4
  %mul.8.9.6 = mul nsw i32 %2094, %2095
  %arrayidx19.8.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.8.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.6, i32 0, i64 9
  %2096 = load i32* %arrayidx20.8.9.6, align 4
  %add.8.9.6 = add nsw i32 %2096, %mul.8.9.6
  store i32 %add.8.9.6, i32* %arrayidx20.8.9.6, align 4
  br label %for.inc.8.9.6

for.inc.8.9.6:                                    ; preds = %for.inc.7.9.6
  %arrayidx11.9.9.6 = getelementptr inbounds [10 x i32]* %a, i64 6
  %arrayidx12.9.9.6 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.6, i32 0, i64 9
  %2097 = load i32* %arrayidx12.9.9.6, align 4
  %arrayidx15.9.9.6 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.6 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.6, i32 0, i64 9
  %2098 = load i32* %arrayidx16.9.9.6, align 4
  %mul.9.9.6 = mul nsw i32 %2097, %2098
  %arrayidx19.9.9.6 = getelementptr inbounds [10 x i32]* %c, i64 6
  %arrayidx20.9.9.6 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.6, i32 0, i64 9
  %2099 = load i32* %arrayidx20.9.9.6, align 4
  %add.9.9.6 = add nsw i32 %2099, %mul.9.9.6
  store i32 %add.9.9.6, i32* %arrayidx20.9.9.6, align 4
  br label %for.inc.9.9.6

for.inc.9.9.6:                                    ; preds = %for.inc.8.9.6
  br label %for.inc21.9.6

for.inc21.9.6:                                    ; preds = %for.inc.9.9.6
  br label %for.inc24.6

for.inc24.6:                                      ; preds = %for.inc21.9.6
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.inc24.6
  %arrayidx.7652 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.7653 = getelementptr inbounds [10 x i32]* %arrayidx.7652, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.7653, align 4
  br label %for.body8.7661

for.body8.7661:                                   ; preds = %for.body3.7
  %arrayidx11.7654 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7655 = getelementptr inbounds [10 x i32]* %arrayidx11.7654, i32 0, i64 0
  %2100 = load i32* %arrayidx12.7655, align 4
  %arrayidx16.7656 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %2101 = load i32* %arrayidx16.7656, align 4
  %mul.7657 = mul nsw i32 %2100, %2101
  %arrayidx19.7658 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7659 = getelementptr inbounds [10 x i32]* %arrayidx19.7658, i32 0, i64 0
  %2102 = load i32* %arrayidx20.7659, align 4
  %add.7660 = add nsw i32 %2102, %mul.7657
  store i32 %add.7660, i32* %arrayidx20.7659, align 4
  br label %for.inc.7670

for.inc.7670:                                     ; preds = %for.body8.7661
  %arrayidx11.1.7662 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.7663 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7662, i32 0, i64 1
  %2103 = load i32* %arrayidx12.1.7663, align 4
  %arrayidx15.1.7664 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7665 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7664, i32 0, i64 0
  %2104 = load i32* %arrayidx16.1.7665, align 4
  %mul.1.7666 = mul nsw i32 %2103, %2104
  %arrayidx19.1.7667 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.7668 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7667, i32 0, i64 0
  %2105 = load i32* %arrayidx20.1.7668, align 4
  %add.1.7669 = add nsw i32 %2105, %mul.1.7666
  store i32 %add.1.7669, i32* %arrayidx20.1.7668, align 4
  br label %for.inc.1.7679

for.inc.1.7679:                                   ; preds = %for.inc.7670
  %arrayidx11.2.7671 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.7672 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7671, i32 0, i64 2
  %2106 = load i32* %arrayidx12.2.7672, align 4
  %arrayidx15.2.7673 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7674 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7673, i32 0, i64 0
  %2107 = load i32* %arrayidx16.2.7674, align 4
  %mul.2.7675 = mul nsw i32 %2106, %2107
  %arrayidx19.2.7676 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.7677 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7676, i32 0, i64 0
  %2108 = load i32* %arrayidx20.2.7677, align 4
  %add.2.7678 = add nsw i32 %2108, %mul.2.7675
  store i32 %add.2.7678, i32* %arrayidx20.2.7677, align 4
  br label %for.inc.2.7688

for.inc.2.7688:                                   ; preds = %for.inc.1.7679
  %arrayidx11.3.7680 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.7681 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7680, i32 0, i64 3
  %2109 = load i32* %arrayidx12.3.7681, align 4
  %arrayidx15.3.7682 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7683 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7682, i32 0, i64 0
  %2110 = load i32* %arrayidx16.3.7683, align 4
  %mul.3.7684 = mul nsw i32 %2109, %2110
  %arrayidx19.3.7685 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.7686 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7685, i32 0, i64 0
  %2111 = load i32* %arrayidx20.3.7686, align 4
  %add.3.7687 = add nsw i32 %2111, %mul.3.7684
  store i32 %add.3.7687, i32* %arrayidx20.3.7686, align 4
  br label %for.inc.3.7697

for.inc.3.7697:                                   ; preds = %for.inc.2.7688
  %arrayidx11.4.7689 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.7690 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7689, i32 0, i64 4
  %2112 = load i32* %arrayidx12.4.7690, align 4
  %arrayidx15.4.7691 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7692 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7691, i32 0, i64 0
  %2113 = load i32* %arrayidx16.4.7692, align 4
  %mul.4.7693 = mul nsw i32 %2112, %2113
  %arrayidx19.4.7694 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.7695 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7694, i32 0, i64 0
  %2114 = load i32* %arrayidx20.4.7695, align 4
  %add.4.7696 = add nsw i32 %2114, %mul.4.7693
  store i32 %add.4.7696, i32* %arrayidx20.4.7695, align 4
  br label %for.inc.4.7706

for.inc.4.7706:                                   ; preds = %for.inc.3.7697
  %arrayidx11.5.7698 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.7699 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7698, i32 0, i64 5
  %2115 = load i32* %arrayidx12.5.7699, align 4
  %arrayidx15.5.7700 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7701 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7700, i32 0, i64 0
  %2116 = load i32* %arrayidx16.5.7701, align 4
  %mul.5.7702 = mul nsw i32 %2115, %2116
  %arrayidx19.5.7703 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.7704 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7703, i32 0, i64 0
  %2117 = load i32* %arrayidx20.5.7704, align 4
  %add.5.7705 = add nsw i32 %2117, %mul.5.7702
  store i32 %add.5.7705, i32* %arrayidx20.5.7704, align 4
  br label %for.inc.5.7715

for.inc.5.7715:                                   ; preds = %for.inc.4.7706
  %arrayidx11.6.7707 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.7708 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7707, i32 0, i64 6
  %2118 = load i32* %arrayidx12.6.7708, align 4
  %arrayidx15.6.7709 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7710 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7709, i32 0, i64 0
  %2119 = load i32* %arrayidx16.6.7710, align 4
  %mul.6.7711 = mul nsw i32 %2118, %2119
  %arrayidx19.6.7712 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.7713 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7712, i32 0, i64 0
  %2120 = load i32* %arrayidx20.6.7713, align 4
  %add.6.7714 = add nsw i32 %2120, %mul.6.7711
  store i32 %add.6.7714, i32* %arrayidx20.6.7713, align 4
  br label %for.inc.6.7724

for.inc.6.7724:                                   ; preds = %for.inc.5.7715
  %arrayidx11.7.7716 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.7717 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7716, i32 0, i64 7
  %2121 = load i32* %arrayidx12.7.7717, align 4
  %arrayidx15.7.7718 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7719 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7718, i32 0, i64 0
  %2122 = load i32* %arrayidx16.7.7719, align 4
  %mul.7.7720 = mul nsw i32 %2121, %2122
  %arrayidx19.7.7721 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.7722 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7721, i32 0, i64 0
  %2123 = load i32* %arrayidx20.7.7722, align 4
  %add.7.7723 = add nsw i32 %2123, %mul.7.7720
  store i32 %add.7.7723, i32* %arrayidx20.7.7722, align 4
  br label %for.inc.7.7733

for.inc.7.7733:                                   ; preds = %for.inc.6.7724
  %arrayidx11.8.7725 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.7726 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7725, i32 0, i64 8
  %2124 = load i32* %arrayidx12.8.7726, align 4
  %arrayidx15.8.7727 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7728 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7727, i32 0, i64 0
  %2125 = load i32* %arrayidx16.8.7728, align 4
  %mul.8.7729 = mul nsw i32 %2124, %2125
  %arrayidx19.8.7730 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.7731 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7730, i32 0, i64 0
  %2126 = load i32* %arrayidx20.8.7731, align 4
  %add.8.7732 = add nsw i32 %2126, %mul.8.7729
  store i32 %add.8.7732, i32* %arrayidx20.8.7731, align 4
  br label %for.inc.8.7742

for.inc.8.7742:                                   ; preds = %for.inc.7.7733
  %arrayidx11.9.7734 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.7735 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7734, i32 0, i64 9
  %2127 = load i32* %arrayidx12.9.7735, align 4
  %arrayidx15.9.7736 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7737 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7736, i32 0, i64 0
  %2128 = load i32* %arrayidx16.9.7737, align 4
  %mul.9.7738 = mul nsw i32 %2127, %2128
  %arrayidx19.9.7739 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.7740 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7739, i32 0, i64 0
  %2129 = load i32* %arrayidx20.9.7740, align 4
  %add.9.7741 = add nsw i32 %2129, %mul.9.7738
  store i32 %add.9.7741, i32* %arrayidx20.9.7740, align 4
  br label %for.inc.9.7743

for.inc.9.7743:                                   ; preds = %for.inc.8.7742
  br label %for.inc21.7744

for.inc21.7744:                                   ; preds = %for.inc.9.7743
  %arrayidx.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.1.7 = getelementptr inbounds [10 x i32]* %arrayidx.1.7, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.7, align 4
  br label %for.body8.1.7

for.body8.1.7:                                    ; preds = %for.inc21.7744
  %arrayidx11.14.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.15.7 = getelementptr inbounds [10 x i32]* %arrayidx11.14.7, i32 0, i64 0
  %2130 = load i32* %arrayidx12.15.7, align 4
  %arrayidx16.16.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %2131 = load i32* %arrayidx16.16.7, align 4
  %mul.17.7 = mul nsw i32 %2130, %2131
  %arrayidx19.19.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.110.7 = getelementptr inbounds [10 x i32]* %arrayidx19.19.7, i32 0, i64 1
  %2132 = load i32* %arrayidx20.110.7, align 4
  %add.111.7 = add nsw i32 %2132, %mul.17.7
  store i32 %add.111.7, i32* %arrayidx20.110.7, align 4
  br label %for.inc.112.7

for.inc.112.7:                                    ; preds = %for.body8.1.7
  %arrayidx11.1.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.7, i32 0, i64 1
  %2133 = load i32* %arrayidx12.1.1.7, align 4
  %arrayidx15.1.1.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.7, i32 0, i64 1
  %2134 = load i32* %arrayidx16.1.1.7, align 4
  %mul.1.1.7 = mul nsw i32 %2133, %2134
  %arrayidx19.1.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.7, i32 0, i64 1
  %2135 = load i32* %arrayidx20.1.1.7, align 4
  %add.1.1.7 = add nsw i32 %2135, %mul.1.1.7
  store i32 %add.1.1.7, i32* %arrayidx20.1.1.7, align 4
  br label %for.inc.1.1.7

for.inc.1.1.7:                                    ; preds = %for.inc.112.7
  %arrayidx11.2.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.7, i32 0, i64 2
  %2136 = load i32* %arrayidx12.2.1.7, align 4
  %arrayidx15.2.1.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.7, i32 0, i64 1
  %2137 = load i32* %arrayidx16.2.1.7, align 4
  %mul.2.1.7 = mul nsw i32 %2136, %2137
  %arrayidx19.2.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.7, i32 0, i64 1
  %2138 = load i32* %arrayidx20.2.1.7, align 4
  %add.2.1.7 = add nsw i32 %2138, %mul.2.1.7
  store i32 %add.2.1.7, i32* %arrayidx20.2.1.7, align 4
  br label %for.inc.2.1.7

for.inc.2.1.7:                                    ; preds = %for.inc.1.1.7
  %arrayidx11.3.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.7, i32 0, i64 3
  %2139 = load i32* %arrayidx12.3.1.7, align 4
  %arrayidx15.3.1.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.7, i32 0, i64 1
  %2140 = load i32* %arrayidx16.3.1.7, align 4
  %mul.3.1.7 = mul nsw i32 %2139, %2140
  %arrayidx19.3.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.7, i32 0, i64 1
  %2141 = load i32* %arrayidx20.3.1.7, align 4
  %add.3.1.7 = add nsw i32 %2141, %mul.3.1.7
  store i32 %add.3.1.7, i32* %arrayidx20.3.1.7, align 4
  br label %for.inc.3.1.7

for.inc.3.1.7:                                    ; preds = %for.inc.2.1.7
  %arrayidx11.4.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.7, i32 0, i64 4
  %2142 = load i32* %arrayidx12.4.1.7, align 4
  %arrayidx15.4.1.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.7, i32 0, i64 1
  %2143 = load i32* %arrayidx16.4.1.7, align 4
  %mul.4.1.7 = mul nsw i32 %2142, %2143
  %arrayidx19.4.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.7, i32 0, i64 1
  %2144 = load i32* %arrayidx20.4.1.7, align 4
  %add.4.1.7 = add nsw i32 %2144, %mul.4.1.7
  store i32 %add.4.1.7, i32* %arrayidx20.4.1.7, align 4
  br label %for.inc.4.1.7

for.inc.4.1.7:                                    ; preds = %for.inc.3.1.7
  %arrayidx11.5.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.7, i32 0, i64 5
  %2145 = load i32* %arrayidx12.5.1.7, align 4
  %arrayidx15.5.1.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.7, i32 0, i64 1
  %2146 = load i32* %arrayidx16.5.1.7, align 4
  %mul.5.1.7 = mul nsw i32 %2145, %2146
  %arrayidx19.5.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.7, i32 0, i64 1
  %2147 = load i32* %arrayidx20.5.1.7, align 4
  %add.5.1.7 = add nsw i32 %2147, %mul.5.1.7
  store i32 %add.5.1.7, i32* %arrayidx20.5.1.7, align 4
  br label %for.inc.5.1.7

for.inc.5.1.7:                                    ; preds = %for.inc.4.1.7
  %arrayidx11.6.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.7, i32 0, i64 6
  %2148 = load i32* %arrayidx12.6.1.7, align 4
  %arrayidx15.6.1.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.7, i32 0, i64 1
  %2149 = load i32* %arrayidx16.6.1.7, align 4
  %mul.6.1.7 = mul nsw i32 %2148, %2149
  %arrayidx19.6.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.7, i32 0, i64 1
  %2150 = load i32* %arrayidx20.6.1.7, align 4
  %add.6.1.7 = add nsw i32 %2150, %mul.6.1.7
  store i32 %add.6.1.7, i32* %arrayidx20.6.1.7, align 4
  br label %for.inc.6.1.7

for.inc.6.1.7:                                    ; preds = %for.inc.5.1.7
  %arrayidx11.7.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.7, i32 0, i64 7
  %2151 = load i32* %arrayidx12.7.1.7, align 4
  %arrayidx15.7.1.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.7, i32 0, i64 1
  %2152 = load i32* %arrayidx16.7.1.7, align 4
  %mul.7.1.7 = mul nsw i32 %2151, %2152
  %arrayidx19.7.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.7, i32 0, i64 1
  %2153 = load i32* %arrayidx20.7.1.7, align 4
  %add.7.1.7 = add nsw i32 %2153, %mul.7.1.7
  store i32 %add.7.1.7, i32* %arrayidx20.7.1.7, align 4
  br label %for.inc.7.1.7

for.inc.7.1.7:                                    ; preds = %for.inc.6.1.7
  %arrayidx11.8.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.7, i32 0, i64 8
  %2154 = load i32* %arrayidx12.8.1.7, align 4
  %arrayidx15.8.1.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.7, i32 0, i64 1
  %2155 = load i32* %arrayidx16.8.1.7, align 4
  %mul.8.1.7 = mul nsw i32 %2154, %2155
  %arrayidx19.8.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.7, i32 0, i64 1
  %2156 = load i32* %arrayidx20.8.1.7, align 4
  %add.8.1.7 = add nsw i32 %2156, %mul.8.1.7
  store i32 %add.8.1.7, i32* %arrayidx20.8.1.7, align 4
  br label %for.inc.8.1.7

for.inc.8.1.7:                                    ; preds = %for.inc.7.1.7
  %arrayidx11.9.1.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.1.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.7, i32 0, i64 9
  %2157 = load i32* %arrayidx12.9.1.7, align 4
  %arrayidx15.9.1.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.7, i32 0, i64 1
  %2158 = load i32* %arrayidx16.9.1.7, align 4
  %mul.9.1.7 = mul nsw i32 %2157, %2158
  %arrayidx19.9.1.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.1.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.7, i32 0, i64 1
  %2159 = load i32* %arrayidx20.9.1.7, align 4
  %add.9.1.7 = add nsw i32 %2159, %mul.9.1.7
  store i32 %add.9.1.7, i32* %arrayidx20.9.1.7, align 4
  br label %for.inc.9.1.7

for.inc.9.1.7:                                    ; preds = %for.inc.8.1.7
  br label %for.inc21.1.7

for.inc21.1.7:                                    ; preds = %for.inc.9.1.7
  %arrayidx.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.2.7 = getelementptr inbounds [10 x i32]* %arrayidx.2.7, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.7, align 4
  br label %for.body8.2.7

for.body8.2.7:                                    ; preds = %for.inc21.1.7
  %arrayidx11.214.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.215.7 = getelementptr inbounds [10 x i32]* %arrayidx11.214.7, i32 0, i64 0
  %2160 = load i32* %arrayidx12.215.7, align 4
  %arrayidx16.216.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %2161 = load i32* %arrayidx16.216.7, align 4
  %mul.217.7 = mul nsw i32 %2160, %2161
  %arrayidx19.219.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.220.7 = getelementptr inbounds [10 x i32]* %arrayidx19.219.7, i32 0, i64 2
  %2162 = load i32* %arrayidx20.220.7, align 4
  %add.221.7 = add nsw i32 %2162, %mul.217.7
  store i32 %add.221.7, i32* %arrayidx20.220.7, align 4
  br label %for.inc.222.7

for.inc.222.7:                                    ; preds = %for.body8.2.7
  %arrayidx11.1.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.7, i32 0, i64 1
  %2163 = load i32* %arrayidx12.1.2.7, align 4
  %arrayidx15.1.2.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.7, i32 0, i64 2
  %2164 = load i32* %arrayidx16.1.2.7, align 4
  %mul.1.2.7 = mul nsw i32 %2163, %2164
  %arrayidx19.1.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.7, i32 0, i64 2
  %2165 = load i32* %arrayidx20.1.2.7, align 4
  %add.1.2.7 = add nsw i32 %2165, %mul.1.2.7
  store i32 %add.1.2.7, i32* %arrayidx20.1.2.7, align 4
  br label %for.inc.1.2.7

for.inc.1.2.7:                                    ; preds = %for.inc.222.7
  %arrayidx11.2.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.7, i32 0, i64 2
  %2166 = load i32* %arrayidx12.2.2.7, align 4
  %arrayidx15.2.2.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.7, i32 0, i64 2
  %2167 = load i32* %arrayidx16.2.2.7, align 4
  %mul.2.2.7 = mul nsw i32 %2166, %2167
  %arrayidx19.2.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.7, i32 0, i64 2
  %2168 = load i32* %arrayidx20.2.2.7, align 4
  %add.2.2.7 = add nsw i32 %2168, %mul.2.2.7
  store i32 %add.2.2.7, i32* %arrayidx20.2.2.7, align 4
  br label %for.inc.2.2.7

for.inc.2.2.7:                                    ; preds = %for.inc.1.2.7
  %arrayidx11.3.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.7, i32 0, i64 3
  %2169 = load i32* %arrayidx12.3.2.7, align 4
  %arrayidx15.3.2.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.7, i32 0, i64 2
  %2170 = load i32* %arrayidx16.3.2.7, align 4
  %mul.3.2.7 = mul nsw i32 %2169, %2170
  %arrayidx19.3.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.7, i32 0, i64 2
  %2171 = load i32* %arrayidx20.3.2.7, align 4
  %add.3.2.7 = add nsw i32 %2171, %mul.3.2.7
  store i32 %add.3.2.7, i32* %arrayidx20.3.2.7, align 4
  br label %for.inc.3.2.7

for.inc.3.2.7:                                    ; preds = %for.inc.2.2.7
  %arrayidx11.4.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.7, i32 0, i64 4
  %2172 = load i32* %arrayidx12.4.2.7, align 4
  %arrayidx15.4.2.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.7, i32 0, i64 2
  %2173 = load i32* %arrayidx16.4.2.7, align 4
  %mul.4.2.7 = mul nsw i32 %2172, %2173
  %arrayidx19.4.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.7, i32 0, i64 2
  %2174 = load i32* %arrayidx20.4.2.7, align 4
  %add.4.2.7 = add nsw i32 %2174, %mul.4.2.7
  store i32 %add.4.2.7, i32* %arrayidx20.4.2.7, align 4
  br label %for.inc.4.2.7

for.inc.4.2.7:                                    ; preds = %for.inc.3.2.7
  %arrayidx11.5.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.7, i32 0, i64 5
  %2175 = load i32* %arrayidx12.5.2.7, align 4
  %arrayidx15.5.2.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.7, i32 0, i64 2
  %2176 = load i32* %arrayidx16.5.2.7, align 4
  %mul.5.2.7 = mul nsw i32 %2175, %2176
  %arrayidx19.5.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.7, i32 0, i64 2
  %2177 = load i32* %arrayidx20.5.2.7, align 4
  %add.5.2.7 = add nsw i32 %2177, %mul.5.2.7
  store i32 %add.5.2.7, i32* %arrayidx20.5.2.7, align 4
  br label %for.inc.5.2.7

for.inc.5.2.7:                                    ; preds = %for.inc.4.2.7
  %arrayidx11.6.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.7, i32 0, i64 6
  %2178 = load i32* %arrayidx12.6.2.7, align 4
  %arrayidx15.6.2.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.7, i32 0, i64 2
  %2179 = load i32* %arrayidx16.6.2.7, align 4
  %mul.6.2.7 = mul nsw i32 %2178, %2179
  %arrayidx19.6.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.7, i32 0, i64 2
  %2180 = load i32* %arrayidx20.6.2.7, align 4
  %add.6.2.7 = add nsw i32 %2180, %mul.6.2.7
  store i32 %add.6.2.7, i32* %arrayidx20.6.2.7, align 4
  br label %for.inc.6.2.7

for.inc.6.2.7:                                    ; preds = %for.inc.5.2.7
  %arrayidx11.7.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.7, i32 0, i64 7
  %2181 = load i32* %arrayidx12.7.2.7, align 4
  %arrayidx15.7.2.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.7, i32 0, i64 2
  %2182 = load i32* %arrayidx16.7.2.7, align 4
  %mul.7.2.7 = mul nsw i32 %2181, %2182
  %arrayidx19.7.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.7, i32 0, i64 2
  %2183 = load i32* %arrayidx20.7.2.7, align 4
  %add.7.2.7 = add nsw i32 %2183, %mul.7.2.7
  store i32 %add.7.2.7, i32* %arrayidx20.7.2.7, align 4
  br label %for.inc.7.2.7

for.inc.7.2.7:                                    ; preds = %for.inc.6.2.7
  %arrayidx11.8.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.7, i32 0, i64 8
  %2184 = load i32* %arrayidx12.8.2.7, align 4
  %arrayidx15.8.2.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.7, i32 0, i64 2
  %2185 = load i32* %arrayidx16.8.2.7, align 4
  %mul.8.2.7 = mul nsw i32 %2184, %2185
  %arrayidx19.8.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.7, i32 0, i64 2
  %2186 = load i32* %arrayidx20.8.2.7, align 4
  %add.8.2.7 = add nsw i32 %2186, %mul.8.2.7
  store i32 %add.8.2.7, i32* %arrayidx20.8.2.7, align 4
  br label %for.inc.8.2.7

for.inc.8.2.7:                                    ; preds = %for.inc.7.2.7
  %arrayidx11.9.2.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.2.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.7, i32 0, i64 9
  %2187 = load i32* %arrayidx12.9.2.7, align 4
  %arrayidx15.9.2.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.7, i32 0, i64 2
  %2188 = load i32* %arrayidx16.9.2.7, align 4
  %mul.9.2.7 = mul nsw i32 %2187, %2188
  %arrayidx19.9.2.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.2.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.7, i32 0, i64 2
  %2189 = load i32* %arrayidx20.9.2.7, align 4
  %add.9.2.7 = add nsw i32 %2189, %mul.9.2.7
  store i32 %add.9.2.7, i32* %arrayidx20.9.2.7, align 4
  br label %for.inc.9.2.7

for.inc.9.2.7:                                    ; preds = %for.inc.8.2.7
  br label %for.inc21.2.7

for.inc21.2.7:                                    ; preds = %for.inc.9.2.7
  %arrayidx.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.3.7 = getelementptr inbounds [10 x i32]* %arrayidx.3.7, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.7, align 4
  br label %for.body8.3.7

for.body8.3.7:                                    ; preds = %for.inc21.2.7
  %arrayidx11.324.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.325.7 = getelementptr inbounds [10 x i32]* %arrayidx11.324.7, i32 0, i64 0
  %2190 = load i32* %arrayidx12.325.7, align 4
  %arrayidx16.326.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %2191 = load i32* %arrayidx16.326.7, align 4
  %mul.327.7 = mul nsw i32 %2190, %2191
  %arrayidx19.329.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.330.7 = getelementptr inbounds [10 x i32]* %arrayidx19.329.7, i32 0, i64 3
  %2192 = load i32* %arrayidx20.330.7, align 4
  %add.331.7 = add nsw i32 %2192, %mul.327.7
  store i32 %add.331.7, i32* %arrayidx20.330.7, align 4
  br label %for.inc.332.7

for.inc.332.7:                                    ; preds = %for.body8.3.7
  %arrayidx11.1.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.7, i32 0, i64 1
  %2193 = load i32* %arrayidx12.1.3.7, align 4
  %arrayidx15.1.3.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.7, i32 0, i64 3
  %2194 = load i32* %arrayidx16.1.3.7, align 4
  %mul.1.3.7 = mul nsw i32 %2193, %2194
  %arrayidx19.1.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.7, i32 0, i64 3
  %2195 = load i32* %arrayidx20.1.3.7, align 4
  %add.1.3.7 = add nsw i32 %2195, %mul.1.3.7
  store i32 %add.1.3.7, i32* %arrayidx20.1.3.7, align 4
  br label %for.inc.1.3.7

for.inc.1.3.7:                                    ; preds = %for.inc.332.7
  %arrayidx11.2.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.7, i32 0, i64 2
  %2196 = load i32* %arrayidx12.2.3.7, align 4
  %arrayidx15.2.3.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.7, i32 0, i64 3
  %2197 = load i32* %arrayidx16.2.3.7, align 4
  %mul.2.3.7 = mul nsw i32 %2196, %2197
  %arrayidx19.2.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.7, i32 0, i64 3
  %2198 = load i32* %arrayidx20.2.3.7, align 4
  %add.2.3.7 = add nsw i32 %2198, %mul.2.3.7
  store i32 %add.2.3.7, i32* %arrayidx20.2.3.7, align 4
  br label %for.inc.2.3.7

for.inc.2.3.7:                                    ; preds = %for.inc.1.3.7
  %arrayidx11.3.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.7, i32 0, i64 3
  %2199 = load i32* %arrayidx12.3.3.7, align 4
  %arrayidx15.3.3.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.7, i32 0, i64 3
  %2200 = load i32* %arrayidx16.3.3.7, align 4
  %mul.3.3.7 = mul nsw i32 %2199, %2200
  %arrayidx19.3.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.7, i32 0, i64 3
  %2201 = load i32* %arrayidx20.3.3.7, align 4
  %add.3.3.7 = add nsw i32 %2201, %mul.3.3.7
  store i32 %add.3.3.7, i32* %arrayidx20.3.3.7, align 4
  br label %for.inc.3.3.7

for.inc.3.3.7:                                    ; preds = %for.inc.2.3.7
  %arrayidx11.4.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.7, i32 0, i64 4
  %2202 = load i32* %arrayidx12.4.3.7, align 4
  %arrayidx15.4.3.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.7, i32 0, i64 3
  %2203 = load i32* %arrayidx16.4.3.7, align 4
  %mul.4.3.7 = mul nsw i32 %2202, %2203
  %arrayidx19.4.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.7, i32 0, i64 3
  %2204 = load i32* %arrayidx20.4.3.7, align 4
  %add.4.3.7 = add nsw i32 %2204, %mul.4.3.7
  store i32 %add.4.3.7, i32* %arrayidx20.4.3.7, align 4
  br label %for.inc.4.3.7

for.inc.4.3.7:                                    ; preds = %for.inc.3.3.7
  %arrayidx11.5.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.7, i32 0, i64 5
  %2205 = load i32* %arrayidx12.5.3.7, align 4
  %arrayidx15.5.3.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.7, i32 0, i64 3
  %2206 = load i32* %arrayidx16.5.3.7, align 4
  %mul.5.3.7 = mul nsw i32 %2205, %2206
  %arrayidx19.5.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.7, i32 0, i64 3
  %2207 = load i32* %arrayidx20.5.3.7, align 4
  %add.5.3.7 = add nsw i32 %2207, %mul.5.3.7
  store i32 %add.5.3.7, i32* %arrayidx20.5.3.7, align 4
  br label %for.inc.5.3.7

for.inc.5.3.7:                                    ; preds = %for.inc.4.3.7
  %arrayidx11.6.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.7, i32 0, i64 6
  %2208 = load i32* %arrayidx12.6.3.7, align 4
  %arrayidx15.6.3.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.7, i32 0, i64 3
  %2209 = load i32* %arrayidx16.6.3.7, align 4
  %mul.6.3.7 = mul nsw i32 %2208, %2209
  %arrayidx19.6.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.7, i32 0, i64 3
  %2210 = load i32* %arrayidx20.6.3.7, align 4
  %add.6.3.7 = add nsw i32 %2210, %mul.6.3.7
  store i32 %add.6.3.7, i32* %arrayidx20.6.3.7, align 4
  br label %for.inc.6.3.7

for.inc.6.3.7:                                    ; preds = %for.inc.5.3.7
  %arrayidx11.7.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.7, i32 0, i64 7
  %2211 = load i32* %arrayidx12.7.3.7, align 4
  %arrayidx15.7.3.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.7, i32 0, i64 3
  %2212 = load i32* %arrayidx16.7.3.7, align 4
  %mul.7.3.7 = mul nsw i32 %2211, %2212
  %arrayidx19.7.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.7, i32 0, i64 3
  %2213 = load i32* %arrayidx20.7.3.7, align 4
  %add.7.3.7 = add nsw i32 %2213, %mul.7.3.7
  store i32 %add.7.3.7, i32* %arrayidx20.7.3.7, align 4
  br label %for.inc.7.3.7

for.inc.7.3.7:                                    ; preds = %for.inc.6.3.7
  %arrayidx11.8.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.7, i32 0, i64 8
  %2214 = load i32* %arrayidx12.8.3.7, align 4
  %arrayidx15.8.3.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.7, i32 0, i64 3
  %2215 = load i32* %arrayidx16.8.3.7, align 4
  %mul.8.3.7 = mul nsw i32 %2214, %2215
  %arrayidx19.8.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.7, i32 0, i64 3
  %2216 = load i32* %arrayidx20.8.3.7, align 4
  %add.8.3.7 = add nsw i32 %2216, %mul.8.3.7
  store i32 %add.8.3.7, i32* %arrayidx20.8.3.7, align 4
  br label %for.inc.8.3.7

for.inc.8.3.7:                                    ; preds = %for.inc.7.3.7
  %arrayidx11.9.3.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.3.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.7, i32 0, i64 9
  %2217 = load i32* %arrayidx12.9.3.7, align 4
  %arrayidx15.9.3.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.7, i32 0, i64 3
  %2218 = load i32* %arrayidx16.9.3.7, align 4
  %mul.9.3.7 = mul nsw i32 %2217, %2218
  %arrayidx19.9.3.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.3.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.7, i32 0, i64 3
  %2219 = load i32* %arrayidx20.9.3.7, align 4
  %add.9.3.7 = add nsw i32 %2219, %mul.9.3.7
  store i32 %add.9.3.7, i32* %arrayidx20.9.3.7, align 4
  br label %for.inc.9.3.7

for.inc.9.3.7:                                    ; preds = %for.inc.8.3.7
  br label %for.inc21.3.7

for.inc21.3.7:                                    ; preds = %for.inc.9.3.7
  %arrayidx.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.4.7 = getelementptr inbounds [10 x i32]* %arrayidx.4.7, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.7, align 4
  br label %for.body8.4.7

for.body8.4.7:                                    ; preds = %for.inc21.3.7
  %arrayidx11.434.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.435.7 = getelementptr inbounds [10 x i32]* %arrayidx11.434.7, i32 0, i64 0
  %2220 = load i32* %arrayidx12.435.7, align 4
  %arrayidx16.436.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %2221 = load i32* %arrayidx16.436.7, align 4
  %mul.437.7 = mul nsw i32 %2220, %2221
  %arrayidx19.439.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.440.7 = getelementptr inbounds [10 x i32]* %arrayidx19.439.7, i32 0, i64 4
  %2222 = load i32* %arrayidx20.440.7, align 4
  %add.441.7 = add nsw i32 %2222, %mul.437.7
  store i32 %add.441.7, i32* %arrayidx20.440.7, align 4
  br label %for.inc.442.7

for.inc.442.7:                                    ; preds = %for.body8.4.7
  %arrayidx11.1.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.7, i32 0, i64 1
  %2223 = load i32* %arrayidx12.1.4.7, align 4
  %arrayidx15.1.4.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.7, i32 0, i64 4
  %2224 = load i32* %arrayidx16.1.4.7, align 4
  %mul.1.4.7 = mul nsw i32 %2223, %2224
  %arrayidx19.1.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.7, i32 0, i64 4
  %2225 = load i32* %arrayidx20.1.4.7, align 4
  %add.1.4.7 = add nsw i32 %2225, %mul.1.4.7
  store i32 %add.1.4.7, i32* %arrayidx20.1.4.7, align 4
  br label %for.inc.1.4.7

for.inc.1.4.7:                                    ; preds = %for.inc.442.7
  %arrayidx11.2.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.7, i32 0, i64 2
  %2226 = load i32* %arrayidx12.2.4.7, align 4
  %arrayidx15.2.4.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.7, i32 0, i64 4
  %2227 = load i32* %arrayidx16.2.4.7, align 4
  %mul.2.4.7 = mul nsw i32 %2226, %2227
  %arrayidx19.2.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.7, i32 0, i64 4
  %2228 = load i32* %arrayidx20.2.4.7, align 4
  %add.2.4.7 = add nsw i32 %2228, %mul.2.4.7
  store i32 %add.2.4.7, i32* %arrayidx20.2.4.7, align 4
  br label %for.inc.2.4.7

for.inc.2.4.7:                                    ; preds = %for.inc.1.4.7
  %arrayidx11.3.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.7, i32 0, i64 3
  %2229 = load i32* %arrayidx12.3.4.7, align 4
  %arrayidx15.3.4.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.7, i32 0, i64 4
  %2230 = load i32* %arrayidx16.3.4.7, align 4
  %mul.3.4.7 = mul nsw i32 %2229, %2230
  %arrayidx19.3.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.7, i32 0, i64 4
  %2231 = load i32* %arrayidx20.3.4.7, align 4
  %add.3.4.7 = add nsw i32 %2231, %mul.3.4.7
  store i32 %add.3.4.7, i32* %arrayidx20.3.4.7, align 4
  br label %for.inc.3.4.7

for.inc.3.4.7:                                    ; preds = %for.inc.2.4.7
  %arrayidx11.4.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.7, i32 0, i64 4
  %2232 = load i32* %arrayidx12.4.4.7, align 4
  %arrayidx15.4.4.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.7, i32 0, i64 4
  %2233 = load i32* %arrayidx16.4.4.7, align 4
  %mul.4.4.7 = mul nsw i32 %2232, %2233
  %arrayidx19.4.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.7, i32 0, i64 4
  %2234 = load i32* %arrayidx20.4.4.7, align 4
  %add.4.4.7 = add nsw i32 %2234, %mul.4.4.7
  store i32 %add.4.4.7, i32* %arrayidx20.4.4.7, align 4
  br label %for.inc.4.4.7

for.inc.4.4.7:                                    ; preds = %for.inc.3.4.7
  %arrayidx11.5.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.7, i32 0, i64 5
  %2235 = load i32* %arrayidx12.5.4.7, align 4
  %arrayidx15.5.4.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.7, i32 0, i64 4
  %2236 = load i32* %arrayidx16.5.4.7, align 4
  %mul.5.4.7 = mul nsw i32 %2235, %2236
  %arrayidx19.5.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.7, i32 0, i64 4
  %2237 = load i32* %arrayidx20.5.4.7, align 4
  %add.5.4.7 = add nsw i32 %2237, %mul.5.4.7
  store i32 %add.5.4.7, i32* %arrayidx20.5.4.7, align 4
  br label %for.inc.5.4.7

for.inc.5.4.7:                                    ; preds = %for.inc.4.4.7
  %arrayidx11.6.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.7, i32 0, i64 6
  %2238 = load i32* %arrayidx12.6.4.7, align 4
  %arrayidx15.6.4.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.7, i32 0, i64 4
  %2239 = load i32* %arrayidx16.6.4.7, align 4
  %mul.6.4.7 = mul nsw i32 %2238, %2239
  %arrayidx19.6.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.7, i32 0, i64 4
  %2240 = load i32* %arrayidx20.6.4.7, align 4
  %add.6.4.7 = add nsw i32 %2240, %mul.6.4.7
  store i32 %add.6.4.7, i32* %arrayidx20.6.4.7, align 4
  br label %for.inc.6.4.7

for.inc.6.4.7:                                    ; preds = %for.inc.5.4.7
  %arrayidx11.7.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.7, i32 0, i64 7
  %2241 = load i32* %arrayidx12.7.4.7, align 4
  %arrayidx15.7.4.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.7, i32 0, i64 4
  %2242 = load i32* %arrayidx16.7.4.7, align 4
  %mul.7.4.7 = mul nsw i32 %2241, %2242
  %arrayidx19.7.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.7, i32 0, i64 4
  %2243 = load i32* %arrayidx20.7.4.7, align 4
  %add.7.4.7 = add nsw i32 %2243, %mul.7.4.7
  store i32 %add.7.4.7, i32* %arrayidx20.7.4.7, align 4
  br label %for.inc.7.4.7

for.inc.7.4.7:                                    ; preds = %for.inc.6.4.7
  %arrayidx11.8.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.7, i32 0, i64 8
  %2244 = load i32* %arrayidx12.8.4.7, align 4
  %arrayidx15.8.4.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.7, i32 0, i64 4
  %2245 = load i32* %arrayidx16.8.4.7, align 4
  %mul.8.4.7 = mul nsw i32 %2244, %2245
  %arrayidx19.8.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.7, i32 0, i64 4
  %2246 = load i32* %arrayidx20.8.4.7, align 4
  %add.8.4.7 = add nsw i32 %2246, %mul.8.4.7
  store i32 %add.8.4.7, i32* %arrayidx20.8.4.7, align 4
  br label %for.inc.8.4.7

for.inc.8.4.7:                                    ; preds = %for.inc.7.4.7
  %arrayidx11.9.4.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.4.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.7, i32 0, i64 9
  %2247 = load i32* %arrayidx12.9.4.7, align 4
  %arrayidx15.9.4.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.7, i32 0, i64 4
  %2248 = load i32* %arrayidx16.9.4.7, align 4
  %mul.9.4.7 = mul nsw i32 %2247, %2248
  %arrayidx19.9.4.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.4.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.7, i32 0, i64 4
  %2249 = load i32* %arrayidx20.9.4.7, align 4
  %add.9.4.7 = add nsw i32 %2249, %mul.9.4.7
  store i32 %add.9.4.7, i32* %arrayidx20.9.4.7, align 4
  br label %for.inc.9.4.7

for.inc.9.4.7:                                    ; preds = %for.inc.8.4.7
  br label %for.inc21.4.7

for.inc21.4.7:                                    ; preds = %for.inc.9.4.7
  %arrayidx.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.5.7 = getelementptr inbounds [10 x i32]* %arrayidx.5.7, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.7, align 4
  br label %for.body8.5.7

for.body8.5.7:                                    ; preds = %for.inc21.4.7
  %arrayidx11.544.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.545.7 = getelementptr inbounds [10 x i32]* %arrayidx11.544.7, i32 0, i64 0
  %2250 = load i32* %arrayidx12.545.7, align 4
  %arrayidx16.546.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %2251 = load i32* %arrayidx16.546.7, align 4
  %mul.547.7 = mul nsw i32 %2250, %2251
  %arrayidx19.549.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.550.7 = getelementptr inbounds [10 x i32]* %arrayidx19.549.7, i32 0, i64 5
  %2252 = load i32* %arrayidx20.550.7, align 4
  %add.551.7 = add nsw i32 %2252, %mul.547.7
  store i32 %add.551.7, i32* %arrayidx20.550.7, align 4
  br label %for.inc.552.7

for.inc.552.7:                                    ; preds = %for.body8.5.7
  %arrayidx11.1.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.7, i32 0, i64 1
  %2253 = load i32* %arrayidx12.1.5.7, align 4
  %arrayidx15.1.5.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.7, i32 0, i64 5
  %2254 = load i32* %arrayidx16.1.5.7, align 4
  %mul.1.5.7 = mul nsw i32 %2253, %2254
  %arrayidx19.1.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.7, i32 0, i64 5
  %2255 = load i32* %arrayidx20.1.5.7, align 4
  %add.1.5.7 = add nsw i32 %2255, %mul.1.5.7
  store i32 %add.1.5.7, i32* %arrayidx20.1.5.7, align 4
  br label %for.inc.1.5.7

for.inc.1.5.7:                                    ; preds = %for.inc.552.7
  %arrayidx11.2.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.7, i32 0, i64 2
  %2256 = load i32* %arrayidx12.2.5.7, align 4
  %arrayidx15.2.5.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.7, i32 0, i64 5
  %2257 = load i32* %arrayidx16.2.5.7, align 4
  %mul.2.5.7 = mul nsw i32 %2256, %2257
  %arrayidx19.2.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.7, i32 0, i64 5
  %2258 = load i32* %arrayidx20.2.5.7, align 4
  %add.2.5.7 = add nsw i32 %2258, %mul.2.5.7
  store i32 %add.2.5.7, i32* %arrayidx20.2.5.7, align 4
  br label %for.inc.2.5.7

for.inc.2.5.7:                                    ; preds = %for.inc.1.5.7
  %arrayidx11.3.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.7, i32 0, i64 3
  %2259 = load i32* %arrayidx12.3.5.7, align 4
  %arrayidx15.3.5.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.7, i32 0, i64 5
  %2260 = load i32* %arrayidx16.3.5.7, align 4
  %mul.3.5.7 = mul nsw i32 %2259, %2260
  %arrayidx19.3.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.7, i32 0, i64 5
  %2261 = load i32* %arrayidx20.3.5.7, align 4
  %add.3.5.7 = add nsw i32 %2261, %mul.3.5.7
  store i32 %add.3.5.7, i32* %arrayidx20.3.5.7, align 4
  br label %for.inc.3.5.7

for.inc.3.5.7:                                    ; preds = %for.inc.2.5.7
  %arrayidx11.4.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.7, i32 0, i64 4
  %2262 = load i32* %arrayidx12.4.5.7, align 4
  %arrayidx15.4.5.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.7, i32 0, i64 5
  %2263 = load i32* %arrayidx16.4.5.7, align 4
  %mul.4.5.7 = mul nsw i32 %2262, %2263
  %arrayidx19.4.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.7, i32 0, i64 5
  %2264 = load i32* %arrayidx20.4.5.7, align 4
  %add.4.5.7 = add nsw i32 %2264, %mul.4.5.7
  store i32 %add.4.5.7, i32* %arrayidx20.4.5.7, align 4
  br label %for.inc.4.5.7

for.inc.4.5.7:                                    ; preds = %for.inc.3.5.7
  %arrayidx11.5.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.7, i32 0, i64 5
  %2265 = load i32* %arrayidx12.5.5.7, align 4
  %arrayidx15.5.5.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.7, i32 0, i64 5
  %2266 = load i32* %arrayidx16.5.5.7, align 4
  %mul.5.5.7 = mul nsw i32 %2265, %2266
  %arrayidx19.5.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.7, i32 0, i64 5
  %2267 = load i32* %arrayidx20.5.5.7, align 4
  %add.5.5.7 = add nsw i32 %2267, %mul.5.5.7
  store i32 %add.5.5.7, i32* %arrayidx20.5.5.7, align 4
  br label %for.inc.5.5.7

for.inc.5.5.7:                                    ; preds = %for.inc.4.5.7
  %arrayidx11.6.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.7, i32 0, i64 6
  %2268 = load i32* %arrayidx12.6.5.7, align 4
  %arrayidx15.6.5.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.7, i32 0, i64 5
  %2269 = load i32* %arrayidx16.6.5.7, align 4
  %mul.6.5.7 = mul nsw i32 %2268, %2269
  %arrayidx19.6.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.7, i32 0, i64 5
  %2270 = load i32* %arrayidx20.6.5.7, align 4
  %add.6.5.7 = add nsw i32 %2270, %mul.6.5.7
  store i32 %add.6.5.7, i32* %arrayidx20.6.5.7, align 4
  br label %for.inc.6.5.7

for.inc.6.5.7:                                    ; preds = %for.inc.5.5.7
  %arrayidx11.7.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.7, i32 0, i64 7
  %2271 = load i32* %arrayidx12.7.5.7, align 4
  %arrayidx15.7.5.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.7, i32 0, i64 5
  %2272 = load i32* %arrayidx16.7.5.7, align 4
  %mul.7.5.7 = mul nsw i32 %2271, %2272
  %arrayidx19.7.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.7, i32 0, i64 5
  %2273 = load i32* %arrayidx20.7.5.7, align 4
  %add.7.5.7 = add nsw i32 %2273, %mul.7.5.7
  store i32 %add.7.5.7, i32* %arrayidx20.7.5.7, align 4
  br label %for.inc.7.5.7

for.inc.7.5.7:                                    ; preds = %for.inc.6.5.7
  %arrayidx11.8.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.7, i32 0, i64 8
  %2274 = load i32* %arrayidx12.8.5.7, align 4
  %arrayidx15.8.5.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.7, i32 0, i64 5
  %2275 = load i32* %arrayidx16.8.5.7, align 4
  %mul.8.5.7 = mul nsw i32 %2274, %2275
  %arrayidx19.8.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.7, i32 0, i64 5
  %2276 = load i32* %arrayidx20.8.5.7, align 4
  %add.8.5.7 = add nsw i32 %2276, %mul.8.5.7
  store i32 %add.8.5.7, i32* %arrayidx20.8.5.7, align 4
  br label %for.inc.8.5.7

for.inc.8.5.7:                                    ; preds = %for.inc.7.5.7
  %arrayidx11.9.5.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.5.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.7, i32 0, i64 9
  %2277 = load i32* %arrayidx12.9.5.7, align 4
  %arrayidx15.9.5.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.7, i32 0, i64 5
  %2278 = load i32* %arrayidx16.9.5.7, align 4
  %mul.9.5.7 = mul nsw i32 %2277, %2278
  %arrayidx19.9.5.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.5.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.7, i32 0, i64 5
  %2279 = load i32* %arrayidx20.9.5.7, align 4
  %add.9.5.7 = add nsw i32 %2279, %mul.9.5.7
  store i32 %add.9.5.7, i32* %arrayidx20.9.5.7, align 4
  br label %for.inc.9.5.7

for.inc.9.5.7:                                    ; preds = %for.inc.8.5.7
  br label %for.inc21.5.7

for.inc21.5.7:                                    ; preds = %for.inc.9.5.7
  %arrayidx.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.6.7 = getelementptr inbounds [10 x i32]* %arrayidx.6.7, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.7, align 4
  br label %for.body8.6.7

for.body8.6.7:                                    ; preds = %for.inc21.5.7
  %arrayidx11.654.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.655.7 = getelementptr inbounds [10 x i32]* %arrayidx11.654.7, i32 0, i64 0
  %2280 = load i32* %arrayidx12.655.7, align 4
  %arrayidx16.656.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %2281 = load i32* %arrayidx16.656.7, align 4
  %mul.657.7 = mul nsw i32 %2280, %2281
  %arrayidx19.659.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.660.7 = getelementptr inbounds [10 x i32]* %arrayidx19.659.7, i32 0, i64 6
  %2282 = load i32* %arrayidx20.660.7, align 4
  %add.661.7 = add nsw i32 %2282, %mul.657.7
  store i32 %add.661.7, i32* %arrayidx20.660.7, align 4
  br label %for.inc.662.7

for.inc.662.7:                                    ; preds = %for.body8.6.7
  %arrayidx11.1.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.7, i32 0, i64 1
  %2283 = load i32* %arrayidx12.1.6.7, align 4
  %arrayidx15.1.6.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.7, i32 0, i64 6
  %2284 = load i32* %arrayidx16.1.6.7, align 4
  %mul.1.6.7 = mul nsw i32 %2283, %2284
  %arrayidx19.1.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.7, i32 0, i64 6
  %2285 = load i32* %arrayidx20.1.6.7, align 4
  %add.1.6.7 = add nsw i32 %2285, %mul.1.6.7
  store i32 %add.1.6.7, i32* %arrayidx20.1.6.7, align 4
  br label %for.inc.1.6.7

for.inc.1.6.7:                                    ; preds = %for.inc.662.7
  %arrayidx11.2.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.7, i32 0, i64 2
  %2286 = load i32* %arrayidx12.2.6.7, align 4
  %arrayidx15.2.6.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.7, i32 0, i64 6
  %2287 = load i32* %arrayidx16.2.6.7, align 4
  %mul.2.6.7 = mul nsw i32 %2286, %2287
  %arrayidx19.2.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.7, i32 0, i64 6
  %2288 = load i32* %arrayidx20.2.6.7, align 4
  %add.2.6.7 = add nsw i32 %2288, %mul.2.6.7
  store i32 %add.2.6.7, i32* %arrayidx20.2.6.7, align 4
  br label %for.inc.2.6.7

for.inc.2.6.7:                                    ; preds = %for.inc.1.6.7
  %arrayidx11.3.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.7, i32 0, i64 3
  %2289 = load i32* %arrayidx12.3.6.7, align 4
  %arrayidx15.3.6.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.7, i32 0, i64 6
  %2290 = load i32* %arrayidx16.3.6.7, align 4
  %mul.3.6.7 = mul nsw i32 %2289, %2290
  %arrayidx19.3.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.7, i32 0, i64 6
  %2291 = load i32* %arrayidx20.3.6.7, align 4
  %add.3.6.7 = add nsw i32 %2291, %mul.3.6.7
  store i32 %add.3.6.7, i32* %arrayidx20.3.6.7, align 4
  br label %for.inc.3.6.7

for.inc.3.6.7:                                    ; preds = %for.inc.2.6.7
  %arrayidx11.4.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.7, i32 0, i64 4
  %2292 = load i32* %arrayidx12.4.6.7, align 4
  %arrayidx15.4.6.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.7, i32 0, i64 6
  %2293 = load i32* %arrayidx16.4.6.7, align 4
  %mul.4.6.7 = mul nsw i32 %2292, %2293
  %arrayidx19.4.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.7, i32 0, i64 6
  %2294 = load i32* %arrayidx20.4.6.7, align 4
  %add.4.6.7 = add nsw i32 %2294, %mul.4.6.7
  store i32 %add.4.6.7, i32* %arrayidx20.4.6.7, align 4
  br label %for.inc.4.6.7

for.inc.4.6.7:                                    ; preds = %for.inc.3.6.7
  %arrayidx11.5.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.7, i32 0, i64 5
  %2295 = load i32* %arrayidx12.5.6.7, align 4
  %arrayidx15.5.6.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.7, i32 0, i64 6
  %2296 = load i32* %arrayidx16.5.6.7, align 4
  %mul.5.6.7 = mul nsw i32 %2295, %2296
  %arrayidx19.5.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.7, i32 0, i64 6
  %2297 = load i32* %arrayidx20.5.6.7, align 4
  %add.5.6.7 = add nsw i32 %2297, %mul.5.6.7
  store i32 %add.5.6.7, i32* %arrayidx20.5.6.7, align 4
  br label %for.inc.5.6.7

for.inc.5.6.7:                                    ; preds = %for.inc.4.6.7
  %arrayidx11.6.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.7, i32 0, i64 6
  %2298 = load i32* %arrayidx12.6.6.7, align 4
  %arrayidx15.6.6.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.7, i32 0, i64 6
  %2299 = load i32* %arrayidx16.6.6.7, align 4
  %mul.6.6.7 = mul nsw i32 %2298, %2299
  %arrayidx19.6.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.7, i32 0, i64 6
  %2300 = load i32* %arrayidx20.6.6.7, align 4
  %add.6.6.7 = add nsw i32 %2300, %mul.6.6.7
  store i32 %add.6.6.7, i32* %arrayidx20.6.6.7, align 4
  br label %for.inc.6.6.7

for.inc.6.6.7:                                    ; preds = %for.inc.5.6.7
  %arrayidx11.7.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.7, i32 0, i64 7
  %2301 = load i32* %arrayidx12.7.6.7, align 4
  %arrayidx15.7.6.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.7, i32 0, i64 6
  %2302 = load i32* %arrayidx16.7.6.7, align 4
  %mul.7.6.7 = mul nsw i32 %2301, %2302
  %arrayidx19.7.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.7, i32 0, i64 6
  %2303 = load i32* %arrayidx20.7.6.7, align 4
  %add.7.6.7 = add nsw i32 %2303, %mul.7.6.7
  store i32 %add.7.6.7, i32* %arrayidx20.7.6.7, align 4
  br label %for.inc.7.6.7

for.inc.7.6.7:                                    ; preds = %for.inc.6.6.7
  %arrayidx11.8.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.7, i32 0, i64 8
  %2304 = load i32* %arrayidx12.8.6.7, align 4
  %arrayidx15.8.6.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.7, i32 0, i64 6
  %2305 = load i32* %arrayidx16.8.6.7, align 4
  %mul.8.6.7 = mul nsw i32 %2304, %2305
  %arrayidx19.8.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.7, i32 0, i64 6
  %2306 = load i32* %arrayidx20.8.6.7, align 4
  %add.8.6.7 = add nsw i32 %2306, %mul.8.6.7
  store i32 %add.8.6.7, i32* %arrayidx20.8.6.7, align 4
  br label %for.inc.8.6.7

for.inc.8.6.7:                                    ; preds = %for.inc.7.6.7
  %arrayidx11.9.6.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.6.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.7, i32 0, i64 9
  %2307 = load i32* %arrayidx12.9.6.7, align 4
  %arrayidx15.9.6.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.7, i32 0, i64 6
  %2308 = load i32* %arrayidx16.9.6.7, align 4
  %mul.9.6.7 = mul nsw i32 %2307, %2308
  %arrayidx19.9.6.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.6.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.7, i32 0, i64 6
  %2309 = load i32* %arrayidx20.9.6.7, align 4
  %add.9.6.7 = add nsw i32 %2309, %mul.9.6.7
  store i32 %add.9.6.7, i32* %arrayidx20.9.6.7, align 4
  br label %for.inc.9.6.7

for.inc.9.6.7:                                    ; preds = %for.inc.8.6.7
  br label %for.inc21.6.7

for.inc21.6.7:                                    ; preds = %for.inc.9.6.7
  %arrayidx.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.7.7 = getelementptr inbounds [10 x i32]* %arrayidx.7.7, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.7, align 4
  br label %for.body8.7.7

for.body8.7.7:                                    ; preds = %for.inc21.6.7
  %arrayidx11.764.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.765.7 = getelementptr inbounds [10 x i32]* %arrayidx11.764.7, i32 0, i64 0
  %2310 = load i32* %arrayidx12.765.7, align 4
  %arrayidx16.766.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %2311 = load i32* %arrayidx16.766.7, align 4
  %mul.767.7 = mul nsw i32 %2310, %2311
  %arrayidx19.769.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.770.7 = getelementptr inbounds [10 x i32]* %arrayidx19.769.7, i32 0, i64 7
  %2312 = load i32* %arrayidx20.770.7, align 4
  %add.771.7 = add nsw i32 %2312, %mul.767.7
  store i32 %add.771.7, i32* %arrayidx20.770.7, align 4
  br label %for.inc.772.7

for.inc.772.7:                                    ; preds = %for.body8.7.7
  %arrayidx11.1.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.7, i32 0, i64 1
  %2313 = load i32* %arrayidx12.1.7.7, align 4
  %arrayidx15.1.7.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.7, i32 0, i64 7
  %2314 = load i32* %arrayidx16.1.7.7, align 4
  %mul.1.7.7 = mul nsw i32 %2313, %2314
  %arrayidx19.1.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.7, i32 0, i64 7
  %2315 = load i32* %arrayidx20.1.7.7, align 4
  %add.1.7.7 = add nsw i32 %2315, %mul.1.7.7
  store i32 %add.1.7.7, i32* %arrayidx20.1.7.7, align 4
  br label %for.inc.1.7.7

for.inc.1.7.7:                                    ; preds = %for.inc.772.7
  %arrayidx11.2.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.7, i32 0, i64 2
  %2316 = load i32* %arrayidx12.2.7.7, align 4
  %arrayidx15.2.7.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.7, i32 0, i64 7
  %2317 = load i32* %arrayidx16.2.7.7, align 4
  %mul.2.7.7 = mul nsw i32 %2316, %2317
  %arrayidx19.2.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.7, i32 0, i64 7
  %2318 = load i32* %arrayidx20.2.7.7, align 4
  %add.2.7.7 = add nsw i32 %2318, %mul.2.7.7
  store i32 %add.2.7.7, i32* %arrayidx20.2.7.7, align 4
  br label %for.inc.2.7.7

for.inc.2.7.7:                                    ; preds = %for.inc.1.7.7
  %arrayidx11.3.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.7, i32 0, i64 3
  %2319 = load i32* %arrayidx12.3.7.7, align 4
  %arrayidx15.3.7.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.7, i32 0, i64 7
  %2320 = load i32* %arrayidx16.3.7.7, align 4
  %mul.3.7.7 = mul nsw i32 %2319, %2320
  %arrayidx19.3.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.7, i32 0, i64 7
  %2321 = load i32* %arrayidx20.3.7.7, align 4
  %add.3.7.7 = add nsw i32 %2321, %mul.3.7.7
  store i32 %add.3.7.7, i32* %arrayidx20.3.7.7, align 4
  br label %for.inc.3.7.7

for.inc.3.7.7:                                    ; preds = %for.inc.2.7.7
  %arrayidx11.4.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.7, i32 0, i64 4
  %2322 = load i32* %arrayidx12.4.7.7, align 4
  %arrayidx15.4.7.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.7, i32 0, i64 7
  %2323 = load i32* %arrayidx16.4.7.7, align 4
  %mul.4.7.7 = mul nsw i32 %2322, %2323
  %arrayidx19.4.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.7, i32 0, i64 7
  %2324 = load i32* %arrayidx20.4.7.7, align 4
  %add.4.7.7 = add nsw i32 %2324, %mul.4.7.7
  store i32 %add.4.7.7, i32* %arrayidx20.4.7.7, align 4
  br label %for.inc.4.7.7

for.inc.4.7.7:                                    ; preds = %for.inc.3.7.7
  %arrayidx11.5.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.7, i32 0, i64 5
  %2325 = load i32* %arrayidx12.5.7.7, align 4
  %arrayidx15.5.7.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.7, i32 0, i64 7
  %2326 = load i32* %arrayidx16.5.7.7, align 4
  %mul.5.7.7 = mul nsw i32 %2325, %2326
  %arrayidx19.5.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.7, i32 0, i64 7
  %2327 = load i32* %arrayidx20.5.7.7, align 4
  %add.5.7.7 = add nsw i32 %2327, %mul.5.7.7
  store i32 %add.5.7.7, i32* %arrayidx20.5.7.7, align 4
  br label %for.inc.5.7.7

for.inc.5.7.7:                                    ; preds = %for.inc.4.7.7
  %arrayidx11.6.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.7, i32 0, i64 6
  %2328 = load i32* %arrayidx12.6.7.7, align 4
  %arrayidx15.6.7.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.7, i32 0, i64 7
  %2329 = load i32* %arrayidx16.6.7.7, align 4
  %mul.6.7.7 = mul nsw i32 %2328, %2329
  %arrayidx19.6.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.7, i32 0, i64 7
  %2330 = load i32* %arrayidx20.6.7.7, align 4
  %add.6.7.7 = add nsw i32 %2330, %mul.6.7.7
  store i32 %add.6.7.7, i32* %arrayidx20.6.7.7, align 4
  br label %for.inc.6.7.7

for.inc.6.7.7:                                    ; preds = %for.inc.5.7.7
  %arrayidx11.7.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.7, i32 0, i64 7
  %2331 = load i32* %arrayidx12.7.7.7, align 4
  %arrayidx15.7.7.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.7, i32 0, i64 7
  %2332 = load i32* %arrayidx16.7.7.7, align 4
  %mul.7.7.7 = mul nsw i32 %2331, %2332
  %arrayidx19.7.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.7, i32 0, i64 7
  %2333 = load i32* %arrayidx20.7.7.7, align 4
  %add.7.7.7 = add nsw i32 %2333, %mul.7.7.7
  store i32 %add.7.7.7, i32* %arrayidx20.7.7.7, align 4
  br label %for.inc.7.7.7

for.inc.7.7.7:                                    ; preds = %for.inc.6.7.7
  %arrayidx11.8.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.7, i32 0, i64 8
  %2334 = load i32* %arrayidx12.8.7.7, align 4
  %arrayidx15.8.7.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.7, i32 0, i64 7
  %2335 = load i32* %arrayidx16.8.7.7, align 4
  %mul.8.7.7 = mul nsw i32 %2334, %2335
  %arrayidx19.8.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.7, i32 0, i64 7
  %2336 = load i32* %arrayidx20.8.7.7, align 4
  %add.8.7.7 = add nsw i32 %2336, %mul.8.7.7
  store i32 %add.8.7.7, i32* %arrayidx20.8.7.7, align 4
  br label %for.inc.8.7.7

for.inc.8.7.7:                                    ; preds = %for.inc.7.7.7
  %arrayidx11.9.7.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.7.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.7, i32 0, i64 9
  %2337 = load i32* %arrayidx12.9.7.7, align 4
  %arrayidx15.9.7.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.7, i32 0, i64 7
  %2338 = load i32* %arrayidx16.9.7.7, align 4
  %mul.9.7.7 = mul nsw i32 %2337, %2338
  %arrayidx19.9.7.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.7.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.7, i32 0, i64 7
  %2339 = load i32* %arrayidx20.9.7.7, align 4
  %add.9.7.7 = add nsw i32 %2339, %mul.9.7.7
  store i32 %add.9.7.7, i32* %arrayidx20.9.7.7, align 4
  br label %for.inc.9.7.7

for.inc.9.7.7:                                    ; preds = %for.inc.8.7.7
  br label %for.inc21.7.7

for.inc21.7.7:                                    ; preds = %for.inc.9.7.7
  %arrayidx.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.8.7 = getelementptr inbounds [10 x i32]* %arrayidx.8.7, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.7, align 4
  br label %for.body8.8.7

for.body8.8.7:                                    ; preds = %for.inc21.7.7
  %arrayidx11.874.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.875.7 = getelementptr inbounds [10 x i32]* %arrayidx11.874.7, i32 0, i64 0
  %2340 = load i32* %arrayidx12.875.7, align 4
  %arrayidx16.876.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %2341 = load i32* %arrayidx16.876.7, align 4
  %mul.877.7 = mul nsw i32 %2340, %2341
  %arrayidx19.879.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.880.7 = getelementptr inbounds [10 x i32]* %arrayidx19.879.7, i32 0, i64 8
  %2342 = load i32* %arrayidx20.880.7, align 4
  %add.881.7 = add nsw i32 %2342, %mul.877.7
  store i32 %add.881.7, i32* %arrayidx20.880.7, align 4
  br label %for.inc.882.7

for.inc.882.7:                                    ; preds = %for.body8.8.7
  %arrayidx11.1.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.7, i32 0, i64 1
  %2343 = load i32* %arrayidx12.1.8.7, align 4
  %arrayidx15.1.8.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.7, i32 0, i64 8
  %2344 = load i32* %arrayidx16.1.8.7, align 4
  %mul.1.8.7 = mul nsw i32 %2343, %2344
  %arrayidx19.1.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.7, i32 0, i64 8
  %2345 = load i32* %arrayidx20.1.8.7, align 4
  %add.1.8.7 = add nsw i32 %2345, %mul.1.8.7
  store i32 %add.1.8.7, i32* %arrayidx20.1.8.7, align 4
  br label %for.inc.1.8.7

for.inc.1.8.7:                                    ; preds = %for.inc.882.7
  %arrayidx11.2.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.7, i32 0, i64 2
  %2346 = load i32* %arrayidx12.2.8.7, align 4
  %arrayidx15.2.8.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.7, i32 0, i64 8
  %2347 = load i32* %arrayidx16.2.8.7, align 4
  %mul.2.8.7 = mul nsw i32 %2346, %2347
  %arrayidx19.2.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.7, i32 0, i64 8
  %2348 = load i32* %arrayidx20.2.8.7, align 4
  %add.2.8.7 = add nsw i32 %2348, %mul.2.8.7
  store i32 %add.2.8.7, i32* %arrayidx20.2.8.7, align 4
  br label %for.inc.2.8.7

for.inc.2.8.7:                                    ; preds = %for.inc.1.8.7
  %arrayidx11.3.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.7, i32 0, i64 3
  %2349 = load i32* %arrayidx12.3.8.7, align 4
  %arrayidx15.3.8.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.7, i32 0, i64 8
  %2350 = load i32* %arrayidx16.3.8.7, align 4
  %mul.3.8.7 = mul nsw i32 %2349, %2350
  %arrayidx19.3.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.7, i32 0, i64 8
  %2351 = load i32* %arrayidx20.3.8.7, align 4
  %add.3.8.7 = add nsw i32 %2351, %mul.3.8.7
  store i32 %add.3.8.7, i32* %arrayidx20.3.8.7, align 4
  br label %for.inc.3.8.7

for.inc.3.8.7:                                    ; preds = %for.inc.2.8.7
  %arrayidx11.4.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.7, i32 0, i64 4
  %2352 = load i32* %arrayidx12.4.8.7, align 4
  %arrayidx15.4.8.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.7, i32 0, i64 8
  %2353 = load i32* %arrayidx16.4.8.7, align 4
  %mul.4.8.7 = mul nsw i32 %2352, %2353
  %arrayidx19.4.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.7, i32 0, i64 8
  %2354 = load i32* %arrayidx20.4.8.7, align 4
  %add.4.8.7 = add nsw i32 %2354, %mul.4.8.7
  store i32 %add.4.8.7, i32* %arrayidx20.4.8.7, align 4
  br label %for.inc.4.8.7

for.inc.4.8.7:                                    ; preds = %for.inc.3.8.7
  %arrayidx11.5.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.7, i32 0, i64 5
  %2355 = load i32* %arrayidx12.5.8.7, align 4
  %arrayidx15.5.8.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.7, i32 0, i64 8
  %2356 = load i32* %arrayidx16.5.8.7, align 4
  %mul.5.8.7 = mul nsw i32 %2355, %2356
  %arrayidx19.5.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.7, i32 0, i64 8
  %2357 = load i32* %arrayidx20.5.8.7, align 4
  %add.5.8.7 = add nsw i32 %2357, %mul.5.8.7
  store i32 %add.5.8.7, i32* %arrayidx20.5.8.7, align 4
  br label %for.inc.5.8.7

for.inc.5.8.7:                                    ; preds = %for.inc.4.8.7
  %arrayidx11.6.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.7, i32 0, i64 6
  %2358 = load i32* %arrayidx12.6.8.7, align 4
  %arrayidx15.6.8.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.7, i32 0, i64 8
  %2359 = load i32* %arrayidx16.6.8.7, align 4
  %mul.6.8.7 = mul nsw i32 %2358, %2359
  %arrayidx19.6.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.7, i32 0, i64 8
  %2360 = load i32* %arrayidx20.6.8.7, align 4
  %add.6.8.7 = add nsw i32 %2360, %mul.6.8.7
  store i32 %add.6.8.7, i32* %arrayidx20.6.8.7, align 4
  br label %for.inc.6.8.7

for.inc.6.8.7:                                    ; preds = %for.inc.5.8.7
  %arrayidx11.7.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.7, i32 0, i64 7
  %2361 = load i32* %arrayidx12.7.8.7, align 4
  %arrayidx15.7.8.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.7, i32 0, i64 8
  %2362 = load i32* %arrayidx16.7.8.7, align 4
  %mul.7.8.7 = mul nsw i32 %2361, %2362
  %arrayidx19.7.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.7, i32 0, i64 8
  %2363 = load i32* %arrayidx20.7.8.7, align 4
  %add.7.8.7 = add nsw i32 %2363, %mul.7.8.7
  store i32 %add.7.8.7, i32* %arrayidx20.7.8.7, align 4
  br label %for.inc.7.8.7

for.inc.7.8.7:                                    ; preds = %for.inc.6.8.7
  %arrayidx11.8.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.7, i32 0, i64 8
  %2364 = load i32* %arrayidx12.8.8.7, align 4
  %arrayidx15.8.8.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.7, i32 0, i64 8
  %2365 = load i32* %arrayidx16.8.8.7, align 4
  %mul.8.8.7 = mul nsw i32 %2364, %2365
  %arrayidx19.8.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.7, i32 0, i64 8
  %2366 = load i32* %arrayidx20.8.8.7, align 4
  %add.8.8.7 = add nsw i32 %2366, %mul.8.8.7
  store i32 %add.8.8.7, i32* %arrayidx20.8.8.7, align 4
  br label %for.inc.8.8.7

for.inc.8.8.7:                                    ; preds = %for.inc.7.8.7
  %arrayidx11.9.8.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.8.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.7, i32 0, i64 9
  %2367 = load i32* %arrayidx12.9.8.7, align 4
  %arrayidx15.9.8.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.7, i32 0, i64 8
  %2368 = load i32* %arrayidx16.9.8.7, align 4
  %mul.9.8.7 = mul nsw i32 %2367, %2368
  %arrayidx19.9.8.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.8.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.7, i32 0, i64 8
  %2369 = load i32* %arrayidx20.9.8.7, align 4
  %add.9.8.7 = add nsw i32 %2369, %mul.9.8.7
  store i32 %add.9.8.7, i32* %arrayidx20.9.8.7, align 4
  br label %for.inc.9.8.7

for.inc.9.8.7:                                    ; preds = %for.inc.8.8.7
  br label %for.inc21.8.7

for.inc21.8.7:                                    ; preds = %for.inc.9.8.7
  %arrayidx.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx5.9.7 = getelementptr inbounds [10 x i32]* %arrayidx.9.7, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.7, align 4
  br label %for.body8.9.7

for.body8.9.7:                                    ; preds = %for.inc21.8.7
  %arrayidx11.984.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.985.7 = getelementptr inbounds [10 x i32]* %arrayidx11.984.7, i32 0, i64 0
  %2370 = load i32* %arrayidx12.985.7, align 4
  %arrayidx16.986.7 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %2371 = load i32* %arrayidx16.986.7, align 4
  %mul.987.7 = mul nsw i32 %2370, %2371
  %arrayidx19.989.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.990.7 = getelementptr inbounds [10 x i32]* %arrayidx19.989.7, i32 0, i64 9
  %2372 = load i32* %arrayidx20.990.7, align 4
  %add.991.7 = add nsw i32 %2372, %mul.987.7
  store i32 %add.991.7, i32* %arrayidx20.990.7, align 4
  br label %for.inc.992.7

for.inc.992.7:                                    ; preds = %for.body8.9.7
  %arrayidx11.1.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.1.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.7, i32 0, i64 1
  %2373 = load i32* %arrayidx12.1.9.7, align 4
  %arrayidx15.1.9.7 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.7, i32 0, i64 9
  %2374 = load i32* %arrayidx16.1.9.7, align 4
  %mul.1.9.7 = mul nsw i32 %2373, %2374
  %arrayidx19.1.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.1.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.7, i32 0, i64 9
  %2375 = load i32* %arrayidx20.1.9.7, align 4
  %add.1.9.7 = add nsw i32 %2375, %mul.1.9.7
  store i32 %add.1.9.7, i32* %arrayidx20.1.9.7, align 4
  br label %for.inc.1.9.7

for.inc.1.9.7:                                    ; preds = %for.inc.992.7
  %arrayidx11.2.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.2.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.7, i32 0, i64 2
  %2376 = load i32* %arrayidx12.2.9.7, align 4
  %arrayidx15.2.9.7 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.7, i32 0, i64 9
  %2377 = load i32* %arrayidx16.2.9.7, align 4
  %mul.2.9.7 = mul nsw i32 %2376, %2377
  %arrayidx19.2.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.2.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.7, i32 0, i64 9
  %2378 = load i32* %arrayidx20.2.9.7, align 4
  %add.2.9.7 = add nsw i32 %2378, %mul.2.9.7
  store i32 %add.2.9.7, i32* %arrayidx20.2.9.7, align 4
  br label %for.inc.2.9.7

for.inc.2.9.7:                                    ; preds = %for.inc.1.9.7
  %arrayidx11.3.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.3.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.7, i32 0, i64 3
  %2379 = load i32* %arrayidx12.3.9.7, align 4
  %arrayidx15.3.9.7 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.7, i32 0, i64 9
  %2380 = load i32* %arrayidx16.3.9.7, align 4
  %mul.3.9.7 = mul nsw i32 %2379, %2380
  %arrayidx19.3.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.3.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.7, i32 0, i64 9
  %2381 = load i32* %arrayidx20.3.9.7, align 4
  %add.3.9.7 = add nsw i32 %2381, %mul.3.9.7
  store i32 %add.3.9.7, i32* %arrayidx20.3.9.7, align 4
  br label %for.inc.3.9.7

for.inc.3.9.7:                                    ; preds = %for.inc.2.9.7
  %arrayidx11.4.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.4.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.7, i32 0, i64 4
  %2382 = load i32* %arrayidx12.4.9.7, align 4
  %arrayidx15.4.9.7 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.7, i32 0, i64 9
  %2383 = load i32* %arrayidx16.4.9.7, align 4
  %mul.4.9.7 = mul nsw i32 %2382, %2383
  %arrayidx19.4.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.4.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.7, i32 0, i64 9
  %2384 = load i32* %arrayidx20.4.9.7, align 4
  %add.4.9.7 = add nsw i32 %2384, %mul.4.9.7
  store i32 %add.4.9.7, i32* %arrayidx20.4.9.7, align 4
  br label %for.inc.4.9.7

for.inc.4.9.7:                                    ; preds = %for.inc.3.9.7
  %arrayidx11.5.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.5.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.7, i32 0, i64 5
  %2385 = load i32* %arrayidx12.5.9.7, align 4
  %arrayidx15.5.9.7 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.7, i32 0, i64 9
  %2386 = load i32* %arrayidx16.5.9.7, align 4
  %mul.5.9.7 = mul nsw i32 %2385, %2386
  %arrayidx19.5.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.5.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.7, i32 0, i64 9
  %2387 = load i32* %arrayidx20.5.9.7, align 4
  %add.5.9.7 = add nsw i32 %2387, %mul.5.9.7
  store i32 %add.5.9.7, i32* %arrayidx20.5.9.7, align 4
  br label %for.inc.5.9.7

for.inc.5.9.7:                                    ; preds = %for.inc.4.9.7
  %arrayidx11.6.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.6.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.7, i32 0, i64 6
  %2388 = load i32* %arrayidx12.6.9.7, align 4
  %arrayidx15.6.9.7 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.7, i32 0, i64 9
  %2389 = load i32* %arrayidx16.6.9.7, align 4
  %mul.6.9.7 = mul nsw i32 %2388, %2389
  %arrayidx19.6.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.6.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.7, i32 0, i64 9
  %2390 = load i32* %arrayidx20.6.9.7, align 4
  %add.6.9.7 = add nsw i32 %2390, %mul.6.9.7
  store i32 %add.6.9.7, i32* %arrayidx20.6.9.7, align 4
  br label %for.inc.6.9.7

for.inc.6.9.7:                                    ; preds = %for.inc.5.9.7
  %arrayidx11.7.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.7.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.7, i32 0, i64 7
  %2391 = load i32* %arrayidx12.7.9.7, align 4
  %arrayidx15.7.9.7 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.7, i32 0, i64 9
  %2392 = load i32* %arrayidx16.7.9.7, align 4
  %mul.7.9.7 = mul nsw i32 %2391, %2392
  %arrayidx19.7.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.7.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.7, i32 0, i64 9
  %2393 = load i32* %arrayidx20.7.9.7, align 4
  %add.7.9.7 = add nsw i32 %2393, %mul.7.9.7
  store i32 %add.7.9.7, i32* %arrayidx20.7.9.7, align 4
  br label %for.inc.7.9.7

for.inc.7.9.7:                                    ; preds = %for.inc.6.9.7
  %arrayidx11.8.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.8.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.7, i32 0, i64 8
  %2394 = load i32* %arrayidx12.8.9.7, align 4
  %arrayidx15.8.9.7 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.7, i32 0, i64 9
  %2395 = load i32* %arrayidx16.8.9.7, align 4
  %mul.8.9.7 = mul nsw i32 %2394, %2395
  %arrayidx19.8.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.8.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.7, i32 0, i64 9
  %2396 = load i32* %arrayidx20.8.9.7, align 4
  %add.8.9.7 = add nsw i32 %2396, %mul.8.9.7
  store i32 %add.8.9.7, i32* %arrayidx20.8.9.7, align 4
  br label %for.inc.8.9.7

for.inc.8.9.7:                                    ; preds = %for.inc.7.9.7
  %arrayidx11.9.9.7 = getelementptr inbounds [10 x i32]* %a, i64 7
  %arrayidx12.9.9.7 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.7, i32 0, i64 9
  %2397 = load i32* %arrayidx12.9.9.7, align 4
  %arrayidx15.9.9.7 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.7 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.7, i32 0, i64 9
  %2398 = load i32* %arrayidx16.9.9.7, align 4
  %mul.9.9.7 = mul nsw i32 %2397, %2398
  %arrayidx19.9.9.7 = getelementptr inbounds [10 x i32]* %c, i64 7
  %arrayidx20.9.9.7 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.7, i32 0, i64 9
  %2399 = load i32* %arrayidx20.9.9.7, align 4
  %add.9.9.7 = add nsw i32 %2399, %mul.9.9.7
  store i32 %add.9.9.7, i32* %arrayidx20.9.9.7, align 4
  br label %for.inc.9.9.7

for.inc.9.9.7:                                    ; preds = %for.inc.8.9.7
  br label %for.inc21.9.7

for.inc21.9.7:                                    ; preds = %for.inc.9.9.7
  br label %for.inc24.7

for.inc24.7:                                      ; preds = %for.inc21.9.7
  br label %for.body3.8

for.body3.8:                                      ; preds = %for.inc24.7
  %arrayidx.8745 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.8746 = getelementptr inbounds [10 x i32]* %arrayidx.8745, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.8746, align 4
  br label %for.body8.8754

for.body8.8754:                                   ; preds = %for.body3.8
  %arrayidx11.8747 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8748 = getelementptr inbounds [10 x i32]* %arrayidx11.8747, i32 0, i64 0
  %2400 = load i32* %arrayidx12.8748, align 4
  %arrayidx16.8749 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %2401 = load i32* %arrayidx16.8749, align 4
  %mul.8750 = mul nsw i32 %2400, %2401
  %arrayidx19.8751 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8752 = getelementptr inbounds [10 x i32]* %arrayidx19.8751, i32 0, i64 0
  %2402 = load i32* %arrayidx20.8752, align 4
  %add.8753 = add nsw i32 %2402, %mul.8750
  store i32 %add.8753, i32* %arrayidx20.8752, align 4
  br label %for.inc.8763

for.inc.8763:                                     ; preds = %for.body8.8754
  %arrayidx11.1.8755 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.8756 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8755, i32 0, i64 1
  %2403 = load i32* %arrayidx12.1.8756, align 4
  %arrayidx15.1.8757 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8758 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8757, i32 0, i64 0
  %2404 = load i32* %arrayidx16.1.8758, align 4
  %mul.1.8759 = mul nsw i32 %2403, %2404
  %arrayidx19.1.8760 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.8761 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8760, i32 0, i64 0
  %2405 = load i32* %arrayidx20.1.8761, align 4
  %add.1.8762 = add nsw i32 %2405, %mul.1.8759
  store i32 %add.1.8762, i32* %arrayidx20.1.8761, align 4
  br label %for.inc.1.8772

for.inc.1.8772:                                   ; preds = %for.inc.8763
  %arrayidx11.2.8764 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.8765 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8764, i32 0, i64 2
  %2406 = load i32* %arrayidx12.2.8765, align 4
  %arrayidx15.2.8766 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8767 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8766, i32 0, i64 0
  %2407 = load i32* %arrayidx16.2.8767, align 4
  %mul.2.8768 = mul nsw i32 %2406, %2407
  %arrayidx19.2.8769 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.8770 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8769, i32 0, i64 0
  %2408 = load i32* %arrayidx20.2.8770, align 4
  %add.2.8771 = add nsw i32 %2408, %mul.2.8768
  store i32 %add.2.8771, i32* %arrayidx20.2.8770, align 4
  br label %for.inc.2.8781

for.inc.2.8781:                                   ; preds = %for.inc.1.8772
  %arrayidx11.3.8773 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.8774 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8773, i32 0, i64 3
  %2409 = load i32* %arrayidx12.3.8774, align 4
  %arrayidx15.3.8775 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8776 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8775, i32 0, i64 0
  %2410 = load i32* %arrayidx16.3.8776, align 4
  %mul.3.8777 = mul nsw i32 %2409, %2410
  %arrayidx19.3.8778 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.8779 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8778, i32 0, i64 0
  %2411 = load i32* %arrayidx20.3.8779, align 4
  %add.3.8780 = add nsw i32 %2411, %mul.3.8777
  store i32 %add.3.8780, i32* %arrayidx20.3.8779, align 4
  br label %for.inc.3.8790

for.inc.3.8790:                                   ; preds = %for.inc.2.8781
  %arrayidx11.4.8782 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.8783 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8782, i32 0, i64 4
  %2412 = load i32* %arrayidx12.4.8783, align 4
  %arrayidx15.4.8784 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8785 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8784, i32 0, i64 0
  %2413 = load i32* %arrayidx16.4.8785, align 4
  %mul.4.8786 = mul nsw i32 %2412, %2413
  %arrayidx19.4.8787 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.8788 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8787, i32 0, i64 0
  %2414 = load i32* %arrayidx20.4.8788, align 4
  %add.4.8789 = add nsw i32 %2414, %mul.4.8786
  store i32 %add.4.8789, i32* %arrayidx20.4.8788, align 4
  br label %for.inc.4.8799

for.inc.4.8799:                                   ; preds = %for.inc.3.8790
  %arrayidx11.5.8791 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.8792 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8791, i32 0, i64 5
  %2415 = load i32* %arrayidx12.5.8792, align 4
  %arrayidx15.5.8793 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8794 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8793, i32 0, i64 0
  %2416 = load i32* %arrayidx16.5.8794, align 4
  %mul.5.8795 = mul nsw i32 %2415, %2416
  %arrayidx19.5.8796 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.8797 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8796, i32 0, i64 0
  %2417 = load i32* %arrayidx20.5.8797, align 4
  %add.5.8798 = add nsw i32 %2417, %mul.5.8795
  store i32 %add.5.8798, i32* %arrayidx20.5.8797, align 4
  br label %for.inc.5.8808

for.inc.5.8808:                                   ; preds = %for.inc.4.8799
  %arrayidx11.6.8800 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.8801 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8800, i32 0, i64 6
  %2418 = load i32* %arrayidx12.6.8801, align 4
  %arrayidx15.6.8802 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8803 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8802, i32 0, i64 0
  %2419 = load i32* %arrayidx16.6.8803, align 4
  %mul.6.8804 = mul nsw i32 %2418, %2419
  %arrayidx19.6.8805 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.8806 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8805, i32 0, i64 0
  %2420 = load i32* %arrayidx20.6.8806, align 4
  %add.6.8807 = add nsw i32 %2420, %mul.6.8804
  store i32 %add.6.8807, i32* %arrayidx20.6.8806, align 4
  br label %for.inc.6.8817

for.inc.6.8817:                                   ; preds = %for.inc.5.8808
  %arrayidx11.7.8809 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.8810 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8809, i32 0, i64 7
  %2421 = load i32* %arrayidx12.7.8810, align 4
  %arrayidx15.7.8811 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8812 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8811, i32 0, i64 0
  %2422 = load i32* %arrayidx16.7.8812, align 4
  %mul.7.8813 = mul nsw i32 %2421, %2422
  %arrayidx19.7.8814 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.8815 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8814, i32 0, i64 0
  %2423 = load i32* %arrayidx20.7.8815, align 4
  %add.7.8816 = add nsw i32 %2423, %mul.7.8813
  store i32 %add.7.8816, i32* %arrayidx20.7.8815, align 4
  br label %for.inc.7.8826

for.inc.7.8826:                                   ; preds = %for.inc.6.8817
  %arrayidx11.8.8818 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.8819 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8818, i32 0, i64 8
  %2424 = load i32* %arrayidx12.8.8819, align 4
  %arrayidx15.8.8820 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8821 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8820, i32 0, i64 0
  %2425 = load i32* %arrayidx16.8.8821, align 4
  %mul.8.8822 = mul nsw i32 %2424, %2425
  %arrayidx19.8.8823 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.8824 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8823, i32 0, i64 0
  %2426 = load i32* %arrayidx20.8.8824, align 4
  %add.8.8825 = add nsw i32 %2426, %mul.8.8822
  store i32 %add.8.8825, i32* %arrayidx20.8.8824, align 4
  br label %for.inc.8.8835

for.inc.8.8835:                                   ; preds = %for.inc.7.8826
  %arrayidx11.9.8827 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.8828 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8827, i32 0, i64 9
  %2427 = load i32* %arrayidx12.9.8828, align 4
  %arrayidx15.9.8829 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8830 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8829, i32 0, i64 0
  %2428 = load i32* %arrayidx16.9.8830, align 4
  %mul.9.8831 = mul nsw i32 %2427, %2428
  %arrayidx19.9.8832 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.8833 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8832, i32 0, i64 0
  %2429 = load i32* %arrayidx20.9.8833, align 4
  %add.9.8834 = add nsw i32 %2429, %mul.9.8831
  store i32 %add.9.8834, i32* %arrayidx20.9.8833, align 4
  br label %for.inc.9.8836

for.inc.9.8836:                                   ; preds = %for.inc.8.8835
  br label %for.inc21.8837

for.inc21.8837:                                   ; preds = %for.inc.9.8836
  %arrayidx.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.1.8 = getelementptr inbounds [10 x i32]* %arrayidx.1.8, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.8, align 4
  br label %for.body8.1.8

for.body8.1.8:                                    ; preds = %for.inc21.8837
  %arrayidx11.14.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.15.8 = getelementptr inbounds [10 x i32]* %arrayidx11.14.8, i32 0, i64 0
  %2430 = load i32* %arrayidx12.15.8, align 4
  %arrayidx16.16.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %2431 = load i32* %arrayidx16.16.8, align 4
  %mul.17.8 = mul nsw i32 %2430, %2431
  %arrayidx19.19.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.110.8 = getelementptr inbounds [10 x i32]* %arrayidx19.19.8, i32 0, i64 1
  %2432 = load i32* %arrayidx20.110.8, align 4
  %add.111.8 = add nsw i32 %2432, %mul.17.8
  store i32 %add.111.8, i32* %arrayidx20.110.8, align 4
  br label %for.inc.112.8

for.inc.112.8:                                    ; preds = %for.body8.1.8
  %arrayidx11.1.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.8, i32 0, i64 1
  %2433 = load i32* %arrayidx12.1.1.8, align 4
  %arrayidx15.1.1.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.8, i32 0, i64 1
  %2434 = load i32* %arrayidx16.1.1.8, align 4
  %mul.1.1.8 = mul nsw i32 %2433, %2434
  %arrayidx19.1.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.8, i32 0, i64 1
  %2435 = load i32* %arrayidx20.1.1.8, align 4
  %add.1.1.8 = add nsw i32 %2435, %mul.1.1.8
  store i32 %add.1.1.8, i32* %arrayidx20.1.1.8, align 4
  br label %for.inc.1.1.8

for.inc.1.1.8:                                    ; preds = %for.inc.112.8
  %arrayidx11.2.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.8, i32 0, i64 2
  %2436 = load i32* %arrayidx12.2.1.8, align 4
  %arrayidx15.2.1.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.8, i32 0, i64 1
  %2437 = load i32* %arrayidx16.2.1.8, align 4
  %mul.2.1.8 = mul nsw i32 %2436, %2437
  %arrayidx19.2.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.8, i32 0, i64 1
  %2438 = load i32* %arrayidx20.2.1.8, align 4
  %add.2.1.8 = add nsw i32 %2438, %mul.2.1.8
  store i32 %add.2.1.8, i32* %arrayidx20.2.1.8, align 4
  br label %for.inc.2.1.8

for.inc.2.1.8:                                    ; preds = %for.inc.1.1.8
  %arrayidx11.3.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.8, i32 0, i64 3
  %2439 = load i32* %arrayidx12.3.1.8, align 4
  %arrayidx15.3.1.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.8, i32 0, i64 1
  %2440 = load i32* %arrayidx16.3.1.8, align 4
  %mul.3.1.8 = mul nsw i32 %2439, %2440
  %arrayidx19.3.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.8, i32 0, i64 1
  %2441 = load i32* %arrayidx20.3.1.8, align 4
  %add.3.1.8 = add nsw i32 %2441, %mul.3.1.8
  store i32 %add.3.1.8, i32* %arrayidx20.3.1.8, align 4
  br label %for.inc.3.1.8

for.inc.3.1.8:                                    ; preds = %for.inc.2.1.8
  %arrayidx11.4.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.8, i32 0, i64 4
  %2442 = load i32* %arrayidx12.4.1.8, align 4
  %arrayidx15.4.1.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.8, i32 0, i64 1
  %2443 = load i32* %arrayidx16.4.1.8, align 4
  %mul.4.1.8 = mul nsw i32 %2442, %2443
  %arrayidx19.4.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.8, i32 0, i64 1
  %2444 = load i32* %arrayidx20.4.1.8, align 4
  %add.4.1.8 = add nsw i32 %2444, %mul.4.1.8
  store i32 %add.4.1.8, i32* %arrayidx20.4.1.8, align 4
  br label %for.inc.4.1.8

for.inc.4.1.8:                                    ; preds = %for.inc.3.1.8
  %arrayidx11.5.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.8, i32 0, i64 5
  %2445 = load i32* %arrayidx12.5.1.8, align 4
  %arrayidx15.5.1.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.8, i32 0, i64 1
  %2446 = load i32* %arrayidx16.5.1.8, align 4
  %mul.5.1.8 = mul nsw i32 %2445, %2446
  %arrayidx19.5.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.8, i32 0, i64 1
  %2447 = load i32* %arrayidx20.5.1.8, align 4
  %add.5.1.8 = add nsw i32 %2447, %mul.5.1.8
  store i32 %add.5.1.8, i32* %arrayidx20.5.1.8, align 4
  br label %for.inc.5.1.8

for.inc.5.1.8:                                    ; preds = %for.inc.4.1.8
  %arrayidx11.6.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.8, i32 0, i64 6
  %2448 = load i32* %arrayidx12.6.1.8, align 4
  %arrayidx15.6.1.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.8, i32 0, i64 1
  %2449 = load i32* %arrayidx16.6.1.8, align 4
  %mul.6.1.8 = mul nsw i32 %2448, %2449
  %arrayidx19.6.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.8, i32 0, i64 1
  %2450 = load i32* %arrayidx20.6.1.8, align 4
  %add.6.1.8 = add nsw i32 %2450, %mul.6.1.8
  store i32 %add.6.1.8, i32* %arrayidx20.6.1.8, align 4
  br label %for.inc.6.1.8

for.inc.6.1.8:                                    ; preds = %for.inc.5.1.8
  %arrayidx11.7.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.8, i32 0, i64 7
  %2451 = load i32* %arrayidx12.7.1.8, align 4
  %arrayidx15.7.1.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.8, i32 0, i64 1
  %2452 = load i32* %arrayidx16.7.1.8, align 4
  %mul.7.1.8 = mul nsw i32 %2451, %2452
  %arrayidx19.7.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.8, i32 0, i64 1
  %2453 = load i32* %arrayidx20.7.1.8, align 4
  %add.7.1.8 = add nsw i32 %2453, %mul.7.1.8
  store i32 %add.7.1.8, i32* %arrayidx20.7.1.8, align 4
  br label %for.inc.7.1.8

for.inc.7.1.8:                                    ; preds = %for.inc.6.1.8
  %arrayidx11.8.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.8, i32 0, i64 8
  %2454 = load i32* %arrayidx12.8.1.8, align 4
  %arrayidx15.8.1.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.8, i32 0, i64 1
  %2455 = load i32* %arrayidx16.8.1.8, align 4
  %mul.8.1.8 = mul nsw i32 %2454, %2455
  %arrayidx19.8.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.8, i32 0, i64 1
  %2456 = load i32* %arrayidx20.8.1.8, align 4
  %add.8.1.8 = add nsw i32 %2456, %mul.8.1.8
  store i32 %add.8.1.8, i32* %arrayidx20.8.1.8, align 4
  br label %for.inc.8.1.8

for.inc.8.1.8:                                    ; preds = %for.inc.7.1.8
  %arrayidx11.9.1.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.1.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.8, i32 0, i64 9
  %2457 = load i32* %arrayidx12.9.1.8, align 4
  %arrayidx15.9.1.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.8, i32 0, i64 1
  %2458 = load i32* %arrayidx16.9.1.8, align 4
  %mul.9.1.8 = mul nsw i32 %2457, %2458
  %arrayidx19.9.1.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.1.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.8, i32 0, i64 1
  %2459 = load i32* %arrayidx20.9.1.8, align 4
  %add.9.1.8 = add nsw i32 %2459, %mul.9.1.8
  store i32 %add.9.1.8, i32* %arrayidx20.9.1.8, align 4
  br label %for.inc.9.1.8

for.inc.9.1.8:                                    ; preds = %for.inc.8.1.8
  br label %for.inc21.1.8

for.inc21.1.8:                                    ; preds = %for.inc.9.1.8
  %arrayidx.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.2.8 = getelementptr inbounds [10 x i32]* %arrayidx.2.8, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.8, align 4
  br label %for.body8.2.8

for.body8.2.8:                                    ; preds = %for.inc21.1.8
  %arrayidx11.214.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.215.8 = getelementptr inbounds [10 x i32]* %arrayidx11.214.8, i32 0, i64 0
  %2460 = load i32* %arrayidx12.215.8, align 4
  %arrayidx16.216.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %2461 = load i32* %arrayidx16.216.8, align 4
  %mul.217.8 = mul nsw i32 %2460, %2461
  %arrayidx19.219.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.220.8 = getelementptr inbounds [10 x i32]* %arrayidx19.219.8, i32 0, i64 2
  %2462 = load i32* %arrayidx20.220.8, align 4
  %add.221.8 = add nsw i32 %2462, %mul.217.8
  store i32 %add.221.8, i32* %arrayidx20.220.8, align 4
  br label %for.inc.222.8

for.inc.222.8:                                    ; preds = %for.body8.2.8
  %arrayidx11.1.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.8, i32 0, i64 1
  %2463 = load i32* %arrayidx12.1.2.8, align 4
  %arrayidx15.1.2.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.8, i32 0, i64 2
  %2464 = load i32* %arrayidx16.1.2.8, align 4
  %mul.1.2.8 = mul nsw i32 %2463, %2464
  %arrayidx19.1.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.8, i32 0, i64 2
  %2465 = load i32* %arrayidx20.1.2.8, align 4
  %add.1.2.8 = add nsw i32 %2465, %mul.1.2.8
  store i32 %add.1.2.8, i32* %arrayidx20.1.2.8, align 4
  br label %for.inc.1.2.8

for.inc.1.2.8:                                    ; preds = %for.inc.222.8
  %arrayidx11.2.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.8, i32 0, i64 2
  %2466 = load i32* %arrayidx12.2.2.8, align 4
  %arrayidx15.2.2.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.8, i32 0, i64 2
  %2467 = load i32* %arrayidx16.2.2.8, align 4
  %mul.2.2.8 = mul nsw i32 %2466, %2467
  %arrayidx19.2.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.8, i32 0, i64 2
  %2468 = load i32* %arrayidx20.2.2.8, align 4
  %add.2.2.8 = add nsw i32 %2468, %mul.2.2.8
  store i32 %add.2.2.8, i32* %arrayidx20.2.2.8, align 4
  br label %for.inc.2.2.8

for.inc.2.2.8:                                    ; preds = %for.inc.1.2.8
  %arrayidx11.3.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.8, i32 0, i64 3
  %2469 = load i32* %arrayidx12.3.2.8, align 4
  %arrayidx15.3.2.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.8, i32 0, i64 2
  %2470 = load i32* %arrayidx16.3.2.8, align 4
  %mul.3.2.8 = mul nsw i32 %2469, %2470
  %arrayidx19.3.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.8, i32 0, i64 2
  %2471 = load i32* %arrayidx20.3.2.8, align 4
  %add.3.2.8 = add nsw i32 %2471, %mul.3.2.8
  store i32 %add.3.2.8, i32* %arrayidx20.3.2.8, align 4
  br label %for.inc.3.2.8

for.inc.3.2.8:                                    ; preds = %for.inc.2.2.8
  %arrayidx11.4.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.8, i32 0, i64 4
  %2472 = load i32* %arrayidx12.4.2.8, align 4
  %arrayidx15.4.2.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.8, i32 0, i64 2
  %2473 = load i32* %arrayidx16.4.2.8, align 4
  %mul.4.2.8 = mul nsw i32 %2472, %2473
  %arrayidx19.4.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.8, i32 0, i64 2
  %2474 = load i32* %arrayidx20.4.2.8, align 4
  %add.4.2.8 = add nsw i32 %2474, %mul.4.2.8
  store i32 %add.4.2.8, i32* %arrayidx20.4.2.8, align 4
  br label %for.inc.4.2.8

for.inc.4.2.8:                                    ; preds = %for.inc.3.2.8
  %arrayidx11.5.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.8, i32 0, i64 5
  %2475 = load i32* %arrayidx12.5.2.8, align 4
  %arrayidx15.5.2.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.8, i32 0, i64 2
  %2476 = load i32* %arrayidx16.5.2.8, align 4
  %mul.5.2.8 = mul nsw i32 %2475, %2476
  %arrayidx19.5.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.8, i32 0, i64 2
  %2477 = load i32* %arrayidx20.5.2.8, align 4
  %add.5.2.8 = add nsw i32 %2477, %mul.5.2.8
  store i32 %add.5.2.8, i32* %arrayidx20.5.2.8, align 4
  br label %for.inc.5.2.8

for.inc.5.2.8:                                    ; preds = %for.inc.4.2.8
  %arrayidx11.6.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.8, i32 0, i64 6
  %2478 = load i32* %arrayidx12.6.2.8, align 4
  %arrayidx15.6.2.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.8, i32 0, i64 2
  %2479 = load i32* %arrayidx16.6.2.8, align 4
  %mul.6.2.8 = mul nsw i32 %2478, %2479
  %arrayidx19.6.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.8, i32 0, i64 2
  %2480 = load i32* %arrayidx20.6.2.8, align 4
  %add.6.2.8 = add nsw i32 %2480, %mul.6.2.8
  store i32 %add.6.2.8, i32* %arrayidx20.6.2.8, align 4
  br label %for.inc.6.2.8

for.inc.6.2.8:                                    ; preds = %for.inc.5.2.8
  %arrayidx11.7.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.8, i32 0, i64 7
  %2481 = load i32* %arrayidx12.7.2.8, align 4
  %arrayidx15.7.2.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.8, i32 0, i64 2
  %2482 = load i32* %arrayidx16.7.2.8, align 4
  %mul.7.2.8 = mul nsw i32 %2481, %2482
  %arrayidx19.7.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.8, i32 0, i64 2
  %2483 = load i32* %arrayidx20.7.2.8, align 4
  %add.7.2.8 = add nsw i32 %2483, %mul.7.2.8
  store i32 %add.7.2.8, i32* %arrayidx20.7.2.8, align 4
  br label %for.inc.7.2.8

for.inc.7.2.8:                                    ; preds = %for.inc.6.2.8
  %arrayidx11.8.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.8, i32 0, i64 8
  %2484 = load i32* %arrayidx12.8.2.8, align 4
  %arrayidx15.8.2.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.8, i32 0, i64 2
  %2485 = load i32* %arrayidx16.8.2.8, align 4
  %mul.8.2.8 = mul nsw i32 %2484, %2485
  %arrayidx19.8.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.8, i32 0, i64 2
  %2486 = load i32* %arrayidx20.8.2.8, align 4
  %add.8.2.8 = add nsw i32 %2486, %mul.8.2.8
  store i32 %add.8.2.8, i32* %arrayidx20.8.2.8, align 4
  br label %for.inc.8.2.8

for.inc.8.2.8:                                    ; preds = %for.inc.7.2.8
  %arrayidx11.9.2.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.2.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.8, i32 0, i64 9
  %2487 = load i32* %arrayidx12.9.2.8, align 4
  %arrayidx15.9.2.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.8, i32 0, i64 2
  %2488 = load i32* %arrayidx16.9.2.8, align 4
  %mul.9.2.8 = mul nsw i32 %2487, %2488
  %arrayidx19.9.2.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.2.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.8, i32 0, i64 2
  %2489 = load i32* %arrayidx20.9.2.8, align 4
  %add.9.2.8 = add nsw i32 %2489, %mul.9.2.8
  store i32 %add.9.2.8, i32* %arrayidx20.9.2.8, align 4
  br label %for.inc.9.2.8

for.inc.9.2.8:                                    ; preds = %for.inc.8.2.8
  br label %for.inc21.2.8

for.inc21.2.8:                                    ; preds = %for.inc.9.2.8
  %arrayidx.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.3.8 = getelementptr inbounds [10 x i32]* %arrayidx.3.8, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.8, align 4
  br label %for.body8.3.8

for.body8.3.8:                                    ; preds = %for.inc21.2.8
  %arrayidx11.324.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.325.8 = getelementptr inbounds [10 x i32]* %arrayidx11.324.8, i32 0, i64 0
  %2490 = load i32* %arrayidx12.325.8, align 4
  %arrayidx16.326.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %2491 = load i32* %arrayidx16.326.8, align 4
  %mul.327.8 = mul nsw i32 %2490, %2491
  %arrayidx19.329.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.330.8 = getelementptr inbounds [10 x i32]* %arrayidx19.329.8, i32 0, i64 3
  %2492 = load i32* %arrayidx20.330.8, align 4
  %add.331.8 = add nsw i32 %2492, %mul.327.8
  store i32 %add.331.8, i32* %arrayidx20.330.8, align 4
  br label %for.inc.332.8

for.inc.332.8:                                    ; preds = %for.body8.3.8
  %arrayidx11.1.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.8, i32 0, i64 1
  %2493 = load i32* %arrayidx12.1.3.8, align 4
  %arrayidx15.1.3.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.8, i32 0, i64 3
  %2494 = load i32* %arrayidx16.1.3.8, align 4
  %mul.1.3.8 = mul nsw i32 %2493, %2494
  %arrayidx19.1.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.8, i32 0, i64 3
  %2495 = load i32* %arrayidx20.1.3.8, align 4
  %add.1.3.8 = add nsw i32 %2495, %mul.1.3.8
  store i32 %add.1.3.8, i32* %arrayidx20.1.3.8, align 4
  br label %for.inc.1.3.8

for.inc.1.3.8:                                    ; preds = %for.inc.332.8
  %arrayidx11.2.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.8, i32 0, i64 2
  %2496 = load i32* %arrayidx12.2.3.8, align 4
  %arrayidx15.2.3.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.8, i32 0, i64 3
  %2497 = load i32* %arrayidx16.2.3.8, align 4
  %mul.2.3.8 = mul nsw i32 %2496, %2497
  %arrayidx19.2.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.8, i32 0, i64 3
  %2498 = load i32* %arrayidx20.2.3.8, align 4
  %add.2.3.8 = add nsw i32 %2498, %mul.2.3.8
  store i32 %add.2.3.8, i32* %arrayidx20.2.3.8, align 4
  br label %for.inc.2.3.8

for.inc.2.3.8:                                    ; preds = %for.inc.1.3.8
  %arrayidx11.3.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.8, i32 0, i64 3
  %2499 = load i32* %arrayidx12.3.3.8, align 4
  %arrayidx15.3.3.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.8, i32 0, i64 3
  %2500 = load i32* %arrayidx16.3.3.8, align 4
  %mul.3.3.8 = mul nsw i32 %2499, %2500
  %arrayidx19.3.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.8, i32 0, i64 3
  %2501 = load i32* %arrayidx20.3.3.8, align 4
  %add.3.3.8 = add nsw i32 %2501, %mul.3.3.8
  store i32 %add.3.3.8, i32* %arrayidx20.3.3.8, align 4
  br label %for.inc.3.3.8

for.inc.3.3.8:                                    ; preds = %for.inc.2.3.8
  %arrayidx11.4.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.8, i32 0, i64 4
  %2502 = load i32* %arrayidx12.4.3.8, align 4
  %arrayidx15.4.3.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.8, i32 0, i64 3
  %2503 = load i32* %arrayidx16.4.3.8, align 4
  %mul.4.3.8 = mul nsw i32 %2502, %2503
  %arrayidx19.4.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.8, i32 0, i64 3
  %2504 = load i32* %arrayidx20.4.3.8, align 4
  %add.4.3.8 = add nsw i32 %2504, %mul.4.3.8
  store i32 %add.4.3.8, i32* %arrayidx20.4.3.8, align 4
  br label %for.inc.4.3.8

for.inc.4.3.8:                                    ; preds = %for.inc.3.3.8
  %arrayidx11.5.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.8, i32 0, i64 5
  %2505 = load i32* %arrayidx12.5.3.8, align 4
  %arrayidx15.5.3.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.8, i32 0, i64 3
  %2506 = load i32* %arrayidx16.5.3.8, align 4
  %mul.5.3.8 = mul nsw i32 %2505, %2506
  %arrayidx19.5.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.8, i32 0, i64 3
  %2507 = load i32* %arrayidx20.5.3.8, align 4
  %add.5.3.8 = add nsw i32 %2507, %mul.5.3.8
  store i32 %add.5.3.8, i32* %arrayidx20.5.3.8, align 4
  br label %for.inc.5.3.8

for.inc.5.3.8:                                    ; preds = %for.inc.4.3.8
  %arrayidx11.6.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.8, i32 0, i64 6
  %2508 = load i32* %arrayidx12.6.3.8, align 4
  %arrayidx15.6.3.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.8, i32 0, i64 3
  %2509 = load i32* %arrayidx16.6.3.8, align 4
  %mul.6.3.8 = mul nsw i32 %2508, %2509
  %arrayidx19.6.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.8, i32 0, i64 3
  %2510 = load i32* %arrayidx20.6.3.8, align 4
  %add.6.3.8 = add nsw i32 %2510, %mul.6.3.8
  store i32 %add.6.3.8, i32* %arrayidx20.6.3.8, align 4
  br label %for.inc.6.3.8

for.inc.6.3.8:                                    ; preds = %for.inc.5.3.8
  %arrayidx11.7.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.8, i32 0, i64 7
  %2511 = load i32* %arrayidx12.7.3.8, align 4
  %arrayidx15.7.3.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.8, i32 0, i64 3
  %2512 = load i32* %arrayidx16.7.3.8, align 4
  %mul.7.3.8 = mul nsw i32 %2511, %2512
  %arrayidx19.7.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.8, i32 0, i64 3
  %2513 = load i32* %arrayidx20.7.3.8, align 4
  %add.7.3.8 = add nsw i32 %2513, %mul.7.3.8
  store i32 %add.7.3.8, i32* %arrayidx20.7.3.8, align 4
  br label %for.inc.7.3.8

for.inc.7.3.8:                                    ; preds = %for.inc.6.3.8
  %arrayidx11.8.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.8, i32 0, i64 8
  %2514 = load i32* %arrayidx12.8.3.8, align 4
  %arrayidx15.8.3.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.8, i32 0, i64 3
  %2515 = load i32* %arrayidx16.8.3.8, align 4
  %mul.8.3.8 = mul nsw i32 %2514, %2515
  %arrayidx19.8.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.8, i32 0, i64 3
  %2516 = load i32* %arrayidx20.8.3.8, align 4
  %add.8.3.8 = add nsw i32 %2516, %mul.8.3.8
  store i32 %add.8.3.8, i32* %arrayidx20.8.3.8, align 4
  br label %for.inc.8.3.8

for.inc.8.3.8:                                    ; preds = %for.inc.7.3.8
  %arrayidx11.9.3.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.3.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.8, i32 0, i64 9
  %2517 = load i32* %arrayidx12.9.3.8, align 4
  %arrayidx15.9.3.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.8, i32 0, i64 3
  %2518 = load i32* %arrayidx16.9.3.8, align 4
  %mul.9.3.8 = mul nsw i32 %2517, %2518
  %arrayidx19.9.3.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.3.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.8, i32 0, i64 3
  %2519 = load i32* %arrayidx20.9.3.8, align 4
  %add.9.3.8 = add nsw i32 %2519, %mul.9.3.8
  store i32 %add.9.3.8, i32* %arrayidx20.9.3.8, align 4
  br label %for.inc.9.3.8

for.inc.9.3.8:                                    ; preds = %for.inc.8.3.8
  br label %for.inc21.3.8

for.inc21.3.8:                                    ; preds = %for.inc.9.3.8
  %arrayidx.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.4.8 = getelementptr inbounds [10 x i32]* %arrayidx.4.8, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.8, align 4
  br label %for.body8.4.8

for.body8.4.8:                                    ; preds = %for.inc21.3.8
  %arrayidx11.434.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.435.8 = getelementptr inbounds [10 x i32]* %arrayidx11.434.8, i32 0, i64 0
  %2520 = load i32* %arrayidx12.435.8, align 4
  %arrayidx16.436.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %2521 = load i32* %arrayidx16.436.8, align 4
  %mul.437.8 = mul nsw i32 %2520, %2521
  %arrayidx19.439.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.440.8 = getelementptr inbounds [10 x i32]* %arrayidx19.439.8, i32 0, i64 4
  %2522 = load i32* %arrayidx20.440.8, align 4
  %add.441.8 = add nsw i32 %2522, %mul.437.8
  store i32 %add.441.8, i32* %arrayidx20.440.8, align 4
  br label %for.inc.442.8

for.inc.442.8:                                    ; preds = %for.body8.4.8
  %arrayidx11.1.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.8, i32 0, i64 1
  %2523 = load i32* %arrayidx12.1.4.8, align 4
  %arrayidx15.1.4.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.8, i32 0, i64 4
  %2524 = load i32* %arrayidx16.1.4.8, align 4
  %mul.1.4.8 = mul nsw i32 %2523, %2524
  %arrayidx19.1.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.8, i32 0, i64 4
  %2525 = load i32* %arrayidx20.1.4.8, align 4
  %add.1.4.8 = add nsw i32 %2525, %mul.1.4.8
  store i32 %add.1.4.8, i32* %arrayidx20.1.4.8, align 4
  br label %for.inc.1.4.8

for.inc.1.4.8:                                    ; preds = %for.inc.442.8
  %arrayidx11.2.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.8, i32 0, i64 2
  %2526 = load i32* %arrayidx12.2.4.8, align 4
  %arrayidx15.2.4.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.8, i32 0, i64 4
  %2527 = load i32* %arrayidx16.2.4.8, align 4
  %mul.2.4.8 = mul nsw i32 %2526, %2527
  %arrayidx19.2.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.8, i32 0, i64 4
  %2528 = load i32* %arrayidx20.2.4.8, align 4
  %add.2.4.8 = add nsw i32 %2528, %mul.2.4.8
  store i32 %add.2.4.8, i32* %arrayidx20.2.4.8, align 4
  br label %for.inc.2.4.8

for.inc.2.4.8:                                    ; preds = %for.inc.1.4.8
  %arrayidx11.3.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.8, i32 0, i64 3
  %2529 = load i32* %arrayidx12.3.4.8, align 4
  %arrayidx15.3.4.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.8, i32 0, i64 4
  %2530 = load i32* %arrayidx16.3.4.8, align 4
  %mul.3.4.8 = mul nsw i32 %2529, %2530
  %arrayidx19.3.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.8, i32 0, i64 4
  %2531 = load i32* %arrayidx20.3.4.8, align 4
  %add.3.4.8 = add nsw i32 %2531, %mul.3.4.8
  store i32 %add.3.4.8, i32* %arrayidx20.3.4.8, align 4
  br label %for.inc.3.4.8

for.inc.3.4.8:                                    ; preds = %for.inc.2.4.8
  %arrayidx11.4.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.8, i32 0, i64 4
  %2532 = load i32* %arrayidx12.4.4.8, align 4
  %arrayidx15.4.4.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.8, i32 0, i64 4
  %2533 = load i32* %arrayidx16.4.4.8, align 4
  %mul.4.4.8 = mul nsw i32 %2532, %2533
  %arrayidx19.4.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.8, i32 0, i64 4
  %2534 = load i32* %arrayidx20.4.4.8, align 4
  %add.4.4.8 = add nsw i32 %2534, %mul.4.4.8
  store i32 %add.4.4.8, i32* %arrayidx20.4.4.8, align 4
  br label %for.inc.4.4.8

for.inc.4.4.8:                                    ; preds = %for.inc.3.4.8
  %arrayidx11.5.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.8, i32 0, i64 5
  %2535 = load i32* %arrayidx12.5.4.8, align 4
  %arrayidx15.5.4.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.8, i32 0, i64 4
  %2536 = load i32* %arrayidx16.5.4.8, align 4
  %mul.5.4.8 = mul nsw i32 %2535, %2536
  %arrayidx19.5.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.8, i32 0, i64 4
  %2537 = load i32* %arrayidx20.5.4.8, align 4
  %add.5.4.8 = add nsw i32 %2537, %mul.5.4.8
  store i32 %add.5.4.8, i32* %arrayidx20.5.4.8, align 4
  br label %for.inc.5.4.8

for.inc.5.4.8:                                    ; preds = %for.inc.4.4.8
  %arrayidx11.6.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.8, i32 0, i64 6
  %2538 = load i32* %arrayidx12.6.4.8, align 4
  %arrayidx15.6.4.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.8, i32 0, i64 4
  %2539 = load i32* %arrayidx16.6.4.8, align 4
  %mul.6.4.8 = mul nsw i32 %2538, %2539
  %arrayidx19.6.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.8, i32 0, i64 4
  %2540 = load i32* %arrayidx20.6.4.8, align 4
  %add.6.4.8 = add nsw i32 %2540, %mul.6.4.8
  store i32 %add.6.4.8, i32* %arrayidx20.6.4.8, align 4
  br label %for.inc.6.4.8

for.inc.6.4.8:                                    ; preds = %for.inc.5.4.8
  %arrayidx11.7.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.8, i32 0, i64 7
  %2541 = load i32* %arrayidx12.7.4.8, align 4
  %arrayidx15.7.4.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.8, i32 0, i64 4
  %2542 = load i32* %arrayidx16.7.4.8, align 4
  %mul.7.4.8 = mul nsw i32 %2541, %2542
  %arrayidx19.7.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.8, i32 0, i64 4
  %2543 = load i32* %arrayidx20.7.4.8, align 4
  %add.7.4.8 = add nsw i32 %2543, %mul.7.4.8
  store i32 %add.7.4.8, i32* %arrayidx20.7.4.8, align 4
  br label %for.inc.7.4.8

for.inc.7.4.8:                                    ; preds = %for.inc.6.4.8
  %arrayidx11.8.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.8, i32 0, i64 8
  %2544 = load i32* %arrayidx12.8.4.8, align 4
  %arrayidx15.8.4.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.8, i32 0, i64 4
  %2545 = load i32* %arrayidx16.8.4.8, align 4
  %mul.8.4.8 = mul nsw i32 %2544, %2545
  %arrayidx19.8.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.8, i32 0, i64 4
  %2546 = load i32* %arrayidx20.8.4.8, align 4
  %add.8.4.8 = add nsw i32 %2546, %mul.8.4.8
  store i32 %add.8.4.8, i32* %arrayidx20.8.4.8, align 4
  br label %for.inc.8.4.8

for.inc.8.4.8:                                    ; preds = %for.inc.7.4.8
  %arrayidx11.9.4.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.4.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.8, i32 0, i64 9
  %2547 = load i32* %arrayidx12.9.4.8, align 4
  %arrayidx15.9.4.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.8, i32 0, i64 4
  %2548 = load i32* %arrayidx16.9.4.8, align 4
  %mul.9.4.8 = mul nsw i32 %2547, %2548
  %arrayidx19.9.4.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.4.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.8, i32 0, i64 4
  %2549 = load i32* %arrayidx20.9.4.8, align 4
  %add.9.4.8 = add nsw i32 %2549, %mul.9.4.8
  store i32 %add.9.4.8, i32* %arrayidx20.9.4.8, align 4
  br label %for.inc.9.4.8

for.inc.9.4.8:                                    ; preds = %for.inc.8.4.8
  br label %for.inc21.4.8

for.inc21.4.8:                                    ; preds = %for.inc.9.4.8
  %arrayidx.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.5.8 = getelementptr inbounds [10 x i32]* %arrayidx.5.8, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.8, align 4
  br label %for.body8.5.8

for.body8.5.8:                                    ; preds = %for.inc21.4.8
  %arrayidx11.544.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.545.8 = getelementptr inbounds [10 x i32]* %arrayidx11.544.8, i32 0, i64 0
  %2550 = load i32* %arrayidx12.545.8, align 4
  %arrayidx16.546.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %2551 = load i32* %arrayidx16.546.8, align 4
  %mul.547.8 = mul nsw i32 %2550, %2551
  %arrayidx19.549.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.550.8 = getelementptr inbounds [10 x i32]* %arrayidx19.549.8, i32 0, i64 5
  %2552 = load i32* %arrayidx20.550.8, align 4
  %add.551.8 = add nsw i32 %2552, %mul.547.8
  store i32 %add.551.8, i32* %arrayidx20.550.8, align 4
  br label %for.inc.552.8

for.inc.552.8:                                    ; preds = %for.body8.5.8
  %arrayidx11.1.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.8, i32 0, i64 1
  %2553 = load i32* %arrayidx12.1.5.8, align 4
  %arrayidx15.1.5.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.8, i32 0, i64 5
  %2554 = load i32* %arrayidx16.1.5.8, align 4
  %mul.1.5.8 = mul nsw i32 %2553, %2554
  %arrayidx19.1.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.8, i32 0, i64 5
  %2555 = load i32* %arrayidx20.1.5.8, align 4
  %add.1.5.8 = add nsw i32 %2555, %mul.1.5.8
  store i32 %add.1.5.8, i32* %arrayidx20.1.5.8, align 4
  br label %for.inc.1.5.8

for.inc.1.5.8:                                    ; preds = %for.inc.552.8
  %arrayidx11.2.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.8, i32 0, i64 2
  %2556 = load i32* %arrayidx12.2.5.8, align 4
  %arrayidx15.2.5.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.8, i32 0, i64 5
  %2557 = load i32* %arrayidx16.2.5.8, align 4
  %mul.2.5.8 = mul nsw i32 %2556, %2557
  %arrayidx19.2.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.8, i32 0, i64 5
  %2558 = load i32* %arrayidx20.2.5.8, align 4
  %add.2.5.8 = add nsw i32 %2558, %mul.2.5.8
  store i32 %add.2.5.8, i32* %arrayidx20.2.5.8, align 4
  br label %for.inc.2.5.8

for.inc.2.5.8:                                    ; preds = %for.inc.1.5.8
  %arrayidx11.3.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.8, i32 0, i64 3
  %2559 = load i32* %arrayidx12.3.5.8, align 4
  %arrayidx15.3.5.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.8, i32 0, i64 5
  %2560 = load i32* %arrayidx16.3.5.8, align 4
  %mul.3.5.8 = mul nsw i32 %2559, %2560
  %arrayidx19.3.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.8, i32 0, i64 5
  %2561 = load i32* %arrayidx20.3.5.8, align 4
  %add.3.5.8 = add nsw i32 %2561, %mul.3.5.8
  store i32 %add.3.5.8, i32* %arrayidx20.3.5.8, align 4
  br label %for.inc.3.5.8

for.inc.3.5.8:                                    ; preds = %for.inc.2.5.8
  %arrayidx11.4.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.8, i32 0, i64 4
  %2562 = load i32* %arrayidx12.4.5.8, align 4
  %arrayidx15.4.5.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.8, i32 0, i64 5
  %2563 = load i32* %arrayidx16.4.5.8, align 4
  %mul.4.5.8 = mul nsw i32 %2562, %2563
  %arrayidx19.4.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.8, i32 0, i64 5
  %2564 = load i32* %arrayidx20.4.5.8, align 4
  %add.4.5.8 = add nsw i32 %2564, %mul.4.5.8
  store i32 %add.4.5.8, i32* %arrayidx20.4.5.8, align 4
  br label %for.inc.4.5.8

for.inc.4.5.8:                                    ; preds = %for.inc.3.5.8
  %arrayidx11.5.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.8, i32 0, i64 5
  %2565 = load i32* %arrayidx12.5.5.8, align 4
  %arrayidx15.5.5.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.8, i32 0, i64 5
  %2566 = load i32* %arrayidx16.5.5.8, align 4
  %mul.5.5.8 = mul nsw i32 %2565, %2566
  %arrayidx19.5.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.8, i32 0, i64 5
  %2567 = load i32* %arrayidx20.5.5.8, align 4
  %add.5.5.8 = add nsw i32 %2567, %mul.5.5.8
  store i32 %add.5.5.8, i32* %arrayidx20.5.5.8, align 4
  br label %for.inc.5.5.8

for.inc.5.5.8:                                    ; preds = %for.inc.4.5.8
  %arrayidx11.6.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.8, i32 0, i64 6
  %2568 = load i32* %arrayidx12.6.5.8, align 4
  %arrayidx15.6.5.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.8, i32 0, i64 5
  %2569 = load i32* %arrayidx16.6.5.8, align 4
  %mul.6.5.8 = mul nsw i32 %2568, %2569
  %arrayidx19.6.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.8, i32 0, i64 5
  %2570 = load i32* %arrayidx20.6.5.8, align 4
  %add.6.5.8 = add nsw i32 %2570, %mul.6.5.8
  store i32 %add.6.5.8, i32* %arrayidx20.6.5.8, align 4
  br label %for.inc.6.5.8

for.inc.6.5.8:                                    ; preds = %for.inc.5.5.8
  %arrayidx11.7.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.8, i32 0, i64 7
  %2571 = load i32* %arrayidx12.7.5.8, align 4
  %arrayidx15.7.5.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.8, i32 0, i64 5
  %2572 = load i32* %arrayidx16.7.5.8, align 4
  %mul.7.5.8 = mul nsw i32 %2571, %2572
  %arrayidx19.7.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.8, i32 0, i64 5
  %2573 = load i32* %arrayidx20.7.5.8, align 4
  %add.7.5.8 = add nsw i32 %2573, %mul.7.5.8
  store i32 %add.7.5.8, i32* %arrayidx20.7.5.8, align 4
  br label %for.inc.7.5.8

for.inc.7.5.8:                                    ; preds = %for.inc.6.5.8
  %arrayidx11.8.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.8, i32 0, i64 8
  %2574 = load i32* %arrayidx12.8.5.8, align 4
  %arrayidx15.8.5.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.8, i32 0, i64 5
  %2575 = load i32* %arrayidx16.8.5.8, align 4
  %mul.8.5.8 = mul nsw i32 %2574, %2575
  %arrayidx19.8.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.8, i32 0, i64 5
  %2576 = load i32* %arrayidx20.8.5.8, align 4
  %add.8.5.8 = add nsw i32 %2576, %mul.8.5.8
  store i32 %add.8.5.8, i32* %arrayidx20.8.5.8, align 4
  br label %for.inc.8.5.8

for.inc.8.5.8:                                    ; preds = %for.inc.7.5.8
  %arrayidx11.9.5.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.5.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.8, i32 0, i64 9
  %2577 = load i32* %arrayidx12.9.5.8, align 4
  %arrayidx15.9.5.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.8, i32 0, i64 5
  %2578 = load i32* %arrayidx16.9.5.8, align 4
  %mul.9.5.8 = mul nsw i32 %2577, %2578
  %arrayidx19.9.5.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.5.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.8, i32 0, i64 5
  %2579 = load i32* %arrayidx20.9.5.8, align 4
  %add.9.5.8 = add nsw i32 %2579, %mul.9.5.8
  store i32 %add.9.5.8, i32* %arrayidx20.9.5.8, align 4
  br label %for.inc.9.5.8

for.inc.9.5.8:                                    ; preds = %for.inc.8.5.8
  br label %for.inc21.5.8

for.inc21.5.8:                                    ; preds = %for.inc.9.5.8
  %arrayidx.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.6.8 = getelementptr inbounds [10 x i32]* %arrayidx.6.8, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.8, align 4
  br label %for.body8.6.8

for.body8.6.8:                                    ; preds = %for.inc21.5.8
  %arrayidx11.654.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.655.8 = getelementptr inbounds [10 x i32]* %arrayidx11.654.8, i32 0, i64 0
  %2580 = load i32* %arrayidx12.655.8, align 4
  %arrayidx16.656.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %2581 = load i32* %arrayidx16.656.8, align 4
  %mul.657.8 = mul nsw i32 %2580, %2581
  %arrayidx19.659.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.660.8 = getelementptr inbounds [10 x i32]* %arrayidx19.659.8, i32 0, i64 6
  %2582 = load i32* %arrayidx20.660.8, align 4
  %add.661.8 = add nsw i32 %2582, %mul.657.8
  store i32 %add.661.8, i32* %arrayidx20.660.8, align 4
  br label %for.inc.662.8

for.inc.662.8:                                    ; preds = %for.body8.6.8
  %arrayidx11.1.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.8, i32 0, i64 1
  %2583 = load i32* %arrayidx12.1.6.8, align 4
  %arrayidx15.1.6.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.8, i32 0, i64 6
  %2584 = load i32* %arrayidx16.1.6.8, align 4
  %mul.1.6.8 = mul nsw i32 %2583, %2584
  %arrayidx19.1.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.8, i32 0, i64 6
  %2585 = load i32* %arrayidx20.1.6.8, align 4
  %add.1.6.8 = add nsw i32 %2585, %mul.1.6.8
  store i32 %add.1.6.8, i32* %arrayidx20.1.6.8, align 4
  br label %for.inc.1.6.8

for.inc.1.6.8:                                    ; preds = %for.inc.662.8
  %arrayidx11.2.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.8, i32 0, i64 2
  %2586 = load i32* %arrayidx12.2.6.8, align 4
  %arrayidx15.2.6.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.8, i32 0, i64 6
  %2587 = load i32* %arrayidx16.2.6.8, align 4
  %mul.2.6.8 = mul nsw i32 %2586, %2587
  %arrayidx19.2.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.8, i32 0, i64 6
  %2588 = load i32* %arrayidx20.2.6.8, align 4
  %add.2.6.8 = add nsw i32 %2588, %mul.2.6.8
  store i32 %add.2.6.8, i32* %arrayidx20.2.6.8, align 4
  br label %for.inc.2.6.8

for.inc.2.6.8:                                    ; preds = %for.inc.1.6.8
  %arrayidx11.3.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.8, i32 0, i64 3
  %2589 = load i32* %arrayidx12.3.6.8, align 4
  %arrayidx15.3.6.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.8, i32 0, i64 6
  %2590 = load i32* %arrayidx16.3.6.8, align 4
  %mul.3.6.8 = mul nsw i32 %2589, %2590
  %arrayidx19.3.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.8, i32 0, i64 6
  %2591 = load i32* %arrayidx20.3.6.8, align 4
  %add.3.6.8 = add nsw i32 %2591, %mul.3.6.8
  store i32 %add.3.6.8, i32* %arrayidx20.3.6.8, align 4
  br label %for.inc.3.6.8

for.inc.3.6.8:                                    ; preds = %for.inc.2.6.8
  %arrayidx11.4.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.8, i32 0, i64 4
  %2592 = load i32* %arrayidx12.4.6.8, align 4
  %arrayidx15.4.6.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.8, i32 0, i64 6
  %2593 = load i32* %arrayidx16.4.6.8, align 4
  %mul.4.6.8 = mul nsw i32 %2592, %2593
  %arrayidx19.4.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.8, i32 0, i64 6
  %2594 = load i32* %arrayidx20.4.6.8, align 4
  %add.4.6.8 = add nsw i32 %2594, %mul.4.6.8
  store i32 %add.4.6.8, i32* %arrayidx20.4.6.8, align 4
  br label %for.inc.4.6.8

for.inc.4.6.8:                                    ; preds = %for.inc.3.6.8
  %arrayidx11.5.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.8, i32 0, i64 5
  %2595 = load i32* %arrayidx12.5.6.8, align 4
  %arrayidx15.5.6.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.8, i32 0, i64 6
  %2596 = load i32* %arrayidx16.5.6.8, align 4
  %mul.5.6.8 = mul nsw i32 %2595, %2596
  %arrayidx19.5.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.8, i32 0, i64 6
  %2597 = load i32* %arrayidx20.5.6.8, align 4
  %add.5.6.8 = add nsw i32 %2597, %mul.5.6.8
  store i32 %add.5.6.8, i32* %arrayidx20.5.6.8, align 4
  br label %for.inc.5.6.8

for.inc.5.6.8:                                    ; preds = %for.inc.4.6.8
  %arrayidx11.6.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.8, i32 0, i64 6
  %2598 = load i32* %arrayidx12.6.6.8, align 4
  %arrayidx15.6.6.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.8, i32 0, i64 6
  %2599 = load i32* %arrayidx16.6.6.8, align 4
  %mul.6.6.8 = mul nsw i32 %2598, %2599
  %arrayidx19.6.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.8, i32 0, i64 6
  %2600 = load i32* %arrayidx20.6.6.8, align 4
  %add.6.6.8 = add nsw i32 %2600, %mul.6.6.8
  store i32 %add.6.6.8, i32* %arrayidx20.6.6.8, align 4
  br label %for.inc.6.6.8

for.inc.6.6.8:                                    ; preds = %for.inc.5.6.8
  %arrayidx11.7.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.8, i32 0, i64 7
  %2601 = load i32* %arrayidx12.7.6.8, align 4
  %arrayidx15.7.6.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.8, i32 0, i64 6
  %2602 = load i32* %arrayidx16.7.6.8, align 4
  %mul.7.6.8 = mul nsw i32 %2601, %2602
  %arrayidx19.7.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.8, i32 0, i64 6
  %2603 = load i32* %arrayidx20.7.6.8, align 4
  %add.7.6.8 = add nsw i32 %2603, %mul.7.6.8
  store i32 %add.7.6.8, i32* %arrayidx20.7.6.8, align 4
  br label %for.inc.7.6.8

for.inc.7.6.8:                                    ; preds = %for.inc.6.6.8
  %arrayidx11.8.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.8, i32 0, i64 8
  %2604 = load i32* %arrayidx12.8.6.8, align 4
  %arrayidx15.8.6.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.8, i32 0, i64 6
  %2605 = load i32* %arrayidx16.8.6.8, align 4
  %mul.8.6.8 = mul nsw i32 %2604, %2605
  %arrayidx19.8.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.8, i32 0, i64 6
  %2606 = load i32* %arrayidx20.8.6.8, align 4
  %add.8.6.8 = add nsw i32 %2606, %mul.8.6.8
  store i32 %add.8.6.8, i32* %arrayidx20.8.6.8, align 4
  br label %for.inc.8.6.8

for.inc.8.6.8:                                    ; preds = %for.inc.7.6.8
  %arrayidx11.9.6.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.6.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.8, i32 0, i64 9
  %2607 = load i32* %arrayidx12.9.6.8, align 4
  %arrayidx15.9.6.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.8, i32 0, i64 6
  %2608 = load i32* %arrayidx16.9.6.8, align 4
  %mul.9.6.8 = mul nsw i32 %2607, %2608
  %arrayidx19.9.6.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.6.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.8, i32 0, i64 6
  %2609 = load i32* %arrayidx20.9.6.8, align 4
  %add.9.6.8 = add nsw i32 %2609, %mul.9.6.8
  store i32 %add.9.6.8, i32* %arrayidx20.9.6.8, align 4
  br label %for.inc.9.6.8

for.inc.9.6.8:                                    ; preds = %for.inc.8.6.8
  br label %for.inc21.6.8

for.inc21.6.8:                                    ; preds = %for.inc.9.6.8
  %arrayidx.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.7.8 = getelementptr inbounds [10 x i32]* %arrayidx.7.8, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.8, align 4
  br label %for.body8.7.8

for.body8.7.8:                                    ; preds = %for.inc21.6.8
  %arrayidx11.764.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.765.8 = getelementptr inbounds [10 x i32]* %arrayidx11.764.8, i32 0, i64 0
  %2610 = load i32* %arrayidx12.765.8, align 4
  %arrayidx16.766.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %2611 = load i32* %arrayidx16.766.8, align 4
  %mul.767.8 = mul nsw i32 %2610, %2611
  %arrayidx19.769.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.770.8 = getelementptr inbounds [10 x i32]* %arrayidx19.769.8, i32 0, i64 7
  %2612 = load i32* %arrayidx20.770.8, align 4
  %add.771.8 = add nsw i32 %2612, %mul.767.8
  store i32 %add.771.8, i32* %arrayidx20.770.8, align 4
  br label %for.inc.772.8

for.inc.772.8:                                    ; preds = %for.body8.7.8
  %arrayidx11.1.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.8, i32 0, i64 1
  %2613 = load i32* %arrayidx12.1.7.8, align 4
  %arrayidx15.1.7.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.8, i32 0, i64 7
  %2614 = load i32* %arrayidx16.1.7.8, align 4
  %mul.1.7.8 = mul nsw i32 %2613, %2614
  %arrayidx19.1.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.8, i32 0, i64 7
  %2615 = load i32* %arrayidx20.1.7.8, align 4
  %add.1.7.8 = add nsw i32 %2615, %mul.1.7.8
  store i32 %add.1.7.8, i32* %arrayidx20.1.7.8, align 4
  br label %for.inc.1.7.8

for.inc.1.7.8:                                    ; preds = %for.inc.772.8
  %arrayidx11.2.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.8, i32 0, i64 2
  %2616 = load i32* %arrayidx12.2.7.8, align 4
  %arrayidx15.2.7.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.8, i32 0, i64 7
  %2617 = load i32* %arrayidx16.2.7.8, align 4
  %mul.2.7.8 = mul nsw i32 %2616, %2617
  %arrayidx19.2.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.8, i32 0, i64 7
  %2618 = load i32* %arrayidx20.2.7.8, align 4
  %add.2.7.8 = add nsw i32 %2618, %mul.2.7.8
  store i32 %add.2.7.8, i32* %arrayidx20.2.7.8, align 4
  br label %for.inc.2.7.8

for.inc.2.7.8:                                    ; preds = %for.inc.1.7.8
  %arrayidx11.3.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.8, i32 0, i64 3
  %2619 = load i32* %arrayidx12.3.7.8, align 4
  %arrayidx15.3.7.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.8, i32 0, i64 7
  %2620 = load i32* %arrayidx16.3.7.8, align 4
  %mul.3.7.8 = mul nsw i32 %2619, %2620
  %arrayidx19.3.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.8, i32 0, i64 7
  %2621 = load i32* %arrayidx20.3.7.8, align 4
  %add.3.7.8 = add nsw i32 %2621, %mul.3.7.8
  store i32 %add.3.7.8, i32* %arrayidx20.3.7.8, align 4
  br label %for.inc.3.7.8

for.inc.3.7.8:                                    ; preds = %for.inc.2.7.8
  %arrayidx11.4.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.8, i32 0, i64 4
  %2622 = load i32* %arrayidx12.4.7.8, align 4
  %arrayidx15.4.7.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.8, i32 0, i64 7
  %2623 = load i32* %arrayidx16.4.7.8, align 4
  %mul.4.7.8 = mul nsw i32 %2622, %2623
  %arrayidx19.4.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.8, i32 0, i64 7
  %2624 = load i32* %arrayidx20.4.7.8, align 4
  %add.4.7.8 = add nsw i32 %2624, %mul.4.7.8
  store i32 %add.4.7.8, i32* %arrayidx20.4.7.8, align 4
  br label %for.inc.4.7.8

for.inc.4.7.8:                                    ; preds = %for.inc.3.7.8
  %arrayidx11.5.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.8, i32 0, i64 5
  %2625 = load i32* %arrayidx12.5.7.8, align 4
  %arrayidx15.5.7.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.8, i32 0, i64 7
  %2626 = load i32* %arrayidx16.5.7.8, align 4
  %mul.5.7.8 = mul nsw i32 %2625, %2626
  %arrayidx19.5.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.8, i32 0, i64 7
  %2627 = load i32* %arrayidx20.5.7.8, align 4
  %add.5.7.8 = add nsw i32 %2627, %mul.5.7.8
  store i32 %add.5.7.8, i32* %arrayidx20.5.7.8, align 4
  br label %for.inc.5.7.8

for.inc.5.7.8:                                    ; preds = %for.inc.4.7.8
  %arrayidx11.6.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.8, i32 0, i64 6
  %2628 = load i32* %arrayidx12.6.7.8, align 4
  %arrayidx15.6.7.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.8, i32 0, i64 7
  %2629 = load i32* %arrayidx16.6.7.8, align 4
  %mul.6.7.8 = mul nsw i32 %2628, %2629
  %arrayidx19.6.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.8, i32 0, i64 7
  %2630 = load i32* %arrayidx20.6.7.8, align 4
  %add.6.7.8 = add nsw i32 %2630, %mul.6.7.8
  store i32 %add.6.7.8, i32* %arrayidx20.6.7.8, align 4
  br label %for.inc.6.7.8

for.inc.6.7.8:                                    ; preds = %for.inc.5.7.8
  %arrayidx11.7.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.8, i32 0, i64 7
  %2631 = load i32* %arrayidx12.7.7.8, align 4
  %arrayidx15.7.7.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.8, i32 0, i64 7
  %2632 = load i32* %arrayidx16.7.7.8, align 4
  %mul.7.7.8 = mul nsw i32 %2631, %2632
  %arrayidx19.7.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.8, i32 0, i64 7
  %2633 = load i32* %arrayidx20.7.7.8, align 4
  %add.7.7.8 = add nsw i32 %2633, %mul.7.7.8
  store i32 %add.7.7.8, i32* %arrayidx20.7.7.8, align 4
  br label %for.inc.7.7.8

for.inc.7.7.8:                                    ; preds = %for.inc.6.7.8
  %arrayidx11.8.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.8, i32 0, i64 8
  %2634 = load i32* %arrayidx12.8.7.8, align 4
  %arrayidx15.8.7.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.8, i32 0, i64 7
  %2635 = load i32* %arrayidx16.8.7.8, align 4
  %mul.8.7.8 = mul nsw i32 %2634, %2635
  %arrayidx19.8.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.8, i32 0, i64 7
  %2636 = load i32* %arrayidx20.8.7.8, align 4
  %add.8.7.8 = add nsw i32 %2636, %mul.8.7.8
  store i32 %add.8.7.8, i32* %arrayidx20.8.7.8, align 4
  br label %for.inc.8.7.8

for.inc.8.7.8:                                    ; preds = %for.inc.7.7.8
  %arrayidx11.9.7.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.7.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.8, i32 0, i64 9
  %2637 = load i32* %arrayidx12.9.7.8, align 4
  %arrayidx15.9.7.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.8, i32 0, i64 7
  %2638 = load i32* %arrayidx16.9.7.8, align 4
  %mul.9.7.8 = mul nsw i32 %2637, %2638
  %arrayidx19.9.7.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.7.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.8, i32 0, i64 7
  %2639 = load i32* %arrayidx20.9.7.8, align 4
  %add.9.7.8 = add nsw i32 %2639, %mul.9.7.8
  store i32 %add.9.7.8, i32* %arrayidx20.9.7.8, align 4
  br label %for.inc.9.7.8

for.inc.9.7.8:                                    ; preds = %for.inc.8.7.8
  br label %for.inc21.7.8

for.inc21.7.8:                                    ; preds = %for.inc.9.7.8
  %arrayidx.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.8.8 = getelementptr inbounds [10 x i32]* %arrayidx.8.8, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.8, align 4
  br label %for.body8.8.8

for.body8.8.8:                                    ; preds = %for.inc21.7.8
  %arrayidx11.874.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.875.8 = getelementptr inbounds [10 x i32]* %arrayidx11.874.8, i32 0, i64 0
  %2640 = load i32* %arrayidx12.875.8, align 4
  %arrayidx16.876.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %2641 = load i32* %arrayidx16.876.8, align 4
  %mul.877.8 = mul nsw i32 %2640, %2641
  %arrayidx19.879.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.880.8 = getelementptr inbounds [10 x i32]* %arrayidx19.879.8, i32 0, i64 8
  %2642 = load i32* %arrayidx20.880.8, align 4
  %add.881.8 = add nsw i32 %2642, %mul.877.8
  store i32 %add.881.8, i32* %arrayidx20.880.8, align 4
  br label %for.inc.882.8

for.inc.882.8:                                    ; preds = %for.body8.8.8
  %arrayidx11.1.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.8, i32 0, i64 1
  %2643 = load i32* %arrayidx12.1.8.8, align 4
  %arrayidx15.1.8.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.8, i32 0, i64 8
  %2644 = load i32* %arrayidx16.1.8.8, align 4
  %mul.1.8.8 = mul nsw i32 %2643, %2644
  %arrayidx19.1.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.8, i32 0, i64 8
  %2645 = load i32* %arrayidx20.1.8.8, align 4
  %add.1.8.8 = add nsw i32 %2645, %mul.1.8.8
  store i32 %add.1.8.8, i32* %arrayidx20.1.8.8, align 4
  br label %for.inc.1.8.8

for.inc.1.8.8:                                    ; preds = %for.inc.882.8
  %arrayidx11.2.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.8, i32 0, i64 2
  %2646 = load i32* %arrayidx12.2.8.8, align 4
  %arrayidx15.2.8.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.8, i32 0, i64 8
  %2647 = load i32* %arrayidx16.2.8.8, align 4
  %mul.2.8.8 = mul nsw i32 %2646, %2647
  %arrayidx19.2.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.8, i32 0, i64 8
  %2648 = load i32* %arrayidx20.2.8.8, align 4
  %add.2.8.8 = add nsw i32 %2648, %mul.2.8.8
  store i32 %add.2.8.8, i32* %arrayidx20.2.8.8, align 4
  br label %for.inc.2.8.8

for.inc.2.8.8:                                    ; preds = %for.inc.1.8.8
  %arrayidx11.3.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.8, i32 0, i64 3
  %2649 = load i32* %arrayidx12.3.8.8, align 4
  %arrayidx15.3.8.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.8, i32 0, i64 8
  %2650 = load i32* %arrayidx16.3.8.8, align 4
  %mul.3.8.8 = mul nsw i32 %2649, %2650
  %arrayidx19.3.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.8, i32 0, i64 8
  %2651 = load i32* %arrayidx20.3.8.8, align 4
  %add.3.8.8 = add nsw i32 %2651, %mul.3.8.8
  store i32 %add.3.8.8, i32* %arrayidx20.3.8.8, align 4
  br label %for.inc.3.8.8

for.inc.3.8.8:                                    ; preds = %for.inc.2.8.8
  %arrayidx11.4.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.8, i32 0, i64 4
  %2652 = load i32* %arrayidx12.4.8.8, align 4
  %arrayidx15.4.8.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.8, i32 0, i64 8
  %2653 = load i32* %arrayidx16.4.8.8, align 4
  %mul.4.8.8 = mul nsw i32 %2652, %2653
  %arrayidx19.4.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.8, i32 0, i64 8
  %2654 = load i32* %arrayidx20.4.8.8, align 4
  %add.4.8.8 = add nsw i32 %2654, %mul.4.8.8
  store i32 %add.4.8.8, i32* %arrayidx20.4.8.8, align 4
  br label %for.inc.4.8.8

for.inc.4.8.8:                                    ; preds = %for.inc.3.8.8
  %arrayidx11.5.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.8, i32 0, i64 5
  %2655 = load i32* %arrayidx12.5.8.8, align 4
  %arrayidx15.5.8.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.8, i32 0, i64 8
  %2656 = load i32* %arrayidx16.5.8.8, align 4
  %mul.5.8.8 = mul nsw i32 %2655, %2656
  %arrayidx19.5.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.8, i32 0, i64 8
  %2657 = load i32* %arrayidx20.5.8.8, align 4
  %add.5.8.8 = add nsw i32 %2657, %mul.5.8.8
  store i32 %add.5.8.8, i32* %arrayidx20.5.8.8, align 4
  br label %for.inc.5.8.8

for.inc.5.8.8:                                    ; preds = %for.inc.4.8.8
  %arrayidx11.6.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.8, i32 0, i64 6
  %2658 = load i32* %arrayidx12.6.8.8, align 4
  %arrayidx15.6.8.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.8, i32 0, i64 8
  %2659 = load i32* %arrayidx16.6.8.8, align 4
  %mul.6.8.8 = mul nsw i32 %2658, %2659
  %arrayidx19.6.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.8, i32 0, i64 8
  %2660 = load i32* %arrayidx20.6.8.8, align 4
  %add.6.8.8 = add nsw i32 %2660, %mul.6.8.8
  store i32 %add.6.8.8, i32* %arrayidx20.6.8.8, align 4
  br label %for.inc.6.8.8

for.inc.6.8.8:                                    ; preds = %for.inc.5.8.8
  %arrayidx11.7.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.8, i32 0, i64 7
  %2661 = load i32* %arrayidx12.7.8.8, align 4
  %arrayidx15.7.8.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.8, i32 0, i64 8
  %2662 = load i32* %arrayidx16.7.8.8, align 4
  %mul.7.8.8 = mul nsw i32 %2661, %2662
  %arrayidx19.7.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.8, i32 0, i64 8
  %2663 = load i32* %arrayidx20.7.8.8, align 4
  %add.7.8.8 = add nsw i32 %2663, %mul.7.8.8
  store i32 %add.7.8.8, i32* %arrayidx20.7.8.8, align 4
  br label %for.inc.7.8.8

for.inc.7.8.8:                                    ; preds = %for.inc.6.8.8
  %arrayidx11.8.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.8, i32 0, i64 8
  %2664 = load i32* %arrayidx12.8.8.8, align 4
  %arrayidx15.8.8.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.8, i32 0, i64 8
  %2665 = load i32* %arrayidx16.8.8.8, align 4
  %mul.8.8.8 = mul nsw i32 %2664, %2665
  %arrayidx19.8.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.8, i32 0, i64 8
  %2666 = load i32* %arrayidx20.8.8.8, align 4
  %add.8.8.8 = add nsw i32 %2666, %mul.8.8.8
  store i32 %add.8.8.8, i32* %arrayidx20.8.8.8, align 4
  br label %for.inc.8.8.8

for.inc.8.8.8:                                    ; preds = %for.inc.7.8.8
  %arrayidx11.9.8.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.8.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.8, i32 0, i64 9
  %2667 = load i32* %arrayidx12.9.8.8, align 4
  %arrayidx15.9.8.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.8, i32 0, i64 8
  %2668 = load i32* %arrayidx16.9.8.8, align 4
  %mul.9.8.8 = mul nsw i32 %2667, %2668
  %arrayidx19.9.8.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.8.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.8, i32 0, i64 8
  %2669 = load i32* %arrayidx20.9.8.8, align 4
  %add.9.8.8 = add nsw i32 %2669, %mul.9.8.8
  store i32 %add.9.8.8, i32* %arrayidx20.9.8.8, align 4
  br label %for.inc.9.8.8

for.inc.9.8.8:                                    ; preds = %for.inc.8.8.8
  br label %for.inc21.8.8

for.inc21.8.8:                                    ; preds = %for.inc.9.8.8
  %arrayidx.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx5.9.8 = getelementptr inbounds [10 x i32]* %arrayidx.9.8, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.8, align 4
  br label %for.body8.9.8

for.body8.9.8:                                    ; preds = %for.inc21.8.8
  %arrayidx11.984.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.985.8 = getelementptr inbounds [10 x i32]* %arrayidx11.984.8, i32 0, i64 0
  %2670 = load i32* %arrayidx12.985.8, align 4
  %arrayidx16.986.8 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %2671 = load i32* %arrayidx16.986.8, align 4
  %mul.987.8 = mul nsw i32 %2670, %2671
  %arrayidx19.989.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.990.8 = getelementptr inbounds [10 x i32]* %arrayidx19.989.8, i32 0, i64 9
  %2672 = load i32* %arrayidx20.990.8, align 4
  %add.991.8 = add nsw i32 %2672, %mul.987.8
  store i32 %add.991.8, i32* %arrayidx20.990.8, align 4
  br label %for.inc.992.8

for.inc.992.8:                                    ; preds = %for.body8.9.8
  %arrayidx11.1.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.1.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.8, i32 0, i64 1
  %2673 = load i32* %arrayidx12.1.9.8, align 4
  %arrayidx15.1.9.8 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.8, i32 0, i64 9
  %2674 = load i32* %arrayidx16.1.9.8, align 4
  %mul.1.9.8 = mul nsw i32 %2673, %2674
  %arrayidx19.1.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.1.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.8, i32 0, i64 9
  %2675 = load i32* %arrayidx20.1.9.8, align 4
  %add.1.9.8 = add nsw i32 %2675, %mul.1.9.8
  store i32 %add.1.9.8, i32* %arrayidx20.1.9.8, align 4
  br label %for.inc.1.9.8

for.inc.1.9.8:                                    ; preds = %for.inc.992.8
  %arrayidx11.2.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.2.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.8, i32 0, i64 2
  %2676 = load i32* %arrayidx12.2.9.8, align 4
  %arrayidx15.2.9.8 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.8, i32 0, i64 9
  %2677 = load i32* %arrayidx16.2.9.8, align 4
  %mul.2.9.8 = mul nsw i32 %2676, %2677
  %arrayidx19.2.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.2.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.8, i32 0, i64 9
  %2678 = load i32* %arrayidx20.2.9.8, align 4
  %add.2.9.8 = add nsw i32 %2678, %mul.2.9.8
  store i32 %add.2.9.8, i32* %arrayidx20.2.9.8, align 4
  br label %for.inc.2.9.8

for.inc.2.9.8:                                    ; preds = %for.inc.1.9.8
  %arrayidx11.3.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.3.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.8, i32 0, i64 3
  %2679 = load i32* %arrayidx12.3.9.8, align 4
  %arrayidx15.3.9.8 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.8, i32 0, i64 9
  %2680 = load i32* %arrayidx16.3.9.8, align 4
  %mul.3.9.8 = mul nsw i32 %2679, %2680
  %arrayidx19.3.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.3.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.8, i32 0, i64 9
  %2681 = load i32* %arrayidx20.3.9.8, align 4
  %add.3.9.8 = add nsw i32 %2681, %mul.3.9.8
  store i32 %add.3.9.8, i32* %arrayidx20.3.9.8, align 4
  br label %for.inc.3.9.8

for.inc.3.9.8:                                    ; preds = %for.inc.2.9.8
  %arrayidx11.4.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.4.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.8, i32 0, i64 4
  %2682 = load i32* %arrayidx12.4.9.8, align 4
  %arrayidx15.4.9.8 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.8, i32 0, i64 9
  %2683 = load i32* %arrayidx16.4.9.8, align 4
  %mul.4.9.8 = mul nsw i32 %2682, %2683
  %arrayidx19.4.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.4.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.8, i32 0, i64 9
  %2684 = load i32* %arrayidx20.4.9.8, align 4
  %add.4.9.8 = add nsw i32 %2684, %mul.4.9.8
  store i32 %add.4.9.8, i32* %arrayidx20.4.9.8, align 4
  br label %for.inc.4.9.8

for.inc.4.9.8:                                    ; preds = %for.inc.3.9.8
  %arrayidx11.5.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.5.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.8, i32 0, i64 5
  %2685 = load i32* %arrayidx12.5.9.8, align 4
  %arrayidx15.5.9.8 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.8, i32 0, i64 9
  %2686 = load i32* %arrayidx16.5.9.8, align 4
  %mul.5.9.8 = mul nsw i32 %2685, %2686
  %arrayidx19.5.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.5.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.8, i32 0, i64 9
  %2687 = load i32* %arrayidx20.5.9.8, align 4
  %add.5.9.8 = add nsw i32 %2687, %mul.5.9.8
  store i32 %add.5.9.8, i32* %arrayidx20.5.9.8, align 4
  br label %for.inc.5.9.8

for.inc.5.9.8:                                    ; preds = %for.inc.4.9.8
  %arrayidx11.6.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.6.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.8, i32 0, i64 6
  %2688 = load i32* %arrayidx12.6.9.8, align 4
  %arrayidx15.6.9.8 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.8, i32 0, i64 9
  %2689 = load i32* %arrayidx16.6.9.8, align 4
  %mul.6.9.8 = mul nsw i32 %2688, %2689
  %arrayidx19.6.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.6.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.8, i32 0, i64 9
  %2690 = load i32* %arrayidx20.6.9.8, align 4
  %add.6.9.8 = add nsw i32 %2690, %mul.6.9.8
  store i32 %add.6.9.8, i32* %arrayidx20.6.9.8, align 4
  br label %for.inc.6.9.8

for.inc.6.9.8:                                    ; preds = %for.inc.5.9.8
  %arrayidx11.7.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.7.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.8, i32 0, i64 7
  %2691 = load i32* %arrayidx12.7.9.8, align 4
  %arrayidx15.7.9.8 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.8, i32 0, i64 9
  %2692 = load i32* %arrayidx16.7.9.8, align 4
  %mul.7.9.8 = mul nsw i32 %2691, %2692
  %arrayidx19.7.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.7.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.8, i32 0, i64 9
  %2693 = load i32* %arrayidx20.7.9.8, align 4
  %add.7.9.8 = add nsw i32 %2693, %mul.7.9.8
  store i32 %add.7.9.8, i32* %arrayidx20.7.9.8, align 4
  br label %for.inc.7.9.8

for.inc.7.9.8:                                    ; preds = %for.inc.6.9.8
  %arrayidx11.8.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.8.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.8, i32 0, i64 8
  %2694 = load i32* %arrayidx12.8.9.8, align 4
  %arrayidx15.8.9.8 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.8, i32 0, i64 9
  %2695 = load i32* %arrayidx16.8.9.8, align 4
  %mul.8.9.8 = mul nsw i32 %2694, %2695
  %arrayidx19.8.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.8.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.8, i32 0, i64 9
  %2696 = load i32* %arrayidx20.8.9.8, align 4
  %add.8.9.8 = add nsw i32 %2696, %mul.8.9.8
  store i32 %add.8.9.8, i32* %arrayidx20.8.9.8, align 4
  br label %for.inc.8.9.8

for.inc.8.9.8:                                    ; preds = %for.inc.7.9.8
  %arrayidx11.9.9.8 = getelementptr inbounds [10 x i32]* %a, i64 8
  %arrayidx12.9.9.8 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.8, i32 0, i64 9
  %2697 = load i32* %arrayidx12.9.9.8, align 4
  %arrayidx15.9.9.8 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.8 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.8, i32 0, i64 9
  %2698 = load i32* %arrayidx16.9.9.8, align 4
  %mul.9.9.8 = mul nsw i32 %2697, %2698
  %arrayidx19.9.9.8 = getelementptr inbounds [10 x i32]* %c, i64 8
  %arrayidx20.9.9.8 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.8, i32 0, i64 9
  %2699 = load i32* %arrayidx20.9.9.8, align 4
  %add.9.9.8 = add nsw i32 %2699, %mul.9.9.8
  store i32 %add.9.9.8, i32* %arrayidx20.9.9.8, align 4
  br label %for.inc.9.9.8

for.inc.9.9.8:                                    ; preds = %for.inc.8.9.8
  br label %for.inc21.9.8

for.inc21.9.8:                                    ; preds = %for.inc.9.9.8
  br label %for.inc24.8

for.inc24.8:                                      ; preds = %for.inc21.9.8
  br label %for.body3.9

for.body3.9:                                      ; preds = %for.inc24.8
  %arrayidx.9838 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.9839 = getelementptr inbounds [10 x i32]* %arrayidx.9838, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.9839, align 4
  br label %for.body8.9847

for.body8.9847:                                   ; preds = %for.body3.9
  %arrayidx11.9840 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9841 = getelementptr inbounds [10 x i32]* %arrayidx11.9840, i32 0, i64 0
  %2700 = load i32* %arrayidx12.9841, align 4
  %arrayidx16.9842 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 0
  %2701 = load i32* %arrayidx16.9842, align 4
  %mul.9843 = mul nsw i32 %2700, %2701
  %arrayidx19.9844 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9845 = getelementptr inbounds [10 x i32]* %arrayidx19.9844, i32 0, i64 0
  %2702 = load i32* %arrayidx20.9845, align 4
  %add.9846 = add nsw i32 %2702, %mul.9843
  store i32 %add.9846, i32* %arrayidx20.9845, align 4
  br label %for.inc.9856

for.inc.9856:                                     ; preds = %for.body8.9847
  %arrayidx11.1.9848 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.9849 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9848, i32 0, i64 1
  %2703 = load i32* %arrayidx12.1.9849, align 4
  %arrayidx15.1.9850 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9851 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9850, i32 0, i64 0
  %2704 = load i32* %arrayidx16.1.9851, align 4
  %mul.1.9852 = mul nsw i32 %2703, %2704
  %arrayidx19.1.9853 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.9854 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9853, i32 0, i64 0
  %2705 = load i32* %arrayidx20.1.9854, align 4
  %add.1.9855 = add nsw i32 %2705, %mul.1.9852
  store i32 %add.1.9855, i32* %arrayidx20.1.9854, align 4
  br label %for.inc.1.9865

for.inc.1.9865:                                   ; preds = %for.inc.9856
  %arrayidx11.2.9857 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.9858 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9857, i32 0, i64 2
  %2706 = load i32* %arrayidx12.2.9858, align 4
  %arrayidx15.2.9859 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9860 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9859, i32 0, i64 0
  %2707 = load i32* %arrayidx16.2.9860, align 4
  %mul.2.9861 = mul nsw i32 %2706, %2707
  %arrayidx19.2.9862 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.9863 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9862, i32 0, i64 0
  %2708 = load i32* %arrayidx20.2.9863, align 4
  %add.2.9864 = add nsw i32 %2708, %mul.2.9861
  store i32 %add.2.9864, i32* %arrayidx20.2.9863, align 4
  br label %for.inc.2.9874

for.inc.2.9874:                                   ; preds = %for.inc.1.9865
  %arrayidx11.3.9866 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.9867 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9866, i32 0, i64 3
  %2709 = load i32* %arrayidx12.3.9867, align 4
  %arrayidx15.3.9868 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9869 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9868, i32 0, i64 0
  %2710 = load i32* %arrayidx16.3.9869, align 4
  %mul.3.9870 = mul nsw i32 %2709, %2710
  %arrayidx19.3.9871 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.9872 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9871, i32 0, i64 0
  %2711 = load i32* %arrayidx20.3.9872, align 4
  %add.3.9873 = add nsw i32 %2711, %mul.3.9870
  store i32 %add.3.9873, i32* %arrayidx20.3.9872, align 4
  br label %for.inc.3.9883

for.inc.3.9883:                                   ; preds = %for.inc.2.9874
  %arrayidx11.4.9875 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.9876 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9875, i32 0, i64 4
  %2712 = load i32* %arrayidx12.4.9876, align 4
  %arrayidx15.4.9877 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9878 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9877, i32 0, i64 0
  %2713 = load i32* %arrayidx16.4.9878, align 4
  %mul.4.9879 = mul nsw i32 %2712, %2713
  %arrayidx19.4.9880 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.9881 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9880, i32 0, i64 0
  %2714 = load i32* %arrayidx20.4.9881, align 4
  %add.4.9882 = add nsw i32 %2714, %mul.4.9879
  store i32 %add.4.9882, i32* %arrayidx20.4.9881, align 4
  br label %for.inc.4.9892

for.inc.4.9892:                                   ; preds = %for.inc.3.9883
  %arrayidx11.5.9884 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.9885 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9884, i32 0, i64 5
  %2715 = load i32* %arrayidx12.5.9885, align 4
  %arrayidx15.5.9886 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9887 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9886, i32 0, i64 0
  %2716 = load i32* %arrayidx16.5.9887, align 4
  %mul.5.9888 = mul nsw i32 %2715, %2716
  %arrayidx19.5.9889 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.9890 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9889, i32 0, i64 0
  %2717 = load i32* %arrayidx20.5.9890, align 4
  %add.5.9891 = add nsw i32 %2717, %mul.5.9888
  store i32 %add.5.9891, i32* %arrayidx20.5.9890, align 4
  br label %for.inc.5.9901

for.inc.5.9901:                                   ; preds = %for.inc.4.9892
  %arrayidx11.6.9893 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.9894 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9893, i32 0, i64 6
  %2718 = load i32* %arrayidx12.6.9894, align 4
  %arrayidx15.6.9895 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9896 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9895, i32 0, i64 0
  %2719 = load i32* %arrayidx16.6.9896, align 4
  %mul.6.9897 = mul nsw i32 %2718, %2719
  %arrayidx19.6.9898 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.9899 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9898, i32 0, i64 0
  %2720 = load i32* %arrayidx20.6.9899, align 4
  %add.6.9900 = add nsw i32 %2720, %mul.6.9897
  store i32 %add.6.9900, i32* %arrayidx20.6.9899, align 4
  br label %for.inc.6.9910

for.inc.6.9910:                                   ; preds = %for.inc.5.9901
  %arrayidx11.7.9902 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.9903 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9902, i32 0, i64 7
  %2721 = load i32* %arrayidx12.7.9903, align 4
  %arrayidx15.7.9904 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9905 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9904, i32 0, i64 0
  %2722 = load i32* %arrayidx16.7.9905, align 4
  %mul.7.9906 = mul nsw i32 %2721, %2722
  %arrayidx19.7.9907 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.9908 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9907, i32 0, i64 0
  %2723 = load i32* %arrayidx20.7.9908, align 4
  %add.7.9909 = add nsw i32 %2723, %mul.7.9906
  store i32 %add.7.9909, i32* %arrayidx20.7.9908, align 4
  br label %for.inc.7.9919

for.inc.7.9919:                                   ; preds = %for.inc.6.9910
  %arrayidx11.8.9911 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.9912 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9911, i32 0, i64 8
  %2724 = load i32* %arrayidx12.8.9912, align 4
  %arrayidx15.8.9913 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9914 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9913, i32 0, i64 0
  %2725 = load i32* %arrayidx16.8.9914, align 4
  %mul.8.9915 = mul nsw i32 %2724, %2725
  %arrayidx19.8.9916 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.9917 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9916, i32 0, i64 0
  %2726 = load i32* %arrayidx20.8.9917, align 4
  %add.8.9918 = add nsw i32 %2726, %mul.8.9915
  store i32 %add.8.9918, i32* %arrayidx20.8.9917, align 4
  br label %for.inc.8.9928

for.inc.8.9928:                                   ; preds = %for.inc.7.9919
  %arrayidx11.9.9920 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.9921 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9920, i32 0, i64 9
  %2727 = load i32* %arrayidx12.9.9921, align 4
  %arrayidx15.9.9922 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9923 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9922, i32 0, i64 0
  %2728 = load i32* %arrayidx16.9.9923, align 4
  %mul.9.9924 = mul nsw i32 %2727, %2728
  %arrayidx19.9.9925 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.9926 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9925, i32 0, i64 0
  %2729 = load i32* %arrayidx20.9.9926, align 4
  %add.9.9927 = add nsw i32 %2729, %mul.9.9924
  store i32 %add.9.9927, i32* %arrayidx20.9.9926, align 4
  br label %for.inc.9.9929

for.inc.9.9929:                                   ; preds = %for.inc.8.9928
  br label %for.inc21.9930

for.inc21.9930:                                   ; preds = %for.inc.9.9929
  %arrayidx.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.1.9 = getelementptr inbounds [10 x i32]* %arrayidx.1.9, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.9, align 4
  br label %for.body8.1.9

for.body8.1.9:                                    ; preds = %for.inc21.9930
  %arrayidx11.14.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.15.9 = getelementptr inbounds [10 x i32]* %arrayidx11.14.9, i32 0, i64 0
  %2730 = load i32* %arrayidx12.15.9, align 4
  %arrayidx16.16.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 1
  %2731 = load i32* %arrayidx16.16.9, align 4
  %mul.17.9 = mul nsw i32 %2730, %2731
  %arrayidx19.19.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.110.9 = getelementptr inbounds [10 x i32]* %arrayidx19.19.9, i32 0, i64 1
  %2732 = load i32* %arrayidx20.110.9, align 4
  %add.111.9 = add nsw i32 %2732, %mul.17.9
  store i32 %add.111.9, i32* %arrayidx20.110.9, align 4
  br label %for.inc.112.9

for.inc.112.9:                                    ; preds = %for.body8.1.9
  %arrayidx11.1.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.1.9, i32 0, i64 1
  %2733 = load i32* %arrayidx12.1.1.9, align 4
  %arrayidx15.1.1.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.1.9, i32 0, i64 1
  %2734 = load i32* %arrayidx16.1.1.9, align 4
  %mul.1.1.9 = mul nsw i32 %2733, %2734
  %arrayidx19.1.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.1.9, i32 0, i64 1
  %2735 = load i32* %arrayidx20.1.1.9, align 4
  %add.1.1.9 = add nsw i32 %2735, %mul.1.1.9
  store i32 %add.1.1.9, i32* %arrayidx20.1.1.9, align 4
  br label %for.inc.1.1.9

for.inc.1.1.9:                                    ; preds = %for.inc.112.9
  %arrayidx11.2.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.1.9, i32 0, i64 2
  %2736 = load i32* %arrayidx12.2.1.9, align 4
  %arrayidx15.2.1.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.1.9, i32 0, i64 1
  %2737 = load i32* %arrayidx16.2.1.9, align 4
  %mul.2.1.9 = mul nsw i32 %2736, %2737
  %arrayidx19.2.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.1.9, i32 0, i64 1
  %2738 = load i32* %arrayidx20.2.1.9, align 4
  %add.2.1.9 = add nsw i32 %2738, %mul.2.1.9
  store i32 %add.2.1.9, i32* %arrayidx20.2.1.9, align 4
  br label %for.inc.2.1.9

for.inc.2.1.9:                                    ; preds = %for.inc.1.1.9
  %arrayidx11.3.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.1.9, i32 0, i64 3
  %2739 = load i32* %arrayidx12.3.1.9, align 4
  %arrayidx15.3.1.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.1.9, i32 0, i64 1
  %2740 = load i32* %arrayidx16.3.1.9, align 4
  %mul.3.1.9 = mul nsw i32 %2739, %2740
  %arrayidx19.3.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.1.9, i32 0, i64 1
  %2741 = load i32* %arrayidx20.3.1.9, align 4
  %add.3.1.9 = add nsw i32 %2741, %mul.3.1.9
  store i32 %add.3.1.9, i32* %arrayidx20.3.1.9, align 4
  br label %for.inc.3.1.9

for.inc.3.1.9:                                    ; preds = %for.inc.2.1.9
  %arrayidx11.4.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.1.9, i32 0, i64 4
  %2742 = load i32* %arrayidx12.4.1.9, align 4
  %arrayidx15.4.1.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.1.9, i32 0, i64 1
  %2743 = load i32* %arrayidx16.4.1.9, align 4
  %mul.4.1.9 = mul nsw i32 %2742, %2743
  %arrayidx19.4.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.1.9, i32 0, i64 1
  %2744 = load i32* %arrayidx20.4.1.9, align 4
  %add.4.1.9 = add nsw i32 %2744, %mul.4.1.9
  store i32 %add.4.1.9, i32* %arrayidx20.4.1.9, align 4
  br label %for.inc.4.1.9

for.inc.4.1.9:                                    ; preds = %for.inc.3.1.9
  %arrayidx11.5.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.1.9, i32 0, i64 5
  %2745 = load i32* %arrayidx12.5.1.9, align 4
  %arrayidx15.5.1.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.1.9, i32 0, i64 1
  %2746 = load i32* %arrayidx16.5.1.9, align 4
  %mul.5.1.9 = mul nsw i32 %2745, %2746
  %arrayidx19.5.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.1.9, i32 0, i64 1
  %2747 = load i32* %arrayidx20.5.1.9, align 4
  %add.5.1.9 = add nsw i32 %2747, %mul.5.1.9
  store i32 %add.5.1.9, i32* %arrayidx20.5.1.9, align 4
  br label %for.inc.5.1.9

for.inc.5.1.9:                                    ; preds = %for.inc.4.1.9
  %arrayidx11.6.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.1.9, i32 0, i64 6
  %2748 = load i32* %arrayidx12.6.1.9, align 4
  %arrayidx15.6.1.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.1.9, i32 0, i64 1
  %2749 = load i32* %arrayidx16.6.1.9, align 4
  %mul.6.1.9 = mul nsw i32 %2748, %2749
  %arrayidx19.6.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.1.9, i32 0, i64 1
  %2750 = load i32* %arrayidx20.6.1.9, align 4
  %add.6.1.9 = add nsw i32 %2750, %mul.6.1.9
  store i32 %add.6.1.9, i32* %arrayidx20.6.1.9, align 4
  br label %for.inc.6.1.9

for.inc.6.1.9:                                    ; preds = %for.inc.5.1.9
  %arrayidx11.7.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.1.9, i32 0, i64 7
  %2751 = load i32* %arrayidx12.7.1.9, align 4
  %arrayidx15.7.1.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.1.9, i32 0, i64 1
  %2752 = load i32* %arrayidx16.7.1.9, align 4
  %mul.7.1.9 = mul nsw i32 %2751, %2752
  %arrayidx19.7.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.1.9, i32 0, i64 1
  %2753 = load i32* %arrayidx20.7.1.9, align 4
  %add.7.1.9 = add nsw i32 %2753, %mul.7.1.9
  store i32 %add.7.1.9, i32* %arrayidx20.7.1.9, align 4
  br label %for.inc.7.1.9

for.inc.7.1.9:                                    ; preds = %for.inc.6.1.9
  %arrayidx11.8.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.1.9, i32 0, i64 8
  %2754 = load i32* %arrayidx12.8.1.9, align 4
  %arrayidx15.8.1.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.1.9, i32 0, i64 1
  %2755 = load i32* %arrayidx16.8.1.9, align 4
  %mul.8.1.9 = mul nsw i32 %2754, %2755
  %arrayidx19.8.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.1.9, i32 0, i64 1
  %2756 = load i32* %arrayidx20.8.1.9, align 4
  %add.8.1.9 = add nsw i32 %2756, %mul.8.1.9
  store i32 %add.8.1.9, i32* %arrayidx20.8.1.9, align 4
  br label %for.inc.8.1.9

for.inc.8.1.9:                                    ; preds = %for.inc.7.1.9
  %arrayidx11.9.1.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.1.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.1.9, i32 0, i64 9
  %2757 = load i32* %arrayidx12.9.1.9, align 4
  %arrayidx15.9.1.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.1.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.1.9, i32 0, i64 1
  %2758 = load i32* %arrayidx16.9.1.9, align 4
  %mul.9.1.9 = mul nsw i32 %2757, %2758
  %arrayidx19.9.1.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.1.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.1.9, i32 0, i64 1
  %2759 = load i32* %arrayidx20.9.1.9, align 4
  %add.9.1.9 = add nsw i32 %2759, %mul.9.1.9
  store i32 %add.9.1.9, i32* %arrayidx20.9.1.9, align 4
  br label %for.inc.9.1.9

for.inc.9.1.9:                                    ; preds = %for.inc.8.1.9
  br label %for.inc21.1.9

for.inc21.1.9:                                    ; preds = %for.inc.9.1.9
  %arrayidx.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.2.9 = getelementptr inbounds [10 x i32]* %arrayidx.2.9, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.9, align 4
  br label %for.body8.2.9

for.body8.2.9:                                    ; preds = %for.inc21.1.9
  %arrayidx11.214.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.215.9 = getelementptr inbounds [10 x i32]* %arrayidx11.214.9, i32 0, i64 0
  %2760 = load i32* %arrayidx12.215.9, align 4
  %arrayidx16.216.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 2
  %2761 = load i32* %arrayidx16.216.9, align 4
  %mul.217.9 = mul nsw i32 %2760, %2761
  %arrayidx19.219.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.220.9 = getelementptr inbounds [10 x i32]* %arrayidx19.219.9, i32 0, i64 2
  %2762 = load i32* %arrayidx20.220.9, align 4
  %add.221.9 = add nsw i32 %2762, %mul.217.9
  store i32 %add.221.9, i32* %arrayidx20.220.9, align 4
  br label %for.inc.222.9

for.inc.222.9:                                    ; preds = %for.body8.2.9
  %arrayidx11.1.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.2.9, i32 0, i64 1
  %2763 = load i32* %arrayidx12.1.2.9, align 4
  %arrayidx15.1.2.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.2.9, i32 0, i64 2
  %2764 = load i32* %arrayidx16.1.2.9, align 4
  %mul.1.2.9 = mul nsw i32 %2763, %2764
  %arrayidx19.1.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.2.9, i32 0, i64 2
  %2765 = load i32* %arrayidx20.1.2.9, align 4
  %add.1.2.9 = add nsw i32 %2765, %mul.1.2.9
  store i32 %add.1.2.9, i32* %arrayidx20.1.2.9, align 4
  br label %for.inc.1.2.9

for.inc.1.2.9:                                    ; preds = %for.inc.222.9
  %arrayidx11.2.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.2.9, i32 0, i64 2
  %2766 = load i32* %arrayidx12.2.2.9, align 4
  %arrayidx15.2.2.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.2.9, i32 0, i64 2
  %2767 = load i32* %arrayidx16.2.2.9, align 4
  %mul.2.2.9 = mul nsw i32 %2766, %2767
  %arrayidx19.2.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.2.9, i32 0, i64 2
  %2768 = load i32* %arrayidx20.2.2.9, align 4
  %add.2.2.9 = add nsw i32 %2768, %mul.2.2.9
  store i32 %add.2.2.9, i32* %arrayidx20.2.2.9, align 4
  br label %for.inc.2.2.9

for.inc.2.2.9:                                    ; preds = %for.inc.1.2.9
  %arrayidx11.3.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.2.9, i32 0, i64 3
  %2769 = load i32* %arrayidx12.3.2.9, align 4
  %arrayidx15.3.2.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.2.9, i32 0, i64 2
  %2770 = load i32* %arrayidx16.3.2.9, align 4
  %mul.3.2.9 = mul nsw i32 %2769, %2770
  %arrayidx19.3.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.2.9, i32 0, i64 2
  %2771 = load i32* %arrayidx20.3.2.9, align 4
  %add.3.2.9 = add nsw i32 %2771, %mul.3.2.9
  store i32 %add.3.2.9, i32* %arrayidx20.3.2.9, align 4
  br label %for.inc.3.2.9

for.inc.3.2.9:                                    ; preds = %for.inc.2.2.9
  %arrayidx11.4.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.2.9, i32 0, i64 4
  %2772 = load i32* %arrayidx12.4.2.9, align 4
  %arrayidx15.4.2.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.2.9, i32 0, i64 2
  %2773 = load i32* %arrayidx16.4.2.9, align 4
  %mul.4.2.9 = mul nsw i32 %2772, %2773
  %arrayidx19.4.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.2.9, i32 0, i64 2
  %2774 = load i32* %arrayidx20.4.2.9, align 4
  %add.4.2.9 = add nsw i32 %2774, %mul.4.2.9
  store i32 %add.4.2.9, i32* %arrayidx20.4.2.9, align 4
  br label %for.inc.4.2.9

for.inc.4.2.9:                                    ; preds = %for.inc.3.2.9
  %arrayidx11.5.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.2.9, i32 0, i64 5
  %2775 = load i32* %arrayidx12.5.2.9, align 4
  %arrayidx15.5.2.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.2.9, i32 0, i64 2
  %2776 = load i32* %arrayidx16.5.2.9, align 4
  %mul.5.2.9 = mul nsw i32 %2775, %2776
  %arrayidx19.5.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.2.9, i32 0, i64 2
  %2777 = load i32* %arrayidx20.5.2.9, align 4
  %add.5.2.9 = add nsw i32 %2777, %mul.5.2.9
  store i32 %add.5.2.9, i32* %arrayidx20.5.2.9, align 4
  br label %for.inc.5.2.9

for.inc.5.2.9:                                    ; preds = %for.inc.4.2.9
  %arrayidx11.6.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.2.9, i32 0, i64 6
  %2778 = load i32* %arrayidx12.6.2.9, align 4
  %arrayidx15.6.2.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.2.9, i32 0, i64 2
  %2779 = load i32* %arrayidx16.6.2.9, align 4
  %mul.6.2.9 = mul nsw i32 %2778, %2779
  %arrayidx19.6.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.2.9, i32 0, i64 2
  %2780 = load i32* %arrayidx20.6.2.9, align 4
  %add.6.2.9 = add nsw i32 %2780, %mul.6.2.9
  store i32 %add.6.2.9, i32* %arrayidx20.6.2.9, align 4
  br label %for.inc.6.2.9

for.inc.6.2.9:                                    ; preds = %for.inc.5.2.9
  %arrayidx11.7.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.2.9, i32 0, i64 7
  %2781 = load i32* %arrayidx12.7.2.9, align 4
  %arrayidx15.7.2.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.2.9, i32 0, i64 2
  %2782 = load i32* %arrayidx16.7.2.9, align 4
  %mul.7.2.9 = mul nsw i32 %2781, %2782
  %arrayidx19.7.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.2.9, i32 0, i64 2
  %2783 = load i32* %arrayidx20.7.2.9, align 4
  %add.7.2.9 = add nsw i32 %2783, %mul.7.2.9
  store i32 %add.7.2.9, i32* %arrayidx20.7.2.9, align 4
  br label %for.inc.7.2.9

for.inc.7.2.9:                                    ; preds = %for.inc.6.2.9
  %arrayidx11.8.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.2.9, i32 0, i64 8
  %2784 = load i32* %arrayidx12.8.2.9, align 4
  %arrayidx15.8.2.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.2.9, i32 0, i64 2
  %2785 = load i32* %arrayidx16.8.2.9, align 4
  %mul.8.2.9 = mul nsw i32 %2784, %2785
  %arrayidx19.8.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.2.9, i32 0, i64 2
  %2786 = load i32* %arrayidx20.8.2.9, align 4
  %add.8.2.9 = add nsw i32 %2786, %mul.8.2.9
  store i32 %add.8.2.9, i32* %arrayidx20.8.2.9, align 4
  br label %for.inc.8.2.9

for.inc.8.2.9:                                    ; preds = %for.inc.7.2.9
  %arrayidx11.9.2.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.2.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.2.9, i32 0, i64 9
  %2787 = load i32* %arrayidx12.9.2.9, align 4
  %arrayidx15.9.2.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.2.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.2.9, i32 0, i64 2
  %2788 = load i32* %arrayidx16.9.2.9, align 4
  %mul.9.2.9 = mul nsw i32 %2787, %2788
  %arrayidx19.9.2.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.2.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.2.9, i32 0, i64 2
  %2789 = load i32* %arrayidx20.9.2.9, align 4
  %add.9.2.9 = add nsw i32 %2789, %mul.9.2.9
  store i32 %add.9.2.9, i32* %arrayidx20.9.2.9, align 4
  br label %for.inc.9.2.9

for.inc.9.2.9:                                    ; preds = %for.inc.8.2.9
  br label %for.inc21.2.9

for.inc21.2.9:                                    ; preds = %for.inc.9.2.9
  %arrayidx.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.3.9 = getelementptr inbounds [10 x i32]* %arrayidx.3.9, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.9, align 4
  br label %for.body8.3.9

for.body8.3.9:                                    ; preds = %for.inc21.2.9
  %arrayidx11.324.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.325.9 = getelementptr inbounds [10 x i32]* %arrayidx11.324.9, i32 0, i64 0
  %2790 = load i32* %arrayidx12.325.9, align 4
  %arrayidx16.326.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 3
  %2791 = load i32* %arrayidx16.326.9, align 4
  %mul.327.9 = mul nsw i32 %2790, %2791
  %arrayidx19.329.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.330.9 = getelementptr inbounds [10 x i32]* %arrayidx19.329.9, i32 0, i64 3
  %2792 = load i32* %arrayidx20.330.9, align 4
  %add.331.9 = add nsw i32 %2792, %mul.327.9
  store i32 %add.331.9, i32* %arrayidx20.330.9, align 4
  br label %for.inc.332.9

for.inc.332.9:                                    ; preds = %for.body8.3.9
  %arrayidx11.1.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.3.9, i32 0, i64 1
  %2793 = load i32* %arrayidx12.1.3.9, align 4
  %arrayidx15.1.3.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.3.9, i32 0, i64 3
  %2794 = load i32* %arrayidx16.1.3.9, align 4
  %mul.1.3.9 = mul nsw i32 %2793, %2794
  %arrayidx19.1.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.3.9, i32 0, i64 3
  %2795 = load i32* %arrayidx20.1.3.9, align 4
  %add.1.3.9 = add nsw i32 %2795, %mul.1.3.9
  store i32 %add.1.3.9, i32* %arrayidx20.1.3.9, align 4
  br label %for.inc.1.3.9

for.inc.1.3.9:                                    ; preds = %for.inc.332.9
  %arrayidx11.2.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.3.9, i32 0, i64 2
  %2796 = load i32* %arrayidx12.2.3.9, align 4
  %arrayidx15.2.3.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.3.9, i32 0, i64 3
  %2797 = load i32* %arrayidx16.2.3.9, align 4
  %mul.2.3.9 = mul nsw i32 %2796, %2797
  %arrayidx19.2.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.3.9, i32 0, i64 3
  %2798 = load i32* %arrayidx20.2.3.9, align 4
  %add.2.3.9 = add nsw i32 %2798, %mul.2.3.9
  store i32 %add.2.3.9, i32* %arrayidx20.2.3.9, align 4
  br label %for.inc.2.3.9

for.inc.2.3.9:                                    ; preds = %for.inc.1.3.9
  %arrayidx11.3.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.3.9, i32 0, i64 3
  %2799 = load i32* %arrayidx12.3.3.9, align 4
  %arrayidx15.3.3.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.3.9, i32 0, i64 3
  %2800 = load i32* %arrayidx16.3.3.9, align 4
  %mul.3.3.9 = mul nsw i32 %2799, %2800
  %arrayidx19.3.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.3.9, i32 0, i64 3
  %2801 = load i32* %arrayidx20.3.3.9, align 4
  %add.3.3.9 = add nsw i32 %2801, %mul.3.3.9
  store i32 %add.3.3.9, i32* %arrayidx20.3.3.9, align 4
  br label %for.inc.3.3.9

for.inc.3.3.9:                                    ; preds = %for.inc.2.3.9
  %arrayidx11.4.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.3.9, i32 0, i64 4
  %2802 = load i32* %arrayidx12.4.3.9, align 4
  %arrayidx15.4.3.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.3.9, i32 0, i64 3
  %2803 = load i32* %arrayidx16.4.3.9, align 4
  %mul.4.3.9 = mul nsw i32 %2802, %2803
  %arrayidx19.4.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.3.9, i32 0, i64 3
  %2804 = load i32* %arrayidx20.4.3.9, align 4
  %add.4.3.9 = add nsw i32 %2804, %mul.4.3.9
  store i32 %add.4.3.9, i32* %arrayidx20.4.3.9, align 4
  br label %for.inc.4.3.9

for.inc.4.3.9:                                    ; preds = %for.inc.3.3.9
  %arrayidx11.5.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.3.9, i32 0, i64 5
  %2805 = load i32* %arrayidx12.5.3.9, align 4
  %arrayidx15.5.3.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.3.9, i32 0, i64 3
  %2806 = load i32* %arrayidx16.5.3.9, align 4
  %mul.5.3.9 = mul nsw i32 %2805, %2806
  %arrayidx19.5.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.3.9, i32 0, i64 3
  %2807 = load i32* %arrayidx20.5.3.9, align 4
  %add.5.3.9 = add nsw i32 %2807, %mul.5.3.9
  store i32 %add.5.3.9, i32* %arrayidx20.5.3.9, align 4
  br label %for.inc.5.3.9

for.inc.5.3.9:                                    ; preds = %for.inc.4.3.9
  %arrayidx11.6.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.3.9, i32 0, i64 6
  %2808 = load i32* %arrayidx12.6.3.9, align 4
  %arrayidx15.6.3.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.3.9, i32 0, i64 3
  %2809 = load i32* %arrayidx16.6.3.9, align 4
  %mul.6.3.9 = mul nsw i32 %2808, %2809
  %arrayidx19.6.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.3.9, i32 0, i64 3
  %2810 = load i32* %arrayidx20.6.3.9, align 4
  %add.6.3.9 = add nsw i32 %2810, %mul.6.3.9
  store i32 %add.6.3.9, i32* %arrayidx20.6.3.9, align 4
  br label %for.inc.6.3.9

for.inc.6.3.9:                                    ; preds = %for.inc.5.3.9
  %arrayidx11.7.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.3.9, i32 0, i64 7
  %2811 = load i32* %arrayidx12.7.3.9, align 4
  %arrayidx15.7.3.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.3.9, i32 0, i64 3
  %2812 = load i32* %arrayidx16.7.3.9, align 4
  %mul.7.3.9 = mul nsw i32 %2811, %2812
  %arrayidx19.7.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.3.9, i32 0, i64 3
  %2813 = load i32* %arrayidx20.7.3.9, align 4
  %add.7.3.9 = add nsw i32 %2813, %mul.7.3.9
  store i32 %add.7.3.9, i32* %arrayidx20.7.3.9, align 4
  br label %for.inc.7.3.9

for.inc.7.3.9:                                    ; preds = %for.inc.6.3.9
  %arrayidx11.8.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.3.9, i32 0, i64 8
  %2814 = load i32* %arrayidx12.8.3.9, align 4
  %arrayidx15.8.3.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.3.9, i32 0, i64 3
  %2815 = load i32* %arrayidx16.8.3.9, align 4
  %mul.8.3.9 = mul nsw i32 %2814, %2815
  %arrayidx19.8.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.3.9, i32 0, i64 3
  %2816 = load i32* %arrayidx20.8.3.9, align 4
  %add.8.3.9 = add nsw i32 %2816, %mul.8.3.9
  store i32 %add.8.3.9, i32* %arrayidx20.8.3.9, align 4
  br label %for.inc.8.3.9

for.inc.8.3.9:                                    ; preds = %for.inc.7.3.9
  %arrayidx11.9.3.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.3.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.3.9, i32 0, i64 9
  %2817 = load i32* %arrayidx12.9.3.9, align 4
  %arrayidx15.9.3.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.3.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.3.9, i32 0, i64 3
  %2818 = load i32* %arrayidx16.9.3.9, align 4
  %mul.9.3.9 = mul nsw i32 %2817, %2818
  %arrayidx19.9.3.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.3.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.3.9, i32 0, i64 3
  %2819 = load i32* %arrayidx20.9.3.9, align 4
  %add.9.3.9 = add nsw i32 %2819, %mul.9.3.9
  store i32 %add.9.3.9, i32* %arrayidx20.9.3.9, align 4
  br label %for.inc.9.3.9

for.inc.9.3.9:                                    ; preds = %for.inc.8.3.9
  br label %for.inc21.3.9

for.inc21.3.9:                                    ; preds = %for.inc.9.3.9
  %arrayidx.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.4.9 = getelementptr inbounds [10 x i32]* %arrayidx.4.9, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.9, align 4
  br label %for.body8.4.9

for.body8.4.9:                                    ; preds = %for.inc21.3.9
  %arrayidx11.434.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.435.9 = getelementptr inbounds [10 x i32]* %arrayidx11.434.9, i32 0, i64 0
  %2820 = load i32* %arrayidx12.435.9, align 4
  %arrayidx16.436.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 4
  %2821 = load i32* %arrayidx16.436.9, align 4
  %mul.437.9 = mul nsw i32 %2820, %2821
  %arrayidx19.439.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.440.9 = getelementptr inbounds [10 x i32]* %arrayidx19.439.9, i32 0, i64 4
  %2822 = load i32* %arrayidx20.440.9, align 4
  %add.441.9 = add nsw i32 %2822, %mul.437.9
  store i32 %add.441.9, i32* %arrayidx20.440.9, align 4
  br label %for.inc.442.9

for.inc.442.9:                                    ; preds = %for.body8.4.9
  %arrayidx11.1.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.4.9, i32 0, i64 1
  %2823 = load i32* %arrayidx12.1.4.9, align 4
  %arrayidx15.1.4.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.4.9, i32 0, i64 4
  %2824 = load i32* %arrayidx16.1.4.9, align 4
  %mul.1.4.9 = mul nsw i32 %2823, %2824
  %arrayidx19.1.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.4.9, i32 0, i64 4
  %2825 = load i32* %arrayidx20.1.4.9, align 4
  %add.1.4.9 = add nsw i32 %2825, %mul.1.4.9
  store i32 %add.1.4.9, i32* %arrayidx20.1.4.9, align 4
  br label %for.inc.1.4.9

for.inc.1.4.9:                                    ; preds = %for.inc.442.9
  %arrayidx11.2.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.4.9, i32 0, i64 2
  %2826 = load i32* %arrayidx12.2.4.9, align 4
  %arrayidx15.2.4.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.4.9, i32 0, i64 4
  %2827 = load i32* %arrayidx16.2.4.9, align 4
  %mul.2.4.9 = mul nsw i32 %2826, %2827
  %arrayidx19.2.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.4.9, i32 0, i64 4
  %2828 = load i32* %arrayidx20.2.4.9, align 4
  %add.2.4.9 = add nsw i32 %2828, %mul.2.4.9
  store i32 %add.2.4.9, i32* %arrayidx20.2.4.9, align 4
  br label %for.inc.2.4.9

for.inc.2.4.9:                                    ; preds = %for.inc.1.4.9
  %arrayidx11.3.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.4.9, i32 0, i64 3
  %2829 = load i32* %arrayidx12.3.4.9, align 4
  %arrayidx15.3.4.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.4.9, i32 0, i64 4
  %2830 = load i32* %arrayidx16.3.4.9, align 4
  %mul.3.4.9 = mul nsw i32 %2829, %2830
  %arrayidx19.3.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.4.9, i32 0, i64 4
  %2831 = load i32* %arrayidx20.3.4.9, align 4
  %add.3.4.9 = add nsw i32 %2831, %mul.3.4.9
  store i32 %add.3.4.9, i32* %arrayidx20.3.4.9, align 4
  br label %for.inc.3.4.9

for.inc.3.4.9:                                    ; preds = %for.inc.2.4.9
  %arrayidx11.4.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.4.9, i32 0, i64 4
  %2832 = load i32* %arrayidx12.4.4.9, align 4
  %arrayidx15.4.4.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.4.9, i32 0, i64 4
  %2833 = load i32* %arrayidx16.4.4.9, align 4
  %mul.4.4.9 = mul nsw i32 %2832, %2833
  %arrayidx19.4.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.4.9, i32 0, i64 4
  %2834 = load i32* %arrayidx20.4.4.9, align 4
  %add.4.4.9 = add nsw i32 %2834, %mul.4.4.9
  store i32 %add.4.4.9, i32* %arrayidx20.4.4.9, align 4
  br label %for.inc.4.4.9

for.inc.4.4.9:                                    ; preds = %for.inc.3.4.9
  %arrayidx11.5.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.4.9, i32 0, i64 5
  %2835 = load i32* %arrayidx12.5.4.9, align 4
  %arrayidx15.5.4.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.4.9, i32 0, i64 4
  %2836 = load i32* %arrayidx16.5.4.9, align 4
  %mul.5.4.9 = mul nsw i32 %2835, %2836
  %arrayidx19.5.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.4.9, i32 0, i64 4
  %2837 = load i32* %arrayidx20.5.4.9, align 4
  %add.5.4.9 = add nsw i32 %2837, %mul.5.4.9
  store i32 %add.5.4.9, i32* %arrayidx20.5.4.9, align 4
  br label %for.inc.5.4.9

for.inc.5.4.9:                                    ; preds = %for.inc.4.4.9
  %arrayidx11.6.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.4.9, i32 0, i64 6
  %2838 = load i32* %arrayidx12.6.4.9, align 4
  %arrayidx15.6.4.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.4.9, i32 0, i64 4
  %2839 = load i32* %arrayidx16.6.4.9, align 4
  %mul.6.4.9 = mul nsw i32 %2838, %2839
  %arrayidx19.6.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.4.9, i32 0, i64 4
  %2840 = load i32* %arrayidx20.6.4.9, align 4
  %add.6.4.9 = add nsw i32 %2840, %mul.6.4.9
  store i32 %add.6.4.9, i32* %arrayidx20.6.4.9, align 4
  br label %for.inc.6.4.9

for.inc.6.4.9:                                    ; preds = %for.inc.5.4.9
  %arrayidx11.7.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.4.9, i32 0, i64 7
  %2841 = load i32* %arrayidx12.7.4.9, align 4
  %arrayidx15.7.4.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.4.9, i32 0, i64 4
  %2842 = load i32* %arrayidx16.7.4.9, align 4
  %mul.7.4.9 = mul nsw i32 %2841, %2842
  %arrayidx19.7.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.4.9, i32 0, i64 4
  %2843 = load i32* %arrayidx20.7.4.9, align 4
  %add.7.4.9 = add nsw i32 %2843, %mul.7.4.9
  store i32 %add.7.4.9, i32* %arrayidx20.7.4.9, align 4
  br label %for.inc.7.4.9

for.inc.7.4.9:                                    ; preds = %for.inc.6.4.9
  %arrayidx11.8.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.4.9, i32 0, i64 8
  %2844 = load i32* %arrayidx12.8.4.9, align 4
  %arrayidx15.8.4.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.4.9, i32 0, i64 4
  %2845 = load i32* %arrayidx16.8.4.9, align 4
  %mul.8.4.9 = mul nsw i32 %2844, %2845
  %arrayidx19.8.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.4.9, i32 0, i64 4
  %2846 = load i32* %arrayidx20.8.4.9, align 4
  %add.8.4.9 = add nsw i32 %2846, %mul.8.4.9
  store i32 %add.8.4.9, i32* %arrayidx20.8.4.9, align 4
  br label %for.inc.8.4.9

for.inc.8.4.9:                                    ; preds = %for.inc.7.4.9
  %arrayidx11.9.4.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.4.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.4.9, i32 0, i64 9
  %2847 = load i32* %arrayidx12.9.4.9, align 4
  %arrayidx15.9.4.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.4.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.4.9, i32 0, i64 4
  %2848 = load i32* %arrayidx16.9.4.9, align 4
  %mul.9.4.9 = mul nsw i32 %2847, %2848
  %arrayidx19.9.4.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.4.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.4.9, i32 0, i64 4
  %2849 = load i32* %arrayidx20.9.4.9, align 4
  %add.9.4.9 = add nsw i32 %2849, %mul.9.4.9
  store i32 %add.9.4.9, i32* %arrayidx20.9.4.9, align 4
  br label %for.inc.9.4.9

for.inc.9.4.9:                                    ; preds = %for.inc.8.4.9
  br label %for.inc21.4.9

for.inc21.4.9:                                    ; preds = %for.inc.9.4.9
  %arrayidx.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.5.9 = getelementptr inbounds [10 x i32]* %arrayidx.5.9, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.9, align 4
  br label %for.body8.5.9

for.body8.5.9:                                    ; preds = %for.inc21.4.9
  %arrayidx11.544.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.545.9 = getelementptr inbounds [10 x i32]* %arrayidx11.544.9, i32 0, i64 0
  %2850 = load i32* %arrayidx12.545.9, align 4
  %arrayidx16.546.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 5
  %2851 = load i32* %arrayidx16.546.9, align 4
  %mul.547.9 = mul nsw i32 %2850, %2851
  %arrayidx19.549.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.550.9 = getelementptr inbounds [10 x i32]* %arrayidx19.549.9, i32 0, i64 5
  %2852 = load i32* %arrayidx20.550.9, align 4
  %add.551.9 = add nsw i32 %2852, %mul.547.9
  store i32 %add.551.9, i32* %arrayidx20.550.9, align 4
  br label %for.inc.552.9

for.inc.552.9:                                    ; preds = %for.body8.5.9
  %arrayidx11.1.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.5.9, i32 0, i64 1
  %2853 = load i32* %arrayidx12.1.5.9, align 4
  %arrayidx15.1.5.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.5.9, i32 0, i64 5
  %2854 = load i32* %arrayidx16.1.5.9, align 4
  %mul.1.5.9 = mul nsw i32 %2853, %2854
  %arrayidx19.1.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.5.9, i32 0, i64 5
  %2855 = load i32* %arrayidx20.1.5.9, align 4
  %add.1.5.9 = add nsw i32 %2855, %mul.1.5.9
  store i32 %add.1.5.9, i32* %arrayidx20.1.5.9, align 4
  br label %for.inc.1.5.9

for.inc.1.5.9:                                    ; preds = %for.inc.552.9
  %arrayidx11.2.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.5.9, i32 0, i64 2
  %2856 = load i32* %arrayidx12.2.5.9, align 4
  %arrayidx15.2.5.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.5.9, i32 0, i64 5
  %2857 = load i32* %arrayidx16.2.5.9, align 4
  %mul.2.5.9 = mul nsw i32 %2856, %2857
  %arrayidx19.2.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.5.9, i32 0, i64 5
  %2858 = load i32* %arrayidx20.2.5.9, align 4
  %add.2.5.9 = add nsw i32 %2858, %mul.2.5.9
  store i32 %add.2.5.9, i32* %arrayidx20.2.5.9, align 4
  br label %for.inc.2.5.9

for.inc.2.5.9:                                    ; preds = %for.inc.1.5.9
  %arrayidx11.3.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.5.9, i32 0, i64 3
  %2859 = load i32* %arrayidx12.3.5.9, align 4
  %arrayidx15.3.5.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.5.9, i32 0, i64 5
  %2860 = load i32* %arrayidx16.3.5.9, align 4
  %mul.3.5.9 = mul nsw i32 %2859, %2860
  %arrayidx19.3.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.5.9, i32 0, i64 5
  %2861 = load i32* %arrayidx20.3.5.9, align 4
  %add.3.5.9 = add nsw i32 %2861, %mul.3.5.9
  store i32 %add.3.5.9, i32* %arrayidx20.3.5.9, align 4
  br label %for.inc.3.5.9

for.inc.3.5.9:                                    ; preds = %for.inc.2.5.9
  %arrayidx11.4.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.5.9, i32 0, i64 4
  %2862 = load i32* %arrayidx12.4.5.9, align 4
  %arrayidx15.4.5.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.5.9, i32 0, i64 5
  %2863 = load i32* %arrayidx16.4.5.9, align 4
  %mul.4.5.9 = mul nsw i32 %2862, %2863
  %arrayidx19.4.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.5.9, i32 0, i64 5
  %2864 = load i32* %arrayidx20.4.5.9, align 4
  %add.4.5.9 = add nsw i32 %2864, %mul.4.5.9
  store i32 %add.4.5.9, i32* %arrayidx20.4.5.9, align 4
  br label %for.inc.4.5.9

for.inc.4.5.9:                                    ; preds = %for.inc.3.5.9
  %arrayidx11.5.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.5.9, i32 0, i64 5
  %2865 = load i32* %arrayidx12.5.5.9, align 4
  %arrayidx15.5.5.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.5.9, i32 0, i64 5
  %2866 = load i32* %arrayidx16.5.5.9, align 4
  %mul.5.5.9 = mul nsw i32 %2865, %2866
  %arrayidx19.5.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.5.9, i32 0, i64 5
  %2867 = load i32* %arrayidx20.5.5.9, align 4
  %add.5.5.9 = add nsw i32 %2867, %mul.5.5.9
  store i32 %add.5.5.9, i32* %arrayidx20.5.5.9, align 4
  br label %for.inc.5.5.9

for.inc.5.5.9:                                    ; preds = %for.inc.4.5.9
  %arrayidx11.6.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.5.9, i32 0, i64 6
  %2868 = load i32* %arrayidx12.6.5.9, align 4
  %arrayidx15.6.5.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.5.9, i32 0, i64 5
  %2869 = load i32* %arrayidx16.6.5.9, align 4
  %mul.6.5.9 = mul nsw i32 %2868, %2869
  %arrayidx19.6.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.5.9, i32 0, i64 5
  %2870 = load i32* %arrayidx20.6.5.9, align 4
  %add.6.5.9 = add nsw i32 %2870, %mul.6.5.9
  store i32 %add.6.5.9, i32* %arrayidx20.6.5.9, align 4
  br label %for.inc.6.5.9

for.inc.6.5.9:                                    ; preds = %for.inc.5.5.9
  %arrayidx11.7.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.5.9, i32 0, i64 7
  %2871 = load i32* %arrayidx12.7.5.9, align 4
  %arrayidx15.7.5.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.5.9, i32 0, i64 5
  %2872 = load i32* %arrayidx16.7.5.9, align 4
  %mul.7.5.9 = mul nsw i32 %2871, %2872
  %arrayidx19.7.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.5.9, i32 0, i64 5
  %2873 = load i32* %arrayidx20.7.5.9, align 4
  %add.7.5.9 = add nsw i32 %2873, %mul.7.5.9
  store i32 %add.7.5.9, i32* %arrayidx20.7.5.9, align 4
  br label %for.inc.7.5.9

for.inc.7.5.9:                                    ; preds = %for.inc.6.5.9
  %arrayidx11.8.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.5.9, i32 0, i64 8
  %2874 = load i32* %arrayidx12.8.5.9, align 4
  %arrayidx15.8.5.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.5.9, i32 0, i64 5
  %2875 = load i32* %arrayidx16.8.5.9, align 4
  %mul.8.5.9 = mul nsw i32 %2874, %2875
  %arrayidx19.8.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.5.9, i32 0, i64 5
  %2876 = load i32* %arrayidx20.8.5.9, align 4
  %add.8.5.9 = add nsw i32 %2876, %mul.8.5.9
  store i32 %add.8.5.9, i32* %arrayidx20.8.5.9, align 4
  br label %for.inc.8.5.9

for.inc.8.5.9:                                    ; preds = %for.inc.7.5.9
  %arrayidx11.9.5.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.5.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.5.9, i32 0, i64 9
  %2877 = load i32* %arrayidx12.9.5.9, align 4
  %arrayidx15.9.5.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.5.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.5.9, i32 0, i64 5
  %2878 = load i32* %arrayidx16.9.5.9, align 4
  %mul.9.5.9 = mul nsw i32 %2877, %2878
  %arrayidx19.9.5.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.5.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.5.9, i32 0, i64 5
  %2879 = load i32* %arrayidx20.9.5.9, align 4
  %add.9.5.9 = add nsw i32 %2879, %mul.9.5.9
  store i32 %add.9.5.9, i32* %arrayidx20.9.5.9, align 4
  br label %for.inc.9.5.9

for.inc.9.5.9:                                    ; preds = %for.inc.8.5.9
  br label %for.inc21.5.9

for.inc21.5.9:                                    ; preds = %for.inc.9.5.9
  %arrayidx.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.6.9 = getelementptr inbounds [10 x i32]* %arrayidx.6.9, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.9, align 4
  br label %for.body8.6.9

for.body8.6.9:                                    ; preds = %for.inc21.5.9
  %arrayidx11.654.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.655.9 = getelementptr inbounds [10 x i32]* %arrayidx11.654.9, i32 0, i64 0
  %2880 = load i32* %arrayidx12.655.9, align 4
  %arrayidx16.656.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 6
  %2881 = load i32* %arrayidx16.656.9, align 4
  %mul.657.9 = mul nsw i32 %2880, %2881
  %arrayidx19.659.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.660.9 = getelementptr inbounds [10 x i32]* %arrayidx19.659.9, i32 0, i64 6
  %2882 = load i32* %arrayidx20.660.9, align 4
  %add.661.9 = add nsw i32 %2882, %mul.657.9
  store i32 %add.661.9, i32* %arrayidx20.660.9, align 4
  br label %for.inc.662.9

for.inc.662.9:                                    ; preds = %for.body8.6.9
  %arrayidx11.1.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.6.9, i32 0, i64 1
  %2883 = load i32* %arrayidx12.1.6.9, align 4
  %arrayidx15.1.6.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.6.9, i32 0, i64 6
  %2884 = load i32* %arrayidx16.1.6.9, align 4
  %mul.1.6.9 = mul nsw i32 %2883, %2884
  %arrayidx19.1.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.6.9, i32 0, i64 6
  %2885 = load i32* %arrayidx20.1.6.9, align 4
  %add.1.6.9 = add nsw i32 %2885, %mul.1.6.9
  store i32 %add.1.6.9, i32* %arrayidx20.1.6.9, align 4
  br label %for.inc.1.6.9

for.inc.1.6.9:                                    ; preds = %for.inc.662.9
  %arrayidx11.2.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.6.9, i32 0, i64 2
  %2886 = load i32* %arrayidx12.2.6.9, align 4
  %arrayidx15.2.6.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.6.9, i32 0, i64 6
  %2887 = load i32* %arrayidx16.2.6.9, align 4
  %mul.2.6.9 = mul nsw i32 %2886, %2887
  %arrayidx19.2.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.6.9, i32 0, i64 6
  %2888 = load i32* %arrayidx20.2.6.9, align 4
  %add.2.6.9 = add nsw i32 %2888, %mul.2.6.9
  store i32 %add.2.6.9, i32* %arrayidx20.2.6.9, align 4
  br label %for.inc.2.6.9

for.inc.2.6.9:                                    ; preds = %for.inc.1.6.9
  %arrayidx11.3.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.6.9, i32 0, i64 3
  %2889 = load i32* %arrayidx12.3.6.9, align 4
  %arrayidx15.3.6.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.6.9, i32 0, i64 6
  %2890 = load i32* %arrayidx16.3.6.9, align 4
  %mul.3.6.9 = mul nsw i32 %2889, %2890
  %arrayidx19.3.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.6.9, i32 0, i64 6
  %2891 = load i32* %arrayidx20.3.6.9, align 4
  %add.3.6.9 = add nsw i32 %2891, %mul.3.6.9
  store i32 %add.3.6.9, i32* %arrayidx20.3.6.9, align 4
  br label %for.inc.3.6.9

for.inc.3.6.9:                                    ; preds = %for.inc.2.6.9
  %arrayidx11.4.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.6.9, i32 0, i64 4
  %2892 = load i32* %arrayidx12.4.6.9, align 4
  %arrayidx15.4.6.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.6.9, i32 0, i64 6
  %2893 = load i32* %arrayidx16.4.6.9, align 4
  %mul.4.6.9 = mul nsw i32 %2892, %2893
  %arrayidx19.4.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.6.9, i32 0, i64 6
  %2894 = load i32* %arrayidx20.4.6.9, align 4
  %add.4.6.9 = add nsw i32 %2894, %mul.4.6.9
  store i32 %add.4.6.9, i32* %arrayidx20.4.6.9, align 4
  br label %for.inc.4.6.9

for.inc.4.6.9:                                    ; preds = %for.inc.3.6.9
  %arrayidx11.5.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.6.9, i32 0, i64 5
  %2895 = load i32* %arrayidx12.5.6.9, align 4
  %arrayidx15.5.6.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.6.9, i32 0, i64 6
  %2896 = load i32* %arrayidx16.5.6.9, align 4
  %mul.5.6.9 = mul nsw i32 %2895, %2896
  %arrayidx19.5.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.6.9, i32 0, i64 6
  %2897 = load i32* %arrayidx20.5.6.9, align 4
  %add.5.6.9 = add nsw i32 %2897, %mul.5.6.9
  store i32 %add.5.6.9, i32* %arrayidx20.5.6.9, align 4
  br label %for.inc.5.6.9

for.inc.5.6.9:                                    ; preds = %for.inc.4.6.9
  %arrayidx11.6.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.6.9, i32 0, i64 6
  %2898 = load i32* %arrayidx12.6.6.9, align 4
  %arrayidx15.6.6.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.6.9, i32 0, i64 6
  %2899 = load i32* %arrayidx16.6.6.9, align 4
  %mul.6.6.9 = mul nsw i32 %2898, %2899
  %arrayidx19.6.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.6.9, i32 0, i64 6
  %2900 = load i32* %arrayidx20.6.6.9, align 4
  %add.6.6.9 = add nsw i32 %2900, %mul.6.6.9
  store i32 %add.6.6.9, i32* %arrayidx20.6.6.9, align 4
  br label %for.inc.6.6.9

for.inc.6.6.9:                                    ; preds = %for.inc.5.6.9
  %arrayidx11.7.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.6.9, i32 0, i64 7
  %2901 = load i32* %arrayidx12.7.6.9, align 4
  %arrayidx15.7.6.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.6.9, i32 0, i64 6
  %2902 = load i32* %arrayidx16.7.6.9, align 4
  %mul.7.6.9 = mul nsw i32 %2901, %2902
  %arrayidx19.7.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.6.9, i32 0, i64 6
  %2903 = load i32* %arrayidx20.7.6.9, align 4
  %add.7.6.9 = add nsw i32 %2903, %mul.7.6.9
  store i32 %add.7.6.9, i32* %arrayidx20.7.6.9, align 4
  br label %for.inc.7.6.9

for.inc.7.6.9:                                    ; preds = %for.inc.6.6.9
  %arrayidx11.8.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.6.9, i32 0, i64 8
  %2904 = load i32* %arrayidx12.8.6.9, align 4
  %arrayidx15.8.6.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.6.9, i32 0, i64 6
  %2905 = load i32* %arrayidx16.8.6.9, align 4
  %mul.8.6.9 = mul nsw i32 %2904, %2905
  %arrayidx19.8.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.6.9, i32 0, i64 6
  %2906 = load i32* %arrayidx20.8.6.9, align 4
  %add.8.6.9 = add nsw i32 %2906, %mul.8.6.9
  store i32 %add.8.6.9, i32* %arrayidx20.8.6.9, align 4
  br label %for.inc.8.6.9

for.inc.8.6.9:                                    ; preds = %for.inc.7.6.9
  %arrayidx11.9.6.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.6.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.6.9, i32 0, i64 9
  %2907 = load i32* %arrayidx12.9.6.9, align 4
  %arrayidx15.9.6.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.6.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.6.9, i32 0, i64 6
  %2908 = load i32* %arrayidx16.9.6.9, align 4
  %mul.9.6.9 = mul nsw i32 %2907, %2908
  %arrayidx19.9.6.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.6.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.6.9, i32 0, i64 6
  %2909 = load i32* %arrayidx20.9.6.9, align 4
  %add.9.6.9 = add nsw i32 %2909, %mul.9.6.9
  store i32 %add.9.6.9, i32* %arrayidx20.9.6.9, align 4
  br label %for.inc.9.6.9

for.inc.9.6.9:                                    ; preds = %for.inc.8.6.9
  br label %for.inc21.6.9

for.inc21.6.9:                                    ; preds = %for.inc.9.6.9
  %arrayidx.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.7.9 = getelementptr inbounds [10 x i32]* %arrayidx.7.9, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.9, align 4
  br label %for.body8.7.9

for.body8.7.9:                                    ; preds = %for.inc21.6.9
  %arrayidx11.764.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.765.9 = getelementptr inbounds [10 x i32]* %arrayidx11.764.9, i32 0, i64 0
  %2910 = load i32* %arrayidx12.765.9, align 4
  %arrayidx16.766.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 7
  %2911 = load i32* %arrayidx16.766.9, align 4
  %mul.767.9 = mul nsw i32 %2910, %2911
  %arrayidx19.769.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.770.9 = getelementptr inbounds [10 x i32]* %arrayidx19.769.9, i32 0, i64 7
  %2912 = load i32* %arrayidx20.770.9, align 4
  %add.771.9 = add nsw i32 %2912, %mul.767.9
  store i32 %add.771.9, i32* %arrayidx20.770.9, align 4
  br label %for.inc.772.9

for.inc.772.9:                                    ; preds = %for.body8.7.9
  %arrayidx11.1.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.7.9, i32 0, i64 1
  %2913 = load i32* %arrayidx12.1.7.9, align 4
  %arrayidx15.1.7.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.7.9, i32 0, i64 7
  %2914 = load i32* %arrayidx16.1.7.9, align 4
  %mul.1.7.9 = mul nsw i32 %2913, %2914
  %arrayidx19.1.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.7.9, i32 0, i64 7
  %2915 = load i32* %arrayidx20.1.7.9, align 4
  %add.1.7.9 = add nsw i32 %2915, %mul.1.7.9
  store i32 %add.1.7.9, i32* %arrayidx20.1.7.9, align 4
  br label %for.inc.1.7.9

for.inc.1.7.9:                                    ; preds = %for.inc.772.9
  %arrayidx11.2.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.7.9, i32 0, i64 2
  %2916 = load i32* %arrayidx12.2.7.9, align 4
  %arrayidx15.2.7.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.7.9, i32 0, i64 7
  %2917 = load i32* %arrayidx16.2.7.9, align 4
  %mul.2.7.9 = mul nsw i32 %2916, %2917
  %arrayidx19.2.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.7.9, i32 0, i64 7
  %2918 = load i32* %arrayidx20.2.7.9, align 4
  %add.2.7.9 = add nsw i32 %2918, %mul.2.7.9
  store i32 %add.2.7.9, i32* %arrayidx20.2.7.9, align 4
  br label %for.inc.2.7.9

for.inc.2.7.9:                                    ; preds = %for.inc.1.7.9
  %arrayidx11.3.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.7.9, i32 0, i64 3
  %2919 = load i32* %arrayidx12.3.7.9, align 4
  %arrayidx15.3.7.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.7.9, i32 0, i64 7
  %2920 = load i32* %arrayidx16.3.7.9, align 4
  %mul.3.7.9 = mul nsw i32 %2919, %2920
  %arrayidx19.3.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.7.9, i32 0, i64 7
  %2921 = load i32* %arrayidx20.3.7.9, align 4
  %add.3.7.9 = add nsw i32 %2921, %mul.3.7.9
  store i32 %add.3.7.9, i32* %arrayidx20.3.7.9, align 4
  br label %for.inc.3.7.9

for.inc.3.7.9:                                    ; preds = %for.inc.2.7.9
  %arrayidx11.4.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.7.9, i32 0, i64 4
  %2922 = load i32* %arrayidx12.4.7.9, align 4
  %arrayidx15.4.7.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.7.9, i32 0, i64 7
  %2923 = load i32* %arrayidx16.4.7.9, align 4
  %mul.4.7.9 = mul nsw i32 %2922, %2923
  %arrayidx19.4.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.7.9, i32 0, i64 7
  %2924 = load i32* %arrayidx20.4.7.9, align 4
  %add.4.7.9 = add nsw i32 %2924, %mul.4.7.9
  store i32 %add.4.7.9, i32* %arrayidx20.4.7.9, align 4
  br label %for.inc.4.7.9

for.inc.4.7.9:                                    ; preds = %for.inc.3.7.9
  %arrayidx11.5.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.7.9, i32 0, i64 5
  %2925 = load i32* %arrayidx12.5.7.9, align 4
  %arrayidx15.5.7.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.7.9, i32 0, i64 7
  %2926 = load i32* %arrayidx16.5.7.9, align 4
  %mul.5.7.9 = mul nsw i32 %2925, %2926
  %arrayidx19.5.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.7.9, i32 0, i64 7
  %2927 = load i32* %arrayidx20.5.7.9, align 4
  %add.5.7.9 = add nsw i32 %2927, %mul.5.7.9
  store i32 %add.5.7.9, i32* %arrayidx20.5.7.9, align 4
  br label %for.inc.5.7.9

for.inc.5.7.9:                                    ; preds = %for.inc.4.7.9
  %arrayidx11.6.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.7.9, i32 0, i64 6
  %2928 = load i32* %arrayidx12.6.7.9, align 4
  %arrayidx15.6.7.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.7.9, i32 0, i64 7
  %2929 = load i32* %arrayidx16.6.7.9, align 4
  %mul.6.7.9 = mul nsw i32 %2928, %2929
  %arrayidx19.6.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.7.9, i32 0, i64 7
  %2930 = load i32* %arrayidx20.6.7.9, align 4
  %add.6.7.9 = add nsw i32 %2930, %mul.6.7.9
  store i32 %add.6.7.9, i32* %arrayidx20.6.7.9, align 4
  br label %for.inc.6.7.9

for.inc.6.7.9:                                    ; preds = %for.inc.5.7.9
  %arrayidx11.7.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.7.9, i32 0, i64 7
  %2931 = load i32* %arrayidx12.7.7.9, align 4
  %arrayidx15.7.7.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.7.9, i32 0, i64 7
  %2932 = load i32* %arrayidx16.7.7.9, align 4
  %mul.7.7.9 = mul nsw i32 %2931, %2932
  %arrayidx19.7.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.7.9, i32 0, i64 7
  %2933 = load i32* %arrayidx20.7.7.9, align 4
  %add.7.7.9 = add nsw i32 %2933, %mul.7.7.9
  store i32 %add.7.7.9, i32* %arrayidx20.7.7.9, align 4
  br label %for.inc.7.7.9

for.inc.7.7.9:                                    ; preds = %for.inc.6.7.9
  %arrayidx11.8.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.7.9, i32 0, i64 8
  %2934 = load i32* %arrayidx12.8.7.9, align 4
  %arrayidx15.8.7.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.7.9, i32 0, i64 7
  %2935 = load i32* %arrayidx16.8.7.9, align 4
  %mul.8.7.9 = mul nsw i32 %2934, %2935
  %arrayidx19.8.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.7.9, i32 0, i64 7
  %2936 = load i32* %arrayidx20.8.7.9, align 4
  %add.8.7.9 = add nsw i32 %2936, %mul.8.7.9
  store i32 %add.8.7.9, i32* %arrayidx20.8.7.9, align 4
  br label %for.inc.8.7.9

for.inc.8.7.9:                                    ; preds = %for.inc.7.7.9
  %arrayidx11.9.7.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.7.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.7.9, i32 0, i64 9
  %2937 = load i32* %arrayidx12.9.7.9, align 4
  %arrayidx15.9.7.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.7.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.7.9, i32 0, i64 7
  %2938 = load i32* %arrayidx16.9.7.9, align 4
  %mul.9.7.9 = mul nsw i32 %2937, %2938
  %arrayidx19.9.7.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.7.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.7.9, i32 0, i64 7
  %2939 = load i32* %arrayidx20.9.7.9, align 4
  %add.9.7.9 = add nsw i32 %2939, %mul.9.7.9
  store i32 %add.9.7.9, i32* %arrayidx20.9.7.9, align 4
  br label %for.inc.9.7.9

for.inc.9.7.9:                                    ; preds = %for.inc.8.7.9
  br label %for.inc21.7.9

for.inc21.7.9:                                    ; preds = %for.inc.9.7.9
  %arrayidx.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.8.9 = getelementptr inbounds [10 x i32]* %arrayidx.8.9, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.9, align 4
  br label %for.body8.8.9

for.body8.8.9:                                    ; preds = %for.inc21.7.9
  %arrayidx11.874.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.875.9 = getelementptr inbounds [10 x i32]* %arrayidx11.874.9, i32 0, i64 0
  %2940 = load i32* %arrayidx12.875.9, align 4
  %arrayidx16.876.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 8
  %2941 = load i32* %arrayidx16.876.9, align 4
  %mul.877.9 = mul nsw i32 %2940, %2941
  %arrayidx19.879.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.880.9 = getelementptr inbounds [10 x i32]* %arrayidx19.879.9, i32 0, i64 8
  %2942 = load i32* %arrayidx20.880.9, align 4
  %add.881.9 = add nsw i32 %2942, %mul.877.9
  store i32 %add.881.9, i32* %arrayidx20.880.9, align 4
  br label %for.inc.882.9

for.inc.882.9:                                    ; preds = %for.body8.8.9
  %arrayidx11.1.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.8.9, i32 0, i64 1
  %2943 = load i32* %arrayidx12.1.8.9, align 4
  %arrayidx15.1.8.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.8.9, i32 0, i64 8
  %2944 = load i32* %arrayidx16.1.8.9, align 4
  %mul.1.8.9 = mul nsw i32 %2943, %2944
  %arrayidx19.1.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.8.9, i32 0, i64 8
  %2945 = load i32* %arrayidx20.1.8.9, align 4
  %add.1.8.9 = add nsw i32 %2945, %mul.1.8.9
  store i32 %add.1.8.9, i32* %arrayidx20.1.8.9, align 4
  br label %for.inc.1.8.9

for.inc.1.8.9:                                    ; preds = %for.inc.882.9
  %arrayidx11.2.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.8.9, i32 0, i64 2
  %2946 = load i32* %arrayidx12.2.8.9, align 4
  %arrayidx15.2.8.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.8.9, i32 0, i64 8
  %2947 = load i32* %arrayidx16.2.8.9, align 4
  %mul.2.8.9 = mul nsw i32 %2946, %2947
  %arrayidx19.2.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.8.9, i32 0, i64 8
  %2948 = load i32* %arrayidx20.2.8.9, align 4
  %add.2.8.9 = add nsw i32 %2948, %mul.2.8.9
  store i32 %add.2.8.9, i32* %arrayidx20.2.8.9, align 4
  br label %for.inc.2.8.9

for.inc.2.8.9:                                    ; preds = %for.inc.1.8.9
  %arrayidx11.3.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.8.9, i32 0, i64 3
  %2949 = load i32* %arrayidx12.3.8.9, align 4
  %arrayidx15.3.8.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.8.9, i32 0, i64 8
  %2950 = load i32* %arrayidx16.3.8.9, align 4
  %mul.3.8.9 = mul nsw i32 %2949, %2950
  %arrayidx19.3.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.8.9, i32 0, i64 8
  %2951 = load i32* %arrayidx20.3.8.9, align 4
  %add.3.8.9 = add nsw i32 %2951, %mul.3.8.9
  store i32 %add.3.8.9, i32* %arrayidx20.3.8.9, align 4
  br label %for.inc.3.8.9

for.inc.3.8.9:                                    ; preds = %for.inc.2.8.9
  %arrayidx11.4.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.8.9, i32 0, i64 4
  %2952 = load i32* %arrayidx12.4.8.9, align 4
  %arrayidx15.4.8.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.8.9, i32 0, i64 8
  %2953 = load i32* %arrayidx16.4.8.9, align 4
  %mul.4.8.9 = mul nsw i32 %2952, %2953
  %arrayidx19.4.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.8.9, i32 0, i64 8
  %2954 = load i32* %arrayidx20.4.8.9, align 4
  %add.4.8.9 = add nsw i32 %2954, %mul.4.8.9
  store i32 %add.4.8.9, i32* %arrayidx20.4.8.9, align 4
  br label %for.inc.4.8.9

for.inc.4.8.9:                                    ; preds = %for.inc.3.8.9
  %arrayidx11.5.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.8.9, i32 0, i64 5
  %2955 = load i32* %arrayidx12.5.8.9, align 4
  %arrayidx15.5.8.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.8.9, i32 0, i64 8
  %2956 = load i32* %arrayidx16.5.8.9, align 4
  %mul.5.8.9 = mul nsw i32 %2955, %2956
  %arrayidx19.5.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.8.9, i32 0, i64 8
  %2957 = load i32* %arrayidx20.5.8.9, align 4
  %add.5.8.9 = add nsw i32 %2957, %mul.5.8.9
  store i32 %add.5.8.9, i32* %arrayidx20.5.8.9, align 4
  br label %for.inc.5.8.9

for.inc.5.8.9:                                    ; preds = %for.inc.4.8.9
  %arrayidx11.6.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.8.9, i32 0, i64 6
  %2958 = load i32* %arrayidx12.6.8.9, align 4
  %arrayidx15.6.8.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.8.9, i32 0, i64 8
  %2959 = load i32* %arrayidx16.6.8.9, align 4
  %mul.6.8.9 = mul nsw i32 %2958, %2959
  %arrayidx19.6.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.8.9, i32 0, i64 8
  %2960 = load i32* %arrayidx20.6.8.9, align 4
  %add.6.8.9 = add nsw i32 %2960, %mul.6.8.9
  store i32 %add.6.8.9, i32* %arrayidx20.6.8.9, align 4
  br label %for.inc.6.8.9

for.inc.6.8.9:                                    ; preds = %for.inc.5.8.9
  %arrayidx11.7.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.8.9, i32 0, i64 7
  %2961 = load i32* %arrayidx12.7.8.9, align 4
  %arrayidx15.7.8.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.8.9, i32 0, i64 8
  %2962 = load i32* %arrayidx16.7.8.9, align 4
  %mul.7.8.9 = mul nsw i32 %2961, %2962
  %arrayidx19.7.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.8.9, i32 0, i64 8
  %2963 = load i32* %arrayidx20.7.8.9, align 4
  %add.7.8.9 = add nsw i32 %2963, %mul.7.8.9
  store i32 %add.7.8.9, i32* %arrayidx20.7.8.9, align 4
  br label %for.inc.7.8.9

for.inc.7.8.9:                                    ; preds = %for.inc.6.8.9
  %arrayidx11.8.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.8.9, i32 0, i64 8
  %2964 = load i32* %arrayidx12.8.8.9, align 4
  %arrayidx15.8.8.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.8.9, i32 0, i64 8
  %2965 = load i32* %arrayidx16.8.8.9, align 4
  %mul.8.8.9 = mul nsw i32 %2964, %2965
  %arrayidx19.8.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.8.9, i32 0, i64 8
  %2966 = load i32* %arrayidx20.8.8.9, align 4
  %add.8.8.9 = add nsw i32 %2966, %mul.8.8.9
  store i32 %add.8.8.9, i32* %arrayidx20.8.8.9, align 4
  br label %for.inc.8.8.9

for.inc.8.8.9:                                    ; preds = %for.inc.7.8.9
  %arrayidx11.9.8.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.8.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.8.9, i32 0, i64 9
  %2967 = load i32* %arrayidx12.9.8.9, align 4
  %arrayidx15.9.8.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.8.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.8.9, i32 0, i64 8
  %2968 = load i32* %arrayidx16.9.8.9, align 4
  %mul.9.8.9 = mul nsw i32 %2967, %2968
  %arrayidx19.9.8.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.8.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.8.9, i32 0, i64 8
  %2969 = load i32* %arrayidx20.9.8.9, align 4
  %add.9.8.9 = add nsw i32 %2969, %mul.9.8.9
  store i32 %add.9.8.9, i32* %arrayidx20.9.8.9, align 4
  br label %for.inc.9.8.9

for.inc.9.8.9:                                    ; preds = %for.inc.8.8.9
  br label %for.inc21.8.9

for.inc21.8.9:                                    ; preds = %for.inc.9.8.9
  %arrayidx.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx5.9.9 = getelementptr inbounds [10 x i32]* %arrayidx.9.9, i32 0, i64 9
  store i32 %init, i32* %arrayidx5.9.9, align 4
  br label %for.body8.9.9

for.body8.9.9:                                    ; preds = %for.inc21.8.9
  %arrayidx11.984.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.985.9 = getelementptr inbounds [10 x i32]* %arrayidx11.984.9, i32 0, i64 0
  %2970 = load i32* %arrayidx12.985.9, align 4
  %arrayidx16.986.9 = getelementptr inbounds [10 x i32]* %b, i32 0, i64 9
  %2971 = load i32* %arrayidx16.986.9, align 4
  %mul.987.9 = mul nsw i32 %2970, %2971
  %arrayidx19.989.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.990.9 = getelementptr inbounds [10 x i32]* %arrayidx19.989.9, i32 0, i64 9
  %2972 = load i32* %arrayidx20.990.9, align 4
  %add.991.9 = add nsw i32 %2972, %mul.987.9
  store i32 %add.991.9, i32* %arrayidx20.990.9, align 4
  br label %for.inc.992.9

for.inc.992.9:                                    ; preds = %for.body8.9.9
  %arrayidx11.1.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.1.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.1.9.9, i32 0, i64 1
  %2973 = load i32* %arrayidx12.1.9.9, align 4
  %arrayidx15.1.9.9 = getelementptr inbounds [10 x i32]* %b, i64 1
  %arrayidx16.1.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.1.9.9, i32 0, i64 9
  %2974 = load i32* %arrayidx16.1.9.9, align 4
  %mul.1.9.9 = mul nsw i32 %2973, %2974
  %arrayidx19.1.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.1.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.1.9.9, i32 0, i64 9
  %2975 = load i32* %arrayidx20.1.9.9, align 4
  %add.1.9.9 = add nsw i32 %2975, %mul.1.9.9
  store i32 %add.1.9.9, i32* %arrayidx20.1.9.9, align 4
  br label %for.inc.1.9.9

for.inc.1.9.9:                                    ; preds = %for.inc.992.9
  %arrayidx11.2.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.2.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.2.9.9, i32 0, i64 2
  %2976 = load i32* %arrayidx12.2.9.9, align 4
  %arrayidx15.2.9.9 = getelementptr inbounds [10 x i32]* %b, i64 2
  %arrayidx16.2.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.2.9.9, i32 0, i64 9
  %2977 = load i32* %arrayidx16.2.9.9, align 4
  %mul.2.9.9 = mul nsw i32 %2976, %2977
  %arrayidx19.2.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.2.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.2.9.9, i32 0, i64 9
  %2978 = load i32* %arrayidx20.2.9.9, align 4
  %add.2.9.9 = add nsw i32 %2978, %mul.2.9.9
  store i32 %add.2.9.9, i32* %arrayidx20.2.9.9, align 4
  br label %for.inc.2.9.9

for.inc.2.9.9:                                    ; preds = %for.inc.1.9.9
  %arrayidx11.3.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.3.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.3.9.9, i32 0, i64 3
  %2979 = load i32* %arrayidx12.3.9.9, align 4
  %arrayidx15.3.9.9 = getelementptr inbounds [10 x i32]* %b, i64 3
  %arrayidx16.3.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.3.9.9, i32 0, i64 9
  %2980 = load i32* %arrayidx16.3.9.9, align 4
  %mul.3.9.9 = mul nsw i32 %2979, %2980
  %arrayidx19.3.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.3.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.3.9.9, i32 0, i64 9
  %2981 = load i32* %arrayidx20.3.9.9, align 4
  %add.3.9.9 = add nsw i32 %2981, %mul.3.9.9
  store i32 %add.3.9.9, i32* %arrayidx20.3.9.9, align 4
  br label %for.inc.3.9.9

for.inc.3.9.9:                                    ; preds = %for.inc.2.9.9
  %arrayidx11.4.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.4.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.4.9.9, i32 0, i64 4
  %2982 = load i32* %arrayidx12.4.9.9, align 4
  %arrayidx15.4.9.9 = getelementptr inbounds [10 x i32]* %b, i64 4
  %arrayidx16.4.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.4.9.9, i32 0, i64 9
  %2983 = load i32* %arrayidx16.4.9.9, align 4
  %mul.4.9.9 = mul nsw i32 %2982, %2983
  %arrayidx19.4.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.4.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.4.9.9, i32 0, i64 9
  %2984 = load i32* %arrayidx20.4.9.9, align 4
  %add.4.9.9 = add nsw i32 %2984, %mul.4.9.9
  store i32 %add.4.9.9, i32* %arrayidx20.4.9.9, align 4
  br label %for.inc.4.9.9

for.inc.4.9.9:                                    ; preds = %for.inc.3.9.9
  %arrayidx11.5.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.5.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.5.9.9, i32 0, i64 5
  %2985 = load i32* %arrayidx12.5.9.9, align 4
  %arrayidx15.5.9.9 = getelementptr inbounds [10 x i32]* %b, i64 5
  %arrayidx16.5.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.5.9.9, i32 0, i64 9
  %2986 = load i32* %arrayidx16.5.9.9, align 4
  %mul.5.9.9 = mul nsw i32 %2985, %2986
  %arrayidx19.5.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.5.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.5.9.9, i32 0, i64 9
  %2987 = load i32* %arrayidx20.5.9.9, align 4
  %add.5.9.9 = add nsw i32 %2987, %mul.5.9.9
  store i32 %add.5.9.9, i32* %arrayidx20.5.9.9, align 4
  br label %for.inc.5.9.9

for.inc.5.9.9:                                    ; preds = %for.inc.4.9.9
  %arrayidx11.6.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.6.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.6.9.9, i32 0, i64 6
  %2988 = load i32* %arrayidx12.6.9.9, align 4
  %arrayidx15.6.9.9 = getelementptr inbounds [10 x i32]* %b, i64 6
  %arrayidx16.6.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.6.9.9, i32 0, i64 9
  %2989 = load i32* %arrayidx16.6.9.9, align 4
  %mul.6.9.9 = mul nsw i32 %2988, %2989
  %arrayidx19.6.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.6.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.6.9.9, i32 0, i64 9
  %2990 = load i32* %arrayidx20.6.9.9, align 4
  %add.6.9.9 = add nsw i32 %2990, %mul.6.9.9
  store i32 %add.6.9.9, i32* %arrayidx20.6.9.9, align 4
  br label %for.inc.6.9.9

for.inc.6.9.9:                                    ; preds = %for.inc.5.9.9
  %arrayidx11.7.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.7.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.7.9.9, i32 0, i64 7
  %2991 = load i32* %arrayidx12.7.9.9, align 4
  %arrayidx15.7.9.9 = getelementptr inbounds [10 x i32]* %b, i64 7
  %arrayidx16.7.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.7.9.9, i32 0, i64 9
  %2992 = load i32* %arrayidx16.7.9.9, align 4
  %mul.7.9.9 = mul nsw i32 %2991, %2992
  %arrayidx19.7.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.7.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.7.9.9, i32 0, i64 9
  %2993 = load i32* %arrayidx20.7.9.9, align 4
  %add.7.9.9 = add nsw i32 %2993, %mul.7.9.9
  store i32 %add.7.9.9, i32* %arrayidx20.7.9.9, align 4
  br label %for.inc.7.9.9

for.inc.7.9.9:                                    ; preds = %for.inc.6.9.9
  %arrayidx11.8.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.8.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.8.9.9, i32 0, i64 8
  %2994 = load i32* %arrayidx12.8.9.9, align 4
  %arrayidx15.8.9.9 = getelementptr inbounds [10 x i32]* %b, i64 8
  %arrayidx16.8.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.8.9.9, i32 0, i64 9
  %2995 = load i32* %arrayidx16.8.9.9, align 4
  %mul.8.9.9 = mul nsw i32 %2994, %2995
  %arrayidx19.8.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.8.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.8.9.9, i32 0, i64 9
  %2996 = load i32* %arrayidx20.8.9.9, align 4
  %add.8.9.9 = add nsw i32 %2996, %mul.8.9.9
  store i32 %add.8.9.9, i32* %arrayidx20.8.9.9, align 4
  br label %for.inc.8.9.9

for.inc.8.9.9:                                    ; preds = %for.inc.7.9.9
  %arrayidx11.9.9.9 = getelementptr inbounds [10 x i32]* %a, i64 9
  %arrayidx12.9.9.9 = getelementptr inbounds [10 x i32]* %arrayidx11.9.9.9, i32 0, i64 9
  %2997 = load i32* %arrayidx12.9.9.9, align 4
  %arrayidx15.9.9.9 = getelementptr inbounds [10 x i32]* %b, i64 9
  %arrayidx16.9.9.9 = getelementptr inbounds [10 x i32]* %arrayidx15.9.9.9, i32 0, i64 9
  %2998 = load i32* %arrayidx16.9.9.9, align 4
  %mul.9.9.9 = mul nsw i32 %2997, %2998
  %arrayidx19.9.9.9 = getelementptr inbounds [10 x i32]* %c, i64 9
  %arrayidx20.9.9.9 = getelementptr inbounds [10 x i32]* %arrayidx19.9.9.9, i32 0, i64 9
  %2999 = load i32* %arrayidx20.9.9.9, align 4
  %add.9.9.9 = add nsw i32 %2999, %mul.9.9.9
  store i32 %add.9.9.9, i32* %arrayidx20.9.9.9, align 4
  br label %for.inc.9.9.9

for.inc.9.9.9:                                    ; preds = %for.inc.8.9.9
  br label %for.inc21.9.9

for.inc21.9.9:                                    ; preds = %for.inc.9.9.9
  br label %for.inc24.9

for.inc24.9:                                      ; preds = %for.inc21.9.9
  ret void
}
