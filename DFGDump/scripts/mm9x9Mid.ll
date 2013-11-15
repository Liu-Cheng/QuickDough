; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [9 x [9 x i32]] zeroinitializer, align 16

define void @_Z5mm9x9PA9_iS0_iS0_([9 x i32]* %a, [9 x i32]* %b, i32 %init, [9 x i32]* %c) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %arrayidx12.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  br label %for.inc.1

for.inc21:                                        ; preds = %for.inc.8
  %arrayidx5.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  br label %for.body8.1

for.inc24:                                        ; preds = %for.inc21.8
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx12.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %6 = load i32* %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2, i32 0, i64 0
  %7 = load i32* %arrayidx16.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %arrayidx20.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %8 = load i32* %arrayidx20.2, align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* %arrayidx20.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx12.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %9 = load i32* %arrayidx12.3, align 4
  %arrayidx15.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3, i32 0, i64 0
  %10 = load i32* %arrayidx16.3, align 4
  %mul.3 = mul nsw i32 %9, %10
  %arrayidx20.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %11 = load i32* %arrayidx20.3, align 4
  %add.3 = add nsw i32 %11, %mul.3
  store i32 %add.3, i32* %arrayidx20.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx12.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %12 = load i32* %arrayidx12.4, align 4
  %arrayidx15.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4, i32 0, i64 0
  %13 = load i32* %arrayidx16.4, align 4
  %mul.4 = mul nsw i32 %12, %13
  %arrayidx20.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %14 = load i32* %arrayidx20.4, align 4
  %add.4 = add nsw i32 %14, %mul.4
  store i32 %add.4, i32* %arrayidx20.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx12.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %15 = load i32* %arrayidx12.5, align 4
  %arrayidx15.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5, i32 0, i64 0
  %16 = load i32* %arrayidx16.5, align 4
  %mul.5 = mul nsw i32 %15, %16
  %arrayidx20.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %17 = load i32* %arrayidx20.5, align 4
  %add.5 = add nsw i32 %17, %mul.5
  store i32 %add.5, i32* %arrayidx20.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx12.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %18 = load i32* %arrayidx12.6, align 4
  %arrayidx15.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6, i32 0, i64 0
  %19 = load i32* %arrayidx16.6, align 4
  %mul.6 = mul nsw i32 %18, %19
  %arrayidx20.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %20 = load i32* %arrayidx20.6, align 4
  %add.6 = add nsw i32 %20, %mul.6
  store i32 %add.6, i32* %arrayidx20.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx12.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %21 = load i32* %arrayidx12.7, align 4
  %arrayidx15.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7, i32 0, i64 0
  %22 = load i32* %arrayidx16.7, align 4
  %mul.7 = mul nsw i32 %21, %22
  %arrayidx20.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %23 = load i32* %arrayidx20.7, align 4
  %add.7 = add nsw i32 %23, %mul.7
  store i32 %add.7, i32* %arrayidx20.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx12.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %24 = load i32* %arrayidx12.8, align 4
  %arrayidx15.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8, i32 0, i64 0
  %25 = load i32* %arrayidx16.8, align 4
  %mul.8 = mul nsw i32 %24, %25
  %arrayidx20.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 0
  %26 = load i32* %arrayidx20.8, align 4
  %add.8 = add nsw i32 %26, %mul.8
  store i32 %add.8, i32* %arrayidx20.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.inc.7
  br label %for.inc21

for.body8.1:                                      ; preds = %for.inc21
  %arrayidx12.15 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %27 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %28 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %27, %28
  %arrayidx20.110 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %29 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %29, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body8.1
  %arrayidx12.1.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %30 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %31 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %30, %31
  %arrayidx20.1.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %32 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %32, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.112
  %arrayidx12.2.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %33 = load i32* %arrayidx12.2.1, align 4
  %arrayidx15.2.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1, i32 0, i64 1
  %34 = load i32* %arrayidx16.2.1, align 4
  %mul.2.1 = mul nsw i32 %33, %34
  %arrayidx20.2.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %35 = load i32* %arrayidx20.2.1, align 4
  %add.2.1 = add nsw i32 %35, %mul.2.1
  store i32 %add.2.1, i32* %arrayidx20.2.1, align 4
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %arrayidx12.3.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %36 = load i32* %arrayidx12.3.1, align 4
  %arrayidx15.3.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1, i32 0, i64 1
  %37 = load i32* %arrayidx16.3.1, align 4
  %mul.3.1 = mul nsw i32 %36, %37
  %arrayidx20.3.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %38 = load i32* %arrayidx20.3.1, align 4
  %add.3.1 = add nsw i32 %38, %mul.3.1
  store i32 %add.3.1, i32* %arrayidx20.3.1, align 4
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %for.inc.2.1
  %arrayidx12.4.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %39 = load i32* %arrayidx12.4.1, align 4
  %arrayidx15.4.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1, i32 0, i64 1
  %40 = load i32* %arrayidx16.4.1, align 4
  %mul.4.1 = mul nsw i32 %39, %40
  %arrayidx20.4.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %41 = load i32* %arrayidx20.4.1, align 4
  %add.4.1 = add nsw i32 %41, %mul.4.1
  store i32 %add.4.1, i32* %arrayidx20.4.1, align 4
  br label %for.inc.4.1

for.inc.4.1:                                      ; preds = %for.inc.3.1
  %arrayidx12.5.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %42 = load i32* %arrayidx12.5.1, align 4
  %arrayidx15.5.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1, i32 0, i64 1
  %43 = load i32* %arrayidx16.5.1, align 4
  %mul.5.1 = mul nsw i32 %42, %43
  %arrayidx20.5.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %44 = load i32* %arrayidx20.5.1, align 4
  %add.5.1 = add nsw i32 %44, %mul.5.1
  store i32 %add.5.1, i32* %arrayidx20.5.1, align 4
  br label %for.inc.5.1

for.inc.5.1:                                      ; preds = %for.inc.4.1
  %arrayidx12.6.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %45 = load i32* %arrayidx12.6.1, align 4
  %arrayidx15.6.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1, i32 0, i64 1
  %46 = load i32* %arrayidx16.6.1, align 4
  %mul.6.1 = mul nsw i32 %45, %46
  %arrayidx20.6.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %47 = load i32* %arrayidx20.6.1, align 4
  %add.6.1 = add nsw i32 %47, %mul.6.1
  store i32 %add.6.1, i32* %arrayidx20.6.1, align 4
  br label %for.inc.6.1

for.inc.6.1:                                      ; preds = %for.inc.5.1
  %arrayidx12.7.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %48 = load i32* %arrayidx12.7.1, align 4
  %arrayidx15.7.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1, i32 0, i64 1
  %49 = load i32* %arrayidx16.7.1, align 4
  %mul.7.1 = mul nsw i32 %48, %49
  %arrayidx20.7.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %50 = load i32* %arrayidx20.7.1, align 4
  %add.7.1 = add nsw i32 %50, %mul.7.1
  store i32 %add.7.1, i32* %arrayidx20.7.1, align 4
  br label %for.inc.7.1

for.inc.7.1:                                      ; preds = %for.inc.6.1
  %arrayidx12.8.1 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %51 = load i32* %arrayidx12.8.1, align 4
  %arrayidx15.8.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1, i32 0, i64 1
  %52 = load i32* %arrayidx16.8.1, align 4
  %mul.8.1 = mul nsw i32 %51, %52
  %arrayidx20.8.1 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 1
  %53 = load i32* %arrayidx20.8.1, align 4
  %add.8.1 = add nsw i32 %53, %mul.8.1
  store i32 %add.8.1, i32* %arrayidx20.8.1, align 4
  br label %for.inc.8.1

for.inc.8.1:                                      ; preds = %for.inc.7.1
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.inc.8.1
  %arrayidx5.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc21.1
  %arrayidx12.215 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %54 = load i32* %arrayidx12.215, align 4
  %arrayidx16.216 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %55 = load i32* %arrayidx16.216, align 4
  %mul.217 = mul nsw i32 %54, %55
  %arrayidx20.220 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %56 = load i32* %arrayidx20.220, align 4
  %add.221 = add nsw i32 %56, %mul.217
  store i32 %add.221, i32* %arrayidx20.220, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body8.2
  %arrayidx12.1.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %57 = load i32* %arrayidx12.1.2, align 4
  %arrayidx15.1.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2, i32 0, i64 2
  %58 = load i32* %arrayidx16.1.2, align 4
  %mul.1.2 = mul nsw i32 %57, %58
  %arrayidx20.1.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %59 = load i32* %arrayidx20.1.2, align 4
  %add.1.2 = add nsw i32 %59, %mul.1.2
  store i32 %add.1.2, i32* %arrayidx20.1.2, align 4
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.222
  %arrayidx12.2.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %60 = load i32* %arrayidx12.2.2, align 4
  %arrayidx15.2.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2, i32 0, i64 2
  %61 = load i32* %arrayidx16.2.2, align 4
  %mul.2.2 = mul nsw i32 %60, %61
  %arrayidx20.2.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %62 = load i32* %arrayidx20.2.2, align 4
  %add.2.2 = add nsw i32 %62, %mul.2.2
  store i32 %add.2.2, i32* %arrayidx20.2.2, align 4
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  %arrayidx12.3.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %63 = load i32* %arrayidx12.3.2, align 4
  %arrayidx15.3.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2, i32 0, i64 2
  %64 = load i32* %arrayidx16.3.2, align 4
  %mul.3.2 = mul nsw i32 %63, %64
  %arrayidx20.3.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %65 = load i32* %arrayidx20.3.2, align 4
  %add.3.2 = add nsw i32 %65, %mul.3.2
  store i32 %add.3.2, i32* %arrayidx20.3.2, align 4
  br label %for.inc.3.2

for.inc.3.2:                                      ; preds = %for.inc.2.2
  %arrayidx12.4.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %66 = load i32* %arrayidx12.4.2, align 4
  %arrayidx15.4.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2, i32 0, i64 2
  %67 = load i32* %arrayidx16.4.2, align 4
  %mul.4.2 = mul nsw i32 %66, %67
  %arrayidx20.4.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %68 = load i32* %arrayidx20.4.2, align 4
  %add.4.2 = add nsw i32 %68, %mul.4.2
  store i32 %add.4.2, i32* %arrayidx20.4.2, align 4
  br label %for.inc.4.2

for.inc.4.2:                                      ; preds = %for.inc.3.2
  %arrayidx12.5.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %69 = load i32* %arrayidx12.5.2, align 4
  %arrayidx15.5.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2, i32 0, i64 2
  %70 = load i32* %arrayidx16.5.2, align 4
  %mul.5.2 = mul nsw i32 %69, %70
  %arrayidx20.5.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %71 = load i32* %arrayidx20.5.2, align 4
  %add.5.2 = add nsw i32 %71, %mul.5.2
  store i32 %add.5.2, i32* %arrayidx20.5.2, align 4
  br label %for.inc.5.2

for.inc.5.2:                                      ; preds = %for.inc.4.2
  %arrayidx12.6.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %72 = load i32* %arrayidx12.6.2, align 4
  %arrayidx15.6.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2, i32 0, i64 2
  %73 = load i32* %arrayidx16.6.2, align 4
  %mul.6.2 = mul nsw i32 %72, %73
  %arrayidx20.6.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %74 = load i32* %arrayidx20.6.2, align 4
  %add.6.2 = add nsw i32 %74, %mul.6.2
  store i32 %add.6.2, i32* %arrayidx20.6.2, align 4
  br label %for.inc.6.2

for.inc.6.2:                                      ; preds = %for.inc.5.2
  %arrayidx12.7.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %75 = load i32* %arrayidx12.7.2, align 4
  %arrayidx15.7.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2, i32 0, i64 2
  %76 = load i32* %arrayidx16.7.2, align 4
  %mul.7.2 = mul nsw i32 %75, %76
  %arrayidx20.7.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %77 = load i32* %arrayidx20.7.2, align 4
  %add.7.2 = add nsw i32 %77, %mul.7.2
  store i32 %add.7.2, i32* %arrayidx20.7.2, align 4
  br label %for.inc.7.2

for.inc.7.2:                                      ; preds = %for.inc.6.2
  %arrayidx12.8.2 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %78 = load i32* %arrayidx12.8.2, align 4
  %arrayidx15.8.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2, i32 0, i64 2
  %79 = load i32* %arrayidx16.8.2, align 4
  %mul.8.2 = mul nsw i32 %78, %79
  %arrayidx20.8.2 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 2
  %80 = load i32* %arrayidx20.8.2, align 4
  %add.8.2 = add nsw i32 %80, %mul.8.2
  store i32 %add.8.2, i32* %arrayidx20.8.2, align 4
  br label %for.inc.8.2

for.inc.8.2:                                      ; preds = %for.inc.7.2
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %for.inc.8.2
  %arrayidx5.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3, align 4
  br label %for.body8.3

for.body8.3:                                      ; preds = %for.inc21.2
  %arrayidx12.325 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %81 = load i32* %arrayidx12.325, align 4
  %arrayidx16.326 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %82 = load i32* %arrayidx16.326, align 4
  %mul.327 = mul nsw i32 %81, %82
  %arrayidx20.330 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %83 = load i32* %arrayidx20.330, align 4
  %add.331 = add nsw i32 %83, %mul.327
  store i32 %add.331, i32* %arrayidx20.330, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body8.3
  %arrayidx12.1.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %84 = load i32* %arrayidx12.1.3, align 4
  %arrayidx15.1.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3, i32 0, i64 3
  %85 = load i32* %arrayidx16.1.3, align 4
  %mul.1.3 = mul nsw i32 %84, %85
  %arrayidx20.1.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %86 = load i32* %arrayidx20.1.3, align 4
  %add.1.3 = add nsw i32 %86, %mul.1.3
  store i32 %add.1.3, i32* %arrayidx20.1.3, align 4
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %for.inc.332
  %arrayidx12.2.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %87 = load i32* %arrayidx12.2.3, align 4
  %arrayidx15.2.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3, i32 0, i64 3
  %88 = load i32* %arrayidx16.2.3, align 4
  %mul.2.3 = mul nsw i32 %87, %88
  %arrayidx20.2.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %89 = load i32* %arrayidx20.2.3, align 4
  %add.2.3 = add nsw i32 %89, %mul.2.3
  store i32 %add.2.3, i32* %arrayidx20.2.3, align 4
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %for.inc.1.3
  %arrayidx12.3.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %90 = load i32* %arrayidx12.3.3, align 4
  %arrayidx15.3.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3, i32 0, i64 3
  %91 = load i32* %arrayidx16.3.3, align 4
  %mul.3.3 = mul nsw i32 %90, %91
  %arrayidx20.3.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %92 = load i32* %arrayidx20.3.3, align 4
  %add.3.3 = add nsw i32 %92, %mul.3.3
  store i32 %add.3.3, i32* %arrayidx20.3.3, align 4
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %for.inc.2.3
  %arrayidx12.4.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %93 = load i32* %arrayidx12.4.3, align 4
  %arrayidx15.4.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3, i32 0, i64 3
  %94 = load i32* %arrayidx16.4.3, align 4
  %mul.4.3 = mul nsw i32 %93, %94
  %arrayidx20.4.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %95 = load i32* %arrayidx20.4.3, align 4
  %add.4.3 = add nsw i32 %95, %mul.4.3
  store i32 %add.4.3, i32* %arrayidx20.4.3, align 4
  br label %for.inc.4.3

for.inc.4.3:                                      ; preds = %for.inc.3.3
  %arrayidx12.5.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %96 = load i32* %arrayidx12.5.3, align 4
  %arrayidx15.5.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3, i32 0, i64 3
  %97 = load i32* %arrayidx16.5.3, align 4
  %mul.5.3 = mul nsw i32 %96, %97
  %arrayidx20.5.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %98 = load i32* %arrayidx20.5.3, align 4
  %add.5.3 = add nsw i32 %98, %mul.5.3
  store i32 %add.5.3, i32* %arrayidx20.5.3, align 4
  br label %for.inc.5.3

for.inc.5.3:                                      ; preds = %for.inc.4.3
  %arrayidx12.6.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %99 = load i32* %arrayidx12.6.3, align 4
  %arrayidx15.6.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3, i32 0, i64 3
  %100 = load i32* %arrayidx16.6.3, align 4
  %mul.6.3 = mul nsw i32 %99, %100
  %arrayidx20.6.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %101 = load i32* %arrayidx20.6.3, align 4
  %add.6.3 = add nsw i32 %101, %mul.6.3
  store i32 %add.6.3, i32* %arrayidx20.6.3, align 4
  br label %for.inc.6.3

for.inc.6.3:                                      ; preds = %for.inc.5.3
  %arrayidx12.7.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %102 = load i32* %arrayidx12.7.3, align 4
  %arrayidx15.7.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3, i32 0, i64 3
  %103 = load i32* %arrayidx16.7.3, align 4
  %mul.7.3 = mul nsw i32 %102, %103
  %arrayidx20.7.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %104 = load i32* %arrayidx20.7.3, align 4
  %add.7.3 = add nsw i32 %104, %mul.7.3
  store i32 %add.7.3, i32* %arrayidx20.7.3, align 4
  br label %for.inc.7.3

for.inc.7.3:                                      ; preds = %for.inc.6.3
  %arrayidx12.8.3 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %105 = load i32* %arrayidx12.8.3, align 4
  %arrayidx15.8.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3, i32 0, i64 3
  %106 = load i32* %arrayidx16.8.3, align 4
  %mul.8.3 = mul nsw i32 %105, %106
  %arrayidx20.8.3 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 3
  %107 = load i32* %arrayidx20.8.3, align 4
  %add.8.3 = add nsw i32 %107, %mul.8.3
  store i32 %add.8.3, i32* %arrayidx20.8.3, align 4
  br label %for.inc.8.3

for.inc.8.3:                                      ; preds = %for.inc.7.3
  br label %for.inc21.3

for.inc21.3:                                      ; preds = %for.inc.8.3
  %arrayidx5.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4, align 4
  br label %for.body8.4

for.body8.4:                                      ; preds = %for.inc21.3
  %arrayidx12.435 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %108 = load i32* %arrayidx12.435, align 4
  %arrayidx16.436 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %109 = load i32* %arrayidx16.436, align 4
  %mul.437 = mul nsw i32 %108, %109
  %arrayidx20.440 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %110 = load i32* %arrayidx20.440, align 4
  %add.441 = add nsw i32 %110, %mul.437
  store i32 %add.441, i32* %arrayidx20.440, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body8.4
  %arrayidx12.1.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %111 = load i32* %arrayidx12.1.4, align 4
  %arrayidx15.1.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4, i32 0, i64 4
  %112 = load i32* %arrayidx16.1.4, align 4
  %mul.1.4 = mul nsw i32 %111, %112
  %arrayidx20.1.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %113 = load i32* %arrayidx20.1.4, align 4
  %add.1.4 = add nsw i32 %113, %mul.1.4
  store i32 %add.1.4, i32* %arrayidx20.1.4, align 4
  br label %for.inc.1.4

for.inc.1.4:                                      ; preds = %for.inc.442
  %arrayidx12.2.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %114 = load i32* %arrayidx12.2.4, align 4
  %arrayidx15.2.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4, i32 0, i64 4
  %115 = load i32* %arrayidx16.2.4, align 4
  %mul.2.4 = mul nsw i32 %114, %115
  %arrayidx20.2.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %116 = load i32* %arrayidx20.2.4, align 4
  %add.2.4 = add nsw i32 %116, %mul.2.4
  store i32 %add.2.4, i32* %arrayidx20.2.4, align 4
  br label %for.inc.2.4

for.inc.2.4:                                      ; preds = %for.inc.1.4
  %arrayidx12.3.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %117 = load i32* %arrayidx12.3.4, align 4
  %arrayidx15.3.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4, i32 0, i64 4
  %118 = load i32* %arrayidx16.3.4, align 4
  %mul.3.4 = mul nsw i32 %117, %118
  %arrayidx20.3.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %119 = load i32* %arrayidx20.3.4, align 4
  %add.3.4 = add nsw i32 %119, %mul.3.4
  store i32 %add.3.4, i32* %arrayidx20.3.4, align 4
  br label %for.inc.3.4

for.inc.3.4:                                      ; preds = %for.inc.2.4
  %arrayidx12.4.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %120 = load i32* %arrayidx12.4.4, align 4
  %arrayidx15.4.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4, i32 0, i64 4
  %121 = load i32* %arrayidx16.4.4, align 4
  %mul.4.4 = mul nsw i32 %120, %121
  %arrayidx20.4.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %122 = load i32* %arrayidx20.4.4, align 4
  %add.4.4 = add nsw i32 %122, %mul.4.4
  store i32 %add.4.4, i32* %arrayidx20.4.4, align 4
  br label %for.inc.4.4

for.inc.4.4:                                      ; preds = %for.inc.3.4
  %arrayidx12.5.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %123 = load i32* %arrayidx12.5.4, align 4
  %arrayidx15.5.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4, i32 0, i64 4
  %124 = load i32* %arrayidx16.5.4, align 4
  %mul.5.4 = mul nsw i32 %123, %124
  %arrayidx20.5.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %125 = load i32* %arrayidx20.5.4, align 4
  %add.5.4 = add nsw i32 %125, %mul.5.4
  store i32 %add.5.4, i32* %arrayidx20.5.4, align 4
  br label %for.inc.5.4

for.inc.5.4:                                      ; preds = %for.inc.4.4
  %arrayidx12.6.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %126 = load i32* %arrayidx12.6.4, align 4
  %arrayidx15.6.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4, i32 0, i64 4
  %127 = load i32* %arrayidx16.6.4, align 4
  %mul.6.4 = mul nsw i32 %126, %127
  %arrayidx20.6.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %128 = load i32* %arrayidx20.6.4, align 4
  %add.6.4 = add nsw i32 %128, %mul.6.4
  store i32 %add.6.4, i32* %arrayidx20.6.4, align 4
  br label %for.inc.6.4

for.inc.6.4:                                      ; preds = %for.inc.5.4
  %arrayidx12.7.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %129 = load i32* %arrayidx12.7.4, align 4
  %arrayidx15.7.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4, i32 0, i64 4
  %130 = load i32* %arrayidx16.7.4, align 4
  %mul.7.4 = mul nsw i32 %129, %130
  %arrayidx20.7.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %131 = load i32* %arrayidx20.7.4, align 4
  %add.7.4 = add nsw i32 %131, %mul.7.4
  store i32 %add.7.4, i32* %arrayidx20.7.4, align 4
  br label %for.inc.7.4

for.inc.7.4:                                      ; preds = %for.inc.6.4
  %arrayidx12.8.4 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %132 = load i32* %arrayidx12.8.4, align 4
  %arrayidx15.8.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4, i32 0, i64 4
  %133 = load i32* %arrayidx16.8.4, align 4
  %mul.8.4 = mul nsw i32 %132, %133
  %arrayidx20.8.4 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 4
  %134 = load i32* %arrayidx20.8.4, align 4
  %add.8.4 = add nsw i32 %134, %mul.8.4
  store i32 %add.8.4, i32* %arrayidx20.8.4, align 4
  br label %for.inc.8.4

for.inc.8.4:                                      ; preds = %for.inc.7.4
  br label %for.inc21.4

for.inc21.4:                                      ; preds = %for.inc.8.4
  %arrayidx5.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5, align 4
  br label %for.body8.5

for.body8.5:                                      ; preds = %for.inc21.4
  %arrayidx12.545 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %135 = load i32* %arrayidx12.545, align 4
  %arrayidx16.546 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %136 = load i32* %arrayidx16.546, align 4
  %mul.547 = mul nsw i32 %135, %136
  %arrayidx20.550 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %137 = load i32* %arrayidx20.550, align 4
  %add.551 = add nsw i32 %137, %mul.547
  store i32 %add.551, i32* %arrayidx20.550, align 4
  br label %for.inc.552

for.inc.552:                                      ; preds = %for.body8.5
  %arrayidx12.1.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %138 = load i32* %arrayidx12.1.5, align 4
  %arrayidx15.1.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5, i32 0, i64 5
  %139 = load i32* %arrayidx16.1.5, align 4
  %mul.1.5 = mul nsw i32 %138, %139
  %arrayidx20.1.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %140 = load i32* %arrayidx20.1.5, align 4
  %add.1.5 = add nsw i32 %140, %mul.1.5
  store i32 %add.1.5, i32* %arrayidx20.1.5, align 4
  br label %for.inc.1.5

for.inc.1.5:                                      ; preds = %for.inc.552
  %arrayidx12.2.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %141 = load i32* %arrayidx12.2.5, align 4
  %arrayidx15.2.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5, i32 0, i64 5
  %142 = load i32* %arrayidx16.2.5, align 4
  %mul.2.5 = mul nsw i32 %141, %142
  %arrayidx20.2.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %143 = load i32* %arrayidx20.2.5, align 4
  %add.2.5 = add nsw i32 %143, %mul.2.5
  store i32 %add.2.5, i32* %arrayidx20.2.5, align 4
  br label %for.inc.2.5

for.inc.2.5:                                      ; preds = %for.inc.1.5
  %arrayidx12.3.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %144 = load i32* %arrayidx12.3.5, align 4
  %arrayidx15.3.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5, i32 0, i64 5
  %145 = load i32* %arrayidx16.3.5, align 4
  %mul.3.5 = mul nsw i32 %144, %145
  %arrayidx20.3.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %146 = load i32* %arrayidx20.3.5, align 4
  %add.3.5 = add nsw i32 %146, %mul.3.5
  store i32 %add.3.5, i32* %arrayidx20.3.5, align 4
  br label %for.inc.3.5

for.inc.3.5:                                      ; preds = %for.inc.2.5
  %arrayidx12.4.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %147 = load i32* %arrayidx12.4.5, align 4
  %arrayidx15.4.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5, i32 0, i64 5
  %148 = load i32* %arrayidx16.4.5, align 4
  %mul.4.5 = mul nsw i32 %147, %148
  %arrayidx20.4.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %149 = load i32* %arrayidx20.4.5, align 4
  %add.4.5 = add nsw i32 %149, %mul.4.5
  store i32 %add.4.5, i32* %arrayidx20.4.5, align 4
  br label %for.inc.4.5

for.inc.4.5:                                      ; preds = %for.inc.3.5
  %arrayidx12.5.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %150 = load i32* %arrayidx12.5.5, align 4
  %arrayidx15.5.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5, i32 0, i64 5
  %151 = load i32* %arrayidx16.5.5, align 4
  %mul.5.5 = mul nsw i32 %150, %151
  %arrayidx20.5.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %152 = load i32* %arrayidx20.5.5, align 4
  %add.5.5 = add nsw i32 %152, %mul.5.5
  store i32 %add.5.5, i32* %arrayidx20.5.5, align 4
  br label %for.inc.5.5

for.inc.5.5:                                      ; preds = %for.inc.4.5
  %arrayidx12.6.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %153 = load i32* %arrayidx12.6.5, align 4
  %arrayidx15.6.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5, i32 0, i64 5
  %154 = load i32* %arrayidx16.6.5, align 4
  %mul.6.5 = mul nsw i32 %153, %154
  %arrayidx20.6.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %155 = load i32* %arrayidx20.6.5, align 4
  %add.6.5 = add nsw i32 %155, %mul.6.5
  store i32 %add.6.5, i32* %arrayidx20.6.5, align 4
  br label %for.inc.6.5

for.inc.6.5:                                      ; preds = %for.inc.5.5
  %arrayidx12.7.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %156 = load i32* %arrayidx12.7.5, align 4
  %arrayidx15.7.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5, i32 0, i64 5
  %157 = load i32* %arrayidx16.7.5, align 4
  %mul.7.5 = mul nsw i32 %156, %157
  %arrayidx20.7.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %158 = load i32* %arrayidx20.7.5, align 4
  %add.7.5 = add nsw i32 %158, %mul.7.5
  store i32 %add.7.5, i32* %arrayidx20.7.5, align 4
  br label %for.inc.7.5

for.inc.7.5:                                      ; preds = %for.inc.6.5
  %arrayidx12.8.5 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %159 = load i32* %arrayidx12.8.5, align 4
  %arrayidx15.8.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5, i32 0, i64 5
  %160 = load i32* %arrayidx16.8.5, align 4
  %mul.8.5 = mul nsw i32 %159, %160
  %arrayidx20.8.5 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 5
  %161 = load i32* %arrayidx20.8.5, align 4
  %add.8.5 = add nsw i32 %161, %mul.8.5
  store i32 %add.8.5, i32* %arrayidx20.8.5, align 4
  br label %for.inc.8.5

for.inc.8.5:                                      ; preds = %for.inc.7.5
  br label %for.inc21.5

for.inc21.5:                                      ; preds = %for.inc.8.5
  %arrayidx5.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6, align 4
  br label %for.body8.6

for.body8.6:                                      ; preds = %for.inc21.5
  %arrayidx12.655 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %162 = load i32* %arrayidx12.655, align 4
  %arrayidx16.656 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %163 = load i32* %arrayidx16.656, align 4
  %mul.657 = mul nsw i32 %162, %163
  %arrayidx20.660 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %164 = load i32* %arrayidx20.660, align 4
  %add.661 = add nsw i32 %164, %mul.657
  store i32 %add.661, i32* %arrayidx20.660, align 4
  br label %for.inc.662

for.inc.662:                                      ; preds = %for.body8.6
  %arrayidx12.1.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %165 = load i32* %arrayidx12.1.6, align 4
  %arrayidx15.1.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6, i32 0, i64 6
  %166 = load i32* %arrayidx16.1.6, align 4
  %mul.1.6 = mul nsw i32 %165, %166
  %arrayidx20.1.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %167 = load i32* %arrayidx20.1.6, align 4
  %add.1.6 = add nsw i32 %167, %mul.1.6
  store i32 %add.1.6, i32* %arrayidx20.1.6, align 4
  br label %for.inc.1.6

for.inc.1.6:                                      ; preds = %for.inc.662
  %arrayidx12.2.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %168 = load i32* %arrayidx12.2.6, align 4
  %arrayidx15.2.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6, i32 0, i64 6
  %169 = load i32* %arrayidx16.2.6, align 4
  %mul.2.6 = mul nsw i32 %168, %169
  %arrayidx20.2.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %170 = load i32* %arrayidx20.2.6, align 4
  %add.2.6 = add nsw i32 %170, %mul.2.6
  store i32 %add.2.6, i32* %arrayidx20.2.6, align 4
  br label %for.inc.2.6

for.inc.2.6:                                      ; preds = %for.inc.1.6
  %arrayidx12.3.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %171 = load i32* %arrayidx12.3.6, align 4
  %arrayidx15.3.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6, i32 0, i64 6
  %172 = load i32* %arrayidx16.3.6, align 4
  %mul.3.6 = mul nsw i32 %171, %172
  %arrayidx20.3.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %173 = load i32* %arrayidx20.3.6, align 4
  %add.3.6 = add nsw i32 %173, %mul.3.6
  store i32 %add.3.6, i32* %arrayidx20.3.6, align 4
  br label %for.inc.3.6

for.inc.3.6:                                      ; preds = %for.inc.2.6
  %arrayidx12.4.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %174 = load i32* %arrayidx12.4.6, align 4
  %arrayidx15.4.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6, i32 0, i64 6
  %175 = load i32* %arrayidx16.4.6, align 4
  %mul.4.6 = mul nsw i32 %174, %175
  %arrayidx20.4.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %176 = load i32* %arrayidx20.4.6, align 4
  %add.4.6 = add nsw i32 %176, %mul.4.6
  store i32 %add.4.6, i32* %arrayidx20.4.6, align 4
  br label %for.inc.4.6

for.inc.4.6:                                      ; preds = %for.inc.3.6
  %arrayidx12.5.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %177 = load i32* %arrayidx12.5.6, align 4
  %arrayidx15.5.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6, i32 0, i64 6
  %178 = load i32* %arrayidx16.5.6, align 4
  %mul.5.6 = mul nsw i32 %177, %178
  %arrayidx20.5.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %179 = load i32* %arrayidx20.5.6, align 4
  %add.5.6 = add nsw i32 %179, %mul.5.6
  store i32 %add.5.6, i32* %arrayidx20.5.6, align 4
  br label %for.inc.5.6

for.inc.5.6:                                      ; preds = %for.inc.4.6
  %arrayidx12.6.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %180 = load i32* %arrayidx12.6.6, align 4
  %arrayidx15.6.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6, i32 0, i64 6
  %181 = load i32* %arrayidx16.6.6, align 4
  %mul.6.6 = mul nsw i32 %180, %181
  %arrayidx20.6.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %182 = load i32* %arrayidx20.6.6, align 4
  %add.6.6 = add nsw i32 %182, %mul.6.6
  store i32 %add.6.6, i32* %arrayidx20.6.6, align 4
  br label %for.inc.6.6

for.inc.6.6:                                      ; preds = %for.inc.5.6
  %arrayidx12.7.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %183 = load i32* %arrayidx12.7.6, align 4
  %arrayidx15.7.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6, i32 0, i64 6
  %184 = load i32* %arrayidx16.7.6, align 4
  %mul.7.6 = mul nsw i32 %183, %184
  %arrayidx20.7.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %185 = load i32* %arrayidx20.7.6, align 4
  %add.7.6 = add nsw i32 %185, %mul.7.6
  store i32 %add.7.6, i32* %arrayidx20.7.6, align 4
  br label %for.inc.7.6

for.inc.7.6:                                      ; preds = %for.inc.6.6
  %arrayidx12.8.6 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %186 = load i32* %arrayidx12.8.6, align 4
  %arrayidx15.8.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6, i32 0, i64 6
  %187 = load i32* %arrayidx16.8.6, align 4
  %mul.8.6 = mul nsw i32 %186, %187
  %arrayidx20.8.6 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 6
  %188 = load i32* %arrayidx20.8.6, align 4
  %add.8.6 = add nsw i32 %188, %mul.8.6
  store i32 %add.8.6, i32* %arrayidx20.8.6, align 4
  br label %for.inc.8.6

for.inc.8.6:                                      ; preds = %for.inc.7.6
  br label %for.inc21.6

for.inc21.6:                                      ; preds = %for.inc.8.6
  %arrayidx5.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7, align 4
  br label %for.body8.7

for.body8.7:                                      ; preds = %for.inc21.6
  %arrayidx12.765 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %189 = load i32* %arrayidx12.765, align 4
  %arrayidx16.766 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %190 = load i32* %arrayidx16.766, align 4
  %mul.767 = mul nsw i32 %189, %190
  %arrayidx20.770 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %191 = load i32* %arrayidx20.770, align 4
  %add.771 = add nsw i32 %191, %mul.767
  store i32 %add.771, i32* %arrayidx20.770, align 4
  br label %for.inc.772

for.inc.772:                                      ; preds = %for.body8.7
  %arrayidx12.1.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %192 = load i32* %arrayidx12.1.7, align 4
  %arrayidx15.1.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7, i32 0, i64 7
  %193 = load i32* %arrayidx16.1.7, align 4
  %mul.1.7 = mul nsw i32 %192, %193
  %arrayidx20.1.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %194 = load i32* %arrayidx20.1.7, align 4
  %add.1.7 = add nsw i32 %194, %mul.1.7
  store i32 %add.1.7, i32* %arrayidx20.1.7, align 4
  br label %for.inc.1.7

for.inc.1.7:                                      ; preds = %for.inc.772
  %arrayidx12.2.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %195 = load i32* %arrayidx12.2.7, align 4
  %arrayidx15.2.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7, i32 0, i64 7
  %196 = load i32* %arrayidx16.2.7, align 4
  %mul.2.7 = mul nsw i32 %195, %196
  %arrayidx20.2.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %197 = load i32* %arrayidx20.2.7, align 4
  %add.2.7 = add nsw i32 %197, %mul.2.7
  store i32 %add.2.7, i32* %arrayidx20.2.7, align 4
  br label %for.inc.2.7

for.inc.2.7:                                      ; preds = %for.inc.1.7
  %arrayidx12.3.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %198 = load i32* %arrayidx12.3.7, align 4
  %arrayidx15.3.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7, i32 0, i64 7
  %199 = load i32* %arrayidx16.3.7, align 4
  %mul.3.7 = mul nsw i32 %198, %199
  %arrayidx20.3.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %200 = load i32* %arrayidx20.3.7, align 4
  %add.3.7 = add nsw i32 %200, %mul.3.7
  store i32 %add.3.7, i32* %arrayidx20.3.7, align 4
  br label %for.inc.3.7

for.inc.3.7:                                      ; preds = %for.inc.2.7
  %arrayidx12.4.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %201 = load i32* %arrayidx12.4.7, align 4
  %arrayidx15.4.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7, i32 0, i64 7
  %202 = load i32* %arrayidx16.4.7, align 4
  %mul.4.7 = mul nsw i32 %201, %202
  %arrayidx20.4.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %203 = load i32* %arrayidx20.4.7, align 4
  %add.4.7 = add nsw i32 %203, %mul.4.7
  store i32 %add.4.7, i32* %arrayidx20.4.7, align 4
  br label %for.inc.4.7

for.inc.4.7:                                      ; preds = %for.inc.3.7
  %arrayidx12.5.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %204 = load i32* %arrayidx12.5.7, align 4
  %arrayidx15.5.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7, i32 0, i64 7
  %205 = load i32* %arrayidx16.5.7, align 4
  %mul.5.7 = mul nsw i32 %204, %205
  %arrayidx20.5.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %206 = load i32* %arrayidx20.5.7, align 4
  %add.5.7 = add nsw i32 %206, %mul.5.7
  store i32 %add.5.7, i32* %arrayidx20.5.7, align 4
  br label %for.inc.5.7

for.inc.5.7:                                      ; preds = %for.inc.4.7
  %arrayidx12.6.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %207 = load i32* %arrayidx12.6.7, align 4
  %arrayidx15.6.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7, i32 0, i64 7
  %208 = load i32* %arrayidx16.6.7, align 4
  %mul.6.7 = mul nsw i32 %207, %208
  %arrayidx20.6.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %209 = load i32* %arrayidx20.6.7, align 4
  %add.6.7 = add nsw i32 %209, %mul.6.7
  store i32 %add.6.7, i32* %arrayidx20.6.7, align 4
  br label %for.inc.6.7

for.inc.6.7:                                      ; preds = %for.inc.5.7
  %arrayidx12.7.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %210 = load i32* %arrayidx12.7.7, align 4
  %arrayidx15.7.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7, i32 0, i64 7
  %211 = load i32* %arrayidx16.7.7, align 4
  %mul.7.7 = mul nsw i32 %210, %211
  %arrayidx20.7.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %212 = load i32* %arrayidx20.7.7, align 4
  %add.7.7 = add nsw i32 %212, %mul.7.7
  store i32 %add.7.7, i32* %arrayidx20.7.7, align 4
  br label %for.inc.7.7

for.inc.7.7:                                      ; preds = %for.inc.6.7
  %arrayidx12.8.7 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %213 = load i32* %arrayidx12.8.7, align 4
  %arrayidx15.8.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7, i32 0, i64 7
  %214 = load i32* %arrayidx16.8.7, align 4
  %mul.8.7 = mul nsw i32 %213, %214
  %arrayidx20.8.7 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 7
  %215 = load i32* %arrayidx20.8.7, align 4
  %add.8.7 = add nsw i32 %215, %mul.8.7
  store i32 %add.8.7, i32* %arrayidx20.8.7, align 4
  br label %for.inc.8.7

for.inc.8.7:                                      ; preds = %for.inc.7.7
  br label %for.inc21.7

for.inc21.7:                                      ; preds = %for.inc.8.7
  %arrayidx5.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8, align 4
  br label %for.body8.8

for.body8.8:                                      ; preds = %for.inc21.7
  %arrayidx12.875 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 0
  %216 = load i32* %arrayidx12.875, align 4
  %arrayidx16.876 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %217 = load i32* %arrayidx16.876, align 4
  %mul.877 = mul nsw i32 %216, %217
  %arrayidx20.880 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %218 = load i32* %arrayidx20.880, align 4
  %add.881 = add nsw i32 %218, %mul.877
  store i32 %add.881, i32* %arrayidx20.880, align 4
  br label %for.inc.882

for.inc.882:                                      ; preds = %for.body8.8
  %arrayidx12.1.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 1
  %219 = load i32* %arrayidx12.1.8, align 4
  %arrayidx15.1.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8, i32 0, i64 8
  %220 = load i32* %arrayidx16.1.8, align 4
  %mul.1.8 = mul nsw i32 %219, %220
  %arrayidx20.1.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %221 = load i32* %arrayidx20.1.8, align 4
  %add.1.8 = add nsw i32 %221, %mul.1.8
  store i32 %add.1.8, i32* %arrayidx20.1.8, align 4
  br label %for.inc.1.8

for.inc.1.8:                                      ; preds = %for.inc.882
  %arrayidx12.2.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 2
  %222 = load i32* %arrayidx12.2.8, align 4
  %arrayidx15.2.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8, i32 0, i64 8
  %223 = load i32* %arrayidx16.2.8, align 4
  %mul.2.8 = mul nsw i32 %222, %223
  %arrayidx20.2.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %224 = load i32* %arrayidx20.2.8, align 4
  %add.2.8 = add nsw i32 %224, %mul.2.8
  store i32 %add.2.8, i32* %arrayidx20.2.8, align 4
  br label %for.inc.2.8

for.inc.2.8:                                      ; preds = %for.inc.1.8
  %arrayidx12.3.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 3
  %225 = load i32* %arrayidx12.3.8, align 4
  %arrayidx15.3.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8, i32 0, i64 8
  %226 = load i32* %arrayidx16.3.8, align 4
  %mul.3.8 = mul nsw i32 %225, %226
  %arrayidx20.3.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %227 = load i32* %arrayidx20.3.8, align 4
  %add.3.8 = add nsw i32 %227, %mul.3.8
  store i32 %add.3.8, i32* %arrayidx20.3.8, align 4
  br label %for.inc.3.8

for.inc.3.8:                                      ; preds = %for.inc.2.8
  %arrayidx12.4.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 4
  %228 = load i32* %arrayidx12.4.8, align 4
  %arrayidx15.4.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8, i32 0, i64 8
  %229 = load i32* %arrayidx16.4.8, align 4
  %mul.4.8 = mul nsw i32 %228, %229
  %arrayidx20.4.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %230 = load i32* %arrayidx20.4.8, align 4
  %add.4.8 = add nsw i32 %230, %mul.4.8
  store i32 %add.4.8, i32* %arrayidx20.4.8, align 4
  br label %for.inc.4.8

for.inc.4.8:                                      ; preds = %for.inc.3.8
  %arrayidx12.5.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 5
  %231 = load i32* %arrayidx12.5.8, align 4
  %arrayidx15.5.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8, i32 0, i64 8
  %232 = load i32* %arrayidx16.5.8, align 4
  %mul.5.8 = mul nsw i32 %231, %232
  %arrayidx20.5.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %233 = load i32* %arrayidx20.5.8, align 4
  %add.5.8 = add nsw i32 %233, %mul.5.8
  store i32 %add.5.8, i32* %arrayidx20.5.8, align 4
  br label %for.inc.5.8

for.inc.5.8:                                      ; preds = %for.inc.4.8
  %arrayidx12.6.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 6
  %234 = load i32* %arrayidx12.6.8, align 4
  %arrayidx15.6.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8, i32 0, i64 8
  %235 = load i32* %arrayidx16.6.8, align 4
  %mul.6.8 = mul nsw i32 %234, %235
  %arrayidx20.6.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %236 = load i32* %arrayidx20.6.8, align 4
  %add.6.8 = add nsw i32 %236, %mul.6.8
  store i32 %add.6.8, i32* %arrayidx20.6.8, align 4
  br label %for.inc.6.8

for.inc.6.8:                                      ; preds = %for.inc.5.8
  %arrayidx12.7.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 7
  %237 = load i32* %arrayidx12.7.8, align 4
  %arrayidx15.7.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8, i32 0, i64 8
  %238 = load i32* %arrayidx16.7.8, align 4
  %mul.7.8 = mul nsw i32 %237, %238
  %arrayidx20.7.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %239 = load i32* %arrayidx20.7.8, align 4
  %add.7.8 = add nsw i32 %239, %mul.7.8
  store i32 %add.7.8, i32* %arrayidx20.7.8, align 4
  br label %for.inc.7.8

for.inc.7.8:                                      ; preds = %for.inc.6.8
  %arrayidx12.8.8 = getelementptr inbounds [9 x i32]* %a, i32 0, i64 8
  %240 = load i32* %arrayidx12.8.8, align 4
  %arrayidx15.8.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8, i32 0, i64 8
  %241 = load i32* %arrayidx16.8.8, align 4
  %mul.8.8 = mul nsw i32 %240, %241
  %arrayidx20.8.8 = getelementptr inbounds [9 x i32]* %c, i32 0, i64 8
  %242 = load i32* %arrayidx20.8.8, align 4
  %add.8.8 = add nsw i32 %242, %mul.8.8
  store i32 %add.8.8, i32* %arrayidx20.8.8, align 4
  br label %for.inc.8.8

for.inc.8.8:                                      ; preds = %for.inc.7.8
  br label %for.inc21.8

for.inc21.8:                                      ; preds = %for.inc.8.8
  br label %for.inc24

for.body3.1:                                      ; preds = %for.inc24
  %arrayidx.184 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.185 = getelementptr inbounds [9 x i32]* %arrayidx.184, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.185, align 4
  br label %for.body8.193

for.body8.193:                                    ; preds = %for.body3.1
  %arrayidx11.186 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.187 = getelementptr inbounds [9 x i32]* %arrayidx11.186, i32 0, i64 0
  %243 = load i32* %arrayidx12.187, align 4
  %arrayidx16.188 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %244 = load i32* %arrayidx16.188, align 4
  %mul.189 = mul nsw i32 %243, %244
  %arrayidx19.190 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.191 = getelementptr inbounds [9 x i32]* %arrayidx19.190, i32 0, i64 0
  %245 = load i32* %arrayidx20.191, align 4
  %add.192 = add nsw i32 %245, %mul.189
  store i32 %add.192, i32* %arrayidx20.191, align 4
  br label %for.inc.1102

for.inc.1102:                                     ; preds = %for.body8.193
  %arrayidx11.1.194 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.195 = getelementptr inbounds [9 x i32]* %arrayidx11.1.194, i32 0, i64 1
  %246 = load i32* %arrayidx12.1.195, align 4
  %arrayidx15.1.196 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.197 = getelementptr inbounds [9 x i32]* %arrayidx15.1.196, i32 0, i64 0
  %247 = load i32* %arrayidx16.1.197, align 4
  %mul.1.198 = mul nsw i32 %246, %247
  %arrayidx19.1.199 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.1100 = getelementptr inbounds [9 x i32]* %arrayidx19.1.199, i32 0, i64 0
  %248 = load i32* %arrayidx20.1.1100, align 4
  %add.1.1101 = add nsw i32 %248, %mul.1.198
  store i32 %add.1.1101, i32* %arrayidx20.1.1100, align 4
  br label %for.inc.1.1111

for.inc.1.1111:                                   ; preds = %for.inc.1102
  %arrayidx11.2.1103 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.1104 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1103, i32 0, i64 2
  %249 = load i32* %arrayidx12.2.1104, align 4
  %arrayidx15.2.1105 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1106 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1105, i32 0, i64 0
  %250 = load i32* %arrayidx16.2.1106, align 4
  %mul.2.1107 = mul nsw i32 %249, %250
  %arrayidx19.2.1108 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.1109 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1108, i32 0, i64 0
  %251 = load i32* %arrayidx20.2.1109, align 4
  %add.2.1110 = add nsw i32 %251, %mul.2.1107
  store i32 %add.2.1110, i32* %arrayidx20.2.1109, align 4
  br label %for.inc.2.1120

for.inc.2.1120:                                   ; preds = %for.inc.1.1111
  %arrayidx11.3.1112 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.1113 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1112, i32 0, i64 3
  %252 = load i32* %arrayidx12.3.1113, align 4
  %arrayidx15.3.1114 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1115 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1114, i32 0, i64 0
  %253 = load i32* %arrayidx16.3.1115, align 4
  %mul.3.1116 = mul nsw i32 %252, %253
  %arrayidx19.3.1117 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.1118 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1117, i32 0, i64 0
  %254 = load i32* %arrayidx20.3.1118, align 4
  %add.3.1119 = add nsw i32 %254, %mul.3.1116
  store i32 %add.3.1119, i32* %arrayidx20.3.1118, align 4
  br label %for.inc.3.1129

for.inc.3.1129:                                   ; preds = %for.inc.2.1120
  %arrayidx11.4.1121 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.1122 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1121, i32 0, i64 4
  %255 = load i32* %arrayidx12.4.1122, align 4
  %arrayidx15.4.1123 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1124 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1123, i32 0, i64 0
  %256 = load i32* %arrayidx16.4.1124, align 4
  %mul.4.1125 = mul nsw i32 %255, %256
  %arrayidx19.4.1126 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.1127 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1126, i32 0, i64 0
  %257 = load i32* %arrayidx20.4.1127, align 4
  %add.4.1128 = add nsw i32 %257, %mul.4.1125
  store i32 %add.4.1128, i32* %arrayidx20.4.1127, align 4
  br label %for.inc.4.1138

for.inc.4.1138:                                   ; preds = %for.inc.3.1129
  %arrayidx11.5.1130 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.1131 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1130, i32 0, i64 5
  %258 = load i32* %arrayidx12.5.1131, align 4
  %arrayidx15.5.1132 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1133 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1132, i32 0, i64 0
  %259 = load i32* %arrayidx16.5.1133, align 4
  %mul.5.1134 = mul nsw i32 %258, %259
  %arrayidx19.5.1135 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.1136 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1135, i32 0, i64 0
  %260 = load i32* %arrayidx20.5.1136, align 4
  %add.5.1137 = add nsw i32 %260, %mul.5.1134
  store i32 %add.5.1137, i32* %arrayidx20.5.1136, align 4
  br label %for.inc.5.1147

for.inc.5.1147:                                   ; preds = %for.inc.4.1138
  %arrayidx11.6.1139 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.1140 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1139, i32 0, i64 6
  %261 = load i32* %arrayidx12.6.1140, align 4
  %arrayidx15.6.1141 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1142 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1141, i32 0, i64 0
  %262 = load i32* %arrayidx16.6.1142, align 4
  %mul.6.1143 = mul nsw i32 %261, %262
  %arrayidx19.6.1144 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.1145 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1144, i32 0, i64 0
  %263 = load i32* %arrayidx20.6.1145, align 4
  %add.6.1146 = add nsw i32 %263, %mul.6.1143
  store i32 %add.6.1146, i32* %arrayidx20.6.1145, align 4
  br label %for.inc.6.1156

for.inc.6.1156:                                   ; preds = %for.inc.5.1147
  %arrayidx11.7.1148 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.1149 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1148, i32 0, i64 7
  %264 = load i32* %arrayidx12.7.1149, align 4
  %arrayidx15.7.1150 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1151 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1150, i32 0, i64 0
  %265 = load i32* %arrayidx16.7.1151, align 4
  %mul.7.1152 = mul nsw i32 %264, %265
  %arrayidx19.7.1153 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.1154 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1153, i32 0, i64 0
  %266 = load i32* %arrayidx20.7.1154, align 4
  %add.7.1155 = add nsw i32 %266, %mul.7.1152
  store i32 %add.7.1155, i32* %arrayidx20.7.1154, align 4
  br label %for.inc.7.1165

for.inc.7.1165:                                   ; preds = %for.inc.6.1156
  %arrayidx11.8.1157 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.1158 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1157, i32 0, i64 8
  %267 = load i32* %arrayidx12.8.1158, align 4
  %arrayidx15.8.1159 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1160 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1159, i32 0, i64 0
  %268 = load i32* %arrayidx16.8.1160, align 4
  %mul.8.1161 = mul nsw i32 %267, %268
  %arrayidx19.8.1162 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.1163 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1162, i32 0, i64 0
  %269 = load i32* %arrayidx20.8.1163, align 4
  %add.8.1164 = add nsw i32 %269, %mul.8.1161
  store i32 %add.8.1164, i32* %arrayidx20.8.1163, align 4
  br label %for.inc.8.1166

for.inc.8.1166:                                   ; preds = %for.inc.7.1165
  br label %for.inc21.1167

for.inc21.1167:                                   ; preds = %for.inc.8.1166
  %arrayidx.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [9 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  br label %for.body8.1.1

for.body8.1.1:                                    ; preds = %for.inc21.1167
  %arrayidx11.14.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [9 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %270 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %271 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %270, %271
  %arrayidx19.19.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [9 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %272 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %272, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  br label %for.inc.112.1

for.inc.112.1:                                    ; preds = %for.body8.1.1
  %arrayidx11.1.1.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [9 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %273 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %274 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %273, %274
  %arrayidx19.1.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [9 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %275 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %275, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  br label %for.inc.1.1.1

for.inc.1.1.1:                                    ; preds = %for.inc.112.1
  %arrayidx11.2.1.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.1.1 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1.1, i32 0, i64 2
  %276 = load i32* %arrayidx12.2.1.1, align 4
  %arrayidx15.2.1.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1.1, i32 0, i64 1
  %277 = load i32* %arrayidx16.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %276, %277
  %arrayidx19.2.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.1.1 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1.1, i32 0, i64 1
  %278 = load i32* %arrayidx20.2.1.1, align 4
  %add.2.1.1 = add nsw i32 %278, %mul.2.1.1
  store i32 %add.2.1.1, i32* %arrayidx20.2.1.1, align 4
  br label %for.inc.2.1.1

for.inc.2.1.1:                                    ; preds = %for.inc.1.1.1
  %arrayidx11.3.1.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.1.1 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1.1, i32 0, i64 3
  %279 = load i32* %arrayidx12.3.1.1, align 4
  %arrayidx15.3.1.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1.1, i32 0, i64 1
  %280 = load i32* %arrayidx16.3.1.1, align 4
  %mul.3.1.1 = mul nsw i32 %279, %280
  %arrayidx19.3.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.1.1 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1.1, i32 0, i64 1
  %281 = load i32* %arrayidx20.3.1.1, align 4
  %add.3.1.1 = add nsw i32 %281, %mul.3.1.1
  store i32 %add.3.1.1, i32* %arrayidx20.3.1.1, align 4
  br label %for.inc.3.1.1

for.inc.3.1.1:                                    ; preds = %for.inc.2.1.1
  %arrayidx11.4.1.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.1.1 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1.1, i32 0, i64 4
  %282 = load i32* %arrayidx12.4.1.1, align 4
  %arrayidx15.4.1.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1.1, i32 0, i64 1
  %283 = load i32* %arrayidx16.4.1.1, align 4
  %mul.4.1.1 = mul nsw i32 %282, %283
  %arrayidx19.4.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.1.1 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1.1, i32 0, i64 1
  %284 = load i32* %arrayidx20.4.1.1, align 4
  %add.4.1.1 = add nsw i32 %284, %mul.4.1.1
  store i32 %add.4.1.1, i32* %arrayidx20.4.1.1, align 4
  br label %for.inc.4.1.1

for.inc.4.1.1:                                    ; preds = %for.inc.3.1.1
  %arrayidx11.5.1.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.1.1 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1.1, i32 0, i64 5
  %285 = load i32* %arrayidx12.5.1.1, align 4
  %arrayidx15.5.1.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1.1, i32 0, i64 1
  %286 = load i32* %arrayidx16.5.1.1, align 4
  %mul.5.1.1 = mul nsw i32 %285, %286
  %arrayidx19.5.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.1.1 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1.1, i32 0, i64 1
  %287 = load i32* %arrayidx20.5.1.1, align 4
  %add.5.1.1 = add nsw i32 %287, %mul.5.1.1
  store i32 %add.5.1.1, i32* %arrayidx20.5.1.1, align 4
  br label %for.inc.5.1.1

for.inc.5.1.1:                                    ; preds = %for.inc.4.1.1
  %arrayidx11.6.1.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.1.1 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1.1, i32 0, i64 6
  %288 = load i32* %arrayidx12.6.1.1, align 4
  %arrayidx15.6.1.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1.1, i32 0, i64 1
  %289 = load i32* %arrayidx16.6.1.1, align 4
  %mul.6.1.1 = mul nsw i32 %288, %289
  %arrayidx19.6.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.1.1 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1.1, i32 0, i64 1
  %290 = load i32* %arrayidx20.6.1.1, align 4
  %add.6.1.1 = add nsw i32 %290, %mul.6.1.1
  store i32 %add.6.1.1, i32* %arrayidx20.6.1.1, align 4
  br label %for.inc.6.1.1

for.inc.6.1.1:                                    ; preds = %for.inc.5.1.1
  %arrayidx11.7.1.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.1.1 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1.1, i32 0, i64 7
  %291 = load i32* %arrayidx12.7.1.1, align 4
  %arrayidx15.7.1.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1.1, i32 0, i64 1
  %292 = load i32* %arrayidx16.7.1.1, align 4
  %mul.7.1.1 = mul nsw i32 %291, %292
  %arrayidx19.7.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.1.1 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1.1, i32 0, i64 1
  %293 = load i32* %arrayidx20.7.1.1, align 4
  %add.7.1.1 = add nsw i32 %293, %mul.7.1.1
  store i32 %add.7.1.1, i32* %arrayidx20.7.1.1, align 4
  br label %for.inc.7.1.1

for.inc.7.1.1:                                    ; preds = %for.inc.6.1.1
  %arrayidx11.8.1.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.1.1 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1.1, i32 0, i64 8
  %294 = load i32* %arrayidx12.8.1.1, align 4
  %arrayidx15.8.1.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1.1, i32 0, i64 1
  %295 = load i32* %arrayidx16.8.1.1, align 4
  %mul.8.1.1 = mul nsw i32 %294, %295
  %arrayidx19.8.1.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.1.1 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1.1, i32 0, i64 1
  %296 = load i32* %arrayidx20.8.1.1, align 4
  %add.8.1.1 = add nsw i32 %296, %mul.8.1.1
  store i32 %add.8.1.1, i32* %arrayidx20.8.1.1, align 4
  br label %for.inc.8.1.1

for.inc.8.1.1:                                    ; preds = %for.inc.7.1.1
  br label %for.inc21.1.1

for.inc21.1.1:                                    ; preds = %for.inc.8.1.1
  %arrayidx.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [9 x i32]* %arrayidx.2.1, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.1, align 4
  br label %for.body8.2.1

for.body8.2.1:                                    ; preds = %for.inc21.1.1
  %arrayidx11.214.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.215.1 = getelementptr inbounds [9 x i32]* %arrayidx11.214.1, i32 0, i64 0
  %297 = load i32* %arrayidx12.215.1, align 4
  %arrayidx16.216.1 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %298 = load i32* %arrayidx16.216.1, align 4
  %mul.217.1 = mul nsw i32 %297, %298
  %arrayidx19.219.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.220.1 = getelementptr inbounds [9 x i32]* %arrayidx19.219.1, i32 0, i64 2
  %299 = load i32* %arrayidx20.220.1, align 4
  %add.221.1 = add nsw i32 %299, %mul.217.1
  store i32 %add.221.1, i32* %arrayidx20.220.1, align 4
  br label %for.inc.222.1

for.inc.222.1:                                    ; preds = %for.body8.2.1
  %arrayidx11.1.2.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.2.1 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2.1, i32 0, i64 1
  %300 = load i32* %arrayidx12.1.2.1, align 4
  %arrayidx15.1.2.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2.1, i32 0, i64 2
  %301 = load i32* %arrayidx16.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %300, %301
  %arrayidx19.1.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.2.1 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2.1, i32 0, i64 2
  %302 = load i32* %arrayidx20.1.2.1, align 4
  %add.1.2.1 = add nsw i32 %302, %mul.1.2.1
  store i32 %add.1.2.1, i32* %arrayidx20.1.2.1, align 4
  br label %for.inc.1.2.1

for.inc.1.2.1:                                    ; preds = %for.inc.222.1
  %arrayidx11.2.2.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.2.1 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2.1, i32 0, i64 2
  %303 = load i32* %arrayidx12.2.2.1, align 4
  %arrayidx15.2.2.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2.1, i32 0, i64 2
  %304 = load i32* %arrayidx16.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %303, %304
  %arrayidx19.2.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.2.1 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2.1, i32 0, i64 2
  %305 = load i32* %arrayidx20.2.2.1, align 4
  %add.2.2.1 = add nsw i32 %305, %mul.2.2.1
  store i32 %add.2.2.1, i32* %arrayidx20.2.2.1, align 4
  br label %for.inc.2.2.1

for.inc.2.2.1:                                    ; preds = %for.inc.1.2.1
  %arrayidx11.3.2.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.2.1 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2.1, i32 0, i64 3
  %306 = load i32* %arrayidx12.3.2.1, align 4
  %arrayidx15.3.2.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2.1, i32 0, i64 2
  %307 = load i32* %arrayidx16.3.2.1, align 4
  %mul.3.2.1 = mul nsw i32 %306, %307
  %arrayidx19.3.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.2.1 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2.1, i32 0, i64 2
  %308 = load i32* %arrayidx20.3.2.1, align 4
  %add.3.2.1 = add nsw i32 %308, %mul.3.2.1
  store i32 %add.3.2.1, i32* %arrayidx20.3.2.1, align 4
  br label %for.inc.3.2.1

for.inc.3.2.1:                                    ; preds = %for.inc.2.2.1
  %arrayidx11.4.2.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.2.1 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2.1, i32 0, i64 4
  %309 = load i32* %arrayidx12.4.2.1, align 4
  %arrayidx15.4.2.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2.1, i32 0, i64 2
  %310 = load i32* %arrayidx16.4.2.1, align 4
  %mul.4.2.1 = mul nsw i32 %309, %310
  %arrayidx19.4.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.2.1 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2.1, i32 0, i64 2
  %311 = load i32* %arrayidx20.4.2.1, align 4
  %add.4.2.1 = add nsw i32 %311, %mul.4.2.1
  store i32 %add.4.2.1, i32* %arrayidx20.4.2.1, align 4
  br label %for.inc.4.2.1

for.inc.4.2.1:                                    ; preds = %for.inc.3.2.1
  %arrayidx11.5.2.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.2.1 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2.1, i32 0, i64 5
  %312 = load i32* %arrayidx12.5.2.1, align 4
  %arrayidx15.5.2.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2.1, i32 0, i64 2
  %313 = load i32* %arrayidx16.5.2.1, align 4
  %mul.5.2.1 = mul nsw i32 %312, %313
  %arrayidx19.5.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.2.1 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2.1, i32 0, i64 2
  %314 = load i32* %arrayidx20.5.2.1, align 4
  %add.5.2.1 = add nsw i32 %314, %mul.5.2.1
  store i32 %add.5.2.1, i32* %arrayidx20.5.2.1, align 4
  br label %for.inc.5.2.1

for.inc.5.2.1:                                    ; preds = %for.inc.4.2.1
  %arrayidx11.6.2.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.2.1 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2.1, i32 0, i64 6
  %315 = load i32* %arrayidx12.6.2.1, align 4
  %arrayidx15.6.2.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2.1, i32 0, i64 2
  %316 = load i32* %arrayidx16.6.2.1, align 4
  %mul.6.2.1 = mul nsw i32 %315, %316
  %arrayidx19.6.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.2.1 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2.1, i32 0, i64 2
  %317 = load i32* %arrayidx20.6.2.1, align 4
  %add.6.2.1 = add nsw i32 %317, %mul.6.2.1
  store i32 %add.6.2.1, i32* %arrayidx20.6.2.1, align 4
  br label %for.inc.6.2.1

for.inc.6.2.1:                                    ; preds = %for.inc.5.2.1
  %arrayidx11.7.2.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.2.1 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2.1, i32 0, i64 7
  %318 = load i32* %arrayidx12.7.2.1, align 4
  %arrayidx15.7.2.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2.1, i32 0, i64 2
  %319 = load i32* %arrayidx16.7.2.1, align 4
  %mul.7.2.1 = mul nsw i32 %318, %319
  %arrayidx19.7.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.2.1 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2.1, i32 0, i64 2
  %320 = load i32* %arrayidx20.7.2.1, align 4
  %add.7.2.1 = add nsw i32 %320, %mul.7.2.1
  store i32 %add.7.2.1, i32* %arrayidx20.7.2.1, align 4
  br label %for.inc.7.2.1

for.inc.7.2.1:                                    ; preds = %for.inc.6.2.1
  %arrayidx11.8.2.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.2.1 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2.1, i32 0, i64 8
  %321 = load i32* %arrayidx12.8.2.1, align 4
  %arrayidx15.8.2.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2.1, i32 0, i64 2
  %322 = load i32* %arrayidx16.8.2.1, align 4
  %mul.8.2.1 = mul nsw i32 %321, %322
  %arrayidx19.8.2.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.2.1 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2.1, i32 0, i64 2
  %323 = load i32* %arrayidx20.8.2.1, align 4
  %add.8.2.1 = add nsw i32 %323, %mul.8.2.1
  store i32 %add.8.2.1, i32* %arrayidx20.8.2.1, align 4
  br label %for.inc.8.2.1

for.inc.8.2.1:                                    ; preds = %for.inc.7.2.1
  br label %for.inc21.2.1

for.inc21.2.1:                                    ; preds = %for.inc.8.2.1
  %arrayidx.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.3.1 = getelementptr inbounds [9 x i32]* %arrayidx.3.1, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.1, align 4
  br label %for.body8.3.1

for.body8.3.1:                                    ; preds = %for.inc21.2.1
  %arrayidx11.324.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.325.1 = getelementptr inbounds [9 x i32]* %arrayidx11.324.1, i32 0, i64 0
  %324 = load i32* %arrayidx12.325.1, align 4
  %arrayidx16.326.1 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %325 = load i32* %arrayidx16.326.1, align 4
  %mul.327.1 = mul nsw i32 %324, %325
  %arrayidx19.329.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.330.1 = getelementptr inbounds [9 x i32]* %arrayidx19.329.1, i32 0, i64 3
  %326 = load i32* %arrayidx20.330.1, align 4
  %add.331.1 = add nsw i32 %326, %mul.327.1
  store i32 %add.331.1, i32* %arrayidx20.330.1, align 4
  br label %for.inc.332.1

for.inc.332.1:                                    ; preds = %for.body8.3.1
  %arrayidx11.1.3.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.3.1 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3.1, i32 0, i64 1
  %327 = load i32* %arrayidx12.1.3.1, align 4
  %arrayidx15.1.3.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3.1, i32 0, i64 3
  %328 = load i32* %arrayidx16.1.3.1, align 4
  %mul.1.3.1 = mul nsw i32 %327, %328
  %arrayidx19.1.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.3.1 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3.1, i32 0, i64 3
  %329 = load i32* %arrayidx20.1.3.1, align 4
  %add.1.3.1 = add nsw i32 %329, %mul.1.3.1
  store i32 %add.1.3.1, i32* %arrayidx20.1.3.1, align 4
  br label %for.inc.1.3.1

for.inc.1.3.1:                                    ; preds = %for.inc.332.1
  %arrayidx11.2.3.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.3.1 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3.1, i32 0, i64 2
  %330 = load i32* %arrayidx12.2.3.1, align 4
  %arrayidx15.2.3.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3.1, i32 0, i64 3
  %331 = load i32* %arrayidx16.2.3.1, align 4
  %mul.2.3.1 = mul nsw i32 %330, %331
  %arrayidx19.2.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.3.1 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3.1, i32 0, i64 3
  %332 = load i32* %arrayidx20.2.3.1, align 4
  %add.2.3.1 = add nsw i32 %332, %mul.2.3.1
  store i32 %add.2.3.1, i32* %arrayidx20.2.3.1, align 4
  br label %for.inc.2.3.1

for.inc.2.3.1:                                    ; preds = %for.inc.1.3.1
  %arrayidx11.3.3.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.3.1 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3.1, i32 0, i64 3
  %333 = load i32* %arrayidx12.3.3.1, align 4
  %arrayidx15.3.3.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3.1, i32 0, i64 3
  %334 = load i32* %arrayidx16.3.3.1, align 4
  %mul.3.3.1 = mul nsw i32 %333, %334
  %arrayidx19.3.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.3.1 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3.1, i32 0, i64 3
  %335 = load i32* %arrayidx20.3.3.1, align 4
  %add.3.3.1 = add nsw i32 %335, %mul.3.3.1
  store i32 %add.3.3.1, i32* %arrayidx20.3.3.1, align 4
  br label %for.inc.3.3.1

for.inc.3.3.1:                                    ; preds = %for.inc.2.3.1
  %arrayidx11.4.3.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.3.1 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3.1, i32 0, i64 4
  %336 = load i32* %arrayidx12.4.3.1, align 4
  %arrayidx15.4.3.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3.1, i32 0, i64 3
  %337 = load i32* %arrayidx16.4.3.1, align 4
  %mul.4.3.1 = mul nsw i32 %336, %337
  %arrayidx19.4.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.3.1 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3.1, i32 0, i64 3
  %338 = load i32* %arrayidx20.4.3.1, align 4
  %add.4.3.1 = add nsw i32 %338, %mul.4.3.1
  store i32 %add.4.3.1, i32* %arrayidx20.4.3.1, align 4
  br label %for.inc.4.3.1

for.inc.4.3.1:                                    ; preds = %for.inc.3.3.1
  %arrayidx11.5.3.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.3.1 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3.1, i32 0, i64 5
  %339 = load i32* %arrayidx12.5.3.1, align 4
  %arrayidx15.5.3.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3.1, i32 0, i64 3
  %340 = load i32* %arrayidx16.5.3.1, align 4
  %mul.5.3.1 = mul nsw i32 %339, %340
  %arrayidx19.5.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.3.1 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3.1, i32 0, i64 3
  %341 = load i32* %arrayidx20.5.3.1, align 4
  %add.5.3.1 = add nsw i32 %341, %mul.5.3.1
  store i32 %add.5.3.1, i32* %arrayidx20.5.3.1, align 4
  br label %for.inc.5.3.1

for.inc.5.3.1:                                    ; preds = %for.inc.4.3.1
  %arrayidx11.6.3.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.3.1 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3.1, i32 0, i64 6
  %342 = load i32* %arrayidx12.6.3.1, align 4
  %arrayidx15.6.3.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3.1, i32 0, i64 3
  %343 = load i32* %arrayidx16.6.3.1, align 4
  %mul.6.3.1 = mul nsw i32 %342, %343
  %arrayidx19.6.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.3.1 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3.1, i32 0, i64 3
  %344 = load i32* %arrayidx20.6.3.1, align 4
  %add.6.3.1 = add nsw i32 %344, %mul.6.3.1
  store i32 %add.6.3.1, i32* %arrayidx20.6.3.1, align 4
  br label %for.inc.6.3.1

for.inc.6.3.1:                                    ; preds = %for.inc.5.3.1
  %arrayidx11.7.3.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.3.1 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3.1, i32 0, i64 7
  %345 = load i32* %arrayidx12.7.3.1, align 4
  %arrayidx15.7.3.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3.1, i32 0, i64 3
  %346 = load i32* %arrayidx16.7.3.1, align 4
  %mul.7.3.1 = mul nsw i32 %345, %346
  %arrayidx19.7.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.3.1 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3.1, i32 0, i64 3
  %347 = load i32* %arrayidx20.7.3.1, align 4
  %add.7.3.1 = add nsw i32 %347, %mul.7.3.1
  store i32 %add.7.3.1, i32* %arrayidx20.7.3.1, align 4
  br label %for.inc.7.3.1

for.inc.7.3.1:                                    ; preds = %for.inc.6.3.1
  %arrayidx11.8.3.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.3.1 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3.1, i32 0, i64 8
  %348 = load i32* %arrayidx12.8.3.1, align 4
  %arrayidx15.8.3.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3.1, i32 0, i64 3
  %349 = load i32* %arrayidx16.8.3.1, align 4
  %mul.8.3.1 = mul nsw i32 %348, %349
  %arrayidx19.8.3.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.3.1 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3.1, i32 0, i64 3
  %350 = load i32* %arrayidx20.8.3.1, align 4
  %add.8.3.1 = add nsw i32 %350, %mul.8.3.1
  store i32 %add.8.3.1, i32* %arrayidx20.8.3.1, align 4
  br label %for.inc.8.3.1

for.inc.8.3.1:                                    ; preds = %for.inc.7.3.1
  br label %for.inc21.3.1

for.inc21.3.1:                                    ; preds = %for.inc.8.3.1
  %arrayidx.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.4.1 = getelementptr inbounds [9 x i32]* %arrayidx.4.1, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.1, align 4
  br label %for.body8.4.1

for.body8.4.1:                                    ; preds = %for.inc21.3.1
  %arrayidx11.434.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.435.1 = getelementptr inbounds [9 x i32]* %arrayidx11.434.1, i32 0, i64 0
  %351 = load i32* %arrayidx12.435.1, align 4
  %arrayidx16.436.1 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %352 = load i32* %arrayidx16.436.1, align 4
  %mul.437.1 = mul nsw i32 %351, %352
  %arrayidx19.439.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.440.1 = getelementptr inbounds [9 x i32]* %arrayidx19.439.1, i32 0, i64 4
  %353 = load i32* %arrayidx20.440.1, align 4
  %add.441.1 = add nsw i32 %353, %mul.437.1
  store i32 %add.441.1, i32* %arrayidx20.440.1, align 4
  br label %for.inc.442.1

for.inc.442.1:                                    ; preds = %for.body8.4.1
  %arrayidx11.1.4.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.4.1 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4.1, i32 0, i64 1
  %354 = load i32* %arrayidx12.1.4.1, align 4
  %arrayidx15.1.4.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4.1, i32 0, i64 4
  %355 = load i32* %arrayidx16.1.4.1, align 4
  %mul.1.4.1 = mul nsw i32 %354, %355
  %arrayidx19.1.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.4.1 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4.1, i32 0, i64 4
  %356 = load i32* %arrayidx20.1.4.1, align 4
  %add.1.4.1 = add nsw i32 %356, %mul.1.4.1
  store i32 %add.1.4.1, i32* %arrayidx20.1.4.1, align 4
  br label %for.inc.1.4.1

for.inc.1.4.1:                                    ; preds = %for.inc.442.1
  %arrayidx11.2.4.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.4.1 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4.1, i32 0, i64 2
  %357 = load i32* %arrayidx12.2.4.1, align 4
  %arrayidx15.2.4.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4.1, i32 0, i64 4
  %358 = load i32* %arrayidx16.2.4.1, align 4
  %mul.2.4.1 = mul nsw i32 %357, %358
  %arrayidx19.2.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.4.1 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4.1, i32 0, i64 4
  %359 = load i32* %arrayidx20.2.4.1, align 4
  %add.2.4.1 = add nsw i32 %359, %mul.2.4.1
  store i32 %add.2.4.1, i32* %arrayidx20.2.4.1, align 4
  br label %for.inc.2.4.1

for.inc.2.4.1:                                    ; preds = %for.inc.1.4.1
  %arrayidx11.3.4.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.4.1 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4.1, i32 0, i64 3
  %360 = load i32* %arrayidx12.3.4.1, align 4
  %arrayidx15.3.4.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4.1, i32 0, i64 4
  %361 = load i32* %arrayidx16.3.4.1, align 4
  %mul.3.4.1 = mul nsw i32 %360, %361
  %arrayidx19.3.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.4.1 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4.1, i32 0, i64 4
  %362 = load i32* %arrayidx20.3.4.1, align 4
  %add.3.4.1 = add nsw i32 %362, %mul.3.4.1
  store i32 %add.3.4.1, i32* %arrayidx20.3.4.1, align 4
  br label %for.inc.3.4.1

for.inc.3.4.1:                                    ; preds = %for.inc.2.4.1
  %arrayidx11.4.4.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.4.1 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4.1, i32 0, i64 4
  %363 = load i32* %arrayidx12.4.4.1, align 4
  %arrayidx15.4.4.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4.1, i32 0, i64 4
  %364 = load i32* %arrayidx16.4.4.1, align 4
  %mul.4.4.1 = mul nsw i32 %363, %364
  %arrayidx19.4.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.4.1 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4.1, i32 0, i64 4
  %365 = load i32* %arrayidx20.4.4.1, align 4
  %add.4.4.1 = add nsw i32 %365, %mul.4.4.1
  store i32 %add.4.4.1, i32* %arrayidx20.4.4.1, align 4
  br label %for.inc.4.4.1

for.inc.4.4.1:                                    ; preds = %for.inc.3.4.1
  %arrayidx11.5.4.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.4.1 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4.1, i32 0, i64 5
  %366 = load i32* %arrayidx12.5.4.1, align 4
  %arrayidx15.5.4.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4.1, i32 0, i64 4
  %367 = load i32* %arrayidx16.5.4.1, align 4
  %mul.5.4.1 = mul nsw i32 %366, %367
  %arrayidx19.5.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.4.1 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4.1, i32 0, i64 4
  %368 = load i32* %arrayidx20.5.4.1, align 4
  %add.5.4.1 = add nsw i32 %368, %mul.5.4.1
  store i32 %add.5.4.1, i32* %arrayidx20.5.4.1, align 4
  br label %for.inc.5.4.1

for.inc.5.4.1:                                    ; preds = %for.inc.4.4.1
  %arrayidx11.6.4.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.4.1 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4.1, i32 0, i64 6
  %369 = load i32* %arrayidx12.6.4.1, align 4
  %arrayidx15.6.4.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4.1, i32 0, i64 4
  %370 = load i32* %arrayidx16.6.4.1, align 4
  %mul.6.4.1 = mul nsw i32 %369, %370
  %arrayidx19.6.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.4.1 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4.1, i32 0, i64 4
  %371 = load i32* %arrayidx20.6.4.1, align 4
  %add.6.4.1 = add nsw i32 %371, %mul.6.4.1
  store i32 %add.6.4.1, i32* %arrayidx20.6.4.1, align 4
  br label %for.inc.6.4.1

for.inc.6.4.1:                                    ; preds = %for.inc.5.4.1
  %arrayidx11.7.4.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.4.1 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4.1, i32 0, i64 7
  %372 = load i32* %arrayidx12.7.4.1, align 4
  %arrayidx15.7.4.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4.1, i32 0, i64 4
  %373 = load i32* %arrayidx16.7.4.1, align 4
  %mul.7.4.1 = mul nsw i32 %372, %373
  %arrayidx19.7.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.4.1 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4.1, i32 0, i64 4
  %374 = load i32* %arrayidx20.7.4.1, align 4
  %add.7.4.1 = add nsw i32 %374, %mul.7.4.1
  store i32 %add.7.4.1, i32* %arrayidx20.7.4.1, align 4
  br label %for.inc.7.4.1

for.inc.7.4.1:                                    ; preds = %for.inc.6.4.1
  %arrayidx11.8.4.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.4.1 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4.1, i32 0, i64 8
  %375 = load i32* %arrayidx12.8.4.1, align 4
  %arrayidx15.8.4.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4.1, i32 0, i64 4
  %376 = load i32* %arrayidx16.8.4.1, align 4
  %mul.8.4.1 = mul nsw i32 %375, %376
  %arrayidx19.8.4.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.4.1 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4.1, i32 0, i64 4
  %377 = load i32* %arrayidx20.8.4.1, align 4
  %add.8.4.1 = add nsw i32 %377, %mul.8.4.1
  store i32 %add.8.4.1, i32* %arrayidx20.8.4.1, align 4
  br label %for.inc.8.4.1

for.inc.8.4.1:                                    ; preds = %for.inc.7.4.1
  br label %for.inc21.4.1

for.inc21.4.1:                                    ; preds = %for.inc.8.4.1
  %arrayidx.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.5.1 = getelementptr inbounds [9 x i32]* %arrayidx.5.1, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.1, align 4
  br label %for.body8.5.1

for.body8.5.1:                                    ; preds = %for.inc21.4.1
  %arrayidx11.544.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.545.1 = getelementptr inbounds [9 x i32]* %arrayidx11.544.1, i32 0, i64 0
  %378 = load i32* %arrayidx12.545.1, align 4
  %arrayidx16.546.1 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %379 = load i32* %arrayidx16.546.1, align 4
  %mul.547.1 = mul nsw i32 %378, %379
  %arrayidx19.549.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.550.1 = getelementptr inbounds [9 x i32]* %arrayidx19.549.1, i32 0, i64 5
  %380 = load i32* %arrayidx20.550.1, align 4
  %add.551.1 = add nsw i32 %380, %mul.547.1
  store i32 %add.551.1, i32* %arrayidx20.550.1, align 4
  br label %for.inc.552.1

for.inc.552.1:                                    ; preds = %for.body8.5.1
  %arrayidx11.1.5.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.5.1 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5.1, i32 0, i64 1
  %381 = load i32* %arrayidx12.1.5.1, align 4
  %arrayidx15.1.5.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5.1, i32 0, i64 5
  %382 = load i32* %arrayidx16.1.5.1, align 4
  %mul.1.5.1 = mul nsw i32 %381, %382
  %arrayidx19.1.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.5.1 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5.1, i32 0, i64 5
  %383 = load i32* %arrayidx20.1.5.1, align 4
  %add.1.5.1 = add nsw i32 %383, %mul.1.5.1
  store i32 %add.1.5.1, i32* %arrayidx20.1.5.1, align 4
  br label %for.inc.1.5.1

for.inc.1.5.1:                                    ; preds = %for.inc.552.1
  %arrayidx11.2.5.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.5.1 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5.1, i32 0, i64 2
  %384 = load i32* %arrayidx12.2.5.1, align 4
  %arrayidx15.2.5.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5.1, i32 0, i64 5
  %385 = load i32* %arrayidx16.2.5.1, align 4
  %mul.2.5.1 = mul nsw i32 %384, %385
  %arrayidx19.2.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.5.1 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5.1, i32 0, i64 5
  %386 = load i32* %arrayidx20.2.5.1, align 4
  %add.2.5.1 = add nsw i32 %386, %mul.2.5.1
  store i32 %add.2.5.1, i32* %arrayidx20.2.5.1, align 4
  br label %for.inc.2.5.1

for.inc.2.5.1:                                    ; preds = %for.inc.1.5.1
  %arrayidx11.3.5.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.5.1 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5.1, i32 0, i64 3
  %387 = load i32* %arrayidx12.3.5.1, align 4
  %arrayidx15.3.5.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5.1, i32 0, i64 5
  %388 = load i32* %arrayidx16.3.5.1, align 4
  %mul.3.5.1 = mul nsw i32 %387, %388
  %arrayidx19.3.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.5.1 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5.1, i32 0, i64 5
  %389 = load i32* %arrayidx20.3.5.1, align 4
  %add.3.5.1 = add nsw i32 %389, %mul.3.5.1
  store i32 %add.3.5.1, i32* %arrayidx20.3.5.1, align 4
  br label %for.inc.3.5.1

for.inc.3.5.1:                                    ; preds = %for.inc.2.5.1
  %arrayidx11.4.5.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.5.1 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5.1, i32 0, i64 4
  %390 = load i32* %arrayidx12.4.5.1, align 4
  %arrayidx15.4.5.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5.1, i32 0, i64 5
  %391 = load i32* %arrayidx16.4.5.1, align 4
  %mul.4.5.1 = mul nsw i32 %390, %391
  %arrayidx19.4.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.5.1 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5.1, i32 0, i64 5
  %392 = load i32* %arrayidx20.4.5.1, align 4
  %add.4.5.1 = add nsw i32 %392, %mul.4.5.1
  store i32 %add.4.5.1, i32* %arrayidx20.4.5.1, align 4
  br label %for.inc.4.5.1

for.inc.4.5.1:                                    ; preds = %for.inc.3.5.1
  %arrayidx11.5.5.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.5.1 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5.1, i32 0, i64 5
  %393 = load i32* %arrayidx12.5.5.1, align 4
  %arrayidx15.5.5.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5.1, i32 0, i64 5
  %394 = load i32* %arrayidx16.5.5.1, align 4
  %mul.5.5.1 = mul nsw i32 %393, %394
  %arrayidx19.5.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.5.1 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5.1, i32 0, i64 5
  %395 = load i32* %arrayidx20.5.5.1, align 4
  %add.5.5.1 = add nsw i32 %395, %mul.5.5.1
  store i32 %add.5.5.1, i32* %arrayidx20.5.5.1, align 4
  br label %for.inc.5.5.1

for.inc.5.5.1:                                    ; preds = %for.inc.4.5.1
  %arrayidx11.6.5.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.5.1 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5.1, i32 0, i64 6
  %396 = load i32* %arrayidx12.6.5.1, align 4
  %arrayidx15.6.5.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5.1, i32 0, i64 5
  %397 = load i32* %arrayidx16.6.5.1, align 4
  %mul.6.5.1 = mul nsw i32 %396, %397
  %arrayidx19.6.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.5.1 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5.1, i32 0, i64 5
  %398 = load i32* %arrayidx20.6.5.1, align 4
  %add.6.5.1 = add nsw i32 %398, %mul.6.5.1
  store i32 %add.6.5.1, i32* %arrayidx20.6.5.1, align 4
  br label %for.inc.6.5.1

for.inc.6.5.1:                                    ; preds = %for.inc.5.5.1
  %arrayidx11.7.5.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.5.1 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5.1, i32 0, i64 7
  %399 = load i32* %arrayidx12.7.5.1, align 4
  %arrayidx15.7.5.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5.1, i32 0, i64 5
  %400 = load i32* %arrayidx16.7.5.1, align 4
  %mul.7.5.1 = mul nsw i32 %399, %400
  %arrayidx19.7.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.5.1 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5.1, i32 0, i64 5
  %401 = load i32* %arrayidx20.7.5.1, align 4
  %add.7.5.1 = add nsw i32 %401, %mul.7.5.1
  store i32 %add.7.5.1, i32* %arrayidx20.7.5.1, align 4
  br label %for.inc.7.5.1

for.inc.7.5.1:                                    ; preds = %for.inc.6.5.1
  %arrayidx11.8.5.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.5.1 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5.1, i32 0, i64 8
  %402 = load i32* %arrayidx12.8.5.1, align 4
  %arrayidx15.8.5.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5.1, i32 0, i64 5
  %403 = load i32* %arrayidx16.8.5.1, align 4
  %mul.8.5.1 = mul nsw i32 %402, %403
  %arrayidx19.8.5.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.5.1 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5.1, i32 0, i64 5
  %404 = load i32* %arrayidx20.8.5.1, align 4
  %add.8.5.1 = add nsw i32 %404, %mul.8.5.1
  store i32 %add.8.5.1, i32* %arrayidx20.8.5.1, align 4
  br label %for.inc.8.5.1

for.inc.8.5.1:                                    ; preds = %for.inc.7.5.1
  br label %for.inc21.5.1

for.inc21.5.1:                                    ; preds = %for.inc.8.5.1
  %arrayidx.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.6.1 = getelementptr inbounds [9 x i32]* %arrayidx.6.1, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.1, align 4
  br label %for.body8.6.1

for.body8.6.1:                                    ; preds = %for.inc21.5.1
  %arrayidx11.654.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.655.1 = getelementptr inbounds [9 x i32]* %arrayidx11.654.1, i32 0, i64 0
  %405 = load i32* %arrayidx12.655.1, align 4
  %arrayidx16.656.1 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %406 = load i32* %arrayidx16.656.1, align 4
  %mul.657.1 = mul nsw i32 %405, %406
  %arrayidx19.659.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.660.1 = getelementptr inbounds [9 x i32]* %arrayidx19.659.1, i32 0, i64 6
  %407 = load i32* %arrayidx20.660.1, align 4
  %add.661.1 = add nsw i32 %407, %mul.657.1
  store i32 %add.661.1, i32* %arrayidx20.660.1, align 4
  br label %for.inc.662.1

for.inc.662.1:                                    ; preds = %for.body8.6.1
  %arrayidx11.1.6.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.6.1 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6.1, i32 0, i64 1
  %408 = load i32* %arrayidx12.1.6.1, align 4
  %arrayidx15.1.6.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6.1, i32 0, i64 6
  %409 = load i32* %arrayidx16.1.6.1, align 4
  %mul.1.6.1 = mul nsw i32 %408, %409
  %arrayidx19.1.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.6.1 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6.1, i32 0, i64 6
  %410 = load i32* %arrayidx20.1.6.1, align 4
  %add.1.6.1 = add nsw i32 %410, %mul.1.6.1
  store i32 %add.1.6.1, i32* %arrayidx20.1.6.1, align 4
  br label %for.inc.1.6.1

for.inc.1.6.1:                                    ; preds = %for.inc.662.1
  %arrayidx11.2.6.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.6.1 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6.1, i32 0, i64 2
  %411 = load i32* %arrayidx12.2.6.1, align 4
  %arrayidx15.2.6.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6.1, i32 0, i64 6
  %412 = load i32* %arrayidx16.2.6.1, align 4
  %mul.2.6.1 = mul nsw i32 %411, %412
  %arrayidx19.2.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.6.1 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6.1, i32 0, i64 6
  %413 = load i32* %arrayidx20.2.6.1, align 4
  %add.2.6.1 = add nsw i32 %413, %mul.2.6.1
  store i32 %add.2.6.1, i32* %arrayidx20.2.6.1, align 4
  br label %for.inc.2.6.1

for.inc.2.6.1:                                    ; preds = %for.inc.1.6.1
  %arrayidx11.3.6.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.6.1 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6.1, i32 0, i64 3
  %414 = load i32* %arrayidx12.3.6.1, align 4
  %arrayidx15.3.6.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6.1, i32 0, i64 6
  %415 = load i32* %arrayidx16.3.6.1, align 4
  %mul.3.6.1 = mul nsw i32 %414, %415
  %arrayidx19.3.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.6.1 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6.1, i32 0, i64 6
  %416 = load i32* %arrayidx20.3.6.1, align 4
  %add.3.6.1 = add nsw i32 %416, %mul.3.6.1
  store i32 %add.3.6.1, i32* %arrayidx20.3.6.1, align 4
  br label %for.inc.3.6.1

for.inc.3.6.1:                                    ; preds = %for.inc.2.6.1
  %arrayidx11.4.6.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.6.1 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6.1, i32 0, i64 4
  %417 = load i32* %arrayidx12.4.6.1, align 4
  %arrayidx15.4.6.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6.1, i32 0, i64 6
  %418 = load i32* %arrayidx16.4.6.1, align 4
  %mul.4.6.1 = mul nsw i32 %417, %418
  %arrayidx19.4.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.6.1 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6.1, i32 0, i64 6
  %419 = load i32* %arrayidx20.4.6.1, align 4
  %add.4.6.1 = add nsw i32 %419, %mul.4.6.1
  store i32 %add.4.6.1, i32* %arrayidx20.4.6.1, align 4
  br label %for.inc.4.6.1

for.inc.4.6.1:                                    ; preds = %for.inc.3.6.1
  %arrayidx11.5.6.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.6.1 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6.1, i32 0, i64 5
  %420 = load i32* %arrayidx12.5.6.1, align 4
  %arrayidx15.5.6.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6.1, i32 0, i64 6
  %421 = load i32* %arrayidx16.5.6.1, align 4
  %mul.5.6.1 = mul nsw i32 %420, %421
  %arrayidx19.5.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.6.1 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6.1, i32 0, i64 6
  %422 = load i32* %arrayidx20.5.6.1, align 4
  %add.5.6.1 = add nsw i32 %422, %mul.5.6.1
  store i32 %add.5.6.1, i32* %arrayidx20.5.6.1, align 4
  br label %for.inc.5.6.1

for.inc.5.6.1:                                    ; preds = %for.inc.4.6.1
  %arrayidx11.6.6.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.6.1 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6.1, i32 0, i64 6
  %423 = load i32* %arrayidx12.6.6.1, align 4
  %arrayidx15.6.6.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6.1, i32 0, i64 6
  %424 = load i32* %arrayidx16.6.6.1, align 4
  %mul.6.6.1 = mul nsw i32 %423, %424
  %arrayidx19.6.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.6.1 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6.1, i32 0, i64 6
  %425 = load i32* %arrayidx20.6.6.1, align 4
  %add.6.6.1 = add nsw i32 %425, %mul.6.6.1
  store i32 %add.6.6.1, i32* %arrayidx20.6.6.1, align 4
  br label %for.inc.6.6.1

for.inc.6.6.1:                                    ; preds = %for.inc.5.6.1
  %arrayidx11.7.6.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.6.1 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6.1, i32 0, i64 7
  %426 = load i32* %arrayidx12.7.6.1, align 4
  %arrayidx15.7.6.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6.1, i32 0, i64 6
  %427 = load i32* %arrayidx16.7.6.1, align 4
  %mul.7.6.1 = mul nsw i32 %426, %427
  %arrayidx19.7.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.6.1 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6.1, i32 0, i64 6
  %428 = load i32* %arrayidx20.7.6.1, align 4
  %add.7.6.1 = add nsw i32 %428, %mul.7.6.1
  store i32 %add.7.6.1, i32* %arrayidx20.7.6.1, align 4
  br label %for.inc.7.6.1

for.inc.7.6.1:                                    ; preds = %for.inc.6.6.1
  %arrayidx11.8.6.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.6.1 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6.1, i32 0, i64 8
  %429 = load i32* %arrayidx12.8.6.1, align 4
  %arrayidx15.8.6.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6.1, i32 0, i64 6
  %430 = load i32* %arrayidx16.8.6.1, align 4
  %mul.8.6.1 = mul nsw i32 %429, %430
  %arrayidx19.8.6.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.6.1 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6.1, i32 0, i64 6
  %431 = load i32* %arrayidx20.8.6.1, align 4
  %add.8.6.1 = add nsw i32 %431, %mul.8.6.1
  store i32 %add.8.6.1, i32* %arrayidx20.8.6.1, align 4
  br label %for.inc.8.6.1

for.inc.8.6.1:                                    ; preds = %for.inc.7.6.1
  br label %for.inc21.6.1

for.inc21.6.1:                                    ; preds = %for.inc.8.6.1
  %arrayidx.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.7.1 = getelementptr inbounds [9 x i32]* %arrayidx.7.1, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.1, align 4
  br label %for.body8.7.1

for.body8.7.1:                                    ; preds = %for.inc21.6.1
  %arrayidx11.764.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.765.1 = getelementptr inbounds [9 x i32]* %arrayidx11.764.1, i32 0, i64 0
  %432 = load i32* %arrayidx12.765.1, align 4
  %arrayidx16.766.1 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %433 = load i32* %arrayidx16.766.1, align 4
  %mul.767.1 = mul nsw i32 %432, %433
  %arrayidx19.769.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.770.1 = getelementptr inbounds [9 x i32]* %arrayidx19.769.1, i32 0, i64 7
  %434 = load i32* %arrayidx20.770.1, align 4
  %add.771.1 = add nsw i32 %434, %mul.767.1
  store i32 %add.771.1, i32* %arrayidx20.770.1, align 4
  br label %for.inc.772.1

for.inc.772.1:                                    ; preds = %for.body8.7.1
  %arrayidx11.1.7.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.7.1 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7.1, i32 0, i64 1
  %435 = load i32* %arrayidx12.1.7.1, align 4
  %arrayidx15.1.7.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7.1, i32 0, i64 7
  %436 = load i32* %arrayidx16.1.7.1, align 4
  %mul.1.7.1 = mul nsw i32 %435, %436
  %arrayidx19.1.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.7.1 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7.1, i32 0, i64 7
  %437 = load i32* %arrayidx20.1.7.1, align 4
  %add.1.7.1 = add nsw i32 %437, %mul.1.7.1
  store i32 %add.1.7.1, i32* %arrayidx20.1.7.1, align 4
  br label %for.inc.1.7.1

for.inc.1.7.1:                                    ; preds = %for.inc.772.1
  %arrayidx11.2.7.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.7.1 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7.1, i32 0, i64 2
  %438 = load i32* %arrayidx12.2.7.1, align 4
  %arrayidx15.2.7.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7.1, i32 0, i64 7
  %439 = load i32* %arrayidx16.2.7.1, align 4
  %mul.2.7.1 = mul nsw i32 %438, %439
  %arrayidx19.2.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.7.1 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7.1, i32 0, i64 7
  %440 = load i32* %arrayidx20.2.7.1, align 4
  %add.2.7.1 = add nsw i32 %440, %mul.2.7.1
  store i32 %add.2.7.1, i32* %arrayidx20.2.7.1, align 4
  br label %for.inc.2.7.1

for.inc.2.7.1:                                    ; preds = %for.inc.1.7.1
  %arrayidx11.3.7.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.7.1 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7.1, i32 0, i64 3
  %441 = load i32* %arrayidx12.3.7.1, align 4
  %arrayidx15.3.7.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7.1, i32 0, i64 7
  %442 = load i32* %arrayidx16.3.7.1, align 4
  %mul.3.7.1 = mul nsw i32 %441, %442
  %arrayidx19.3.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.7.1 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7.1, i32 0, i64 7
  %443 = load i32* %arrayidx20.3.7.1, align 4
  %add.3.7.1 = add nsw i32 %443, %mul.3.7.1
  store i32 %add.3.7.1, i32* %arrayidx20.3.7.1, align 4
  br label %for.inc.3.7.1

for.inc.3.7.1:                                    ; preds = %for.inc.2.7.1
  %arrayidx11.4.7.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.7.1 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7.1, i32 0, i64 4
  %444 = load i32* %arrayidx12.4.7.1, align 4
  %arrayidx15.4.7.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7.1, i32 0, i64 7
  %445 = load i32* %arrayidx16.4.7.1, align 4
  %mul.4.7.1 = mul nsw i32 %444, %445
  %arrayidx19.4.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.7.1 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7.1, i32 0, i64 7
  %446 = load i32* %arrayidx20.4.7.1, align 4
  %add.4.7.1 = add nsw i32 %446, %mul.4.7.1
  store i32 %add.4.7.1, i32* %arrayidx20.4.7.1, align 4
  br label %for.inc.4.7.1

for.inc.4.7.1:                                    ; preds = %for.inc.3.7.1
  %arrayidx11.5.7.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.7.1 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7.1, i32 0, i64 5
  %447 = load i32* %arrayidx12.5.7.1, align 4
  %arrayidx15.5.7.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7.1, i32 0, i64 7
  %448 = load i32* %arrayidx16.5.7.1, align 4
  %mul.5.7.1 = mul nsw i32 %447, %448
  %arrayidx19.5.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.7.1 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7.1, i32 0, i64 7
  %449 = load i32* %arrayidx20.5.7.1, align 4
  %add.5.7.1 = add nsw i32 %449, %mul.5.7.1
  store i32 %add.5.7.1, i32* %arrayidx20.5.7.1, align 4
  br label %for.inc.5.7.1

for.inc.5.7.1:                                    ; preds = %for.inc.4.7.1
  %arrayidx11.6.7.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.7.1 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7.1, i32 0, i64 6
  %450 = load i32* %arrayidx12.6.7.1, align 4
  %arrayidx15.6.7.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7.1, i32 0, i64 7
  %451 = load i32* %arrayidx16.6.7.1, align 4
  %mul.6.7.1 = mul nsw i32 %450, %451
  %arrayidx19.6.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.7.1 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7.1, i32 0, i64 7
  %452 = load i32* %arrayidx20.6.7.1, align 4
  %add.6.7.1 = add nsw i32 %452, %mul.6.7.1
  store i32 %add.6.7.1, i32* %arrayidx20.6.7.1, align 4
  br label %for.inc.6.7.1

for.inc.6.7.1:                                    ; preds = %for.inc.5.7.1
  %arrayidx11.7.7.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.7.1 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7.1, i32 0, i64 7
  %453 = load i32* %arrayidx12.7.7.1, align 4
  %arrayidx15.7.7.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7.1, i32 0, i64 7
  %454 = load i32* %arrayidx16.7.7.1, align 4
  %mul.7.7.1 = mul nsw i32 %453, %454
  %arrayidx19.7.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.7.1 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7.1, i32 0, i64 7
  %455 = load i32* %arrayidx20.7.7.1, align 4
  %add.7.7.1 = add nsw i32 %455, %mul.7.7.1
  store i32 %add.7.7.1, i32* %arrayidx20.7.7.1, align 4
  br label %for.inc.7.7.1

for.inc.7.7.1:                                    ; preds = %for.inc.6.7.1
  %arrayidx11.8.7.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.7.1 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7.1, i32 0, i64 8
  %456 = load i32* %arrayidx12.8.7.1, align 4
  %arrayidx15.8.7.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7.1, i32 0, i64 7
  %457 = load i32* %arrayidx16.8.7.1, align 4
  %mul.8.7.1 = mul nsw i32 %456, %457
  %arrayidx19.8.7.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.7.1 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7.1, i32 0, i64 7
  %458 = load i32* %arrayidx20.8.7.1, align 4
  %add.8.7.1 = add nsw i32 %458, %mul.8.7.1
  store i32 %add.8.7.1, i32* %arrayidx20.8.7.1, align 4
  br label %for.inc.8.7.1

for.inc.8.7.1:                                    ; preds = %for.inc.7.7.1
  br label %for.inc21.7.1

for.inc21.7.1:                                    ; preds = %for.inc.8.7.1
  %arrayidx.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx5.8.1 = getelementptr inbounds [9 x i32]* %arrayidx.8.1, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.1, align 4
  br label %for.body8.8.1

for.body8.8.1:                                    ; preds = %for.inc21.7.1
  %arrayidx11.874.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.875.1 = getelementptr inbounds [9 x i32]* %arrayidx11.874.1, i32 0, i64 0
  %459 = load i32* %arrayidx12.875.1, align 4
  %arrayidx16.876.1 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %460 = load i32* %arrayidx16.876.1, align 4
  %mul.877.1 = mul nsw i32 %459, %460
  %arrayidx19.879.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.880.1 = getelementptr inbounds [9 x i32]* %arrayidx19.879.1, i32 0, i64 8
  %461 = load i32* %arrayidx20.880.1, align 4
  %add.881.1 = add nsw i32 %461, %mul.877.1
  store i32 %add.881.1, i32* %arrayidx20.880.1, align 4
  br label %for.inc.882.1

for.inc.882.1:                                    ; preds = %for.body8.8.1
  %arrayidx11.1.8.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.1.8.1 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8.1, i32 0, i64 1
  %462 = load i32* %arrayidx12.1.8.1, align 4
  %arrayidx15.1.8.1 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8.1, i32 0, i64 8
  %463 = load i32* %arrayidx16.1.8.1, align 4
  %mul.1.8.1 = mul nsw i32 %462, %463
  %arrayidx19.1.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.1.8.1 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8.1, i32 0, i64 8
  %464 = load i32* %arrayidx20.1.8.1, align 4
  %add.1.8.1 = add nsw i32 %464, %mul.1.8.1
  store i32 %add.1.8.1, i32* %arrayidx20.1.8.1, align 4
  br label %for.inc.1.8.1

for.inc.1.8.1:                                    ; preds = %for.inc.882.1
  %arrayidx11.2.8.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.2.8.1 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8.1, i32 0, i64 2
  %465 = load i32* %arrayidx12.2.8.1, align 4
  %arrayidx15.2.8.1 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8.1, i32 0, i64 8
  %466 = load i32* %arrayidx16.2.8.1, align 4
  %mul.2.8.1 = mul nsw i32 %465, %466
  %arrayidx19.2.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.2.8.1 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8.1, i32 0, i64 8
  %467 = load i32* %arrayidx20.2.8.1, align 4
  %add.2.8.1 = add nsw i32 %467, %mul.2.8.1
  store i32 %add.2.8.1, i32* %arrayidx20.2.8.1, align 4
  br label %for.inc.2.8.1

for.inc.2.8.1:                                    ; preds = %for.inc.1.8.1
  %arrayidx11.3.8.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.3.8.1 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8.1, i32 0, i64 3
  %468 = load i32* %arrayidx12.3.8.1, align 4
  %arrayidx15.3.8.1 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8.1, i32 0, i64 8
  %469 = load i32* %arrayidx16.3.8.1, align 4
  %mul.3.8.1 = mul nsw i32 %468, %469
  %arrayidx19.3.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.3.8.1 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8.1, i32 0, i64 8
  %470 = load i32* %arrayidx20.3.8.1, align 4
  %add.3.8.1 = add nsw i32 %470, %mul.3.8.1
  store i32 %add.3.8.1, i32* %arrayidx20.3.8.1, align 4
  br label %for.inc.3.8.1

for.inc.3.8.1:                                    ; preds = %for.inc.2.8.1
  %arrayidx11.4.8.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.4.8.1 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8.1, i32 0, i64 4
  %471 = load i32* %arrayidx12.4.8.1, align 4
  %arrayidx15.4.8.1 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8.1, i32 0, i64 8
  %472 = load i32* %arrayidx16.4.8.1, align 4
  %mul.4.8.1 = mul nsw i32 %471, %472
  %arrayidx19.4.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.4.8.1 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8.1, i32 0, i64 8
  %473 = load i32* %arrayidx20.4.8.1, align 4
  %add.4.8.1 = add nsw i32 %473, %mul.4.8.1
  store i32 %add.4.8.1, i32* %arrayidx20.4.8.1, align 4
  br label %for.inc.4.8.1

for.inc.4.8.1:                                    ; preds = %for.inc.3.8.1
  %arrayidx11.5.8.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.5.8.1 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8.1, i32 0, i64 5
  %474 = load i32* %arrayidx12.5.8.1, align 4
  %arrayidx15.5.8.1 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8.1, i32 0, i64 8
  %475 = load i32* %arrayidx16.5.8.1, align 4
  %mul.5.8.1 = mul nsw i32 %474, %475
  %arrayidx19.5.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.5.8.1 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8.1, i32 0, i64 8
  %476 = load i32* %arrayidx20.5.8.1, align 4
  %add.5.8.1 = add nsw i32 %476, %mul.5.8.1
  store i32 %add.5.8.1, i32* %arrayidx20.5.8.1, align 4
  br label %for.inc.5.8.1

for.inc.5.8.1:                                    ; preds = %for.inc.4.8.1
  %arrayidx11.6.8.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.6.8.1 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8.1, i32 0, i64 6
  %477 = load i32* %arrayidx12.6.8.1, align 4
  %arrayidx15.6.8.1 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8.1, i32 0, i64 8
  %478 = load i32* %arrayidx16.6.8.1, align 4
  %mul.6.8.1 = mul nsw i32 %477, %478
  %arrayidx19.6.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.6.8.1 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8.1, i32 0, i64 8
  %479 = load i32* %arrayidx20.6.8.1, align 4
  %add.6.8.1 = add nsw i32 %479, %mul.6.8.1
  store i32 %add.6.8.1, i32* %arrayidx20.6.8.1, align 4
  br label %for.inc.6.8.1

for.inc.6.8.1:                                    ; preds = %for.inc.5.8.1
  %arrayidx11.7.8.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.7.8.1 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8.1, i32 0, i64 7
  %480 = load i32* %arrayidx12.7.8.1, align 4
  %arrayidx15.7.8.1 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8.1, i32 0, i64 8
  %481 = load i32* %arrayidx16.7.8.1, align 4
  %mul.7.8.1 = mul nsw i32 %480, %481
  %arrayidx19.7.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.7.8.1 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8.1, i32 0, i64 8
  %482 = load i32* %arrayidx20.7.8.1, align 4
  %add.7.8.1 = add nsw i32 %482, %mul.7.8.1
  store i32 %add.7.8.1, i32* %arrayidx20.7.8.1, align 4
  br label %for.inc.7.8.1

for.inc.7.8.1:                                    ; preds = %for.inc.6.8.1
  %arrayidx11.8.8.1 = getelementptr inbounds [9 x i32]* %a, i64 1
  %arrayidx12.8.8.1 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8.1, i32 0, i64 8
  %483 = load i32* %arrayidx12.8.8.1, align 4
  %arrayidx15.8.8.1 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8.1 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8.1, i32 0, i64 8
  %484 = load i32* %arrayidx16.8.8.1, align 4
  %mul.8.8.1 = mul nsw i32 %483, %484
  %arrayidx19.8.8.1 = getelementptr inbounds [9 x i32]* %c, i64 1
  %arrayidx20.8.8.1 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8.1, i32 0, i64 8
  %485 = load i32* %arrayidx20.8.8.1, align 4
  %add.8.8.1 = add nsw i32 %485, %mul.8.8.1
  store i32 %add.8.8.1, i32* %arrayidx20.8.8.1, align 4
  br label %for.inc.8.8.1

for.inc.8.8.1:                                    ; preds = %for.inc.7.8.1
  br label %for.inc21.8.1

for.inc21.8.1:                                    ; preds = %for.inc.8.8.1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.8.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc24.1
  %arrayidx.2168 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.2169 = getelementptr inbounds [9 x i32]* %arrayidx.2168, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.2169, align 4
  br label %for.body8.2177

for.body8.2177:                                   ; preds = %for.body3.2
  %arrayidx11.2170 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2171 = getelementptr inbounds [9 x i32]* %arrayidx11.2170, i32 0, i64 0
  %486 = load i32* %arrayidx12.2171, align 4
  %arrayidx16.2172 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %487 = load i32* %arrayidx16.2172, align 4
  %mul.2173 = mul nsw i32 %486, %487
  %arrayidx19.2174 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2175 = getelementptr inbounds [9 x i32]* %arrayidx19.2174, i32 0, i64 0
  %488 = load i32* %arrayidx20.2175, align 4
  %add.2176 = add nsw i32 %488, %mul.2173
  store i32 %add.2176, i32* %arrayidx20.2175, align 4
  br label %for.inc.2186

for.inc.2186:                                     ; preds = %for.body8.2177
  %arrayidx11.1.2178 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.2179 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2178, i32 0, i64 1
  %489 = load i32* %arrayidx12.1.2179, align 4
  %arrayidx15.1.2180 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2181 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2180, i32 0, i64 0
  %490 = load i32* %arrayidx16.1.2181, align 4
  %mul.1.2182 = mul nsw i32 %489, %490
  %arrayidx19.1.2183 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.2184 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2183, i32 0, i64 0
  %491 = load i32* %arrayidx20.1.2184, align 4
  %add.1.2185 = add nsw i32 %491, %mul.1.2182
  store i32 %add.1.2185, i32* %arrayidx20.1.2184, align 4
  br label %for.inc.1.2195

for.inc.1.2195:                                   ; preds = %for.inc.2186
  %arrayidx11.2.2187 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.2188 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2187, i32 0, i64 2
  %492 = load i32* %arrayidx12.2.2188, align 4
  %arrayidx15.2.2189 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2190 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2189, i32 0, i64 0
  %493 = load i32* %arrayidx16.2.2190, align 4
  %mul.2.2191 = mul nsw i32 %492, %493
  %arrayidx19.2.2192 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.2193 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2192, i32 0, i64 0
  %494 = load i32* %arrayidx20.2.2193, align 4
  %add.2.2194 = add nsw i32 %494, %mul.2.2191
  store i32 %add.2.2194, i32* %arrayidx20.2.2193, align 4
  br label %for.inc.2.2204

for.inc.2.2204:                                   ; preds = %for.inc.1.2195
  %arrayidx11.3.2196 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.2197 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2196, i32 0, i64 3
  %495 = load i32* %arrayidx12.3.2197, align 4
  %arrayidx15.3.2198 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2199 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2198, i32 0, i64 0
  %496 = load i32* %arrayidx16.3.2199, align 4
  %mul.3.2200 = mul nsw i32 %495, %496
  %arrayidx19.3.2201 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.2202 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2201, i32 0, i64 0
  %497 = load i32* %arrayidx20.3.2202, align 4
  %add.3.2203 = add nsw i32 %497, %mul.3.2200
  store i32 %add.3.2203, i32* %arrayidx20.3.2202, align 4
  br label %for.inc.3.2213

for.inc.3.2213:                                   ; preds = %for.inc.2.2204
  %arrayidx11.4.2205 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.2206 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2205, i32 0, i64 4
  %498 = load i32* %arrayidx12.4.2206, align 4
  %arrayidx15.4.2207 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2208 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2207, i32 0, i64 0
  %499 = load i32* %arrayidx16.4.2208, align 4
  %mul.4.2209 = mul nsw i32 %498, %499
  %arrayidx19.4.2210 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.2211 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2210, i32 0, i64 0
  %500 = load i32* %arrayidx20.4.2211, align 4
  %add.4.2212 = add nsw i32 %500, %mul.4.2209
  store i32 %add.4.2212, i32* %arrayidx20.4.2211, align 4
  br label %for.inc.4.2222

for.inc.4.2222:                                   ; preds = %for.inc.3.2213
  %arrayidx11.5.2214 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.2215 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2214, i32 0, i64 5
  %501 = load i32* %arrayidx12.5.2215, align 4
  %arrayidx15.5.2216 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2217 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2216, i32 0, i64 0
  %502 = load i32* %arrayidx16.5.2217, align 4
  %mul.5.2218 = mul nsw i32 %501, %502
  %arrayidx19.5.2219 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.2220 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2219, i32 0, i64 0
  %503 = load i32* %arrayidx20.5.2220, align 4
  %add.5.2221 = add nsw i32 %503, %mul.5.2218
  store i32 %add.5.2221, i32* %arrayidx20.5.2220, align 4
  br label %for.inc.5.2231

for.inc.5.2231:                                   ; preds = %for.inc.4.2222
  %arrayidx11.6.2223 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.2224 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2223, i32 0, i64 6
  %504 = load i32* %arrayidx12.6.2224, align 4
  %arrayidx15.6.2225 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2226 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2225, i32 0, i64 0
  %505 = load i32* %arrayidx16.6.2226, align 4
  %mul.6.2227 = mul nsw i32 %504, %505
  %arrayidx19.6.2228 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.2229 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2228, i32 0, i64 0
  %506 = load i32* %arrayidx20.6.2229, align 4
  %add.6.2230 = add nsw i32 %506, %mul.6.2227
  store i32 %add.6.2230, i32* %arrayidx20.6.2229, align 4
  br label %for.inc.6.2240

for.inc.6.2240:                                   ; preds = %for.inc.5.2231
  %arrayidx11.7.2232 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.2233 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2232, i32 0, i64 7
  %507 = load i32* %arrayidx12.7.2233, align 4
  %arrayidx15.7.2234 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2235 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2234, i32 0, i64 0
  %508 = load i32* %arrayidx16.7.2235, align 4
  %mul.7.2236 = mul nsw i32 %507, %508
  %arrayidx19.7.2237 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.2238 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2237, i32 0, i64 0
  %509 = load i32* %arrayidx20.7.2238, align 4
  %add.7.2239 = add nsw i32 %509, %mul.7.2236
  store i32 %add.7.2239, i32* %arrayidx20.7.2238, align 4
  br label %for.inc.7.2249

for.inc.7.2249:                                   ; preds = %for.inc.6.2240
  %arrayidx11.8.2241 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.2242 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2241, i32 0, i64 8
  %510 = load i32* %arrayidx12.8.2242, align 4
  %arrayidx15.8.2243 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2244 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2243, i32 0, i64 0
  %511 = load i32* %arrayidx16.8.2244, align 4
  %mul.8.2245 = mul nsw i32 %510, %511
  %arrayidx19.8.2246 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.2247 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2246, i32 0, i64 0
  %512 = load i32* %arrayidx20.8.2247, align 4
  %add.8.2248 = add nsw i32 %512, %mul.8.2245
  store i32 %add.8.2248, i32* %arrayidx20.8.2247, align 4
  br label %for.inc.8.2250

for.inc.8.2250:                                   ; preds = %for.inc.7.2249
  br label %for.inc21.2251

for.inc21.2251:                                   ; preds = %for.inc.8.2250
  %arrayidx.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [9 x i32]* %arrayidx.1.2, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.2, align 4
  br label %for.body8.1.2

for.body8.1.2:                                    ; preds = %for.inc21.2251
  %arrayidx11.14.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.15.2 = getelementptr inbounds [9 x i32]* %arrayidx11.14.2, i32 0, i64 0
  %513 = load i32* %arrayidx12.15.2, align 4
  %arrayidx16.16.2 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %514 = load i32* %arrayidx16.16.2, align 4
  %mul.17.2 = mul nsw i32 %513, %514
  %arrayidx19.19.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.110.2 = getelementptr inbounds [9 x i32]* %arrayidx19.19.2, i32 0, i64 1
  %515 = load i32* %arrayidx20.110.2, align 4
  %add.111.2 = add nsw i32 %515, %mul.17.2
  store i32 %add.111.2, i32* %arrayidx20.110.2, align 4
  br label %for.inc.112.2

for.inc.112.2:                                    ; preds = %for.body8.1.2
  %arrayidx11.1.1.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.1.2 = getelementptr inbounds [9 x i32]* %arrayidx11.1.1.2, i32 0, i64 1
  %516 = load i32* %arrayidx12.1.1.2, align 4
  %arrayidx15.1.1.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1.2, i32 0, i64 1
  %517 = load i32* %arrayidx16.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %516, %517
  %arrayidx19.1.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.1.2 = getelementptr inbounds [9 x i32]* %arrayidx19.1.1.2, i32 0, i64 1
  %518 = load i32* %arrayidx20.1.1.2, align 4
  %add.1.1.2 = add nsw i32 %518, %mul.1.1.2
  store i32 %add.1.1.2, i32* %arrayidx20.1.1.2, align 4
  br label %for.inc.1.1.2

for.inc.1.1.2:                                    ; preds = %for.inc.112.2
  %arrayidx11.2.1.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.1.2 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1.2, i32 0, i64 2
  %519 = load i32* %arrayidx12.2.1.2, align 4
  %arrayidx15.2.1.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1.2, i32 0, i64 1
  %520 = load i32* %arrayidx16.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %519, %520
  %arrayidx19.2.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.1.2 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1.2, i32 0, i64 1
  %521 = load i32* %arrayidx20.2.1.2, align 4
  %add.2.1.2 = add nsw i32 %521, %mul.2.1.2
  store i32 %add.2.1.2, i32* %arrayidx20.2.1.2, align 4
  br label %for.inc.2.1.2

for.inc.2.1.2:                                    ; preds = %for.inc.1.1.2
  %arrayidx11.3.1.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.1.2 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1.2, i32 0, i64 3
  %522 = load i32* %arrayidx12.3.1.2, align 4
  %arrayidx15.3.1.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1.2, i32 0, i64 1
  %523 = load i32* %arrayidx16.3.1.2, align 4
  %mul.3.1.2 = mul nsw i32 %522, %523
  %arrayidx19.3.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.1.2 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1.2, i32 0, i64 1
  %524 = load i32* %arrayidx20.3.1.2, align 4
  %add.3.1.2 = add nsw i32 %524, %mul.3.1.2
  store i32 %add.3.1.2, i32* %arrayidx20.3.1.2, align 4
  br label %for.inc.3.1.2

for.inc.3.1.2:                                    ; preds = %for.inc.2.1.2
  %arrayidx11.4.1.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.1.2 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1.2, i32 0, i64 4
  %525 = load i32* %arrayidx12.4.1.2, align 4
  %arrayidx15.4.1.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1.2, i32 0, i64 1
  %526 = load i32* %arrayidx16.4.1.2, align 4
  %mul.4.1.2 = mul nsw i32 %525, %526
  %arrayidx19.4.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.1.2 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1.2, i32 0, i64 1
  %527 = load i32* %arrayidx20.4.1.2, align 4
  %add.4.1.2 = add nsw i32 %527, %mul.4.1.2
  store i32 %add.4.1.2, i32* %arrayidx20.4.1.2, align 4
  br label %for.inc.4.1.2

for.inc.4.1.2:                                    ; preds = %for.inc.3.1.2
  %arrayidx11.5.1.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.1.2 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1.2, i32 0, i64 5
  %528 = load i32* %arrayidx12.5.1.2, align 4
  %arrayidx15.5.1.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1.2, i32 0, i64 1
  %529 = load i32* %arrayidx16.5.1.2, align 4
  %mul.5.1.2 = mul nsw i32 %528, %529
  %arrayidx19.5.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.1.2 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1.2, i32 0, i64 1
  %530 = load i32* %arrayidx20.5.1.2, align 4
  %add.5.1.2 = add nsw i32 %530, %mul.5.1.2
  store i32 %add.5.1.2, i32* %arrayidx20.5.1.2, align 4
  br label %for.inc.5.1.2

for.inc.5.1.2:                                    ; preds = %for.inc.4.1.2
  %arrayidx11.6.1.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.1.2 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1.2, i32 0, i64 6
  %531 = load i32* %arrayidx12.6.1.2, align 4
  %arrayidx15.6.1.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1.2, i32 0, i64 1
  %532 = load i32* %arrayidx16.6.1.2, align 4
  %mul.6.1.2 = mul nsw i32 %531, %532
  %arrayidx19.6.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.1.2 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1.2, i32 0, i64 1
  %533 = load i32* %arrayidx20.6.1.2, align 4
  %add.6.1.2 = add nsw i32 %533, %mul.6.1.2
  store i32 %add.6.1.2, i32* %arrayidx20.6.1.2, align 4
  br label %for.inc.6.1.2

for.inc.6.1.2:                                    ; preds = %for.inc.5.1.2
  %arrayidx11.7.1.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.1.2 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1.2, i32 0, i64 7
  %534 = load i32* %arrayidx12.7.1.2, align 4
  %arrayidx15.7.1.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1.2, i32 0, i64 1
  %535 = load i32* %arrayidx16.7.1.2, align 4
  %mul.7.1.2 = mul nsw i32 %534, %535
  %arrayidx19.7.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.1.2 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1.2, i32 0, i64 1
  %536 = load i32* %arrayidx20.7.1.2, align 4
  %add.7.1.2 = add nsw i32 %536, %mul.7.1.2
  store i32 %add.7.1.2, i32* %arrayidx20.7.1.2, align 4
  br label %for.inc.7.1.2

for.inc.7.1.2:                                    ; preds = %for.inc.6.1.2
  %arrayidx11.8.1.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.1.2 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1.2, i32 0, i64 8
  %537 = load i32* %arrayidx12.8.1.2, align 4
  %arrayidx15.8.1.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1.2, i32 0, i64 1
  %538 = load i32* %arrayidx16.8.1.2, align 4
  %mul.8.1.2 = mul nsw i32 %537, %538
  %arrayidx19.8.1.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.1.2 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1.2, i32 0, i64 1
  %539 = load i32* %arrayidx20.8.1.2, align 4
  %add.8.1.2 = add nsw i32 %539, %mul.8.1.2
  store i32 %add.8.1.2, i32* %arrayidx20.8.1.2, align 4
  br label %for.inc.8.1.2

for.inc.8.1.2:                                    ; preds = %for.inc.7.1.2
  br label %for.inc21.1.2

for.inc21.1.2:                                    ; preds = %for.inc.8.1.2
  %arrayidx.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [9 x i32]* %arrayidx.2.2, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.2, align 4
  br label %for.body8.2.2

for.body8.2.2:                                    ; preds = %for.inc21.1.2
  %arrayidx11.214.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.215.2 = getelementptr inbounds [9 x i32]* %arrayidx11.214.2, i32 0, i64 0
  %540 = load i32* %arrayidx12.215.2, align 4
  %arrayidx16.216.2 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %541 = load i32* %arrayidx16.216.2, align 4
  %mul.217.2 = mul nsw i32 %540, %541
  %arrayidx19.219.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.220.2 = getelementptr inbounds [9 x i32]* %arrayidx19.219.2, i32 0, i64 2
  %542 = load i32* %arrayidx20.220.2, align 4
  %add.221.2 = add nsw i32 %542, %mul.217.2
  store i32 %add.221.2, i32* %arrayidx20.220.2, align 4
  br label %for.inc.222.2

for.inc.222.2:                                    ; preds = %for.body8.2.2
  %arrayidx11.1.2.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.2.2 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2.2, i32 0, i64 1
  %543 = load i32* %arrayidx12.1.2.2, align 4
  %arrayidx15.1.2.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2.2, i32 0, i64 2
  %544 = load i32* %arrayidx16.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %543, %544
  %arrayidx19.1.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.2.2 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2.2, i32 0, i64 2
  %545 = load i32* %arrayidx20.1.2.2, align 4
  %add.1.2.2 = add nsw i32 %545, %mul.1.2.2
  store i32 %add.1.2.2, i32* %arrayidx20.1.2.2, align 4
  br label %for.inc.1.2.2

for.inc.1.2.2:                                    ; preds = %for.inc.222.2
  %arrayidx11.2.2.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.2.2 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2.2, i32 0, i64 2
  %546 = load i32* %arrayidx12.2.2.2, align 4
  %arrayidx15.2.2.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2.2, i32 0, i64 2
  %547 = load i32* %arrayidx16.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %546, %547
  %arrayidx19.2.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.2.2 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2.2, i32 0, i64 2
  %548 = load i32* %arrayidx20.2.2.2, align 4
  %add.2.2.2 = add nsw i32 %548, %mul.2.2.2
  store i32 %add.2.2.2, i32* %arrayidx20.2.2.2, align 4
  br label %for.inc.2.2.2

for.inc.2.2.2:                                    ; preds = %for.inc.1.2.2
  %arrayidx11.3.2.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.2.2 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2.2, i32 0, i64 3
  %549 = load i32* %arrayidx12.3.2.2, align 4
  %arrayidx15.3.2.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2.2, i32 0, i64 2
  %550 = load i32* %arrayidx16.3.2.2, align 4
  %mul.3.2.2 = mul nsw i32 %549, %550
  %arrayidx19.3.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.2.2 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2.2, i32 0, i64 2
  %551 = load i32* %arrayidx20.3.2.2, align 4
  %add.3.2.2 = add nsw i32 %551, %mul.3.2.2
  store i32 %add.3.2.2, i32* %arrayidx20.3.2.2, align 4
  br label %for.inc.3.2.2

for.inc.3.2.2:                                    ; preds = %for.inc.2.2.2
  %arrayidx11.4.2.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.2.2 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2.2, i32 0, i64 4
  %552 = load i32* %arrayidx12.4.2.2, align 4
  %arrayidx15.4.2.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2.2, i32 0, i64 2
  %553 = load i32* %arrayidx16.4.2.2, align 4
  %mul.4.2.2 = mul nsw i32 %552, %553
  %arrayidx19.4.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.2.2 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2.2, i32 0, i64 2
  %554 = load i32* %arrayidx20.4.2.2, align 4
  %add.4.2.2 = add nsw i32 %554, %mul.4.2.2
  store i32 %add.4.2.2, i32* %arrayidx20.4.2.2, align 4
  br label %for.inc.4.2.2

for.inc.4.2.2:                                    ; preds = %for.inc.3.2.2
  %arrayidx11.5.2.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.2.2 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2.2, i32 0, i64 5
  %555 = load i32* %arrayidx12.5.2.2, align 4
  %arrayidx15.5.2.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2.2, i32 0, i64 2
  %556 = load i32* %arrayidx16.5.2.2, align 4
  %mul.5.2.2 = mul nsw i32 %555, %556
  %arrayidx19.5.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.2.2 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2.2, i32 0, i64 2
  %557 = load i32* %arrayidx20.5.2.2, align 4
  %add.5.2.2 = add nsw i32 %557, %mul.5.2.2
  store i32 %add.5.2.2, i32* %arrayidx20.5.2.2, align 4
  br label %for.inc.5.2.2

for.inc.5.2.2:                                    ; preds = %for.inc.4.2.2
  %arrayidx11.6.2.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.2.2 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2.2, i32 0, i64 6
  %558 = load i32* %arrayidx12.6.2.2, align 4
  %arrayidx15.6.2.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2.2, i32 0, i64 2
  %559 = load i32* %arrayidx16.6.2.2, align 4
  %mul.6.2.2 = mul nsw i32 %558, %559
  %arrayidx19.6.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.2.2 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2.2, i32 0, i64 2
  %560 = load i32* %arrayidx20.6.2.2, align 4
  %add.6.2.2 = add nsw i32 %560, %mul.6.2.2
  store i32 %add.6.2.2, i32* %arrayidx20.6.2.2, align 4
  br label %for.inc.6.2.2

for.inc.6.2.2:                                    ; preds = %for.inc.5.2.2
  %arrayidx11.7.2.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.2.2 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2.2, i32 0, i64 7
  %561 = load i32* %arrayidx12.7.2.2, align 4
  %arrayidx15.7.2.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2.2, i32 0, i64 2
  %562 = load i32* %arrayidx16.7.2.2, align 4
  %mul.7.2.2 = mul nsw i32 %561, %562
  %arrayidx19.7.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.2.2 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2.2, i32 0, i64 2
  %563 = load i32* %arrayidx20.7.2.2, align 4
  %add.7.2.2 = add nsw i32 %563, %mul.7.2.2
  store i32 %add.7.2.2, i32* %arrayidx20.7.2.2, align 4
  br label %for.inc.7.2.2

for.inc.7.2.2:                                    ; preds = %for.inc.6.2.2
  %arrayidx11.8.2.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.2.2 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2.2, i32 0, i64 8
  %564 = load i32* %arrayidx12.8.2.2, align 4
  %arrayidx15.8.2.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2.2, i32 0, i64 2
  %565 = load i32* %arrayidx16.8.2.2, align 4
  %mul.8.2.2 = mul nsw i32 %564, %565
  %arrayidx19.8.2.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.2.2 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2.2, i32 0, i64 2
  %566 = load i32* %arrayidx20.8.2.2, align 4
  %add.8.2.2 = add nsw i32 %566, %mul.8.2.2
  store i32 %add.8.2.2, i32* %arrayidx20.8.2.2, align 4
  br label %for.inc.8.2.2

for.inc.8.2.2:                                    ; preds = %for.inc.7.2.2
  br label %for.inc21.2.2

for.inc21.2.2:                                    ; preds = %for.inc.8.2.2
  %arrayidx.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.3.2 = getelementptr inbounds [9 x i32]* %arrayidx.3.2, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.2, align 4
  br label %for.body8.3.2

for.body8.3.2:                                    ; preds = %for.inc21.2.2
  %arrayidx11.324.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.325.2 = getelementptr inbounds [9 x i32]* %arrayidx11.324.2, i32 0, i64 0
  %567 = load i32* %arrayidx12.325.2, align 4
  %arrayidx16.326.2 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %568 = load i32* %arrayidx16.326.2, align 4
  %mul.327.2 = mul nsw i32 %567, %568
  %arrayidx19.329.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.330.2 = getelementptr inbounds [9 x i32]* %arrayidx19.329.2, i32 0, i64 3
  %569 = load i32* %arrayidx20.330.2, align 4
  %add.331.2 = add nsw i32 %569, %mul.327.2
  store i32 %add.331.2, i32* %arrayidx20.330.2, align 4
  br label %for.inc.332.2

for.inc.332.2:                                    ; preds = %for.body8.3.2
  %arrayidx11.1.3.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.3.2 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3.2, i32 0, i64 1
  %570 = load i32* %arrayidx12.1.3.2, align 4
  %arrayidx15.1.3.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3.2, i32 0, i64 3
  %571 = load i32* %arrayidx16.1.3.2, align 4
  %mul.1.3.2 = mul nsw i32 %570, %571
  %arrayidx19.1.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.3.2 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3.2, i32 0, i64 3
  %572 = load i32* %arrayidx20.1.3.2, align 4
  %add.1.3.2 = add nsw i32 %572, %mul.1.3.2
  store i32 %add.1.3.2, i32* %arrayidx20.1.3.2, align 4
  br label %for.inc.1.3.2

for.inc.1.3.2:                                    ; preds = %for.inc.332.2
  %arrayidx11.2.3.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.3.2 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3.2, i32 0, i64 2
  %573 = load i32* %arrayidx12.2.3.2, align 4
  %arrayidx15.2.3.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3.2, i32 0, i64 3
  %574 = load i32* %arrayidx16.2.3.2, align 4
  %mul.2.3.2 = mul nsw i32 %573, %574
  %arrayidx19.2.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.3.2 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3.2, i32 0, i64 3
  %575 = load i32* %arrayidx20.2.3.2, align 4
  %add.2.3.2 = add nsw i32 %575, %mul.2.3.2
  store i32 %add.2.3.2, i32* %arrayidx20.2.3.2, align 4
  br label %for.inc.2.3.2

for.inc.2.3.2:                                    ; preds = %for.inc.1.3.2
  %arrayidx11.3.3.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.3.2 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3.2, i32 0, i64 3
  %576 = load i32* %arrayidx12.3.3.2, align 4
  %arrayidx15.3.3.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3.2, i32 0, i64 3
  %577 = load i32* %arrayidx16.3.3.2, align 4
  %mul.3.3.2 = mul nsw i32 %576, %577
  %arrayidx19.3.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.3.2 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3.2, i32 0, i64 3
  %578 = load i32* %arrayidx20.3.3.2, align 4
  %add.3.3.2 = add nsw i32 %578, %mul.3.3.2
  store i32 %add.3.3.2, i32* %arrayidx20.3.3.2, align 4
  br label %for.inc.3.3.2

for.inc.3.3.2:                                    ; preds = %for.inc.2.3.2
  %arrayidx11.4.3.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.3.2 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3.2, i32 0, i64 4
  %579 = load i32* %arrayidx12.4.3.2, align 4
  %arrayidx15.4.3.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3.2, i32 0, i64 3
  %580 = load i32* %arrayidx16.4.3.2, align 4
  %mul.4.3.2 = mul nsw i32 %579, %580
  %arrayidx19.4.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.3.2 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3.2, i32 0, i64 3
  %581 = load i32* %arrayidx20.4.3.2, align 4
  %add.4.3.2 = add nsw i32 %581, %mul.4.3.2
  store i32 %add.4.3.2, i32* %arrayidx20.4.3.2, align 4
  br label %for.inc.4.3.2

for.inc.4.3.2:                                    ; preds = %for.inc.3.3.2
  %arrayidx11.5.3.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.3.2 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3.2, i32 0, i64 5
  %582 = load i32* %arrayidx12.5.3.2, align 4
  %arrayidx15.5.3.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3.2, i32 0, i64 3
  %583 = load i32* %arrayidx16.5.3.2, align 4
  %mul.5.3.2 = mul nsw i32 %582, %583
  %arrayidx19.5.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.3.2 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3.2, i32 0, i64 3
  %584 = load i32* %arrayidx20.5.3.2, align 4
  %add.5.3.2 = add nsw i32 %584, %mul.5.3.2
  store i32 %add.5.3.2, i32* %arrayidx20.5.3.2, align 4
  br label %for.inc.5.3.2

for.inc.5.3.2:                                    ; preds = %for.inc.4.3.2
  %arrayidx11.6.3.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.3.2 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3.2, i32 0, i64 6
  %585 = load i32* %arrayidx12.6.3.2, align 4
  %arrayidx15.6.3.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3.2, i32 0, i64 3
  %586 = load i32* %arrayidx16.6.3.2, align 4
  %mul.6.3.2 = mul nsw i32 %585, %586
  %arrayidx19.6.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.3.2 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3.2, i32 0, i64 3
  %587 = load i32* %arrayidx20.6.3.2, align 4
  %add.6.3.2 = add nsw i32 %587, %mul.6.3.2
  store i32 %add.6.3.2, i32* %arrayidx20.6.3.2, align 4
  br label %for.inc.6.3.2

for.inc.6.3.2:                                    ; preds = %for.inc.5.3.2
  %arrayidx11.7.3.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.3.2 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3.2, i32 0, i64 7
  %588 = load i32* %arrayidx12.7.3.2, align 4
  %arrayidx15.7.3.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3.2, i32 0, i64 3
  %589 = load i32* %arrayidx16.7.3.2, align 4
  %mul.7.3.2 = mul nsw i32 %588, %589
  %arrayidx19.7.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.3.2 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3.2, i32 0, i64 3
  %590 = load i32* %arrayidx20.7.3.2, align 4
  %add.7.3.2 = add nsw i32 %590, %mul.7.3.2
  store i32 %add.7.3.2, i32* %arrayidx20.7.3.2, align 4
  br label %for.inc.7.3.2

for.inc.7.3.2:                                    ; preds = %for.inc.6.3.2
  %arrayidx11.8.3.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.3.2 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3.2, i32 0, i64 8
  %591 = load i32* %arrayidx12.8.3.2, align 4
  %arrayidx15.8.3.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3.2, i32 0, i64 3
  %592 = load i32* %arrayidx16.8.3.2, align 4
  %mul.8.3.2 = mul nsw i32 %591, %592
  %arrayidx19.8.3.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.3.2 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3.2, i32 0, i64 3
  %593 = load i32* %arrayidx20.8.3.2, align 4
  %add.8.3.2 = add nsw i32 %593, %mul.8.3.2
  store i32 %add.8.3.2, i32* %arrayidx20.8.3.2, align 4
  br label %for.inc.8.3.2

for.inc.8.3.2:                                    ; preds = %for.inc.7.3.2
  br label %for.inc21.3.2

for.inc21.3.2:                                    ; preds = %for.inc.8.3.2
  %arrayidx.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.4.2 = getelementptr inbounds [9 x i32]* %arrayidx.4.2, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.2, align 4
  br label %for.body8.4.2

for.body8.4.2:                                    ; preds = %for.inc21.3.2
  %arrayidx11.434.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.435.2 = getelementptr inbounds [9 x i32]* %arrayidx11.434.2, i32 0, i64 0
  %594 = load i32* %arrayidx12.435.2, align 4
  %arrayidx16.436.2 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %595 = load i32* %arrayidx16.436.2, align 4
  %mul.437.2 = mul nsw i32 %594, %595
  %arrayidx19.439.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.440.2 = getelementptr inbounds [9 x i32]* %arrayidx19.439.2, i32 0, i64 4
  %596 = load i32* %arrayidx20.440.2, align 4
  %add.441.2 = add nsw i32 %596, %mul.437.2
  store i32 %add.441.2, i32* %arrayidx20.440.2, align 4
  br label %for.inc.442.2

for.inc.442.2:                                    ; preds = %for.body8.4.2
  %arrayidx11.1.4.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.4.2 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4.2, i32 0, i64 1
  %597 = load i32* %arrayidx12.1.4.2, align 4
  %arrayidx15.1.4.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4.2, i32 0, i64 4
  %598 = load i32* %arrayidx16.1.4.2, align 4
  %mul.1.4.2 = mul nsw i32 %597, %598
  %arrayidx19.1.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.4.2 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4.2, i32 0, i64 4
  %599 = load i32* %arrayidx20.1.4.2, align 4
  %add.1.4.2 = add nsw i32 %599, %mul.1.4.2
  store i32 %add.1.4.2, i32* %arrayidx20.1.4.2, align 4
  br label %for.inc.1.4.2

for.inc.1.4.2:                                    ; preds = %for.inc.442.2
  %arrayidx11.2.4.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.4.2 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4.2, i32 0, i64 2
  %600 = load i32* %arrayidx12.2.4.2, align 4
  %arrayidx15.2.4.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4.2, i32 0, i64 4
  %601 = load i32* %arrayidx16.2.4.2, align 4
  %mul.2.4.2 = mul nsw i32 %600, %601
  %arrayidx19.2.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.4.2 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4.2, i32 0, i64 4
  %602 = load i32* %arrayidx20.2.4.2, align 4
  %add.2.4.2 = add nsw i32 %602, %mul.2.4.2
  store i32 %add.2.4.2, i32* %arrayidx20.2.4.2, align 4
  br label %for.inc.2.4.2

for.inc.2.4.2:                                    ; preds = %for.inc.1.4.2
  %arrayidx11.3.4.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.4.2 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4.2, i32 0, i64 3
  %603 = load i32* %arrayidx12.3.4.2, align 4
  %arrayidx15.3.4.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4.2, i32 0, i64 4
  %604 = load i32* %arrayidx16.3.4.2, align 4
  %mul.3.4.2 = mul nsw i32 %603, %604
  %arrayidx19.3.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.4.2 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4.2, i32 0, i64 4
  %605 = load i32* %arrayidx20.3.4.2, align 4
  %add.3.4.2 = add nsw i32 %605, %mul.3.4.2
  store i32 %add.3.4.2, i32* %arrayidx20.3.4.2, align 4
  br label %for.inc.3.4.2

for.inc.3.4.2:                                    ; preds = %for.inc.2.4.2
  %arrayidx11.4.4.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.4.2 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4.2, i32 0, i64 4
  %606 = load i32* %arrayidx12.4.4.2, align 4
  %arrayidx15.4.4.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4.2, i32 0, i64 4
  %607 = load i32* %arrayidx16.4.4.2, align 4
  %mul.4.4.2 = mul nsw i32 %606, %607
  %arrayidx19.4.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.4.2 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4.2, i32 0, i64 4
  %608 = load i32* %arrayidx20.4.4.2, align 4
  %add.4.4.2 = add nsw i32 %608, %mul.4.4.2
  store i32 %add.4.4.2, i32* %arrayidx20.4.4.2, align 4
  br label %for.inc.4.4.2

for.inc.4.4.2:                                    ; preds = %for.inc.3.4.2
  %arrayidx11.5.4.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.4.2 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4.2, i32 0, i64 5
  %609 = load i32* %arrayidx12.5.4.2, align 4
  %arrayidx15.5.4.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4.2, i32 0, i64 4
  %610 = load i32* %arrayidx16.5.4.2, align 4
  %mul.5.4.2 = mul nsw i32 %609, %610
  %arrayidx19.5.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.4.2 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4.2, i32 0, i64 4
  %611 = load i32* %arrayidx20.5.4.2, align 4
  %add.5.4.2 = add nsw i32 %611, %mul.5.4.2
  store i32 %add.5.4.2, i32* %arrayidx20.5.4.2, align 4
  br label %for.inc.5.4.2

for.inc.5.4.2:                                    ; preds = %for.inc.4.4.2
  %arrayidx11.6.4.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.4.2 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4.2, i32 0, i64 6
  %612 = load i32* %arrayidx12.6.4.2, align 4
  %arrayidx15.6.4.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4.2, i32 0, i64 4
  %613 = load i32* %arrayidx16.6.4.2, align 4
  %mul.6.4.2 = mul nsw i32 %612, %613
  %arrayidx19.6.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.4.2 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4.2, i32 0, i64 4
  %614 = load i32* %arrayidx20.6.4.2, align 4
  %add.6.4.2 = add nsw i32 %614, %mul.6.4.2
  store i32 %add.6.4.2, i32* %arrayidx20.6.4.2, align 4
  br label %for.inc.6.4.2

for.inc.6.4.2:                                    ; preds = %for.inc.5.4.2
  %arrayidx11.7.4.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.4.2 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4.2, i32 0, i64 7
  %615 = load i32* %arrayidx12.7.4.2, align 4
  %arrayidx15.7.4.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4.2, i32 0, i64 4
  %616 = load i32* %arrayidx16.7.4.2, align 4
  %mul.7.4.2 = mul nsw i32 %615, %616
  %arrayidx19.7.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.4.2 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4.2, i32 0, i64 4
  %617 = load i32* %arrayidx20.7.4.2, align 4
  %add.7.4.2 = add nsw i32 %617, %mul.7.4.2
  store i32 %add.7.4.2, i32* %arrayidx20.7.4.2, align 4
  br label %for.inc.7.4.2

for.inc.7.4.2:                                    ; preds = %for.inc.6.4.2
  %arrayidx11.8.4.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.4.2 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4.2, i32 0, i64 8
  %618 = load i32* %arrayidx12.8.4.2, align 4
  %arrayidx15.8.4.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4.2, i32 0, i64 4
  %619 = load i32* %arrayidx16.8.4.2, align 4
  %mul.8.4.2 = mul nsw i32 %618, %619
  %arrayidx19.8.4.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.4.2 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4.2, i32 0, i64 4
  %620 = load i32* %arrayidx20.8.4.2, align 4
  %add.8.4.2 = add nsw i32 %620, %mul.8.4.2
  store i32 %add.8.4.2, i32* %arrayidx20.8.4.2, align 4
  br label %for.inc.8.4.2

for.inc.8.4.2:                                    ; preds = %for.inc.7.4.2
  br label %for.inc21.4.2

for.inc21.4.2:                                    ; preds = %for.inc.8.4.2
  %arrayidx.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.5.2 = getelementptr inbounds [9 x i32]* %arrayidx.5.2, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.2, align 4
  br label %for.body8.5.2

for.body8.5.2:                                    ; preds = %for.inc21.4.2
  %arrayidx11.544.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.545.2 = getelementptr inbounds [9 x i32]* %arrayidx11.544.2, i32 0, i64 0
  %621 = load i32* %arrayidx12.545.2, align 4
  %arrayidx16.546.2 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %622 = load i32* %arrayidx16.546.2, align 4
  %mul.547.2 = mul nsw i32 %621, %622
  %arrayidx19.549.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.550.2 = getelementptr inbounds [9 x i32]* %arrayidx19.549.2, i32 0, i64 5
  %623 = load i32* %arrayidx20.550.2, align 4
  %add.551.2 = add nsw i32 %623, %mul.547.2
  store i32 %add.551.2, i32* %arrayidx20.550.2, align 4
  br label %for.inc.552.2

for.inc.552.2:                                    ; preds = %for.body8.5.2
  %arrayidx11.1.5.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.5.2 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5.2, i32 0, i64 1
  %624 = load i32* %arrayidx12.1.5.2, align 4
  %arrayidx15.1.5.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5.2, i32 0, i64 5
  %625 = load i32* %arrayidx16.1.5.2, align 4
  %mul.1.5.2 = mul nsw i32 %624, %625
  %arrayidx19.1.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.5.2 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5.2, i32 0, i64 5
  %626 = load i32* %arrayidx20.1.5.2, align 4
  %add.1.5.2 = add nsw i32 %626, %mul.1.5.2
  store i32 %add.1.5.2, i32* %arrayidx20.1.5.2, align 4
  br label %for.inc.1.5.2

for.inc.1.5.2:                                    ; preds = %for.inc.552.2
  %arrayidx11.2.5.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.5.2 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5.2, i32 0, i64 2
  %627 = load i32* %arrayidx12.2.5.2, align 4
  %arrayidx15.2.5.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5.2, i32 0, i64 5
  %628 = load i32* %arrayidx16.2.5.2, align 4
  %mul.2.5.2 = mul nsw i32 %627, %628
  %arrayidx19.2.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.5.2 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5.2, i32 0, i64 5
  %629 = load i32* %arrayidx20.2.5.2, align 4
  %add.2.5.2 = add nsw i32 %629, %mul.2.5.2
  store i32 %add.2.5.2, i32* %arrayidx20.2.5.2, align 4
  br label %for.inc.2.5.2

for.inc.2.5.2:                                    ; preds = %for.inc.1.5.2
  %arrayidx11.3.5.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.5.2 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5.2, i32 0, i64 3
  %630 = load i32* %arrayidx12.3.5.2, align 4
  %arrayidx15.3.5.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5.2, i32 0, i64 5
  %631 = load i32* %arrayidx16.3.5.2, align 4
  %mul.3.5.2 = mul nsw i32 %630, %631
  %arrayidx19.3.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.5.2 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5.2, i32 0, i64 5
  %632 = load i32* %arrayidx20.3.5.2, align 4
  %add.3.5.2 = add nsw i32 %632, %mul.3.5.2
  store i32 %add.3.5.2, i32* %arrayidx20.3.5.2, align 4
  br label %for.inc.3.5.2

for.inc.3.5.2:                                    ; preds = %for.inc.2.5.2
  %arrayidx11.4.5.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.5.2 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5.2, i32 0, i64 4
  %633 = load i32* %arrayidx12.4.5.2, align 4
  %arrayidx15.4.5.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5.2, i32 0, i64 5
  %634 = load i32* %arrayidx16.4.5.2, align 4
  %mul.4.5.2 = mul nsw i32 %633, %634
  %arrayidx19.4.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.5.2 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5.2, i32 0, i64 5
  %635 = load i32* %arrayidx20.4.5.2, align 4
  %add.4.5.2 = add nsw i32 %635, %mul.4.5.2
  store i32 %add.4.5.2, i32* %arrayidx20.4.5.2, align 4
  br label %for.inc.4.5.2

for.inc.4.5.2:                                    ; preds = %for.inc.3.5.2
  %arrayidx11.5.5.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.5.2 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5.2, i32 0, i64 5
  %636 = load i32* %arrayidx12.5.5.2, align 4
  %arrayidx15.5.5.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5.2, i32 0, i64 5
  %637 = load i32* %arrayidx16.5.5.2, align 4
  %mul.5.5.2 = mul nsw i32 %636, %637
  %arrayidx19.5.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.5.2 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5.2, i32 0, i64 5
  %638 = load i32* %arrayidx20.5.5.2, align 4
  %add.5.5.2 = add nsw i32 %638, %mul.5.5.2
  store i32 %add.5.5.2, i32* %arrayidx20.5.5.2, align 4
  br label %for.inc.5.5.2

for.inc.5.5.2:                                    ; preds = %for.inc.4.5.2
  %arrayidx11.6.5.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.5.2 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5.2, i32 0, i64 6
  %639 = load i32* %arrayidx12.6.5.2, align 4
  %arrayidx15.6.5.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5.2, i32 0, i64 5
  %640 = load i32* %arrayidx16.6.5.2, align 4
  %mul.6.5.2 = mul nsw i32 %639, %640
  %arrayidx19.6.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.5.2 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5.2, i32 0, i64 5
  %641 = load i32* %arrayidx20.6.5.2, align 4
  %add.6.5.2 = add nsw i32 %641, %mul.6.5.2
  store i32 %add.6.5.2, i32* %arrayidx20.6.5.2, align 4
  br label %for.inc.6.5.2

for.inc.6.5.2:                                    ; preds = %for.inc.5.5.2
  %arrayidx11.7.5.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.5.2 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5.2, i32 0, i64 7
  %642 = load i32* %arrayidx12.7.5.2, align 4
  %arrayidx15.7.5.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5.2, i32 0, i64 5
  %643 = load i32* %arrayidx16.7.5.2, align 4
  %mul.7.5.2 = mul nsw i32 %642, %643
  %arrayidx19.7.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.5.2 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5.2, i32 0, i64 5
  %644 = load i32* %arrayidx20.7.5.2, align 4
  %add.7.5.2 = add nsw i32 %644, %mul.7.5.2
  store i32 %add.7.5.2, i32* %arrayidx20.7.5.2, align 4
  br label %for.inc.7.5.2

for.inc.7.5.2:                                    ; preds = %for.inc.6.5.2
  %arrayidx11.8.5.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.5.2 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5.2, i32 0, i64 8
  %645 = load i32* %arrayidx12.8.5.2, align 4
  %arrayidx15.8.5.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5.2, i32 0, i64 5
  %646 = load i32* %arrayidx16.8.5.2, align 4
  %mul.8.5.2 = mul nsw i32 %645, %646
  %arrayidx19.8.5.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.5.2 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5.2, i32 0, i64 5
  %647 = load i32* %arrayidx20.8.5.2, align 4
  %add.8.5.2 = add nsw i32 %647, %mul.8.5.2
  store i32 %add.8.5.2, i32* %arrayidx20.8.5.2, align 4
  br label %for.inc.8.5.2

for.inc.8.5.2:                                    ; preds = %for.inc.7.5.2
  br label %for.inc21.5.2

for.inc21.5.2:                                    ; preds = %for.inc.8.5.2
  %arrayidx.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.6.2 = getelementptr inbounds [9 x i32]* %arrayidx.6.2, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.2, align 4
  br label %for.body8.6.2

for.body8.6.2:                                    ; preds = %for.inc21.5.2
  %arrayidx11.654.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.655.2 = getelementptr inbounds [9 x i32]* %arrayidx11.654.2, i32 0, i64 0
  %648 = load i32* %arrayidx12.655.2, align 4
  %arrayidx16.656.2 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %649 = load i32* %arrayidx16.656.2, align 4
  %mul.657.2 = mul nsw i32 %648, %649
  %arrayidx19.659.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.660.2 = getelementptr inbounds [9 x i32]* %arrayidx19.659.2, i32 0, i64 6
  %650 = load i32* %arrayidx20.660.2, align 4
  %add.661.2 = add nsw i32 %650, %mul.657.2
  store i32 %add.661.2, i32* %arrayidx20.660.2, align 4
  br label %for.inc.662.2

for.inc.662.2:                                    ; preds = %for.body8.6.2
  %arrayidx11.1.6.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.6.2 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6.2, i32 0, i64 1
  %651 = load i32* %arrayidx12.1.6.2, align 4
  %arrayidx15.1.6.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6.2, i32 0, i64 6
  %652 = load i32* %arrayidx16.1.6.2, align 4
  %mul.1.6.2 = mul nsw i32 %651, %652
  %arrayidx19.1.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.6.2 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6.2, i32 0, i64 6
  %653 = load i32* %arrayidx20.1.6.2, align 4
  %add.1.6.2 = add nsw i32 %653, %mul.1.6.2
  store i32 %add.1.6.2, i32* %arrayidx20.1.6.2, align 4
  br label %for.inc.1.6.2

for.inc.1.6.2:                                    ; preds = %for.inc.662.2
  %arrayidx11.2.6.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.6.2 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6.2, i32 0, i64 2
  %654 = load i32* %arrayidx12.2.6.2, align 4
  %arrayidx15.2.6.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6.2, i32 0, i64 6
  %655 = load i32* %arrayidx16.2.6.2, align 4
  %mul.2.6.2 = mul nsw i32 %654, %655
  %arrayidx19.2.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.6.2 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6.2, i32 0, i64 6
  %656 = load i32* %arrayidx20.2.6.2, align 4
  %add.2.6.2 = add nsw i32 %656, %mul.2.6.2
  store i32 %add.2.6.2, i32* %arrayidx20.2.6.2, align 4
  br label %for.inc.2.6.2

for.inc.2.6.2:                                    ; preds = %for.inc.1.6.2
  %arrayidx11.3.6.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.6.2 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6.2, i32 0, i64 3
  %657 = load i32* %arrayidx12.3.6.2, align 4
  %arrayidx15.3.6.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6.2, i32 0, i64 6
  %658 = load i32* %arrayidx16.3.6.2, align 4
  %mul.3.6.2 = mul nsw i32 %657, %658
  %arrayidx19.3.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.6.2 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6.2, i32 0, i64 6
  %659 = load i32* %arrayidx20.3.6.2, align 4
  %add.3.6.2 = add nsw i32 %659, %mul.3.6.2
  store i32 %add.3.6.2, i32* %arrayidx20.3.6.2, align 4
  br label %for.inc.3.6.2

for.inc.3.6.2:                                    ; preds = %for.inc.2.6.2
  %arrayidx11.4.6.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.6.2 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6.2, i32 0, i64 4
  %660 = load i32* %arrayidx12.4.6.2, align 4
  %arrayidx15.4.6.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6.2, i32 0, i64 6
  %661 = load i32* %arrayidx16.4.6.2, align 4
  %mul.4.6.2 = mul nsw i32 %660, %661
  %arrayidx19.4.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.6.2 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6.2, i32 0, i64 6
  %662 = load i32* %arrayidx20.4.6.2, align 4
  %add.4.6.2 = add nsw i32 %662, %mul.4.6.2
  store i32 %add.4.6.2, i32* %arrayidx20.4.6.2, align 4
  br label %for.inc.4.6.2

for.inc.4.6.2:                                    ; preds = %for.inc.3.6.2
  %arrayidx11.5.6.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.6.2 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6.2, i32 0, i64 5
  %663 = load i32* %arrayidx12.5.6.2, align 4
  %arrayidx15.5.6.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6.2, i32 0, i64 6
  %664 = load i32* %arrayidx16.5.6.2, align 4
  %mul.5.6.2 = mul nsw i32 %663, %664
  %arrayidx19.5.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.6.2 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6.2, i32 0, i64 6
  %665 = load i32* %arrayidx20.5.6.2, align 4
  %add.5.6.2 = add nsw i32 %665, %mul.5.6.2
  store i32 %add.5.6.2, i32* %arrayidx20.5.6.2, align 4
  br label %for.inc.5.6.2

for.inc.5.6.2:                                    ; preds = %for.inc.4.6.2
  %arrayidx11.6.6.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.6.2 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6.2, i32 0, i64 6
  %666 = load i32* %arrayidx12.6.6.2, align 4
  %arrayidx15.6.6.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6.2, i32 0, i64 6
  %667 = load i32* %arrayidx16.6.6.2, align 4
  %mul.6.6.2 = mul nsw i32 %666, %667
  %arrayidx19.6.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.6.2 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6.2, i32 0, i64 6
  %668 = load i32* %arrayidx20.6.6.2, align 4
  %add.6.6.2 = add nsw i32 %668, %mul.6.6.2
  store i32 %add.6.6.2, i32* %arrayidx20.6.6.2, align 4
  br label %for.inc.6.6.2

for.inc.6.6.2:                                    ; preds = %for.inc.5.6.2
  %arrayidx11.7.6.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.6.2 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6.2, i32 0, i64 7
  %669 = load i32* %arrayidx12.7.6.2, align 4
  %arrayidx15.7.6.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6.2, i32 0, i64 6
  %670 = load i32* %arrayidx16.7.6.2, align 4
  %mul.7.6.2 = mul nsw i32 %669, %670
  %arrayidx19.7.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.6.2 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6.2, i32 0, i64 6
  %671 = load i32* %arrayidx20.7.6.2, align 4
  %add.7.6.2 = add nsw i32 %671, %mul.7.6.2
  store i32 %add.7.6.2, i32* %arrayidx20.7.6.2, align 4
  br label %for.inc.7.6.2

for.inc.7.6.2:                                    ; preds = %for.inc.6.6.2
  %arrayidx11.8.6.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.6.2 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6.2, i32 0, i64 8
  %672 = load i32* %arrayidx12.8.6.2, align 4
  %arrayidx15.8.6.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6.2, i32 0, i64 6
  %673 = load i32* %arrayidx16.8.6.2, align 4
  %mul.8.6.2 = mul nsw i32 %672, %673
  %arrayidx19.8.6.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.6.2 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6.2, i32 0, i64 6
  %674 = load i32* %arrayidx20.8.6.2, align 4
  %add.8.6.2 = add nsw i32 %674, %mul.8.6.2
  store i32 %add.8.6.2, i32* %arrayidx20.8.6.2, align 4
  br label %for.inc.8.6.2

for.inc.8.6.2:                                    ; preds = %for.inc.7.6.2
  br label %for.inc21.6.2

for.inc21.6.2:                                    ; preds = %for.inc.8.6.2
  %arrayidx.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.7.2 = getelementptr inbounds [9 x i32]* %arrayidx.7.2, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.2, align 4
  br label %for.body8.7.2

for.body8.7.2:                                    ; preds = %for.inc21.6.2
  %arrayidx11.764.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.765.2 = getelementptr inbounds [9 x i32]* %arrayidx11.764.2, i32 0, i64 0
  %675 = load i32* %arrayidx12.765.2, align 4
  %arrayidx16.766.2 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %676 = load i32* %arrayidx16.766.2, align 4
  %mul.767.2 = mul nsw i32 %675, %676
  %arrayidx19.769.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.770.2 = getelementptr inbounds [9 x i32]* %arrayidx19.769.2, i32 0, i64 7
  %677 = load i32* %arrayidx20.770.2, align 4
  %add.771.2 = add nsw i32 %677, %mul.767.2
  store i32 %add.771.2, i32* %arrayidx20.770.2, align 4
  br label %for.inc.772.2

for.inc.772.2:                                    ; preds = %for.body8.7.2
  %arrayidx11.1.7.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.7.2 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7.2, i32 0, i64 1
  %678 = load i32* %arrayidx12.1.7.2, align 4
  %arrayidx15.1.7.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7.2, i32 0, i64 7
  %679 = load i32* %arrayidx16.1.7.2, align 4
  %mul.1.7.2 = mul nsw i32 %678, %679
  %arrayidx19.1.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.7.2 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7.2, i32 0, i64 7
  %680 = load i32* %arrayidx20.1.7.2, align 4
  %add.1.7.2 = add nsw i32 %680, %mul.1.7.2
  store i32 %add.1.7.2, i32* %arrayidx20.1.7.2, align 4
  br label %for.inc.1.7.2

for.inc.1.7.2:                                    ; preds = %for.inc.772.2
  %arrayidx11.2.7.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.7.2 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7.2, i32 0, i64 2
  %681 = load i32* %arrayidx12.2.7.2, align 4
  %arrayidx15.2.7.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7.2, i32 0, i64 7
  %682 = load i32* %arrayidx16.2.7.2, align 4
  %mul.2.7.2 = mul nsw i32 %681, %682
  %arrayidx19.2.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.7.2 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7.2, i32 0, i64 7
  %683 = load i32* %arrayidx20.2.7.2, align 4
  %add.2.7.2 = add nsw i32 %683, %mul.2.7.2
  store i32 %add.2.7.2, i32* %arrayidx20.2.7.2, align 4
  br label %for.inc.2.7.2

for.inc.2.7.2:                                    ; preds = %for.inc.1.7.2
  %arrayidx11.3.7.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.7.2 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7.2, i32 0, i64 3
  %684 = load i32* %arrayidx12.3.7.2, align 4
  %arrayidx15.3.7.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7.2, i32 0, i64 7
  %685 = load i32* %arrayidx16.3.7.2, align 4
  %mul.3.7.2 = mul nsw i32 %684, %685
  %arrayidx19.3.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.7.2 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7.2, i32 0, i64 7
  %686 = load i32* %arrayidx20.3.7.2, align 4
  %add.3.7.2 = add nsw i32 %686, %mul.3.7.2
  store i32 %add.3.7.2, i32* %arrayidx20.3.7.2, align 4
  br label %for.inc.3.7.2

for.inc.3.7.2:                                    ; preds = %for.inc.2.7.2
  %arrayidx11.4.7.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.7.2 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7.2, i32 0, i64 4
  %687 = load i32* %arrayidx12.4.7.2, align 4
  %arrayidx15.4.7.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7.2, i32 0, i64 7
  %688 = load i32* %arrayidx16.4.7.2, align 4
  %mul.4.7.2 = mul nsw i32 %687, %688
  %arrayidx19.4.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.7.2 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7.2, i32 0, i64 7
  %689 = load i32* %arrayidx20.4.7.2, align 4
  %add.4.7.2 = add nsw i32 %689, %mul.4.7.2
  store i32 %add.4.7.2, i32* %arrayidx20.4.7.2, align 4
  br label %for.inc.4.7.2

for.inc.4.7.2:                                    ; preds = %for.inc.3.7.2
  %arrayidx11.5.7.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.7.2 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7.2, i32 0, i64 5
  %690 = load i32* %arrayidx12.5.7.2, align 4
  %arrayidx15.5.7.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7.2, i32 0, i64 7
  %691 = load i32* %arrayidx16.5.7.2, align 4
  %mul.5.7.2 = mul nsw i32 %690, %691
  %arrayidx19.5.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.7.2 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7.2, i32 0, i64 7
  %692 = load i32* %arrayidx20.5.7.2, align 4
  %add.5.7.2 = add nsw i32 %692, %mul.5.7.2
  store i32 %add.5.7.2, i32* %arrayidx20.5.7.2, align 4
  br label %for.inc.5.7.2

for.inc.5.7.2:                                    ; preds = %for.inc.4.7.2
  %arrayidx11.6.7.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.7.2 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7.2, i32 0, i64 6
  %693 = load i32* %arrayidx12.6.7.2, align 4
  %arrayidx15.6.7.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7.2, i32 0, i64 7
  %694 = load i32* %arrayidx16.6.7.2, align 4
  %mul.6.7.2 = mul nsw i32 %693, %694
  %arrayidx19.6.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.7.2 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7.2, i32 0, i64 7
  %695 = load i32* %arrayidx20.6.7.2, align 4
  %add.6.7.2 = add nsw i32 %695, %mul.6.7.2
  store i32 %add.6.7.2, i32* %arrayidx20.6.7.2, align 4
  br label %for.inc.6.7.2

for.inc.6.7.2:                                    ; preds = %for.inc.5.7.2
  %arrayidx11.7.7.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.7.2 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7.2, i32 0, i64 7
  %696 = load i32* %arrayidx12.7.7.2, align 4
  %arrayidx15.7.7.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7.2, i32 0, i64 7
  %697 = load i32* %arrayidx16.7.7.2, align 4
  %mul.7.7.2 = mul nsw i32 %696, %697
  %arrayidx19.7.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.7.2 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7.2, i32 0, i64 7
  %698 = load i32* %arrayidx20.7.7.2, align 4
  %add.7.7.2 = add nsw i32 %698, %mul.7.7.2
  store i32 %add.7.7.2, i32* %arrayidx20.7.7.2, align 4
  br label %for.inc.7.7.2

for.inc.7.7.2:                                    ; preds = %for.inc.6.7.2
  %arrayidx11.8.7.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.7.2 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7.2, i32 0, i64 8
  %699 = load i32* %arrayidx12.8.7.2, align 4
  %arrayidx15.8.7.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7.2, i32 0, i64 7
  %700 = load i32* %arrayidx16.8.7.2, align 4
  %mul.8.7.2 = mul nsw i32 %699, %700
  %arrayidx19.8.7.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.7.2 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7.2, i32 0, i64 7
  %701 = load i32* %arrayidx20.8.7.2, align 4
  %add.8.7.2 = add nsw i32 %701, %mul.8.7.2
  store i32 %add.8.7.2, i32* %arrayidx20.8.7.2, align 4
  br label %for.inc.8.7.2

for.inc.8.7.2:                                    ; preds = %for.inc.7.7.2
  br label %for.inc21.7.2

for.inc21.7.2:                                    ; preds = %for.inc.8.7.2
  %arrayidx.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx5.8.2 = getelementptr inbounds [9 x i32]* %arrayidx.8.2, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.2, align 4
  br label %for.body8.8.2

for.body8.8.2:                                    ; preds = %for.inc21.7.2
  %arrayidx11.874.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.875.2 = getelementptr inbounds [9 x i32]* %arrayidx11.874.2, i32 0, i64 0
  %702 = load i32* %arrayidx12.875.2, align 4
  %arrayidx16.876.2 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %703 = load i32* %arrayidx16.876.2, align 4
  %mul.877.2 = mul nsw i32 %702, %703
  %arrayidx19.879.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.880.2 = getelementptr inbounds [9 x i32]* %arrayidx19.879.2, i32 0, i64 8
  %704 = load i32* %arrayidx20.880.2, align 4
  %add.881.2 = add nsw i32 %704, %mul.877.2
  store i32 %add.881.2, i32* %arrayidx20.880.2, align 4
  br label %for.inc.882.2

for.inc.882.2:                                    ; preds = %for.body8.8.2
  %arrayidx11.1.8.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.1.8.2 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8.2, i32 0, i64 1
  %705 = load i32* %arrayidx12.1.8.2, align 4
  %arrayidx15.1.8.2 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8.2, i32 0, i64 8
  %706 = load i32* %arrayidx16.1.8.2, align 4
  %mul.1.8.2 = mul nsw i32 %705, %706
  %arrayidx19.1.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.1.8.2 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8.2, i32 0, i64 8
  %707 = load i32* %arrayidx20.1.8.2, align 4
  %add.1.8.2 = add nsw i32 %707, %mul.1.8.2
  store i32 %add.1.8.2, i32* %arrayidx20.1.8.2, align 4
  br label %for.inc.1.8.2

for.inc.1.8.2:                                    ; preds = %for.inc.882.2
  %arrayidx11.2.8.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.2.8.2 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8.2, i32 0, i64 2
  %708 = load i32* %arrayidx12.2.8.2, align 4
  %arrayidx15.2.8.2 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8.2, i32 0, i64 8
  %709 = load i32* %arrayidx16.2.8.2, align 4
  %mul.2.8.2 = mul nsw i32 %708, %709
  %arrayidx19.2.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.2.8.2 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8.2, i32 0, i64 8
  %710 = load i32* %arrayidx20.2.8.2, align 4
  %add.2.8.2 = add nsw i32 %710, %mul.2.8.2
  store i32 %add.2.8.2, i32* %arrayidx20.2.8.2, align 4
  br label %for.inc.2.8.2

for.inc.2.8.2:                                    ; preds = %for.inc.1.8.2
  %arrayidx11.3.8.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.3.8.2 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8.2, i32 0, i64 3
  %711 = load i32* %arrayidx12.3.8.2, align 4
  %arrayidx15.3.8.2 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8.2, i32 0, i64 8
  %712 = load i32* %arrayidx16.3.8.2, align 4
  %mul.3.8.2 = mul nsw i32 %711, %712
  %arrayidx19.3.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.3.8.2 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8.2, i32 0, i64 8
  %713 = load i32* %arrayidx20.3.8.2, align 4
  %add.3.8.2 = add nsw i32 %713, %mul.3.8.2
  store i32 %add.3.8.2, i32* %arrayidx20.3.8.2, align 4
  br label %for.inc.3.8.2

for.inc.3.8.2:                                    ; preds = %for.inc.2.8.2
  %arrayidx11.4.8.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.4.8.2 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8.2, i32 0, i64 4
  %714 = load i32* %arrayidx12.4.8.2, align 4
  %arrayidx15.4.8.2 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8.2, i32 0, i64 8
  %715 = load i32* %arrayidx16.4.8.2, align 4
  %mul.4.8.2 = mul nsw i32 %714, %715
  %arrayidx19.4.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.4.8.2 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8.2, i32 0, i64 8
  %716 = load i32* %arrayidx20.4.8.2, align 4
  %add.4.8.2 = add nsw i32 %716, %mul.4.8.2
  store i32 %add.4.8.2, i32* %arrayidx20.4.8.2, align 4
  br label %for.inc.4.8.2

for.inc.4.8.2:                                    ; preds = %for.inc.3.8.2
  %arrayidx11.5.8.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.5.8.2 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8.2, i32 0, i64 5
  %717 = load i32* %arrayidx12.5.8.2, align 4
  %arrayidx15.5.8.2 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8.2, i32 0, i64 8
  %718 = load i32* %arrayidx16.5.8.2, align 4
  %mul.5.8.2 = mul nsw i32 %717, %718
  %arrayidx19.5.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.5.8.2 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8.2, i32 0, i64 8
  %719 = load i32* %arrayidx20.5.8.2, align 4
  %add.5.8.2 = add nsw i32 %719, %mul.5.8.2
  store i32 %add.5.8.2, i32* %arrayidx20.5.8.2, align 4
  br label %for.inc.5.8.2

for.inc.5.8.2:                                    ; preds = %for.inc.4.8.2
  %arrayidx11.6.8.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.6.8.2 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8.2, i32 0, i64 6
  %720 = load i32* %arrayidx12.6.8.2, align 4
  %arrayidx15.6.8.2 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8.2, i32 0, i64 8
  %721 = load i32* %arrayidx16.6.8.2, align 4
  %mul.6.8.2 = mul nsw i32 %720, %721
  %arrayidx19.6.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.6.8.2 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8.2, i32 0, i64 8
  %722 = load i32* %arrayidx20.6.8.2, align 4
  %add.6.8.2 = add nsw i32 %722, %mul.6.8.2
  store i32 %add.6.8.2, i32* %arrayidx20.6.8.2, align 4
  br label %for.inc.6.8.2

for.inc.6.8.2:                                    ; preds = %for.inc.5.8.2
  %arrayidx11.7.8.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.7.8.2 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8.2, i32 0, i64 7
  %723 = load i32* %arrayidx12.7.8.2, align 4
  %arrayidx15.7.8.2 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8.2, i32 0, i64 8
  %724 = load i32* %arrayidx16.7.8.2, align 4
  %mul.7.8.2 = mul nsw i32 %723, %724
  %arrayidx19.7.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.7.8.2 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8.2, i32 0, i64 8
  %725 = load i32* %arrayidx20.7.8.2, align 4
  %add.7.8.2 = add nsw i32 %725, %mul.7.8.2
  store i32 %add.7.8.2, i32* %arrayidx20.7.8.2, align 4
  br label %for.inc.7.8.2

for.inc.7.8.2:                                    ; preds = %for.inc.6.8.2
  %arrayidx11.8.8.2 = getelementptr inbounds [9 x i32]* %a, i64 2
  %arrayidx12.8.8.2 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8.2, i32 0, i64 8
  %726 = load i32* %arrayidx12.8.8.2, align 4
  %arrayidx15.8.8.2 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8.2 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8.2, i32 0, i64 8
  %727 = load i32* %arrayidx16.8.8.2, align 4
  %mul.8.8.2 = mul nsw i32 %726, %727
  %arrayidx19.8.8.2 = getelementptr inbounds [9 x i32]* %c, i64 2
  %arrayidx20.8.8.2 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8.2, i32 0, i64 8
  %728 = load i32* %arrayidx20.8.8.2, align 4
  %add.8.8.2 = add nsw i32 %728, %mul.8.8.2
  store i32 %add.8.8.2, i32* %arrayidx20.8.8.2, align 4
  br label %for.inc.8.8.2

for.inc.8.8.2:                                    ; preds = %for.inc.7.8.2
  br label %for.inc21.8.2

for.inc21.8.2:                                    ; preds = %for.inc.8.8.2
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc21.8.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc24.2
  %arrayidx.3252 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.3253 = getelementptr inbounds [9 x i32]* %arrayidx.3252, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.3253, align 4
  br label %for.body8.3261

for.body8.3261:                                   ; preds = %for.body3.3
  %arrayidx11.3254 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3255 = getelementptr inbounds [9 x i32]* %arrayidx11.3254, i32 0, i64 0
  %729 = load i32* %arrayidx12.3255, align 4
  %arrayidx16.3256 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %730 = load i32* %arrayidx16.3256, align 4
  %mul.3257 = mul nsw i32 %729, %730
  %arrayidx19.3258 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3259 = getelementptr inbounds [9 x i32]* %arrayidx19.3258, i32 0, i64 0
  %731 = load i32* %arrayidx20.3259, align 4
  %add.3260 = add nsw i32 %731, %mul.3257
  store i32 %add.3260, i32* %arrayidx20.3259, align 4
  br label %for.inc.3270

for.inc.3270:                                     ; preds = %for.body8.3261
  %arrayidx11.1.3262 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.3263 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3262, i32 0, i64 1
  %732 = load i32* %arrayidx12.1.3263, align 4
  %arrayidx15.1.3264 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3265 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3264, i32 0, i64 0
  %733 = load i32* %arrayidx16.1.3265, align 4
  %mul.1.3266 = mul nsw i32 %732, %733
  %arrayidx19.1.3267 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.3268 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3267, i32 0, i64 0
  %734 = load i32* %arrayidx20.1.3268, align 4
  %add.1.3269 = add nsw i32 %734, %mul.1.3266
  store i32 %add.1.3269, i32* %arrayidx20.1.3268, align 4
  br label %for.inc.1.3279

for.inc.1.3279:                                   ; preds = %for.inc.3270
  %arrayidx11.2.3271 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.3272 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3271, i32 0, i64 2
  %735 = load i32* %arrayidx12.2.3272, align 4
  %arrayidx15.2.3273 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3274 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3273, i32 0, i64 0
  %736 = load i32* %arrayidx16.2.3274, align 4
  %mul.2.3275 = mul nsw i32 %735, %736
  %arrayidx19.2.3276 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.3277 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3276, i32 0, i64 0
  %737 = load i32* %arrayidx20.2.3277, align 4
  %add.2.3278 = add nsw i32 %737, %mul.2.3275
  store i32 %add.2.3278, i32* %arrayidx20.2.3277, align 4
  br label %for.inc.2.3288

for.inc.2.3288:                                   ; preds = %for.inc.1.3279
  %arrayidx11.3.3280 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.3281 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3280, i32 0, i64 3
  %738 = load i32* %arrayidx12.3.3281, align 4
  %arrayidx15.3.3282 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3283 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3282, i32 0, i64 0
  %739 = load i32* %arrayidx16.3.3283, align 4
  %mul.3.3284 = mul nsw i32 %738, %739
  %arrayidx19.3.3285 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.3286 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3285, i32 0, i64 0
  %740 = load i32* %arrayidx20.3.3286, align 4
  %add.3.3287 = add nsw i32 %740, %mul.3.3284
  store i32 %add.3.3287, i32* %arrayidx20.3.3286, align 4
  br label %for.inc.3.3297

for.inc.3.3297:                                   ; preds = %for.inc.2.3288
  %arrayidx11.4.3289 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.3290 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3289, i32 0, i64 4
  %741 = load i32* %arrayidx12.4.3290, align 4
  %arrayidx15.4.3291 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3292 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3291, i32 0, i64 0
  %742 = load i32* %arrayidx16.4.3292, align 4
  %mul.4.3293 = mul nsw i32 %741, %742
  %arrayidx19.4.3294 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.3295 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3294, i32 0, i64 0
  %743 = load i32* %arrayidx20.4.3295, align 4
  %add.4.3296 = add nsw i32 %743, %mul.4.3293
  store i32 %add.4.3296, i32* %arrayidx20.4.3295, align 4
  br label %for.inc.4.3306

for.inc.4.3306:                                   ; preds = %for.inc.3.3297
  %arrayidx11.5.3298 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.3299 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3298, i32 0, i64 5
  %744 = load i32* %arrayidx12.5.3299, align 4
  %arrayidx15.5.3300 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3301 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3300, i32 0, i64 0
  %745 = load i32* %arrayidx16.5.3301, align 4
  %mul.5.3302 = mul nsw i32 %744, %745
  %arrayidx19.5.3303 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.3304 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3303, i32 0, i64 0
  %746 = load i32* %arrayidx20.5.3304, align 4
  %add.5.3305 = add nsw i32 %746, %mul.5.3302
  store i32 %add.5.3305, i32* %arrayidx20.5.3304, align 4
  br label %for.inc.5.3315

for.inc.5.3315:                                   ; preds = %for.inc.4.3306
  %arrayidx11.6.3307 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.3308 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3307, i32 0, i64 6
  %747 = load i32* %arrayidx12.6.3308, align 4
  %arrayidx15.6.3309 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3310 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3309, i32 0, i64 0
  %748 = load i32* %arrayidx16.6.3310, align 4
  %mul.6.3311 = mul nsw i32 %747, %748
  %arrayidx19.6.3312 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.3313 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3312, i32 0, i64 0
  %749 = load i32* %arrayidx20.6.3313, align 4
  %add.6.3314 = add nsw i32 %749, %mul.6.3311
  store i32 %add.6.3314, i32* %arrayidx20.6.3313, align 4
  br label %for.inc.6.3324

for.inc.6.3324:                                   ; preds = %for.inc.5.3315
  %arrayidx11.7.3316 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.3317 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3316, i32 0, i64 7
  %750 = load i32* %arrayidx12.7.3317, align 4
  %arrayidx15.7.3318 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3319 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3318, i32 0, i64 0
  %751 = load i32* %arrayidx16.7.3319, align 4
  %mul.7.3320 = mul nsw i32 %750, %751
  %arrayidx19.7.3321 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.3322 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3321, i32 0, i64 0
  %752 = load i32* %arrayidx20.7.3322, align 4
  %add.7.3323 = add nsw i32 %752, %mul.7.3320
  store i32 %add.7.3323, i32* %arrayidx20.7.3322, align 4
  br label %for.inc.7.3333

for.inc.7.3333:                                   ; preds = %for.inc.6.3324
  %arrayidx11.8.3325 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.3326 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3325, i32 0, i64 8
  %753 = load i32* %arrayidx12.8.3326, align 4
  %arrayidx15.8.3327 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3328 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3327, i32 0, i64 0
  %754 = load i32* %arrayidx16.8.3328, align 4
  %mul.8.3329 = mul nsw i32 %753, %754
  %arrayidx19.8.3330 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.3331 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3330, i32 0, i64 0
  %755 = load i32* %arrayidx20.8.3331, align 4
  %add.8.3332 = add nsw i32 %755, %mul.8.3329
  store i32 %add.8.3332, i32* %arrayidx20.8.3331, align 4
  br label %for.inc.8.3334

for.inc.8.3334:                                   ; preds = %for.inc.7.3333
  br label %for.inc21.3335

for.inc21.3335:                                   ; preds = %for.inc.8.3334
  %arrayidx.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.1.3 = getelementptr inbounds [9 x i32]* %arrayidx.1.3, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.3, align 4
  br label %for.body8.1.3

for.body8.1.3:                                    ; preds = %for.inc21.3335
  %arrayidx11.14.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.15.3 = getelementptr inbounds [9 x i32]* %arrayidx11.14.3, i32 0, i64 0
  %756 = load i32* %arrayidx12.15.3, align 4
  %arrayidx16.16.3 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %757 = load i32* %arrayidx16.16.3, align 4
  %mul.17.3 = mul nsw i32 %756, %757
  %arrayidx19.19.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.110.3 = getelementptr inbounds [9 x i32]* %arrayidx19.19.3, i32 0, i64 1
  %758 = load i32* %arrayidx20.110.3, align 4
  %add.111.3 = add nsw i32 %758, %mul.17.3
  store i32 %add.111.3, i32* %arrayidx20.110.3, align 4
  br label %for.inc.112.3

for.inc.112.3:                                    ; preds = %for.body8.1.3
  %arrayidx11.1.1.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.1.3 = getelementptr inbounds [9 x i32]* %arrayidx11.1.1.3, i32 0, i64 1
  %759 = load i32* %arrayidx12.1.1.3, align 4
  %arrayidx15.1.1.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1.3, i32 0, i64 1
  %760 = load i32* %arrayidx16.1.1.3, align 4
  %mul.1.1.3 = mul nsw i32 %759, %760
  %arrayidx19.1.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.1.3 = getelementptr inbounds [9 x i32]* %arrayidx19.1.1.3, i32 0, i64 1
  %761 = load i32* %arrayidx20.1.1.3, align 4
  %add.1.1.3 = add nsw i32 %761, %mul.1.1.3
  store i32 %add.1.1.3, i32* %arrayidx20.1.1.3, align 4
  br label %for.inc.1.1.3

for.inc.1.1.3:                                    ; preds = %for.inc.112.3
  %arrayidx11.2.1.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.1.3 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1.3, i32 0, i64 2
  %762 = load i32* %arrayidx12.2.1.3, align 4
  %arrayidx15.2.1.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1.3, i32 0, i64 1
  %763 = load i32* %arrayidx16.2.1.3, align 4
  %mul.2.1.3 = mul nsw i32 %762, %763
  %arrayidx19.2.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.1.3 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1.3, i32 0, i64 1
  %764 = load i32* %arrayidx20.2.1.3, align 4
  %add.2.1.3 = add nsw i32 %764, %mul.2.1.3
  store i32 %add.2.1.3, i32* %arrayidx20.2.1.3, align 4
  br label %for.inc.2.1.3

for.inc.2.1.3:                                    ; preds = %for.inc.1.1.3
  %arrayidx11.3.1.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.1.3 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1.3, i32 0, i64 3
  %765 = load i32* %arrayidx12.3.1.3, align 4
  %arrayidx15.3.1.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1.3, i32 0, i64 1
  %766 = load i32* %arrayidx16.3.1.3, align 4
  %mul.3.1.3 = mul nsw i32 %765, %766
  %arrayidx19.3.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.1.3 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1.3, i32 0, i64 1
  %767 = load i32* %arrayidx20.3.1.3, align 4
  %add.3.1.3 = add nsw i32 %767, %mul.3.1.3
  store i32 %add.3.1.3, i32* %arrayidx20.3.1.3, align 4
  br label %for.inc.3.1.3

for.inc.3.1.3:                                    ; preds = %for.inc.2.1.3
  %arrayidx11.4.1.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.1.3 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1.3, i32 0, i64 4
  %768 = load i32* %arrayidx12.4.1.3, align 4
  %arrayidx15.4.1.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1.3, i32 0, i64 1
  %769 = load i32* %arrayidx16.4.1.3, align 4
  %mul.4.1.3 = mul nsw i32 %768, %769
  %arrayidx19.4.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.1.3 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1.3, i32 0, i64 1
  %770 = load i32* %arrayidx20.4.1.3, align 4
  %add.4.1.3 = add nsw i32 %770, %mul.4.1.3
  store i32 %add.4.1.3, i32* %arrayidx20.4.1.3, align 4
  br label %for.inc.4.1.3

for.inc.4.1.3:                                    ; preds = %for.inc.3.1.3
  %arrayidx11.5.1.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.1.3 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1.3, i32 0, i64 5
  %771 = load i32* %arrayidx12.5.1.3, align 4
  %arrayidx15.5.1.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1.3, i32 0, i64 1
  %772 = load i32* %arrayidx16.5.1.3, align 4
  %mul.5.1.3 = mul nsw i32 %771, %772
  %arrayidx19.5.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.1.3 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1.3, i32 0, i64 1
  %773 = load i32* %arrayidx20.5.1.3, align 4
  %add.5.1.3 = add nsw i32 %773, %mul.5.1.3
  store i32 %add.5.1.3, i32* %arrayidx20.5.1.3, align 4
  br label %for.inc.5.1.3

for.inc.5.1.3:                                    ; preds = %for.inc.4.1.3
  %arrayidx11.6.1.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.1.3 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1.3, i32 0, i64 6
  %774 = load i32* %arrayidx12.6.1.3, align 4
  %arrayidx15.6.1.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1.3, i32 0, i64 1
  %775 = load i32* %arrayidx16.6.1.3, align 4
  %mul.6.1.3 = mul nsw i32 %774, %775
  %arrayidx19.6.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.1.3 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1.3, i32 0, i64 1
  %776 = load i32* %arrayidx20.6.1.3, align 4
  %add.6.1.3 = add nsw i32 %776, %mul.6.1.3
  store i32 %add.6.1.3, i32* %arrayidx20.6.1.3, align 4
  br label %for.inc.6.1.3

for.inc.6.1.3:                                    ; preds = %for.inc.5.1.3
  %arrayidx11.7.1.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.1.3 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1.3, i32 0, i64 7
  %777 = load i32* %arrayidx12.7.1.3, align 4
  %arrayidx15.7.1.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1.3, i32 0, i64 1
  %778 = load i32* %arrayidx16.7.1.3, align 4
  %mul.7.1.3 = mul nsw i32 %777, %778
  %arrayidx19.7.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.1.3 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1.3, i32 0, i64 1
  %779 = load i32* %arrayidx20.7.1.3, align 4
  %add.7.1.3 = add nsw i32 %779, %mul.7.1.3
  store i32 %add.7.1.3, i32* %arrayidx20.7.1.3, align 4
  br label %for.inc.7.1.3

for.inc.7.1.3:                                    ; preds = %for.inc.6.1.3
  %arrayidx11.8.1.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.1.3 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1.3, i32 0, i64 8
  %780 = load i32* %arrayidx12.8.1.3, align 4
  %arrayidx15.8.1.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1.3, i32 0, i64 1
  %781 = load i32* %arrayidx16.8.1.3, align 4
  %mul.8.1.3 = mul nsw i32 %780, %781
  %arrayidx19.8.1.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.1.3 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1.3, i32 0, i64 1
  %782 = load i32* %arrayidx20.8.1.3, align 4
  %add.8.1.3 = add nsw i32 %782, %mul.8.1.3
  store i32 %add.8.1.3, i32* %arrayidx20.8.1.3, align 4
  br label %for.inc.8.1.3

for.inc.8.1.3:                                    ; preds = %for.inc.7.1.3
  br label %for.inc21.1.3

for.inc21.1.3:                                    ; preds = %for.inc.8.1.3
  %arrayidx.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.2.3 = getelementptr inbounds [9 x i32]* %arrayidx.2.3, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.3, align 4
  br label %for.body8.2.3

for.body8.2.3:                                    ; preds = %for.inc21.1.3
  %arrayidx11.214.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.215.3 = getelementptr inbounds [9 x i32]* %arrayidx11.214.3, i32 0, i64 0
  %783 = load i32* %arrayidx12.215.3, align 4
  %arrayidx16.216.3 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %784 = load i32* %arrayidx16.216.3, align 4
  %mul.217.3 = mul nsw i32 %783, %784
  %arrayidx19.219.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.220.3 = getelementptr inbounds [9 x i32]* %arrayidx19.219.3, i32 0, i64 2
  %785 = load i32* %arrayidx20.220.3, align 4
  %add.221.3 = add nsw i32 %785, %mul.217.3
  store i32 %add.221.3, i32* %arrayidx20.220.3, align 4
  br label %for.inc.222.3

for.inc.222.3:                                    ; preds = %for.body8.2.3
  %arrayidx11.1.2.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.2.3 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2.3, i32 0, i64 1
  %786 = load i32* %arrayidx12.1.2.3, align 4
  %arrayidx15.1.2.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2.3, i32 0, i64 2
  %787 = load i32* %arrayidx16.1.2.3, align 4
  %mul.1.2.3 = mul nsw i32 %786, %787
  %arrayidx19.1.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.2.3 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2.3, i32 0, i64 2
  %788 = load i32* %arrayidx20.1.2.3, align 4
  %add.1.2.3 = add nsw i32 %788, %mul.1.2.3
  store i32 %add.1.2.3, i32* %arrayidx20.1.2.3, align 4
  br label %for.inc.1.2.3

for.inc.1.2.3:                                    ; preds = %for.inc.222.3
  %arrayidx11.2.2.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.2.3 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2.3, i32 0, i64 2
  %789 = load i32* %arrayidx12.2.2.3, align 4
  %arrayidx15.2.2.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2.3, i32 0, i64 2
  %790 = load i32* %arrayidx16.2.2.3, align 4
  %mul.2.2.3 = mul nsw i32 %789, %790
  %arrayidx19.2.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.2.3 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2.3, i32 0, i64 2
  %791 = load i32* %arrayidx20.2.2.3, align 4
  %add.2.2.3 = add nsw i32 %791, %mul.2.2.3
  store i32 %add.2.2.3, i32* %arrayidx20.2.2.3, align 4
  br label %for.inc.2.2.3

for.inc.2.2.3:                                    ; preds = %for.inc.1.2.3
  %arrayidx11.3.2.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.2.3 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2.3, i32 0, i64 3
  %792 = load i32* %arrayidx12.3.2.3, align 4
  %arrayidx15.3.2.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2.3, i32 0, i64 2
  %793 = load i32* %arrayidx16.3.2.3, align 4
  %mul.3.2.3 = mul nsw i32 %792, %793
  %arrayidx19.3.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.2.3 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2.3, i32 0, i64 2
  %794 = load i32* %arrayidx20.3.2.3, align 4
  %add.3.2.3 = add nsw i32 %794, %mul.3.2.3
  store i32 %add.3.2.3, i32* %arrayidx20.3.2.3, align 4
  br label %for.inc.3.2.3

for.inc.3.2.3:                                    ; preds = %for.inc.2.2.3
  %arrayidx11.4.2.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.2.3 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2.3, i32 0, i64 4
  %795 = load i32* %arrayidx12.4.2.3, align 4
  %arrayidx15.4.2.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2.3, i32 0, i64 2
  %796 = load i32* %arrayidx16.4.2.3, align 4
  %mul.4.2.3 = mul nsw i32 %795, %796
  %arrayidx19.4.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.2.3 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2.3, i32 0, i64 2
  %797 = load i32* %arrayidx20.4.2.3, align 4
  %add.4.2.3 = add nsw i32 %797, %mul.4.2.3
  store i32 %add.4.2.3, i32* %arrayidx20.4.2.3, align 4
  br label %for.inc.4.2.3

for.inc.4.2.3:                                    ; preds = %for.inc.3.2.3
  %arrayidx11.5.2.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.2.3 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2.3, i32 0, i64 5
  %798 = load i32* %arrayidx12.5.2.3, align 4
  %arrayidx15.5.2.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2.3, i32 0, i64 2
  %799 = load i32* %arrayidx16.5.2.3, align 4
  %mul.5.2.3 = mul nsw i32 %798, %799
  %arrayidx19.5.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.2.3 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2.3, i32 0, i64 2
  %800 = load i32* %arrayidx20.5.2.3, align 4
  %add.5.2.3 = add nsw i32 %800, %mul.5.2.3
  store i32 %add.5.2.3, i32* %arrayidx20.5.2.3, align 4
  br label %for.inc.5.2.3

for.inc.5.2.3:                                    ; preds = %for.inc.4.2.3
  %arrayidx11.6.2.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.2.3 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2.3, i32 0, i64 6
  %801 = load i32* %arrayidx12.6.2.3, align 4
  %arrayidx15.6.2.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2.3, i32 0, i64 2
  %802 = load i32* %arrayidx16.6.2.3, align 4
  %mul.6.2.3 = mul nsw i32 %801, %802
  %arrayidx19.6.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.2.3 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2.3, i32 0, i64 2
  %803 = load i32* %arrayidx20.6.2.3, align 4
  %add.6.2.3 = add nsw i32 %803, %mul.6.2.3
  store i32 %add.6.2.3, i32* %arrayidx20.6.2.3, align 4
  br label %for.inc.6.2.3

for.inc.6.2.3:                                    ; preds = %for.inc.5.2.3
  %arrayidx11.7.2.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.2.3 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2.3, i32 0, i64 7
  %804 = load i32* %arrayidx12.7.2.3, align 4
  %arrayidx15.7.2.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2.3, i32 0, i64 2
  %805 = load i32* %arrayidx16.7.2.3, align 4
  %mul.7.2.3 = mul nsw i32 %804, %805
  %arrayidx19.7.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.2.3 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2.3, i32 0, i64 2
  %806 = load i32* %arrayidx20.7.2.3, align 4
  %add.7.2.3 = add nsw i32 %806, %mul.7.2.3
  store i32 %add.7.2.3, i32* %arrayidx20.7.2.3, align 4
  br label %for.inc.7.2.3

for.inc.7.2.3:                                    ; preds = %for.inc.6.2.3
  %arrayidx11.8.2.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.2.3 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2.3, i32 0, i64 8
  %807 = load i32* %arrayidx12.8.2.3, align 4
  %arrayidx15.8.2.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2.3, i32 0, i64 2
  %808 = load i32* %arrayidx16.8.2.3, align 4
  %mul.8.2.3 = mul nsw i32 %807, %808
  %arrayidx19.8.2.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.2.3 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2.3, i32 0, i64 2
  %809 = load i32* %arrayidx20.8.2.3, align 4
  %add.8.2.3 = add nsw i32 %809, %mul.8.2.3
  store i32 %add.8.2.3, i32* %arrayidx20.8.2.3, align 4
  br label %for.inc.8.2.3

for.inc.8.2.3:                                    ; preds = %for.inc.7.2.3
  br label %for.inc21.2.3

for.inc21.2.3:                                    ; preds = %for.inc.8.2.3
  %arrayidx.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.3.3 = getelementptr inbounds [9 x i32]* %arrayidx.3.3, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.3, align 4
  br label %for.body8.3.3

for.body8.3.3:                                    ; preds = %for.inc21.2.3
  %arrayidx11.324.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.325.3 = getelementptr inbounds [9 x i32]* %arrayidx11.324.3, i32 0, i64 0
  %810 = load i32* %arrayidx12.325.3, align 4
  %arrayidx16.326.3 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %811 = load i32* %arrayidx16.326.3, align 4
  %mul.327.3 = mul nsw i32 %810, %811
  %arrayidx19.329.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.330.3 = getelementptr inbounds [9 x i32]* %arrayidx19.329.3, i32 0, i64 3
  %812 = load i32* %arrayidx20.330.3, align 4
  %add.331.3 = add nsw i32 %812, %mul.327.3
  store i32 %add.331.3, i32* %arrayidx20.330.3, align 4
  br label %for.inc.332.3

for.inc.332.3:                                    ; preds = %for.body8.3.3
  %arrayidx11.1.3.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.3.3 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3.3, i32 0, i64 1
  %813 = load i32* %arrayidx12.1.3.3, align 4
  %arrayidx15.1.3.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3.3, i32 0, i64 3
  %814 = load i32* %arrayidx16.1.3.3, align 4
  %mul.1.3.3 = mul nsw i32 %813, %814
  %arrayidx19.1.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.3.3 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3.3, i32 0, i64 3
  %815 = load i32* %arrayidx20.1.3.3, align 4
  %add.1.3.3 = add nsw i32 %815, %mul.1.3.3
  store i32 %add.1.3.3, i32* %arrayidx20.1.3.3, align 4
  br label %for.inc.1.3.3

for.inc.1.3.3:                                    ; preds = %for.inc.332.3
  %arrayidx11.2.3.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.3.3 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3.3, i32 0, i64 2
  %816 = load i32* %arrayidx12.2.3.3, align 4
  %arrayidx15.2.3.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3.3, i32 0, i64 3
  %817 = load i32* %arrayidx16.2.3.3, align 4
  %mul.2.3.3 = mul nsw i32 %816, %817
  %arrayidx19.2.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.3.3 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3.3, i32 0, i64 3
  %818 = load i32* %arrayidx20.2.3.3, align 4
  %add.2.3.3 = add nsw i32 %818, %mul.2.3.3
  store i32 %add.2.3.3, i32* %arrayidx20.2.3.3, align 4
  br label %for.inc.2.3.3

for.inc.2.3.3:                                    ; preds = %for.inc.1.3.3
  %arrayidx11.3.3.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.3.3 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3.3, i32 0, i64 3
  %819 = load i32* %arrayidx12.3.3.3, align 4
  %arrayidx15.3.3.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3.3, i32 0, i64 3
  %820 = load i32* %arrayidx16.3.3.3, align 4
  %mul.3.3.3 = mul nsw i32 %819, %820
  %arrayidx19.3.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.3.3 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3.3, i32 0, i64 3
  %821 = load i32* %arrayidx20.3.3.3, align 4
  %add.3.3.3 = add nsw i32 %821, %mul.3.3.3
  store i32 %add.3.3.3, i32* %arrayidx20.3.3.3, align 4
  br label %for.inc.3.3.3

for.inc.3.3.3:                                    ; preds = %for.inc.2.3.3
  %arrayidx11.4.3.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.3.3 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3.3, i32 0, i64 4
  %822 = load i32* %arrayidx12.4.3.3, align 4
  %arrayidx15.4.3.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3.3, i32 0, i64 3
  %823 = load i32* %arrayidx16.4.3.3, align 4
  %mul.4.3.3 = mul nsw i32 %822, %823
  %arrayidx19.4.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.3.3 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3.3, i32 0, i64 3
  %824 = load i32* %arrayidx20.4.3.3, align 4
  %add.4.3.3 = add nsw i32 %824, %mul.4.3.3
  store i32 %add.4.3.3, i32* %arrayidx20.4.3.3, align 4
  br label %for.inc.4.3.3

for.inc.4.3.3:                                    ; preds = %for.inc.3.3.3
  %arrayidx11.5.3.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.3.3 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3.3, i32 0, i64 5
  %825 = load i32* %arrayidx12.5.3.3, align 4
  %arrayidx15.5.3.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3.3, i32 0, i64 3
  %826 = load i32* %arrayidx16.5.3.3, align 4
  %mul.5.3.3 = mul nsw i32 %825, %826
  %arrayidx19.5.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.3.3 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3.3, i32 0, i64 3
  %827 = load i32* %arrayidx20.5.3.3, align 4
  %add.5.3.3 = add nsw i32 %827, %mul.5.3.3
  store i32 %add.5.3.3, i32* %arrayidx20.5.3.3, align 4
  br label %for.inc.5.3.3

for.inc.5.3.3:                                    ; preds = %for.inc.4.3.3
  %arrayidx11.6.3.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.3.3 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3.3, i32 0, i64 6
  %828 = load i32* %arrayidx12.6.3.3, align 4
  %arrayidx15.6.3.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3.3, i32 0, i64 3
  %829 = load i32* %arrayidx16.6.3.3, align 4
  %mul.6.3.3 = mul nsw i32 %828, %829
  %arrayidx19.6.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.3.3 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3.3, i32 0, i64 3
  %830 = load i32* %arrayidx20.6.3.3, align 4
  %add.6.3.3 = add nsw i32 %830, %mul.6.3.3
  store i32 %add.6.3.3, i32* %arrayidx20.6.3.3, align 4
  br label %for.inc.6.3.3

for.inc.6.3.3:                                    ; preds = %for.inc.5.3.3
  %arrayidx11.7.3.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.3.3 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3.3, i32 0, i64 7
  %831 = load i32* %arrayidx12.7.3.3, align 4
  %arrayidx15.7.3.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3.3, i32 0, i64 3
  %832 = load i32* %arrayidx16.7.3.3, align 4
  %mul.7.3.3 = mul nsw i32 %831, %832
  %arrayidx19.7.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.3.3 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3.3, i32 0, i64 3
  %833 = load i32* %arrayidx20.7.3.3, align 4
  %add.7.3.3 = add nsw i32 %833, %mul.7.3.3
  store i32 %add.7.3.3, i32* %arrayidx20.7.3.3, align 4
  br label %for.inc.7.3.3

for.inc.7.3.3:                                    ; preds = %for.inc.6.3.3
  %arrayidx11.8.3.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.3.3 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3.3, i32 0, i64 8
  %834 = load i32* %arrayidx12.8.3.3, align 4
  %arrayidx15.8.3.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3.3, i32 0, i64 3
  %835 = load i32* %arrayidx16.8.3.3, align 4
  %mul.8.3.3 = mul nsw i32 %834, %835
  %arrayidx19.8.3.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.3.3 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3.3, i32 0, i64 3
  %836 = load i32* %arrayidx20.8.3.3, align 4
  %add.8.3.3 = add nsw i32 %836, %mul.8.3.3
  store i32 %add.8.3.3, i32* %arrayidx20.8.3.3, align 4
  br label %for.inc.8.3.3

for.inc.8.3.3:                                    ; preds = %for.inc.7.3.3
  br label %for.inc21.3.3

for.inc21.3.3:                                    ; preds = %for.inc.8.3.3
  %arrayidx.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.4.3 = getelementptr inbounds [9 x i32]* %arrayidx.4.3, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.3, align 4
  br label %for.body8.4.3

for.body8.4.3:                                    ; preds = %for.inc21.3.3
  %arrayidx11.434.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.435.3 = getelementptr inbounds [9 x i32]* %arrayidx11.434.3, i32 0, i64 0
  %837 = load i32* %arrayidx12.435.3, align 4
  %arrayidx16.436.3 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %838 = load i32* %arrayidx16.436.3, align 4
  %mul.437.3 = mul nsw i32 %837, %838
  %arrayidx19.439.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.440.3 = getelementptr inbounds [9 x i32]* %arrayidx19.439.3, i32 0, i64 4
  %839 = load i32* %arrayidx20.440.3, align 4
  %add.441.3 = add nsw i32 %839, %mul.437.3
  store i32 %add.441.3, i32* %arrayidx20.440.3, align 4
  br label %for.inc.442.3

for.inc.442.3:                                    ; preds = %for.body8.4.3
  %arrayidx11.1.4.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.4.3 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4.3, i32 0, i64 1
  %840 = load i32* %arrayidx12.1.4.3, align 4
  %arrayidx15.1.4.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4.3, i32 0, i64 4
  %841 = load i32* %arrayidx16.1.4.3, align 4
  %mul.1.4.3 = mul nsw i32 %840, %841
  %arrayidx19.1.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.4.3 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4.3, i32 0, i64 4
  %842 = load i32* %arrayidx20.1.4.3, align 4
  %add.1.4.3 = add nsw i32 %842, %mul.1.4.3
  store i32 %add.1.4.3, i32* %arrayidx20.1.4.3, align 4
  br label %for.inc.1.4.3

for.inc.1.4.3:                                    ; preds = %for.inc.442.3
  %arrayidx11.2.4.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.4.3 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4.3, i32 0, i64 2
  %843 = load i32* %arrayidx12.2.4.3, align 4
  %arrayidx15.2.4.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4.3, i32 0, i64 4
  %844 = load i32* %arrayidx16.2.4.3, align 4
  %mul.2.4.3 = mul nsw i32 %843, %844
  %arrayidx19.2.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.4.3 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4.3, i32 0, i64 4
  %845 = load i32* %arrayidx20.2.4.3, align 4
  %add.2.4.3 = add nsw i32 %845, %mul.2.4.3
  store i32 %add.2.4.3, i32* %arrayidx20.2.4.3, align 4
  br label %for.inc.2.4.3

for.inc.2.4.3:                                    ; preds = %for.inc.1.4.3
  %arrayidx11.3.4.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.4.3 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4.3, i32 0, i64 3
  %846 = load i32* %arrayidx12.3.4.3, align 4
  %arrayidx15.3.4.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4.3, i32 0, i64 4
  %847 = load i32* %arrayidx16.3.4.3, align 4
  %mul.3.4.3 = mul nsw i32 %846, %847
  %arrayidx19.3.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.4.3 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4.3, i32 0, i64 4
  %848 = load i32* %arrayidx20.3.4.3, align 4
  %add.3.4.3 = add nsw i32 %848, %mul.3.4.3
  store i32 %add.3.4.3, i32* %arrayidx20.3.4.3, align 4
  br label %for.inc.3.4.3

for.inc.3.4.3:                                    ; preds = %for.inc.2.4.3
  %arrayidx11.4.4.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.4.3 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4.3, i32 0, i64 4
  %849 = load i32* %arrayidx12.4.4.3, align 4
  %arrayidx15.4.4.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4.3, i32 0, i64 4
  %850 = load i32* %arrayidx16.4.4.3, align 4
  %mul.4.4.3 = mul nsw i32 %849, %850
  %arrayidx19.4.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.4.3 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4.3, i32 0, i64 4
  %851 = load i32* %arrayidx20.4.4.3, align 4
  %add.4.4.3 = add nsw i32 %851, %mul.4.4.3
  store i32 %add.4.4.3, i32* %arrayidx20.4.4.3, align 4
  br label %for.inc.4.4.3

for.inc.4.4.3:                                    ; preds = %for.inc.3.4.3
  %arrayidx11.5.4.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.4.3 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4.3, i32 0, i64 5
  %852 = load i32* %arrayidx12.5.4.3, align 4
  %arrayidx15.5.4.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4.3, i32 0, i64 4
  %853 = load i32* %arrayidx16.5.4.3, align 4
  %mul.5.4.3 = mul nsw i32 %852, %853
  %arrayidx19.5.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.4.3 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4.3, i32 0, i64 4
  %854 = load i32* %arrayidx20.5.4.3, align 4
  %add.5.4.3 = add nsw i32 %854, %mul.5.4.3
  store i32 %add.5.4.3, i32* %arrayidx20.5.4.3, align 4
  br label %for.inc.5.4.3

for.inc.5.4.3:                                    ; preds = %for.inc.4.4.3
  %arrayidx11.6.4.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.4.3 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4.3, i32 0, i64 6
  %855 = load i32* %arrayidx12.6.4.3, align 4
  %arrayidx15.6.4.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4.3, i32 0, i64 4
  %856 = load i32* %arrayidx16.6.4.3, align 4
  %mul.6.4.3 = mul nsw i32 %855, %856
  %arrayidx19.6.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.4.3 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4.3, i32 0, i64 4
  %857 = load i32* %arrayidx20.6.4.3, align 4
  %add.6.4.3 = add nsw i32 %857, %mul.6.4.3
  store i32 %add.6.4.3, i32* %arrayidx20.6.4.3, align 4
  br label %for.inc.6.4.3

for.inc.6.4.3:                                    ; preds = %for.inc.5.4.3
  %arrayidx11.7.4.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.4.3 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4.3, i32 0, i64 7
  %858 = load i32* %arrayidx12.7.4.3, align 4
  %arrayidx15.7.4.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4.3, i32 0, i64 4
  %859 = load i32* %arrayidx16.7.4.3, align 4
  %mul.7.4.3 = mul nsw i32 %858, %859
  %arrayidx19.7.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.4.3 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4.3, i32 0, i64 4
  %860 = load i32* %arrayidx20.7.4.3, align 4
  %add.7.4.3 = add nsw i32 %860, %mul.7.4.3
  store i32 %add.7.4.3, i32* %arrayidx20.7.4.3, align 4
  br label %for.inc.7.4.3

for.inc.7.4.3:                                    ; preds = %for.inc.6.4.3
  %arrayidx11.8.4.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.4.3 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4.3, i32 0, i64 8
  %861 = load i32* %arrayidx12.8.4.3, align 4
  %arrayidx15.8.4.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4.3, i32 0, i64 4
  %862 = load i32* %arrayidx16.8.4.3, align 4
  %mul.8.4.3 = mul nsw i32 %861, %862
  %arrayidx19.8.4.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.4.3 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4.3, i32 0, i64 4
  %863 = load i32* %arrayidx20.8.4.3, align 4
  %add.8.4.3 = add nsw i32 %863, %mul.8.4.3
  store i32 %add.8.4.3, i32* %arrayidx20.8.4.3, align 4
  br label %for.inc.8.4.3

for.inc.8.4.3:                                    ; preds = %for.inc.7.4.3
  br label %for.inc21.4.3

for.inc21.4.3:                                    ; preds = %for.inc.8.4.3
  %arrayidx.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.5.3 = getelementptr inbounds [9 x i32]* %arrayidx.5.3, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.3, align 4
  br label %for.body8.5.3

for.body8.5.3:                                    ; preds = %for.inc21.4.3
  %arrayidx11.544.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.545.3 = getelementptr inbounds [9 x i32]* %arrayidx11.544.3, i32 0, i64 0
  %864 = load i32* %arrayidx12.545.3, align 4
  %arrayidx16.546.3 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %865 = load i32* %arrayidx16.546.3, align 4
  %mul.547.3 = mul nsw i32 %864, %865
  %arrayidx19.549.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.550.3 = getelementptr inbounds [9 x i32]* %arrayidx19.549.3, i32 0, i64 5
  %866 = load i32* %arrayidx20.550.3, align 4
  %add.551.3 = add nsw i32 %866, %mul.547.3
  store i32 %add.551.3, i32* %arrayidx20.550.3, align 4
  br label %for.inc.552.3

for.inc.552.3:                                    ; preds = %for.body8.5.3
  %arrayidx11.1.5.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.5.3 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5.3, i32 0, i64 1
  %867 = load i32* %arrayidx12.1.5.3, align 4
  %arrayidx15.1.5.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5.3, i32 0, i64 5
  %868 = load i32* %arrayidx16.1.5.3, align 4
  %mul.1.5.3 = mul nsw i32 %867, %868
  %arrayidx19.1.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.5.3 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5.3, i32 0, i64 5
  %869 = load i32* %arrayidx20.1.5.3, align 4
  %add.1.5.3 = add nsw i32 %869, %mul.1.5.3
  store i32 %add.1.5.3, i32* %arrayidx20.1.5.3, align 4
  br label %for.inc.1.5.3

for.inc.1.5.3:                                    ; preds = %for.inc.552.3
  %arrayidx11.2.5.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.5.3 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5.3, i32 0, i64 2
  %870 = load i32* %arrayidx12.2.5.3, align 4
  %arrayidx15.2.5.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5.3, i32 0, i64 5
  %871 = load i32* %arrayidx16.2.5.3, align 4
  %mul.2.5.3 = mul nsw i32 %870, %871
  %arrayidx19.2.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.5.3 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5.3, i32 0, i64 5
  %872 = load i32* %arrayidx20.2.5.3, align 4
  %add.2.5.3 = add nsw i32 %872, %mul.2.5.3
  store i32 %add.2.5.3, i32* %arrayidx20.2.5.3, align 4
  br label %for.inc.2.5.3

for.inc.2.5.3:                                    ; preds = %for.inc.1.5.3
  %arrayidx11.3.5.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.5.3 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5.3, i32 0, i64 3
  %873 = load i32* %arrayidx12.3.5.3, align 4
  %arrayidx15.3.5.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5.3, i32 0, i64 5
  %874 = load i32* %arrayidx16.3.5.3, align 4
  %mul.3.5.3 = mul nsw i32 %873, %874
  %arrayidx19.3.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.5.3 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5.3, i32 0, i64 5
  %875 = load i32* %arrayidx20.3.5.3, align 4
  %add.3.5.3 = add nsw i32 %875, %mul.3.5.3
  store i32 %add.3.5.3, i32* %arrayidx20.3.5.3, align 4
  br label %for.inc.3.5.3

for.inc.3.5.3:                                    ; preds = %for.inc.2.5.3
  %arrayidx11.4.5.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.5.3 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5.3, i32 0, i64 4
  %876 = load i32* %arrayidx12.4.5.3, align 4
  %arrayidx15.4.5.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5.3, i32 0, i64 5
  %877 = load i32* %arrayidx16.4.5.3, align 4
  %mul.4.5.3 = mul nsw i32 %876, %877
  %arrayidx19.4.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.5.3 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5.3, i32 0, i64 5
  %878 = load i32* %arrayidx20.4.5.3, align 4
  %add.4.5.3 = add nsw i32 %878, %mul.4.5.3
  store i32 %add.4.5.3, i32* %arrayidx20.4.5.3, align 4
  br label %for.inc.4.5.3

for.inc.4.5.3:                                    ; preds = %for.inc.3.5.3
  %arrayidx11.5.5.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.5.3 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5.3, i32 0, i64 5
  %879 = load i32* %arrayidx12.5.5.3, align 4
  %arrayidx15.5.5.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5.3, i32 0, i64 5
  %880 = load i32* %arrayidx16.5.5.3, align 4
  %mul.5.5.3 = mul nsw i32 %879, %880
  %arrayidx19.5.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.5.3 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5.3, i32 0, i64 5
  %881 = load i32* %arrayidx20.5.5.3, align 4
  %add.5.5.3 = add nsw i32 %881, %mul.5.5.3
  store i32 %add.5.5.3, i32* %arrayidx20.5.5.3, align 4
  br label %for.inc.5.5.3

for.inc.5.5.3:                                    ; preds = %for.inc.4.5.3
  %arrayidx11.6.5.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.5.3 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5.3, i32 0, i64 6
  %882 = load i32* %arrayidx12.6.5.3, align 4
  %arrayidx15.6.5.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5.3, i32 0, i64 5
  %883 = load i32* %arrayidx16.6.5.3, align 4
  %mul.6.5.3 = mul nsw i32 %882, %883
  %arrayidx19.6.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.5.3 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5.3, i32 0, i64 5
  %884 = load i32* %arrayidx20.6.5.3, align 4
  %add.6.5.3 = add nsw i32 %884, %mul.6.5.3
  store i32 %add.6.5.3, i32* %arrayidx20.6.5.3, align 4
  br label %for.inc.6.5.3

for.inc.6.5.3:                                    ; preds = %for.inc.5.5.3
  %arrayidx11.7.5.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.5.3 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5.3, i32 0, i64 7
  %885 = load i32* %arrayidx12.7.5.3, align 4
  %arrayidx15.7.5.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5.3, i32 0, i64 5
  %886 = load i32* %arrayidx16.7.5.3, align 4
  %mul.7.5.3 = mul nsw i32 %885, %886
  %arrayidx19.7.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.5.3 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5.3, i32 0, i64 5
  %887 = load i32* %arrayidx20.7.5.3, align 4
  %add.7.5.3 = add nsw i32 %887, %mul.7.5.3
  store i32 %add.7.5.3, i32* %arrayidx20.7.5.3, align 4
  br label %for.inc.7.5.3

for.inc.7.5.3:                                    ; preds = %for.inc.6.5.3
  %arrayidx11.8.5.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.5.3 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5.3, i32 0, i64 8
  %888 = load i32* %arrayidx12.8.5.3, align 4
  %arrayidx15.8.5.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5.3, i32 0, i64 5
  %889 = load i32* %arrayidx16.8.5.3, align 4
  %mul.8.5.3 = mul nsw i32 %888, %889
  %arrayidx19.8.5.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.5.3 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5.3, i32 0, i64 5
  %890 = load i32* %arrayidx20.8.5.3, align 4
  %add.8.5.3 = add nsw i32 %890, %mul.8.5.3
  store i32 %add.8.5.3, i32* %arrayidx20.8.5.3, align 4
  br label %for.inc.8.5.3

for.inc.8.5.3:                                    ; preds = %for.inc.7.5.3
  br label %for.inc21.5.3

for.inc21.5.3:                                    ; preds = %for.inc.8.5.3
  %arrayidx.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.6.3 = getelementptr inbounds [9 x i32]* %arrayidx.6.3, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.3, align 4
  br label %for.body8.6.3

for.body8.6.3:                                    ; preds = %for.inc21.5.3
  %arrayidx11.654.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.655.3 = getelementptr inbounds [9 x i32]* %arrayidx11.654.3, i32 0, i64 0
  %891 = load i32* %arrayidx12.655.3, align 4
  %arrayidx16.656.3 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %892 = load i32* %arrayidx16.656.3, align 4
  %mul.657.3 = mul nsw i32 %891, %892
  %arrayidx19.659.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.660.3 = getelementptr inbounds [9 x i32]* %arrayidx19.659.3, i32 0, i64 6
  %893 = load i32* %arrayidx20.660.3, align 4
  %add.661.3 = add nsw i32 %893, %mul.657.3
  store i32 %add.661.3, i32* %arrayidx20.660.3, align 4
  br label %for.inc.662.3

for.inc.662.3:                                    ; preds = %for.body8.6.3
  %arrayidx11.1.6.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.6.3 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6.3, i32 0, i64 1
  %894 = load i32* %arrayidx12.1.6.3, align 4
  %arrayidx15.1.6.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6.3, i32 0, i64 6
  %895 = load i32* %arrayidx16.1.6.3, align 4
  %mul.1.6.3 = mul nsw i32 %894, %895
  %arrayidx19.1.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.6.3 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6.3, i32 0, i64 6
  %896 = load i32* %arrayidx20.1.6.3, align 4
  %add.1.6.3 = add nsw i32 %896, %mul.1.6.3
  store i32 %add.1.6.3, i32* %arrayidx20.1.6.3, align 4
  br label %for.inc.1.6.3

for.inc.1.6.3:                                    ; preds = %for.inc.662.3
  %arrayidx11.2.6.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.6.3 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6.3, i32 0, i64 2
  %897 = load i32* %arrayidx12.2.6.3, align 4
  %arrayidx15.2.6.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6.3, i32 0, i64 6
  %898 = load i32* %arrayidx16.2.6.3, align 4
  %mul.2.6.3 = mul nsw i32 %897, %898
  %arrayidx19.2.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.6.3 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6.3, i32 0, i64 6
  %899 = load i32* %arrayidx20.2.6.3, align 4
  %add.2.6.3 = add nsw i32 %899, %mul.2.6.3
  store i32 %add.2.6.3, i32* %arrayidx20.2.6.3, align 4
  br label %for.inc.2.6.3

for.inc.2.6.3:                                    ; preds = %for.inc.1.6.3
  %arrayidx11.3.6.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.6.3 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6.3, i32 0, i64 3
  %900 = load i32* %arrayidx12.3.6.3, align 4
  %arrayidx15.3.6.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6.3, i32 0, i64 6
  %901 = load i32* %arrayidx16.3.6.3, align 4
  %mul.3.6.3 = mul nsw i32 %900, %901
  %arrayidx19.3.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.6.3 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6.3, i32 0, i64 6
  %902 = load i32* %arrayidx20.3.6.3, align 4
  %add.3.6.3 = add nsw i32 %902, %mul.3.6.3
  store i32 %add.3.6.3, i32* %arrayidx20.3.6.3, align 4
  br label %for.inc.3.6.3

for.inc.3.6.3:                                    ; preds = %for.inc.2.6.3
  %arrayidx11.4.6.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.6.3 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6.3, i32 0, i64 4
  %903 = load i32* %arrayidx12.4.6.3, align 4
  %arrayidx15.4.6.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6.3, i32 0, i64 6
  %904 = load i32* %arrayidx16.4.6.3, align 4
  %mul.4.6.3 = mul nsw i32 %903, %904
  %arrayidx19.4.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.6.3 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6.3, i32 0, i64 6
  %905 = load i32* %arrayidx20.4.6.3, align 4
  %add.4.6.3 = add nsw i32 %905, %mul.4.6.3
  store i32 %add.4.6.3, i32* %arrayidx20.4.6.3, align 4
  br label %for.inc.4.6.3

for.inc.4.6.3:                                    ; preds = %for.inc.3.6.3
  %arrayidx11.5.6.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.6.3 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6.3, i32 0, i64 5
  %906 = load i32* %arrayidx12.5.6.3, align 4
  %arrayidx15.5.6.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6.3, i32 0, i64 6
  %907 = load i32* %arrayidx16.5.6.3, align 4
  %mul.5.6.3 = mul nsw i32 %906, %907
  %arrayidx19.5.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.6.3 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6.3, i32 0, i64 6
  %908 = load i32* %arrayidx20.5.6.3, align 4
  %add.5.6.3 = add nsw i32 %908, %mul.5.6.3
  store i32 %add.5.6.3, i32* %arrayidx20.5.6.3, align 4
  br label %for.inc.5.6.3

for.inc.5.6.3:                                    ; preds = %for.inc.4.6.3
  %arrayidx11.6.6.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.6.3 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6.3, i32 0, i64 6
  %909 = load i32* %arrayidx12.6.6.3, align 4
  %arrayidx15.6.6.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6.3, i32 0, i64 6
  %910 = load i32* %arrayidx16.6.6.3, align 4
  %mul.6.6.3 = mul nsw i32 %909, %910
  %arrayidx19.6.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.6.3 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6.3, i32 0, i64 6
  %911 = load i32* %arrayidx20.6.6.3, align 4
  %add.6.6.3 = add nsw i32 %911, %mul.6.6.3
  store i32 %add.6.6.3, i32* %arrayidx20.6.6.3, align 4
  br label %for.inc.6.6.3

for.inc.6.6.3:                                    ; preds = %for.inc.5.6.3
  %arrayidx11.7.6.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.6.3 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6.3, i32 0, i64 7
  %912 = load i32* %arrayidx12.7.6.3, align 4
  %arrayidx15.7.6.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6.3, i32 0, i64 6
  %913 = load i32* %arrayidx16.7.6.3, align 4
  %mul.7.6.3 = mul nsw i32 %912, %913
  %arrayidx19.7.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.6.3 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6.3, i32 0, i64 6
  %914 = load i32* %arrayidx20.7.6.3, align 4
  %add.7.6.3 = add nsw i32 %914, %mul.7.6.3
  store i32 %add.7.6.3, i32* %arrayidx20.7.6.3, align 4
  br label %for.inc.7.6.3

for.inc.7.6.3:                                    ; preds = %for.inc.6.6.3
  %arrayidx11.8.6.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.6.3 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6.3, i32 0, i64 8
  %915 = load i32* %arrayidx12.8.6.3, align 4
  %arrayidx15.8.6.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6.3, i32 0, i64 6
  %916 = load i32* %arrayidx16.8.6.3, align 4
  %mul.8.6.3 = mul nsw i32 %915, %916
  %arrayidx19.8.6.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.6.3 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6.3, i32 0, i64 6
  %917 = load i32* %arrayidx20.8.6.3, align 4
  %add.8.6.3 = add nsw i32 %917, %mul.8.6.3
  store i32 %add.8.6.3, i32* %arrayidx20.8.6.3, align 4
  br label %for.inc.8.6.3

for.inc.8.6.3:                                    ; preds = %for.inc.7.6.3
  br label %for.inc21.6.3

for.inc21.6.3:                                    ; preds = %for.inc.8.6.3
  %arrayidx.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.7.3 = getelementptr inbounds [9 x i32]* %arrayidx.7.3, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.3, align 4
  br label %for.body8.7.3

for.body8.7.3:                                    ; preds = %for.inc21.6.3
  %arrayidx11.764.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.765.3 = getelementptr inbounds [9 x i32]* %arrayidx11.764.3, i32 0, i64 0
  %918 = load i32* %arrayidx12.765.3, align 4
  %arrayidx16.766.3 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %919 = load i32* %arrayidx16.766.3, align 4
  %mul.767.3 = mul nsw i32 %918, %919
  %arrayidx19.769.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.770.3 = getelementptr inbounds [9 x i32]* %arrayidx19.769.3, i32 0, i64 7
  %920 = load i32* %arrayidx20.770.3, align 4
  %add.771.3 = add nsw i32 %920, %mul.767.3
  store i32 %add.771.3, i32* %arrayidx20.770.3, align 4
  br label %for.inc.772.3

for.inc.772.3:                                    ; preds = %for.body8.7.3
  %arrayidx11.1.7.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.7.3 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7.3, i32 0, i64 1
  %921 = load i32* %arrayidx12.1.7.3, align 4
  %arrayidx15.1.7.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7.3, i32 0, i64 7
  %922 = load i32* %arrayidx16.1.7.3, align 4
  %mul.1.7.3 = mul nsw i32 %921, %922
  %arrayidx19.1.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.7.3 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7.3, i32 0, i64 7
  %923 = load i32* %arrayidx20.1.7.3, align 4
  %add.1.7.3 = add nsw i32 %923, %mul.1.7.3
  store i32 %add.1.7.3, i32* %arrayidx20.1.7.3, align 4
  br label %for.inc.1.7.3

for.inc.1.7.3:                                    ; preds = %for.inc.772.3
  %arrayidx11.2.7.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.7.3 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7.3, i32 0, i64 2
  %924 = load i32* %arrayidx12.2.7.3, align 4
  %arrayidx15.2.7.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7.3, i32 0, i64 7
  %925 = load i32* %arrayidx16.2.7.3, align 4
  %mul.2.7.3 = mul nsw i32 %924, %925
  %arrayidx19.2.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.7.3 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7.3, i32 0, i64 7
  %926 = load i32* %arrayidx20.2.7.3, align 4
  %add.2.7.3 = add nsw i32 %926, %mul.2.7.3
  store i32 %add.2.7.3, i32* %arrayidx20.2.7.3, align 4
  br label %for.inc.2.7.3

for.inc.2.7.3:                                    ; preds = %for.inc.1.7.3
  %arrayidx11.3.7.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.7.3 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7.3, i32 0, i64 3
  %927 = load i32* %arrayidx12.3.7.3, align 4
  %arrayidx15.3.7.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7.3, i32 0, i64 7
  %928 = load i32* %arrayidx16.3.7.3, align 4
  %mul.3.7.3 = mul nsw i32 %927, %928
  %arrayidx19.3.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.7.3 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7.3, i32 0, i64 7
  %929 = load i32* %arrayidx20.3.7.3, align 4
  %add.3.7.3 = add nsw i32 %929, %mul.3.7.3
  store i32 %add.3.7.3, i32* %arrayidx20.3.7.3, align 4
  br label %for.inc.3.7.3

for.inc.3.7.3:                                    ; preds = %for.inc.2.7.3
  %arrayidx11.4.7.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.7.3 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7.3, i32 0, i64 4
  %930 = load i32* %arrayidx12.4.7.3, align 4
  %arrayidx15.4.7.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7.3, i32 0, i64 7
  %931 = load i32* %arrayidx16.4.7.3, align 4
  %mul.4.7.3 = mul nsw i32 %930, %931
  %arrayidx19.4.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.7.3 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7.3, i32 0, i64 7
  %932 = load i32* %arrayidx20.4.7.3, align 4
  %add.4.7.3 = add nsw i32 %932, %mul.4.7.3
  store i32 %add.4.7.3, i32* %arrayidx20.4.7.3, align 4
  br label %for.inc.4.7.3

for.inc.4.7.3:                                    ; preds = %for.inc.3.7.3
  %arrayidx11.5.7.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.7.3 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7.3, i32 0, i64 5
  %933 = load i32* %arrayidx12.5.7.3, align 4
  %arrayidx15.5.7.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7.3, i32 0, i64 7
  %934 = load i32* %arrayidx16.5.7.3, align 4
  %mul.5.7.3 = mul nsw i32 %933, %934
  %arrayidx19.5.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.7.3 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7.3, i32 0, i64 7
  %935 = load i32* %arrayidx20.5.7.3, align 4
  %add.5.7.3 = add nsw i32 %935, %mul.5.7.3
  store i32 %add.5.7.3, i32* %arrayidx20.5.7.3, align 4
  br label %for.inc.5.7.3

for.inc.5.7.3:                                    ; preds = %for.inc.4.7.3
  %arrayidx11.6.7.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.7.3 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7.3, i32 0, i64 6
  %936 = load i32* %arrayidx12.6.7.3, align 4
  %arrayidx15.6.7.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7.3, i32 0, i64 7
  %937 = load i32* %arrayidx16.6.7.3, align 4
  %mul.6.7.3 = mul nsw i32 %936, %937
  %arrayidx19.6.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.7.3 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7.3, i32 0, i64 7
  %938 = load i32* %arrayidx20.6.7.3, align 4
  %add.6.7.3 = add nsw i32 %938, %mul.6.7.3
  store i32 %add.6.7.3, i32* %arrayidx20.6.7.3, align 4
  br label %for.inc.6.7.3

for.inc.6.7.3:                                    ; preds = %for.inc.5.7.3
  %arrayidx11.7.7.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.7.3 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7.3, i32 0, i64 7
  %939 = load i32* %arrayidx12.7.7.3, align 4
  %arrayidx15.7.7.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7.3, i32 0, i64 7
  %940 = load i32* %arrayidx16.7.7.3, align 4
  %mul.7.7.3 = mul nsw i32 %939, %940
  %arrayidx19.7.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.7.3 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7.3, i32 0, i64 7
  %941 = load i32* %arrayidx20.7.7.3, align 4
  %add.7.7.3 = add nsw i32 %941, %mul.7.7.3
  store i32 %add.7.7.3, i32* %arrayidx20.7.7.3, align 4
  br label %for.inc.7.7.3

for.inc.7.7.3:                                    ; preds = %for.inc.6.7.3
  %arrayidx11.8.7.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.7.3 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7.3, i32 0, i64 8
  %942 = load i32* %arrayidx12.8.7.3, align 4
  %arrayidx15.8.7.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7.3, i32 0, i64 7
  %943 = load i32* %arrayidx16.8.7.3, align 4
  %mul.8.7.3 = mul nsw i32 %942, %943
  %arrayidx19.8.7.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.7.3 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7.3, i32 0, i64 7
  %944 = load i32* %arrayidx20.8.7.3, align 4
  %add.8.7.3 = add nsw i32 %944, %mul.8.7.3
  store i32 %add.8.7.3, i32* %arrayidx20.8.7.3, align 4
  br label %for.inc.8.7.3

for.inc.8.7.3:                                    ; preds = %for.inc.7.7.3
  br label %for.inc21.7.3

for.inc21.7.3:                                    ; preds = %for.inc.8.7.3
  %arrayidx.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx5.8.3 = getelementptr inbounds [9 x i32]* %arrayidx.8.3, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.3, align 4
  br label %for.body8.8.3

for.body8.8.3:                                    ; preds = %for.inc21.7.3
  %arrayidx11.874.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.875.3 = getelementptr inbounds [9 x i32]* %arrayidx11.874.3, i32 0, i64 0
  %945 = load i32* %arrayidx12.875.3, align 4
  %arrayidx16.876.3 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %946 = load i32* %arrayidx16.876.3, align 4
  %mul.877.3 = mul nsw i32 %945, %946
  %arrayidx19.879.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.880.3 = getelementptr inbounds [9 x i32]* %arrayidx19.879.3, i32 0, i64 8
  %947 = load i32* %arrayidx20.880.3, align 4
  %add.881.3 = add nsw i32 %947, %mul.877.3
  store i32 %add.881.3, i32* %arrayidx20.880.3, align 4
  br label %for.inc.882.3

for.inc.882.3:                                    ; preds = %for.body8.8.3
  %arrayidx11.1.8.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.1.8.3 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8.3, i32 0, i64 1
  %948 = load i32* %arrayidx12.1.8.3, align 4
  %arrayidx15.1.8.3 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8.3, i32 0, i64 8
  %949 = load i32* %arrayidx16.1.8.3, align 4
  %mul.1.8.3 = mul nsw i32 %948, %949
  %arrayidx19.1.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.1.8.3 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8.3, i32 0, i64 8
  %950 = load i32* %arrayidx20.1.8.3, align 4
  %add.1.8.3 = add nsw i32 %950, %mul.1.8.3
  store i32 %add.1.8.3, i32* %arrayidx20.1.8.3, align 4
  br label %for.inc.1.8.3

for.inc.1.8.3:                                    ; preds = %for.inc.882.3
  %arrayidx11.2.8.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.2.8.3 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8.3, i32 0, i64 2
  %951 = load i32* %arrayidx12.2.8.3, align 4
  %arrayidx15.2.8.3 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8.3, i32 0, i64 8
  %952 = load i32* %arrayidx16.2.8.3, align 4
  %mul.2.8.3 = mul nsw i32 %951, %952
  %arrayidx19.2.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.2.8.3 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8.3, i32 0, i64 8
  %953 = load i32* %arrayidx20.2.8.3, align 4
  %add.2.8.3 = add nsw i32 %953, %mul.2.8.3
  store i32 %add.2.8.3, i32* %arrayidx20.2.8.3, align 4
  br label %for.inc.2.8.3

for.inc.2.8.3:                                    ; preds = %for.inc.1.8.3
  %arrayidx11.3.8.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.3.8.3 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8.3, i32 0, i64 3
  %954 = load i32* %arrayidx12.3.8.3, align 4
  %arrayidx15.3.8.3 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8.3, i32 0, i64 8
  %955 = load i32* %arrayidx16.3.8.3, align 4
  %mul.3.8.3 = mul nsw i32 %954, %955
  %arrayidx19.3.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.3.8.3 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8.3, i32 0, i64 8
  %956 = load i32* %arrayidx20.3.8.3, align 4
  %add.3.8.3 = add nsw i32 %956, %mul.3.8.3
  store i32 %add.3.8.3, i32* %arrayidx20.3.8.3, align 4
  br label %for.inc.3.8.3

for.inc.3.8.3:                                    ; preds = %for.inc.2.8.3
  %arrayidx11.4.8.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.4.8.3 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8.3, i32 0, i64 4
  %957 = load i32* %arrayidx12.4.8.3, align 4
  %arrayidx15.4.8.3 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8.3, i32 0, i64 8
  %958 = load i32* %arrayidx16.4.8.3, align 4
  %mul.4.8.3 = mul nsw i32 %957, %958
  %arrayidx19.4.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.4.8.3 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8.3, i32 0, i64 8
  %959 = load i32* %arrayidx20.4.8.3, align 4
  %add.4.8.3 = add nsw i32 %959, %mul.4.8.3
  store i32 %add.4.8.3, i32* %arrayidx20.4.8.3, align 4
  br label %for.inc.4.8.3

for.inc.4.8.3:                                    ; preds = %for.inc.3.8.3
  %arrayidx11.5.8.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.5.8.3 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8.3, i32 0, i64 5
  %960 = load i32* %arrayidx12.5.8.3, align 4
  %arrayidx15.5.8.3 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8.3, i32 0, i64 8
  %961 = load i32* %arrayidx16.5.8.3, align 4
  %mul.5.8.3 = mul nsw i32 %960, %961
  %arrayidx19.5.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.5.8.3 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8.3, i32 0, i64 8
  %962 = load i32* %arrayidx20.5.8.3, align 4
  %add.5.8.3 = add nsw i32 %962, %mul.5.8.3
  store i32 %add.5.8.3, i32* %arrayidx20.5.8.3, align 4
  br label %for.inc.5.8.3

for.inc.5.8.3:                                    ; preds = %for.inc.4.8.3
  %arrayidx11.6.8.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.6.8.3 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8.3, i32 0, i64 6
  %963 = load i32* %arrayidx12.6.8.3, align 4
  %arrayidx15.6.8.3 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8.3, i32 0, i64 8
  %964 = load i32* %arrayidx16.6.8.3, align 4
  %mul.6.8.3 = mul nsw i32 %963, %964
  %arrayidx19.6.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.6.8.3 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8.3, i32 0, i64 8
  %965 = load i32* %arrayidx20.6.8.3, align 4
  %add.6.8.3 = add nsw i32 %965, %mul.6.8.3
  store i32 %add.6.8.3, i32* %arrayidx20.6.8.3, align 4
  br label %for.inc.6.8.3

for.inc.6.8.3:                                    ; preds = %for.inc.5.8.3
  %arrayidx11.7.8.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.7.8.3 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8.3, i32 0, i64 7
  %966 = load i32* %arrayidx12.7.8.3, align 4
  %arrayidx15.7.8.3 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8.3, i32 0, i64 8
  %967 = load i32* %arrayidx16.7.8.3, align 4
  %mul.7.8.3 = mul nsw i32 %966, %967
  %arrayidx19.7.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.7.8.3 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8.3, i32 0, i64 8
  %968 = load i32* %arrayidx20.7.8.3, align 4
  %add.7.8.3 = add nsw i32 %968, %mul.7.8.3
  store i32 %add.7.8.3, i32* %arrayidx20.7.8.3, align 4
  br label %for.inc.7.8.3

for.inc.7.8.3:                                    ; preds = %for.inc.6.8.3
  %arrayidx11.8.8.3 = getelementptr inbounds [9 x i32]* %a, i64 3
  %arrayidx12.8.8.3 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8.3, i32 0, i64 8
  %969 = load i32* %arrayidx12.8.8.3, align 4
  %arrayidx15.8.8.3 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8.3 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8.3, i32 0, i64 8
  %970 = load i32* %arrayidx16.8.8.3, align 4
  %mul.8.8.3 = mul nsw i32 %969, %970
  %arrayidx19.8.8.3 = getelementptr inbounds [9 x i32]* %c, i64 3
  %arrayidx20.8.8.3 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8.3, i32 0, i64 8
  %971 = load i32* %arrayidx20.8.8.3, align 4
  %add.8.8.3 = add nsw i32 %971, %mul.8.8.3
  store i32 %add.8.8.3, i32* %arrayidx20.8.8.3, align 4
  br label %for.inc.8.8.3

for.inc.8.8.3:                                    ; preds = %for.inc.7.8.3
  br label %for.inc21.8.3

for.inc21.8.3:                                    ; preds = %for.inc.8.8.3
  br label %for.inc24.3

for.inc24.3:                                      ; preds = %for.inc21.8.3
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc24.3
  %arrayidx.4336 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.4337 = getelementptr inbounds [9 x i32]* %arrayidx.4336, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.4337, align 4
  br label %for.body8.4345

for.body8.4345:                                   ; preds = %for.body3.4
  %arrayidx11.4338 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4339 = getelementptr inbounds [9 x i32]* %arrayidx11.4338, i32 0, i64 0
  %972 = load i32* %arrayidx12.4339, align 4
  %arrayidx16.4340 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %973 = load i32* %arrayidx16.4340, align 4
  %mul.4341 = mul nsw i32 %972, %973
  %arrayidx19.4342 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4343 = getelementptr inbounds [9 x i32]* %arrayidx19.4342, i32 0, i64 0
  %974 = load i32* %arrayidx20.4343, align 4
  %add.4344 = add nsw i32 %974, %mul.4341
  store i32 %add.4344, i32* %arrayidx20.4343, align 4
  br label %for.inc.4354

for.inc.4354:                                     ; preds = %for.body8.4345
  %arrayidx11.1.4346 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.4347 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4346, i32 0, i64 1
  %975 = load i32* %arrayidx12.1.4347, align 4
  %arrayidx15.1.4348 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4349 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4348, i32 0, i64 0
  %976 = load i32* %arrayidx16.1.4349, align 4
  %mul.1.4350 = mul nsw i32 %975, %976
  %arrayidx19.1.4351 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.4352 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4351, i32 0, i64 0
  %977 = load i32* %arrayidx20.1.4352, align 4
  %add.1.4353 = add nsw i32 %977, %mul.1.4350
  store i32 %add.1.4353, i32* %arrayidx20.1.4352, align 4
  br label %for.inc.1.4363

for.inc.1.4363:                                   ; preds = %for.inc.4354
  %arrayidx11.2.4355 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.4356 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4355, i32 0, i64 2
  %978 = load i32* %arrayidx12.2.4356, align 4
  %arrayidx15.2.4357 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4358 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4357, i32 0, i64 0
  %979 = load i32* %arrayidx16.2.4358, align 4
  %mul.2.4359 = mul nsw i32 %978, %979
  %arrayidx19.2.4360 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.4361 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4360, i32 0, i64 0
  %980 = load i32* %arrayidx20.2.4361, align 4
  %add.2.4362 = add nsw i32 %980, %mul.2.4359
  store i32 %add.2.4362, i32* %arrayidx20.2.4361, align 4
  br label %for.inc.2.4372

for.inc.2.4372:                                   ; preds = %for.inc.1.4363
  %arrayidx11.3.4364 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.4365 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4364, i32 0, i64 3
  %981 = load i32* %arrayidx12.3.4365, align 4
  %arrayidx15.3.4366 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4367 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4366, i32 0, i64 0
  %982 = load i32* %arrayidx16.3.4367, align 4
  %mul.3.4368 = mul nsw i32 %981, %982
  %arrayidx19.3.4369 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.4370 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4369, i32 0, i64 0
  %983 = load i32* %arrayidx20.3.4370, align 4
  %add.3.4371 = add nsw i32 %983, %mul.3.4368
  store i32 %add.3.4371, i32* %arrayidx20.3.4370, align 4
  br label %for.inc.3.4381

for.inc.3.4381:                                   ; preds = %for.inc.2.4372
  %arrayidx11.4.4373 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.4374 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4373, i32 0, i64 4
  %984 = load i32* %arrayidx12.4.4374, align 4
  %arrayidx15.4.4375 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4376 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4375, i32 0, i64 0
  %985 = load i32* %arrayidx16.4.4376, align 4
  %mul.4.4377 = mul nsw i32 %984, %985
  %arrayidx19.4.4378 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.4379 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4378, i32 0, i64 0
  %986 = load i32* %arrayidx20.4.4379, align 4
  %add.4.4380 = add nsw i32 %986, %mul.4.4377
  store i32 %add.4.4380, i32* %arrayidx20.4.4379, align 4
  br label %for.inc.4.4390

for.inc.4.4390:                                   ; preds = %for.inc.3.4381
  %arrayidx11.5.4382 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.4383 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4382, i32 0, i64 5
  %987 = load i32* %arrayidx12.5.4383, align 4
  %arrayidx15.5.4384 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4385 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4384, i32 0, i64 0
  %988 = load i32* %arrayidx16.5.4385, align 4
  %mul.5.4386 = mul nsw i32 %987, %988
  %arrayidx19.5.4387 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.4388 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4387, i32 0, i64 0
  %989 = load i32* %arrayidx20.5.4388, align 4
  %add.5.4389 = add nsw i32 %989, %mul.5.4386
  store i32 %add.5.4389, i32* %arrayidx20.5.4388, align 4
  br label %for.inc.5.4399

for.inc.5.4399:                                   ; preds = %for.inc.4.4390
  %arrayidx11.6.4391 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.4392 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4391, i32 0, i64 6
  %990 = load i32* %arrayidx12.6.4392, align 4
  %arrayidx15.6.4393 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4394 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4393, i32 0, i64 0
  %991 = load i32* %arrayidx16.6.4394, align 4
  %mul.6.4395 = mul nsw i32 %990, %991
  %arrayidx19.6.4396 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.4397 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4396, i32 0, i64 0
  %992 = load i32* %arrayidx20.6.4397, align 4
  %add.6.4398 = add nsw i32 %992, %mul.6.4395
  store i32 %add.6.4398, i32* %arrayidx20.6.4397, align 4
  br label %for.inc.6.4408

for.inc.6.4408:                                   ; preds = %for.inc.5.4399
  %arrayidx11.7.4400 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.4401 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4400, i32 0, i64 7
  %993 = load i32* %arrayidx12.7.4401, align 4
  %arrayidx15.7.4402 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4403 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4402, i32 0, i64 0
  %994 = load i32* %arrayidx16.7.4403, align 4
  %mul.7.4404 = mul nsw i32 %993, %994
  %arrayidx19.7.4405 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.4406 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4405, i32 0, i64 0
  %995 = load i32* %arrayidx20.7.4406, align 4
  %add.7.4407 = add nsw i32 %995, %mul.7.4404
  store i32 %add.7.4407, i32* %arrayidx20.7.4406, align 4
  br label %for.inc.7.4417

for.inc.7.4417:                                   ; preds = %for.inc.6.4408
  %arrayidx11.8.4409 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.4410 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4409, i32 0, i64 8
  %996 = load i32* %arrayidx12.8.4410, align 4
  %arrayidx15.8.4411 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4412 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4411, i32 0, i64 0
  %997 = load i32* %arrayidx16.8.4412, align 4
  %mul.8.4413 = mul nsw i32 %996, %997
  %arrayidx19.8.4414 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.4415 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4414, i32 0, i64 0
  %998 = load i32* %arrayidx20.8.4415, align 4
  %add.8.4416 = add nsw i32 %998, %mul.8.4413
  store i32 %add.8.4416, i32* %arrayidx20.8.4415, align 4
  br label %for.inc.8.4418

for.inc.8.4418:                                   ; preds = %for.inc.7.4417
  br label %for.inc21.4419

for.inc21.4419:                                   ; preds = %for.inc.8.4418
  %arrayidx.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.1.4 = getelementptr inbounds [9 x i32]* %arrayidx.1.4, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.4, align 4
  br label %for.body8.1.4

for.body8.1.4:                                    ; preds = %for.inc21.4419
  %arrayidx11.14.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.15.4 = getelementptr inbounds [9 x i32]* %arrayidx11.14.4, i32 0, i64 0
  %999 = load i32* %arrayidx12.15.4, align 4
  %arrayidx16.16.4 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %1000 = load i32* %arrayidx16.16.4, align 4
  %mul.17.4 = mul nsw i32 %999, %1000
  %arrayidx19.19.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.110.4 = getelementptr inbounds [9 x i32]* %arrayidx19.19.4, i32 0, i64 1
  %1001 = load i32* %arrayidx20.110.4, align 4
  %add.111.4 = add nsw i32 %1001, %mul.17.4
  store i32 %add.111.4, i32* %arrayidx20.110.4, align 4
  br label %for.inc.112.4

for.inc.112.4:                                    ; preds = %for.body8.1.4
  %arrayidx11.1.1.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.1.4 = getelementptr inbounds [9 x i32]* %arrayidx11.1.1.4, i32 0, i64 1
  %1002 = load i32* %arrayidx12.1.1.4, align 4
  %arrayidx15.1.1.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1.4, i32 0, i64 1
  %1003 = load i32* %arrayidx16.1.1.4, align 4
  %mul.1.1.4 = mul nsw i32 %1002, %1003
  %arrayidx19.1.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.1.4 = getelementptr inbounds [9 x i32]* %arrayidx19.1.1.4, i32 0, i64 1
  %1004 = load i32* %arrayidx20.1.1.4, align 4
  %add.1.1.4 = add nsw i32 %1004, %mul.1.1.4
  store i32 %add.1.1.4, i32* %arrayidx20.1.1.4, align 4
  br label %for.inc.1.1.4

for.inc.1.1.4:                                    ; preds = %for.inc.112.4
  %arrayidx11.2.1.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.1.4 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1.4, i32 0, i64 2
  %1005 = load i32* %arrayidx12.2.1.4, align 4
  %arrayidx15.2.1.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1.4, i32 0, i64 1
  %1006 = load i32* %arrayidx16.2.1.4, align 4
  %mul.2.1.4 = mul nsw i32 %1005, %1006
  %arrayidx19.2.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.1.4 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1.4, i32 0, i64 1
  %1007 = load i32* %arrayidx20.2.1.4, align 4
  %add.2.1.4 = add nsw i32 %1007, %mul.2.1.4
  store i32 %add.2.1.4, i32* %arrayidx20.2.1.4, align 4
  br label %for.inc.2.1.4

for.inc.2.1.4:                                    ; preds = %for.inc.1.1.4
  %arrayidx11.3.1.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.1.4 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1.4, i32 0, i64 3
  %1008 = load i32* %arrayidx12.3.1.4, align 4
  %arrayidx15.3.1.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1.4, i32 0, i64 1
  %1009 = load i32* %arrayidx16.3.1.4, align 4
  %mul.3.1.4 = mul nsw i32 %1008, %1009
  %arrayidx19.3.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.1.4 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1.4, i32 0, i64 1
  %1010 = load i32* %arrayidx20.3.1.4, align 4
  %add.3.1.4 = add nsw i32 %1010, %mul.3.1.4
  store i32 %add.3.1.4, i32* %arrayidx20.3.1.4, align 4
  br label %for.inc.3.1.4

for.inc.3.1.4:                                    ; preds = %for.inc.2.1.4
  %arrayidx11.4.1.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.1.4 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1.4, i32 0, i64 4
  %1011 = load i32* %arrayidx12.4.1.4, align 4
  %arrayidx15.4.1.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1.4, i32 0, i64 1
  %1012 = load i32* %arrayidx16.4.1.4, align 4
  %mul.4.1.4 = mul nsw i32 %1011, %1012
  %arrayidx19.4.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.1.4 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1.4, i32 0, i64 1
  %1013 = load i32* %arrayidx20.4.1.4, align 4
  %add.4.1.4 = add nsw i32 %1013, %mul.4.1.4
  store i32 %add.4.1.4, i32* %arrayidx20.4.1.4, align 4
  br label %for.inc.4.1.4

for.inc.4.1.4:                                    ; preds = %for.inc.3.1.4
  %arrayidx11.5.1.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.1.4 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1.4, i32 0, i64 5
  %1014 = load i32* %arrayidx12.5.1.4, align 4
  %arrayidx15.5.1.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1.4, i32 0, i64 1
  %1015 = load i32* %arrayidx16.5.1.4, align 4
  %mul.5.1.4 = mul nsw i32 %1014, %1015
  %arrayidx19.5.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.1.4 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1.4, i32 0, i64 1
  %1016 = load i32* %arrayidx20.5.1.4, align 4
  %add.5.1.4 = add nsw i32 %1016, %mul.5.1.4
  store i32 %add.5.1.4, i32* %arrayidx20.5.1.4, align 4
  br label %for.inc.5.1.4

for.inc.5.1.4:                                    ; preds = %for.inc.4.1.4
  %arrayidx11.6.1.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.1.4 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1.4, i32 0, i64 6
  %1017 = load i32* %arrayidx12.6.1.4, align 4
  %arrayidx15.6.1.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1.4, i32 0, i64 1
  %1018 = load i32* %arrayidx16.6.1.4, align 4
  %mul.6.1.4 = mul nsw i32 %1017, %1018
  %arrayidx19.6.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.1.4 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1.4, i32 0, i64 1
  %1019 = load i32* %arrayidx20.6.1.4, align 4
  %add.6.1.4 = add nsw i32 %1019, %mul.6.1.4
  store i32 %add.6.1.4, i32* %arrayidx20.6.1.4, align 4
  br label %for.inc.6.1.4

for.inc.6.1.4:                                    ; preds = %for.inc.5.1.4
  %arrayidx11.7.1.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.1.4 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1.4, i32 0, i64 7
  %1020 = load i32* %arrayidx12.7.1.4, align 4
  %arrayidx15.7.1.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1.4, i32 0, i64 1
  %1021 = load i32* %arrayidx16.7.1.4, align 4
  %mul.7.1.4 = mul nsw i32 %1020, %1021
  %arrayidx19.7.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.1.4 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1.4, i32 0, i64 1
  %1022 = load i32* %arrayidx20.7.1.4, align 4
  %add.7.1.4 = add nsw i32 %1022, %mul.7.1.4
  store i32 %add.7.1.4, i32* %arrayidx20.7.1.4, align 4
  br label %for.inc.7.1.4

for.inc.7.1.4:                                    ; preds = %for.inc.6.1.4
  %arrayidx11.8.1.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.1.4 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1.4, i32 0, i64 8
  %1023 = load i32* %arrayidx12.8.1.4, align 4
  %arrayidx15.8.1.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1.4, i32 0, i64 1
  %1024 = load i32* %arrayidx16.8.1.4, align 4
  %mul.8.1.4 = mul nsw i32 %1023, %1024
  %arrayidx19.8.1.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.1.4 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1.4, i32 0, i64 1
  %1025 = load i32* %arrayidx20.8.1.4, align 4
  %add.8.1.4 = add nsw i32 %1025, %mul.8.1.4
  store i32 %add.8.1.4, i32* %arrayidx20.8.1.4, align 4
  br label %for.inc.8.1.4

for.inc.8.1.4:                                    ; preds = %for.inc.7.1.4
  br label %for.inc21.1.4

for.inc21.1.4:                                    ; preds = %for.inc.8.1.4
  %arrayidx.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.2.4 = getelementptr inbounds [9 x i32]* %arrayidx.2.4, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.4, align 4
  br label %for.body8.2.4

for.body8.2.4:                                    ; preds = %for.inc21.1.4
  %arrayidx11.214.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.215.4 = getelementptr inbounds [9 x i32]* %arrayidx11.214.4, i32 0, i64 0
  %1026 = load i32* %arrayidx12.215.4, align 4
  %arrayidx16.216.4 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %1027 = load i32* %arrayidx16.216.4, align 4
  %mul.217.4 = mul nsw i32 %1026, %1027
  %arrayidx19.219.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.220.4 = getelementptr inbounds [9 x i32]* %arrayidx19.219.4, i32 0, i64 2
  %1028 = load i32* %arrayidx20.220.4, align 4
  %add.221.4 = add nsw i32 %1028, %mul.217.4
  store i32 %add.221.4, i32* %arrayidx20.220.4, align 4
  br label %for.inc.222.4

for.inc.222.4:                                    ; preds = %for.body8.2.4
  %arrayidx11.1.2.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.2.4 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2.4, i32 0, i64 1
  %1029 = load i32* %arrayidx12.1.2.4, align 4
  %arrayidx15.1.2.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2.4, i32 0, i64 2
  %1030 = load i32* %arrayidx16.1.2.4, align 4
  %mul.1.2.4 = mul nsw i32 %1029, %1030
  %arrayidx19.1.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.2.4 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2.4, i32 0, i64 2
  %1031 = load i32* %arrayidx20.1.2.4, align 4
  %add.1.2.4 = add nsw i32 %1031, %mul.1.2.4
  store i32 %add.1.2.4, i32* %arrayidx20.1.2.4, align 4
  br label %for.inc.1.2.4

for.inc.1.2.4:                                    ; preds = %for.inc.222.4
  %arrayidx11.2.2.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.2.4 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2.4, i32 0, i64 2
  %1032 = load i32* %arrayidx12.2.2.4, align 4
  %arrayidx15.2.2.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2.4, i32 0, i64 2
  %1033 = load i32* %arrayidx16.2.2.4, align 4
  %mul.2.2.4 = mul nsw i32 %1032, %1033
  %arrayidx19.2.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.2.4 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2.4, i32 0, i64 2
  %1034 = load i32* %arrayidx20.2.2.4, align 4
  %add.2.2.4 = add nsw i32 %1034, %mul.2.2.4
  store i32 %add.2.2.4, i32* %arrayidx20.2.2.4, align 4
  br label %for.inc.2.2.4

for.inc.2.2.4:                                    ; preds = %for.inc.1.2.4
  %arrayidx11.3.2.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.2.4 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2.4, i32 0, i64 3
  %1035 = load i32* %arrayidx12.3.2.4, align 4
  %arrayidx15.3.2.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2.4, i32 0, i64 2
  %1036 = load i32* %arrayidx16.3.2.4, align 4
  %mul.3.2.4 = mul nsw i32 %1035, %1036
  %arrayidx19.3.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.2.4 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2.4, i32 0, i64 2
  %1037 = load i32* %arrayidx20.3.2.4, align 4
  %add.3.2.4 = add nsw i32 %1037, %mul.3.2.4
  store i32 %add.3.2.4, i32* %arrayidx20.3.2.4, align 4
  br label %for.inc.3.2.4

for.inc.3.2.4:                                    ; preds = %for.inc.2.2.4
  %arrayidx11.4.2.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.2.4 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2.4, i32 0, i64 4
  %1038 = load i32* %arrayidx12.4.2.4, align 4
  %arrayidx15.4.2.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2.4, i32 0, i64 2
  %1039 = load i32* %arrayidx16.4.2.4, align 4
  %mul.4.2.4 = mul nsw i32 %1038, %1039
  %arrayidx19.4.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.2.4 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2.4, i32 0, i64 2
  %1040 = load i32* %arrayidx20.4.2.4, align 4
  %add.4.2.4 = add nsw i32 %1040, %mul.4.2.4
  store i32 %add.4.2.4, i32* %arrayidx20.4.2.4, align 4
  br label %for.inc.4.2.4

for.inc.4.2.4:                                    ; preds = %for.inc.3.2.4
  %arrayidx11.5.2.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.2.4 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2.4, i32 0, i64 5
  %1041 = load i32* %arrayidx12.5.2.4, align 4
  %arrayidx15.5.2.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2.4, i32 0, i64 2
  %1042 = load i32* %arrayidx16.5.2.4, align 4
  %mul.5.2.4 = mul nsw i32 %1041, %1042
  %arrayidx19.5.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.2.4 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2.4, i32 0, i64 2
  %1043 = load i32* %arrayidx20.5.2.4, align 4
  %add.5.2.4 = add nsw i32 %1043, %mul.5.2.4
  store i32 %add.5.2.4, i32* %arrayidx20.5.2.4, align 4
  br label %for.inc.5.2.4

for.inc.5.2.4:                                    ; preds = %for.inc.4.2.4
  %arrayidx11.6.2.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.2.4 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2.4, i32 0, i64 6
  %1044 = load i32* %arrayidx12.6.2.4, align 4
  %arrayidx15.6.2.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2.4, i32 0, i64 2
  %1045 = load i32* %arrayidx16.6.2.4, align 4
  %mul.6.2.4 = mul nsw i32 %1044, %1045
  %arrayidx19.6.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.2.4 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2.4, i32 0, i64 2
  %1046 = load i32* %arrayidx20.6.2.4, align 4
  %add.6.2.4 = add nsw i32 %1046, %mul.6.2.4
  store i32 %add.6.2.4, i32* %arrayidx20.6.2.4, align 4
  br label %for.inc.6.2.4

for.inc.6.2.4:                                    ; preds = %for.inc.5.2.4
  %arrayidx11.7.2.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.2.4 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2.4, i32 0, i64 7
  %1047 = load i32* %arrayidx12.7.2.4, align 4
  %arrayidx15.7.2.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2.4, i32 0, i64 2
  %1048 = load i32* %arrayidx16.7.2.4, align 4
  %mul.7.2.4 = mul nsw i32 %1047, %1048
  %arrayidx19.7.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.2.4 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2.4, i32 0, i64 2
  %1049 = load i32* %arrayidx20.7.2.4, align 4
  %add.7.2.4 = add nsw i32 %1049, %mul.7.2.4
  store i32 %add.7.2.4, i32* %arrayidx20.7.2.4, align 4
  br label %for.inc.7.2.4

for.inc.7.2.4:                                    ; preds = %for.inc.6.2.4
  %arrayidx11.8.2.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.2.4 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2.4, i32 0, i64 8
  %1050 = load i32* %arrayidx12.8.2.4, align 4
  %arrayidx15.8.2.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2.4, i32 0, i64 2
  %1051 = load i32* %arrayidx16.8.2.4, align 4
  %mul.8.2.4 = mul nsw i32 %1050, %1051
  %arrayidx19.8.2.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.2.4 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2.4, i32 0, i64 2
  %1052 = load i32* %arrayidx20.8.2.4, align 4
  %add.8.2.4 = add nsw i32 %1052, %mul.8.2.4
  store i32 %add.8.2.4, i32* %arrayidx20.8.2.4, align 4
  br label %for.inc.8.2.4

for.inc.8.2.4:                                    ; preds = %for.inc.7.2.4
  br label %for.inc21.2.4

for.inc21.2.4:                                    ; preds = %for.inc.8.2.4
  %arrayidx.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.3.4 = getelementptr inbounds [9 x i32]* %arrayidx.3.4, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.4, align 4
  br label %for.body8.3.4

for.body8.3.4:                                    ; preds = %for.inc21.2.4
  %arrayidx11.324.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.325.4 = getelementptr inbounds [9 x i32]* %arrayidx11.324.4, i32 0, i64 0
  %1053 = load i32* %arrayidx12.325.4, align 4
  %arrayidx16.326.4 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %1054 = load i32* %arrayidx16.326.4, align 4
  %mul.327.4 = mul nsw i32 %1053, %1054
  %arrayidx19.329.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.330.4 = getelementptr inbounds [9 x i32]* %arrayidx19.329.4, i32 0, i64 3
  %1055 = load i32* %arrayidx20.330.4, align 4
  %add.331.4 = add nsw i32 %1055, %mul.327.4
  store i32 %add.331.4, i32* %arrayidx20.330.4, align 4
  br label %for.inc.332.4

for.inc.332.4:                                    ; preds = %for.body8.3.4
  %arrayidx11.1.3.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.3.4 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3.4, i32 0, i64 1
  %1056 = load i32* %arrayidx12.1.3.4, align 4
  %arrayidx15.1.3.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3.4, i32 0, i64 3
  %1057 = load i32* %arrayidx16.1.3.4, align 4
  %mul.1.3.4 = mul nsw i32 %1056, %1057
  %arrayidx19.1.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.3.4 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3.4, i32 0, i64 3
  %1058 = load i32* %arrayidx20.1.3.4, align 4
  %add.1.3.4 = add nsw i32 %1058, %mul.1.3.4
  store i32 %add.1.3.4, i32* %arrayidx20.1.3.4, align 4
  br label %for.inc.1.3.4

for.inc.1.3.4:                                    ; preds = %for.inc.332.4
  %arrayidx11.2.3.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.3.4 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3.4, i32 0, i64 2
  %1059 = load i32* %arrayidx12.2.3.4, align 4
  %arrayidx15.2.3.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3.4, i32 0, i64 3
  %1060 = load i32* %arrayidx16.2.3.4, align 4
  %mul.2.3.4 = mul nsw i32 %1059, %1060
  %arrayidx19.2.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.3.4 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3.4, i32 0, i64 3
  %1061 = load i32* %arrayidx20.2.3.4, align 4
  %add.2.3.4 = add nsw i32 %1061, %mul.2.3.4
  store i32 %add.2.3.4, i32* %arrayidx20.2.3.4, align 4
  br label %for.inc.2.3.4

for.inc.2.3.4:                                    ; preds = %for.inc.1.3.4
  %arrayidx11.3.3.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.3.4 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3.4, i32 0, i64 3
  %1062 = load i32* %arrayidx12.3.3.4, align 4
  %arrayidx15.3.3.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3.4, i32 0, i64 3
  %1063 = load i32* %arrayidx16.3.3.4, align 4
  %mul.3.3.4 = mul nsw i32 %1062, %1063
  %arrayidx19.3.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.3.4 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3.4, i32 0, i64 3
  %1064 = load i32* %arrayidx20.3.3.4, align 4
  %add.3.3.4 = add nsw i32 %1064, %mul.3.3.4
  store i32 %add.3.3.4, i32* %arrayidx20.3.3.4, align 4
  br label %for.inc.3.3.4

for.inc.3.3.4:                                    ; preds = %for.inc.2.3.4
  %arrayidx11.4.3.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.3.4 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3.4, i32 0, i64 4
  %1065 = load i32* %arrayidx12.4.3.4, align 4
  %arrayidx15.4.3.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3.4, i32 0, i64 3
  %1066 = load i32* %arrayidx16.4.3.4, align 4
  %mul.4.3.4 = mul nsw i32 %1065, %1066
  %arrayidx19.4.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.3.4 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3.4, i32 0, i64 3
  %1067 = load i32* %arrayidx20.4.3.4, align 4
  %add.4.3.4 = add nsw i32 %1067, %mul.4.3.4
  store i32 %add.4.3.4, i32* %arrayidx20.4.3.4, align 4
  br label %for.inc.4.3.4

for.inc.4.3.4:                                    ; preds = %for.inc.3.3.4
  %arrayidx11.5.3.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.3.4 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3.4, i32 0, i64 5
  %1068 = load i32* %arrayidx12.5.3.4, align 4
  %arrayidx15.5.3.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3.4, i32 0, i64 3
  %1069 = load i32* %arrayidx16.5.3.4, align 4
  %mul.5.3.4 = mul nsw i32 %1068, %1069
  %arrayidx19.5.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.3.4 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3.4, i32 0, i64 3
  %1070 = load i32* %arrayidx20.5.3.4, align 4
  %add.5.3.4 = add nsw i32 %1070, %mul.5.3.4
  store i32 %add.5.3.4, i32* %arrayidx20.5.3.4, align 4
  br label %for.inc.5.3.4

for.inc.5.3.4:                                    ; preds = %for.inc.4.3.4
  %arrayidx11.6.3.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.3.4 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3.4, i32 0, i64 6
  %1071 = load i32* %arrayidx12.6.3.4, align 4
  %arrayidx15.6.3.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3.4, i32 0, i64 3
  %1072 = load i32* %arrayidx16.6.3.4, align 4
  %mul.6.3.4 = mul nsw i32 %1071, %1072
  %arrayidx19.6.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.3.4 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3.4, i32 0, i64 3
  %1073 = load i32* %arrayidx20.6.3.4, align 4
  %add.6.3.4 = add nsw i32 %1073, %mul.6.3.4
  store i32 %add.6.3.4, i32* %arrayidx20.6.3.4, align 4
  br label %for.inc.6.3.4

for.inc.6.3.4:                                    ; preds = %for.inc.5.3.4
  %arrayidx11.7.3.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.3.4 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3.4, i32 0, i64 7
  %1074 = load i32* %arrayidx12.7.3.4, align 4
  %arrayidx15.7.3.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3.4, i32 0, i64 3
  %1075 = load i32* %arrayidx16.7.3.4, align 4
  %mul.7.3.4 = mul nsw i32 %1074, %1075
  %arrayidx19.7.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.3.4 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3.4, i32 0, i64 3
  %1076 = load i32* %arrayidx20.7.3.4, align 4
  %add.7.3.4 = add nsw i32 %1076, %mul.7.3.4
  store i32 %add.7.3.4, i32* %arrayidx20.7.3.4, align 4
  br label %for.inc.7.3.4

for.inc.7.3.4:                                    ; preds = %for.inc.6.3.4
  %arrayidx11.8.3.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.3.4 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3.4, i32 0, i64 8
  %1077 = load i32* %arrayidx12.8.3.4, align 4
  %arrayidx15.8.3.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3.4, i32 0, i64 3
  %1078 = load i32* %arrayidx16.8.3.4, align 4
  %mul.8.3.4 = mul nsw i32 %1077, %1078
  %arrayidx19.8.3.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.3.4 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3.4, i32 0, i64 3
  %1079 = load i32* %arrayidx20.8.3.4, align 4
  %add.8.3.4 = add nsw i32 %1079, %mul.8.3.4
  store i32 %add.8.3.4, i32* %arrayidx20.8.3.4, align 4
  br label %for.inc.8.3.4

for.inc.8.3.4:                                    ; preds = %for.inc.7.3.4
  br label %for.inc21.3.4

for.inc21.3.4:                                    ; preds = %for.inc.8.3.4
  %arrayidx.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.4.4 = getelementptr inbounds [9 x i32]* %arrayidx.4.4, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.4, align 4
  br label %for.body8.4.4

for.body8.4.4:                                    ; preds = %for.inc21.3.4
  %arrayidx11.434.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.435.4 = getelementptr inbounds [9 x i32]* %arrayidx11.434.4, i32 0, i64 0
  %1080 = load i32* %arrayidx12.435.4, align 4
  %arrayidx16.436.4 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %1081 = load i32* %arrayidx16.436.4, align 4
  %mul.437.4 = mul nsw i32 %1080, %1081
  %arrayidx19.439.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.440.4 = getelementptr inbounds [9 x i32]* %arrayidx19.439.4, i32 0, i64 4
  %1082 = load i32* %arrayidx20.440.4, align 4
  %add.441.4 = add nsw i32 %1082, %mul.437.4
  store i32 %add.441.4, i32* %arrayidx20.440.4, align 4
  br label %for.inc.442.4

for.inc.442.4:                                    ; preds = %for.body8.4.4
  %arrayidx11.1.4.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.4.4 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4.4, i32 0, i64 1
  %1083 = load i32* %arrayidx12.1.4.4, align 4
  %arrayidx15.1.4.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4.4, i32 0, i64 4
  %1084 = load i32* %arrayidx16.1.4.4, align 4
  %mul.1.4.4 = mul nsw i32 %1083, %1084
  %arrayidx19.1.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.4.4 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4.4, i32 0, i64 4
  %1085 = load i32* %arrayidx20.1.4.4, align 4
  %add.1.4.4 = add nsw i32 %1085, %mul.1.4.4
  store i32 %add.1.4.4, i32* %arrayidx20.1.4.4, align 4
  br label %for.inc.1.4.4

for.inc.1.4.4:                                    ; preds = %for.inc.442.4
  %arrayidx11.2.4.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.4.4 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4.4, i32 0, i64 2
  %1086 = load i32* %arrayidx12.2.4.4, align 4
  %arrayidx15.2.4.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4.4, i32 0, i64 4
  %1087 = load i32* %arrayidx16.2.4.4, align 4
  %mul.2.4.4 = mul nsw i32 %1086, %1087
  %arrayidx19.2.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.4.4 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4.4, i32 0, i64 4
  %1088 = load i32* %arrayidx20.2.4.4, align 4
  %add.2.4.4 = add nsw i32 %1088, %mul.2.4.4
  store i32 %add.2.4.4, i32* %arrayidx20.2.4.4, align 4
  br label %for.inc.2.4.4

for.inc.2.4.4:                                    ; preds = %for.inc.1.4.4
  %arrayidx11.3.4.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.4.4 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4.4, i32 0, i64 3
  %1089 = load i32* %arrayidx12.3.4.4, align 4
  %arrayidx15.3.4.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4.4, i32 0, i64 4
  %1090 = load i32* %arrayidx16.3.4.4, align 4
  %mul.3.4.4 = mul nsw i32 %1089, %1090
  %arrayidx19.3.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.4.4 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4.4, i32 0, i64 4
  %1091 = load i32* %arrayidx20.3.4.4, align 4
  %add.3.4.4 = add nsw i32 %1091, %mul.3.4.4
  store i32 %add.3.4.4, i32* %arrayidx20.3.4.4, align 4
  br label %for.inc.3.4.4

for.inc.3.4.4:                                    ; preds = %for.inc.2.4.4
  %arrayidx11.4.4.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.4.4 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4.4, i32 0, i64 4
  %1092 = load i32* %arrayidx12.4.4.4, align 4
  %arrayidx15.4.4.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4.4, i32 0, i64 4
  %1093 = load i32* %arrayidx16.4.4.4, align 4
  %mul.4.4.4 = mul nsw i32 %1092, %1093
  %arrayidx19.4.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.4.4 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4.4, i32 0, i64 4
  %1094 = load i32* %arrayidx20.4.4.4, align 4
  %add.4.4.4 = add nsw i32 %1094, %mul.4.4.4
  store i32 %add.4.4.4, i32* %arrayidx20.4.4.4, align 4
  br label %for.inc.4.4.4

for.inc.4.4.4:                                    ; preds = %for.inc.3.4.4
  %arrayidx11.5.4.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.4.4 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4.4, i32 0, i64 5
  %1095 = load i32* %arrayidx12.5.4.4, align 4
  %arrayidx15.5.4.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4.4, i32 0, i64 4
  %1096 = load i32* %arrayidx16.5.4.4, align 4
  %mul.5.4.4 = mul nsw i32 %1095, %1096
  %arrayidx19.5.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.4.4 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4.4, i32 0, i64 4
  %1097 = load i32* %arrayidx20.5.4.4, align 4
  %add.5.4.4 = add nsw i32 %1097, %mul.5.4.4
  store i32 %add.5.4.4, i32* %arrayidx20.5.4.4, align 4
  br label %for.inc.5.4.4

for.inc.5.4.4:                                    ; preds = %for.inc.4.4.4
  %arrayidx11.6.4.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.4.4 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4.4, i32 0, i64 6
  %1098 = load i32* %arrayidx12.6.4.4, align 4
  %arrayidx15.6.4.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4.4, i32 0, i64 4
  %1099 = load i32* %arrayidx16.6.4.4, align 4
  %mul.6.4.4 = mul nsw i32 %1098, %1099
  %arrayidx19.6.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.4.4 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4.4, i32 0, i64 4
  %1100 = load i32* %arrayidx20.6.4.4, align 4
  %add.6.4.4 = add nsw i32 %1100, %mul.6.4.4
  store i32 %add.6.4.4, i32* %arrayidx20.6.4.4, align 4
  br label %for.inc.6.4.4

for.inc.6.4.4:                                    ; preds = %for.inc.5.4.4
  %arrayidx11.7.4.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.4.4 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4.4, i32 0, i64 7
  %1101 = load i32* %arrayidx12.7.4.4, align 4
  %arrayidx15.7.4.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4.4, i32 0, i64 4
  %1102 = load i32* %arrayidx16.7.4.4, align 4
  %mul.7.4.4 = mul nsw i32 %1101, %1102
  %arrayidx19.7.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.4.4 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4.4, i32 0, i64 4
  %1103 = load i32* %arrayidx20.7.4.4, align 4
  %add.7.4.4 = add nsw i32 %1103, %mul.7.4.4
  store i32 %add.7.4.4, i32* %arrayidx20.7.4.4, align 4
  br label %for.inc.7.4.4

for.inc.7.4.4:                                    ; preds = %for.inc.6.4.4
  %arrayidx11.8.4.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.4.4 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4.4, i32 0, i64 8
  %1104 = load i32* %arrayidx12.8.4.4, align 4
  %arrayidx15.8.4.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4.4, i32 0, i64 4
  %1105 = load i32* %arrayidx16.8.4.4, align 4
  %mul.8.4.4 = mul nsw i32 %1104, %1105
  %arrayidx19.8.4.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.4.4 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4.4, i32 0, i64 4
  %1106 = load i32* %arrayidx20.8.4.4, align 4
  %add.8.4.4 = add nsw i32 %1106, %mul.8.4.4
  store i32 %add.8.4.4, i32* %arrayidx20.8.4.4, align 4
  br label %for.inc.8.4.4

for.inc.8.4.4:                                    ; preds = %for.inc.7.4.4
  br label %for.inc21.4.4

for.inc21.4.4:                                    ; preds = %for.inc.8.4.4
  %arrayidx.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.5.4 = getelementptr inbounds [9 x i32]* %arrayidx.5.4, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.4, align 4
  br label %for.body8.5.4

for.body8.5.4:                                    ; preds = %for.inc21.4.4
  %arrayidx11.544.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.545.4 = getelementptr inbounds [9 x i32]* %arrayidx11.544.4, i32 0, i64 0
  %1107 = load i32* %arrayidx12.545.4, align 4
  %arrayidx16.546.4 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %1108 = load i32* %arrayidx16.546.4, align 4
  %mul.547.4 = mul nsw i32 %1107, %1108
  %arrayidx19.549.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.550.4 = getelementptr inbounds [9 x i32]* %arrayidx19.549.4, i32 0, i64 5
  %1109 = load i32* %arrayidx20.550.4, align 4
  %add.551.4 = add nsw i32 %1109, %mul.547.4
  store i32 %add.551.4, i32* %arrayidx20.550.4, align 4
  br label %for.inc.552.4

for.inc.552.4:                                    ; preds = %for.body8.5.4
  %arrayidx11.1.5.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.5.4 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5.4, i32 0, i64 1
  %1110 = load i32* %arrayidx12.1.5.4, align 4
  %arrayidx15.1.5.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5.4, i32 0, i64 5
  %1111 = load i32* %arrayidx16.1.5.4, align 4
  %mul.1.5.4 = mul nsw i32 %1110, %1111
  %arrayidx19.1.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.5.4 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5.4, i32 0, i64 5
  %1112 = load i32* %arrayidx20.1.5.4, align 4
  %add.1.5.4 = add nsw i32 %1112, %mul.1.5.4
  store i32 %add.1.5.4, i32* %arrayidx20.1.5.4, align 4
  br label %for.inc.1.5.4

for.inc.1.5.4:                                    ; preds = %for.inc.552.4
  %arrayidx11.2.5.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.5.4 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5.4, i32 0, i64 2
  %1113 = load i32* %arrayidx12.2.5.4, align 4
  %arrayidx15.2.5.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5.4, i32 0, i64 5
  %1114 = load i32* %arrayidx16.2.5.4, align 4
  %mul.2.5.4 = mul nsw i32 %1113, %1114
  %arrayidx19.2.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.5.4 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5.4, i32 0, i64 5
  %1115 = load i32* %arrayidx20.2.5.4, align 4
  %add.2.5.4 = add nsw i32 %1115, %mul.2.5.4
  store i32 %add.2.5.4, i32* %arrayidx20.2.5.4, align 4
  br label %for.inc.2.5.4

for.inc.2.5.4:                                    ; preds = %for.inc.1.5.4
  %arrayidx11.3.5.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.5.4 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5.4, i32 0, i64 3
  %1116 = load i32* %arrayidx12.3.5.4, align 4
  %arrayidx15.3.5.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5.4, i32 0, i64 5
  %1117 = load i32* %arrayidx16.3.5.4, align 4
  %mul.3.5.4 = mul nsw i32 %1116, %1117
  %arrayidx19.3.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.5.4 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5.4, i32 0, i64 5
  %1118 = load i32* %arrayidx20.3.5.4, align 4
  %add.3.5.4 = add nsw i32 %1118, %mul.3.5.4
  store i32 %add.3.5.4, i32* %arrayidx20.3.5.4, align 4
  br label %for.inc.3.5.4

for.inc.3.5.4:                                    ; preds = %for.inc.2.5.4
  %arrayidx11.4.5.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.5.4 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5.4, i32 0, i64 4
  %1119 = load i32* %arrayidx12.4.5.4, align 4
  %arrayidx15.4.5.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5.4, i32 0, i64 5
  %1120 = load i32* %arrayidx16.4.5.4, align 4
  %mul.4.5.4 = mul nsw i32 %1119, %1120
  %arrayidx19.4.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.5.4 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5.4, i32 0, i64 5
  %1121 = load i32* %arrayidx20.4.5.4, align 4
  %add.4.5.4 = add nsw i32 %1121, %mul.4.5.4
  store i32 %add.4.5.4, i32* %arrayidx20.4.5.4, align 4
  br label %for.inc.4.5.4

for.inc.4.5.4:                                    ; preds = %for.inc.3.5.4
  %arrayidx11.5.5.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.5.4 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5.4, i32 0, i64 5
  %1122 = load i32* %arrayidx12.5.5.4, align 4
  %arrayidx15.5.5.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5.4, i32 0, i64 5
  %1123 = load i32* %arrayidx16.5.5.4, align 4
  %mul.5.5.4 = mul nsw i32 %1122, %1123
  %arrayidx19.5.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.5.4 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5.4, i32 0, i64 5
  %1124 = load i32* %arrayidx20.5.5.4, align 4
  %add.5.5.4 = add nsw i32 %1124, %mul.5.5.4
  store i32 %add.5.5.4, i32* %arrayidx20.5.5.4, align 4
  br label %for.inc.5.5.4

for.inc.5.5.4:                                    ; preds = %for.inc.4.5.4
  %arrayidx11.6.5.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.5.4 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5.4, i32 0, i64 6
  %1125 = load i32* %arrayidx12.6.5.4, align 4
  %arrayidx15.6.5.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5.4, i32 0, i64 5
  %1126 = load i32* %arrayidx16.6.5.4, align 4
  %mul.6.5.4 = mul nsw i32 %1125, %1126
  %arrayidx19.6.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.5.4 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5.4, i32 0, i64 5
  %1127 = load i32* %arrayidx20.6.5.4, align 4
  %add.6.5.4 = add nsw i32 %1127, %mul.6.5.4
  store i32 %add.6.5.4, i32* %arrayidx20.6.5.4, align 4
  br label %for.inc.6.5.4

for.inc.6.5.4:                                    ; preds = %for.inc.5.5.4
  %arrayidx11.7.5.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.5.4 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5.4, i32 0, i64 7
  %1128 = load i32* %arrayidx12.7.5.4, align 4
  %arrayidx15.7.5.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5.4, i32 0, i64 5
  %1129 = load i32* %arrayidx16.7.5.4, align 4
  %mul.7.5.4 = mul nsw i32 %1128, %1129
  %arrayidx19.7.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.5.4 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5.4, i32 0, i64 5
  %1130 = load i32* %arrayidx20.7.5.4, align 4
  %add.7.5.4 = add nsw i32 %1130, %mul.7.5.4
  store i32 %add.7.5.4, i32* %arrayidx20.7.5.4, align 4
  br label %for.inc.7.5.4

for.inc.7.5.4:                                    ; preds = %for.inc.6.5.4
  %arrayidx11.8.5.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.5.4 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5.4, i32 0, i64 8
  %1131 = load i32* %arrayidx12.8.5.4, align 4
  %arrayidx15.8.5.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5.4, i32 0, i64 5
  %1132 = load i32* %arrayidx16.8.5.4, align 4
  %mul.8.5.4 = mul nsw i32 %1131, %1132
  %arrayidx19.8.5.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.5.4 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5.4, i32 0, i64 5
  %1133 = load i32* %arrayidx20.8.5.4, align 4
  %add.8.5.4 = add nsw i32 %1133, %mul.8.5.4
  store i32 %add.8.5.4, i32* %arrayidx20.8.5.4, align 4
  br label %for.inc.8.5.4

for.inc.8.5.4:                                    ; preds = %for.inc.7.5.4
  br label %for.inc21.5.4

for.inc21.5.4:                                    ; preds = %for.inc.8.5.4
  %arrayidx.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.6.4 = getelementptr inbounds [9 x i32]* %arrayidx.6.4, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.4, align 4
  br label %for.body8.6.4

for.body8.6.4:                                    ; preds = %for.inc21.5.4
  %arrayidx11.654.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.655.4 = getelementptr inbounds [9 x i32]* %arrayidx11.654.4, i32 0, i64 0
  %1134 = load i32* %arrayidx12.655.4, align 4
  %arrayidx16.656.4 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %1135 = load i32* %arrayidx16.656.4, align 4
  %mul.657.4 = mul nsw i32 %1134, %1135
  %arrayidx19.659.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.660.4 = getelementptr inbounds [9 x i32]* %arrayidx19.659.4, i32 0, i64 6
  %1136 = load i32* %arrayidx20.660.4, align 4
  %add.661.4 = add nsw i32 %1136, %mul.657.4
  store i32 %add.661.4, i32* %arrayidx20.660.4, align 4
  br label %for.inc.662.4

for.inc.662.4:                                    ; preds = %for.body8.6.4
  %arrayidx11.1.6.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.6.4 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6.4, i32 0, i64 1
  %1137 = load i32* %arrayidx12.1.6.4, align 4
  %arrayidx15.1.6.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6.4, i32 0, i64 6
  %1138 = load i32* %arrayidx16.1.6.4, align 4
  %mul.1.6.4 = mul nsw i32 %1137, %1138
  %arrayidx19.1.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.6.4 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6.4, i32 0, i64 6
  %1139 = load i32* %arrayidx20.1.6.4, align 4
  %add.1.6.4 = add nsw i32 %1139, %mul.1.6.4
  store i32 %add.1.6.4, i32* %arrayidx20.1.6.4, align 4
  br label %for.inc.1.6.4

for.inc.1.6.4:                                    ; preds = %for.inc.662.4
  %arrayidx11.2.6.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.6.4 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6.4, i32 0, i64 2
  %1140 = load i32* %arrayidx12.2.6.4, align 4
  %arrayidx15.2.6.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6.4, i32 0, i64 6
  %1141 = load i32* %arrayidx16.2.6.4, align 4
  %mul.2.6.4 = mul nsw i32 %1140, %1141
  %arrayidx19.2.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.6.4 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6.4, i32 0, i64 6
  %1142 = load i32* %arrayidx20.2.6.4, align 4
  %add.2.6.4 = add nsw i32 %1142, %mul.2.6.4
  store i32 %add.2.6.4, i32* %arrayidx20.2.6.4, align 4
  br label %for.inc.2.6.4

for.inc.2.6.4:                                    ; preds = %for.inc.1.6.4
  %arrayidx11.3.6.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.6.4 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6.4, i32 0, i64 3
  %1143 = load i32* %arrayidx12.3.6.4, align 4
  %arrayidx15.3.6.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6.4, i32 0, i64 6
  %1144 = load i32* %arrayidx16.3.6.4, align 4
  %mul.3.6.4 = mul nsw i32 %1143, %1144
  %arrayidx19.3.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.6.4 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6.4, i32 0, i64 6
  %1145 = load i32* %arrayidx20.3.6.4, align 4
  %add.3.6.4 = add nsw i32 %1145, %mul.3.6.4
  store i32 %add.3.6.4, i32* %arrayidx20.3.6.4, align 4
  br label %for.inc.3.6.4

for.inc.3.6.4:                                    ; preds = %for.inc.2.6.4
  %arrayidx11.4.6.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.6.4 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6.4, i32 0, i64 4
  %1146 = load i32* %arrayidx12.4.6.4, align 4
  %arrayidx15.4.6.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6.4, i32 0, i64 6
  %1147 = load i32* %arrayidx16.4.6.4, align 4
  %mul.4.6.4 = mul nsw i32 %1146, %1147
  %arrayidx19.4.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.6.4 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6.4, i32 0, i64 6
  %1148 = load i32* %arrayidx20.4.6.4, align 4
  %add.4.6.4 = add nsw i32 %1148, %mul.4.6.4
  store i32 %add.4.6.4, i32* %arrayidx20.4.6.4, align 4
  br label %for.inc.4.6.4

for.inc.4.6.4:                                    ; preds = %for.inc.3.6.4
  %arrayidx11.5.6.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.6.4 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6.4, i32 0, i64 5
  %1149 = load i32* %arrayidx12.5.6.4, align 4
  %arrayidx15.5.6.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6.4, i32 0, i64 6
  %1150 = load i32* %arrayidx16.5.6.4, align 4
  %mul.5.6.4 = mul nsw i32 %1149, %1150
  %arrayidx19.5.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.6.4 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6.4, i32 0, i64 6
  %1151 = load i32* %arrayidx20.5.6.4, align 4
  %add.5.6.4 = add nsw i32 %1151, %mul.5.6.4
  store i32 %add.5.6.4, i32* %arrayidx20.5.6.4, align 4
  br label %for.inc.5.6.4

for.inc.5.6.4:                                    ; preds = %for.inc.4.6.4
  %arrayidx11.6.6.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.6.4 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6.4, i32 0, i64 6
  %1152 = load i32* %arrayidx12.6.6.4, align 4
  %arrayidx15.6.6.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6.4, i32 0, i64 6
  %1153 = load i32* %arrayidx16.6.6.4, align 4
  %mul.6.6.4 = mul nsw i32 %1152, %1153
  %arrayidx19.6.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.6.4 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6.4, i32 0, i64 6
  %1154 = load i32* %arrayidx20.6.6.4, align 4
  %add.6.6.4 = add nsw i32 %1154, %mul.6.6.4
  store i32 %add.6.6.4, i32* %arrayidx20.6.6.4, align 4
  br label %for.inc.6.6.4

for.inc.6.6.4:                                    ; preds = %for.inc.5.6.4
  %arrayidx11.7.6.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.6.4 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6.4, i32 0, i64 7
  %1155 = load i32* %arrayidx12.7.6.4, align 4
  %arrayidx15.7.6.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6.4, i32 0, i64 6
  %1156 = load i32* %arrayidx16.7.6.4, align 4
  %mul.7.6.4 = mul nsw i32 %1155, %1156
  %arrayidx19.7.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.6.4 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6.4, i32 0, i64 6
  %1157 = load i32* %arrayidx20.7.6.4, align 4
  %add.7.6.4 = add nsw i32 %1157, %mul.7.6.4
  store i32 %add.7.6.4, i32* %arrayidx20.7.6.4, align 4
  br label %for.inc.7.6.4

for.inc.7.6.4:                                    ; preds = %for.inc.6.6.4
  %arrayidx11.8.6.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.6.4 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6.4, i32 0, i64 8
  %1158 = load i32* %arrayidx12.8.6.4, align 4
  %arrayidx15.8.6.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6.4, i32 0, i64 6
  %1159 = load i32* %arrayidx16.8.6.4, align 4
  %mul.8.6.4 = mul nsw i32 %1158, %1159
  %arrayidx19.8.6.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.6.4 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6.4, i32 0, i64 6
  %1160 = load i32* %arrayidx20.8.6.4, align 4
  %add.8.6.4 = add nsw i32 %1160, %mul.8.6.4
  store i32 %add.8.6.4, i32* %arrayidx20.8.6.4, align 4
  br label %for.inc.8.6.4

for.inc.8.6.4:                                    ; preds = %for.inc.7.6.4
  br label %for.inc21.6.4

for.inc21.6.4:                                    ; preds = %for.inc.8.6.4
  %arrayidx.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.7.4 = getelementptr inbounds [9 x i32]* %arrayidx.7.4, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.4, align 4
  br label %for.body8.7.4

for.body8.7.4:                                    ; preds = %for.inc21.6.4
  %arrayidx11.764.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.765.4 = getelementptr inbounds [9 x i32]* %arrayidx11.764.4, i32 0, i64 0
  %1161 = load i32* %arrayidx12.765.4, align 4
  %arrayidx16.766.4 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %1162 = load i32* %arrayidx16.766.4, align 4
  %mul.767.4 = mul nsw i32 %1161, %1162
  %arrayidx19.769.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.770.4 = getelementptr inbounds [9 x i32]* %arrayidx19.769.4, i32 0, i64 7
  %1163 = load i32* %arrayidx20.770.4, align 4
  %add.771.4 = add nsw i32 %1163, %mul.767.4
  store i32 %add.771.4, i32* %arrayidx20.770.4, align 4
  br label %for.inc.772.4

for.inc.772.4:                                    ; preds = %for.body8.7.4
  %arrayidx11.1.7.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.7.4 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7.4, i32 0, i64 1
  %1164 = load i32* %arrayidx12.1.7.4, align 4
  %arrayidx15.1.7.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7.4, i32 0, i64 7
  %1165 = load i32* %arrayidx16.1.7.4, align 4
  %mul.1.7.4 = mul nsw i32 %1164, %1165
  %arrayidx19.1.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.7.4 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7.4, i32 0, i64 7
  %1166 = load i32* %arrayidx20.1.7.4, align 4
  %add.1.7.4 = add nsw i32 %1166, %mul.1.7.4
  store i32 %add.1.7.4, i32* %arrayidx20.1.7.4, align 4
  br label %for.inc.1.7.4

for.inc.1.7.4:                                    ; preds = %for.inc.772.4
  %arrayidx11.2.7.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.7.4 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7.4, i32 0, i64 2
  %1167 = load i32* %arrayidx12.2.7.4, align 4
  %arrayidx15.2.7.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7.4, i32 0, i64 7
  %1168 = load i32* %arrayidx16.2.7.4, align 4
  %mul.2.7.4 = mul nsw i32 %1167, %1168
  %arrayidx19.2.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.7.4 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7.4, i32 0, i64 7
  %1169 = load i32* %arrayidx20.2.7.4, align 4
  %add.2.7.4 = add nsw i32 %1169, %mul.2.7.4
  store i32 %add.2.7.4, i32* %arrayidx20.2.7.4, align 4
  br label %for.inc.2.7.4

for.inc.2.7.4:                                    ; preds = %for.inc.1.7.4
  %arrayidx11.3.7.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.7.4 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7.4, i32 0, i64 3
  %1170 = load i32* %arrayidx12.3.7.4, align 4
  %arrayidx15.3.7.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7.4, i32 0, i64 7
  %1171 = load i32* %arrayidx16.3.7.4, align 4
  %mul.3.7.4 = mul nsw i32 %1170, %1171
  %arrayidx19.3.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.7.4 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7.4, i32 0, i64 7
  %1172 = load i32* %arrayidx20.3.7.4, align 4
  %add.3.7.4 = add nsw i32 %1172, %mul.3.7.4
  store i32 %add.3.7.4, i32* %arrayidx20.3.7.4, align 4
  br label %for.inc.3.7.4

for.inc.3.7.4:                                    ; preds = %for.inc.2.7.4
  %arrayidx11.4.7.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.7.4 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7.4, i32 0, i64 4
  %1173 = load i32* %arrayidx12.4.7.4, align 4
  %arrayidx15.4.7.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7.4, i32 0, i64 7
  %1174 = load i32* %arrayidx16.4.7.4, align 4
  %mul.4.7.4 = mul nsw i32 %1173, %1174
  %arrayidx19.4.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.7.4 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7.4, i32 0, i64 7
  %1175 = load i32* %arrayidx20.4.7.4, align 4
  %add.4.7.4 = add nsw i32 %1175, %mul.4.7.4
  store i32 %add.4.7.4, i32* %arrayidx20.4.7.4, align 4
  br label %for.inc.4.7.4

for.inc.4.7.4:                                    ; preds = %for.inc.3.7.4
  %arrayidx11.5.7.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.7.4 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7.4, i32 0, i64 5
  %1176 = load i32* %arrayidx12.5.7.4, align 4
  %arrayidx15.5.7.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7.4, i32 0, i64 7
  %1177 = load i32* %arrayidx16.5.7.4, align 4
  %mul.5.7.4 = mul nsw i32 %1176, %1177
  %arrayidx19.5.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.7.4 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7.4, i32 0, i64 7
  %1178 = load i32* %arrayidx20.5.7.4, align 4
  %add.5.7.4 = add nsw i32 %1178, %mul.5.7.4
  store i32 %add.5.7.4, i32* %arrayidx20.5.7.4, align 4
  br label %for.inc.5.7.4

for.inc.5.7.4:                                    ; preds = %for.inc.4.7.4
  %arrayidx11.6.7.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.7.4 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7.4, i32 0, i64 6
  %1179 = load i32* %arrayidx12.6.7.4, align 4
  %arrayidx15.6.7.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7.4, i32 0, i64 7
  %1180 = load i32* %arrayidx16.6.7.4, align 4
  %mul.6.7.4 = mul nsw i32 %1179, %1180
  %arrayidx19.6.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.7.4 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7.4, i32 0, i64 7
  %1181 = load i32* %arrayidx20.6.7.4, align 4
  %add.6.7.4 = add nsw i32 %1181, %mul.6.7.4
  store i32 %add.6.7.4, i32* %arrayidx20.6.7.4, align 4
  br label %for.inc.6.7.4

for.inc.6.7.4:                                    ; preds = %for.inc.5.7.4
  %arrayidx11.7.7.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.7.4 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7.4, i32 0, i64 7
  %1182 = load i32* %arrayidx12.7.7.4, align 4
  %arrayidx15.7.7.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7.4, i32 0, i64 7
  %1183 = load i32* %arrayidx16.7.7.4, align 4
  %mul.7.7.4 = mul nsw i32 %1182, %1183
  %arrayidx19.7.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.7.4 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7.4, i32 0, i64 7
  %1184 = load i32* %arrayidx20.7.7.4, align 4
  %add.7.7.4 = add nsw i32 %1184, %mul.7.7.4
  store i32 %add.7.7.4, i32* %arrayidx20.7.7.4, align 4
  br label %for.inc.7.7.4

for.inc.7.7.4:                                    ; preds = %for.inc.6.7.4
  %arrayidx11.8.7.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.7.4 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7.4, i32 0, i64 8
  %1185 = load i32* %arrayidx12.8.7.4, align 4
  %arrayidx15.8.7.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7.4, i32 0, i64 7
  %1186 = load i32* %arrayidx16.8.7.4, align 4
  %mul.8.7.4 = mul nsw i32 %1185, %1186
  %arrayidx19.8.7.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.7.4 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7.4, i32 0, i64 7
  %1187 = load i32* %arrayidx20.8.7.4, align 4
  %add.8.7.4 = add nsw i32 %1187, %mul.8.7.4
  store i32 %add.8.7.4, i32* %arrayidx20.8.7.4, align 4
  br label %for.inc.8.7.4

for.inc.8.7.4:                                    ; preds = %for.inc.7.7.4
  br label %for.inc21.7.4

for.inc21.7.4:                                    ; preds = %for.inc.8.7.4
  %arrayidx.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx5.8.4 = getelementptr inbounds [9 x i32]* %arrayidx.8.4, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.4, align 4
  br label %for.body8.8.4

for.body8.8.4:                                    ; preds = %for.inc21.7.4
  %arrayidx11.874.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.875.4 = getelementptr inbounds [9 x i32]* %arrayidx11.874.4, i32 0, i64 0
  %1188 = load i32* %arrayidx12.875.4, align 4
  %arrayidx16.876.4 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %1189 = load i32* %arrayidx16.876.4, align 4
  %mul.877.4 = mul nsw i32 %1188, %1189
  %arrayidx19.879.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.880.4 = getelementptr inbounds [9 x i32]* %arrayidx19.879.4, i32 0, i64 8
  %1190 = load i32* %arrayidx20.880.4, align 4
  %add.881.4 = add nsw i32 %1190, %mul.877.4
  store i32 %add.881.4, i32* %arrayidx20.880.4, align 4
  br label %for.inc.882.4

for.inc.882.4:                                    ; preds = %for.body8.8.4
  %arrayidx11.1.8.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.1.8.4 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8.4, i32 0, i64 1
  %1191 = load i32* %arrayidx12.1.8.4, align 4
  %arrayidx15.1.8.4 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8.4, i32 0, i64 8
  %1192 = load i32* %arrayidx16.1.8.4, align 4
  %mul.1.8.4 = mul nsw i32 %1191, %1192
  %arrayidx19.1.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.1.8.4 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8.4, i32 0, i64 8
  %1193 = load i32* %arrayidx20.1.8.4, align 4
  %add.1.8.4 = add nsw i32 %1193, %mul.1.8.4
  store i32 %add.1.8.4, i32* %arrayidx20.1.8.4, align 4
  br label %for.inc.1.8.4

for.inc.1.8.4:                                    ; preds = %for.inc.882.4
  %arrayidx11.2.8.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.2.8.4 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8.4, i32 0, i64 2
  %1194 = load i32* %arrayidx12.2.8.4, align 4
  %arrayidx15.2.8.4 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8.4, i32 0, i64 8
  %1195 = load i32* %arrayidx16.2.8.4, align 4
  %mul.2.8.4 = mul nsw i32 %1194, %1195
  %arrayidx19.2.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.2.8.4 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8.4, i32 0, i64 8
  %1196 = load i32* %arrayidx20.2.8.4, align 4
  %add.2.8.4 = add nsw i32 %1196, %mul.2.8.4
  store i32 %add.2.8.4, i32* %arrayidx20.2.8.4, align 4
  br label %for.inc.2.8.4

for.inc.2.8.4:                                    ; preds = %for.inc.1.8.4
  %arrayidx11.3.8.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.3.8.4 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8.4, i32 0, i64 3
  %1197 = load i32* %arrayidx12.3.8.4, align 4
  %arrayidx15.3.8.4 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8.4, i32 0, i64 8
  %1198 = load i32* %arrayidx16.3.8.4, align 4
  %mul.3.8.4 = mul nsw i32 %1197, %1198
  %arrayidx19.3.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.3.8.4 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8.4, i32 0, i64 8
  %1199 = load i32* %arrayidx20.3.8.4, align 4
  %add.3.8.4 = add nsw i32 %1199, %mul.3.8.4
  store i32 %add.3.8.4, i32* %arrayidx20.3.8.4, align 4
  br label %for.inc.3.8.4

for.inc.3.8.4:                                    ; preds = %for.inc.2.8.4
  %arrayidx11.4.8.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.4.8.4 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8.4, i32 0, i64 4
  %1200 = load i32* %arrayidx12.4.8.4, align 4
  %arrayidx15.4.8.4 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8.4, i32 0, i64 8
  %1201 = load i32* %arrayidx16.4.8.4, align 4
  %mul.4.8.4 = mul nsw i32 %1200, %1201
  %arrayidx19.4.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.4.8.4 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8.4, i32 0, i64 8
  %1202 = load i32* %arrayidx20.4.8.4, align 4
  %add.4.8.4 = add nsw i32 %1202, %mul.4.8.4
  store i32 %add.4.8.4, i32* %arrayidx20.4.8.4, align 4
  br label %for.inc.4.8.4

for.inc.4.8.4:                                    ; preds = %for.inc.3.8.4
  %arrayidx11.5.8.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.5.8.4 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8.4, i32 0, i64 5
  %1203 = load i32* %arrayidx12.5.8.4, align 4
  %arrayidx15.5.8.4 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8.4, i32 0, i64 8
  %1204 = load i32* %arrayidx16.5.8.4, align 4
  %mul.5.8.4 = mul nsw i32 %1203, %1204
  %arrayidx19.5.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.5.8.4 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8.4, i32 0, i64 8
  %1205 = load i32* %arrayidx20.5.8.4, align 4
  %add.5.8.4 = add nsw i32 %1205, %mul.5.8.4
  store i32 %add.5.8.4, i32* %arrayidx20.5.8.4, align 4
  br label %for.inc.5.8.4

for.inc.5.8.4:                                    ; preds = %for.inc.4.8.4
  %arrayidx11.6.8.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.6.8.4 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8.4, i32 0, i64 6
  %1206 = load i32* %arrayidx12.6.8.4, align 4
  %arrayidx15.6.8.4 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8.4, i32 0, i64 8
  %1207 = load i32* %arrayidx16.6.8.4, align 4
  %mul.6.8.4 = mul nsw i32 %1206, %1207
  %arrayidx19.6.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.6.8.4 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8.4, i32 0, i64 8
  %1208 = load i32* %arrayidx20.6.8.4, align 4
  %add.6.8.4 = add nsw i32 %1208, %mul.6.8.4
  store i32 %add.6.8.4, i32* %arrayidx20.6.8.4, align 4
  br label %for.inc.6.8.4

for.inc.6.8.4:                                    ; preds = %for.inc.5.8.4
  %arrayidx11.7.8.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.7.8.4 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8.4, i32 0, i64 7
  %1209 = load i32* %arrayidx12.7.8.4, align 4
  %arrayidx15.7.8.4 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8.4, i32 0, i64 8
  %1210 = load i32* %arrayidx16.7.8.4, align 4
  %mul.7.8.4 = mul nsw i32 %1209, %1210
  %arrayidx19.7.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.7.8.4 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8.4, i32 0, i64 8
  %1211 = load i32* %arrayidx20.7.8.4, align 4
  %add.7.8.4 = add nsw i32 %1211, %mul.7.8.4
  store i32 %add.7.8.4, i32* %arrayidx20.7.8.4, align 4
  br label %for.inc.7.8.4

for.inc.7.8.4:                                    ; preds = %for.inc.6.8.4
  %arrayidx11.8.8.4 = getelementptr inbounds [9 x i32]* %a, i64 4
  %arrayidx12.8.8.4 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8.4, i32 0, i64 8
  %1212 = load i32* %arrayidx12.8.8.4, align 4
  %arrayidx15.8.8.4 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8.4 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8.4, i32 0, i64 8
  %1213 = load i32* %arrayidx16.8.8.4, align 4
  %mul.8.8.4 = mul nsw i32 %1212, %1213
  %arrayidx19.8.8.4 = getelementptr inbounds [9 x i32]* %c, i64 4
  %arrayidx20.8.8.4 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8.4, i32 0, i64 8
  %1214 = load i32* %arrayidx20.8.8.4, align 4
  %add.8.8.4 = add nsw i32 %1214, %mul.8.8.4
  store i32 %add.8.8.4, i32* %arrayidx20.8.8.4, align 4
  br label %for.inc.8.8.4

for.inc.8.8.4:                                    ; preds = %for.inc.7.8.4
  br label %for.inc21.8.4

for.inc21.8.4:                                    ; preds = %for.inc.8.8.4
  br label %for.inc24.4

for.inc24.4:                                      ; preds = %for.inc21.8.4
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.inc24.4
  %arrayidx.5420 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.5421 = getelementptr inbounds [9 x i32]* %arrayidx.5420, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.5421, align 4
  br label %for.body8.5429

for.body8.5429:                                   ; preds = %for.body3.5
  %arrayidx11.5422 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5423 = getelementptr inbounds [9 x i32]* %arrayidx11.5422, i32 0, i64 0
  %1215 = load i32* %arrayidx12.5423, align 4
  %arrayidx16.5424 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %1216 = load i32* %arrayidx16.5424, align 4
  %mul.5425 = mul nsw i32 %1215, %1216
  %arrayidx19.5426 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5427 = getelementptr inbounds [9 x i32]* %arrayidx19.5426, i32 0, i64 0
  %1217 = load i32* %arrayidx20.5427, align 4
  %add.5428 = add nsw i32 %1217, %mul.5425
  store i32 %add.5428, i32* %arrayidx20.5427, align 4
  br label %for.inc.5438

for.inc.5438:                                     ; preds = %for.body8.5429
  %arrayidx11.1.5430 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.5431 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5430, i32 0, i64 1
  %1218 = load i32* %arrayidx12.1.5431, align 4
  %arrayidx15.1.5432 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5433 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5432, i32 0, i64 0
  %1219 = load i32* %arrayidx16.1.5433, align 4
  %mul.1.5434 = mul nsw i32 %1218, %1219
  %arrayidx19.1.5435 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.5436 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5435, i32 0, i64 0
  %1220 = load i32* %arrayidx20.1.5436, align 4
  %add.1.5437 = add nsw i32 %1220, %mul.1.5434
  store i32 %add.1.5437, i32* %arrayidx20.1.5436, align 4
  br label %for.inc.1.5447

for.inc.1.5447:                                   ; preds = %for.inc.5438
  %arrayidx11.2.5439 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.5440 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5439, i32 0, i64 2
  %1221 = load i32* %arrayidx12.2.5440, align 4
  %arrayidx15.2.5441 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5442 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5441, i32 0, i64 0
  %1222 = load i32* %arrayidx16.2.5442, align 4
  %mul.2.5443 = mul nsw i32 %1221, %1222
  %arrayidx19.2.5444 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.5445 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5444, i32 0, i64 0
  %1223 = load i32* %arrayidx20.2.5445, align 4
  %add.2.5446 = add nsw i32 %1223, %mul.2.5443
  store i32 %add.2.5446, i32* %arrayidx20.2.5445, align 4
  br label %for.inc.2.5456

for.inc.2.5456:                                   ; preds = %for.inc.1.5447
  %arrayidx11.3.5448 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.5449 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5448, i32 0, i64 3
  %1224 = load i32* %arrayidx12.3.5449, align 4
  %arrayidx15.3.5450 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5451 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5450, i32 0, i64 0
  %1225 = load i32* %arrayidx16.3.5451, align 4
  %mul.3.5452 = mul nsw i32 %1224, %1225
  %arrayidx19.3.5453 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.5454 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5453, i32 0, i64 0
  %1226 = load i32* %arrayidx20.3.5454, align 4
  %add.3.5455 = add nsw i32 %1226, %mul.3.5452
  store i32 %add.3.5455, i32* %arrayidx20.3.5454, align 4
  br label %for.inc.3.5465

for.inc.3.5465:                                   ; preds = %for.inc.2.5456
  %arrayidx11.4.5457 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.5458 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5457, i32 0, i64 4
  %1227 = load i32* %arrayidx12.4.5458, align 4
  %arrayidx15.4.5459 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5460 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5459, i32 0, i64 0
  %1228 = load i32* %arrayidx16.4.5460, align 4
  %mul.4.5461 = mul nsw i32 %1227, %1228
  %arrayidx19.4.5462 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.5463 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5462, i32 0, i64 0
  %1229 = load i32* %arrayidx20.4.5463, align 4
  %add.4.5464 = add nsw i32 %1229, %mul.4.5461
  store i32 %add.4.5464, i32* %arrayidx20.4.5463, align 4
  br label %for.inc.4.5474

for.inc.4.5474:                                   ; preds = %for.inc.3.5465
  %arrayidx11.5.5466 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.5467 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5466, i32 0, i64 5
  %1230 = load i32* %arrayidx12.5.5467, align 4
  %arrayidx15.5.5468 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5469 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5468, i32 0, i64 0
  %1231 = load i32* %arrayidx16.5.5469, align 4
  %mul.5.5470 = mul nsw i32 %1230, %1231
  %arrayidx19.5.5471 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.5472 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5471, i32 0, i64 0
  %1232 = load i32* %arrayidx20.5.5472, align 4
  %add.5.5473 = add nsw i32 %1232, %mul.5.5470
  store i32 %add.5.5473, i32* %arrayidx20.5.5472, align 4
  br label %for.inc.5.5483

for.inc.5.5483:                                   ; preds = %for.inc.4.5474
  %arrayidx11.6.5475 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.5476 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5475, i32 0, i64 6
  %1233 = load i32* %arrayidx12.6.5476, align 4
  %arrayidx15.6.5477 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5478 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5477, i32 0, i64 0
  %1234 = load i32* %arrayidx16.6.5478, align 4
  %mul.6.5479 = mul nsw i32 %1233, %1234
  %arrayidx19.6.5480 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.5481 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5480, i32 0, i64 0
  %1235 = load i32* %arrayidx20.6.5481, align 4
  %add.6.5482 = add nsw i32 %1235, %mul.6.5479
  store i32 %add.6.5482, i32* %arrayidx20.6.5481, align 4
  br label %for.inc.6.5492

for.inc.6.5492:                                   ; preds = %for.inc.5.5483
  %arrayidx11.7.5484 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.5485 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5484, i32 0, i64 7
  %1236 = load i32* %arrayidx12.7.5485, align 4
  %arrayidx15.7.5486 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5487 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5486, i32 0, i64 0
  %1237 = load i32* %arrayidx16.7.5487, align 4
  %mul.7.5488 = mul nsw i32 %1236, %1237
  %arrayidx19.7.5489 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.5490 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5489, i32 0, i64 0
  %1238 = load i32* %arrayidx20.7.5490, align 4
  %add.7.5491 = add nsw i32 %1238, %mul.7.5488
  store i32 %add.7.5491, i32* %arrayidx20.7.5490, align 4
  br label %for.inc.7.5501

for.inc.7.5501:                                   ; preds = %for.inc.6.5492
  %arrayidx11.8.5493 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.5494 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5493, i32 0, i64 8
  %1239 = load i32* %arrayidx12.8.5494, align 4
  %arrayidx15.8.5495 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5496 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5495, i32 0, i64 0
  %1240 = load i32* %arrayidx16.8.5496, align 4
  %mul.8.5497 = mul nsw i32 %1239, %1240
  %arrayidx19.8.5498 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.5499 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5498, i32 0, i64 0
  %1241 = load i32* %arrayidx20.8.5499, align 4
  %add.8.5500 = add nsw i32 %1241, %mul.8.5497
  store i32 %add.8.5500, i32* %arrayidx20.8.5499, align 4
  br label %for.inc.8.5502

for.inc.8.5502:                                   ; preds = %for.inc.7.5501
  br label %for.inc21.5503

for.inc21.5503:                                   ; preds = %for.inc.8.5502
  %arrayidx.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.1.5 = getelementptr inbounds [9 x i32]* %arrayidx.1.5, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.5, align 4
  br label %for.body8.1.5

for.body8.1.5:                                    ; preds = %for.inc21.5503
  %arrayidx11.14.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.15.5 = getelementptr inbounds [9 x i32]* %arrayidx11.14.5, i32 0, i64 0
  %1242 = load i32* %arrayidx12.15.5, align 4
  %arrayidx16.16.5 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %1243 = load i32* %arrayidx16.16.5, align 4
  %mul.17.5 = mul nsw i32 %1242, %1243
  %arrayidx19.19.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.110.5 = getelementptr inbounds [9 x i32]* %arrayidx19.19.5, i32 0, i64 1
  %1244 = load i32* %arrayidx20.110.5, align 4
  %add.111.5 = add nsw i32 %1244, %mul.17.5
  store i32 %add.111.5, i32* %arrayidx20.110.5, align 4
  br label %for.inc.112.5

for.inc.112.5:                                    ; preds = %for.body8.1.5
  %arrayidx11.1.1.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.1.5 = getelementptr inbounds [9 x i32]* %arrayidx11.1.1.5, i32 0, i64 1
  %1245 = load i32* %arrayidx12.1.1.5, align 4
  %arrayidx15.1.1.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1.5, i32 0, i64 1
  %1246 = load i32* %arrayidx16.1.1.5, align 4
  %mul.1.1.5 = mul nsw i32 %1245, %1246
  %arrayidx19.1.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.1.5 = getelementptr inbounds [9 x i32]* %arrayidx19.1.1.5, i32 0, i64 1
  %1247 = load i32* %arrayidx20.1.1.5, align 4
  %add.1.1.5 = add nsw i32 %1247, %mul.1.1.5
  store i32 %add.1.1.5, i32* %arrayidx20.1.1.5, align 4
  br label %for.inc.1.1.5

for.inc.1.1.5:                                    ; preds = %for.inc.112.5
  %arrayidx11.2.1.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.1.5 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1.5, i32 0, i64 2
  %1248 = load i32* %arrayidx12.2.1.5, align 4
  %arrayidx15.2.1.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1.5, i32 0, i64 1
  %1249 = load i32* %arrayidx16.2.1.5, align 4
  %mul.2.1.5 = mul nsw i32 %1248, %1249
  %arrayidx19.2.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.1.5 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1.5, i32 0, i64 1
  %1250 = load i32* %arrayidx20.2.1.5, align 4
  %add.2.1.5 = add nsw i32 %1250, %mul.2.1.5
  store i32 %add.2.1.5, i32* %arrayidx20.2.1.5, align 4
  br label %for.inc.2.1.5

for.inc.2.1.5:                                    ; preds = %for.inc.1.1.5
  %arrayidx11.3.1.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.1.5 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1.5, i32 0, i64 3
  %1251 = load i32* %arrayidx12.3.1.5, align 4
  %arrayidx15.3.1.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1.5, i32 0, i64 1
  %1252 = load i32* %arrayidx16.3.1.5, align 4
  %mul.3.1.5 = mul nsw i32 %1251, %1252
  %arrayidx19.3.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.1.5 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1.5, i32 0, i64 1
  %1253 = load i32* %arrayidx20.3.1.5, align 4
  %add.3.1.5 = add nsw i32 %1253, %mul.3.1.5
  store i32 %add.3.1.5, i32* %arrayidx20.3.1.5, align 4
  br label %for.inc.3.1.5

for.inc.3.1.5:                                    ; preds = %for.inc.2.1.5
  %arrayidx11.4.1.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.1.5 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1.5, i32 0, i64 4
  %1254 = load i32* %arrayidx12.4.1.5, align 4
  %arrayidx15.4.1.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1.5, i32 0, i64 1
  %1255 = load i32* %arrayidx16.4.1.5, align 4
  %mul.4.1.5 = mul nsw i32 %1254, %1255
  %arrayidx19.4.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.1.5 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1.5, i32 0, i64 1
  %1256 = load i32* %arrayidx20.4.1.5, align 4
  %add.4.1.5 = add nsw i32 %1256, %mul.4.1.5
  store i32 %add.4.1.5, i32* %arrayidx20.4.1.5, align 4
  br label %for.inc.4.1.5

for.inc.4.1.5:                                    ; preds = %for.inc.3.1.5
  %arrayidx11.5.1.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.1.5 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1.5, i32 0, i64 5
  %1257 = load i32* %arrayidx12.5.1.5, align 4
  %arrayidx15.5.1.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1.5, i32 0, i64 1
  %1258 = load i32* %arrayidx16.5.1.5, align 4
  %mul.5.1.5 = mul nsw i32 %1257, %1258
  %arrayidx19.5.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.1.5 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1.5, i32 0, i64 1
  %1259 = load i32* %arrayidx20.5.1.5, align 4
  %add.5.1.5 = add nsw i32 %1259, %mul.5.1.5
  store i32 %add.5.1.5, i32* %arrayidx20.5.1.5, align 4
  br label %for.inc.5.1.5

for.inc.5.1.5:                                    ; preds = %for.inc.4.1.5
  %arrayidx11.6.1.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.1.5 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1.5, i32 0, i64 6
  %1260 = load i32* %arrayidx12.6.1.5, align 4
  %arrayidx15.6.1.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1.5, i32 0, i64 1
  %1261 = load i32* %arrayidx16.6.1.5, align 4
  %mul.6.1.5 = mul nsw i32 %1260, %1261
  %arrayidx19.6.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.1.5 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1.5, i32 0, i64 1
  %1262 = load i32* %arrayidx20.6.1.5, align 4
  %add.6.1.5 = add nsw i32 %1262, %mul.6.1.5
  store i32 %add.6.1.5, i32* %arrayidx20.6.1.5, align 4
  br label %for.inc.6.1.5

for.inc.6.1.5:                                    ; preds = %for.inc.5.1.5
  %arrayidx11.7.1.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.1.5 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1.5, i32 0, i64 7
  %1263 = load i32* %arrayidx12.7.1.5, align 4
  %arrayidx15.7.1.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1.5, i32 0, i64 1
  %1264 = load i32* %arrayidx16.7.1.5, align 4
  %mul.7.1.5 = mul nsw i32 %1263, %1264
  %arrayidx19.7.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.1.5 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1.5, i32 0, i64 1
  %1265 = load i32* %arrayidx20.7.1.5, align 4
  %add.7.1.5 = add nsw i32 %1265, %mul.7.1.5
  store i32 %add.7.1.5, i32* %arrayidx20.7.1.5, align 4
  br label %for.inc.7.1.5

for.inc.7.1.5:                                    ; preds = %for.inc.6.1.5
  %arrayidx11.8.1.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.1.5 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1.5, i32 0, i64 8
  %1266 = load i32* %arrayidx12.8.1.5, align 4
  %arrayidx15.8.1.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1.5, i32 0, i64 1
  %1267 = load i32* %arrayidx16.8.1.5, align 4
  %mul.8.1.5 = mul nsw i32 %1266, %1267
  %arrayidx19.8.1.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.1.5 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1.5, i32 0, i64 1
  %1268 = load i32* %arrayidx20.8.1.5, align 4
  %add.8.1.5 = add nsw i32 %1268, %mul.8.1.5
  store i32 %add.8.1.5, i32* %arrayidx20.8.1.5, align 4
  br label %for.inc.8.1.5

for.inc.8.1.5:                                    ; preds = %for.inc.7.1.5
  br label %for.inc21.1.5

for.inc21.1.5:                                    ; preds = %for.inc.8.1.5
  %arrayidx.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.2.5 = getelementptr inbounds [9 x i32]* %arrayidx.2.5, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.5, align 4
  br label %for.body8.2.5

for.body8.2.5:                                    ; preds = %for.inc21.1.5
  %arrayidx11.214.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.215.5 = getelementptr inbounds [9 x i32]* %arrayidx11.214.5, i32 0, i64 0
  %1269 = load i32* %arrayidx12.215.5, align 4
  %arrayidx16.216.5 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %1270 = load i32* %arrayidx16.216.5, align 4
  %mul.217.5 = mul nsw i32 %1269, %1270
  %arrayidx19.219.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.220.5 = getelementptr inbounds [9 x i32]* %arrayidx19.219.5, i32 0, i64 2
  %1271 = load i32* %arrayidx20.220.5, align 4
  %add.221.5 = add nsw i32 %1271, %mul.217.5
  store i32 %add.221.5, i32* %arrayidx20.220.5, align 4
  br label %for.inc.222.5

for.inc.222.5:                                    ; preds = %for.body8.2.5
  %arrayidx11.1.2.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.2.5 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2.5, i32 0, i64 1
  %1272 = load i32* %arrayidx12.1.2.5, align 4
  %arrayidx15.1.2.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2.5, i32 0, i64 2
  %1273 = load i32* %arrayidx16.1.2.5, align 4
  %mul.1.2.5 = mul nsw i32 %1272, %1273
  %arrayidx19.1.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.2.5 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2.5, i32 0, i64 2
  %1274 = load i32* %arrayidx20.1.2.5, align 4
  %add.1.2.5 = add nsw i32 %1274, %mul.1.2.5
  store i32 %add.1.2.5, i32* %arrayidx20.1.2.5, align 4
  br label %for.inc.1.2.5

for.inc.1.2.5:                                    ; preds = %for.inc.222.5
  %arrayidx11.2.2.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.2.5 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2.5, i32 0, i64 2
  %1275 = load i32* %arrayidx12.2.2.5, align 4
  %arrayidx15.2.2.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2.5, i32 0, i64 2
  %1276 = load i32* %arrayidx16.2.2.5, align 4
  %mul.2.2.5 = mul nsw i32 %1275, %1276
  %arrayidx19.2.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.2.5 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2.5, i32 0, i64 2
  %1277 = load i32* %arrayidx20.2.2.5, align 4
  %add.2.2.5 = add nsw i32 %1277, %mul.2.2.5
  store i32 %add.2.2.5, i32* %arrayidx20.2.2.5, align 4
  br label %for.inc.2.2.5

for.inc.2.2.5:                                    ; preds = %for.inc.1.2.5
  %arrayidx11.3.2.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.2.5 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2.5, i32 0, i64 3
  %1278 = load i32* %arrayidx12.3.2.5, align 4
  %arrayidx15.3.2.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2.5, i32 0, i64 2
  %1279 = load i32* %arrayidx16.3.2.5, align 4
  %mul.3.2.5 = mul nsw i32 %1278, %1279
  %arrayidx19.3.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.2.5 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2.5, i32 0, i64 2
  %1280 = load i32* %arrayidx20.3.2.5, align 4
  %add.3.2.5 = add nsw i32 %1280, %mul.3.2.5
  store i32 %add.3.2.5, i32* %arrayidx20.3.2.5, align 4
  br label %for.inc.3.2.5

for.inc.3.2.5:                                    ; preds = %for.inc.2.2.5
  %arrayidx11.4.2.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.2.5 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2.5, i32 0, i64 4
  %1281 = load i32* %arrayidx12.4.2.5, align 4
  %arrayidx15.4.2.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2.5, i32 0, i64 2
  %1282 = load i32* %arrayidx16.4.2.5, align 4
  %mul.4.2.5 = mul nsw i32 %1281, %1282
  %arrayidx19.4.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.2.5 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2.5, i32 0, i64 2
  %1283 = load i32* %arrayidx20.4.2.5, align 4
  %add.4.2.5 = add nsw i32 %1283, %mul.4.2.5
  store i32 %add.4.2.5, i32* %arrayidx20.4.2.5, align 4
  br label %for.inc.4.2.5

for.inc.4.2.5:                                    ; preds = %for.inc.3.2.5
  %arrayidx11.5.2.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.2.5 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2.5, i32 0, i64 5
  %1284 = load i32* %arrayidx12.5.2.5, align 4
  %arrayidx15.5.2.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2.5, i32 0, i64 2
  %1285 = load i32* %arrayidx16.5.2.5, align 4
  %mul.5.2.5 = mul nsw i32 %1284, %1285
  %arrayidx19.5.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.2.5 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2.5, i32 0, i64 2
  %1286 = load i32* %arrayidx20.5.2.5, align 4
  %add.5.2.5 = add nsw i32 %1286, %mul.5.2.5
  store i32 %add.5.2.5, i32* %arrayidx20.5.2.5, align 4
  br label %for.inc.5.2.5

for.inc.5.2.5:                                    ; preds = %for.inc.4.2.5
  %arrayidx11.6.2.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.2.5 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2.5, i32 0, i64 6
  %1287 = load i32* %arrayidx12.6.2.5, align 4
  %arrayidx15.6.2.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2.5, i32 0, i64 2
  %1288 = load i32* %arrayidx16.6.2.5, align 4
  %mul.6.2.5 = mul nsw i32 %1287, %1288
  %arrayidx19.6.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.2.5 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2.5, i32 0, i64 2
  %1289 = load i32* %arrayidx20.6.2.5, align 4
  %add.6.2.5 = add nsw i32 %1289, %mul.6.2.5
  store i32 %add.6.2.5, i32* %arrayidx20.6.2.5, align 4
  br label %for.inc.6.2.5

for.inc.6.2.5:                                    ; preds = %for.inc.5.2.5
  %arrayidx11.7.2.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.2.5 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2.5, i32 0, i64 7
  %1290 = load i32* %arrayidx12.7.2.5, align 4
  %arrayidx15.7.2.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2.5, i32 0, i64 2
  %1291 = load i32* %arrayidx16.7.2.5, align 4
  %mul.7.2.5 = mul nsw i32 %1290, %1291
  %arrayidx19.7.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.2.5 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2.5, i32 0, i64 2
  %1292 = load i32* %arrayidx20.7.2.5, align 4
  %add.7.2.5 = add nsw i32 %1292, %mul.7.2.5
  store i32 %add.7.2.5, i32* %arrayidx20.7.2.5, align 4
  br label %for.inc.7.2.5

for.inc.7.2.5:                                    ; preds = %for.inc.6.2.5
  %arrayidx11.8.2.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.2.5 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2.5, i32 0, i64 8
  %1293 = load i32* %arrayidx12.8.2.5, align 4
  %arrayidx15.8.2.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2.5, i32 0, i64 2
  %1294 = load i32* %arrayidx16.8.2.5, align 4
  %mul.8.2.5 = mul nsw i32 %1293, %1294
  %arrayidx19.8.2.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.2.5 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2.5, i32 0, i64 2
  %1295 = load i32* %arrayidx20.8.2.5, align 4
  %add.8.2.5 = add nsw i32 %1295, %mul.8.2.5
  store i32 %add.8.2.5, i32* %arrayidx20.8.2.5, align 4
  br label %for.inc.8.2.5

for.inc.8.2.5:                                    ; preds = %for.inc.7.2.5
  br label %for.inc21.2.5

for.inc21.2.5:                                    ; preds = %for.inc.8.2.5
  %arrayidx.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.3.5 = getelementptr inbounds [9 x i32]* %arrayidx.3.5, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.5, align 4
  br label %for.body8.3.5

for.body8.3.5:                                    ; preds = %for.inc21.2.5
  %arrayidx11.324.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.325.5 = getelementptr inbounds [9 x i32]* %arrayidx11.324.5, i32 0, i64 0
  %1296 = load i32* %arrayidx12.325.5, align 4
  %arrayidx16.326.5 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %1297 = load i32* %arrayidx16.326.5, align 4
  %mul.327.5 = mul nsw i32 %1296, %1297
  %arrayidx19.329.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.330.5 = getelementptr inbounds [9 x i32]* %arrayidx19.329.5, i32 0, i64 3
  %1298 = load i32* %arrayidx20.330.5, align 4
  %add.331.5 = add nsw i32 %1298, %mul.327.5
  store i32 %add.331.5, i32* %arrayidx20.330.5, align 4
  br label %for.inc.332.5

for.inc.332.5:                                    ; preds = %for.body8.3.5
  %arrayidx11.1.3.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.3.5 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3.5, i32 0, i64 1
  %1299 = load i32* %arrayidx12.1.3.5, align 4
  %arrayidx15.1.3.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3.5, i32 0, i64 3
  %1300 = load i32* %arrayidx16.1.3.5, align 4
  %mul.1.3.5 = mul nsw i32 %1299, %1300
  %arrayidx19.1.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.3.5 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3.5, i32 0, i64 3
  %1301 = load i32* %arrayidx20.1.3.5, align 4
  %add.1.3.5 = add nsw i32 %1301, %mul.1.3.5
  store i32 %add.1.3.5, i32* %arrayidx20.1.3.5, align 4
  br label %for.inc.1.3.5

for.inc.1.3.5:                                    ; preds = %for.inc.332.5
  %arrayidx11.2.3.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.3.5 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3.5, i32 0, i64 2
  %1302 = load i32* %arrayidx12.2.3.5, align 4
  %arrayidx15.2.3.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3.5, i32 0, i64 3
  %1303 = load i32* %arrayidx16.2.3.5, align 4
  %mul.2.3.5 = mul nsw i32 %1302, %1303
  %arrayidx19.2.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.3.5 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3.5, i32 0, i64 3
  %1304 = load i32* %arrayidx20.2.3.5, align 4
  %add.2.3.5 = add nsw i32 %1304, %mul.2.3.5
  store i32 %add.2.3.5, i32* %arrayidx20.2.3.5, align 4
  br label %for.inc.2.3.5

for.inc.2.3.5:                                    ; preds = %for.inc.1.3.5
  %arrayidx11.3.3.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.3.5 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3.5, i32 0, i64 3
  %1305 = load i32* %arrayidx12.3.3.5, align 4
  %arrayidx15.3.3.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3.5, i32 0, i64 3
  %1306 = load i32* %arrayidx16.3.3.5, align 4
  %mul.3.3.5 = mul nsw i32 %1305, %1306
  %arrayidx19.3.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.3.5 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3.5, i32 0, i64 3
  %1307 = load i32* %arrayidx20.3.3.5, align 4
  %add.3.3.5 = add nsw i32 %1307, %mul.3.3.5
  store i32 %add.3.3.5, i32* %arrayidx20.3.3.5, align 4
  br label %for.inc.3.3.5

for.inc.3.3.5:                                    ; preds = %for.inc.2.3.5
  %arrayidx11.4.3.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.3.5 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3.5, i32 0, i64 4
  %1308 = load i32* %arrayidx12.4.3.5, align 4
  %arrayidx15.4.3.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3.5, i32 0, i64 3
  %1309 = load i32* %arrayidx16.4.3.5, align 4
  %mul.4.3.5 = mul nsw i32 %1308, %1309
  %arrayidx19.4.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.3.5 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3.5, i32 0, i64 3
  %1310 = load i32* %arrayidx20.4.3.5, align 4
  %add.4.3.5 = add nsw i32 %1310, %mul.4.3.5
  store i32 %add.4.3.5, i32* %arrayidx20.4.3.5, align 4
  br label %for.inc.4.3.5

for.inc.4.3.5:                                    ; preds = %for.inc.3.3.5
  %arrayidx11.5.3.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.3.5 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3.5, i32 0, i64 5
  %1311 = load i32* %arrayidx12.5.3.5, align 4
  %arrayidx15.5.3.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3.5, i32 0, i64 3
  %1312 = load i32* %arrayidx16.5.3.5, align 4
  %mul.5.3.5 = mul nsw i32 %1311, %1312
  %arrayidx19.5.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.3.5 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3.5, i32 0, i64 3
  %1313 = load i32* %arrayidx20.5.3.5, align 4
  %add.5.3.5 = add nsw i32 %1313, %mul.5.3.5
  store i32 %add.5.3.5, i32* %arrayidx20.5.3.5, align 4
  br label %for.inc.5.3.5

for.inc.5.3.5:                                    ; preds = %for.inc.4.3.5
  %arrayidx11.6.3.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.3.5 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3.5, i32 0, i64 6
  %1314 = load i32* %arrayidx12.6.3.5, align 4
  %arrayidx15.6.3.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3.5, i32 0, i64 3
  %1315 = load i32* %arrayidx16.6.3.5, align 4
  %mul.6.3.5 = mul nsw i32 %1314, %1315
  %arrayidx19.6.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.3.5 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3.5, i32 0, i64 3
  %1316 = load i32* %arrayidx20.6.3.5, align 4
  %add.6.3.5 = add nsw i32 %1316, %mul.6.3.5
  store i32 %add.6.3.5, i32* %arrayidx20.6.3.5, align 4
  br label %for.inc.6.3.5

for.inc.6.3.5:                                    ; preds = %for.inc.5.3.5
  %arrayidx11.7.3.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.3.5 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3.5, i32 0, i64 7
  %1317 = load i32* %arrayidx12.7.3.5, align 4
  %arrayidx15.7.3.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3.5, i32 0, i64 3
  %1318 = load i32* %arrayidx16.7.3.5, align 4
  %mul.7.3.5 = mul nsw i32 %1317, %1318
  %arrayidx19.7.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.3.5 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3.5, i32 0, i64 3
  %1319 = load i32* %arrayidx20.7.3.5, align 4
  %add.7.3.5 = add nsw i32 %1319, %mul.7.3.5
  store i32 %add.7.3.5, i32* %arrayidx20.7.3.5, align 4
  br label %for.inc.7.3.5

for.inc.7.3.5:                                    ; preds = %for.inc.6.3.5
  %arrayidx11.8.3.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.3.5 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3.5, i32 0, i64 8
  %1320 = load i32* %arrayidx12.8.3.5, align 4
  %arrayidx15.8.3.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3.5, i32 0, i64 3
  %1321 = load i32* %arrayidx16.8.3.5, align 4
  %mul.8.3.5 = mul nsw i32 %1320, %1321
  %arrayidx19.8.3.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.3.5 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3.5, i32 0, i64 3
  %1322 = load i32* %arrayidx20.8.3.5, align 4
  %add.8.3.5 = add nsw i32 %1322, %mul.8.3.5
  store i32 %add.8.3.5, i32* %arrayidx20.8.3.5, align 4
  br label %for.inc.8.3.5

for.inc.8.3.5:                                    ; preds = %for.inc.7.3.5
  br label %for.inc21.3.5

for.inc21.3.5:                                    ; preds = %for.inc.8.3.5
  %arrayidx.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.4.5 = getelementptr inbounds [9 x i32]* %arrayidx.4.5, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.5, align 4
  br label %for.body8.4.5

for.body8.4.5:                                    ; preds = %for.inc21.3.5
  %arrayidx11.434.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.435.5 = getelementptr inbounds [9 x i32]* %arrayidx11.434.5, i32 0, i64 0
  %1323 = load i32* %arrayidx12.435.5, align 4
  %arrayidx16.436.5 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %1324 = load i32* %arrayidx16.436.5, align 4
  %mul.437.5 = mul nsw i32 %1323, %1324
  %arrayidx19.439.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.440.5 = getelementptr inbounds [9 x i32]* %arrayidx19.439.5, i32 0, i64 4
  %1325 = load i32* %arrayidx20.440.5, align 4
  %add.441.5 = add nsw i32 %1325, %mul.437.5
  store i32 %add.441.5, i32* %arrayidx20.440.5, align 4
  br label %for.inc.442.5

for.inc.442.5:                                    ; preds = %for.body8.4.5
  %arrayidx11.1.4.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.4.5 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4.5, i32 0, i64 1
  %1326 = load i32* %arrayidx12.1.4.5, align 4
  %arrayidx15.1.4.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4.5, i32 0, i64 4
  %1327 = load i32* %arrayidx16.1.4.5, align 4
  %mul.1.4.5 = mul nsw i32 %1326, %1327
  %arrayidx19.1.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.4.5 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4.5, i32 0, i64 4
  %1328 = load i32* %arrayidx20.1.4.5, align 4
  %add.1.4.5 = add nsw i32 %1328, %mul.1.4.5
  store i32 %add.1.4.5, i32* %arrayidx20.1.4.5, align 4
  br label %for.inc.1.4.5

for.inc.1.4.5:                                    ; preds = %for.inc.442.5
  %arrayidx11.2.4.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.4.5 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4.5, i32 0, i64 2
  %1329 = load i32* %arrayidx12.2.4.5, align 4
  %arrayidx15.2.4.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4.5, i32 0, i64 4
  %1330 = load i32* %arrayidx16.2.4.5, align 4
  %mul.2.4.5 = mul nsw i32 %1329, %1330
  %arrayidx19.2.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.4.5 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4.5, i32 0, i64 4
  %1331 = load i32* %arrayidx20.2.4.5, align 4
  %add.2.4.5 = add nsw i32 %1331, %mul.2.4.5
  store i32 %add.2.4.5, i32* %arrayidx20.2.4.5, align 4
  br label %for.inc.2.4.5

for.inc.2.4.5:                                    ; preds = %for.inc.1.4.5
  %arrayidx11.3.4.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.4.5 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4.5, i32 0, i64 3
  %1332 = load i32* %arrayidx12.3.4.5, align 4
  %arrayidx15.3.4.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4.5, i32 0, i64 4
  %1333 = load i32* %arrayidx16.3.4.5, align 4
  %mul.3.4.5 = mul nsw i32 %1332, %1333
  %arrayidx19.3.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.4.5 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4.5, i32 0, i64 4
  %1334 = load i32* %arrayidx20.3.4.5, align 4
  %add.3.4.5 = add nsw i32 %1334, %mul.3.4.5
  store i32 %add.3.4.5, i32* %arrayidx20.3.4.5, align 4
  br label %for.inc.3.4.5

for.inc.3.4.5:                                    ; preds = %for.inc.2.4.5
  %arrayidx11.4.4.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.4.5 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4.5, i32 0, i64 4
  %1335 = load i32* %arrayidx12.4.4.5, align 4
  %arrayidx15.4.4.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4.5, i32 0, i64 4
  %1336 = load i32* %arrayidx16.4.4.5, align 4
  %mul.4.4.5 = mul nsw i32 %1335, %1336
  %arrayidx19.4.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.4.5 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4.5, i32 0, i64 4
  %1337 = load i32* %arrayidx20.4.4.5, align 4
  %add.4.4.5 = add nsw i32 %1337, %mul.4.4.5
  store i32 %add.4.4.5, i32* %arrayidx20.4.4.5, align 4
  br label %for.inc.4.4.5

for.inc.4.4.5:                                    ; preds = %for.inc.3.4.5
  %arrayidx11.5.4.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.4.5 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4.5, i32 0, i64 5
  %1338 = load i32* %arrayidx12.5.4.5, align 4
  %arrayidx15.5.4.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4.5, i32 0, i64 4
  %1339 = load i32* %arrayidx16.5.4.5, align 4
  %mul.5.4.5 = mul nsw i32 %1338, %1339
  %arrayidx19.5.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.4.5 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4.5, i32 0, i64 4
  %1340 = load i32* %arrayidx20.5.4.5, align 4
  %add.5.4.5 = add nsw i32 %1340, %mul.5.4.5
  store i32 %add.5.4.5, i32* %arrayidx20.5.4.5, align 4
  br label %for.inc.5.4.5

for.inc.5.4.5:                                    ; preds = %for.inc.4.4.5
  %arrayidx11.6.4.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.4.5 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4.5, i32 0, i64 6
  %1341 = load i32* %arrayidx12.6.4.5, align 4
  %arrayidx15.6.4.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4.5, i32 0, i64 4
  %1342 = load i32* %arrayidx16.6.4.5, align 4
  %mul.6.4.5 = mul nsw i32 %1341, %1342
  %arrayidx19.6.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.4.5 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4.5, i32 0, i64 4
  %1343 = load i32* %arrayidx20.6.4.5, align 4
  %add.6.4.5 = add nsw i32 %1343, %mul.6.4.5
  store i32 %add.6.4.5, i32* %arrayidx20.6.4.5, align 4
  br label %for.inc.6.4.5

for.inc.6.4.5:                                    ; preds = %for.inc.5.4.5
  %arrayidx11.7.4.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.4.5 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4.5, i32 0, i64 7
  %1344 = load i32* %arrayidx12.7.4.5, align 4
  %arrayidx15.7.4.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4.5, i32 0, i64 4
  %1345 = load i32* %arrayidx16.7.4.5, align 4
  %mul.7.4.5 = mul nsw i32 %1344, %1345
  %arrayidx19.7.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.4.5 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4.5, i32 0, i64 4
  %1346 = load i32* %arrayidx20.7.4.5, align 4
  %add.7.4.5 = add nsw i32 %1346, %mul.7.4.5
  store i32 %add.7.4.5, i32* %arrayidx20.7.4.5, align 4
  br label %for.inc.7.4.5

for.inc.7.4.5:                                    ; preds = %for.inc.6.4.5
  %arrayidx11.8.4.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.4.5 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4.5, i32 0, i64 8
  %1347 = load i32* %arrayidx12.8.4.5, align 4
  %arrayidx15.8.4.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4.5, i32 0, i64 4
  %1348 = load i32* %arrayidx16.8.4.5, align 4
  %mul.8.4.5 = mul nsw i32 %1347, %1348
  %arrayidx19.8.4.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.4.5 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4.5, i32 0, i64 4
  %1349 = load i32* %arrayidx20.8.4.5, align 4
  %add.8.4.5 = add nsw i32 %1349, %mul.8.4.5
  store i32 %add.8.4.5, i32* %arrayidx20.8.4.5, align 4
  br label %for.inc.8.4.5

for.inc.8.4.5:                                    ; preds = %for.inc.7.4.5
  br label %for.inc21.4.5

for.inc21.4.5:                                    ; preds = %for.inc.8.4.5
  %arrayidx.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.5.5 = getelementptr inbounds [9 x i32]* %arrayidx.5.5, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.5, align 4
  br label %for.body8.5.5

for.body8.5.5:                                    ; preds = %for.inc21.4.5
  %arrayidx11.544.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.545.5 = getelementptr inbounds [9 x i32]* %arrayidx11.544.5, i32 0, i64 0
  %1350 = load i32* %arrayidx12.545.5, align 4
  %arrayidx16.546.5 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %1351 = load i32* %arrayidx16.546.5, align 4
  %mul.547.5 = mul nsw i32 %1350, %1351
  %arrayidx19.549.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.550.5 = getelementptr inbounds [9 x i32]* %arrayidx19.549.5, i32 0, i64 5
  %1352 = load i32* %arrayidx20.550.5, align 4
  %add.551.5 = add nsw i32 %1352, %mul.547.5
  store i32 %add.551.5, i32* %arrayidx20.550.5, align 4
  br label %for.inc.552.5

for.inc.552.5:                                    ; preds = %for.body8.5.5
  %arrayidx11.1.5.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.5.5 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5.5, i32 0, i64 1
  %1353 = load i32* %arrayidx12.1.5.5, align 4
  %arrayidx15.1.5.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5.5, i32 0, i64 5
  %1354 = load i32* %arrayidx16.1.5.5, align 4
  %mul.1.5.5 = mul nsw i32 %1353, %1354
  %arrayidx19.1.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.5.5 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5.5, i32 0, i64 5
  %1355 = load i32* %arrayidx20.1.5.5, align 4
  %add.1.5.5 = add nsw i32 %1355, %mul.1.5.5
  store i32 %add.1.5.5, i32* %arrayidx20.1.5.5, align 4
  br label %for.inc.1.5.5

for.inc.1.5.5:                                    ; preds = %for.inc.552.5
  %arrayidx11.2.5.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.5.5 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5.5, i32 0, i64 2
  %1356 = load i32* %arrayidx12.2.5.5, align 4
  %arrayidx15.2.5.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5.5, i32 0, i64 5
  %1357 = load i32* %arrayidx16.2.5.5, align 4
  %mul.2.5.5 = mul nsw i32 %1356, %1357
  %arrayidx19.2.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.5.5 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5.5, i32 0, i64 5
  %1358 = load i32* %arrayidx20.2.5.5, align 4
  %add.2.5.5 = add nsw i32 %1358, %mul.2.5.5
  store i32 %add.2.5.5, i32* %arrayidx20.2.5.5, align 4
  br label %for.inc.2.5.5

for.inc.2.5.5:                                    ; preds = %for.inc.1.5.5
  %arrayidx11.3.5.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.5.5 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5.5, i32 0, i64 3
  %1359 = load i32* %arrayidx12.3.5.5, align 4
  %arrayidx15.3.5.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5.5, i32 0, i64 5
  %1360 = load i32* %arrayidx16.3.5.5, align 4
  %mul.3.5.5 = mul nsw i32 %1359, %1360
  %arrayidx19.3.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.5.5 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5.5, i32 0, i64 5
  %1361 = load i32* %arrayidx20.3.5.5, align 4
  %add.3.5.5 = add nsw i32 %1361, %mul.3.5.5
  store i32 %add.3.5.5, i32* %arrayidx20.3.5.5, align 4
  br label %for.inc.3.5.5

for.inc.3.5.5:                                    ; preds = %for.inc.2.5.5
  %arrayidx11.4.5.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.5.5 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5.5, i32 0, i64 4
  %1362 = load i32* %arrayidx12.4.5.5, align 4
  %arrayidx15.4.5.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5.5, i32 0, i64 5
  %1363 = load i32* %arrayidx16.4.5.5, align 4
  %mul.4.5.5 = mul nsw i32 %1362, %1363
  %arrayidx19.4.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.5.5 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5.5, i32 0, i64 5
  %1364 = load i32* %arrayidx20.4.5.5, align 4
  %add.4.5.5 = add nsw i32 %1364, %mul.4.5.5
  store i32 %add.4.5.5, i32* %arrayidx20.4.5.5, align 4
  br label %for.inc.4.5.5

for.inc.4.5.5:                                    ; preds = %for.inc.3.5.5
  %arrayidx11.5.5.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.5.5 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5.5, i32 0, i64 5
  %1365 = load i32* %arrayidx12.5.5.5, align 4
  %arrayidx15.5.5.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5.5, i32 0, i64 5
  %1366 = load i32* %arrayidx16.5.5.5, align 4
  %mul.5.5.5 = mul nsw i32 %1365, %1366
  %arrayidx19.5.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.5.5 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5.5, i32 0, i64 5
  %1367 = load i32* %arrayidx20.5.5.5, align 4
  %add.5.5.5 = add nsw i32 %1367, %mul.5.5.5
  store i32 %add.5.5.5, i32* %arrayidx20.5.5.5, align 4
  br label %for.inc.5.5.5

for.inc.5.5.5:                                    ; preds = %for.inc.4.5.5
  %arrayidx11.6.5.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.5.5 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5.5, i32 0, i64 6
  %1368 = load i32* %arrayidx12.6.5.5, align 4
  %arrayidx15.6.5.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5.5, i32 0, i64 5
  %1369 = load i32* %arrayidx16.6.5.5, align 4
  %mul.6.5.5 = mul nsw i32 %1368, %1369
  %arrayidx19.6.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.5.5 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5.5, i32 0, i64 5
  %1370 = load i32* %arrayidx20.6.5.5, align 4
  %add.6.5.5 = add nsw i32 %1370, %mul.6.5.5
  store i32 %add.6.5.5, i32* %arrayidx20.6.5.5, align 4
  br label %for.inc.6.5.5

for.inc.6.5.5:                                    ; preds = %for.inc.5.5.5
  %arrayidx11.7.5.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.5.5 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5.5, i32 0, i64 7
  %1371 = load i32* %arrayidx12.7.5.5, align 4
  %arrayidx15.7.5.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5.5, i32 0, i64 5
  %1372 = load i32* %arrayidx16.7.5.5, align 4
  %mul.7.5.5 = mul nsw i32 %1371, %1372
  %arrayidx19.7.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.5.5 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5.5, i32 0, i64 5
  %1373 = load i32* %arrayidx20.7.5.5, align 4
  %add.7.5.5 = add nsw i32 %1373, %mul.7.5.5
  store i32 %add.7.5.5, i32* %arrayidx20.7.5.5, align 4
  br label %for.inc.7.5.5

for.inc.7.5.5:                                    ; preds = %for.inc.6.5.5
  %arrayidx11.8.5.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.5.5 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5.5, i32 0, i64 8
  %1374 = load i32* %arrayidx12.8.5.5, align 4
  %arrayidx15.8.5.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5.5, i32 0, i64 5
  %1375 = load i32* %arrayidx16.8.5.5, align 4
  %mul.8.5.5 = mul nsw i32 %1374, %1375
  %arrayidx19.8.5.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.5.5 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5.5, i32 0, i64 5
  %1376 = load i32* %arrayidx20.8.5.5, align 4
  %add.8.5.5 = add nsw i32 %1376, %mul.8.5.5
  store i32 %add.8.5.5, i32* %arrayidx20.8.5.5, align 4
  br label %for.inc.8.5.5

for.inc.8.5.5:                                    ; preds = %for.inc.7.5.5
  br label %for.inc21.5.5

for.inc21.5.5:                                    ; preds = %for.inc.8.5.5
  %arrayidx.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.6.5 = getelementptr inbounds [9 x i32]* %arrayidx.6.5, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.5, align 4
  br label %for.body8.6.5

for.body8.6.5:                                    ; preds = %for.inc21.5.5
  %arrayidx11.654.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.655.5 = getelementptr inbounds [9 x i32]* %arrayidx11.654.5, i32 0, i64 0
  %1377 = load i32* %arrayidx12.655.5, align 4
  %arrayidx16.656.5 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %1378 = load i32* %arrayidx16.656.5, align 4
  %mul.657.5 = mul nsw i32 %1377, %1378
  %arrayidx19.659.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.660.5 = getelementptr inbounds [9 x i32]* %arrayidx19.659.5, i32 0, i64 6
  %1379 = load i32* %arrayidx20.660.5, align 4
  %add.661.5 = add nsw i32 %1379, %mul.657.5
  store i32 %add.661.5, i32* %arrayidx20.660.5, align 4
  br label %for.inc.662.5

for.inc.662.5:                                    ; preds = %for.body8.6.5
  %arrayidx11.1.6.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.6.5 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6.5, i32 0, i64 1
  %1380 = load i32* %arrayidx12.1.6.5, align 4
  %arrayidx15.1.6.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6.5, i32 0, i64 6
  %1381 = load i32* %arrayidx16.1.6.5, align 4
  %mul.1.6.5 = mul nsw i32 %1380, %1381
  %arrayidx19.1.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.6.5 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6.5, i32 0, i64 6
  %1382 = load i32* %arrayidx20.1.6.5, align 4
  %add.1.6.5 = add nsw i32 %1382, %mul.1.6.5
  store i32 %add.1.6.5, i32* %arrayidx20.1.6.5, align 4
  br label %for.inc.1.6.5

for.inc.1.6.5:                                    ; preds = %for.inc.662.5
  %arrayidx11.2.6.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.6.5 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6.5, i32 0, i64 2
  %1383 = load i32* %arrayidx12.2.6.5, align 4
  %arrayidx15.2.6.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6.5, i32 0, i64 6
  %1384 = load i32* %arrayidx16.2.6.5, align 4
  %mul.2.6.5 = mul nsw i32 %1383, %1384
  %arrayidx19.2.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.6.5 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6.5, i32 0, i64 6
  %1385 = load i32* %arrayidx20.2.6.5, align 4
  %add.2.6.5 = add nsw i32 %1385, %mul.2.6.5
  store i32 %add.2.6.5, i32* %arrayidx20.2.6.5, align 4
  br label %for.inc.2.6.5

for.inc.2.6.5:                                    ; preds = %for.inc.1.6.5
  %arrayidx11.3.6.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.6.5 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6.5, i32 0, i64 3
  %1386 = load i32* %arrayidx12.3.6.5, align 4
  %arrayidx15.3.6.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6.5, i32 0, i64 6
  %1387 = load i32* %arrayidx16.3.6.5, align 4
  %mul.3.6.5 = mul nsw i32 %1386, %1387
  %arrayidx19.3.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.6.5 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6.5, i32 0, i64 6
  %1388 = load i32* %arrayidx20.3.6.5, align 4
  %add.3.6.5 = add nsw i32 %1388, %mul.3.6.5
  store i32 %add.3.6.5, i32* %arrayidx20.3.6.5, align 4
  br label %for.inc.3.6.5

for.inc.3.6.5:                                    ; preds = %for.inc.2.6.5
  %arrayidx11.4.6.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.6.5 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6.5, i32 0, i64 4
  %1389 = load i32* %arrayidx12.4.6.5, align 4
  %arrayidx15.4.6.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6.5, i32 0, i64 6
  %1390 = load i32* %arrayidx16.4.6.5, align 4
  %mul.4.6.5 = mul nsw i32 %1389, %1390
  %arrayidx19.4.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.6.5 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6.5, i32 0, i64 6
  %1391 = load i32* %arrayidx20.4.6.5, align 4
  %add.4.6.5 = add nsw i32 %1391, %mul.4.6.5
  store i32 %add.4.6.5, i32* %arrayidx20.4.6.5, align 4
  br label %for.inc.4.6.5

for.inc.4.6.5:                                    ; preds = %for.inc.3.6.5
  %arrayidx11.5.6.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.6.5 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6.5, i32 0, i64 5
  %1392 = load i32* %arrayidx12.5.6.5, align 4
  %arrayidx15.5.6.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6.5, i32 0, i64 6
  %1393 = load i32* %arrayidx16.5.6.5, align 4
  %mul.5.6.5 = mul nsw i32 %1392, %1393
  %arrayidx19.5.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.6.5 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6.5, i32 0, i64 6
  %1394 = load i32* %arrayidx20.5.6.5, align 4
  %add.5.6.5 = add nsw i32 %1394, %mul.5.6.5
  store i32 %add.5.6.5, i32* %arrayidx20.5.6.5, align 4
  br label %for.inc.5.6.5

for.inc.5.6.5:                                    ; preds = %for.inc.4.6.5
  %arrayidx11.6.6.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.6.5 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6.5, i32 0, i64 6
  %1395 = load i32* %arrayidx12.6.6.5, align 4
  %arrayidx15.6.6.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6.5, i32 0, i64 6
  %1396 = load i32* %arrayidx16.6.6.5, align 4
  %mul.6.6.5 = mul nsw i32 %1395, %1396
  %arrayidx19.6.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.6.5 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6.5, i32 0, i64 6
  %1397 = load i32* %arrayidx20.6.6.5, align 4
  %add.6.6.5 = add nsw i32 %1397, %mul.6.6.5
  store i32 %add.6.6.5, i32* %arrayidx20.6.6.5, align 4
  br label %for.inc.6.6.5

for.inc.6.6.5:                                    ; preds = %for.inc.5.6.5
  %arrayidx11.7.6.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.6.5 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6.5, i32 0, i64 7
  %1398 = load i32* %arrayidx12.7.6.5, align 4
  %arrayidx15.7.6.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6.5, i32 0, i64 6
  %1399 = load i32* %arrayidx16.7.6.5, align 4
  %mul.7.6.5 = mul nsw i32 %1398, %1399
  %arrayidx19.7.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.6.5 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6.5, i32 0, i64 6
  %1400 = load i32* %arrayidx20.7.6.5, align 4
  %add.7.6.5 = add nsw i32 %1400, %mul.7.6.5
  store i32 %add.7.6.5, i32* %arrayidx20.7.6.5, align 4
  br label %for.inc.7.6.5

for.inc.7.6.5:                                    ; preds = %for.inc.6.6.5
  %arrayidx11.8.6.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.6.5 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6.5, i32 0, i64 8
  %1401 = load i32* %arrayidx12.8.6.5, align 4
  %arrayidx15.8.6.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6.5, i32 0, i64 6
  %1402 = load i32* %arrayidx16.8.6.5, align 4
  %mul.8.6.5 = mul nsw i32 %1401, %1402
  %arrayidx19.8.6.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.6.5 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6.5, i32 0, i64 6
  %1403 = load i32* %arrayidx20.8.6.5, align 4
  %add.8.6.5 = add nsw i32 %1403, %mul.8.6.5
  store i32 %add.8.6.5, i32* %arrayidx20.8.6.5, align 4
  br label %for.inc.8.6.5

for.inc.8.6.5:                                    ; preds = %for.inc.7.6.5
  br label %for.inc21.6.5

for.inc21.6.5:                                    ; preds = %for.inc.8.6.5
  %arrayidx.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.7.5 = getelementptr inbounds [9 x i32]* %arrayidx.7.5, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.5, align 4
  br label %for.body8.7.5

for.body8.7.5:                                    ; preds = %for.inc21.6.5
  %arrayidx11.764.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.765.5 = getelementptr inbounds [9 x i32]* %arrayidx11.764.5, i32 0, i64 0
  %1404 = load i32* %arrayidx12.765.5, align 4
  %arrayidx16.766.5 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %1405 = load i32* %arrayidx16.766.5, align 4
  %mul.767.5 = mul nsw i32 %1404, %1405
  %arrayidx19.769.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.770.5 = getelementptr inbounds [9 x i32]* %arrayidx19.769.5, i32 0, i64 7
  %1406 = load i32* %arrayidx20.770.5, align 4
  %add.771.5 = add nsw i32 %1406, %mul.767.5
  store i32 %add.771.5, i32* %arrayidx20.770.5, align 4
  br label %for.inc.772.5

for.inc.772.5:                                    ; preds = %for.body8.7.5
  %arrayidx11.1.7.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.7.5 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7.5, i32 0, i64 1
  %1407 = load i32* %arrayidx12.1.7.5, align 4
  %arrayidx15.1.7.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7.5, i32 0, i64 7
  %1408 = load i32* %arrayidx16.1.7.5, align 4
  %mul.1.7.5 = mul nsw i32 %1407, %1408
  %arrayidx19.1.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.7.5 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7.5, i32 0, i64 7
  %1409 = load i32* %arrayidx20.1.7.5, align 4
  %add.1.7.5 = add nsw i32 %1409, %mul.1.7.5
  store i32 %add.1.7.5, i32* %arrayidx20.1.7.5, align 4
  br label %for.inc.1.7.5

for.inc.1.7.5:                                    ; preds = %for.inc.772.5
  %arrayidx11.2.7.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.7.5 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7.5, i32 0, i64 2
  %1410 = load i32* %arrayidx12.2.7.5, align 4
  %arrayidx15.2.7.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7.5, i32 0, i64 7
  %1411 = load i32* %arrayidx16.2.7.5, align 4
  %mul.2.7.5 = mul nsw i32 %1410, %1411
  %arrayidx19.2.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.7.5 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7.5, i32 0, i64 7
  %1412 = load i32* %arrayidx20.2.7.5, align 4
  %add.2.7.5 = add nsw i32 %1412, %mul.2.7.5
  store i32 %add.2.7.5, i32* %arrayidx20.2.7.5, align 4
  br label %for.inc.2.7.5

for.inc.2.7.5:                                    ; preds = %for.inc.1.7.5
  %arrayidx11.3.7.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.7.5 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7.5, i32 0, i64 3
  %1413 = load i32* %arrayidx12.3.7.5, align 4
  %arrayidx15.3.7.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7.5, i32 0, i64 7
  %1414 = load i32* %arrayidx16.3.7.5, align 4
  %mul.3.7.5 = mul nsw i32 %1413, %1414
  %arrayidx19.3.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.7.5 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7.5, i32 0, i64 7
  %1415 = load i32* %arrayidx20.3.7.5, align 4
  %add.3.7.5 = add nsw i32 %1415, %mul.3.7.5
  store i32 %add.3.7.5, i32* %arrayidx20.3.7.5, align 4
  br label %for.inc.3.7.5

for.inc.3.7.5:                                    ; preds = %for.inc.2.7.5
  %arrayidx11.4.7.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.7.5 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7.5, i32 0, i64 4
  %1416 = load i32* %arrayidx12.4.7.5, align 4
  %arrayidx15.4.7.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7.5, i32 0, i64 7
  %1417 = load i32* %arrayidx16.4.7.5, align 4
  %mul.4.7.5 = mul nsw i32 %1416, %1417
  %arrayidx19.4.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.7.5 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7.5, i32 0, i64 7
  %1418 = load i32* %arrayidx20.4.7.5, align 4
  %add.4.7.5 = add nsw i32 %1418, %mul.4.7.5
  store i32 %add.4.7.5, i32* %arrayidx20.4.7.5, align 4
  br label %for.inc.4.7.5

for.inc.4.7.5:                                    ; preds = %for.inc.3.7.5
  %arrayidx11.5.7.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.7.5 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7.5, i32 0, i64 5
  %1419 = load i32* %arrayidx12.5.7.5, align 4
  %arrayidx15.5.7.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7.5, i32 0, i64 7
  %1420 = load i32* %arrayidx16.5.7.5, align 4
  %mul.5.7.5 = mul nsw i32 %1419, %1420
  %arrayidx19.5.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.7.5 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7.5, i32 0, i64 7
  %1421 = load i32* %arrayidx20.5.7.5, align 4
  %add.5.7.5 = add nsw i32 %1421, %mul.5.7.5
  store i32 %add.5.7.5, i32* %arrayidx20.5.7.5, align 4
  br label %for.inc.5.7.5

for.inc.5.7.5:                                    ; preds = %for.inc.4.7.5
  %arrayidx11.6.7.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.7.5 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7.5, i32 0, i64 6
  %1422 = load i32* %arrayidx12.6.7.5, align 4
  %arrayidx15.6.7.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7.5, i32 0, i64 7
  %1423 = load i32* %arrayidx16.6.7.5, align 4
  %mul.6.7.5 = mul nsw i32 %1422, %1423
  %arrayidx19.6.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.7.5 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7.5, i32 0, i64 7
  %1424 = load i32* %arrayidx20.6.7.5, align 4
  %add.6.7.5 = add nsw i32 %1424, %mul.6.7.5
  store i32 %add.6.7.5, i32* %arrayidx20.6.7.5, align 4
  br label %for.inc.6.7.5

for.inc.6.7.5:                                    ; preds = %for.inc.5.7.5
  %arrayidx11.7.7.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.7.5 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7.5, i32 0, i64 7
  %1425 = load i32* %arrayidx12.7.7.5, align 4
  %arrayidx15.7.7.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7.5, i32 0, i64 7
  %1426 = load i32* %arrayidx16.7.7.5, align 4
  %mul.7.7.5 = mul nsw i32 %1425, %1426
  %arrayidx19.7.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.7.5 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7.5, i32 0, i64 7
  %1427 = load i32* %arrayidx20.7.7.5, align 4
  %add.7.7.5 = add nsw i32 %1427, %mul.7.7.5
  store i32 %add.7.7.5, i32* %arrayidx20.7.7.5, align 4
  br label %for.inc.7.7.5

for.inc.7.7.5:                                    ; preds = %for.inc.6.7.5
  %arrayidx11.8.7.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.7.5 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7.5, i32 0, i64 8
  %1428 = load i32* %arrayidx12.8.7.5, align 4
  %arrayidx15.8.7.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7.5, i32 0, i64 7
  %1429 = load i32* %arrayidx16.8.7.5, align 4
  %mul.8.7.5 = mul nsw i32 %1428, %1429
  %arrayidx19.8.7.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.7.5 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7.5, i32 0, i64 7
  %1430 = load i32* %arrayidx20.8.7.5, align 4
  %add.8.7.5 = add nsw i32 %1430, %mul.8.7.5
  store i32 %add.8.7.5, i32* %arrayidx20.8.7.5, align 4
  br label %for.inc.8.7.5

for.inc.8.7.5:                                    ; preds = %for.inc.7.7.5
  br label %for.inc21.7.5

for.inc21.7.5:                                    ; preds = %for.inc.8.7.5
  %arrayidx.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx5.8.5 = getelementptr inbounds [9 x i32]* %arrayidx.8.5, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.5, align 4
  br label %for.body8.8.5

for.body8.8.5:                                    ; preds = %for.inc21.7.5
  %arrayidx11.874.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.875.5 = getelementptr inbounds [9 x i32]* %arrayidx11.874.5, i32 0, i64 0
  %1431 = load i32* %arrayidx12.875.5, align 4
  %arrayidx16.876.5 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %1432 = load i32* %arrayidx16.876.5, align 4
  %mul.877.5 = mul nsw i32 %1431, %1432
  %arrayidx19.879.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.880.5 = getelementptr inbounds [9 x i32]* %arrayidx19.879.5, i32 0, i64 8
  %1433 = load i32* %arrayidx20.880.5, align 4
  %add.881.5 = add nsw i32 %1433, %mul.877.5
  store i32 %add.881.5, i32* %arrayidx20.880.5, align 4
  br label %for.inc.882.5

for.inc.882.5:                                    ; preds = %for.body8.8.5
  %arrayidx11.1.8.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.1.8.5 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8.5, i32 0, i64 1
  %1434 = load i32* %arrayidx12.1.8.5, align 4
  %arrayidx15.1.8.5 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8.5, i32 0, i64 8
  %1435 = load i32* %arrayidx16.1.8.5, align 4
  %mul.1.8.5 = mul nsw i32 %1434, %1435
  %arrayidx19.1.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.1.8.5 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8.5, i32 0, i64 8
  %1436 = load i32* %arrayidx20.1.8.5, align 4
  %add.1.8.5 = add nsw i32 %1436, %mul.1.8.5
  store i32 %add.1.8.5, i32* %arrayidx20.1.8.5, align 4
  br label %for.inc.1.8.5

for.inc.1.8.5:                                    ; preds = %for.inc.882.5
  %arrayidx11.2.8.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.2.8.5 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8.5, i32 0, i64 2
  %1437 = load i32* %arrayidx12.2.8.5, align 4
  %arrayidx15.2.8.5 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8.5, i32 0, i64 8
  %1438 = load i32* %arrayidx16.2.8.5, align 4
  %mul.2.8.5 = mul nsw i32 %1437, %1438
  %arrayidx19.2.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.2.8.5 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8.5, i32 0, i64 8
  %1439 = load i32* %arrayidx20.2.8.5, align 4
  %add.2.8.5 = add nsw i32 %1439, %mul.2.8.5
  store i32 %add.2.8.5, i32* %arrayidx20.2.8.5, align 4
  br label %for.inc.2.8.5

for.inc.2.8.5:                                    ; preds = %for.inc.1.8.5
  %arrayidx11.3.8.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.3.8.5 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8.5, i32 0, i64 3
  %1440 = load i32* %arrayidx12.3.8.5, align 4
  %arrayidx15.3.8.5 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8.5, i32 0, i64 8
  %1441 = load i32* %arrayidx16.3.8.5, align 4
  %mul.3.8.5 = mul nsw i32 %1440, %1441
  %arrayidx19.3.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.3.8.5 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8.5, i32 0, i64 8
  %1442 = load i32* %arrayidx20.3.8.5, align 4
  %add.3.8.5 = add nsw i32 %1442, %mul.3.8.5
  store i32 %add.3.8.5, i32* %arrayidx20.3.8.5, align 4
  br label %for.inc.3.8.5

for.inc.3.8.5:                                    ; preds = %for.inc.2.8.5
  %arrayidx11.4.8.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.4.8.5 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8.5, i32 0, i64 4
  %1443 = load i32* %arrayidx12.4.8.5, align 4
  %arrayidx15.4.8.5 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8.5, i32 0, i64 8
  %1444 = load i32* %arrayidx16.4.8.5, align 4
  %mul.4.8.5 = mul nsw i32 %1443, %1444
  %arrayidx19.4.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.4.8.5 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8.5, i32 0, i64 8
  %1445 = load i32* %arrayidx20.4.8.5, align 4
  %add.4.8.5 = add nsw i32 %1445, %mul.4.8.5
  store i32 %add.4.8.5, i32* %arrayidx20.4.8.5, align 4
  br label %for.inc.4.8.5

for.inc.4.8.5:                                    ; preds = %for.inc.3.8.5
  %arrayidx11.5.8.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.5.8.5 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8.5, i32 0, i64 5
  %1446 = load i32* %arrayidx12.5.8.5, align 4
  %arrayidx15.5.8.5 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8.5, i32 0, i64 8
  %1447 = load i32* %arrayidx16.5.8.5, align 4
  %mul.5.8.5 = mul nsw i32 %1446, %1447
  %arrayidx19.5.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.5.8.5 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8.5, i32 0, i64 8
  %1448 = load i32* %arrayidx20.5.8.5, align 4
  %add.5.8.5 = add nsw i32 %1448, %mul.5.8.5
  store i32 %add.5.8.5, i32* %arrayidx20.5.8.5, align 4
  br label %for.inc.5.8.5

for.inc.5.8.5:                                    ; preds = %for.inc.4.8.5
  %arrayidx11.6.8.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.6.8.5 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8.5, i32 0, i64 6
  %1449 = load i32* %arrayidx12.6.8.5, align 4
  %arrayidx15.6.8.5 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8.5, i32 0, i64 8
  %1450 = load i32* %arrayidx16.6.8.5, align 4
  %mul.6.8.5 = mul nsw i32 %1449, %1450
  %arrayidx19.6.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.6.8.5 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8.5, i32 0, i64 8
  %1451 = load i32* %arrayidx20.6.8.5, align 4
  %add.6.8.5 = add nsw i32 %1451, %mul.6.8.5
  store i32 %add.6.8.5, i32* %arrayidx20.6.8.5, align 4
  br label %for.inc.6.8.5

for.inc.6.8.5:                                    ; preds = %for.inc.5.8.5
  %arrayidx11.7.8.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.7.8.5 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8.5, i32 0, i64 7
  %1452 = load i32* %arrayidx12.7.8.5, align 4
  %arrayidx15.7.8.5 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8.5, i32 0, i64 8
  %1453 = load i32* %arrayidx16.7.8.5, align 4
  %mul.7.8.5 = mul nsw i32 %1452, %1453
  %arrayidx19.7.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.7.8.5 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8.5, i32 0, i64 8
  %1454 = load i32* %arrayidx20.7.8.5, align 4
  %add.7.8.5 = add nsw i32 %1454, %mul.7.8.5
  store i32 %add.7.8.5, i32* %arrayidx20.7.8.5, align 4
  br label %for.inc.7.8.5

for.inc.7.8.5:                                    ; preds = %for.inc.6.8.5
  %arrayidx11.8.8.5 = getelementptr inbounds [9 x i32]* %a, i64 5
  %arrayidx12.8.8.5 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8.5, i32 0, i64 8
  %1455 = load i32* %arrayidx12.8.8.5, align 4
  %arrayidx15.8.8.5 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8.5 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8.5, i32 0, i64 8
  %1456 = load i32* %arrayidx16.8.8.5, align 4
  %mul.8.8.5 = mul nsw i32 %1455, %1456
  %arrayidx19.8.8.5 = getelementptr inbounds [9 x i32]* %c, i64 5
  %arrayidx20.8.8.5 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8.5, i32 0, i64 8
  %1457 = load i32* %arrayidx20.8.8.5, align 4
  %add.8.8.5 = add nsw i32 %1457, %mul.8.8.5
  store i32 %add.8.8.5, i32* %arrayidx20.8.8.5, align 4
  br label %for.inc.8.8.5

for.inc.8.8.5:                                    ; preds = %for.inc.7.8.5
  br label %for.inc21.8.5

for.inc21.8.5:                                    ; preds = %for.inc.8.8.5
  br label %for.inc24.5

for.inc24.5:                                      ; preds = %for.inc21.8.5
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.inc24.5
  %arrayidx.6504 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.6505 = getelementptr inbounds [9 x i32]* %arrayidx.6504, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.6505, align 4
  br label %for.body8.6513

for.body8.6513:                                   ; preds = %for.body3.6
  %arrayidx11.6506 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6507 = getelementptr inbounds [9 x i32]* %arrayidx11.6506, i32 0, i64 0
  %1458 = load i32* %arrayidx12.6507, align 4
  %arrayidx16.6508 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %1459 = load i32* %arrayidx16.6508, align 4
  %mul.6509 = mul nsw i32 %1458, %1459
  %arrayidx19.6510 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6511 = getelementptr inbounds [9 x i32]* %arrayidx19.6510, i32 0, i64 0
  %1460 = load i32* %arrayidx20.6511, align 4
  %add.6512 = add nsw i32 %1460, %mul.6509
  store i32 %add.6512, i32* %arrayidx20.6511, align 4
  br label %for.inc.6522

for.inc.6522:                                     ; preds = %for.body8.6513
  %arrayidx11.1.6514 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.6515 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6514, i32 0, i64 1
  %1461 = load i32* %arrayidx12.1.6515, align 4
  %arrayidx15.1.6516 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6517 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6516, i32 0, i64 0
  %1462 = load i32* %arrayidx16.1.6517, align 4
  %mul.1.6518 = mul nsw i32 %1461, %1462
  %arrayidx19.1.6519 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.6520 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6519, i32 0, i64 0
  %1463 = load i32* %arrayidx20.1.6520, align 4
  %add.1.6521 = add nsw i32 %1463, %mul.1.6518
  store i32 %add.1.6521, i32* %arrayidx20.1.6520, align 4
  br label %for.inc.1.6531

for.inc.1.6531:                                   ; preds = %for.inc.6522
  %arrayidx11.2.6523 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.6524 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6523, i32 0, i64 2
  %1464 = load i32* %arrayidx12.2.6524, align 4
  %arrayidx15.2.6525 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6526 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6525, i32 0, i64 0
  %1465 = load i32* %arrayidx16.2.6526, align 4
  %mul.2.6527 = mul nsw i32 %1464, %1465
  %arrayidx19.2.6528 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.6529 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6528, i32 0, i64 0
  %1466 = load i32* %arrayidx20.2.6529, align 4
  %add.2.6530 = add nsw i32 %1466, %mul.2.6527
  store i32 %add.2.6530, i32* %arrayidx20.2.6529, align 4
  br label %for.inc.2.6540

for.inc.2.6540:                                   ; preds = %for.inc.1.6531
  %arrayidx11.3.6532 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.6533 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6532, i32 0, i64 3
  %1467 = load i32* %arrayidx12.3.6533, align 4
  %arrayidx15.3.6534 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6535 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6534, i32 0, i64 0
  %1468 = load i32* %arrayidx16.3.6535, align 4
  %mul.3.6536 = mul nsw i32 %1467, %1468
  %arrayidx19.3.6537 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.6538 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6537, i32 0, i64 0
  %1469 = load i32* %arrayidx20.3.6538, align 4
  %add.3.6539 = add nsw i32 %1469, %mul.3.6536
  store i32 %add.3.6539, i32* %arrayidx20.3.6538, align 4
  br label %for.inc.3.6549

for.inc.3.6549:                                   ; preds = %for.inc.2.6540
  %arrayidx11.4.6541 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.6542 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6541, i32 0, i64 4
  %1470 = load i32* %arrayidx12.4.6542, align 4
  %arrayidx15.4.6543 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6544 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6543, i32 0, i64 0
  %1471 = load i32* %arrayidx16.4.6544, align 4
  %mul.4.6545 = mul nsw i32 %1470, %1471
  %arrayidx19.4.6546 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.6547 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6546, i32 0, i64 0
  %1472 = load i32* %arrayidx20.4.6547, align 4
  %add.4.6548 = add nsw i32 %1472, %mul.4.6545
  store i32 %add.4.6548, i32* %arrayidx20.4.6547, align 4
  br label %for.inc.4.6558

for.inc.4.6558:                                   ; preds = %for.inc.3.6549
  %arrayidx11.5.6550 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.6551 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6550, i32 0, i64 5
  %1473 = load i32* %arrayidx12.5.6551, align 4
  %arrayidx15.5.6552 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6553 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6552, i32 0, i64 0
  %1474 = load i32* %arrayidx16.5.6553, align 4
  %mul.5.6554 = mul nsw i32 %1473, %1474
  %arrayidx19.5.6555 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.6556 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6555, i32 0, i64 0
  %1475 = load i32* %arrayidx20.5.6556, align 4
  %add.5.6557 = add nsw i32 %1475, %mul.5.6554
  store i32 %add.5.6557, i32* %arrayidx20.5.6556, align 4
  br label %for.inc.5.6567

for.inc.5.6567:                                   ; preds = %for.inc.4.6558
  %arrayidx11.6.6559 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.6560 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6559, i32 0, i64 6
  %1476 = load i32* %arrayidx12.6.6560, align 4
  %arrayidx15.6.6561 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6562 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6561, i32 0, i64 0
  %1477 = load i32* %arrayidx16.6.6562, align 4
  %mul.6.6563 = mul nsw i32 %1476, %1477
  %arrayidx19.6.6564 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.6565 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6564, i32 0, i64 0
  %1478 = load i32* %arrayidx20.6.6565, align 4
  %add.6.6566 = add nsw i32 %1478, %mul.6.6563
  store i32 %add.6.6566, i32* %arrayidx20.6.6565, align 4
  br label %for.inc.6.6576

for.inc.6.6576:                                   ; preds = %for.inc.5.6567
  %arrayidx11.7.6568 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.6569 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6568, i32 0, i64 7
  %1479 = load i32* %arrayidx12.7.6569, align 4
  %arrayidx15.7.6570 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6571 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6570, i32 0, i64 0
  %1480 = load i32* %arrayidx16.7.6571, align 4
  %mul.7.6572 = mul nsw i32 %1479, %1480
  %arrayidx19.7.6573 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.6574 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6573, i32 0, i64 0
  %1481 = load i32* %arrayidx20.7.6574, align 4
  %add.7.6575 = add nsw i32 %1481, %mul.7.6572
  store i32 %add.7.6575, i32* %arrayidx20.7.6574, align 4
  br label %for.inc.7.6585

for.inc.7.6585:                                   ; preds = %for.inc.6.6576
  %arrayidx11.8.6577 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.6578 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6577, i32 0, i64 8
  %1482 = load i32* %arrayidx12.8.6578, align 4
  %arrayidx15.8.6579 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6580 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6579, i32 0, i64 0
  %1483 = load i32* %arrayidx16.8.6580, align 4
  %mul.8.6581 = mul nsw i32 %1482, %1483
  %arrayidx19.8.6582 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.6583 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6582, i32 0, i64 0
  %1484 = load i32* %arrayidx20.8.6583, align 4
  %add.8.6584 = add nsw i32 %1484, %mul.8.6581
  store i32 %add.8.6584, i32* %arrayidx20.8.6583, align 4
  br label %for.inc.8.6586

for.inc.8.6586:                                   ; preds = %for.inc.7.6585
  br label %for.inc21.6587

for.inc21.6587:                                   ; preds = %for.inc.8.6586
  %arrayidx.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.1.6 = getelementptr inbounds [9 x i32]* %arrayidx.1.6, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.6, align 4
  br label %for.body8.1.6

for.body8.1.6:                                    ; preds = %for.inc21.6587
  %arrayidx11.14.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.15.6 = getelementptr inbounds [9 x i32]* %arrayidx11.14.6, i32 0, i64 0
  %1485 = load i32* %arrayidx12.15.6, align 4
  %arrayidx16.16.6 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %1486 = load i32* %arrayidx16.16.6, align 4
  %mul.17.6 = mul nsw i32 %1485, %1486
  %arrayidx19.19.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.110.6 = getelementptr inbounds [9 x i32]* %arrayidx19.19.6, i32 0, i64 1
  %1487 = load i32* %arrayidx20.110.6, align 4
  %add.111.6 = add nsw i32 %1487, %mul.17.6
  store i32 %add.111.6, i32* %arrayidx20.110.6, align 4
  br label %for.inc.112.6

for.inc.112.6:                                    ; preds = %for.body8.1.6
  %arrayidx11.1.1.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.1.6 = getelementptr inbounds [9 x i32]* %arrayidx11.1.1.6, i32 0, i64 1
  %1488 = load i32* %arrayidx12.1.1.6, align 4
  %arrayidx15.1.1.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1.6, i32 0, i64 1
  %1489 = load i32* %arrayidx16.1.1.6, align 4
  %mul.1.1.6 = mul nsw i32 %1488, %1489
  %arrayidx19.1.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.1.6 = getelementptr inbounds [9 x i32]* %arrayidx19.1.1.6, i32 0, i64 1
  %1490 = load i32* %arrayidx20.1.1.6, align 4
  %add.1.1.6 = add nsw i32 %1490, %mul.1.1.6
  store i32 %add.1.1.6, i32* %arrayidx20.1.1.6, align 4
  br label %for.inc.1.1.6

for.inc.1.1.6:                                    ; preds = %for.inc.112.6
  %arrayidx11.2.1.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.1.6 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1.6, i32 0, i64 2
  %1491 = load i32* %arrayidx12.2.1.6, align 4
  %arrayidx15.2.1.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1.6, i32 0, i64 1
  %1492 = load i32* %arrayidx16.2.1.6, align 4
  %mul.2.1.6 = mul nsw i32 %1491, %1492
  %arrayidx19.2.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.1.6 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1.6, i32 0, i64 1
  %1493 = load i32* %arrayidx20.2.1.6, align 4
  %add.2.1.6 = add nsw i32 %1493, %mul.2.1.6
  store i32 %add.2.1.6, i32* %arrayidx20.2.1.6, align 4
  br label %for.inc.2.1.6

for.inc.2.1.6:                                    ; preds = %for.inc.1.1.6
  %arrayidx11.3.1.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.1.6 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1.6, i32 0, i64 3
  %1494 = load i32* %arrayidx12.3.1.6, align 4
  %arrayidx15.3.1.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1.6, i32 0, i64 1
  %1495 = load i32* %arrayidx16.3.1.6, align 4
  %mul.3.1.6 = mul nsw i32 %1494, %1495
  %arrayidx19.3.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.1.6 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1.6, i32 0, i64 1
  %1496 = load i32* %arrayidx20.3.1.6, align 4
  %add.3.1.6 = add nsw i32 %1496, %mul.3.1.6
  store i32 %add.3.1.6, i32* %arrayidx20.3.1.6, align 4
  br label %for.inc.3.1.6

for.inc.3.1.6:                                    ; preds = %for.inc.2.1.6
  %arrayidx11.4.1.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.1.6 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1.6, i32 0, i64 4
  %1497 = load i32* %arrayidx12.4.1.6, align 4
  %arrayidx15.4.1.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1.6, i32 0, i64 1
  %1498 = load i32* %arrayidx16.4.1.6, align 4
  %mul.4.1.6 = mul nsw i32 %1497, %1498
  %arrayidx19.4.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.1.6 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1.6, i32 0, i64 1
  %1499 = load i32* %arrayidx20.4.1.6, align 4
  %add.4.1.6 = add nsw i32 %1499, %mul.4.1.6
  store i32 %add.4.1.6, i32* %arrayidx20.4.1.6, align 4
  br label %for.inc.4.1.6

for.inc.4.1.6:                                    ; preds = %for.inc.3.1.6
  %arrayidx11.5.1.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.1.6 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1.6, i32 0, i64 5
  %1500 = load i32* %arrayidx12.5.1.6, align 4
  %arrayidx15.5.1.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1.6, i32 0, i64 1
  %1501 = load i32* %arrayidx16.5.1.6, align 4
  %mul.5.1.6 = mul nsw i32 %1500, %1501
  %arrayidx19.5.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.1.6 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1.6, i32 0, i64 1
  %1502 = load i32* %arrayidx20.5.1.6, align 4
  %add.5.1.6 = add nsw i32 %1502, %mul.5.1.6
  store i32 %add.5.1.6, i32* %arrayidx20.5.1.6, align 4
  br label %for.inc.5.1.6

for.inc.5.1.6:                                    ; preds = %for.inc.4.1.6
  %arrayidx11.6.1.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.1.6 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1.6, i32 0, i64 6
  %1503 = load i32* %arrayidx12.6.1.6, align 4
  %arrayidx15.6.1.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1.6, i32 0, i64 1
  %1504 = load i32* %arrayidx16.6.1.6, align 4
  %mul.6.1.6 = mul nsw i32 %1503, %1504
  %arrayidx19.6.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.1.6 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1.6, i32 0, i64 1
  %1505 = load i32* %arrayidx20.6.1.6, align 4
  %add.6.1.6 = add nsw i32 %1505, %mul.6.1.6
  store i32 %add.6.1.6, i32* %arrayidx20.6.1.6, align 4
  br label %for.inc.6.1.6

for.inc.6.1.6:                                    ; preds = %for.inc.5.1.6
  %arrayidx11.7.1.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.1.6 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1.6, i32 0, i64 7
  %1506 = load i32* %arrayidx12.7.1.6, align 4
  %arrayidx15.7.1.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1.6, i32 0, i64 1
  %1507 = load i32* %arrayidx16.7.1.6, align 4
  %mul.7.1.6 = mul nsw i32 %1506, %1507
  %arrayidx19.7.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.1.6 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1.6, i32 0, i64 1
  %1508 = load i32* %arrayidx20.7.1.6, align 4
  %add.7.1.6 = add nsw i32 %1508, %mul.7.1.6
  store i32 %add.7.1.6, i32* %arrayidx20.7.1.6, align 4
  br label %for.inc.7.1.6

for.inc.7.1.6:                                    ; preds = %for.inc.6.1.6
  %arrayidx11.8.1.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.1.6 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1.6, i32 0, i64 8
  %1509 = load i32* %arrayidx12.8.1.6, align 4
  %arrayidx15.8.1.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1.6, i32 0, i64 1
  %1510 = load i32* %arrayidx16.8.1.6, align 4
  %mul.8.1.6 = mul nsw i32 %1509, %1510
  %arrayidx19.8.1.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.1.6 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1.6, i32 0, i64 1
  %1511 = load i32* %arrayidx20.8.1.6, align 4
  %add.8.1.6 = add nsw i32 %1511, %mul.8.1.6
  store i32 %add.8.1.6, i32* %arrayidx20.8.1.6, align 4
  br label %for.inc.8.1.6

for.inc.8.1.6:                                    ; preds = %for.inc.7.1.6
  br label %for.inc21.1.6

for.inc21.1.6:                                    ; preds = %for.inc.8.1.6
  %arrayidx.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.2.6 = getelementptr inbounds [9 x i32]* %arrayidx.2.6, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.6, align 4
  br label %for.body8.2.6

for.body8.2.6:                                    ; preds = %for.inc21.1.6
  %arrayidx11.214.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.215.6 = getelementptr inbounds [9 x i32]* %arrayidx11.214.6, i32 0, i64 0
  %1512 = load i32* %arrayidx12.215.6, align 4
  %arrayidx16.216.6 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %1513 = load i32* %arrayidx16.216.6, align 4
  %mul.217.6 = mul nsw i32 %1512, %1513
  %arrayidx19.219.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.220.6 = getelementptr inbounds [9 x i32]* %arrayidx19.219.6, i32 0, i64 2
  %1514 = load i32* %arrayidx20.220.6, align 4
  %add.221.6 = add nsw i32 %1514, %mul.217.6
  store i32 %add.221.6, i32* %arrayidx20.220.6, align 4
  br label %for.inc.222.6

for.inc.222.6:                                    ; preds = %for.body8.2.6
  %arrayidx11.1.2.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.2.6 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2.6, i32 0, i64 1
  %1515 = load i32* %arrayidx12.1.2.6, align 4
  %arrayidx15.1.2.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2.6, i32 0, i64 2
  %1516 = load i32* %arrayidx16.1.2.6, align 4
  %mul.1.2.6 = mul nsw i32 %1515, %1516
  %arrayidx19.1.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.2.6 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2.6, i32 0, i64 2
  %1517 = load i32* %arrayidx20.1.2.6, align 4
  %add.1.2.6 = add nsw i32 %1517, %mul.1.2.6
  store i32 %add.1.2.6, i32* %arrayidx20.1.2.6, align 4
  br label %for.inc.1.2.6

for.inc.1.2.6:                                    ; preds = %for.inc.222.6
  %arrayidx11.2.2.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.2.6 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2.6, i32 0, i64 2
  %1518 = load i32* %arrayidx12.2.2.6, align 4
  %arrayidx15.2.2.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2.6, i32 0, i64 2
  %1519 = load i32* %arrayidx16.2.2.6, align 4
  %mul.2.2.6 = mul nsw i32 %1518, %1519
  %arrayidx19.2.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.2.6 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2.6, i32 0, i64 2
  %1520 = load i32* %arrayidx20.2.2.6, align 4
  %add.2.2.6 = add nsw i32 %1520, %mul.2.2.6
  store i32 %add.2.2.6, i32* %arrayidx20.2.2.6, align 4
  br label %for.inc.2.2.6

for.inc.2.2.6:                                    ; preds = %for.inc.1.2.6
  %arrayidx11.3.2.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.2.6 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2.6, i32 0, i64 3
  %1521 = load i32* %arrayidx12.3.2.6, align 4
  %arrayidx15.3.2.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2.6, i32 0, i64 2
  %1522 = load i32* %arrayidx16.3.2.6, align 4
  %mul.3.2.6 = mul nsw i32 %1521, %1522
  %arrayidx19.3.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.2.6 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2.6, i32 0, i64 2
  %1523 = load i32* %arrayidx20.3.2.6, align 4
  %add.3.2.6 = add nsw i32 %1523, %mul.3.2.6
  store i32 %add.3.2.6, i32* %arrayidx20.3.2.6, align 4
  br label %for.inc.3.2.6

for.inc.3.2.6:                                    ; preds = %for.inc.2.2.6
  %arrayidx11.4.2.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.2.6 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2.6, i32 0, i64 4
  %1524 = load i32* %arrayidx12.4.2.6, align 4
  %arrayidx15.4.2.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2.6, i32 0, i64 2
  %1525 = load i32* %arrayidx16.4.2.6, align 4
  %mul.4.2.6 = mul nsw i32 %1524, %1525
  %arrayidx19.4.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.2.6 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2.6, i32 0, i64 2
  %1526 = load i32* %arrayidx20.4.2.6, align 4
  %add.4.2.6 = add nsw i32 %1526, %mul.4.2.6
  store i32 %add.4.2.6, i32* %arrayidx20.4.2.6, align 4
  br label %for.inc.4.2.6

for.inc.4.2.6:                                    ; preds = %for.inc.3.2.6
  %arrayidx11.5.2.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.2.6 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2.6, i32 0, i64 5
  %1527 = load i32* %arrayidx12.5.2.6, align 4
  %arrayidx15.5.2.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2.6, i32 0, i64 2
  %1528 = load i32* %arrayidx16.5.2.6, align 4
  %mul.5.2.6 = mul nsw i32 %1527, %1528
  %arrayidx19.5.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.2.6 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2.6, i32 0, i64 2
  %1529 = load i32* %arrayidx20.5.2.6, align 4
  %add.5.2.6 = add nsw i32 %1529, %mul.5.2.6
  store i32 %add.5.2.6, i32* %arrayidx20.5.2.6, align 4
  br label %for.inc.5.2.6

for.inc.5.2.6:                                    ; preds = %for.inc.4.2.6
  %arrayidx11.6.2.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.2.6 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2.6, i32 0, i64 6
  %1530 = load i32* %arrayidx12.6.2.6, align 4
  %arrayidx15.6.2.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2.6, i32 0, i64 2
  %1531 = load i32* %arrayidx16.6.2.6, align 4
  %mul.6.2.6 = mul nsw i32 %1530, %1531
  %arrayidx19.6.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.2.6 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2.6, i32 0, i64 2
  %1532 = load i32* %arrayidx20.6.2.6, align 4
  %add.6.2.6 = add nsw i32 %1532, %mul.6.2.6
  store i32 %add.6.2.6, i32* %arrayidx20.6.2.6, align 4
  br label %for.inc.6.2.6

for.inc.6.2.6:                                    ; preds = %for.inc.5.2.6
  %arrayidx11.7.2.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.2.6 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2.6, i32 0, i64 7
  %1533 = load i32* %arrayidx12.7.2.6, align 4
  %arrayidx15.7.2.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2.6, i32 0, i64 2
  %1534 = load i32* %arrayidx16.7.2.6, align 4
  %mul.7.2.6 = mul nsw i32 %1533, %1534
  %arrayidx19.7.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.2.6 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2.6, i32 0, i64 2
  %1535 = load i32* %arrayidx20.7.2.6, align 4
  %add.7.2.6 = add nsw i32 %1535, %mul.7.2.6
  store i32 %add.7.2.6, i32* %arrayidx20.7.2.6, align 4
  br label %for.inc.7.2.6

for.inc.7.2.6:                                    ; preds = %for.inc.6.2.6
  %arrayidx11.8.2.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.2.6 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2.6, i32 0, i64 8
  %1536 = load i32* %arrayidx12.8.2.6, align 4
  %arrayidx15.8.2.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2.6, i32 0, i64 2
  %1537 = load i32* %arrayidx16.8.2.6, align 4
  %mul.8.2.6 = mul nsw i32 %1536, %1537
  %arrayidx19.8.2.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.2.6 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2.6, i32 0, i64 2
  %1538 = load i32* %arrayidx20.8.2.6, align 4
  %add.8.2.6 = add nsw i32 %1538, %mul.8.2.6
  store i32 %add.8.2.6, i32* %arrayidx20.8.2.6, align 4
  br label %for.inc.8.2.6

for.inc.8.2.6:                                    ; preds = %for.inc.7.2.6
  br label %for.inc21.2.6

for.inc21.2.6:                                    ; preds = %for.inc.8.2.6
  %arrayidx.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.3.6 = getelementptr inbounds [9 x i32]* %arrayidx.3.6, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.6, align 4
  br label %for.body8.3.6

for.body8.3.6:                                    ; preds = %for.inc21.2.6
  %arrayidx11.324.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.325.6 = getelementptr inbounds [9 x i32]* %arrayidx11.324.6, i32 0, i64 0
  %1539 = load i32* %arrayidx12.325.6, align 4
  %arrayidx16.326.6 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %1540 = load i32* %arrayidx16.326.6, align 4
  %mul.327.6 = mul nsw i32 %1539, %1540
  %arrayidx19.329.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.330.6 = getelementptr inbounds [9 x i32]* %arrayidx19.329.6, i32 0, i64 3
  %1541 = load i32* %arrayidx20.330.6, align 4
  %add.331.6 = add nsw i32 %1541, %mul.327.6
  store i32 %add.331.6, i32* %arrayidx20.330.6, align 4
  br label %for.inc.332.6

for.inc.332.6:                                    ; preds = %for.body8.3.6
  %arrayidx11.1.3.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.3.6 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3.6, i32 0, i64 1
  %1542 = load i32* %arrayidx12.1.3.6, align 4
  %arrayidx15.1.3.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3.6, i32 0, i64 3
  %1543 = load i32* %arrayidx16.1.3.6, align 4
  %mul.1.3.6 = mul nsw i32 %1542, %1543
  %arrayidx19.1.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.3.6 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3.6, i32 0, i64 3
  %1544 = load i32* %arrayidx20.1.3.6, align 4
  %add.1.3.6 = add nsw i32 %1544, %mul.1.3.6
  store i32 %add.1.3.6, i32* %arrayidx20.1.3.6, align 4
  br label %for.inc.1.3.6

for.inc.1.3.6:                                    ; preds = %for.inc.332.6
  %arrayidx11.2.3.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.3.6 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3.6, i32 0, i64 2
  %1545 = load i32* %arrayidx12.2.3.6, align 4
  %arrayidx15.2.3.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3.6, i32 0, i64 3
  %1546 = load i32* %arrayidx16.2.3.6, align 4
  %mul.2.3.6 = mul nsw i32 %1545, %1546
  %arrayidx19.2.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.3.6 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3.6, i32 0, i64 3
  %1547 = load i32* %arrayidx20.2.3.6, align 4
  %add.2.3.6 = add nsw i32 %1547, %mul.2.3.6
  store i32 %add.2.3.6, i32* %arrayidx20.2.3.6, align 4
  br label %for.inc.2.3.6

for.inc.2.3.6:                                    ; preds = %for.inc.1.3.6
  %arrayidx11.3.3.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.3.6 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3.6, i32 0, i64 3
  %1548 = load i32* %arrayidx12.3.3.6, align 4
  %arrayidx15.3.3.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3.6, i32 0, i64 3
  %1549 = load i32* %arrayidx16.3.3.6, align 4
  %mul.3.3.6 = mul nsw i32 %1548, %1549
  %arrayidx19.3.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.3.6 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3.6, i32 0, i64 3
  %1550 = load i32* %arrayidx20.3.3.6, align 4
  %add.3.3.6 = add nsw i32 %1550, %mul.3.3.6
  store i32 %add.3.3.6, i32* %arrayidx20.3.3.6, align 4
  br label %for.inc.3.3.6

for.inc.3.3.6:                                    ; preds = %for.inc.2.3.6
  %arrayidx11.4.3.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.3.6 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3.6, i32 0, i64 4
  %1551 = load i32* %arrayidx12.4.3.6, align 4
  %arrayidx15.4.3.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3.6, i32 0, i64 3
  %1552 = load i32* %arrayidx16.4.3.6, align 4
  %mul.4.3.6 = mul nsw i32 %1551, %1552
  %arrayidx19.4.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.3.6 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3.6, i32 0, i64 3
  %1553 = load i32* %arrayidx20.4.3.6, align 4
  %add.4.3.6 = add nsw i32 %1553, %mul.4.3.6
  store i32 %add.4.3.6, i32* %arrayidx20.4.3.6, align 4
  br label %for.inc.4.3.6

for.inc.4.3.6:                                    ; preds = %for.inc.3.3.6
  %arrayidx11.5.3.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.3.6 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3.6, i32 0, i64 5
  %1554 = load i32* %arrayidx12.5.3.6, align 4
  %arrayidx15.5.3.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3.6, i32 0, i64 3
  %1555 = load i32* %arrayidx16.5.3.6, align 4
  %mul.5.3.6 = mul nsw i32 %1554, %1555
  %arrayidx19.5.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.3.6 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3.6, i32 0, i64 3
  %1556 = load i32* %arrayidx20.5.3.6, align 4
  %add.5.3.6 = add nsw i32 %1556, %mul.5.3.6
  store i32 %add.5.3.6, i32* %arrayidx20.5.3.6, align 4
  br label %for.inc.5.3.6

for.inc.5.3.6:                                    ; preds = %for.inc.4.3.6
  %arrayidx11.6.3.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.3.6 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3.6, i32 0, i64 6
  %1557 = load i32* %arrayidx12.6.3.6, align 4
  %arrayidx15.6.3.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3.6, i32 0, i64 3
  %1558 = load i32* %arrayidx16.6.3.6, align 4
  %mul.6.3.6 = mul nsw i32 %1557, %1558
  %arrayidx19.6.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.3.6 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3.6, i32 0, i64 3
  %1559 = load i32* %arrayidx20.6.3.6, align 4
  %add.6.3.6 = add nsw i32 %1559, %mul.6.3.6
  store i32 %add.6.3.6, i32* %arrayidx20.6.3.6, align 4
  br label %for.inc.6.3.6

for.inc.6.3.6:                                    ; preds = %for.inc.5.3.6
  %arrayidx11.7.3.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.3.6 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3.6, i32 0, i64 7
  %1560 = load i32* %arrayidx12.7.3.6, align 4
  %arrayidx15.7.3.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3.6, i32 0, i64 3
  %1561 = load i32* %arrayidx16.7.3.6, align 4
  %mul.7.3.6 = mul nsw i32 %1560, %1561
  %arrayidx19.7.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.3.6 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3.6, i32 0, i64 3
  %1562 = load i32* %arrayidx20.7.3.6, align 4
  %add.7.3.6 = add nsw i32 %1562, %mul.7.3.6
  store i32 %add.7.3.6, i32* %arrayidx20.7.3.6, align 4
  br label %for.inc.7.3.6

for.inc.7.3.6:                                    ; preds = %for.inc.6.3.6
  %arrayidx11.8.3.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.3.6 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3.6, i32 0, i64 8
  %1563 = load i32* %arrayidx12.8.3.6, align 4
  %arrayidx15.8.3.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3.6, i32 0, i64 3
  %1564 = load i32* %arrayidx16.8.3.6, align 4
  %mul.8.3.6 = mul nsw i32 %1563, %1564
  %arrayidx19.8.3.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.3.6 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3.6, i32 0, i64 3
  %1565 = load i32* %arrayidx20.8.3.6, align 4
  %add.8.3.6 = add nsw i32 %1565, %mul.8.3.6
  store i32 %add.8.3.6, i32* %arrayidx20.8.3.6, align 4
  br label %for.inc.8.3.6

for.inc.8.3.6:                                    ; preds = %for.inc.7.3.6
  br label %for.inc21.3.6

for.inc21.3.6:                                    ; preds = %for.inc.8.3.6
  %arrayidx.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.4.6 = getelementptr inbounds [9 x i32]* %arrayidx.4.6, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.6, align 4
  br label %for.body8.4.6

for.body8.4.6:                                    ; preds = %for.inc21.3.6
  %arrayidx11.434.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.435.6 = getelementptr inbounds [9 x i32]* %arrayidx11.434.6, i32 0, i64 0
  %1566 = load i32* %arrayidx12.435.6, align 4
  %arrayidx16.436.6 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %1567 = load i32* %arrayidx16.436.6, align 4
  %mul.437.6 = mul nsw i32 %1566, %1567
  %arrayidx19.439.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.440.6 = getelementptr inbounds [9 x i32]* %arrayidx19.439.6, i32 0, i64 4
  %1568 = load i32* %arrayidx20.440.6, align 4
  %add.441.6 = add nsw i32 %1568, %mul.437.6
  store i32 %add.441.6, i32* %arrayidx20.440.6, align 4
  br label %for.inc.442.6

for.inc.442.6:                                    ; preds = %for.body8.4.6
  %arrayidx11.1.4.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.4.6 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4.6, i32 0, i64 1
  %1569 = load i32* %arrayidx12.1.4.6, align 4
  %arrayidx15.1.4.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4.6, i32 0, i64 4
  %1570 = load i32* %arrayidx16.1.4.6, align 4
  %mul.1.4.6 = mul nsw i32 %1569, %1570
  %arrayidx19.1.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.4.6 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4.6, i32 0, i64 4
  %1571 = load i32* %arrayidx20.1.4.6, align 4
  %add.1.4.6 = add nsw i32 %1571, %mul.1.4.6
  store i32 %add.1.4.6, i32* %arrayidx20.1.4.6, align 4
  br label %for.inc.1.4.6

for.inc.1.4.6:                                    ; preds = %for.inc.442.6
  %arrayidx11.2.4.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.4.6 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4.6, i32 0, i64 2
  %1572 = load i32* %arrayidx12.2.4.6, align 4
  %arrayidx15.2.4.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4.6, i32 0, i64 4
  %1573 = load i32* %arrayidx16.2.4.6, align 4
  %mul.2.4.6 = mul nsw i32 %1572, %1573
  %arrayidx19.2.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.4.6 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4.6, i32 0, i64 4
  %1574 = load i32* %arrayidx20.2.4.6, align 4
  %add.2.4.6 = add nsw i32 %1574, %mul.2.4.6
  store i32 %add.2.4.6, i32* %arrayidx20.2.4.6, align 4
  br label %for.inc.2.4.6

for.inc.2.4.6:                                    ; preds = %for.inc.1.4.6
  %arrayidx11.3.4.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.4.6 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4.6, i32 0, i64 3
  %1575 = load i32* %arrayidx12.3.4.6, align 4
  %arrayidx15.3.4.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4.6, i32 0, i64 4
  %1576 = load i32* %arrayidx16.3.4.6, align 4
  %mul.3.4.6 = mul nsw i32 %1575, %1576
  %arrayidx19.3.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.4.6 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4.6, i32 0, i64 4
  %1577 = load i32* %arrayidx20.3.4.6, align 4
  %add.3.4.6 = add nsw i32 %1577, %mul.3.4.6
  store i32 %add.3.4.6, i32* %arrayidx20.3.4.6, align 4
  br label %for.inc.3.4.6

for.inc.3.4.6:                                    ; preds = %for.inc.2.4.6
  %arrayidx11.4.4.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.4.6 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4.6, i32 0, i64 4
  %1578 = load i32* %arrayidx12.4.4.6, align 4
  %arrayidx15.4.4.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4.6, i32 0, i64 4
  %1579 = load i32* %arrayidx16.4.4.6, align 4
  %mul.4.4.6 = mul nsw i32 %1578, %1579
  %arrayidx19.4.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.4.6 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4.6, i32 0, i64 4
  %1580 = load i32* %arrayidx20.4.4.6, align 4
  %add.4.4.6 = add nsw i32 %1580, %mul.4.4.6
  store i32 %add.4.4.6, i32* %arrayidx20.4.4.6, align 4
  br label %for.inc.4.4.6

for.inc.4.4.6:                                    ; preds = %for.inc.3.4.6
  %arrayidx11.5.4.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.4.6 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4.6, i32 0, i64 5
  %1581 = load i32* %arrayidx12.5.4.6, align 4
  %arrayidx15.5.4.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4.6, i32 0, i64 4
  %1582 = load i32* %arrayidx16.5.4.6, align 4
  %mul.5.4.6 = mul nsw i32 %1581, %1582
  %arrayidx19.5.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.4.6 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4.6, i32 0, i64 4
  %1583 = load i32* %arrayidx20.5.4.6, align 4
  %add.5.4.6 = add nsw i32 %1583, %mul.5.4.6
  store i32 %add.5.4.6, i32* %arrayidx20.5.4.6, align 4
  br label %for.inc.5.4.6

for.inc.5.4.6:                                    ; preds = %for.inc.4.4.6
  %arrayidx11.6.4.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.4.6 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4.6, i32 0, i64 6
  %1584 = load i32* %arrayidx12.6.4.6, align 4
  %arrayidx15.6.4.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4.6, i32 0, i64 4
  %1585 = load i32* %arrayidx16.6.4.6, align 4
  %mul.6.4.6 = mul nsw i32 %1584, %1585
  %arrayidx19.6.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.4.6 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4.6, i32 0, i64 4
  %1586 = load i32* %arrayidx20.6.4.6, align 4
  %add.6.4.6 = add nsw i32 %1586, %mul.6.4.6
  store i32 %add.6.4.6, i32* %arrayidx20.6.4.6, align 4
  br label %for.inc.6.4.6

for.inc.6.4.6:                                    ; preds = %for.inc.5.4.6
  %arrayidx11.7.4.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.4.6 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4.6, i32 0, i64 7
  %1587 = load i32* %arrayidx12.7.4.6, align 4
  %arrayidx15.7.4.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4.6, i32 0, i64 4
  %1588 = load i32* %arrayidx16.7.4.6, align 4
  %mul.7.4.6 = mul nsw i32 %1587, %1588
  %arrayidx19.7.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.4.6 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4.6, i32 0, i64 4
  %1589 = load i32* %arrayidx20.7.4.6, align 4
  %add.7.4.6 = add nsw i32 %1589, %mul.7.4.6
  store i32 %add.7.4.6, i32* %arrayidx20.7.4.6, align 4
  br label %for.inc.7.4.6

for.inc.7.4.6:                                    ; preds = %for.inc.6.4.6
  %arrayidx11.8.4.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.4.6 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4.6, i32 0, i64 8
  %1590 = load i32* %arrayidx12.8.4.6, align 4
  %arrayidx15.8.4.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4.6, i32 0, i64 4
  %1591 = load i32* %arrayidx16.8.4.6, align 4
  %mul.8.4.6 = mul nsw i32 %1590, %1591
  %arrayidx19.8.4.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.4.6 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4.6, i32 0, i64 4
  %1592 = load i32* %arrayidx20.8.4.6, align 4
  %add.8.4.6 = add nsw i32 %1592, %mul.8.4.6
  store i32 %add.8.4.6, i32* %arrayidx20.8.4.6, align 4
  br label %for.inc.8.4.6

for.inc.8.4.6:                                    ; preds = %for.inc.7.4.6
  br label %for.inc21.4.6

for.inc21.4.6:                                    ; preds = %for.inc.8.4.6
  %arrayidx.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.5.6 = getelementptr inbounds [9 x i32]* %arrayidx.5.6, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.6, align 4
  br label %for.body8.5.6

for.body8.5.6:                                    ; preds = %for.inc21.4.6
  %arrayidx11.544.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.545.6 = getelementptr inbounds [9 x i32]* %arrayidx11.544.6, i32 0, i64 0
  %1593 = load i32* %arrayidx12.545.6, align 4
  %arrayidx16.546.6 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %1594 = load i32* %arrayidx16.546.6, align 4
  %mul.547.6 = mul nsw i32 %1593, %1594
  %arrayidx19.549.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.550.6 = getelementptr inbounds [9 x i32]* %arrayidx19.549.6, i32 0, i64 5
  %1595 = load i32* %arrayidx20.550.6, align 4
  %add.551.6 = add nsw i32 %1595, %mul.547.6
  store i32 %add.551.6, i32* %arrayidx20.550.6, align 4
  br label %for.inc.552.6

for.inc.552.6:                                    ; preds = %for.body8.5.6
  %arrayidx11.1.5.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.5.6 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5.6, i32 0, i64 1
  %1596 = load i32* %arrayidx12.1.5.6, align 4
  %arrayidx15.1.5.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5.6, i32 0, i64 5
  %1597 = load i32* %arrayidx16.1.5.6, align 4
  %mul.1.5.6 = mul nsw i32 %1596, %1597
  %arrayidx19.1.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.5.6 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5.6, i32 0, i64 5
  %1598 = load i32* %arrayidx20.1.5.6, align 4
  %add.1.5.6 = add nsw i32 %1598, %mul.1.5.6
  store i32 %add.1.5.6, i32* %arrayidx20.1.5.6, align 4
  br label %for.inc.1.5.6

for.inc.1.5.6:                                    ; preds = %for.inc.552.6
  %arrayidx11.2.5.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.5.6 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5.6, i32 0, i64 2
  %1599 = load i32* %arrayidx12.2.5.6, align 4
  %arrayidx15.2.5.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5.6, i32 0, i64 5
  %1600 = load i32* %arrayidx16.2.5.6, align 4
  %mul.2.5.6 = mul nsw i32 %1599, %1600
  %arrayidx19.2.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.5.6 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5.6, i32 0, i64 5
  %1601 = load i32* %arrayidx20.2.5.6, align 4
  %add.2.5.6 = add nsw i32 %1601, %mul.2.5.6
  store i32 %add.2.5.6, i32* %arrayidx20.2.5.6, align 4
  br label %for.inc.2.5.6

for.inc.2.5.6:                                    ; preds = %for.inc.1.5.6
  %arrayidx11.3.5.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.5.6 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5.6, i32 0, i64 3
  %1602 = load i32* %arrayidx12.3.5.6, align 4
  %arrayidx15.3.5.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5.6, i32 0, i64 5
  %1603 = load i32* %arrayidx16.3.5.6, align 4
  %mul.3.5.6 = mul nsw i32 %1602, %1603
  %arrayidx19.3.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.5.6 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5.6, i32 0, i64 5
  %1604 = load i32* %arrayidx20.3.5.6, align 4
  %add.3.5.6 = add nsw i32 %1604, %mul.3.5.6
  store i32 %add.3.5.6, i32* %arrayidx20.3.5.6, align 4
  br label %for.inc.3.5.6

for.inc.3.5.6:                                    ; preds = %for.inc.2.5.6
  %arrayidx11.4.5.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.5.6 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5.6, i32 0, i64 4
  %1605 = load i32* %arrayidx12.4.5.6, align 4
  %arrayidx15.4.5.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5.6, i32 0, i64 5
  %1606 = load i32* %arrayidx16.4.5.6, align 4
  %mul.4.5.6 = mul nsw i32 %1605, %1606
  %arrayidx19.4.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.5.6 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5.6, i32 0, i64 5
  %1607 = load i32* %arrayidx20.4.5.6, align 4
  %add.4.5.6 = add nsw i32 %1607, %mul.4.5.6
  store i32 %add.4.5.6, i32* %arrayidx20.4.5.6, align 4
  br label %for.inc.4.5.6

for.inc.4.5.6:                                    ; preds = %for.inc.3.5.6
  %arrayidx11.5.5.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.5.6 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5.6, i32 0, i64 5
  %1608 = load i32* %arrayidx12.5.5.6, align 4
  %arrayidx15.5.5.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5.6, i32 0, i64 5
  %1609 = load i32* %arrayidx16.5.5.6, align 4
  %mul.5.5.6 = mul nsw i32 %1608, %1609
  %arrayidx19.5.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.5.6 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5.6, i32 0, i64 5
  %1610 = load i32* %arrayidx20.5.5.6, align 4
  %add.5.5.6 = add nsw i32 %1610, %mul.5.5.6
  store i32 %add.5.5.6, i32* %arrayidx20.5.5.6, align 4
  br label %for.inc.5.5.6

for.inc.5.5.6:                                    ; preds = %for.inc.4.5.6
  %arrayidx11.6.5.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.5.6 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5.6, i32 0, i64 6
  %1611 = load i32* %arrayidx12.6.5.6, align 4
  %arrayidx15.6.5.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5.6, i32 0, i64 5
  %1612 = load i32* %arrayidx16.6.5.6, align 4
  %mul.6.5.6 = mul nsw i32 %1611, %1612
  %arrayidx19.6.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.5.6 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5.6, i32 0, i64 5
  %1613 = load i32* %arrayidx20.6.5.6, align 4
  %add.6.5.6 = add nsw i32 %1613, %mul.6.5.6
  store i32 %add.6.5.6, i32* %arrayidx20.6.5.6, align 4
  br label %for.inc.6.5.6

for.inc.6.5.6:                                    ; preds = %for.inc.5.5.6
  %arrayidx11.7.5.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.5.6 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5.6, i32 0, i64 7
  %1614 = load i32* %arrayidx12.7.5.6, align 4
  %arrayidx15.7.5.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5.6, i32 0, i64 5
  %1615 = load i32* %arrayidx16.7.5.6, align 4
  %mul.7.5.6 = mul nsw i32 %1614, %1615
  %arrayidx19.7.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.5.6 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5.6, i32 0, i64 5
  %1616 = load i32* %arrayidx20.7.5.6, align 4
  %add.7.5.6 = add nsw i32 %1616, %mul.7.5.6
  store i32 %add.7.5.6, i32* %arrayidx20.7.5.6, align 4
  br label %for.inc.7.5.6

for.inc.7.5.6:                                    ; preds = %for.inc.6.5.6
  %arrayidx11.8.5.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.5.6 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5.6, i32 0, i64 8
  %1617 = load i32* %arrayidx12.8.5.6, align 4
  %arrayidx15.8.5.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5.6, i32 0, i64 5
  %1618 = load i32* %arrayidx16.8.5.6, align 4
  %mul.8.5.6 = mul nsw i32 %1617, %1618
  %arrayidx19.8.5.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.5.6 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5.6, i32 0, i64 5
  %1619 = load i32* %arrayidx20.8.5.6, align 4
  %add.8.5.6 = add nsw i32 %1619, %mul.8.5.6
  store i32 %add.8.5.6, i32* %arrayidx20.8.5.6, align 4
  br label %for.inc.8.5.6

for.inc.8.5.6:                                    ; preds = %for.inc.7.5.6
  br label %for.inc21.5.6

for.inc21.5.6:                                    ; preds = %for.inc.8.5.6
  %arrayidx.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.6.6 = getelementptr inbounds [9 x i32]* %arrayidx.6.6, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.6, align 4
  br label %for.body8.6.6

for.body8.6.6:                                    ; preds = %for.inc21.5.6
  %arrayidx11.654.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.655.6 = getelementptr inbounds [9 x i32]* %arrayidx11.654.6, i32 0, i64 0
  %1620 = load i32* %arrayidx12.655.6, align 4
  %arrayidx16.656.6 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %1621 = load i32* %arrayidx16.656.6, align 4
  %mul.657.6 = mul nsw i32 %1620, %1621
  %arrayidx19.659.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.660.6 = getelementptr inbounds [9 x i32]* %arrayidx19.659.6, i32 0, i64 6
  %1622 = load i32* %arrayidx20.660.6, align 4
  %add.661.6 = add nsw i32 %1622, %mul.657.6
  store i32 %add.661.6, i32* %arrayidx20.660.6, align 4
  br label %for.inc.662.6

for.inc.662.6:                                    ; preds = %for.body8.6.6
  %arrayidx11.1.6.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.6.6 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6.6, i32 0, i64 1
  %1623 = load i32* %arrayidx12.1.6.6, align 4
  %arrayidx15.1.6.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6.6, i32 0, i64 6
  %1624 = load i32* %arrayidx16.1.6.6, align 4
  %mul.1.6.6 = mul nsw i32 %1623, %1624
  %arrayidx19.1.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.6.6 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6.6, i32 0, i64 6
  %1625 = load i32* %arrayidx20.1.6.6, align 4
  %add.1.6.6 = add nsw i32 %1625, %mul.1.6.6
  store i32 %add.1.6.6, i32* %arrayidx20.1.6.6, align 4
  br label %for.inc.1.6.6

for.inc.1.6.6:                                    ; preds = %for.inc.662.6
  %arrayidx11.2.6.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.6.6 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6.6, i32 0, i64 2
  %1626 = load i32* %arrayidx12.2.6.6, align 4
  %arrayidx15.2.6.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6.6, i32 0, i64 6
  %1627 = load i32* %arrayidx16.2.6.6, align 4
  %mul.2.6.6 = mul nsw i32 %1626, %1627
  %arrayidx19.2.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.6.6 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6.6, i32 0, i64 6
  %1628 = load i32* %arrayidx20.2.6.6, align 4
  %add.2.6.6 = add nsw i32 %1628, %mul.2.6.6
  store i32 %add.2.6.6, i32* %arrayidx20.2.6.6, align 4
  br label %for.inc.2.6.6

for.inc.2.6.6:                                    ; preds = %for.inc.1.6.6
  %arrayidx11.3.6.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.6.6 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6.6, i32 0, i64 3
  %1629 = load i32* %arrayidx12.3.6.6, align 4
  %arrayidx15.3.6.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6.6, i32 0, i64 6
  %1630 = load i32* %arrayidx16.3.6.6, align 4
  %mul.3.6.6 = mul nsw i32 %1629, %1630
  %arrayidx19.3.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.6.6 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6.6, i32 0, i64 6
  %1631 = load i32* %arrayidx20.3.6.6, align 4
  %add.3.6.6 = add nsw i32 %1631, %mul.3.6.6
  store i32 %add.3.6.6, i32* %arrayidx20.3.6.6, align 4
  br label %for.inc.3.6.6

for.inc.3.6.6:                                    ; preds = %for.inc.2.6.6
  %arrayidx11.4.6.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.6.6 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6.6, i32 0, i64 4
  %1632 = load i32* %arrayidx12.4.6.6, align 4
  %arrayidx15.4.6.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6.6, i32 0, i64 6
  %1633 = load i32* %arrayidx16.4.6.6, align 4
  %mul.4.6.6 = mul nsw i32 %1632, %1633
  %arrayidx19.4.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.6.6 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6.6, i32 0, i64 6
  %1634 = load i32* %arrayidx20.4.6.6, align 4
  %add.4.6.6 = add nsw i32 %1634, %mul.4.6.6
  store i32 %add.4.6.6, i32* %arrayidx20.4.6.6, align 4
  br label %for.inc.4.6.6

for.inc.4.6.6:                                    ; preds = %for.inc.3.6.6
  %arrayidx11.5.6.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.6.6 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6.6, i32 0, i64 5
  %1635 = load i32* %arrayidx12.5.6.6, align 4
  %arrayidx15.5.6.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6.6, i32 0, i64 6
  %1636 = load i32* %arrayidx16.5.6.6, align 4
  %mul.5.6.6 = mul nsw i32 %1635, %1636
  %arrayidx19.5.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.6.6 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6.6, i32 0, i64 6
  %1637 = load i32* %arrayidx20.5.6.6, align 4
  %add.5.6.6 = add nsw i32 %1637, %mul.5.6.6
  store i32 %add.5.6.6, i32* %arrayidx20.5.6.6, align 4
  br label %for.inc.5.6.6

for.inc.5.6.6:                                    ; preds = %for.inc.4.6.6
  %arrayidx11.6.6.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.6.6 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6.6, i32 0, i64 6
  %1638 = load i32* %arrayidx12.6.6.6, align 4
  %arrayidx15.6.6.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6.6, i32 0, i64 6
  %1639 = load i32* %arrayidx16.6.6.6, align 4
  %mul.6.6.6 = mul nsw i32 %1638, %1639
  %arrayidx19.6.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.6.6 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6.6, i32 0, i64 6
  %1640 = load i32* %arrayidx20.6.6.6, align 4
  %add.6.6.6 = add nsw i32 %1640, %mul.6.6.6
  store i32 %add.6.6.6, i32* %arrayidx20.6.6.6, align 4
  br label %for.inc.6.6.6

for.inc.6.6.6:                                    ; preds = %for.inc.5.6.6
  %arrayidx11.7.6.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.6.6 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6.6, i32 0, i64 7
  %1641 = load i32* %arrayidx12.7.6.6, align 4
  %arrayidx15.7.6.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6.6, i32 0, i64 6
  %1642 = load i32* %arrayidx16.7.6.6, align 4
  %mul.7.6.6 = mul nsw i32 %1641, %1642
  %arrayidx19.7.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.6.6 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6.6, i32 0, i64 6
  %1643 = load i32* %arrayidx20.7.6.6, align 4
  %add.7.6.6 = add nsw i32 %1643, %mul.7.6.6
  store i32 %add.7.6.6, i32* %arrayidx20.7.6.6, align 4
  br label %for.inc.7.6.6

for.inc.7.6.6:                                    ; preds = %for.inc.6.6.6
  %arrayidx11.8.6.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.6.6 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6.6, i32 0, i64 8
  %1644 = load i32* %arrayidx12.8.6.6, align 4
  %arrayidx15.8.6.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6.6, i32 0, i64 6
  %1645 = load i32* %arrayidx16.8.6.6, align 4
  %mul.8.6.6 = mul nsw i32 %1644, %1645
  %arrayidx19.8.6.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.6.6 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6.6, i32 0, i64 6
  %1646 = load i32* %arrayidx20.8.6.6, align 4
  %add.8.6.6 = add nsw i32 %1646, %mul.8.6.6
  store i32 %add.8.6.6, i32* %arrayidx20.8.6.6, align 4
  br label %for.inc.8.6.6

for.inc.8.6.6:                                    ; preds = %for.inc.7.6.6
  br label %for.inc21.6.6

for.inc21.6.6:                                    ; preds = %for.inc.8.6.6
  %arrayidx.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.7.6 = getelementptr inbounds [9 x i32]* %arrayidx.7.6, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.6, align 4
  br label %for.body8.7.6

for.body8.7.6:                                    ; preds = %for.inc21.6.6
  %arrayidx11.764.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.765.6 = getelementptr inbounds [9 x i32]* %arrayidx11.764.6, i32 0, i64 0
  %1647 = load i32* %arrayidx12.765.6, align 4
  %arrayidx16.766.6 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %1648 = load i32* %arrayidx16.766.6, align 4
  %mul.767.6 = mul nsw i32 %1647, %1648
  %arrayidx19.769.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.770.6 = getelementptr inbounds [9 x i32]* %arrayidx19.769.6, i32 0, i64 7
  %1649 = load i32* %arrayidx20.770.6, align 4
  %add.771.6 = add nsw i32 %1649, %mul.767.6
  store i32 %add.771.6, i32* %arrayidx20.770.6, align 4
  br label %for.inc.772.6

for.inc.772.6:                                    ; preds = %for.body8.7.6
  %arrayidx11.1.7.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.7.6 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7.6, i32 0, i64 1
  %1650 = load i32* %arrayidx12.1.7.6, align 4
  %arrayidx15.1.7.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7.6, i32 0, i64 7
  %1651 = load i32* %arrayidx16.1.7.6, align 4
  %mul.1.7.6 = mul nsw i32 %1650, %1651
  %arrayidx19.1.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.7.6 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7.6, i32 0, i64 7
  %1652 = load i32* %arrayidx20.1.7.6, align 4
  %add.1.7.6 = add nsw i32 %1652, %mul.1.7.6
  store i32 %add.1.7.6, i32* %arrayidx20.1.7.6, align 4
  br label %for.inc.1.7.6

for.inc.1.7.6:                                    ; preds = %for.inc.772.6
  %arrayidx11.2.7.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.7.6 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7.6, i32 0, i64 2
  %1653 = load i32* %arrayidx12.2.7.6, align 4
  %arrayidx15.2.7.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7.6, i32 0, i64 7
  %1654 = load i32* %arrayidx16.2.7.6, align 4
  %mul.2.7.6 = mul nsw i32 %1653, %1654
  %arrayidx19.2.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.7.6 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7.6, i32 0, i64 7
  %1655 = load i32* %arrayidx20.2.7.6, align 4
  %add.2.7.6 = add nsw i32 %1655, %mul.2.7.6
  store i32 %add.2.7.6, i32* %arrayidx20.2.7.6, align 4
  br label %for.inc.2.7.6

for.inc.2.7.6:                                    ; preds = %for.inc.1.7.6
  %arrayidx11.3.7.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.7.6 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7.6, i32 0, i64 3
  %1656 = load i32* %arrayidx12.3.7.6, align 4
  %arrayidx15.3.7.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7.6, i32 0, i64 7
  %1657 = load i32* %arrayidx16.3.7.6, align 4
  %mul.3.7.6 = mul nsw i32 %1656, %1657
  %arrayidx19.3.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.7.6 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7.6, i32 0, i64 7
  %1658 = load i32* %arrayidx20.3.7.6, align 4
  %add.3.7.6 = add nsw i32 %1658, %mul.3.7.6
  store i32 %add.3.7.6, i32* %arrayidx20.3.7.6, align 4
  br label %for.inc.3.7.6

for.inc.3.7.6:                                    ; preds = %for.inc.2.7.6
  %arrayidx11.4.7.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.7.6 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7.6, i32 0, i64 4
  %1659 = load i32* %arrayidx12.4.7.6, align 4
  %arrayidx15.4.7.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7.6, i32 0, i64 7
  %1660 = load i32* %arrayidx16.4.7.6, align 4
  %mul.4.7.6 = mul nsw i32 %1659, %1660
  %arrayidx19.4.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.7.6 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7.6, i32 0, i64 7
  %1661 = load i32* %arrayidx20.4.7.6, align 4
  %add.4.7.6 = add nsw i32 %1661, %mul.4.7.6
  store i32 %add.4.7.6, i32* %arrayidx20.4.7.6, align 4
  br label %for.inc.4.7.6

for.inc.4.7.6:                                    ; preds = %for.inc.3.7.6
  %arrayidx11.5.7.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.7.6 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7.6, i32 0, i64 5
  %1662 = load i32* %arrayidx12.5.7.6, align 4
  %arrayidx15.5.7.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7.6, i32 0, i64 7
  %1663 = load i32* %arrayidx16.5.7.6, align 4
  %mul.5.7.6 = mul nsw i32 %1662, %1663
  %arrayidx19.5.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.7.6 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7.6, i32 0, i64 7
  %1664 = load i32* %arrayidx20.5.7.6, align 4
  %add.5.7.6 = add nsw i32 %1664, %mul.5.7.6
  store i32 %add.5.7.6, i32* %arrayidx20.5.7.6, align 4
  br label %for.inc.5.7.6

for.inc.5.7.6:                                    ; preds = %for.inc.4.7.6
  %arrayidx11.6.7.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.7.6 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7.6, i32 0, i64 6
  %1665 = load i32* %arrayidx12.6.7.6, align 4
  %arrayidx15.6.7.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7.6, i32 0, i64 7
  %1666 = load i32* %arrayidx16.6.7.6, align 4
  %mul.6.7.6 = mul nsw i32 %1665, %1666
  %arrayidx19.6.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.7.6 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7.6, i32 0, i64 7
  %1667 = load i32* %arrayidx20.6.7.6, align 4
  %add.6.7.6 = add nsw i32 %1667, %mul.6.7.6
  store i32 %add.6.7.6, i32* %arrayidx20.6.7.6, align 4
  br label %for.inc.6.7.6

for.inc.6.7.6:                                    ; preds = %for.inc.5.7.6
  %arrayidx11.7.7.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.7.6 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7.6, i32 0, i64 7
  %1668 = load i32* %arrayidx12.7.7.6, align 4
  %arrayidx15.7.7.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7.6, i32 0, i64 7
  %1669 = load i32* %arrayidx16.7.7.6, align 4
  %mul.7.7.6 = mul nsw i32 %1668, %1669
  %arrayidx19.7.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.7.6 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7.6, i32 0, i64 7
  %1670 = load i32* %arrayidx20.7.7.6, align 4
  %add.7.7.6 = add nsw i32 %1670, %mul.7.7.6
  store i32 %add.7.7.6, i32* %arrayidx20.7.7.6, align 4
  br label %for.inc.7.7.6

for.inc.7.7.6:                                    ; preds = %for.inc.6.7.6
  %arrayidx11.8.7.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.7.6 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7.6, i32 0, i64 8
  %1671 = load i32* %arrayidx12.8.7.6, align 4
  %arrayidx15.8.7.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7.6, i32 0, i64 7
  %1672 = load i32* %arrayidx16.8.7.6, align 4
  %mul.8.7.6 = mul nsw i32 %1671, %1672
  %arrayidx19.8.7.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.7.6 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7.6, i32 0, i64 7
  %1673 = load i32* %arrayidx20.8.7.6, align 4
  %add.8.7.6 = add nsw i32 %1673, %mul.8.7.6
  store i32 %add.8.7.6, i32* %arrayidx20.8.7.6, align 4
  br label %for.inc.8.7.6

for.inc.8.7.6:                                    ; preds = %for.inc.7.7.6
  br label %for.inc21.7.6

for.inc21.7.6:                                    ; preds = %for.inc.8.7.6
  %arrayidx.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx5.8.6 = getelementptr inbounds [9 x i32]* %arrayidx.8.6, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.6, align 4
  br label %for.body8.8.6

for.body8.8.6:                                    ; preds = %for.inc21.7.6
  %arrayidx11.874.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.875.6 = getelementptr inbounds [9 x i32]* %arrayidx11.874.6, i32 0, i64 0
  %1674 = load i32* %arrayidx12.875.6, align 4
  %arrayidx16.876.6 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %1675 = load i32* %arrayidx16.876.6, align 4
  %mul.877.6 = mul nsw i32 %1674, %1675
  %arrayidx19.879.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.880.6 = getelementptr inbounds [9 x i32]* %arrayidx19.879.6, i32 0, i64 8
  %1676 = load i32* %arrayidx20.880.6, align 4
  %add.881.6 = add nsw i32 %1676, %mul.877.6
  store i32 %add.881.6, i32* %arrayidx20.880.6, align 4
  br label %for.inc.882.6

for.inc.882.6:                                    ; preds = %for.body8.8.6
  %arrayidx11.1.8.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.1.8.6 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8.6, i32 0, i64 1
  %1677 = load i32* %arrayidx12.1.8.6, align 4
  %arrayidx15.1.8.6 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8.6, i32 0, i64 8
  %1678 = load i32* %arrayidx16.1.8.6, align 4
  %mul.1.8.6 = mul nsw i32 %1677, %1678
  %arrayidx19.1.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.1.8.6 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8.6, i32 0, i64 8
  %1679 = load i32* %arrayidx20.1.8.6, align 4
  %add.1.8.6 = add nsw i32 %1679, %mul.1.8.6
  store i32 %add.1.8.6, i32* %arrayidx20.1.8.6, align 4
  br label %for.inc.1.8.6

for.inc.1.8.6:                                    ; preds = %for.inc.882.6
  %arrayidx11.2.8.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.2.8.6 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8.6, i32 0, i64 2
  %1680 = load i32* %arrayidx12.2.8.6, align 4
  %arrayidx15.2.8.6 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8.6, i32 0, i64 8
  %1681 = load i32* %arrayidx16.2.8.6, align 4
  %mul.2.8.6 = mul nsw i32 %1680, %1681
  %arrayidx19.2.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.2.8.6 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8.6, i32 0, i64 8
  %1682 = load i32* %arrayidx20.2.8.6, align 4
  %add.2.8.6 = add nsw i32 %1682, %mul.2.8.6
  store i32 %add.2.8.6, i32* %arrayidx20.2.8.6, align 4
  br label %for.inc.2.8.6

for.inc.2.8.6:                                    ; preds = %for.inc.1.8.6
  %arrayidx11.3.8.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.3.8.6 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8.6, i32 0, i64 3
  %1683 = load i32* %arrayidx12.3.8.6, align 4
  %arrayidx15.3.8.6 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8.6, i32 0, i64 8
  %1684 = load i32* %arrayidx16.3.8.6, align 4
  %mul.3.8.6 = mul nsw i32 %1683, %1684
  %arrayidx19.3.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.3.8.6 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8.6, i32 0, i64 8
  %1685 = load i32* %arrayidx20.3.8.6, align 4
  %add.3.8.6 = add nsw i32 %1685, %mul.3.8.6
  store i32 %add.3.8.6, i32* %arrayidx20.3.8.6, align 4
  br label %for.inc.3.8.6

for.inc.3.8.6:                                    ; preds = %for.inc.2.8.6
  %arrayidx11.4.8.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.4.8.6 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8.6, i32 0, i64 4
  %1686 = load i32* %arrayidx12.4.8.6, align 4
  %arrayidx15.4.8.6 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8.6, i32 0, i64 8
  %1687 = load i32* %arrayidx16.4.8.6, align 4
  %mul.4.8.6 = mul nsw i32 %1686, %1687
  %arrayidx19.4.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.4.8.6 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8.6, i32 0, i64 8
  %1688 = load i32* %arrayidx20.4.8.6, align 4
  %add.4.8.6 = add nsw i32 %1688, %mul.4.8.6
  store i32 %add.4.8.6, i32* %arrayidx20.4.8.6, align 4
  br label %for.inc.4.8.6

for.inc.4.8.6:                                    ; preds = %for.inc.3.8.6
  %arrayidx11.5.8.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.5.8.6 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8.6, i32 0, i64 5
  %1689 = load i32* %arrayidx12.5.8.6, align 4
  %arrayidx15.5.8.6 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8.6, i32 0, i64 8
  %1690 = load i32* %arrayidx16.5.8.6, align 4
  %mul.5.8.6 = mul nsw i32 %1689, %1690
  %arrayidx19.5.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.5.8.6 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8.6, i32 0, i64 8
  %1691 = load i32* %arrayidx20.5.8.6, align 4
  %add.5.8.6 = add nsw i32 %1691, %mul.5.8.6
  store i32 %add.5.8.6, i32* %arrayidx20.5.8.6, align 4
  br label %for.inc.5.8.6

for.inc.5.8.6:                                    ; preds = %for.inc.4.8.6
  %arrayidx11.6.8.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.6.8.6 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8.6, i32 0, i64 6
  %1692 = load i32* %arrayidx12.6.8.6, align 4
  %arrayidx15.6.8.6 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8.6, i32 0, i64 8
  %1693 = load i32* %arrayidx16.6.8.6, align 4
  %mul.6.8.6 = mul nsw i32 %1692, %1693
  %arrayidx19.6.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.6.8.6 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8.6, i32 0, i64 8
  %1694 = load i32* %arrayidx20.6.8.6, align 4
  %add.6.8.6 = add nsw i32 %1694, %mul.6.8.6
  store i32 %add.6.8.6, i32* %arrayidx20.6.8.6, align 4
  br label %for.inc.6.8.6

for.inc.6.8.6:                                    ; preds = %for.inc.5.8.6
  %arrayidx11.7.8.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.7.8.6 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8.6, i32 0, i64 7
  %1695 = load i32* %arrayidx12.7.8.6, align 4
  %arrayidx15.7.8.6 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8.6, i32 0, i64 8
  %1696 = load i32* %arrayidx16.7.8.6, align 4
  %mul.7.8.6 = mul nsw i32 %1695, %1696
  %arrayidx19.7.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.7.8.6 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8.6, i32 0, i64 8
  %1697 = load i32* %arrayidx20.7.8.6, align 4
  %add.7.8.6 = add nsw i32 %1697, %mul.7.8.6
  store i32 %add.7.8.6, i32* %arrayidx20.7.8.6, align 4
  br label %for.inc.7.8.6

for.inc.7.8.6:                                    ; preds = %for.inc.6.8.6
  %arrayidx11.8.8.6 = getelementptr inbounds [9 x i32]* %a, i64 6
  %arrayidx12.8.8.6 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8.6, i32 0, i64 8
  %1698 = load i32* %arrayidx12.8.8.6, align 4
  %arrayidx15.8.8.6 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8.6 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8.6, i32 0, i64 8
  %1699 = load i32* %arrayidx16.8.8.6, align 4
  %mul.8.8.6 = mul nsw i32 %1698, %1699
  %arrayidx19.8.8.6 = getelementptr inbounds [9 x i32]* %c, i64 6
  %arrayidx20.8.8.6 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8.6, i32 0, i64 8
  %1700 = load i32* %arrayidx20.8.8.6, align 4
  %add.8.8.6 = add nsw i32 %1700, %mul.8.8.6
  store i32 %add.8.8.6, i32* %arrayidx20.8.8.6, align 4
  br label %for.inc.8.8.6

for.inc.8.8.6:                                    ; preds = %for.inc.7.8.6
  br label %for.inc21.8.6

for.inc21.8.6:                                    ; preds = %for.inc.8.8.6
  br label %for.inc24.6

for.inc24.6:                                      ; preds = %for.inc21.8.6
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.inc24.6
  %arrayidx.7588 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.7589 = getelementptr inbounds [9 x i32]* %arrayidx.7588, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.7589, align 4
  br label %for.body8.7597

for.body8.7597:                                   ; preds = %for.body3.7
  %arrayidx11.7590 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7591 = getelementptr inbounds [9 x i32]* %arrayidx11.7590, i32 0, i64 0
  %1701 = load i32* %arrayidx12.7591, align 4
  %arrayidx16.7592 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %1702 = load i32* %arrayidx16.7592, align 4
  %mul.7593 = mul nsw i32 %1701, %1702
  %arrayidx19.7594 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7595 = getelementptr inbounds [9 x i32]* %arrayidx19.7594, i32 0, i64 0
  %1703 = load i32* %arrayidx20.7595, align 4
  %add.7596 = add nsw i32 %1703, %mul.7593
  store i32 %add.7596, i32* %arrayidx20.7595, align 4
  br label %for.inc.7606

for.inc.7606:                                     ; preds = %for.body8.7597
  %arrayidx11.1.7598 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.7599 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7598, i32 0, i64 1
  %1704 = load i32* %arrayidx12.1.7599, align 4
  %arrayidx15.1.7600 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7601 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7600, i32 0, i64 0
  %1705 = load i32* %arrayidx16.1.7601, align 4
  %mul.1.7602 = mul nsw i32 %1704, %1705
  %arrayidx19.1.7603 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.7604 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7603, i32 0, i64 0
  %1706 = load i32* %arrayidx20.1.7604, align 4
  %add.1.7605 = add nsw i32 %1706, %mul.1.7602
  store i32 %add.1.7605, i32* %arrayidx20.1.7604, align 4
  br label %for.inc.1.7615

for.inc.1.7615:                                   ; preds = %for.inc.7606
  %arrayidx11.2.7607 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.7608 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7607, i32 0, i64 2
  %1707 = load i32* %arrayidx12.2.7608, align 4
  %arrayidx15.2.7609 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7610 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7609, i32 0, i64 0
  %1708 = load i32* %arrayidx16.2.7610, align 4
  %mul.2.7611 = mul nsw i32 %1707, %1708
  %arrayidx19.2.7612 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.7613 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7612, i32 0, i64 0
  %1709 = load i32* %arrayidx20.2.7613, align 4
  %add.2.7614 = add nsw i32 %1709, %mul.2.7611
  store i32 %add.2.7614, i32* %arrayidx20.2.7613, align 4
  br label %for.inc.2.7624

for.inc.2.7624:                                   ; preds = %for.inc.1.7615
  %arrayidx11.3.7616 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.7617 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7616, i32 0, i64 3
  %1710 = load i32* %arrayidx12.3.7617, align 4
  %arrayidx15.3.7618 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7619 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7618, i32 0, i64 0
  %1711 = load i32* %arrayidx16.3.7619, align 4
  %mul.3.7620 = mul nsw i32 %1710, %1711
  %arrayidx19.3.7621 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.7622 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7621, i32 0, i64 0
  %1712 = load i32* %arrayidx20.3.7622, align 4
  %add.3.7623 = add nsw i32 %1712, %mul.3.7620
  store i32 %add.3.7623, i32* %arrayidx20.3.7622, align 4
  br label %for.inc.3.7633

for.inc.3.7633:                                   ; preds = %for.inc.2.7624
  %arrayidx11.4.7625 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.7626 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7625, i32 0, i64 4
  %1713 = load i32* %arrayidx12.4.7626, align 4
  %arrayidx15.4.7627 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7628 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7627, i32 0, i64 0
  %1714 = load i32* %arrayidx16.4.7628, align 4
  %mul.4.7629 = mul nsw i32 %1713, %1714
  %arrayidx19.4.7630 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.7631 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7630, i32 0, i64 0
  %1715 = load i32* %arrayidx20.4.7631, align 4
  %add.4.7632 = add nsw i32 %1715, %mul.4.7629
  store i32 %add.4.7632, i32* %arrayidx20.4.7631, align 4
  br label %for.inc.4.7642

for.inc.4.7642:                                   ; preds = %for.inc.3.7633
  %arrayidx11.5.7634 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.7635 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7634, i32 0, i64 5
  %1716 = load i32* %arrayidx12.5.7635, align 4
  %arrayidx15.5.7636 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7637 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7636, i32 0, i64 0
  %1717 = load i32* %arrayidx16.5.7637, align 4
  %mul.5.7638 = mul nsw i32 %1716, %1717
  %arrayidx19.5.7639 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.7640 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7639, i32 0, i64 0
  %1718 = load i32* %arrayidx20.5.7640, align 4
  %add.5.7641 = add nsw i32 %1718, %mul.5.7638
  store i32 %add.5.7641, i32* %arrayidx20.5.7640, align 4
  br label %for.inc.5.7651

for.inc.5.7651:                                   ; preds = %for.inc.4.7642
  %arrayidx11.6.7643 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.7644 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7643, i32 0, i64 6
  %1719 = load i32* %arrayidx12.6.7644, align 4
  %arrayidx15.6.7645 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7646 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7645, i32 0, i64 0
  %1720 = load i32* %arrayidx16.6.7646, align 4
  %mul.6.7647 = mul nsw i32 %1719, %1720
  %arrayidx19.6.7648 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.7649 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7648, i32 0, i64 0
  %1721 = load i32* %arrayidx20.6.7649, align 4
  %add.6.7650 = add nsw i32 %1721, %mul.6.7647
  store i32 %add.6.7650, i32* %arrayidx20.6.7649, align 4
  br label %for.inc.6.7660

for.inc.6.7660:                                   ; preds = %for.inc.5.7651
  %arrayidx11.7.7652 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.7653 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7652, i32 0, i64 7
  %1722 = load i32* %arrayidx12.7.7653, align 4
  %arrayidx15.7.7654 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7655 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7654, i32 0, i64 0
  %1723 = load i32* %arrayidx16.7.7655, align 4
  %mul.7.7656 = mul nsw i32 %1722, %1723
  %arrayidx19.7.7657 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.7658 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7657, i32 0, i64 0
  %1724 = load i32* %arrayidx20.7.7658, align 4
  %add.7.7659 = add nsw i32 %1724, %mul.7.7656
  store i32 %add.7.7659, i32* %arrayidx20.7.7658, align 4
  br label %for.inc.7.7669

for.inc.7.7669:                                   ; preds = %for.inc.6.7660
  %arrayidx11.8.7661 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.7662 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7661, i32 0, i64 8
  %1725 = load i32* %arrayidx12.8.7662, align 4
  %arrayidx15.8.7663 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7664 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7663, i32 0, i64 0
  %1726 = load i32* %arrayidx16.8.7664, align 4
  %mul.8.7665 = mul nsw i32 %1725, %1726
  %arrayidx19.8.7666 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.7667 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7666, i32 0, i64 0
  %1727 = load i32* %arrayidx20.8.7667, align 4
  %add.8.7668 = add nsw i32 %1727, %mul.8.7665
  store i32 %add.8.7668, i32* %arrayidx20.8.7667, align 4
  br label %for.inc.8.7670

for.inc.8.7670:                                   ; preds = %for.inc.7.7669
  br label %for.inc21.7671

for.inc21.7671:                                   ; preds = %for.inc.8.7670
  %arrayidx.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.1.7 = getelementptr inbounds [9 x i32]* %arrayidx.1.7, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.7, align 4
  br label %for.body8.1.7

for.body8.1.7:                                    ; preds = %for.inc21.7671
  %arrayidx11.14.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.15.7 = getelementptr inbounds [9 x i32]* %arrayidx11.14.7, i32 0, i64 0
  %1728 = load i32* %arrayidx12.15.7, align 4
  %arrayidx16.16.7 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %1729 = load i32* %arrayidx16.16.7, align 4
  %mul.17.7 = mul nsw i32 %1728, %1729
  %arrayidx19.19.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.110.7 = getelementptr inbounds [9 x i32]* %arrayidx19.19.7, i32 0, i64 1
  %1730 = load i32* %arrayidx20.110.7, align 4
  %add.111.7 = add nsw i32 %1730, %mul.17.7
  store i32 %add.111.7, i32* %arrayidx20.110.7, align 4
  br label %for.inc.112.7

for.inc.112.7:                                    ; preds = %for.body8.1.7
  %arrayidx11.1.1.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.1.7 = getelementptr inbounds [9 x i32]* %arrayidx11.1.1.7, i32 0, i64 1
  %1731 = load i32* %arrayidx12.1.1.7, align 4
  %arrayidx15.1.1.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1.7, i32 0, i64 1
  %1732 = load i32* %arrayidx16.1.1.7, align 4
  %mul.1.1.7 = mul nsw i32 %1731, %1732
  %arrayidx19.1.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.1.7 = getelementptr inbounds [9 x i32]* %arrayidx19.1.1.7, i32 0, i64 1
  %1733 = load i32* %arrayidx20.1.1.7, align 4
  %add.1.1.7 = add nsw i32 %1733, %mul.1.1.7
  store i32 %add.1.1.7, i32* %arrayidx20.1.1.7, align 4
  br label %for.inc.1.1.7

for.inc.1.1.7:                                    ; preds = %for.inc.112.7
  %arrayidx11.2.1.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.1.7 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1.7, i32 0, i64 2
  %1734 = load i32* %arrayidx12.2.1.7, align 4
  %arrayidx15.2.1.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1.7, i32 0, i64 1
  %1735 = load i32* %arrayidx16.2.1.7, align 4
  %mul.2.1.7 = mul nsw i32 %1734, %1735
  %arrayidx19.2.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.1.7 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1.7, i32 0, i64 1
  %1736 = load i32* %arrayidx20.2.1.7, align 4
  %add.2.1.7 = add nsw i32 %1736, %mul.2.1.7
  store i32 %add.2.1.7, i32* %arrayidx20.2.1.7, align 4
  br label %for.inc.2.1.7

for.inc.2.1.7:                                    ; preds = %for.inc.1.1.7
  %arrayidx11.3.1.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.1.7 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1.7, i32 0, i64 3
  %1737 = load i32* %arrayidx12.3.1.7, align 4
  %arrayidx15.3.1.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1.7, i32 0, i64 1
  %1738 = load i32* %arrayidx16.3.1.7, align 4
  %mul.3.1.7 = mul nsw i32 %1737, %1738
  %arrayidx19.3.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.1.7 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1.7, i32 0, i64 1
  %1739 = load i32* %arrayidx20.3.1.7, align 4
  %add.3.1.7 = add nsw i32 %1739, %mul.3.1.7
  store i32 %add.3.1.7, i32* %arrayidx20.3.1.7, align 4
  br label %for.inc.3.1.7

for.inc.3.1.7:                                    ; preds = %for.inc.2.1.7
  %arrayidx11.4.1.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.1.7 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1.7, i32 0, i64 4
  %1740 = load i32* %arrayidx12.4.1.7, align 4
  %arrayidx15.4.1.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1.7, i32 0, i64 1
  %1741 = load i32* %arrayidx16.4.1.7, align 4
  %mul.4.1.7 = mul nsw i32 %1740, %1741
  %arrayidx19.4.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.1.7 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1.7, i32 0, i64 1
  %1742 = load i32* %arrayidx20.4.1.7, align 4
  %add.4.1.7 = add nsw i32 %1742, %mul.4.1.7
  store i32 %add.4.1.7, i32* %arrayidx20.4.1.7, align 4
  br label %for.inc.4.1.7

for.inc.4.1.7:                                    ; preds = %for.inc.3.1.7
  %arrayidx11.5.1.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.1.7 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1.7, i32 0, i64 5
  %1743 = load i32* %arrayidx12.5.1.7, align 4
  %arrayidx15.5.1.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1.7, i32 0, i64 1
  %1744 = load i32* %arrayidx16.5.1.7, align 4
  %mul.5.1.7 = mul nsw i32 %1743, %1744
  %arrayidx19.5.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.1.7 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1.7, i32 0, i64 1
  %1745 = load i32* %arrayidx20.5.1.7, align 4
  %add.5.1.7 = add nsw i32 %1745, %mul.5.1.7
  store i32 %add.5.1.7, i32* %arrayidx20.5.1.7, align 4
  br label %for.inc.5.1.7

for.inc.5.1.7:                                    ; preds = %for.inc.4.1.7
  %arrayidx11.6.1.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.1.7 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1.7, i32 0, i64 6
  %1746 = load i32* %arrayidx12.6.1.7, align 4
  %arrayidx15.6.1.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1.7, i32 0, i64 1
  %1747 = load i32* %arrayidx16.6.1.7, align 4
  %mul.6.1.7 = mul nsw i32 %1746, %1747
  %arrayidx19.6.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.1.7 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1.7, i32 0, i64 1
  %1748 = load i32* %arrayidx20.6.1.7, align 4
  %add.6.1.7 = add nsw i32 %1748, %mul.6.1.7
  store i32 %add.6.1.7, i32* %arrayidx20.6.1.7, align 4
  br label %for.inc.6.1.7

for.inc.6.1.7:                                    ; preds = %for.inc.5.1.7
  %arrayidx11.7.1.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.1.7 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1.7, i32 0, i64 7
  %1749 = load i32* %arrayidx12.7.1.7, align 4
  %arrayidx15.7.1.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1.7, i32 0, i64 1
  %1750 = load i32* %arrayidx16.7.1.7, align 4
  %mul.7.1.7 = mul nsw i32 %1749, %1750
  %arrayidx19.7.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.1.7 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1.7, i32 0, i64 1
  %1751 = load i32* %arrayidx20.7.1.7, align 4
  %add.7.1.7 = add nsw i32 %1751, %mul.7.1.7
  store i32 %add.7.1.7, i32* %arrayidx20.7.1.7, align 4
  br label %for.inc.7.1.7

for.inc.7.1.7:                                    ; preds = %for.inc.6.1.7
  %arrayidx11.8.1.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.1.7 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1.7, i32 0, i64 8
  %1752 = load i32* %arrayidx12.8.1.7, align 4
  %arrayidx15.8.1.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1.7, i32 0, i64 1
  %1753 = load i32* %arrayidx16.8.1.7, align 4
  %mul.8.1.7 = mul nsw i32 %1752, %1753
  %arrayidx19.8.1.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.1.7 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1.7, i32 0, i64 1
  %1754 = load i32* %arrayidx20.8.1.7, align 4
  %add.8.1.7 = add nsw i32 %1754, %mul.8.1.7
  store i32 %add.8.1.7, i32* %arrayidx20.8.1.7, align 4
  br label %for.inc.8.1.7

for.inc.8.1.7:                                    ; preds = %for.inc.7.1.7
  br label %for.inc21.1.7

for.inc21.1.7:                                    ; preds = %for.inc.8.1.7
  %arrayidx.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.2.7 = getelementptr inbounds [9 x i32]* %arrayidx.2.7, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.7, align 4
  br label %for.body8.2.7

for.body8.2.7:                                    ; preds = %for.inc21.1.7
  %arrayidx11.214.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.215.7 = getelementptr inbounds [9 x i32]* %arrayidx11.214.7, i32 0, i64 0
  %1755 = load i32* %arrayidx12.215.7, align 4
  %arrayidx16.216.7 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %1756 = load i32* %arrayidx16.216.7, align 4
  %mul.217.7 = mul nsw i32 %1755, %1756
  %arrayidx19.219.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.220.7 = getelementptr inbounds [9 x i32]* %arrayidx19.219.7, i32 0, i64 2
  %1757 = load i32* %arrayidx20.220.7, align 4
  %add.221.7 = add nsw i32 %1757, %mul.217.7
  store i32 %add.221.7, i32* %arrayidx20.220.7, align 4
  br label %for.inc.222.7

for.inc.222.7:                                    ; preds = %for.body8.2.7
  %arrayidx11.1.2.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.2.7 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2.7, i32 0, i64 1
  %1758 = load i32* %arrayidx12.1.2.7, align 4
  %arrayidx15.1.2.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2.7, i32 0, i64 2
  %1759 = load i32* %arrayidx16.1.2.7, align 4
  %mul.1.2.7 = mul nsw i32 %1758, %1759
  %arrayidx19.1.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.2.7 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2.7, i32 0, i64 2
  %1760 = load i32* %arrayidx20.1.2.7, align 4
  %add.1.2.7 = add nsw i32 %1760, %mul.1.2.7
  store i32 %add.1.2.7, i32* %arrayidx20.1.2.7, align 4
  br label %for.inc.1.2.7

for.inc.1.2.7:                                    ; preds = %for.inc.222.7
  %arrayidx11.2.2.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.2.7 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2.7, i32 0, i64 2
  %1761 = load i32* %arrayidx12.2.2.7, align 4
  %arrayidx15.2.2.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2.7, i32 0, i64 2
  %1762 = load i32* %arrayidx16.2.2.7, align 4
  %mul.2.2.7 = mul nsw i32 %1761, %1762
  %arrayidx19.2.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.2.7 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2.7, i32 0, i64 2
  %1763 = load i32* %arrayidx20.2.2.7, align 4
  %add.2.2.7 = add nsw i32 %1763, %mul.2.2.7
  store i32 %add.2.2.7, i32* %arrayidx20.2.2.7, align 4
  br label %for.inc.2.2.7

for.inc.2.2.7:                                    ; preds = %for.inc.1.2.7
  %arrayidx11.3.2.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.2.7 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2.7, i32 0, i64 3
  %1764 = load i32* %arrayidx12.3.2.7, align 4
  %arrayidx15.3.2.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2.7, i32 0, i64 2
  %1765 = load i32* %arrayidx16.3.2.7, align 4
  %mul.3.2.7 = mul nsw i32 %1764, %1765
  %arrayidx19.3.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.2.7 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2.7, i32 0, i64 2
  %1766 = load i32* %arrayidx20.3.2.7, align 4
  %add.3.2.7 = add nsw i32 %1766, %mul.3.2.7
  store i32 %add.3.2.7, i32* %arrayidx20.3.2.7, align 4
  br label %for.inc.3.2.7

for.inc.3.2.7:                                    ; preds = %for.inc.2.2.7
  %arrayidx11.4.2.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.2.7 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2.7, i32 0, i64 4
  %1767 = load i32* %arrayidx12.4.2.7, align 4
  %arrayidx15.4.2.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2.7, i32 0, i64 2
  %1768 = load i32* %arrayidx16.4.2.7, align 4
  %mul.4.2.7 = mul nsw i32 %1767, %1768
  %arrayidx19.4.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.2.7 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2.7, i32 0, i64 2
  %1769 = load i32* %arrayidx20.4.2.7, align 4
  %add.4.2.7 = add nsw i32 %1769, %mul.4.2.7
  store i32 %add.4.2.7, i32* %arrayidx20.4.2.7, align 4
  br label %for.inc.4.2.7

for.inc.4.2.7:                                    ; preds = %for.inc.3.2.7
  %arrayidx11.5.2.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.2.7 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2.7, i32 0, i64 5
  %1770 = load i32* %arrayidx12.5.2.7, align 4
  %arrayidx15.5.2.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2.7, i32 0, i64 2
  %1771 = load i32* %arrayidx16.5.2.7, align 4
  %mul.5.2.7 = mul nsw i32 %1770, %1771
  %arrayidx19.5.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.2.7 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2.7, i32 0, i64 2
  %1772 = load i32* %arrayidx20.5.2.7, align 4
  %add.5.2.7 = add nsw i32 %1772, %mul.5.2.7
  store i32 %add.5.2.7, i32* %arrayidx20.5.2.7, align 4
  br label %for.inc.5.2.7

for.inc.5.2.7:                                    ; preds = %for.inc.4.2.7
  %arrayidx11.6.2.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.2.7 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2.7, i32 0, i64 6
  %1773 = load i32* %arrayidx12.6.2.7, align 4
  %arrayidx15.6.2.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2.7, i32 0, i64 2
  %1774 = load i32* %arrayidx16.6.2.7, align 4
  %mul.6.2.7 = mul nsw i32 %1773, %1774
  %arrayidx19.6.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.2.7 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2.7, i32 0, i64 2
  %1775 = load i32* %arrayidx20.6.2.7, align 4
  %add.6.2.7 = add nsw i32 %1775, %mul.6.2.7
  store i32 %add.6.2.7, i32* %arrayidx20.6.2.7, align 4
  br label %for.inc.6.2.7

for.inc.6.2.7:                                    ; preds = %for.inc.5.2.7
  %arrayidx11.7.2.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.2.7 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2.7, i32 0, i64 7
  %1776 = load i32* %arrayidx12.7.2.7, align 4
  %arrayidx15.7.2.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2.7, i32 0, i64 2
  %1777 = load i32* %arrayidx16.7.2.7, align 4
  %mul.7.2.7 = mul nsw i32 %1776, %1777
  %arrayidx19.7.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.2.7 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2.7, i32 0, i64 2
  %1778 = load i32* %arrayidx20.7.2.7, align 4
  %add.7.2.7 = add nsw i32 %1778, %mul.7.2.7
  store i32 %add.7.2.7, i32* %arrayidx20.7.2.7, align 4
  br label %for.inc.7.2.7

for.inc.7.2.7:                                    ; preds = %for.inc.6.2.7
  %arrayidx11.8.2.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.2.7 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2.7, i32 0, i64 8
  %1779 = load i32* %arrayidx12.8.2.7, align 4
  %arrayidx15.8.2.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2.7, i32 0, i64 2
  %1780 = load i32* %arrayidx16.8.2.7, align 4
  %mul.8.2.7 = mul nsw i32 %1779, %1780
  %arrayidx19.8.2.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.2.7 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2.7, i32 0, i64 2
  %1781 = load i32* %arrayidx20.8.2.7, align 4
  %add.8.2.7 = add nsw i32 %1781, %mul.8.2.7
  store i32 %add.8.2.7, i32* %arrayidx20.8.2.7, align 4
  br label %for.inc.8.2.7

for.inc.8.2.7:                                    ; preds = %for.inc.7.2.7
  br label %for.inc21.2.7

for.inc21.2.7:                                    ; preds = %for.inc.8.2.7
  %arrayidx.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.3.7 = getelementptr inbounds [9 x i32]* %arrayidx.3.7, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.7, align 4
  br label %for.body8.3.7

for.body8.3.7:                                    ; preds = %for.inc21.2.7
  %arrayidx11.324.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.325.7 = getelementptr inbounds [9 x i32]* %arrayidx11.324.7, i32 0, i64 0
  %1782 = load i32* %arrayidx12.325.7, align 4
  %arrayidx16.326.7 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %1783 = load i32* %arrayidx16.326.7, align 4
  %mul.327.7 = mul nsw i32 %1782, %1783
  %arrayidx19.329.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.330.7 = getelementptr inbounds [9 x i32]* %arrayidx19.329.7, i32 0, i64 3
  %1784 = load i32* %arrayidx20.330.7, align 4
  %add.331.7 = add nsw i32 %1784, %mul.327.7
  store i32 %add.331.7, i32* %arrayidx20.330.7, align 4
  br label %for.inc.332.7

for.inc.332.7:                                    ; preds = %for.body8.3.7
  %arrayidx11.1.3.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.3.7 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3.7, i32 0, i64 1
  %1785 = load i32* %arrayidx12.1.3.7, align 4
  %arrayidx15.1.3.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3.7, i32 0, i64 3
  %1786 = load i32* %arrayidx16.1.3.7, align 4
  %mul.1.3.7 = mul nsw i32 %1785, %1786
  %arrayidx19.1.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.3.7 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3.7, i32 0, i64 3
  %1787 = load i32* %arrayidx20.1.3.7, align 4
  %add.1.3.7 = add nsw i32 %1787, %mul.1.3.7
  store i32 %add.1.3.7, i32* %arrayidx20.1.3.7, align 4
  br label %for.inc.1.3.7

for.inc.1.3.7:                                    ; preds = %for.inc.332.7
  %arrayidx11.2.3.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.3.7 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3.7, i32 0, i64 2
  %1788 = load i32* %arrayidx12.2.3.7, align 4
  %arrayidx15.2.3.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3.7, i32 0, i64 3
  %1789 = load i32* %arrayidx16.2.3.7, align 4
  %mul.2.3.7 = mul nsw i32 %1788, %1789
  %arrayidx19.2.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.3.7 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3.7, i32 0, i64 3
  %1790 = load i32* %arrayidx20.2.3.7, align 4
  %add.2.3.7 = add nsw i32 %1790, %mul.2.3.7
  store i32 %add.2.3.7, i32* %arrayidx20.2.3.7, align 4
  br label %for.inc.2.3.7

for.inc.2.3.7:                                    ; preds = %for.inc.1.3.7
  %arrayidx11.3.3.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.3.7 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3.7, i32 0, i64 3
  %1791 = load i32* %arrayidx12.3.3.7, align 4
  %arrayidx15.3.3.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3.7, i32 0, i64 3
  %1792 = load i32* %arrayidx16.3.3.7, align 4
  %mul.3.3.7 = mul nsw i32 %1791, %1792
  %arrayidx19.3.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.3.7 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3.7, i32 0, i64 3
  %1793 = load i32* %arrayidx20.3.3.7, align 4
  %add.3.3.7 = add nsw i32 %1793, %mul.3.3.7
  store i32 %add.3.3.7, i32* %arrayidx20.3.3.7, align 4
  br label %for.inc.3.3.7

for.inc.3.3.7:                                    ; preds = %for.inc.2.3.7
  %arrayidx11.4.3.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.3.7 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3.7, i32 0, i64 4
  %1794 = load i32* %arrayidx12.4.3.7, align 4
  %arrayidx15.4.3.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3.7, i32 0, i64 3
  %1795 = load i32* %arrayidx16.4.3.7, align 4
  %mul.4.3.7 = mul nsw i32 %1794, %1795
  %arrayidx19.4.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.3.7 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3.7, i32 0, i64 3
  %1796 = load i32* %arrayidx20.4.3.7, align 4
  %add.4.3.7 = add nsw i32 %1796, %mul.4.3.7
  store i32 %add.4.3.7, i32* %arrayidx20.4.3.7, align 4
  br label %for.inc.4.3.7

for.inc.4.3.7:                                    ; preds = %for.inc.3.3.7
  %arrayidx11.5.3.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.3.7 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3.7, i32 0, i64 5
  %1797 = load i32* %arrayidx12.5.3.7, align 4
  %arrayidx15.5.3.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3.7, i32 0, i64 3
  %1798 = load i32* %arrayidx16.5.3.7, align 4
  %mul.5.3.7 = mul nsw i32 %1797, %1798
  %arrayidx19.5.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.3.7 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3.7, i32 0, i64 3
  %1799 = load i32* %arrayidx20.5.3.7, align 4
  %add.5.3.7 = add nsw i32 %1799, %mul.5.3.7
  store i32 %add.5.3.7, i32* %arrayidx20.5.3.7, align 4
  br label %for.inc.5.3.7

for.inc.5.3.7:                                    ; preds = %for.inc.4.3.7
  %arrayidx11.6.3.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.3.7 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3.7, i32 0, i64 6
  %1800 = load i32* %arrayidx12.6.3.7, align 4
  %arrayidx15.6.3.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3.7, i32 0, i64 3
  %1801 = load i32* %arrayidx16.6.3.7, align 4
  %mul.6.3.7 = mul nsw i32 %1800, %1801
  %arrayidx19.6.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.3.7 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3.7, i32 0, i64 3
  %1802 = load i32* %arrayidx20.6.3.7, align 4
  %add.6.3.7 = add nsw i32 %1802, %mul.6.3.7
  store i32 %add.6.3.7, i32* %arrayidx20.6.3.7, align 4
  br label %for.inc.6.3.7

for.inc.6.3.7:                                    ; preds = %for.inc.5.3.7
  %arrayidx11.7.3.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.3.7 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3.7, i32 0, i64 7
  %1803 = load i32* %arrayidx12.7.3.7, align 4
  %arrayidx15.7.3.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3.7, i32 0, i64 3
  %1804 = load i32* %arrayidx16.7.3.7, align 4
  %mul.7.3.7 = mul nsw i32 %1803, %1804
  %arrayidx19.7.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.3.7 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3.7, i32 0, i64 3
  %1805 = load i32* %arrayidx20.7.3.7, align 4
  %add.7.3.7 = add nsw i32 %1805, %mul.7.3.7
  store i32 %add.7.3.7, i32* %arrayidx20.7.3.7, align 4
  br label %for.inc.7.3.7

for.inc.7.3.7:                                    ; preds = %for.inc.6.3.7
  %arrayidx11.8.3.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.3.7 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3.7, i32 0, i64 8
  %1806 = load i32* %arrayidx12.8.3.7, align 4
  %arrayidx15.8.3.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3.7, i32 0, i64 3
  %1807 = load i32* %arrayidx16.8.3.7, align 4
  %mul.8.3.7 = mul nsw i32 %1806, %1807
  %arrayidx19.8.3.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.3.7 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3.7, i32 0, i64 3
  %1808 = load i32* %arrayidx20.8.3.7, align 4
  %add.8.3.7 = add nsw i32 %1808, %mul.8.3.7
  store i32 %add.8.3.7, i32* %arrayidx20.8.3.7, align 4
  br label %for.inc.8.3.7

for.inc.8.3.7:                                    ; preds = %for.inc.7.3.7
  br label %for.inc21.3.7

for.inc21.3.7:                                    ; preds = %for.inc.8.3.7
  %arrayidx.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.4.7 = getelementptr inbounds [9 x i32]* %arrayidx.4.7, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.7, align 4
  br label %for.body8.4.7

for.body8.4.7:                                    ; preds = %for.inc21.3.7
  %arrayidx11.434.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.435.7 = getelementptr inbounds [9 x i32]* %arrayidx11.434.7, i32 0, i64 0
  %1809 = load i32* %arrayidx12.435.7, align 4
  %arrayidx16.436.7 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %1810 = load i32* %arrayidx16.436.7, align 4
  %mul.437.7 = mul nsw i32 %1809, %1810
  %arrayidx19.439.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.440.7 = getelementptr inbounds [9 x i32]* %arrayidx19.439.7, i32 0, i64 4
  %1811 = load i32* %arrayidx20.440.7, align 4
  %add.441.7 = add nsw i32 %1811, %mul.437.7
  store i32 %add.441.7, i32* %arrayidx20.440.7, align 4
  br label %for.inc.442.7

for.inc.442.7:                                    ; preds = %for.body8.4.7
  %arrayidx11.1.4.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.4.7 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4.7, i32 0, i64 1
  %1812 = load i32* %arrayidx12.1.4.7, align 4
  %arrayidx15.1.4.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4.7, i32 0, i64 4
  %1813 = load i32* %arrayidx16.1.4.7, align 4
  %mul.1.4.7 = mul nsw i32 %1812, %1813
  %arrayidx19.1.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.4.7 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4.7, i32 0, i64 4
  %1814 = load i32* %arrayidx20.1.4.7, align 4
  %add.1.4.7 = add nsw i32 %1814, %mul.1.4.7
  store i32 %add.1.4.7, i32* %arrayidx20.1.4.7, align 4
  br label %for.inc.1.4.7

for.inc.1.4.7:                                    ; preds = %for.inc.442.7
  %arrayidx11.2.4.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.4.7 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4.7, i32 0, i64 2
  %1815 = load i32* %arrayidx12.2.4.7, align 4
  %arrayidx15.2.4.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4.7, i32 0, i64 4
  %1816 = load i32* %arrayidx16.2.4.7, align 4
  %mul.2.4.7 = mul nsw i32 %1815, %1816
  %arrayidx19.2.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.4.7 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4.7, i32 0, i64 4
  %1817 = load i32* %arrayidx20.2.4.7, align 4
  %add.2.4.7 = add nsw i32 %1817, %mul.2.4.7
  store i32 %add.2.4.7, i32* %arrayidx20.2.4.7, align 4
  br label %for.inc.2.4.7

for.inc.2.4.7:                                    ; preds = %for.inc.1.4.7
  %arrayidx11.3.4.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.4.7 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4.7, i32 0, i64 3
  %1818 = load i32* %arrayidx12.3.4.7, align 4
  %arrayidx15.3.4.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4.7, i32 0, i64 4
  %1819 = load i32* %arrayidx16.3.4.7, align 4
  %mul.3.4.7 = mul nsw i32 %1818, %1819
  %arrayidx19.3.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.4.7 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4.7, i32 0, i64 4
  %1820 = load i32* %arrayidx20.3.4.7, align 4
  %add.3.4.7 = add nsw i32 %1820, %mul.3.4.7
  store i32 %add.3.4.7, i32* %arrayidx20.3.4.7, align 4
  br label %for.inc.3.4.7

for.inc.3.4.7:                                    ; preds = %for.inc.2.4.7
  %arrayidx11.4.4.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.4.7 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4.7, i32 0, i64 4
  %1821 = load i32* %arrayidx12.4.4.7, align 4
  %arrayidx15.4.4.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4.7, i32 0, i64 4
  %1822 = load i32* %arrayidx16.4.4.7, align 4
  %mul.4.4.7 = mul nsw i32 %1821, %1822
  %arrayidx19.4.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.4.7 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4.7, i32 0, i64 4
  %1823 = load i32* %arrayidx20.4.4.7, align 4
  %add.4.4.7 = add nsw i32 %1823, %mul.4.4.7
  store i32 %add.4.4.7, i32* %arrayidx20.4.4.7, align 4
  br label %for.inc.4.4.7

for.inc.4.4.7:                                    ; preds = %for.inc.3.4.7
  %arrayidx11.5.4.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.4.7 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4.7, i32 0, i64 5
  %1824 = load i32* %arrayidx12.5.4.7, align 4
  %arrayidx15.5.4.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4.7, i32 0, i64 4
  %1825 = load i32* %arrayidx16.5.4.7, align 4
  %mul.5.4.7 = mul nsw i32 %1824, %1825
  %arrayidx19.5.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.4.7 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4.7, i32 0, i64 4
  %1826 = load i32* %arrayidx20.5.4.7, align 4
  %add.5.4.7 = add nsw i32 %1826, %mul.5.4.7
  store i32 %add.5.4.7, i32* %arrayidx20.5.4.7, align 4
  br label %for.inc.5.4.7

for.inc.5.4.7:                                    ; preds = %for.inc.4.4.7
  %arrayidx11.6.4.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.4.7 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4.7, i32 0, i64 6
  %1827 = load i32* %arrayidx12.6.4.7, align 4
  %arrayidx15.6.4.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4.7, i32 0, i64 4
  %1828 = load i32* %arrayidx16.6.4.7, align 4
  %mul.6.4.7 = mul nsw i32 %1827, %1828
  %arrayidx19.6.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.4.7 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4.7, i32 0, i64 4
  %1829 = load i32* %arrayidx20.6.4.7, align 4
  %add.6.4.7 = add nsw i32 %1829, %mul.6.4.7
  store i32 %add.6.4.7, i32* %arrayidx20.6.4.7, align 4
  br label %for.inc.6.4.7

for.inc.6.4.7:                                    ; preds = %for.inc.5.4.7
  %arrayidx11.7.4.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.4.7 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4.7, i32 0, i64 7
  %1830 = load i32* %arrayidx12.7.4.7, align 4
  %arrayidx15.7.4.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4.7, i32 0, i64 4
  %1831 = load i32* %arrayidx16.7.4.7, align 4
  %mul.7.4.7 = mul nsw i32 %1830, %1831
  %arrayidx19.7.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.4.7 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4.7, i32 0, i64 4
  %1832 = load i32* %arrayidx20.7.4.7, align 4
  %add.7.4.7 = add nsw i32 %1832, %mul.7.4.7
  store i32 %add.7.4.7, i32* %arrayidx20.7.4.7, align 4
  br label %for.inc.7.4.7

for.inc.7.4.7:                                    ; preds = %for.inc.6.4.7
  %arrayidx11.8.4.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.4.7 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4.7, i32 0, i64 8
  %1833 = load i32* %arrayidx12.8.4.7, align 4
  %arrayidx15.8.4.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4.7, i32 0, i64 4
  %1834 = load i32* %arrayidx16.8.4.7, align 4
  %mul.8.4.7 = mul nsw i32 %1833, %1834
  %arrayidx19.8.4.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.4.7 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4.7, i32 0, i64 4
  %1835 = load i32* %arrayidx20.8.4.7, align 4
  %add.8.4.7 = add nsw i32 %1835, %mul.8.4.7
  store i32 %add.8.4.7, i32* %arrayidx20.8.4.7, align 4
  br label %for.inc.8.4.7

for.inc.8.4.7:                                    ; preds = %for.inc.7.4.7
  br label %for.inc21.4.7

for.inc21.4.7:                                    ; preds = %for.inc.8.4.7
  %arrayidx.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.5.7 = getelementptr inbounds [9 x i32]* %arrayidx.5.7, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.7, align 4
  br label %for.body8.5.7

for.body8.5.7:                                    ; preds = %for.inc21.4.7
  %arrayidx11.544.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.545.7 = getelementptr inbounds [9 x i32]* %arrayidx11.544.7, i32 0, i64 0
  %1836 = load i32* %arrayidx12.545.7, align 4
  %arrayidx16.546.7 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %1837 = load i32* %arrayidx16.546.7, align 4
  %mul.547.7 = mul nsw i32 %1836, %1837
  %arrayidx19.549.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.550.7 = getelementptr inbounds [9 x i32]* %arrayidx19.549.7, i32 0, i64 5
  %1838 = load i32* %arrayidx20.550.7, align 4
  %add.551.7 = add nsw i32 %1838, %mul.547.7
  store i32 %add.551.7, i32* %arrayidx20.550.7, align 4
  br label %for.inc.552.7

for.inc.552.7:                                    ; preds = %for.body8.5.7
  %arrayidx11.1.5.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.5.7 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5.7, i32 0, i64 1
  %1839 = load i32* %arrayidx12.1.5.7, align 4
  %arrayidx15.1.5.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5.7, i32 0, i64 5
  %1840 = load i32* %arrayidx16.1.5.7, align 4
  %mul.1.5.7 = mul nsw i32 %1839, %1840
  %arrayidx19.1.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.5.7 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5.7, i32 0, i64 5
  %1841 = load i32* %arrayidx20.1.5.7, align 4
  %add.1.5.7 = add nsw i32 %1841, %mul.1.5.7
  store i32 %add.1.5.7, i32* %arrayidx20.1.5.7, align 4
  br label %for.inc.1.5.7

for.inc.1.5.7:                                    ; preds = %for.inc.552.7
  %arrayidx11.2.5.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.5.7 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5.7, i32 0, i64 2
  %1842 = load i32* %arrayidx12.2.5.7, align 4
  %arrayidx15.2.5.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5.7, i32 0, i64 5
  %1843 = load i32* %arrayidx16.2.5.7, align 4
  %mul.2.5.7 = mul nsw i32 %1842, %1843
  %arrayidx19.2.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.5.7 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5.7, i32 0, i64 5
  %1844 = load i32* %arrayidx20.2.5.7, align 4
  %add.2.5.7 = add nsw i32 %1844, %mul.2.5.7
  store i32 %add.2.5.7, i32* %arrayidx20.2.5.7, align 4
  br label %for.inc.2.5.7

for.inc.2.5.7:                                    ; preds = %for.inc.1.5.7
  %arrayidx11.3.5.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.5.7 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5.7, i32 0, i64 3
  %1845 = load i32* %arrayidx12.3.5.7, align 4
  %arrayidx15.3.5.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5.7, i32 0, i64 5
  %1846 = load i32* %arrayidx16.3.5.7, align 4
  %mul.3.5.7 = mul nsw i32 %1845, %1846
  %arrayidx19.3.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.5.7 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5.7, i32 0, i64 5
  %1847 = load i32* %arrayidx20.3.5.7, align 4
  %add.3.5.7 = add nsw i32 %1847, %mul.3.5.7
  store i32 %add.3.5.7, i32* %arrayidx20.3.5.7, align 4
  br label %for.inc.3.5.7

for.inc.3.5.7:                                    ; preds = %for.inc.2.5.7
  %arrayidx11.4.5.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.5.7 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5.7, i32 0, i64 4
  %1848 = load i32* %arrayidx12.4.5.7, align 4
  %arrayidx15.4.5.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5.7, i32 0, i64 5
  %1849 = load i32* %arrayidx16.4.5.7, align 4
  %mul.4.5.7 = mul nsw i32 %1848, %1849
  %arrayidx19.4.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.5.7 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5.7, i32 0, i64 5
  %1850 = load i32* %arrayidx20.4.5.7, align 4
  %add.4.5.7 = add nsw i32 %1850, %mul.4.5.7
  store i32 %add.4.5.7, i32* %arrayidx20.4.5.7, align 4
  br label %for.inc.4.5.7

for.inc.4.5.7:                                    ; preds = %for.inc.3.5.7
  %arrayidx11.5.5.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.5.7 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5.7, i32 0, i64 5
  %1851 = load i32* %arrayidx12.5.5.7, align 4
  %arrayidx15.5.5.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5.7, i32 0, i64 5
  %1852 = load i32* %arrayidx16.5.5.7, align 4
  %mul.5.5.7 = mul nsw i32 %1851, %1852
  %arrayidx19.5.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.5.7 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5.7, i32 0, i64 5
  %1853 = load i32* %arrayidx20.5.5.7, align 4
  %add.5.5.7 = add nsw i32 %1853, %mul.5.5.7
  store i32 %add.5.5.7, i32* %arrayidx20.5.5.7, align 4
  br label %for.inc.5.5.7

for.inc.5.5.7:                                    ; preds = %for.inc.4.5.7
  %arrayidx11.6.5.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.5.7 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5.7, i32 0, i64 6
  %1854 = load i32* %arrayidx12.6.5.7, align 4
  %arrayidx15.6.5.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5.7, i32 0, i64 5
  %1855 = load i32* %arrayidx16.6.5.7, align 4
  %mul.6.5.7 = mul nsw i32 %1854, %1855
  %arrayidx19.6.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.5.7 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5.7, i32 0, i64 5
  %1856 = load i32* %arrayidx20.6.5.7, align 4
  %add.6.5.7 = add nsw i32 %1856, %mul.6.5.7
  store i32 %add.6.5.7, i32* %arrayidx20.6.5.7, align 4
  br label %for.inc.6.5.7

for.inc.6.5.7:                                    ; preds = %for.inc.5.5.7
  %arrayidx11.7.5.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.5.7 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5.7, i32 0, i64 7
  %1857 = load i32* %arrayidx12.7.5.7, align 4
  %arrayidx15.7.5.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5.7, i32 0, i64 5
  %1858 = load i32* %arrayidx16.7.5.7, align 4
  %mul.7.5.7 = mul nsw i32 %1857, %1858
  %arrayidx19.7.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.5.7 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5.7, i32 0, i64 5
  %1859 = load i32* %arrayidx20.7.5.7, align 4
  %add.7.5.7 = add nsw i32 %1859, %mul.7.5.7
  store i32 %add.7.5.7, i32* %arrayidx20.7.5.7, align 4
  br label %for.inc.7.5.7

for.inc.7.5.7:                                    ; preds = %for.inc.6.5.7
  %arrayidx11.8.5.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.5.7 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5.7, i32 0, i64 8
  %1860 = load i32* %arrayidx12.8.5.7, align 4
  %arrayidx15.8.5.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5.7, i32 0, i64 5
  %1861 = load i32* %arrayidx16.8.5.7, align 4
  %mul.8.5.7 = mul nsw i32 %1860, %1861
  %arrayidx19.8.5.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.5.7 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5.7, i32 0, i64 5
  %1862 = load i32* %arrayidx20.8.5.7, align 4
  %add.8.5.7 = add nsw i32 %1862, %mul.8.5.7
  store i32 %add.8.5.7, i32* %arrayidx20.8.5.7, align 4
  br label %for.inc.8.5.7

for.inc.8.5.7:                                    ; preds = %for.inc.7.5.7
  br label %for.inc21.5.7

for.inc21.5.7:                                    ; preds = %for.inc.8.5.7
  %arrayidx.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.6.7 = getelementptr inbounds [9 x i32]* %arrayidx.6.7, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.7, align 4
  br label %for.body8.6.7

for.body8.6.7:                                    ; preds = %for.inc21.5.7
  %arrayidx11.654.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.655.7 = getelementptr inbounds [9 x i32]* %arrayidx11.654.7, i32 0, i64 0
  %1863 = load i32* %arrayidx12.655.7, align 4
  %arrayidx16.656.7 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %1864 = load i32* %arrayidx16.656.7, align 4
  %mul.657.7 = mul nsw i32 %1863, %1864
  %arrayidx19.659.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.660.7 = getelementptr inbounds [9 x i32]* %arrayidx19.659.7, i32 0, i64 6
  %1865 = load i32* %arrayidx20.660.7, align 4
  %add.661.7 = add nsw i32 %1865, %mul.657.7
  store i32 %add.661.7, i32* %arrayidx20.660.7, align 4
  br label %for.inc.662.7

for.inc.662.7:                                    ; preds = %for.body8.6.7
  %arrayidx11.1.6.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.6.7 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6.7, i32 0, i64 1
  %1866 = load i32* %arrayidx12.1.6.7, align 4
  %arrayidx15.1.6.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6.7, i32 0, i64 6
  %1867 = load i32* %arrayidx16.1.6.7, align 4
  %mul.1.6.7 = mul nsw i32 %1866, %1867
  %arrayidx19.1.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.6.7 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6.7, i32 0, i64 6
  %1868 = load i32* %arrayidx20.1.6.7, align 4
  %add.1.6.7 = add nsw i32 %1868, %mul.1.6.7
  store i32 %add.1.6.7, i32* %arrayidx20.1.6.7, align 4
  br label %for.inc.1.6.7

for.inc.1.6.7:                                    ; preds = %for.inc.662.7
  %arrayidx11.2.6.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.6.7 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6.7, i32 0, i64 2
  %1869 = load i32* %arrayidx12.2.6.7, align 4
  %arrayidx15.2.6.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6.7, i32 0, i64 6
  %1870 = load i32* %arrayidx16.2.6.7, align 4
  %mul.2.6.7 = mul nsw i32 %1869, %1870
  %arrayidx19.2.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.6.7 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6.7, i32 0, i64 6
  %1871 = load i32* %arrayidx20.2.6.7, align 4
  %add.2.6.7 = add nsw i32 %1871, %mul.2.6.7
  store i32 %add.2.6.7, i32* %arrayidx20.2.6.7, align 4
  br label %for.inc.2.6.7

for.inc.2.6.7:                                    ; preds = %for.inc.1.6.7
  %arrayidx11.3.6.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.6.7 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6.7, i32 0, i64 3
  %1872 = load i32* %arrayidx12.3.6.7, align 4
  %arrayidx15.3.6.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6.7, i32 0, i64 6
  %1873 = load i32* %arrayidx16.3.6.7, align 4
  %mul.3.6.7 = mul nsw i32 %1872, %1873
  %arrayidx19.3.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.6.7 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6.7, i32 0, i64 6
  %1874 = load i32* %arrayidx20.3.6.7, align 4
  %add.3.6.7 = add nsw i32 %1874, %mul.3.6.7
  store i32 %add.3.6.7, i32* %arrayidx20.3.6.7, align 4
  br label %for.inc.3.6.7

for.inc.3.6.7:                                    ; preds = %for.inc.2.6.7
  %arrayidx11.4.6.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.6.7 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6.7, i32 0, i64 4
  %1875 = load i32* %arrayidx12.4.6.7, align 4
  %arrayidx15.4.6.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6.7, i32 0, i64 6
  %1876 = load i32* %arrayidx16.4.6.7, align 4
  %mul.4.6.7 = mul nsw i32 %1875, %1876
  %arrayidx19.4.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.6.7 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6.7, i32 0, i64 6
  %1877 = load i32* %arrayidx20.4.6.7, align 4
  %add.4.6.7 = add nsw i32 %1877, %mul.4.6.7
  store i32 %add.4.6.7, i32* %arrayidx20.4.6.7, align 4
  br label %for.inc.4.6.7

for.inc.4.6.7:                                    ; preds = %for.inc.3.6.7
  %arrayidx11.5.6.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.6.7 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6.7, i32 0, i64 5
  %1878 = load i32* %arrayidx12.5.6.7, align 4
  %arrayidx15.5.6.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6.7, i32 0, i64 6
  %1879 = load i32* %arrayidx16.5.6.7, align 4
  %mul.5.6.7 = mul nsw i32 %1878, %1879
  %arrayidx19.5.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.6.7 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6.7, i32 0, i64 6
  %1880 = load i32* %arrayidx20.5.6.7, align 4
  %add.5.6.7 = add nsw i32 %1880, %mul.5.6.7
  store i32 %add.5.6.7, i32* %arrayidx20.5.6.7, align 4
  br label %for.inc.5.6.7

for.inc.5.6.7:                                    ; preds = %for.inc.4.6.7
  %arrayidx11.6.6.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.6.7 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6.7, i32 0, i64 6
  %1881 = load i32* %arrayidx12.6.6.7, align 4
  %arrayidx15.6.6.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6.7, i32 0, i64 6
  %1882 = load i32* %arrayidx16.6.6.7, align 4
  %mul.6.6.7 = mul nsw i32 %1881, %1882
  %arrayidx19.6.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.6.7 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6.7, i32 0, i64 6
  %1883 = load i32* %arrayidx20.6.6.7, align 4
  %add.6.6.7 = add nsw i32 %1883, %mul.6.6.7
  store i32 %add.6.6.7, i32* %arrayidx20.6.6.7, align 4
  br label %for.inc.6.6.7

for.inc.6.6.7:                                    ; preds = %for.inc.5.6.7
  %arrayidx11.7.6.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.6.7 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6.7, i32 0, i64 7
  %1884 = load i32* %arrayidx12.7.6.7, align 4
  %arrayidx15.7.6.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6.7, i32 0, i64 6
  %1885 = load i32* %arrayidx16.7.6.7, align 4
  %mul.7.6.7 = mul nsw i32 %1884, %1885
  %arrayidx19.7.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.6.7 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6.7, i32 0, i64 6
  %1886 = load i32* %arrayidx20.7.6.7, align 4
  %add.7.6.7 = add nsw i32 %1886, %mul.7.6.7
  store i32 %add.7.6.7, i32* %arrayidx20.7.6.7, align 4
  br label %for.inc.7.6.7

for.inc.7.6.7:                                    ; preds = %for.inc.6.6.7
  %arrayidx11.8.6.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.6.7 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6.7, i32 0, i64 8
  %1887 = load i32* %arrayidx12.8.6.7, align 4
  %arrayidx15.8.6.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6.7, i32 0, i64 6
  %1888 = load i32* %arrayidx16.8.6.7, align 4
  %mul.8.6.7 = mul nsw i32 %1887, %1888
  %arrayidx19.8.6.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.6.7 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6.7, i32 0, i64 6
  %1889 = load i32* %arrayidx20.8.6.7, align 4
  %add.8.6.7 = add nsw i32 %1889, %mul.8.6.7
  store i32 %add.8.6.7, i32* %arrayidx20.8.6.7, align 4
  br label %for.inc.8.6.7

for.inc.8.6.7:                                    ; preds = %for.inc.7.6.7
  br label %for.inc21.6.7

for.inc21.6.7:                                    ; preds = %for.inc.8.6.7
  %arrayidx.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.7.7 = getelementptr inbounds [9 x i32]* %arrayidx.7.7, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.7, align 4
  br label %for.body8.7.7

for.body8.7.7:                                    ; preds = %for.inc21.6.7
  %arrayidx11.764.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.765.7 = getelementptr inbounds [9 x i32]* %arrayidx11.764.7, i32 0, i64 0
  %1890 = load i32* %arrayidx12.765.7, align 4
  %arrayidx16.766.7 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %1891 = load i32* %arrayidx16.766.7, align 4
  %mul.767.7 = mul nsw i32 %1890, %1891
  %arrayidx19.769.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.770.7 = getelementptr inbounds [9 x i32]* %arrayidx19.769.7, i32 0, i64 7
  %1892 = load i32* %arrayidx20.770.7, align 4
  %add.771.7 = add nsw i32 %1892, %mul.767.7
  store i32 %add.771.7, i32* %arrayidx20.770.7, align 4
  br label %for.inc.772.7

for.inc.772.7:                                    ; preds = %for.body8.7.7
  %arrayidx11.1.7.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.7.7 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7.7, i32 0, i64 1
  %1893 = load i32* %arrayidx12.1.7.7, align 4
  %arrayidx15.1.7.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7.7, i32 0, i64 7
  %1894 = load i32* %arrayidx16.1.7.7, align 4
  %mul.1.7.7 = mul nsw i32 %1893, %1894
  %arrayidx19.1.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.7.7 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7.7, i32 0, i64 7
  %1895 = load i32* %arrayidx20.1.7.7, align 4
  %add.1.7.7 = add nsw i32 %1895, %mul.1.7.7
  store i32 %add.1.7.7, i32* %arrayidx20.1.7.7, align 4
  br label %for.inc.1.7.7

for.inc.1.7.7:                                    ; preds = %for.inc.772.7
  %arrayidx11.2.7.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.7.7 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7.7, i32 0, i64 2
  %1896 = load i32* %arrayidx12.2.7.7, align 4
  %arrayidx15.2.7.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7.7, i32 0, i64 7
  %1897 = load i32* %arrayidx16.2.7.7, align 4
  %mul.2.7.7 = mul nsw i32 %1896, %1897
  %arrayidx19.2.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.7.7 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7.7, i32 0, i64 7
  %1898 = load i32* %arrayidx20.2.7.7, align 4
  %add.2.7.7 = add nsw i32 %1898, %mul.2.7.7
  store i32 %add.2.7.7, i32* %arrayidx20.2.7.7, align 4
  br label %for.inc.2.7.7

for.inc.2.7.7:                                    ; preds = %for.inc.1.7.7
  %arrayidx11.3.7.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.7.7 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7.7, i32 0, i64 3
  %1899 = load i32* %arrayidx12.3.7.7, align 4
  %arrayidx15.3.7.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7.7, i32 0, i64 7
  %1900 = load i32* %arrayidx16.3.7.7, align 4
  %mul.3.7.7 = mul nsw i32 %1899, %1900
  %arrayidx19.3.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.7.7 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7.7, i32 0, i64 7
  %1901 = load i32* %arrayidx20.3.7.7, align 4
  %add.3.7.7 = add nsw i32 %1901, %mul.3.7.7
  store i32 %add.3.7.7, i32* %arrayidx20.3.7.7, align 4
  br label %for.inc.3.7.7

for.inc.3.7.7:                                    ; preds = %for.inc.2.7.7
  %arrayidx11.4.7.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.7.7 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7.7, i32 0, i64 4
  %1902 = load i32* %arrayidx12.4.7.7, align 4
  %arrayidx15.4.7.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7.7, i32 0, i64 7
  %1903 = load i32* %arrayidx16.4.7.7, align 4
  %mul.4.7.7 = mul nsw i32 %1902, %1903
  %arrayidx19.4.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.7.7 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7.7, i32 0, i64 7
  %1904 = load i32* %arrayidx20.4.7.7, align 4
  %add.4.7.7 = add nsw i32 %1904, %mul.4.7.7
  store i32 %add.4.7.7, i32* %arrayidx20.4.7.7, align 4
  br label %for.inc.4.7.7

for.inc.4.7.7:                                    ; preds = %for.inc.3.7.7
  %arrayidx11.5.7.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.7.7 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7.7, i32 0, i64 5
  %1905 = load i32* %arrayidx12.5.7.7, align 4
  %arrayidx15.5.7.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7.7, i32 0, i64 7
  %1906 = load i32* %arrayidx16.5.7.7, align 4
  %mul.5.7.7 = mul nsw i32 %1905, %1906
  %arrayidx19.5.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.7.7 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7.7, i32 0, i64 7
  %1907 = load i32* %arrayidx20.5.7.7, align 4
  %add.5.7.7 = add nsw i32 %1907, %mul.5.7.7
  store i32 %add.5.7.7, i32* %arrayidx20.5.7.7, align 4
  br label %for.inc.5.7.7

for.inc.5.7.7:                                    ; preds = %for.inc.4.7.7
  %arrayidx11.6.7.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.7.7 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7.7, i32 0, i64 6
  %1908 = load i32* %arrayidx12.6.7.7, align 4
  %arrayidx15.6.7.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7.7, i32 0, i64 7
  %1909 = load i32* %arrayidx16.6.7.7, align 4
  %mul.6.7.7 = mul nsw i32 %1908, %1909
  %arrayidx19.6.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.7.7 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7.7, i32 0, i64 7
  %1910 = load i32* %arrayidx20.6.7.7, align 4
  %add.6.7.7 = add nsw i32 %1910, %mul.6.7.7
  store i32 %add.6.7.7, i32* %arrayidx20.6.7.7, align 4
  br label %for.inc.6.7.7

for.inc.6.7.7:                                    ; preds = %for.inc.5.7.7
  %arrayidx11.7.7.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.7.7 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7.7, i32 0, i64 7
  %1911 = load i32* %arrayidx12.7.7.7, align 4
  %arrayidx15.7.7.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7.7, i32 0, i64 7
  %1912 = load i32* %arrayidx16.7.7.7, align 4
  %mul.7.7.7 = mul nsw i32 %1911, %1912
  %arrayidx19.7.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.7.7 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7.7, i32 0, i64 7
  %1913 = load i32* %arrayidx20.7.7.7, align 4
  %add.7.7.7 = add nsw i32 %1913, %mul.7.7.7
  store i32 %add.7.7.7, i32* %arrayidx20.7.7.7, align 4
  br label %for.inc.7.7.7

for.inc.7.7.7:                                    ; preds = %for.inc.6.7.7
  %arrayidx11.8.7.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.7.7 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7.7, i32 0, i64 8
  %1914 = load i32* %arrayidx12.8.7.7, align 4
  %arrayidx15.8.7.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7.7, i32 0, i64 7
  %1915 = load i32* %arrayidx16.8.7.7, align 4
  %mul.8.7.7 = mul nsw i32 %1914, %1915
  %arrayidx19.8.7.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.7.7 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7.7, i32 0, i64 7
  %1916 = load i32* %arrayidx20.8.7.7, align 4
  %add.8.7.7 = add nsw i32 %1916, %mul.8.7.7
  store i32 %add.8.7.7, i32* %arrayidx20.8.7.7, align 4
  br label %for.inc.8.7.7

for.inc.8.7.7:                                    ; preds = %for.inc.7.7.7
  br label %for.inc21.7.7

for.inc21.7.7:                                    ; preds = %for.inc.8.7.7
  %arrayidx.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx5.8.7 = getelementptr inbounds [9 x i32]* %arrayidx.8.7, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.7, align 4
  br label %for.body8.8.7

for.body8.8.7:                                    ; preds = %for.inc21.7.7
  %arrayidx11.874.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.875.7 = getelementptr inbounds [9 x i32]* %arrayidx11.874.7, i32 0, i64 0
  %1917 = load i32* %arrayidx12.875.7, align 4
  %arrayidx16.876.7 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %1918 = load i32* %arrayidx16.876.7, align 4
  %mul.877.7 = mul nsw i32 %1917, %1918
  %arrayidx19.879.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.880.7 = getelementptr inbounds [9 x i32]* %arrayidx19.879.7, i32 0, i64 8
  %1919 = load i32* %arrayidx20.880.7, align 4
  %add.881.7 = add nsw i32 %1919, %mul.877.7
  store i32 %add.881.7, i32* %arrayidx20.880.7, align 4
  br label %for.inc.882.7

for.inc.882.7:                                    ; preds = %for.body8.8.7
  %arrayidx11.1.8.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.1.8.7 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8.7, i32 0, i64 1
  %1920 = load i32* %arrayidx12.1.8.7, align 4
  %arrayidx15.1.8.7 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8.7, i32 0, i64 8
  %1921 = load i32* %arrayidx16.1.8.7, align 4
  %mul.1.8.7 = mul nsw i32 %1920, %1921
  %arrayidx19.1.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.1.8.7 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8.7, i32 0, i64 8
  %1922 = load i32* %arrayidx20.1.8.7, align 4
  %add.1.8.7 = add nsw i32 %1922, %mul.1.8.7
  store i32 %add.1.8.7, i32* %arrayidx20.1.8.7, align 4
  br label %for.inc.1.8.7

for.inc.1.8.7:                                    ; preds = %for.inc.882.7
  %arrayidx11.2.8.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.2.8.7 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8.7, i32 0, i64 2
  %1923 = load i32* %arrayidx12.2.8.7, align 4
  %arrayidx15.2.8.7 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8.7, i32 0, i64 8
  %1924 = load i32* %arrayidx16.2.8.7, align 4
  %mul.2.8.7 = mul nsw i32 %1923, %1924
  %arrayidx19.2.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.2.8.7 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8.7, i32 0, i64 8
  %1925 = load i32* %arrayidx20.2.8.7, align 4
  %add.2.8.7 = add nsw i32 %1925, %mul.2.8.7
  store i32 %add.2.8.7, i32* %arrayidx20.2.8.7, align 4
  br label %for.inc.2.8.7

for.inc.2.8.7:                                    ; preds = %for.inc.1.8.7
  %arrayidx11.3.8.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.3.8.7 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8.7, i32 0, i64 3
  %1926 = load i32* %arrayidx12.3.8.7, align 4
  %arrayidx15.3.8.7 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8.7, i32 0, i64 8
  %1927 = load i32* %arrayidx16.3.8.7, align 4
  %mul.3.8.7 = mul nsw i32 %1926, %1927
  %arrayidx19.3.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.3.8.7 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8.7, i32 0, i64 8
  %1928 = load i32* %arrayidx20.3.8.7, align 4
  %add.3.8.7 = add nsw i32 %1928, %mul.3.8.7
  store i32 %add.3.8.7, i32* %arrayidx20.3.8.7, align 4
  br label %for.inc.3.8.7

for.inc.3.8.7:                                    ; preds = %for.inc.2.8.7
  %arrayidx11.4.8.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.4.8.7 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8.7, i32 0, i64 4
  %1929 = load i32* %arrayidx12.4.8.7, align 4
  %arrayidx15.4.8.7 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8.7, i32 0, i64 8
  %1930 = load i32* %arrayidx16.4.8.7, align 4
  %mul.4.8.7 = mul nsw i32 %1929, %1930
  %arrayidx19.4.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.4.8.7 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8.7, i32 0, i64 8
  %1931 = load i32* %arrayidx20.4.8.7, align 4
  %add.4.8.7 = add nsw i32 %1931, %mul.4.8.7
  store i32 %add.4.8.7, i32* %arrayidx20.4.8.7, align 4
  br label %for.inc.4.8.7

for.inc.4.8.7:                                    ; preds = %for.inc.3.8.7
  %arrayidx11.5.8.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.5.8.7 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8.7, i32 0, i64 5
  %1932 = load i32* %arrayidx12.5.8.7, align 4
  %arrayidx15.5.8.7 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8.7, i32 0, i64 8
  %1933 = load i32* %arrayidx16.5.8.7, align 4
  %mul.5.8.7 = mul nsw i32 %1932, %1933
  %arrayidx19.5.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.5.8.7 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8.7, i32 0, i64 8
  %1934 = load i32* %arrayidx20.5.8.7, align 4
  %add.5.8.7 = add nsw i32 %1934, %mul.5.8.7
  store i32 %add.5.8.7, i32* %arrayidx20.5.8.7, align 4
  br label %for.inc.5.8.7

for.inc.5.8.7:                                    ; preds = %for.inc.4.8.7
  %arrayidx11.6.8.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.6.8.7 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8.7, i32 0, i64 6
  %1935 = load i32* %arrayidx12.6.8.7, align 4
  %arrayidx15.6.8.7 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8.7, i32 0, i64 8
  %1936 = load i32* %arrayidx16.6.8.7, align 4
  %mul.6.8.7 = mul nsw i32 %1935, %1936
  %arrayidx19.6.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.6.8.7 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8.7, i32 0, i64 8
  %1937 = load i32* %arrayidx20.6.8.7, align 4
  %add.6.8.7 = add nsw i32 %1937, %mul.6.8.7
  store i32 %add.6.8.7, i32* %arrayidx20.6.8.7, align 4
  br label %for.inc.6.8.7

for.inc.6.8.7:                                    ; preds = %for.inc.5.8.7
  %arrayidx11.7.8.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.7.8.7 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8.7, i32 0, i64 7
  %1938 = load i32* %arrayidx12.7.8.7, align 4
  %arrayidx15.7.8.7 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8.7, i32 0, i64 8
  %1939 = load i32* %arrayidx16.7.8.7, align 4
  %mul.7.8.7 = mul nsw i32 %1938, %1939
  %arrayidx19.7.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.7.8.7 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8.7, i32 0, i64 8
  %1940 = load i32* %arrayidx20.7.8.7, align 4
  %add.7.8.7 = add nsw i32 %1940, %mul.7.8.7
  store i32 %add.7.8.7, i32* %arrayidx20.7.8.7, align 4
  br label %for.inc.7.8.7

for.inc.7.8.7:                                    ; preds = %for.inc.6.8.7
  %arrayidx11.8.8.7 = getelementptr inbounds [9 x i32]* %a, i64 7
  %arrayidx12.8.8.7 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8.7, i32 0, i64 8
  %1941 = load i32* %arrayidx12.8.8.7, align 4
  %arrayidx15.8.8.7 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8.7 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8.7, i32 0, i64 8
  %1942 = load i32* %arrayidx16.8.8.7, align 4
  %mul.8.8.7 = mul nsw i32 %1941, %1942
  %arrayidx19.8.8.7 = getelementptr inbounds [9 x i32]* %c, i64 7
  %arrayidx20.8.8.7 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8.7, i32 0, i64 8
  %1943 = load i32* %arrayidx20.8.8.7, align 4
  %add.8.8.7 = add nsw i32 %1943, %mul.8.8.7
  store i32 %add.8.8.7, i32* %arrayidx20.8.8.7, align 4
  br label %for.inc.8.8.7

for.inc.8.8.7:                                    ; preds = %for.inc.7.8.7
  br label %for.inc21.8.7

for.inc21.8.7:                                    ; preds = %for.inc.8.8.7
  br label %for.inc24.7

for.inc24.7:                                      ; preds = %for.inc21.8.7
  br label %for.body3.8

for.body3.8:                                      ; preds = %for.inc24.7
  %arrayidx.8672 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.8673 = getelementptr inbounds [9 x i32]* %arrayidx.8672, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.8673, align 4
  br label %for.body8.8681

for.body8.8681:                                   ; preds = %for.body3.8
  %arrayidx11.8674 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8675 = getelementptr inbounds [9 x i32]* %arrayidx11.8674, i32 0, i64 0
  %1944 = load i32* %arrayidx12.8675, align 4
  %arrayidx16.8676 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 0
  %1945 = load i32* %arrayidx16.8676, align 4
  %mul.8677 = mul nsw i32 %1944, %1945
  %arrayidx19.8678 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8679 = getelementptr inbounds [9 x i32]* %arrayidx19.8678, i32 0, i64 0
  %1946 = load i32* %arrayidx20.8679, align 4
  %add.8680 = add nsw i32 %1946, %mul.8677
  store i32 %add.8680, i32* %arrayidx20.8679, align 4
  br label %for.inc.8690

for.inc.8690:                                     ; preds = %for.body8.8681
  %arrayidx11.1.8682 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.8683 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8682, i32 0, i64 1
  %1947 = load i32* %arrayidx12.1.8683, align 4
  %arrayidx15.1.8684 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8685 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8684, i32 0, i64 0
  %1948 = load i32* %arrayidx16.1.8685, align 4
  %mul.1.8686 = mul nsw i32 %1947, %1948
  %arrayidx19.1.8687 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.8688 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8687, i32 0, i64 0
  %1949 = load i32* %arrayidx20.1.8688, align 4
  %add.1.8689 = add nsw i32 %1949, %mul.1.8686
  store i32 %add.1.8689, i32* %arrayidx20.1.8688, align 4
  br label %for.inc.1.8699

for.inc.1.8699:                                   ; preds = %for.inc.8690
  %arrayidx11.2.8691 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.8692 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8691, i32 0, i64 2
  %1950 = load i32* %arrayidx12.2.8692, align 4
  %arrayidx15.2.8693 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8694 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8693, i32 0, i64 0
  %1951 = load i32* %arrayidx16.2.8694, align 4
  %mul.2.8695 = mul nsw i32 %1950, %1951
  %arrayidx19.2.8696 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.8697 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8696, i32 0, i64 0
  %1952 = load i32* %arrayidx20.2.8697, align 4
  %add.2.8698 = add nsw i32 %1952, %mul.2.8695
  store i32 %add.2.8698, i32* %arrayidx20.2.8697, align 4
  br label %for.inc.2.8708

for.inc.2.8708:                                   ; preds = %for.inc.1.8699
  %arrayidx11.3.8700 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.8701 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8700, i32 0, i64 3
  %1953 = load i32* %arrayidx12.3.8701, align 4
  %arrayidx15.3.8702 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8703 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8702, i32 0, i64 0
  %1954 = load i32* %arrayidx16.3.8703, align 4
  %mul.3.8704 = mul nsw i32 %1953, %1954
  %arrayidx19.3.8705 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.8706 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8705, i32 0, i64 0
  %1955 = load i32* %arrayidx20.3.8706, align 4
  %add.3.8707 = add nsw i32 %1955, %mul.3.8704
  store i32 %add.3.8707, i32* %arrayidx20.3.8706, align 4
  br label %for.inc.3.8717

for.inc.3.8717:                                   ; preds = %for.inc.2.8708
  %arrayidx11.4.8709 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.8710 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8709, i32 0, i64 4
  %1956 = load i32* %arrayidx12.4.8710, align 4
  %arrayidx15.4.8711 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8712 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8711, i32 0, i64 0
  %1957 = load i32* %arrayidx16.4.8712, align 4
  %mul.4.8713 = mul nsw i32 %1956, %1957
  %arrayidx19.4.8714 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.8715 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8714, i32 0, i64 0
  %1958 = load i32* %arrayidx20.4.8715, align 4
  %add.4.8716 = add nsw i32 %1958, %mul.4.8713
  store i32 %add.4.8716, i32* %arrayidx20.4.8715, align 4
  br label %for.inc.4.8726

for.inc.4.8726:                                   ; preds = %for.inc.3.8717
  %arrayidx11.5.8718 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.8719 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8718, i32 0, i64 5
  %1959 = load i32* %arrayidx12.5.8719, align 4
  %arrayidx15.5.8720 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8721 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8720, i32 0, i64 0
  %1960 = load i32* %arrayidx16.5.8721, align 4
  %mul.5.8722 = mul nsw i32 %1959, %1960
  %arrayidx19.5.8723 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.8724 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8723, i32 0, i64 0
  %1961 = load i32* %arrayidx20.5.8724, align 4
  %add.5.8725 = add nsw i32 %1961, %mul.5.8722
  store i32 %add.5.8725, i32* %arrayidx20.5.8724, align 4
  br label %for.inc.5.8735

for.inc.5.8735:                                   ; preds = %for.inc.4.8726
  %arrayidx11.6.8727 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.8728 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8727, i32 0, i64 6
  %1962 = load i32* %arrayidx12.6.8728, align 4
  %arrayidx15.6.8729 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8730 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8729, i32 0, i64 0
  %1963 = load i32* %arrayidx16.6.8730, align 4
  %mul.6.8731 = mul nsw i32 %1962, %1963
  %arrayidx19.6.8732 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.8733 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8732, i32 0, i64 0
  %1964 = load i32* %arrayidx20.6.8733, align 4
  %add.6.8734 = add nsw i32 %1964, %mul.6.8731
  store i32 %add.6.8734, i32* %arrayidx20.6.8733, align 4
  br label %for.inc.6.8744

for.inc.6.8744:                                   ; preds = %for.inc.5.8735
  %arrayidx11.7.8736 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.8737 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8736, i32 0, i64 7
  %1965 = load i32* %arrayidx12.7.8737, align 4
  %arrayidx15.7.8738 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8739 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8738, i32 0, i64 0
  %1966 = load i32* %arrayidx16.7.8739, align 4
  %mul.7.8740 = mul nsw i32 %1965, %1966
  %arrayidx19.7.8741 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.8742 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8741, i32 0, i64 0
  %1967 = load i32* %arrayidx20.7.8742, align 4
  %add.7.8743 = add nsw i32 %1967, %mul.7.8740
  store i32 %add.7.8743, i32* %arrayidx20.7.8742, align 4
  br label %for.inc.7.8753

for.inc.7.8753:                                   ; preds = %for.inc.6.8744
  %arrayidx11.8.8745 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.8746 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8745, i32 0, i64 8
  %1968 = load i32* %arrayidx12.8.8746, align 4
  %arrayidx15.8.8747 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8748 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8747, i32 0, i64 0
  %1969 = load i32* %arrayidx16.8.8748, align 4
  %mul.8.8749 = mul nsw i32 %1968, %1969
  %arrayidx19.8.8750 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.8751 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8750, i32 0, i64 0
  %1970 = load i32* %arrayidx20.8.8751, align 4
  %add.8.8752 = add nsw i32 %1970, %mul.8.8749
  store i32 %add.8.8752, i32* %arrayidx20.8.8751, align 4
  br label %for.inc.8.8754

for.inc.8.8754:                                   ; preds = %for.inc.7.8753
  br label %for.inc21.8755

for.inc21.8755:                                   ; preds = %for.inc.8.8754
  %arrayidx.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.1.8 = getelementptr inbounds [9 x i32]* %arrayidx.1.8, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.8, align 4
  br label %for.body8.1.8

for.body8.1.8:                                    ; preds = %for.inc21.8755
  %arrayidx11.14.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.15.8 = getelementptr inbounds [9 x i32]* %arrayidx11.14.8, i32 0, i64 0
  %1971 = load i32* %arrayidx12.15.8, align 4
  %arrayidx16.16.8 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 1
  %1972 = load i32* %arrayidx16.16.8, align 4
  %mul.17.8 = mul nsw i32 %1971, %1972
  %arrayidx19.19.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.110.8 = getelementptr inbounds [9 x i32]* %arrayidx19.19.8, i32 0, i64 1
  %1973 = load i32* %arrayidx20.110.8, align 4
  %add.111.8 = add nsw i32 %1973, %mul.17.8
  store i32 %add.111.8, i32* %arrayidx20.110.8, align 4
  br label %for.inc.112.8

for.inc.112.8:                                    ; preds = %for.body8.1.8
  %arrayidx11.1.1.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.1.8 = getelementptr inbounds [9 x i32]* %arrayidx11.1.1.8, i32 0, i64 1
  %1974 = load i32* %arrayidx12.1.1.8, align 4
  %arrayidx15.1.1.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.1.8, i32 0, i64 1
  %1975 = load i32* %arrayidx16.1.1.8, align 4
  %mul.1.1.8 = mul nsw i32 %1974, %1975
  %arrayidx19.1.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.1.8 = getelementptr inbounds [9 x i32]* %arrayidx19.1.1.8, i32 0, i64 1
  %1976 = load i32* %arrayidx20.1.1.8, align 4
  %add.1.1.8 = add nsw i32 %1976, %mul.1.1.8
  store i32 %add.1.1.8, i32* %arrayidx20.1.1.8, align 4
  br label %for.inc.1.1.8

for.inc.1.1.8:                                    ; preds = %for.inc.112.8
  %arrayidx11.2.1.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.1.8 = getelementptr inbounds [9 x i32]* %arrayidx11.2.1.8, i32 0, i64 2
  %1977 = load i32* %arrayidx12.2.1.8, align 4
  %arrayidx15.2.1.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.1.8, i32 0, i64 1
  %1978 = load i32* %arrayidx16.2.1.8, align 4
  %mul.2.1.8 = mul nsw i32 %1977, %1978
  %arrayidx19.2.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.1.8 = getelementptr inbounds [9 x i32]* %arrayidx19.2.1.8, i32 0, i64 1
  %1979 = load i32* %arrayidx20.2.1.8, align 4
  %add.2.1.8 = add nsw i32 %1979, %mul.2.1.8
  store i32 %add.2.1.8, i32* %arrayidx20.2.1.8, align 4
  br label %for.inc.2.1.8

for.inc.2.1.8:                                    ; preds = %for.inc.1.1.8
  %arrayidx11.3.1.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.1.8 = getelementptr inbounds [9 x i32]* %arrayidx11.3.1.8, i32 0, i64 3
  %1980 = load i32* %arrayidx12.3.1.8, align 4
  %arrayidx15.3.1.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.1.8, i32 0, i64 1
  %1981 = load i32* %arrayidx16.3.1.8, align 4
  %mul.3.1.8 = mul nsw i32 %1980, %1981
  %arrayidx19.3.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.1.8 = getelementptr inbounds [9 x i32]* %arrayidx19.3.1.8, i32 0, i64 1
  %1982 = load i32* %arrayidx20.3.1.8, align 4
  %add.3.1.8 = add nsw i32 %1982, %mul.3.1.8
  store i32 %add.3.1.8, i32* %arrayidx20.3.1.8, align 4
  br label %for.inc.3.1.8

for.inc.3.1.8:                                    ; preds = %for.inc.2.1.8
  %arrayidx11.4.1.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.1.8 = getelementptr inbounds [9 x i32]* %arrayidx11.4.1.8, i32 0, i64 4
  %1983 = load i32* %arrayidx12.4.1.8, align 4
  %arrayidx15.4.1.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.1.8, i32 0, i64 1
  %1984 = load i32* %arrayidx16.4.1.8, align 4
  %mul.4.1.8 = mul nsw i32 %1983, %1984
  %arrayidx19.4.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.1.8 = getelementptr inbounds [9 x i32]* %arrayidx19.4.1.8, i32 0, i64 1
  %1985 = load i32* %arrayidx20.4.1.8, align 4
  %add.4.1.8 = add nsw i32 %1985, %mul.4.1.8
  store i32 %add.4.1.8, i32* %arrayidx20.4.1.8, align 4
  br label %for.inc.4.1.8

for.inc.4.1.8:                                    ; preds = %for.inc.3.1.8
  %arrayidx11.5.1.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.1.8 = getelementptr inbounds [9 x i32]* %arrayidx11.5.1.8, i32 0, i64 5
  %1986 = load i32* %arrayidx12.5.1.8, align 4
  %arrayidx15.5.1.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.1.8, i32 0, i64 1
  %1987 = load i32* %arrayidx16.5.1.8, align 4
  %mul.5.1.8 = mul nsw i32 %1986, %1987
  %arrayidx19.5.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.1.8 = getelementptr inbounds [9 x i32]* %arrayidx19.5.1.8, i32 0, i64 1
  %1988 = load i32* %arrayidx20.5.1.8, align 4
  %add.5.1.8 = add nsw i32 %1988, %mul.5.1.8
  store i32 %add.5.1.8, i32* %arrayidx20.5.1.8, align 4
  br label %for.inc.5.1.8

for.inc.5.1.8:                                    ; preds = %for.inc.4.1.8
  %arrayidx11.6.1.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.1.8 = getelementptr inbounds [9 x i32]* %arrayidx11.6.1.8, i32 0, i64 6
  %1989 = load i32* %arrayidx12.6.1.8, align 4
  %arrayidx15.6.1.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.1.8, i32 0, i64 1
  %1990 = load i32* %arrayidx16.6.1.8, align 4
  %mul.6.1.8 = mul nsw i32 %1989, %1990
  %arrayidx19.6.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.1.8 = getelementptr inbounds [9 x i32]* %arrayidx19.6.1.8, i32 0, i64 1
  %1991 = load i32* %arrayidx20.6.1.8, align 4
  %add.6.1.8 = add nsw i32 %1991, %mul.6.1.8
  store i32 %add.6.1.8, i32* %arrayidx20.6.1.8, align 4
  br label %for.inc.6.1.8

for.inc.6.1.8:                                    ; preds = %for.inc.5.1.8
  %arrayidx11.7.1.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.1.8 = getelementptr inbounds [9 x i32]* %arrayidx11.7.1.8, i32 0, i64 7
  %1992 = load i32* %arrayidx12.7.1.8, align 4
  %arrayidx15.7.1.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.1.8, i32 0, i64 1
  %1993 = load i32* %arrayidx16.7.1.8, align 4
  %mul.7.1.8 = mul nsw i32 %1992, %1993
  %arrayidx19.7.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.1.8 = getelementptr inbounds [9 x i32]* %arrayidx19.7.1.8, i32 0, i64 1
  %1994 = load i32* %arrayidx20.7.1.8, align 4
  %add.7.1.8 = add nsw i32 %1994, %mul.7.1.8
  store i32 %add.7.1.8, i32* %arrayidx20.7.1.8, align 4
  br label %for.inc.7.1.8

for.inc.7.1.8:                                    ; preds = %for.inc.6.1.8
  %arrayidx11.8.1.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.1.8 = getelementptr inbounds [9 x i32]* %arrayidx11.8.1.8, i32 0, i64 8
  %1995 = load i32* %arrayidx12.8.1.8, align 4
  %arrayidx15.8.1.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.1.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.1.8, i32 0, i64 1
  %1996 = load i32* %arrayidx16.8.1.8, align 4
  %mul.8.1.8 = mul nsw i32 %1995, %1996
  %arrayidx19.8.1.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.1.8 = getelementptr inbounds [9 x i32]* %arrayidx19.8.1.8, i32 0, i64 1
  %1997 = load i32* %arrayidx20.8.1.8, align 4
  %add.8.1.8 = add nsw i32 %1997, %mul.8.1.8
  store i32 %add.8.1.8, i32* %arrayidx20.8.1.8, align 4
  br label %for.inc.8.1.8

for.inc.8.1.8:                                    ; preds = %for.inc.7.1.8
  br label %for.inc21.1.8

for.inc21.1.8:                                    ; preds = %for.inc.8.1.8
  %arrayidx.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.2.8 = getelementptr inbounds [9 x i32]* %arrayidx.2.8, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.8, align 4
  br label %for.body8.2.8

for.body8.2.8:                                    ; preds = %for.inc21.1.8
  %arrayidx11.214.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.215.8 = getelementptr inbounds [9 x i32]* %arrayidx11.214.8, i32 0, i64 0
  %1998 = load i32* %arrayidx12.215.8, align 4
  %arrayidx16.216.8 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 2
  %1999 = load i32* %arrayidx16.216.8, align 4
  %mul.217.8 = mul nsw i32 %1998, %1999
  %arrayidx19.219.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.220.8 = getelementptr inbounds [9 x i32]* %arrayidx19.219.8, i32 0, i64 2
  %2000 = load i32* %arrayidx20.220.8, align 4
  %add.221.8 = add nsw i32 %2000, %mul.217.8
  store i32 %add.221.8, i32* %arrayidx20.220.8, align 4
  br label %for.inc.222.8

for.inc.222.8:                                    ; preds = %for.body8.2.8
  %arrayidx11.1.2.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.2.8 = getelementptr inbounds [9 x i32]* %arrayidx11.1.2.8, i32 0, i64 1
  %2001 = load i32* %arrayidx12.1.2.8, align 4
  %arrayidx15.1.2.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.2.8, i32 0, i64 2
  %2002 = load i32* %arrayidx16.1.2.8, align 4
  %mul.1.2.8 = mul nsw i32 %2001, %2002
  %arrayidx19.1.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.2.8 = getelementptr inbounds [9 x i32]* %arrayidx19.1.2.8, i32 0, i64 2
  %2003 = load i32* %arrayidx20.1.2.8, align 4
  %add.1.2.8 = add nsw i32 %2003, %mul.1.2.8
  store i32 %add.1.2.8, i32* %arrayidx20.1.2.8, align 4
  br label %for.inc.1.2.8

for.inc.1.2.8:                                    ; preds = %for.inc.222.8
  %arrayidx11.2.2.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.2.8 = getelementptr inbounds [9 x i32]* %arrayidx11.2.2.8, i32 0, i64 2
  %2004 = load i32* %arrayidx12.2.2.8, align 4
  %arrayidx15.2.2.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.2.8, i32 0, i64 2
  %2005 = load i32* %arrayidx16.2.2.8, align 4
  %mul.2.2.8 = mul nsw i32 %2004, %2005
  %arrayidx19.2.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.2.8 = getelementptr inbounds [9 x i32]* %arrayidx19.2.2.8, i32 0, i64 2
  %2006 = load i32* %arrayidx20.2.2.8, align 4
  %add.2.2.8 = add nsw i32 %2006, %mul.2.2.8
  store i32 %add.2.2.8, i32* %arrayidx20.2.2.8, align 4
  br label %for.inc.2.2.8

for.inc.2.2.8:                                    ; preds = %for.inc.1.2.8
  %arrayidx11.3.2.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.2.8 = getelementptr inbounds [9 x i32]* %arrayidx11.3.2.8, i32 0, i64 3
  %2007 = load i32* %arrayidx12.3.2.8, align 4
  %arrayidx15.3.2.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.2.8, i32 0, i64 2
  %2008 = load i32* %arrayidx16.3.2.8, align 4
  %mul.3.2.8 = mul nsw i32 %2007, %2008
  %arrayidx19.3.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.2.8 = getelementptr inbounds [9 x i32]* %arrayidx19.3.2.8, i32 0, i64 2
  %2009 = load i32* %arrayidx20.3.2.8, align 4
  %add.3.2.8 = add nsw i32 %2009, %mul.3.2.8
  store i32 %add.3.2.8, i32* %arrayidx20.3.2.8, align 4
  br label %for.inc.3.2.8

for.inc.3.2.8:                                    ; preds = %for.inc.2.2.8
  %arrayidx11.4.2.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.2.8 = getelementptr inbounds [9 x i32]* %arrayidx11.4.2.8, i32 0, i64 4
  %2010 = load i32* %arrayidx12.4.2.8, align 4
  %arrayidx15.4.2.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.2.8, i32 0, i64 2
  %2011 = load i32* %arrayidx16.4.2.8, align 4
  %mul.4.2.8 = mul nsw i32 %2010, %2011
  %arrayidx19.4.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.2.8 = getelementptr inbounds [9 x i32]* %arrayidx19.4.2.8, i32 0, i64 2
  %2012 = load i32* %arrayidx20.4.2.8, align 4
  %add.4.2.8 = add nsw i32 %2012, %mul.4.2.8
  store i32 %add.4.2.8, i32* %arrayidx20.4.2.8, align 4
  br label %for.inc.4.2.8

for.inc.4.2.8:                                    ; preds = %for.inc.3.2.8
  %arrayidx11.5.2.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.2.8 = getelementptr inbounds [9 x i32]* %arrayidx11.5.2.8, i32 0, i64 5
  %2013 = load i32* %arrayidx12.5.2.8, align 4
  %arrayidx15.5.2.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.2.8, i32 0, i64 2
  %2014 = load i32* %arrayidx16.5.2.8, align 4
  %mul.5.2.8 = mul nsw i32 %2013, %2014
  %arrayidx19.5.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.2.8 = getelementptr inbounds [9 x i32]* %arrayidx19.5.2.8, i32 0, i64 2
  %2015 = load i32* %arrayidx20.5.2.8, align 4
  %add.5.2.8 = add nsw i32 %2015, %mul.5.2.8
  store i32 %add.5.2.8, i32* %arrayidx20.5.2.8, align 4
  br label %for.inc.5.2.8

for.inc.5.2.8:                                    ; preds = %for.inc.4.2.8
  %arrayidx11.6.2.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.2.8 = getelementptr inbounds [9 x i32]* %arrayidx11.6.2.8, i32 0, i64 6
  %2016 = load i32* %arrayidx12.6.2.8, align 4
  %arrayidx15.6.2.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.2.8, i32 0, i64 2
  %2017 = load i32* %arrayidx16.6.2.8, align 4
  %mul.6.2.8 = mul nsw i32 %2016, %2017
  %arrayidx19.6.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.2.8 = getelementptr inbounds [9 x i32]* %arrayidx19.6.2.8, i32 0, i64 2
  %2018 = load i32* %arrayidx20.6.2.8, align 4
  %add.6.2.8 = add nsw i32 %2018, %mul.6.2.8
  store i32 %add.6.2.8, i32* %arrayidx20.6.2.8, align 4
  br label %for.inc.6.2.8

for.inc.6.2.8:                                    ; preds = %for.inc.5.2.8
  %arrayidx11.7.2.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.2.8 = getelementptr inbounds [9 x i32]* %arrayidx11.7.2.8, i32 0, i64 7
  %2019 = load i32* %arrayidx12.7.2.8, align 4
  %arrayidx15.7.2.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.2.8, i32 0, i64 2
  %2020 = load i32* %arrayidx16.7.2.8, align 4
  %mul.7.2.8 = mul nsw i32 %2019, %2020
  %arrayidx19.7.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.2.8 = getelementptr inbounds [9 x i32]* %arrayidx19.7.2.8, i32 0, i64 2
  %2021 = load i32* %arrayidx20.7.2.8, align 4
  %add.7.2.8 = add nsw i32 %2021, %mul.7.2.8
  store i32 %add.7.2.8, i32* %arrayidx20.7.2.8, align 4
  br label %for.inc.7.2.8

for.inc.7.2.8:                                    ; preds = %for.inc.6.2.8
  %arrayidx11.8.2.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.2.8 = getelementptr inbounds [9 x i32]* %arrayidx11.8.2.8, i32 0, i64 8
  %2022 = load i32* %arrayidx12.8.2.8, align 4
  %arrayidx15.8.2.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.2.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.2.8, i32 0, i64 2
  %2023 = load i32* %arrayidx16.8.2.8, align 4
  %mul.8.2.8 = mul nsw i32 %2022, %2023
  %arrayidx19.8.2.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.2.8 = getelementptr inbounds [9 x i32]* %arrayidx19.8.2.8, i32 0, i64 2
  %2024 = load i32* %arrayidx20.8.2.8, align 4
  %add.8.2.8 = add nsw i32 %2024, %mul.8.2.8
  store i32 %add.8.2.8, i32* %arrayidx20.8.2.8, align 4
  br label %for.inc.8.2.8

for.inc.8.2.8:                                    ; preds = %for.inc.7.2.8
  br label %for.inc21.2.8

for.inc21.2.8:                                    ; preds = %for.inc.8.2.8
  %arrayidx.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.3.8 = getelementptr inbounds [9 x i32]* %arrayidx.3.8, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.8, align 4
  br label %for.body8.3.8

for.body8.3.8:                                    ; preds = %for.inc21.2.8
  %arrayidx11.324.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.325.8 = getelementptr inbounds [9 x i32]* %arrayidx11.324.8, i32 0, i64 0
  %2025 = load i32* %arrayidx12.325.8, align 4
  %arrayidx16.326.8 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 3
  %2026 = load i32* %arrayidx16.326.8, align 4
  %mul.327.8 = mul nsw i32 %2025, %2026
  %arrayidx19.329.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.330.8 = getelementptr inbounds [9 x i32]* %arrayidx19.329.8, i32 0, i64 3
  %2027 = load i32* %arrayidx20.330.8, align 4
  %add.331.8 = add nsw i32 %2027, %mul.327.8
  store i32 %add.331.8, i32* %arrayidx20.330.8, align 4
  br label %for.inc.332.8

for.inc.332.8:                                    ; preds = %for.body8.3.8
  %arrayidx11.1.3.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.3.8 = getelementptr inbounds [9 x i32]* %arrayidx11.1.3.8, i32 0, i64 1
  %2028 = load i32* %arrayidx12.1.3.8, align 4
  %arrayidx15.1.3.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.3.8, i32 0, i64 3
  %2029 = load i32* %arrayidx16.1.3.8, align 4
  %mul.1.3.8 = mul nsw i32 %2028, %2029
  %arrayidx19.1.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.3.8 = getelementptr inbounds [9 x i32]* %arrayidx19.1.3.8, i32 0, i64 3
  %2030 = load i32* %arrayidx20.1.3.8, align 4
  %add.1.3.8 = add nsw i32 %2030, %mul.1.3.8
  store i32 %add.1.3.8, i32* %arrayidx20.1.3.8, align 4
  br label %for.inc.1.3.8

for.inc.1.3.8:                                    ; preds = %for.inc.332.8
  %arrayidx11.2.3.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.3.8 = getelementptr inbounds [9 x i32]* %arrayidx11.2.3.8, i32 0, i64 2
  %2031 = load i32* %arrayidx12.2.3.8, align 4
  %arrayidx15.2.3.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.3.8, i32 0, i64 3
  %2032 = load i32* %arrayidx16.2.3.8, align 4
  %mul.2.3.8 = mul nsw i32 %2031, %2032
  %arrayidx19.2.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.3.8 = getelementptr inbounds [9 x i32]* %arrayidx19.2.3.8, i32 0, i64 3
  %2033 = load i32* %arrayidx20.2.3.8, align 4
  %add.2.3.8 = add nsw i32 %2033, %mul.2.3.8
  store i32 %add.2.3.8, i32* %arrayidx20.2.3.8, align 4
  br label %for.inc.2.3.8

for.inc.2.3.8:                                    ; preds = %for.inc.1.3.8
  %arrayidx11.3.3.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.3.8 = getelementptr inbounds [9 x i32]* %arrayidx11.3.3.8, i32 0, i64 3
  %2034 = load i32* %arrayidx12.3.3.8, align 4
  %arrayidx15.3.3.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.3.8, i32 0, i64 3
  %2035 = load i32* %arrayidx16.3.3.8, align 4
  %mul.3.3.8 = mul nsw i32 %2034, %2035
  %arrayidx19.3.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.3.8 = getelementptr inbounds [9 x i32]* %arrayidx19.3.3.8, i32 0, i64 3
  %2036 = load i32* %arrayidx20.3.3.8, align 4
  %add.3.3.8 = add nsw i32 %2036, %mul.3.3.8
  store i32 %add.3.3.8, i32* %arrayidx20.3.3.8, align 4
  br label %for.inc.3.3.8

for.inc.3.3.8:                                    ; preds = %for.inc.2.3.8
  %arrayidx11.4.3.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.3.8 = getelementptr inbounds [9 x i32]* %arrayidx11.4.3.8, i32 0, i64 4
  %2037 = load i32* %arrayidx12.4.3.8, align 4
  %arrayidx15.4.3.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.3.8, i32 0, i64 3
  %2038 = load i32* %arrayidx16.4.3.8, align 4
  %mul.4.3.8 = mul nsw i32 %2037, %2038
  %arrayidx19.4.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.3.8 = getelementptr inbounds [9 x i32]* %arrayidx19.4.3.8, i32 0, i64 3
  %2039 = load i32* %arrayidx20.4.3.8, align 4
  %add.4.3.8 = add nsw i32 %2039, %mul.4.3.8
  store i32 %add.4.3.8, i32* %arrayidx20.4.3.8, align 4
  br label %for.inc.4.3.8

for.inc.4.3.8:                                    ; preds = %for.inc.3.3.8
  %arrayidx11.5.3.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.3.8 = getelementptr inbounds [9 x i32]* %arrayidx11.5.3.8, i32 0, i64 5
  %2040 = load i32* %arrayidx12.5.3.8, align 4
  %arrayidx15.5.3.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.3.8, i32 0, i64 3
  %2041 = load i32* %arrayidx16.5.3.8, align 4
  %mul.5.3.8 = mul nsw i32 %2040, %2041
  %arrayidx19.5.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.3.8 = getelementptr inbounds [9 x i32]* %arrayidx19.5.3.8, i32 0, i64 3
  %2042 = load i32* %arrayidx20.5.3.8, align 4
  %add.5.3.8 = add nsw i32 %2042, %mul.5.3.8
  store i32 %add.5.3.8, i32* %arrayidx20.5.3.8, align 4
  br label %for.inc.5.3.8

for.inc.5.3.8:                                    ; preds = %for.inc.4.3.8
  %arrayidx11.6.3.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.3.8 = getelementptr inbounds [9 x i32]* %arrayidx11.6.3.8, i32 0, i64 6
  %2043 = load i32* %arrayidx12.6.3.8, align 4
  %arrayidx15.6.3.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.3.8, i32 0, i64 3
  %2044 = load i32* %arrayidx16.6.3.8, align 4
  %mul.6.3.8 = mul nsw i32 %2043, %2044
  %arrayidx19.6.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.3.8 = getelementptr inbounds [9 x i32]* %arrayidx19.6.3.8, i32 0, i64 3
  %2045 = load i32* %arrayidx20.6.3.8, align 4
  %add.6.3.8 = add nsw i32 %2045, %mul.6.3.8
  store i32 %add.6.3.8, i32* %arrayidx20.6.3.8, align 4
  br label %for.inc.6.3.8

for.inc.6.3.8:                                    ; preds = %for.inc.5.3.8
  %arrayidx11.7.3.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.3.8 = getelementptr inbounds [9 x i32]* %arrayidx11.7.3.8, i32 0, i64 7
  %2046 = load i32* %arrayidx12.7.3.8, align 4
  %arrayidx15.7.3.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.3.8, i32 0, i64 3
  %2047 = load i32* %arrayidx16.7.3.8, align 4
  %mul.7.3.8 = mul nsw i32 %2046, %2047
  %arrayidx19.7.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.3.8 = getelementptr inbounds [9 x i32]* %arrayidx19.7.3.8, i32 0, i64 3
  %2048 = load i32* %arrayidx20.7.3.8, align 4
  %add.7.3.8 = add nsw i32 %2048, %mul.7.3.8
  store i32 %add.7.3.8, i32* %arrayidx20.7.3.8, align 4
  br label %for.inc.7.3.8

for.inc.7.3.8:                                    ; preds = %for.inc.6.3.8
  %arrayidx11.8.3.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.3.8 = getelementptr inbounds [9 x i32]* %arrayidx11.8.3.8, i32 0, i64 8
  %2049 = load i32* %arrayidx12.8.3.8, align 4
  %arrayidx15.8.3.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.3.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.3.8, i32 0, i64 3
  %2050 = load i32* %arrayidx16.8.3.8, align 4
  %mul.8.3.8 = mul nsw i32 %2049, %2050
  %arrayidx19.8.3.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.3.8 = getelementptr inbounds [9 x i32]* %arrayidx19.8.3.8, i32 0, i64 3
  %2051 = load i32* %arrayidx20.8.3.8, align 4
  %add.8.3.8 = add nsw i32 %2051, %mul.8.3.8
  store i32 %add.8.3.8, i32* %arrayidx20.8.3.8, align 4
  br label %for.inc.8.3.8

for.inc.8.3.8:                                    ; preds = %for.inc.7.3.8
  br label %for.inc21.3.8

for.inc21.3.8:                                    ; preds = %for.inc.8.3.8
  %arrayidx.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.4.8 = getelementptr inbounds [9 x i32]* %arrayidx.4.8, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.8, align 4
  br label %for.body8.4.8

for.body8.4.8:                                    ; preds = %for.inc21.3.8
  %arrayidx11.434.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.435.8 = getelementptr inbounds [9 x i32]* %arrayidx11.434.8, i32 0, i64 0
  %2052 = load i32* %arrayidx12.435.8, align 4
  %arrayidx16.436.8 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 4
  %2053 = load i32* %arrayidx16.436.8, align 4
  %mul.437.8 = mul nsw i32 %2052, %2053
  %arrayidx19.439.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.440.8 = getelementptr inbounds [9 x i32]* %arrayidx19.439.8, i32 0, i64 4
  %2054 = load i32* %arrayidx20.440.8, align 4
  %add.441.8 = add nsw i32 %2054, %mul.437.8
  store i32 %add.441.8, i32* %arrayidx20.440.8, align 4
  br label %for.inc.442.8

for.inc.442.8:                                    ; preds = %for.body8.4.8
  %arrayidx11.1.4.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.4.8 = getelementptr inbounds [9 x i32]* %arrayidx11.1.4.8, i32 0, i64 1
  %2055 = load i32* %arrayidx12.1.4.8, align 4
  %arrayidx15.1.4.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.4.8, i32 0, i64 4
  %2056 = load i32* %arrayidx16.1.4.8, align 4
  %mul.1.4.8 = mul nsw i32 %2055, %2056
  %arrayidx19.1.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.4.8 = getelementptr inbounds [9 x i32]* %arrayidx19.1.4.8, i32 0, i64 4
  %2057 = load i32* %arrayidx20.1.4.8, align 4
  %add.1.4.8 = add nsw i32 %2057, %mul.1.4.8
  store i32 %add.1.4.8, i32* %arrayidx20.1.4.8, align 4
  br label %for.inc.1.4.8

for.inc.1.4.8:                                    ; preds = %for.inc.442.8
  %arrayidx11.2.4.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.4.8 = getelementptr inbounds [9 x i32]* %arrayidx11.2.4.8, i32 0, i64 2
  %2058 = load i32* %arrayidx12.2.4.8, align 4
  %arrayidx15.2.4.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.4.8, i32 0, i64 4
  %2059 = load i32* %arrayidx16.2.4.8, align 4
  %mul.2.4.8 = mul nsw i32 %2058, %2059
  %arrayidx19.2.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.4.8 = getelementptr inbounds [9 x i32]* %arrayidx19.2.4.8, i32 0, i64 4
  %2060 = load i32* %arrayidx20.2.4.8, align 4
  %add.2.4.8 = add nsw i32 %2060, %mul.2.4.8
  store i32 %add.2.4.8, i32* %arrayidx20.2.4.8, align 4
  br label %for.inc.2.4.8

for.inc.2.4.8:                                    ; preds = %for.inc.1.4.8
  %arrayidx11.3.4.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.4.8 = getelementptr inbounds [9 x i32]* %arrayidx11.3.4.8, i32 0, i64 3
  %2061 = load i32* %arrayidx12.3.4.8, align 4
  %arrayidx15.3.4.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.4.8, i32 0, i64 4
  %2062 = load i32* %arrayidx16.3.4.8, align 4
  %mul.3.4.8 = mul nsw i32 %2061, %2062
  %arrayidx19.3.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.4.8 = getelementptr inbounds [9 x i32]* %arrayidx19.3.4.8, i32 0, i64 4
  %2063 = load i32* %arrayidx20.3.4.8, align 4
  %add.3.4.8 = add nsw i32 %2063, %mul.3.4.8
  store i32 %add.3.4.8, i32* %arrayidx20.3.4.8, align 4
  br label %for.inc.3.4.8

for.inc.3.4.8:                                    ; preds = %for.inc.2.4.8
  %arrayidx11.4.4.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.4.8 = getelementptr inbounds [9 x i32]* %arrayidx11.4.4.8, i32 0, i64 4
  %2064 = load i32* %arrayidx12.4.4.8, align 4
  %arrayidx15.4.4.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.4.8, i32 0, i64 4
  %2065 = load i32* %arrayidx16.4.4.8, align 4
  %mul.4.4.8 = mul nsw i32 %2064, %2065
  %arrayidx19.4.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.4.8 = getelementptr inbounds [9 x i32]* %arrayidx19.4.4.8, i32 0, i64 4
  %2066 = load i32* %arrayidx20.4.4.8, align 4
  %add.4.4.8 = add nsw i32 %2066, %mul.4.4.8
  store i32 %add.4.4.8, i32* %arrayidx20.4.4.8, align 4
  br label %for.inc.4.4.8

for.inc.4.4.8:                                    ; preds = %for.inc.3.4.8
  %arrayidx11.5.4.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.4.8 = getelementptr inbounds [9 x i32]* %arrayidx11.5.4.8, i32 0, i64 5
  %2067 = load i32* %arrayidx12.5.4.8, align 4
  %arrayidx15.5.4.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.4.8, i32 0, i64 4
  %2068 = load i32* %arrayidx16.5.4.8, align 4
  %mul.5.4.8 = mul nsw i32 %2067, %2068
  %arrayidx19.5.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.4.8 = getelementptr inbounds [9 x i32]* %arrayidx19.5.4.8, i32 0, i64 4
  %2069 = load i32* %arrayidx20.5.4.8, align 4
  %add.5.4.8 = add nsw i32 %2069, %mul.5.4.8
  store i32 %add.5.4.8, i32* %arrayidx20.5.4.8, align 4
  br label %for.inc.5.4.8

for.inc.5.4.8:                                    ; preds = %for.inc.4.4.8
  %arrayidx11.6.4.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.4.8 = getelementptr inbounds [9 x i32]* %arrayidx11.6.4.8, i32 0, i64 6
  %2070 = load i32* %arrayidx12.6.4.8, align 4
  %arrayidx15.6.4.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.4.8, i32 0, i64 4
  %2071 = load i32* %arrayidx16.6.4.8, align 4
  %mul.6.4.8 = mul nsw i32 %2070, %2071
  %arrayidx19.6.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.4.8 = getelementptr inbounds [9 x i32]* %arrayidx19.6.4.8, i32 0, i64 4
  %2072 = load i32* %arrayidx20.6.4.8, align 4
  %add.6.4.8 = add nsw i32 %2072, %mul.6.4.8
  store i32 %add.6.4.8, i32* %arrayidx20.6.4.8, align 4
  br label %for.inc.6.4.8

for.inc.6.4.8:                                    ; preds = %for.inc.5.4.8
  %arrayidx11.7.4.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.4.8 = getelementptr inbounds [9 x i32]* %arrayidx11.7.4.8, i32 0, i64 7
  %2073 = load i32* %arrayidx12.7.4.8, align 4
  %arrayidx15.7.4.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.4.8, i32 0, i64 4
  %2074 = load i32* %arrayidx16.7.4.8, align 4
  %mul.7.4.8 = mul nsw i32 %2073, %2074
  %arrayidx19.7.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.4.8 = getelementptr inbounds [9 x i32]* %arrayidx19.7.4.8, i32 0, i64 4
  %2075 = load i32* %arrayidx20.7.4.8, align 4
  %add.7.4.8 = add nsw i32 %2075, %mul.7.4.8
  store i32 %add.7.4.8, i32* %arrayidx20.7.4.8, align 4
  br label %for.inc.7.4.8

for.inc.7.4.8:                                    ; preds = %for.inc.6.4.8
  %arrayidx11.8.4.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.4.8 = getelementptr inbounds [9 x i32]* %arrayidx11.8.4.8, i32 0, i64 8
  %2076 = load i32* %arrayidx12.8.4.8, align 4
  %arrayidx15.8.4.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.4.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.4.8, i32 0, i64 4
  %2077 = load i32* %arrayidx16.8.4.8, align 4
  %mul.8.4.8 = mul nsw i32 %2076, %2077
  %arrayidx19.8.4.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.4.8 = getelementptr inbounds [9 x i32]* %arrayidx19.8.4.8, i32 0, i64 4
  %2078 = load i32* %arrayidx20.8.4.8, align 4
  %add.8.4.8 = add nsw i32 %2078, %mul.8.4.8
  store i32 %add.8.4.8, i32* %arrayidx20.8.4.8, align 4
  br label %for.inc.8.4.8

for.inc.8.4.8:                                    ; preds = %for.inc.7.4.8
  br label %for.inc21.4.8

for.inc21.4.8:                                    ; preds = %for.inc.8.4.8
  %arrayidx.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.5.8 = getelementptr inbounds [9 x i32]* %arrayidx.5.8, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.8, align 4
  br label %for.body8.5.8

for.body8.5.8:                                    ; preds = %for.inc21.4.8
  %arrayidx11.544.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.545.8 = getelementptr inbounds [9 x i32]* %arrayidx11.544.8, i32 0, i64 0
  %2079 = load i32* %arrayidx12.545.8, align 4
  %arrayidx16.546.8 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 5
  %2080 = load i32* %arrayidx16.546.8, align 4
  %mul.547.8 = mul nsw i32 %2079, %2080
  %arrayidx19.549.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.550.8 = getelementptr inbounds [9 x i32]* %arrayidx19.549.8, i32 0, i64 5
  %2081 = load i32* %arrayidx20.550.8, align 4
  %add.551.8 = add nsw i32 %2081, %mul.547.8
  store i32 %add.551.8, i32* %arrayidx20.550.8, align 4
  br label %for.inc.552.8

for.inc.552.8:                                    ; preds = %for.body8.5.8
  %arrayidx11.1.5.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.5.8 = getelementptr inbounds [9 x i32]* %arrayidx11.1.5.8, i32 0, i64 1
  %2082 = load i32* %arrayidx12.1.5.8, align 4
  %arrayidx15.1.5.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.5.8, i32 0, i64 5
  %2083 = load i32* %arrayidx16.1.5.8, align 4
  %mul.1.5.8 = mul nsw i32 %2082, %2083
  %arrayidx19.1.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.5.8 = getelementptr inbounds [9 x i32]* %arrayidx19.1.5.8, i32 0, i64 5
  %2084 = load i32* %arrayidx20.1.5.8, align 4
  %add.1.5.8 = add nsw i32 %2084, %mul.1.5.8
  store i32 %add.1.5.8, i32* %arrayidx20.1.5.8, align 4
  br label %for.inc.1.5.8

for.inc.1.5.8:                                    ; preds = %for.inc.552.8
  %arrayidx11.2.5.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.5.8 = getelementptr inbounds [9 x i32]* %arrayidx11.2.5.8, i32 0, i64 2
  %2085 = load i32* %arrayidx12.2.5.8, align 4
  %arrayidx15.2.5.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.5.8, i32 0, i64 5
  %2086 = load i32* %arrayidx16.2.5.8, align 4
  %mul.2.5.8 = mul nsw i32 %2085, %2086
  %arrayidx19.2.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.5.8 = getelementptr inbounds [9 x i32]* %arrayidx19.2.5.8, i32 0, i64 5
  %2087 = load i32* %arrayidx20.2.5.8, align 4
  %add.2.5.8 = add nsw i32 %2087, %mul.2.5.8
  store i32 %add.2.5.8, i32* %arrayidx20.2.5.8, align 4
  br label %for.inc.2.5.8

for.inc.2.5.8:                                    ; preds = %for.inc.1.5.8
  %arrayidx11.3.5.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.5.8 = getelementptr inbounds [9 x i32]* %arrayidx11.3.5.8, i32 0, i64 3
  %2088 = load i32* %arrayidx12.3.5.8, align 4
  %arrayidx15.3.5.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.5.8, i32 0, i64 5
  %2089 = load i32* %arrayidx16.3.5.8, align 4
  %mul.3.5.8 = mul nsw i32 %2088, %2089
  %arrayidx19.3.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.5.8 = getelementptr inbounds [9 x i32]* %arrayidx19.3.5.8, i32 0, i64 5
  %2090 = load i32* %arrayidx20.3.5.8, align 4
  %add.3.5.8 = add nsw i32 %2090, %mul.3.5.8
  store i32 %add.3.5.8, i32* %arrayidx20.3.5.8, align 4
  br label %for.inc.3.5.8

for.inc.3.5.8:                                    ; preds = %for.inc.2.5.8
  %arrayidx11.4.5.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.5.8 = getelementptr inbounds [9 x i32]* %arrayidx11.4.5.8, i32 0, i64 4
  %2091 = load i32* %arrayidx12.4.5.8, align 4
  %arrayidx15.4.5.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.5.8, i32 0, i64 5
  %2092 = load i32* %arrayidx16.4.5.8, align 4
  %mul.4.5.8 = mul nsw i32 %2091, %2092
  %arrayidx19.4.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.5.8 = getelementptr inbounds [9 x i32]* %arrayidx19.4.5.8, i32 0, i64 5
  %2093 = load i32* %arrayidx20.4.5.8, align 4
  %add.4.5.8 = add nsw i32 %2093, %mul.4.5.8
  store i32 %add.4.5.8, i32* %arrayidx20.4.5.8, align 4
  br label %for.inc.4.5.8

for.inc.4.5.8:                                    ; preds = %for.inc.3.5.8
  %arrayidx11.5.5.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.5.8 = getelementptr inbounds [9 x i32]* %arrayidx11.5.5.8, i32 0, i64 5
  %2094 = load i32* %arrayidx12.5.5.8, align 4
  %arrayidx15.5.5.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.5.8, i32 0, i64 5
  %2095 = load i32* %arrayidx16.5.5.8, align 4
  %mul.5.5.8 = mul nsw i32 %2094, %2095
  %arrayidx19.5.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.5.8 = getelementptr inbounds [9 x i32]* %arrayidx19.5.5.8, i32 0, i64 5
  %2096 = load i32* %arrayidx20.5.5.8, align 4
  %add.5.5.8 = add nsw i32 %2096, %mul.5.5.8
  store i32 %add.5.5.8, i32* %arrayidx20.5.5.8, align 4
  br label %for.inc.5.5.8

for.inc.5.5.8:                                    ; preds = %for.inc.4.5.8
  %arrayidx11.6.5.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.5.8 = getelementptr inbounds [9 x i32]* %arrayidx11.6.5.8, i32 0, i64 6
  %2097 = load i32* %arrayidx12.6.5.8, align 4
  %arrayidx15.6.5.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.5.8, i32 0, i64 5
  %2098 = load i32* %arrayidx16.6.5.8, align 4
  %mul.6.5.8 = mul nsw i32 %2097, %2098
  %arrayidx19.6.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.5.8 = getelementptr inbounds [9 x i32]* %arrayidx19.6.5.8, i32 0, i64 5
  %2099 = load i32* %arrayidx20.6.5.8, align 4
  %add.6.5.8 = add nsw i32 %2099, %mul.6.5.8
  store i32 %add.6.5.8, i32* %arrayidx20.6.5.8, align 4
  br label %for.inc.6.5.8

for.inc.6.5.8:                                    ; preds = %for.inc.5.5.8
  %arrayidx11.7.5.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.5.8 = getelementptr inbounds [9 x i32]* %arrayidx11.7.5.8, i32 0, i64 7
  %2100 = load i32* %arrayidx12.7.5.8, align 4
  %arrayidx15.7.5.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.5.8, i32 0, i64 5
  %2101 = load i32* %arrayidx16.7.5.8, align 4
  %mul.7.5.8 = mul nsw i32 %2100, %2101
  %arrayidx19.7.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.5.8 = getelementptr inbounds [9 x i32]* %arrayidx19.7.5.8, i32 0, i64 5
  %2102 = load i32* %arrayidx20.7.5.8, align 4
  %add.7.5.8 = add nsw i32 %2102, %mul.7.5.8
  store i32 %add.7.5.8, i32* %arrayidx20.7.5.8, align 4
  br label %for.inc.7.5.8

for.inc.7.5.8:                                    ; preds = %for.inc.6.5.8
  %arrayidx11.8.5.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.5.8 = getelementptr inbounds [9 x i32]* %arrayidx11.8.5.8, i32 0, i64 8
  %2103 = load i32* %arrayidx12.8.5.8, align 4
  %arrayidx15.8.5.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.5.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.5.8, i32 0, i64 5
  %2104 = load i32* %arrayidx16.8.5.8, align 4
  %mul.8.5.8 = mul nsw i32 %2103, %2104
  %arrayidx19.8.5.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.5.8 = getelementptr inbounds [9 x i32]* %arrayidx19.8.5.8, i32 0, i64 5
  %2105 = load i32* %arrayidx20.8.5.8, align 4
  %add.8.5.8 = add nsw i32 %2105, %mul.8.5.8
  store i32 %add.8.5.8, i32* %arrayidx20.8.5.8, align 4
  br label %for.inc.8.5.8

for.inc.8.5.8:                                    ; preds = %for.inc.7.5.8
  br label %for.inc21.5.8

for.inc21.5.8:                                    ; preds = %for.inc.8.5.8
  %arrayidx.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.6.8 = getelementptr inbounds [9 x i32]* %arrayidx.6.8, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.8, align 4
  br label %for.body8.6.8

for.body8.6.8:                                    ; preds = %for.inc21.5.8
  %arrayidx11.654.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.655.8 = getelementptr inbounds [9 x i32]* %arrayidx11.654.8, i32 0, i64 0
  %2106 = load i32* %arrayidx12.655.8, align 4
  %arrayidx16.656.8 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 6
  %2107 = load i32* %arrayidx16.656.8, align 4
  %mul.657.8 = mul nsw i32 %2106, %2107
  %arrayidx19.659.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.660.8 = getelementptr inbounds [9 x i32]* %arrayidx19.659.8, i32 0, i64 6
  %2108 = load i32* %arrayidx20.660.8, align 4
  %add.661.8 = add nsw i32 %2108, %mul.657.8
  store i32 %add.661.8, i32* %arrayidx20.660.8, align 4
  br label %for.inc.662.8

for.inc.662.8:                                    ; preds = %for.body8.6.8
  %arrayidx11.1.6.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.6.8 = getelementptr inbounds [9 x i32]* %arrayidx11.1.6.8, i32 0, i64 1
  %2109 = load i32* %arrayidx12.1.6.8, align 4
  %arrayidx15.1.6.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.6.8, i32 0, i64 6
  %2110 = load i32* %arrayidx16.1.6.8, align 4
  %mul.1.6.8 = mul nsw i32 %2109, %2110
  %arrayidx19.1.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.6.8 = getelementptr inbounds [9 x i32]* %arrayidx19.1.6.8, i32 0, i64 6
  %2111 = load i32* %arrayidx20.1.6.8, align 4
  %add.1.6.8 = add nsw i32 %2111, %mul.1.6.8
  store i32 %add.1.6.8, i32* %arrayidx20.1.6.8, align 4
  br label %for.inc.1.6.8

for.inc.1.6.8:                                    ; preds = %for.inc.662.8
  %arrayidx11.2.6.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.6.8 = getelementptr inbounds [9 x i32]* %arrayidx11.2.6.8, i32 0, i64 2
  %2112 = load i32* %arrayidx12.2.6.8, align 4
  %arrayidx15.2.6.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.6.8, i32 0, i64 6
  %2113 = load i32* %arrayidx16.2.6.8, align 4
  %mul.2.6.8 = mul nsw i32 %2112, %2113
  %arrayidx19.2.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.6.8 = getelementptr inbounds [9 x i32]* %arrayidx19.2.6.8, i32 0, i64 6
  %2114 = load i32* %arrayidx20.2.6.8, align 4
  %add.2.6.8 = add nsw i32 %2114, %mul.2.6.8
  store i32 %add.2.6.8, i32* %arrayidx20.2.6.8, align 4
  br label %for.inc.2.6.8

for.inc.2.6.8:                                    ; preds = %for.inc.1.6.8
  %arrayidx11.3.6.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.6.8 = getelementptr inbounds [9 x i32]* %arrayidx11.3.6.8, i32 0, i64 3
  %2115 = load i32* %arrayidx12.3.6.8, align 4
  %arrayidx15.3.6.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.6.8, i32 0, i64 6
  %2116 = load i32* %arrayidx16.3.6.8, align 4
  %mul.3.6.8 = mul nsw i32 %2115, %2116
  %arrayidx19.3.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.6.8 = getelementptr inbounds [9 x i32]* %arrayidx19.3.6.8, i32 0, i64 6
  %2117 = load i32* %arrayidx20.3.6.8, align 4
  %add.3.6.8 = add nsw i32 %2117, %mul.3.6.8
  store i32 %add.3.6.8, i32* %arrayidx20.3.6.8, align 4
  br label %for.inc.3.6.8

for.inc.3.6.8:                                    ; preds = %for.inc.2.6.8
  %arrayidx11.4.6.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.6.8 = getelementptr inbounds [9 x i32]* %arrayidx11.4.6.8, i32 0, i64 4
  %2118 = load i32* %arrayidx12.4.6.8, align 4
  %arrayidx15.4.6.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.6.8, i32 0, i64 6
  %2119 = load i32* %arrayidx16.4.6.8, align 4
  %mul.4.6.8 = mul nsw i32 %2118, %2119
  %arrayidx19.4.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.6.8 = getelementptr inbounds [9 x i32]* %arrayidx19.4.6.8, i32 0, i64 6
  %2120 = load i32* %arrayidx20.4.6.8, align 4
  %add.4.6.8 = add nsw i32 %2120, %mul.4.6.8
  store i32 %add.4.6.8, i32* %arrayidx20.4.6.8, align 4
  br label %for.inc.4.6.8

for.inc.4.6.8:                                    ; preds = %for.inc.3.6.8
  %arrayidx11.5.6.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.6.8 = getelementptr inbounds [9 x i32]* %arrayidx11.5.6.8, i32 0, i64 5
  %2121 = load i32* %arrayidx12.5.6.8, align 4
  %arrayidx15.5.6.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.6.8, i32 0, i64 6
  %2122 = load i32* %arrayidx16.5.6.8, align 4
  %mul.5.6.8 = mul nsw i32 %2121, %2122
  %arrayidx19.5.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.6.8 = getelementptr inbounds [9 x i32]* %arrayidx19.5.6.8, i32 0, i64 6
  %2123 = load i32* %arrayidx20.5.6.8, align 4
  %add.5.6.8 = add nsw i32 %2123, %mul.5.6.8
  store i32 %add.5.6.8, i32* %arrayidx20.5.6.8, align 4
  br label %for.inc.5.6.8

for.inc.5.6.8:                                    ; preds = %for.inc.4.6.8
  %arrayidx11.6.6.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.6.8 = getelementptr inbounds [9 x i32]* %arrayidx11.6.6.8, i32 0, i64 6
  %2124 = load i32* %arrayidx12.6.6.8, align 4
  %arrayidx15.6.6.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.6.8, i32 0, i64 6
  %2125 = load i32* %arrayidx16.6.6.8, align 4
  %mul.6.6.8 = mul nsw i32 %2124, %2125
  %arrayidx19.6.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.6.8 = getelementptr inbounds [9 x i32]* %arrayidx19.6.6.8, i32 0, i64 6
  %2126 = load i32* %arrayidx20.6.6.8, align 4
  %add.6.6.8 = add nsw i32 %2126, %mul.6.6.8
  store i32 %add.6.6.8, i32* %arrayidx20.6.6.8, align 4
  br label %for.inc.6.6.8

for.inc.6.6.8:                                    ; preds = %for.inc.5.6.8
  %arrayidx11.7.6.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.6.8 = getelementptr inbounds [9 x i32]* %arrayidx11.7.6.8, i32 0, i64 7
  %2127 = load i32* %arrayidx12.7.6.8, align 4
  %arrayidx15.7.6.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.6.8, i32 0, i64 6
  %2128 = load i32* %arrayidx16.7.6.8, align 4
  %mul.7.6.8 = mul nsw i32 %2127, %2128
  %arrayidx19.7.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.6.8 = getelementptr inbounds [9 x i32]* %arrayidx19.7.6.8, i32 0, i64 6
  %2129 = load i32* %arrayidx20.7.6.8, align 4
  %add.7.6.8 = add nsw i32 %2129, %mul.7.6.8
  store i32 %add.7.6.8, i32* %arrayidx20.7.6.8, align 4
  br label %for.inc.7.6.8

for.inc.7.6.8:                                    ; preds = %for.inc.6.6.8
  %arrayidx11.8.6.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.6.8 = getelementptr inbounds [9 x i32]* %arrayidx11.8.6.8, i32 0, i64 8
  %2130 = load i32* %arrayidx12.8.6.8, align 4
  %arrayidx15.8.6.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.6.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.6.8, i32 0, i64 6
  %2131 = load i32* %arrayidx16.8.6.8, align 4
  %mul.8.6.8 = mul nsw i32 %2130, %2131
  %arrayidx19.8.6.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.6.8 = getelementptr inbounds [9 x i32]* %arrayidx19.8.6.8, i32 0, i64 6
  %2132 = load i32* %arrayidx20.8.6.8, align 4
  %add.8.6.8 = add nsw i32 %2132, %mul.8.6.8
  store i32 %add.8.6.8, i32* %arrayidx20.8.6.8, align 4
  br label %for.inc.8.6.8

for.inc.8.6.8:                                    ; preds = %for.inc.7.6.8
  br label %for.inc21.6.8

for.inc21.6.8:                                    ; preds = %for.inc.8.6.8
  %arrayidx.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.7.8 = getelementptr inbounds [9 x i32]* %arrayidx.7.8, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.8, align 4
  br label %for.body8.7.8

for.body8.7.8:                                    ; preds = %for.inc21.6.8
  %arrayidx11.764.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.765.8 = getelementptr inbounds [9 x i32]* %arrayidx11.764.8, i32 0, i64 0
  %2133 = load i32* %arrayidx12.765.8, align 4
  %arrayidx16.766.8 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 7
  %2134 = load i32* %arrayidx16.766.8, align 4
  %mul.767.8 = mul nsw i32 %2133, %2134
  %arrayidx19.769.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.770.8 = getelementptr inbounds [9 x i32]* %arrayidx19.769.8, i32 0, i64 7
  %2135 = load i32* %arrayidx20.770.8, align 4
  %add.771.8 = add nsw i32 %2135, %mul.767.8
  store i32 %add.771.8, i32* %arrayidx20.770.8, align 4
  br label %for.inc.772.8

for.inc.772.8:                                    ; preds = %for.body8.7.8
  %arrayidx11.1.7.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.7.8 = getelementptr inbounds [9 x i32]* %arrayidx11.1.7.8, i32 0, i64 1
  %2136 = load i32* %arrayidx12.1.7.8, align 4
  %arrayidx15.1.7.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.7.8, i32 0, i64 7
  %2137 = load i32* %arrayidx16.1.7.8, align 4
  %mul.1.7.8 = mul nsw i32 %2136, %2137
  %arrayidx19.1.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.7.8 = getelementptr inbounds [9 x i32]* %arrayidx19.1.7.8, i32 0, i64 7
  %2138 = load i32* %arrayidx20.1.7.8, align 4
  %add.1.7.8 = add nsw i32 %2138, %mul.1.7.8
  store i32 %add.1.7.8, i32* %arrayidx20.1.7.8, align 4
  br label %for.inc.1.7.8

for.inc.1.7.8:                                    ; preds = %for.inc.772.8
  %arrayidx11.2.7.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.7.8 = getelementptr inbounds [9 x i32]* %arrayidx11.2.7.8, i32 0, i64 2
  %2139 = load i32* %arrayidx12.2.7.8, align 4
  %arrayidx15.2.7.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.7.8, i32 0, i64 7
  %2140 = load i32* %arrayidx16.2.7.8, align 4
  %mul.2.7.8 = mul nsw i32 %2139, %2140
  %arrayidx19.2.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.7.8 = getelementptr inbounds [9 x i32]* %arrayidx19.2.7.8, i32 0, i64 7
  %2141 = load i32* %arrayidx20.2.7.8, align 4
  %add.2.7.8 = add nsw i32 %2141, %mul.2.7.8
  store i32 %add.2.7.8, i32* %arrayidx20.2.7.8, align 4
  br label %for.inc.2.7.8

for.inc.2.7.8:                                    ; preds = %for.inc.1.7.8
  %arrayidx11.3.7.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.7.8 = getelementptr inbounds [9 x i32]* %arrayidx11.3.7.8, i32 0, i64 3
  %2142 = load i32* %arrayidx12.3.7.8, align 4
  %arrayidx15.3.7.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.7.8, i32 0, i64 7
  %2143 = load i32* %arrayidx16.3.7.8, align 4
  %mul.3.7.8 = mul nsw i32 %2142, %2143
  %arrayidx19.3.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.7.8 = getelementptr inbounds [9 x i32]* %arrayidx19.3.7.8, i32 0, i64 7
  %2144 = load i32* %arrayidx20.3.7.8, align 4
  %add.3.7.8 = add nsw i32 %2144, %mul.3.7.8
  store i32 %add.3.7.8, i32* %arrayidx20.3.7.8, align 4
  br label %for.inc.3.7.8

for.inc.3.7.8:                                    ; preds = %for.inc.2.7.8
  %arrayidx11.4.7.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.7.8 = getelementptr inbounds [9 x i32]* %arrayidx11.4.7.8, i32 0, i64 4
  %2145 = load i32* %arrayidx12.4.7.8, align 4
  %arrayidx15.4.7.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.7.8, i32 0, i64 7
  %2146 = load i32* %arrayidx16.4.7.8, align 4
  %mul.4.7.8 = mul nsw i32 %2145, %2146
  %arrayidx19.4.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.7.8 = getelementptr inbounds [9 x i32]* %arrayidx19.4.7.8, i32 0, i64 7
  %2147 = load i32* %arrayidx20.4.7.8, align 4
  %add.4.7.8 = add nsw i32 %2147, %mul.4.7.8
  store i32 %add.4.7.8, i32* %arrayidx20.4.7.8, align 4
  br label %for.inc.4.7.8

for.inc.4.7.8:                                    ; preds = %for.inc.3.7.8
  %arrayidx11.5.7.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.7.8 = getelementptr inbounds [9 x i32]* %arrayidx11.5.7.8, i32 0, i64 5
  %2148 = load i32* %arrayidx12.5.7.8, align 4
  %arrayidx15.5.7.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.7.8, i32 0, i64 7
  %2149 = load i32* %arrayidx16.5.7.8, align 4
  %mul.5.7.8 = mul nsw i32 %2148, %2149
  %arrayidx19.5.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.7.8 = getelementptr inbounds [9 x i32]* %arrayidx19.5.7.8, i32 0, i64 7
  %2150 = load i32* %arrayidx20.5.7.8, align 4
  %add.5.7.8 = add nsw i32 %2150, %mul.5.7.8
  store i32 %add.5.7.8, i32* %arrayidx20.5.7.8, align 4
  br label %for.inc.5.7.8

for.inc.5.7.8:                                    ; preds = %for.inc.4.7.8
  %arrayidx11.6.7.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.7.8 = getelementptr inbounds [9 x i32]* %arrayidx11.6.7.8, i32 0, i64 6
  %2151 = load i32* %arrayidx12.6.7.8, align 4
  %arrayidx15.6.7.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.7.8, i32 0, i64 7
  %2152 = load i32* %arrayidx16.6.7.8, align 4
  %mul.6.7.8 = mul nsw i32 %2151, %2152
  %arrayidx19.6.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.7.8 = getelementptr inbounds [9 x i32]* %arrayidx19.6.7.8, i32 0, i64 7
  %2153 = load i32* %arrayidx20.6.7.8, align 4
  %add.6.7.8 = add nsw i32 %2153, %mul.6.7.8
  store i32 %add.6.7.8, i32* %arrayidx20.6.7.8, align 4
  br label %for.inc.6.7.8

for.inc.6.7.8:                                    ; preds = %for.inc.5.7.8
  %arrayidx11.7.7.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.7.8 = getelementptr inbounds [9 x i32]* %arrayidx11.7.7.8, i32 0, i64 7
  %2154 = load i32* %arrayidx12.7.7.8, align 4
  %arrayidx15.7.7.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.7.8, i32 0, i64 7
  %2155 = load i32* %arrayidx16.7.7.8, align 4
  %mul.7.7.8 = mul nsw i32 %2154, %2155
  %arrayidx19.7.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.7.8 = getelementptr inbounds [9 x i32]* %arrayidx19.7.7.8, i32 0, i64 7
  %2156 = load i32* %arrayidx20.7.7.8, align 4
  %add.7.7.8 = add nsw i32 %2156, %mul.7.7.8
  store i32 %add.7.7.8, i32* %arrayidx20.7.7.8, align 4
  br label %for.inc.7.7.8

for.inc.7.7.8:                                    ; preds = %for.inc.6.7.8
  %arrayidx11.8.7.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.7.8 = getelementptr inbounds [9 x i32]* %arrayidx11.8.7.8, i32 0, i64 8
  %2157 = load i32* %arrayidx12.8.7.8, align 4
  %arrayidx15.8.7.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.7.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.7.8, i32 0, i64 7
  %2158 = load i32* %arrayidx16.8.7.8, align 4
  %mul.8.7.8 = mul nsw i32 %2157, %2158
  %arrayidx19.8.7.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.7.8 = getelementptr inbounds [9 x i32]* %arrayidx19.8.7.8, i32 0, i64 7
  %2159 = load i32* %arrayidx20.8.7.8, align 4
  %add.8.7.8 = add nsw i32 %2159, %mul.8.7.8
  store i32 %add.8.7.8, i32* %arrayidx20.8.7.8, align 4
  br label %for.inc.8.7.8

for.inc.8.7.8:                                    ; preds = %for.inc.7.7.8
  br label %for.inc21.7.8

for.inc21.7.8:                                    ; preds = %for.inc.8.7.8
  %arrayidx.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx5.8.8 = getelementptr inbounds [9 x i32]* %arrayidx.8.8, i32 0, i64 8
  store i32 %init, i32* %arrayidx5.8.8, align 4
  br label %for.body8.8.8

for.body8.8.8:                                    ; preds = %for.inc21.7.8
  %arrayidx11.874.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.875.8 = getelementptr inbounds [9 x i32]* %arrayidx11.874.8, i32 0, i64 0
  %2160 = load i32* %arrayidx12.875.8, align 4
  %arrayidx16.876.8 = getelementptr inbounds [9 x i32]* %b, i32 0, i64 8
  %2161 = load i32* %arrayidx16.876.8, align 4
  %mul.877.8 = mul nsw i32 %2160, %2161
  %arrayidx19.879.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.880.8 = getelementptr inbounds [9 x i32]* %arrayidx19.879.8, i32 0, i64 8
  %2162 = load i32* %arrayidx20.880.8, align 4
  %add.881.8 = add nsw i32 %2162, %mul.877.8
  store i32 %add.881.8, i32* %arrayidx20.880.8, align 4
  br label %for.inc.882.8

for.inc.882.8:                                    ; preds = %for.body8.8.8
  %arrayidx11.1.8.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.1.8.8 = getelementptr inbounds [9 x i32]* %arrayidx11.1.8.8, i32 0, i64 1
  %2163 = load i32* %arrayidx12.1.8.8, align 4
  %arrayidx15.1.8.8 = getelementptr inbounds [9 x i32]* %b, i64 1
  %arrayidx16.1.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.1.8.8, i32 0, i64 8
  %2164 = load i32* %arrayidx16.1.8.8, align 4
  %mul.1.8.8 = mul nsw i32 %2163, %2164
  %arrayidx19.1.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.1.8.8 = getelementptr inbounds [9 x i32]* %arrayidx19.1.8.8, i32 0, i64 8
  %2165 = load i32* %arrayidx20.1.8.8, align 4
  %add.1.8.8 = add nsw i32 %2165, %mul.1.8.8
  store i32 %add.1.8.8, i32* %arrayidx20.1.8.8, align 4
  br label %for.inc.1.8.8

for.inc.1.8.8:                                    ; preds = %for.inc.882.8
  %arrayidx11.2.8.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.2.8.8 = getelementptr inbounds [9 x i32]* %arrayidx11.2.8.8, i32 0, i64 2
  %2166 = load i32* %arrayidx12.2.8.8, align 4
  %arrayidx15.2.8.8 = getelementptr inbounds [9 x i32]* %b, i64 2
  %arrayidx16.2.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.2.8.8, i32 0, i64 8
  %2167 = load i32* %arrayidx16.2.8.8, align 4
  %mul.2.8.8 = mul nsw i32 %2166, %2167
  %arrayidx19.2.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.2.8.8 = getelementptr inbounds [9 x i32]* %arrayidx19.2.8.8, i32 0, i64 8
  %2168 = load i32* %arrayidx20.2.8.8, align 4
  %add.2.8.8 = add nsw i32 %2168, %mul.2.8.8
  store i32 %add.2.8.8, i32* %arrayidx20.2.8.8, align 4
  br label %for.inc.2.8.8

for.inc.2.8.8:                                    ; preds = %for.inc.1.8.8
  %arrayidx11.3.8.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.3.8.8 = getelementptr inbounds [9 x i32]* %arrayidx11.3.8.8, i32 0, i64 3
  %2169 = load i32* %arrayidx12.3.8.8, align 4
  %arrayidx15.3.8.8 = getelementptr inbounds [9 x i32]* %b, i64 3
  %arrayidx16.3.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.3.8.8, i32 0, i64 8
  %2170 = load i32* %arrayidx16.3.8.8, align 4
  %mul.3.8.8 = mul nsw i32 %2169, %2170
  %arrayidx19.3.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.3.8.8 = getelementptr inbounds [9 x i32]* %arrayidx19.3.8.8, i32 0, i64 8
  %2171 = load i32* %arrayidx20.3.8.8, align 4
  %add.3.8.8 = add nsw i32 %2171, %mul.3.8.8
  store i32 %add.3.8.8, i32* %arrayidx20.3.8.8, align 4
  br label %for.inc.3.8.8

for.inc.3.8.8:                                    ; preds = %for.inc.2.8.8
  %arrayidx11.4.8.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.4.8.8 = getelementptr inbounds [9 x i32]* %arrayidx11.4.8.8, i32 0, i64 4
  %2172 = load i32* %arrayidx12.4.8.8, align 4
  %arrayidx15.4.8.8 = getelementptr inbounds [9 x i32]* %b, i64 4
  %arrayidx16.4.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.4.8.8, i32 0, i64 8
  %2173 = load i32* %arrayidx16.4.8.8, align 4
  %mul.4.8.8 = mul nsw i32 %2172, %2173
  %arrayidx19.4.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.4.8.8 = getelementptr inbounds [9 x i32]* %arrayidx19.4.8.8, i32 0, i64 8
  %2174 = load i32* %arrayidx20.4.8.8, align 4
  %add.4.8.8 = add nsw i32 %2174, %mul.4.8.8
  store i32 %add.4.8.8, i32* %arrayidx20.4.8.8, align 4
  br label %for.inc.4.8.8

for.inc.4.8.8:                                    ; preds = %for.inc.3.8.8
  %arrayidx11.5.8.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.5.8.8 = getelementptr inbounds [9 x i32]* %arrayidx11.5.8.8, i32 0, i64 5
  %2175 = load i32* %arrayidx12.5.8.8, align 4
  %arrayidx15.5.8.8 = getelementptr inbounds [9 x i32]* %b, i64 5
  %arrayidx16.5.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.5.8.8, i32 0, i64 8
  %2176 = load i32* %arrayidx16.5.8.8, align 4
  %mul.5.8.8 = mul nsw i32 %2175, %2176
  %arrayidx19.5.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.5.8.8 = getelementptr inbounds [9 x i32]* %arrayidx19.5.8.8, i32 0, i64 8
  %2177 = load i32* %arrayidx20.5.8.8, align 4
  %add.5.8.8 = add nsw i32 %2177, %mul.5.8.8
  store i32 %add.5.8.8, i32* %arrayidx20.5.8.8, align 4
  br label %for.inc.5.8.8

for.inc.5.8.8:                                    ; preds = %for.inc.4.8.8
  %arrayidx11.6.8.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.6.8.8 = getelementptr inbounds [9 x i32]* %arrayidx11.6.8.8, i32 0, i64 6
  %2178 = load i32* %arrayidx12.6.8.8, align 4
  %arrayidx15.6.8.8 = getelementptr inbounds [9 x i32]* %b, i64 6
  %arrayidx16.6.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.6.8.8, i32 0, i64 8
  %2179 = load i32* %arrayidx16.6.8.8, align 4
  %mul.6.8.8 = mul nsw i32 %2178, %2179
  %arrayidx19.6.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.6.8.8 = getelementptr inbounds [9 x i32]* %arrayidx19.6.8.8, i32 0, i64 8
  %2180 = load i32* %arrayidx20.6.8.8, align 4
  %add.6.8.8 = add nsw i32 %2180, %mul.6.8.8
  store i32 %add.6.8.8, i32* %arrayidx20.6.8.8, align 4
  br label %for.inc.6.8.8

for.inc.6.8.8:                                    ; preds = %for.inc.5.8.8
  %arrayidx11.7.8.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.7.8.8 = getelementptr inbounds [9 x i32]* %arrayidx11.7.8.8, i32 0, i64 7
  %2181 = load i32* %arrayidx12.7.8.8, align 4
  %arrayidx15.7.8.8 = getelementptr inbounds [9 x i32]* %b, i64 7
  %arrayidx16.7.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.7.8.8, i32 0, i64 8
  %2182 = load i32* %arrayidx16.7.8.8, align 4
  %mul.7.8.8 = mul nsw i32 %2181, %2182
  %arrayidx19.7.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.7.8.8 = getelementptr inbounds [9 x i32]* %arrayidx19.7.8.8, i32 0, i64 8
  %2183 = load i32* %arrayidx20.7.8.8, align 4
  %add.7.8.8 = add nsw i32 %2183, %mul.7.8.8
  store i32 %add.7.8.8, i32* %arrayidx20.7.8.8, align 4
  br label %for.inc.7.8.8

for.inc.7.8.8:                                    ; preds = %for.inc.6.8.8
  %arrayidx11.8.8.8 = getelementptr inbounds [9 x i32]* %a, i64 8
  %arrayidx12.8.8.8 = getelementptr inbounds [9 x i32]* %arrayidx11.8.8.8, i32 0, i64 8
  %2184 = load i32* %arrayidx12.8.8.8, align 4
  %arrayidx15.8.8.8 = getelementptr inbounds [9 x i32]* %b, i64 8
  %arrayidx16.8.8.8 = getelementptr inbounds [9 x i32]* %arrayidx15.8.8.8, i32 0, i64 8
  %2185 = load i32* %arrayidx16.8.8.8, align 4
  %mul.8.8.8 = mul nsw i32 %2184, %2185
  %arrayidx19.8.8.8 = getelementptr inbounds [9 x i32]* %c, i64 8
  %arrayidx20.8.8.8 = getelementptr inbounds [9 x i32]* %arrayidx19.8.8.8, i32 0, i64 8
  %2186 = load i32* %arrayidx20.8.8.8, align 4
  %add.8.8.8 = add nsw i32 %2186, %mul.8.8.8
  store i32 %add.8.8.8, i32* %arrayidx20.8.8.8, align 4
  br label %for.inc.8.8.8

for.inc.8.8.8:                                    ; preds = %for.inc.7.8.8
  br label %for.inc21.8.8

for.inc21.8.8:                                    ; preds = %for.inc.8.8.8
  br label %for.inc24.8

for.inc24.8:                                      ; preds = %for.inc21.8.8
  ret void
}
