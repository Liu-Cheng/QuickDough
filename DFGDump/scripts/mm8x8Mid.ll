; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [8 x [8 x i32]] zeroinitializer, align 16

define void @_Z5mm8x8PA8_iS0_iS0_([8 x i32]* %a, [8 x i32]* %b, i32 %init, [8 x i32]* %c) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %arrayidx12.1 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  br label %for.inc.1

for.inc21:                                        ; preds = %for.inc.7
  %arrayidx5.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  br label %for.body8.1

for.inc24:                                        ; preds = %for.inc21.7
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx12.2 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 2
  %6 = load i32* %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2, i32 0, i64 0
  %7 = load i32* %arrayidx16.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %arrayidx20.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  %8 = load i32* %arrayidx20.2, align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* %arrayidx20.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx12.3 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 3
  %9 = load i32* %arrayidx12.3, align 4
  %arrayidx15.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3, i32 0, i64 0
  %10 = load i32* %arrayidx16.3, align 4
  %mul.3 = mul nsw i32 %9, %10
  %arrayidx20.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  %11 = load i32* %arrayidx20.3, align 4
  %add.3 = add nsw i32 %11, %mul.3
  store i32 %add.3, i32* %arrayidx20.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx12.4 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 4
  %12 = load i32* %arrayidx12.4, align 4
  %arrayidx15.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4, i32 0, i64 0
  %13 = load i32* %arrayidx16.4, align 4
  %mul.4 = mul nsw i32 %12, %13
  %arrayidx20.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  %14 = load i32* %arrayidx20.4, align 4
  %add.4 = add nsw i32 %14, %mul.4
  store i32 %add.4, i32* %arrayidx20.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx12.5 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 5
  %15 = load i32* %arrayidx12.5, align 4
  %arrayidx15.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5, i32 0, i64 0
  %16 = load i32* %arrayidx16.5, align 4
  %mul.5 = mul nsw i32 %15, %16
  %arrayidx20.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  %17 = load i32* %arrayidx20.5, align 4
  %add.5 = add nsw i32 %17, %mul.5
  store i32 %add.5, i32* %arrayidx20.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx12.6 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 6
  %18 = load i32* %arrayidx12.6, align 4
  %arrayidx15.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6, i32 0, i64 0
  %19 = load i32* %arrayidx16.6, align 4
  %mul.6 = mul nsw i32 %18, %19
  %arrayidx20.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  %20 = load i32* %arrayidx20.6, align 4
  %add.6 = add nsw i32 %20, %mul.6
  store i32 %add.6, i32* %arrayidx20.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx12.7 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 7
  %21 = load i32* %arrayidx12.7, align 4
  %arrayidx15.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7, i32 0, i64 0
  %22 = load i32* %arrayidx16.7, align 4
  %mul.7 = mul nsw i32 %21, %22
  %arrayidx20.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 0
  %23 = load i32* %arrayidx20.7, align 4
  %add.7 = add nsw i32 %23, %mul.7
  store i32 %add.7, i32* %arrayidx20.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.inc.6
  br label %for.inc21

for.body8.1:                                      ; preds = %for.inc21
  %arrayidx12.15 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 0
  %24 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 1
  %25 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %24, %25
  %arrayidx20.110 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  %26 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %26, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body8.1
  %arrayidx12.1.1 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 1
  %27 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %28 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %27, %28
  %arrayidx20.1.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  %29 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %29, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.112
  %arrayidx12.2.1 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 2
  %30 = load i32* %arrayidx12.2.1, align 4
  %arrayidx15.2.1 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.1 = getelementptr inbounds [8 x i32]* %arrayidx15.2.1, i32 0, i64 1
  %31 = load i32* %arrayidx16.2.1, align 4
  %mul.2.1 = mul nsw i32 %30, %31
  %arrayidx20.2.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  %32 = load i32* %arrayidx20.2.1, align 4
  %add.2.1 = add nsw i32 %32, %mul.2.1
  store i32 %add.2.1, i32* %arrayidx20.2.1, align 4
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %arrayidx12.3.1 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 3
  %33 = load i32* %arrayidx12.3.1, align 4
  %arrayidx15.3.1 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1, i32 0, i64 1
  %34 = load i32* %arrayidx16.3.1, align 4
  %mul.3.1 = mul nsw i32 %33, %34
  %arrayidx20.3.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  %35 = load i32* %arrayidx20.3.1, align 4
  %add.3.1 = add nsw i32 %35, %mul.3.1
  store i32 %add.3.1, i32* %arrayidx20.3.1, align 4
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %for.inc.2.1
  %arrayidx12.4.1 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 4
  %36 = load i32* %arrayidx12.4.1, align 4
  %arrayidx15.4.1 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1, i32 0, i64 1
  %37 = load i32* %arrayidx16.4.1, align 4
  %mul.4.1 = mul nsw i32 %36, %37
  %arrayidx20.4.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  %38 = load i32* %arrayidx20.4.1, align 4
  %add.4.1 = add nsw i32 %38, %mul.4.1
  store i32 %add.4.1, i32* %arrayidx20.4.1, align 4
  br label %for.inc.4.1

for.inc.4.1:                                      ; preds = %for.inc.3.1
  %arrayidx12.5.1 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 5
  %39 = load i32* %arrayidx12.5.1, align 4
  %arrayidx15.5.1 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1, i32 0, i64 1
  %40 = load i32* %arrayidx16.5.1, align 4
  %mul.5.1 = mul nsw i32 %39, %40
  %arrayidx20.5.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  %41 = load i32* %arrayidx20.5.1, align 4
  %add.5.1 = add nsw i32 %41, %mul.5.1
  store i32 %add.5.1, i32* %arrayidx20.5.1, align 4
  br label %for.inc.5.1

for.inc.5.1:                                      ; preds = %for.inc.4.1
  %arrayidx12.6.1 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 6
  %42 = load i32* %arrayidx12.6.1, align 4
  %arrayidx15.6.1 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1, i32 0, i64 1
  %43 = load i32* %arrayidx16.6.1, align 4
  %mul.6.1 = mul nsw i32 %42, %43
  %arrayidx20.6.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  %44 = load i32* %arrayidx20.6.1, align 4
  %add.6.1 = add nsw i32 %44, %mul.6.1
  store i32 %add.6.1, i32* %arrayidx20.6.1, align 4
  br label %for.inc.6.1

for.inc.6.1:                                      ; preds = %for.inc.5.1
  %arrayidx12.7.1 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 7
  %45 = load i32* %arrayidx12.7.1, align 4
  %arrayidx15.7.1 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1, i32 0, i64 1
  %46 = load i32* %arrayidx16.7.1, align 4
  %mul.7.1 = mul nsw i32 %45, %46
  %arrayidx20.7.1 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 1
  %47 = load i32* %arrayidx20.7.1, align 4
  %add.7.1 = add nsw i32 %47, %mul.7.1
  store i32 %add.7.1, i32* %arrayidx20.7.1, align 4
  br label %for.inc.7.1

for.inc.7.1:                                      ; preds = %for.inc.6.1
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.inc.7.1
  %arrayidx5.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc21.1
  %arrayidx12.215 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 0
  %48 = load i32* %arrayidx12.215, align 4
  %arrayidx16.216 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 2
  %49 = load i32* %arrayidx16.216, align 4
  %mul.217 = mul nsw i32 %48, %49
  %arrayidx20.220 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  %50 = load i32* %arrayidx20.220, align 4
  %add.221 = add nsw i32 %50, %mul.217
  store i32 %add.221, i32* %arrayidx20.220, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body8.2
  %arrayidx12.1.2 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 1
  %51 = load i32* %arrayidx12.1.2, align 4
  %arrayidx15.1.2 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2, i32 0, i64 2
  %52 = load i32* %arrayidx16.1.2, align 4
  %mul.1.2 = mul nsw i32 %51, %52
  %arrayidx20.1.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  %53 = load i32* %arrayidx20.1.2, align 4
  %add.1.2 = add nsw i32 %53, %mul.1.2
  store i32 %add.1.2, i32* %arrayidx20.1.2, align 4
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.222
  %arrayidx12.2.2 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 2
  %54 = load i32* %arrayidx12.2.2, align 4
  %arrayidx15.2.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2, i32 0, i64 2
  %55 = load i32* %arrayidx16.2.2, align 4
  %mul.2.2 = mul nsw i32 %54, %55
  %arrayidx20.2.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  %56 = load i32* %arrayidx20.2.2, align 4
  %add.2.2 = add nsw i32 %56, %mul.2.2
  store i32 %add.2.2, i32* %arrayidx20.2.2, align 4
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  %arrayidx12.3.2 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 3
  %57 = load i32* %arrayidx12.3.2, align 4
  %arrayidx15.3.2 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2, i32 0, i64 2
  %58 = load i32* %arrayidx16.3.2, align 4
  %mul.3.2 = mul nsw i32 %57, %58
  %arrayidx20.3.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  %59 = load i32* %arrayidx20.3.2, align 4
  %add.3.2 = add nsw i32 %59, %mul.3.2
  store i32 %add.3.2, i32* %arrayidx20.3.2, align 4
  br label %for.inc.3.2

for.inc.3.2:                                      ; preds = %for.inc.2.2
  %arrayidx12.4.2 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 4
  %60 = load i32* %arrayidx12.4.2, align 4
  %arrayidx15.4.2 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2, i32 0, i64 2
  %61 = load i32* %arrayidx16.4.2, align 4
  %mul.4.2 = mul nsw i32 %60, %61
  %arrayidx20.4.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  %62 = load i32* %arrayidx20.4.2, align 4
  %add.4.2 = add nsw i32 %62, %mul.4.2
  store i32 %add.4.2, i32* %arrayidx20.4.2, align 4
  br label %for.inc.4.2

for.inc.4.2:                                      ; preds = %for.inc.3.2
  %arrayidx12.5.2 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 5
  %63 = load i32* %arrayidx12.5.2, align 4
  %arrayidx15.5.2 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2, i32 0, i64 2
  %64 = load i32* %arrayidx16.5.2, align 4
  %mul.5.2 = mul nsw i32 %63, %64
  %arrayidx20.5.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  %65 = load i32* %arrayidx20.5.2, align 4
  %add.5.2 = add nsw i32 %65, %mul.5.2
  store i32 %add.5.2, i32* %arrayidx20.5.2, align 4
  br label %for.inc.5.2

for.inc.5.2:                                      ; preds = %for.inc.4.2
  %arrayidx12.6.2 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 6
  %66 = load i32* %arrayidx12.6.2, align 4
  %arrayidx15.6.2 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2, i32 0, i64 2
  %67 = load i32* %arrayidx16.6.2, align 4
  %mul.6.2 = mul nsw i32 %66, %67
  %arrayidx20.6.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  %68 = load i32* %arrayidx20.6.2, align 4
  %add.6.2 = add nsw i32 %68, %mul.6.2
  store i32 %add.6.2, i32* %arrayidx20.6.2, align 4
  br label %for.inc.6.2

for.inc.6.2:                                      ; preds = %for.inc.5.2
  %arrayidx12.7.2 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 7
  %69 = load i32* %arrayidx12.7.2, align 4
  %arrayidx15.7.2 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2, i32 0, i64 2
  %70 = load i32* %arrayidx16.7.2, align 4
  %mul.7.2 = mul nsw i32 %69, %70
  %arrayidx20.7.2 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 2
  %71 = load i32* %arrayidx20.7.2, align 4
  %add.7.2 = add nsw i32 %71, %mul.7.2
  store i32 %add.7.2, i32* %arrayidx20.7.2, align 4
  br label %for.inc.7.2

for.inc.7.2:                                      ; preds = %for.inc.6.2
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %for.inc.7.2
  %arrayidx5.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3, align 4
  br label %for.body8.3

for.body8.3:                                      ; preds = %for.inc21.2
  %arrayidx12.325 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 0
  %72 = load i32* %arrayidx12.325, align 4
  %arrayidx16.326 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 3
  %73 = load i32* %arrayidx16.326, align 4
  %mul.327 = mul nsw i32 %72, %73
  %arrayidx20.330 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  %74 = load i32* %arrayidx20.330, align 4
  %add.331 = add nsw i32 %74, %mul.327
  store i32 %add.331, i32* %arrayidx20.330, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body8.3
  %arrayidx12.1.3 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 1
  %75 = load i32* %arrayidx12.1.3, align 4
  %arrayidx15.1.3 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3, i32 0, i64 3
  %76 = load i32* %arrayidx16.1.3, align 4
  %mul.1.3 = mul nsw i32 %75, %76
  %arrayidx20.1.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  %77 = load i32* %arrayidx20.1.3, align 4
  %add.1.3 = add nsw i32 %77, %mul.1.3
  store i32 %add.1.3, i32* %arrayidx20.1.3, align 4
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %for.inc.332
  %arrayidx12.2.3 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 2
  %78 = load i32* %arrayidx12.2.3, align 4
  %arrayidx15.2.3 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3, i32 0, i64 3
  %79 = load i32* %arrayidx16.2.3, align 4
  %mul.2.3 = mul nsw i32 %78, %79
  %arrayidx20.2.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  %80 = load i32* %arrayidx20.2.3, align 4
  %add.2.3 = add nsw i32 %80, %mul.2.3
  store i32 %add.2.3, i32* %arrayidx20.2.3, align 4
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %for.inc.1.3
  %arrayidx12.3.3 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 3
  %81 = load i32* %arrayidx12.3.3, align 4
  %arrayidx15.3.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3, i32 0, i64 3
  %82 = load i32* %arrayidx16.3.3, align 4
  %mul.3.3 = mul nsw i32 %81, %82
  %arrayidx20.3.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  %83 = load i32* %arrayidx20.3.3, align 4
  %add.3.3 = add nsw i32 %83, %mul.3.3
  store i32 %add.3.3, i32* %arrayidx20.3.3, align 4
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %for.inc.2.3
  %arrayidx12.4.3 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 4
  %84 = load i32* %arrayidx12.4.3, align 4
  %arrayidx15.4.3 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3, i32 0, i64 3
  %85 = load i32* %arrayidx16.4.3, align 4
  %mul.4.3 = mul nsw i32 %84, %85
  %arrayidx20.4.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  %86 = load i32* %arrayidx20.4.3, align 4
  %add.4.3 = add nsw i32 %86, %mul.4.3
  store i32 %add.4.3, i32* %arrayidx20.4.3, align 4
  br label %for.inc.4.3

for.inc.4.3:                                      ; preds = %for.inc.3.3
  %arrayidx12.5.3 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 5
  %87 = load i32* %arrayidx12.5.3, align 4
  %arrayidx15.5.3 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3, i32 0, i64 3
  %88 = load i32* %arrayidx16.5.3, align 4
  %mul.5.3 = mul nsw i32 %87, %88
  %arrayidx20.5.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  %89 = load i32* %arrayidx20.5.3, align 4
  %add.5.3 = add nsw i32 %89, %mul.5.3
  store i32 %add.5.3, i32* %arrayidx20.5.3, align 4
  br label %for.inc.5.3

for.inc.5.3:                                      ; preds = %for.inc.4.3
  %arrayidx12.6.3 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 6
  %90 = load i32* %arrayidx12.6.3, align 4
  %arrayidx15.6.3 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3, i32 0, i64 3
  %91 = load i32* %arrayidx16.6.3, align 4
  %mul.6.3 = mul nsw i32 %90, %91
  %arrayidx20.6.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  %92 = load i32* %arrayidx20.6.3, align 4
  %add.6.3 = add nsw i32 %92, %mul.6.3
  store i32 %add.6.3, i32* %arrayidx20.6.3, align 4
  br label %for.inc.6.3

for.inc.6.3:                                      ; preds = %for.inc.5.3
  %arrayidx12.7.3 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 7
  %93 = load i32* %arrayidx12.7.3, align 4
  %arrayidx15.7.3 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3, i32 0, i64 3
  %94 = load i32* %arrayidx16.7.3, align 4
  %mul.7.3 = mul nsw i32 %93, %94
  %arrayidx20.7.3 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 3
  %95 = load i32* %arrayidx20.7.3, align 4
  %add.7.3 = add nsw i32 %95, %mul.7.3
  store i32 %add.7.3, i32* %arrayidx20.7.3, align 4
  br label %for.inc.7.3

for.inc.7.3:                                      ; preds = %for.inc.6.3
  br label %for.inc21.3

for.inc21.3:                                      ; preds = %for.inc.7.3
  %arrayidx5.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4, align 4
  br label %for.body8.4

for.body8.4:                                      ; preds = %for.inc21.3
  %arrayidx12.435 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 0
  %96 = load i32* %arrayidx12.435, align 4
  %arrayidx16.436 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 4
  %97 = load i32* %arrayidx16.436, align 4
  %mul.437 = mul nsw i32 %96, %97
  %arrayidx20.440 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  %98 = load i32* %arrayidx20.440, align 4
  %add.441 = add nsw i32 %98, %mul.437
  store i32 %add.441, i32* %arrayidx20.440, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body8.4
  %arrayidx12.1.4 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 1
  %99 = load i32* %arrayidx12.1.4, align 4
  %arrayidx15.1.4 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4, i32 0, i64 4
  %100 = load i32* %arrayidx16.1.4, align 4
  %mul.1.4 = mul nsw i32 %99, %100
  %arrayidx20.1.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  %101 = load i32* %arrayidx20.1.4, align 4
  %add.1.4 = add nsw i32 %101, %mul.1.4
  store i32 %add.1.4, i32* %arrayidx20.1.4, align 4
  br label %for.inc.1.4

for.inc.1.4:                                      ; preds = %for.inc.442
  %arrayidx12.2.4 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 2
  %102 = load i32* %arrayidx12.2.4, align 4
  %arrayidx15.2.4 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4, i32 0, i64 4
  %103 = load i32* %arrayidx16.2.4, align 4
  %mul.2.4 = mul nsw i32 %102, %103
  %arrayidx20.2.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  %104 = load i32* %arrayidx20.2.4, align 4
  %add.2.4 = add nsw i32 %104, %mul.2.4
  store i32 %add.2.4, i32* %arrayidx20.2.4, align 4
  br label %for.inc.2.4

for.inc.2.4:                                      ; preds = %for.inc.1.4
  %arrayidx12.3.4 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 3
  %105 = load i32* %arrayidx12.3.4, align 4
  %arrayidx15.3.4 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4, i32 0, i64 4
  %106 = load i32* %arrayidx16.3.4, align 4
  %mul.3.4 = mul nsw i32 %105, %106
  %arrayidx20.3.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  %107 = load i32* %arrayidx20.3.4, align 4
  %add.3.4 = add nsw i32 %107, %mul.3.4
  store i32 %add.3.4, i32* %arrayidx20.3.4, align 4
  br label %for.inc.3.4

for.inc.3.4:                                      ; preds = %for.inc.2.4
  %arrayidx12.4.4 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 4
  %108 = load i32* %arrayidx12.4.4, align 4
  %arrayidx15.4.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4, i32 0, i64 4
  %109 = load i32* %arrayidx16.4.4, align 4
  %mul.4.4 = mul nsw i32 %108, %109
  %arrayidx20.4.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  %110 = load i32* %arrayidx20.4.4, align 4
  %add.4.4 = add nsw i32 %110, %mul.4.4
  store i32 %add.4.4, i32* %arrayidx20.4.4, align 4
  br label %for.inc.4.4

for.inc.4.4:                                      ; preds = %for.inc.3.4
  %arrayidx12.5.4 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 5
  %111 = load i32* %arrayidx12.5.4, align 4
  %arrayidx15.5.4 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4, i32 0, i64 4
  %112 = load i32* %arrayidx16.5.4, align 4
  %mul.5.4 = mul nsw i32 %111, %112
  %arrayidx20.5.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  %113 = load i32* %arrayidx20.5.4, align 4
  %add.5.4 = add nsw i32 %113, %mul.5.4
  store i32 %add.5.4, i32* %arrayidx20.5.4, align 4
  br label %for.inc.5.4

for.inc.5.4:                                      ; preds = %for.inc.4.4
  %arrayidx12.6.4 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 6
  %114 = load i32* %arrayidx12.6.4, align 4
  %arrayidx15.6.4 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4, i32 0, i64 4
  %115 = load i32* %arrayidx16.6.4, align 4
  %mul.6.4 = mul nsw i32 %114, %115
  %arrayidx20.6.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  %116 = load i32* %arrayidx20.6.4, align 4
  %add.6.4 = add nsw i32 %116, %mul.6.4
  store i32 %add.6.4, i32* %arrayidx20.6.4, align 4
  br label %for.inc.6.4

for.inc.6.4:                                      ; preds = %for.inc.5.4
  %arrayidx12.7.4 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 7
  %117 = load i32* %arrayidx12.7.4, align 4
  %arrayidx15.7.4 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4, i32 0, i64 4
  %118 = load i32* %arrayidx16.7.4, align 4
  %mul.7.4 = mul nsw i32 %117, %118
  %arrayidx20.7.4 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 4
  %119 = load i32* %arrayidx20.7.4, align 4
  %add.7.4 = add nsw i32 %119, %mul.7.4
  store i32 %add.7.4, i32* %arrayidx20.7.4, align 4
  br label %for.inc.7.4

for.inc.7.4:                                      ; preds = %for.inc.6.4
  br label %for.inc21.4

for.inc21.4:                                      ; preds = %for.inc.7.4
  %arrayidx5.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5, align 4
  br label %for.body8.5

for.body8.5:                                      ; preds = %for.inc21.4
  %arrayidx12.545 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 0
  %120 = load i32* %arrayidx12.545, align 4
  %arrayidx16.546 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 5
  %121 = load i32* %arrayidx16.546, align 4
  %mul.547 = mul nsw i32 %120, %121
  %arrayidx20.550 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  %122 = load i32* %arrayidx20.550, align 4
  %add.551 = add nsw i32 %122, %mul.547
  store i32 %add.551, i32* %arrayidx20.550, align 4
  br label %for.inc.552

for.inc.552:                                      ; preds = %for.body8.5
  %arrayidx12.1.5 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 1
  %123 = load i32* %arrayidx12.1.5, align 4
  %arrayidx15.1.5 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5, i32 0, i64 5
  %124 = load i32* %arrayidx16.1.5, align 4
  %mul.1.5 = mul nsw i32 %123, %124
  %arrayidx20.1.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  %125 = load i32* %arrayidx20.1.5, align 4
  %add.1.5 = add nsw i32 %125, %mul.1.5
  store i32 %add.1.5, i32* %arrayidx20.1.5, align 4
  br label %for.inc.1.5

for.inc.1.5:                                      ; preds = %for.inc.552
  %arrayidx12.2.5 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 2
  %126 = load i32* %arrayidx12.2.5, align 4
  %arrayidx15.2.5 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5, i32 0, i64 5
  %127 = load i32* %arrayidx16.2.5, align 4
  %mul.2.5 = mul nsw i32 %126, %127
  %arrayidx20.2.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  %128 = load i32* %arrayidx20.2.5, align 4
  %add.2.5 = add nsw i32 %128, %mul.2.5
  store i32 %add.2.5, i32* %arrayidx20.2.5, align 4
  br label %for.inc.2.5

for.inc.2.5:                                      ; preds = %for.inc.1.5
  %arrayidx12.3.5 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 3
  %129 = load i32* %arrayidx12.3.5, align 4
  %arrayidx15.3.5 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5, i32 0, i64 5
  %130 = load i32* %arrayidx16.3.5, align 4
  %mul.3.5 = mul nsw i32 %129, %130
  %arrayidx20.3.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  %131 = load i32* %arrayidx20.3.5, align 4
  %add.3.5 = add nsw i32 %131, %mul.3.5
  store i32 %add.3.5, i32* %arrayidx20.3.5, align 4
  br label %for.inc.3.5

for.inc.3.5:                                      ; preds = %for.inc.2.5
  %arrayidx12.4.5 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 4
  %132 = load i32* %arrayidx12.4.5, align 4
  %arrayidx15.4.5 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5, i32 0, i64 5
  %133 = load i32* %arrayidx16.4.5, align 4
  %mul.4.5 = mul nsw i32 %132, %133
  %arrayidx20.4.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  %134 = load i32* %arrayidx20.4.5, align 4
  %add.4.5 = add nsw i32 %134, %mul.4.5
  store i32 %add.4.5, i32* %arrayidx20.4.5, align 4
  br label %for.inc.4.5

for.inc.4.5:                                      ; preds = %for.inc.3.5
  %arrayidx12.5.5 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 5
  %135 = load i32* %arrayidx12.5.5, align 4
  %arrayidx15.5.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5, i32 0, i64 5
  %136 = load i32* %arrayidx16.5.5, align 4
  %mul.5.5 = mul nsw i32 %135, %136
  %arrayidx20.5.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  %137 = load i32* %arrayidx20.5.5, align 4
  %add.5.5 = add nsw i32 %137, %mul.5.5
  store i32 %add.5.5, i32* %arrayidx20.5.5, align 4
  br label %for.inc.5.5

for.inc.5.5:                                      ; preds = %for.inc.4.5
  %arrayidx12.6.5 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 6
  %138 = load i32* %arrayidx12.6.5, align 4
  %arrayidx15.6.5 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5, i32 0, i64 5
  %139 = load i32* %arrayidx16.6.5, align 4
  %mul.6.5 = mul nsw i32 %138, %139
  %arrayidx20.6.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  %140 = load i32* %arrayidx20.6.5, align 4
  %add.6.5 = add nsw i32 %140, %mul.6.5
  store i32 %add.6.5, i32* %arrayidx20.6.5, align 4
  br label %for.inc.6.5

for.inc.6.5:                                      ; preds = %for.inc.5.5
  %arrayidx12.7.5 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 7
  %141 = load i32* %arrayidx12.7.5, align 4
  %arrayidx15.7.5 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5, i32 0, i64 5
  %142 = load i32* %arrayidx16.7.5, align 4
  %mul.7.5 = mul nsw i32 %141, %142
  %arrayidx20.7.5 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 5
  %143 = load i32* %arrayidx20.7.5, align 4
  %add.7.5 = add nsw i32 %143, %mul.7.5
  store i32 %add.7.5, i32* %arrayidx20.7.5, align 4
  br label %for.inc.7.5

for.inc.7.5:                                      ; preds = %for.inc.6.5
  br label %for.inc21.5

for.inc21.5:                                      ; preds = %for.inc.7.5
  %arrayidx5.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6, align 4
  br label %for.body8.6

for.body8.6:                                      ; preds = %for.inc21.5
  %arrayidx12.655 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 0
  %144 = load i32* %arrayidx12.655, align 4
  %arrayidx16.656 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 6
  %145 = load i32* %arrayidx16.656, align 4
  %mul.657 = mul nsw i32 %144, %145
  %arrayidx20.660 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  %146 = load i32* %arrayidx20.660, align 4
  %add.661 = add nsw i32 %146, %mul.657
  store i32 %add.661, i32* %arrayidx20.660, align 4
  br label %for.inc.662

for.inc.662:                                      ; preds = %for.body8.6
  %arrayidx12.1.6 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 1
  %147 = load i32* %arrayidx12.1.6, align 4
  %arrayidx15.1.6 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6, i32 0, i64 6
  %148 = load i32* %arrayidx16.1.6, align 4
  %mul.1.6 = mul nsw i32 %147, %148
  %arrayidx20.1.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  %149 = load i32* %arrayidx20.1.6, align 4
  %add.1.6 = add nsw i32 %149, %mul.1.6
  store i32 %add.1.6, i32* %arrayidx20.1.6, align 4
  br label %for.inc.1.6

for.inc.1.6:                                      ; preds = %for.inc.662
  %arrayidx12.2.6 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 2
  %150 = load i32* %arrayidx12.2.6, align 4
  %arrayidx15.2.6 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6, i32 0, i64 6
  %151 = load i32* %arrayidx16.2.6, align 4
  %mul.2.6 = mul nsw i32 %150, %151
  %arrayidx20.2.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  %152 = load i32* %arrayidx20.2.6, align 4
  %add.2.6 = add nsw i32 %152, %mul.2.6
  store i32 %add.2.6, i32* %arrayidx20.2.6, align 4
  br label %for.inc.2.6

for.inc.2.6:                                      ; preds = %for.inc.1.6
  %arrayidx12.3.6 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 3
  %153 = load i32* %arrayidx12.3.6, align 4
  %arrayidx15.3.6 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6, i32 0, i64 6
  %154 = load i32* %arrayidx16.3.6, align 4
  %mul.3.6 = mul nsw i32 %153, %154
  %arrayidx20.3.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  %155 = load i32* %arrayidx20.3.6, align 4
  %add.3.6 = add nsw i32 %155, %mul.3.6
  store i32 %add.3.6, i32* %arrayidx20.3.6, align 4
  br label %for.inc.3.6

for.inc.3.6:                                      ; preds = %for.inc.2.6
  %arrayidx12.4.6 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 4
  %156 = load i32* %arrayidx12.4.6, align 4
  %arrayidx15.4.6 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6, i32 0, i64 6
  %157 = load i32* %arrayidx16.4.6, align 4
  %mul.4.6 = mul nsw i32 %156, %157
  %arrayidx20.4.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  %158 = load i32* %arrayidx20.4.6, align 4
  %add.4.6 = add nsw i32 %158, %mul.4.6
  store i32 %add.4.6, i32* %arrayidx20.4.6, align 4
  br label %for.inc.4.6

for.inc.4.6:                                      ; preds = %for.inc.3.6
  %arrayidx12.5.6 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 5
  %159 = load i32* %arrayidx12.5.6, align 4
  %arrayidx15.5.6 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6, i32 0, i64 6
  %160 = load i32* %arrayidx16.5.6, align 4
  %mul.5.6 = mul nsw i32 %159, %160
  %arrayidx20.5.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  %161 = load i32* %arrayidx20.5.6, align 4
  %add.5.6 = add nsw i32 %161, %mul.5.6
  store i32 %add.5.6, i32* %arrayidx20.5.6, align 4
  br label %for.inc.5.6

for.inc.5.6:                                      ; preds = %for.inc.4.6
  %arrayidx12.6.6 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 6
  %162 = load i32* %arrayidx12.6.6, align 4
  %arrayidx15.6.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6, i32 0, i64 6
  %163 = load i32* %arrayidx16.6.6, align 4
  %mul.6.6 = mul nsw i32 %162, %163
  %arrayidx20.6.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  %164 = load i32* %arrayidx20.6.6, align 4
  %add.6.6 = add nsw i32 %164, %mul.6.6
  store i32 %add.6.6, i32* %arrayidx20.6.6, align 4
  br label %for.inc.6.6

for.inc.6.6:                                      ; preds = %for.inc.5.6
  %arrayidx12.7.6 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 7
  %165 = load i32* %arrayidx12.7.6, align 4
  %arrayidx15.7.6 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6, i32 0, i64 6
  %166 = load i32* %arrayidx16.7.6, align 4
  %mul.7.6 = mul nsw i32 %165, %166
  %arrayidx20.7.6 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 6
  %167 = load i32* %arrayidx20.7.6, align 4
  %add.7.6 = add nsw i32 %167, %mul.7.6
  store i32 %add.7.6, i32* %arrayidx20.7.6, align 4
  br label %for.inc.7.6

for.inc.7.6:                                      ; preds = %for.inc.6.6
  br label %for.inc21.6

for.inc21.6:                                      ; preds = %for.inc.7.6
  %arrayidx5.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7, align 4
  br label %for.body8.7

for.body8.7:                                      ; preds = %for.inc21.6
  %arrayidx12.765 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 0
  %168 = load i32* %arrayidx12.765, align 4
  %arrayidx16.766 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 7
  %169 = load i32* %arrayidx16.766, align 4
  %mul.767 = mul nsw i32 %168, %169
  %arrayidx20.770 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  %170 = load i32* %arrayidx20.770, align 4
  %add.771 = add nsw i32 %170, %mul.767
  store i32 %add.771, i32* %arrayidx20.770, align 4
  br label %for.inc.772

for.inc.772:                                      ; preds = %for.body8.7
  %arrayidx12.1.7 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 1
  %171 = load i32* %arrayidx12.1.7, align 4
  %arrayidx15.1.7 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7, i32 0, i64 7
  %172 = load i32* %arrayidx16.1.7, align 4
  %mul.1.7 = mul nsw i32 %171, %172
  %arrayidx20.1.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  %173 = load i32* %arrayidx20.1.7, align 4
  %add.1.7 = add nsw i32 %173, %mul.1.7
  store i32 %add.1.7, i32* %arrayidx20.1.7, align 4
  br label %for.inc.1.7

for.inc.1.7:                                      ; preds = %for.inc.772
  %arrayidx12.2.7 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 2
  %174 = load i32* %arrayidx12.2.7, align 4
  %arrayidx15.2.7 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7, i32 0, i64 7
  %175 = load i32* %arrayidx16.2.7, align 4
  %mul.2.7 = mul nsw i32 %174, %175
  %arrayidx20.2.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  %176 = load i32* %arrayidx20.2.7, align 4
  %add.2.7 = add nsw i32 %176, %mul.2.7
  store i32 %add.2.7, i32* %arrayidx20.2.7, align 4
  br label %for.inc.2.7

for.inc.2.7:                                      ; preds = %for.inc.1.7
  %arrayidx12.3.7 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 3
  %177 = load i32* %arrayidx12.3.7, align 4
  %arrayidx15.3.7 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7, i32 0, i64 7
  %178 = load i32* %arrayidx16.3.7, align 4
  %mul.3.7 = mul nsw i32 %177, %178
  %arrayidx20.3.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  %179 = load i32* %arrayidx20.3.7, align 4
  %add.3.7 = add nsw i32 %179, %mul.3.7
  store i32 %add.3.7, i32* %arrayidx20.3.7, align 4
  br label %for.inc.3.7

for.inc.3.7:                                      ; preds = %for.inc.2.7
  %arrayidx12.4.7 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 4
  %180 = load i32* %arrayidx12.4.7, align 4
  %arrayidx15.4.7 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7, i32 0, i64 7
  %181 = load i32* %arrayidx16.4.7, align 4
  %mul.4.7 = mul nsw i32 %180, %181
  %arrayidx20.4.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  %182 = load i32* %arrayidx20.4.7, align 4
  %add.4.7 = add nsw i32 %182, %mul.4.7
  store i32 %add.4.7, i32* %arrayidx20.4.7, align 4
  br label %for.inc.4.7

for.inc.4.7:                                      ; preds = %for.inc.3.7
  %arrayidx12.5.7 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 5
  %183 = load i32* %arrayidx12.5.7, align 4
  %arrayidx15.5.7 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7, i32 0, i64 7
  %184 = load i32* %arrayidx16.5.7, align 4
  %mul.5.7 = mul nsw i32 %183, %184
  %arrayidx20.5.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  %185 = load i32* %arrayidx20.5.7, align 4
  %add.5.7 = add nsw i32 %185, %mul.5.7
  store i32 %add.5.7, i32* %arrayidx20.5.7, align 4
  br label %for.inc.5.7

for.inc.5.7:                                      ; preds = %for.inc.4.7
  %arrayidx12.6.7 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 6
  %186 = load i32* %arrayidx12.6.7, align 4
  %arrayidx15.6.7 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7, i32 0, i64 7
  %187 = load i32* %arrayidx16.6.7, align 4
  %mul.6.7 = mul nsw i32 %186, %187
  %arrayidx20.6.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  %188 = load i32* %arrayidx20.6.7, align 4
  %add.6.7 = add nsw i32 %188, %mul.6.7
  store i32 %add.6.7, i32* %arrayidx20.6.7, align 4
  br label %for.inc.6.7

for.inc.6.7:                                      ; preds = %for.inc.5.7
  %arrayidx12.7.7 = getelementptr inbounds [8 x i32]* %a, i32 0, i64 7
  %189 = load i32* %arrayidx12.7.7, align 4
  %arrayidx15.7.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7, i32 0, i64 7
  %190 = load i32* %arrayidx16.7.7, align 4
  %mul.7.7 = mul nsw i32 %189, %190
  %arrayidx20.7.7 = getelementptr inbounds [8 x i32]* %c, i32 0, i64 7
  %191 = load i32* %arrayidx20.7.7, align 4
  %add.7.7 = add nsw i32 %191, %mul.7.7
  store i32 %add.7.7, i32* %arrayidx20.7.7, align 4
  br label %for.inc.7.7

for.inc.7.7:                                      ; preds = %for.inc.6.7
  br label %for.inc21.7

for.inc21.7:                                      ; preds = %for.inc.7.7
  br label %for.inc24

for.body3.1:                                      ; preds = %for.inc24
  %arrayidx.174 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx5.175 = getelementptr inbounds [8 x i32]* %arrayidx.174, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.175, align 4
  br label %for.body8.183

for.body8.183:                                    ; preds = %for.body3.1
  %arrayidx11.176 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.177 = getelementptr inbounds [8 x i32]* %arrayidx11.176, i32 0, i64 0
  %192 = load i32* %arrayidx12.177, align 4
  %arrayidx16.178 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 0
  %193 = load i32* %arrayidx16.178, align 4
  %mul.179 = mul nsw i32 %192, %193
  %arrayidx19.180 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.181 = getelementptr inbounds [8 x i32]* %arrayidx19.180, i32 0, i64 0
  %194 = load i32* %arrayidx20.181, align 4
  %add.182 = add nsw i32 %194, %mul.179
  store i32 %add.182, i32* %arrayidx20.181, align 4
  br label %for.inc.192

for.inc.192:                                      ; preds = %for.body8.183
  %arrayidx11.1.184 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.1.185 = getelementptr inbounds [8 x i32]* %arrayidx11.1.184, i32 0, i64 1
  %195 = load i32* %arrayidx12.1.185, align 4
  %arrayidx15.1.186 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.187 = getelementptr inbounds [8 x i32]* %arrayidx15.1.186, i32 0, i64 0
  %196 = load i32* %arrayidx16.1.187, align 4
  %mul.1.188 = mul nsw i32 %195, %196
  %arrayidx19.1.189 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.1.190 = getelementptr inbounds [8 x i32]* %arrayidx19.1.189, i32 0, i64 0
  %197 = load i32* %arrayidx20.1.190, align 4
  %add.1.191 = add nsw i32 %197, %mul.1.188
  store i32 %add.1.191, i32* %arrayidx20.1.190, align 4
  br label %for.inc.1.1101

for.inc.1.1101:                                   ; preds = %for.inc.192
  %arrayidx11.2.193 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.2.194 = getelementptr inbounds [8 x i32]* %arrayidx11.2.193, i32 0, i64 2
  %198 = load i32* %arrayidx12.2.194, align 4
  %arrayidx15.2.195 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.196 = getelementptr inbounds [8 x i32]* %arrayidx15.2.195, i32 0, i64 0
  %199 = load i32* %arrayidx16.2.196, align 4
  %mul.2.197 = mul nsw i32 %198, %199
  %arrayidx19.2.198 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.2.199 = getelementptr inbounds [8 x i32]* %arrayidx19.2.198, i32 0, i64 0
  %200 = load i32* %arrayidx20.2.199, align 4
  %add.2.1100 = add nsw i32 %200, %mul.2.197
  store i32 %add.2.1100, i32* %arrayidx20.2.199, align 4
  br label %for.inc.2.1110

for.inc.2.1110:                                   ; preds = %for.inc.1.1101
  %arrayidx11.3.1102 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.3.1103 = getelementptr inbounds [8 x i32]* %arrayidx11.3.1102, i32 0, i64 3
  %201 = load i32* %arrayidx12.3.1103, align 4
  %arrayidx15.3.1104 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1105 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1104, i32 0, i64 0
  %202 = load i32* %arrayidx16.3.1105, align 4
  %mul.3.1106 = mul nsw i32 %201, %202
  %arrayidx19.3.1107 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.3.1108 = getelementptr inbounds [8 x i32]* %arrayidx19.3.1107, i32 0, i64 0
  %203 = load i32* %arrayidx20.3.1108, align 4
  %add.3.1109 = add nsw i32 %203, %mul.3.1106
  store i32 %add.3.1109, i32* %arrayidx20.3.1108, align 4
  br label %for.inc.3.1119

for.inc.3.1119:                                   ; preds = %for.inc.2.1110
  %arrayidx11.4.1111 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.4.1112 = getelementptr inbounds [8 x i32]* %arrayidx11.4.1111, i32 0, i64 4
  %204 = load i32* %arrayidx12.4.1112, align 4
  %arrayidx15.4.1113 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1114 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1113, i32 0, i64 0
  %205 = load i32* %arrayidx16.4.1114, align 4
  %mul.4.1115 = mul nsw i32 %204, %205
  %arrayidx19.4.1116 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.4.1117 = getelementptr inbounds [8 x i32]* %arrayidx19.4.1116, i32 0, i64 0
  %206 = load i32* %arrayidx20.4.1117, align 4
  %add.4.1118 = add nsw i32 %206, %mul.4.1115
  store i32 %add.4.1118, i32* %arrayidx20.4.1117, align 4
  br label %for.inc.4.1128

for.inc.4.1128:                                   ; preds = %for.inc.3.1119
  %arrayidx11.5.1120 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.5.1121 = getelementptr inbounds [8 x i32]* %arrayidx11.5.1120, i32 0, i64 5
  %207 = load i32* %arrayidx12.5.1121, align 4
  %arrayidx15.5.1122 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1123 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1122, i32 0, i64 0
  %208 = load i32* %arrayidx16.5.1123, align 4
  %mul.5.1124 = mul nsw i32 %207, %208
  %arrayidx19.5.1125 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.5.1126 = getelementptr inbounds [8 x i32]* %arrayidx19.5.1125, i32 0, i64 0
  %209 = load i32* %arrayidx20.5.1126, align 4
  %add.5.1127 = add nsw i32 %209, %mul.5.1124
  store i32 %add.5.1127, i32* %arrayidx20.5.1126, align 4
  br label %for.inc.5.1137

for.inc.5.1137:                                   ; preds = %for.inc.4.1128
  %arrayidx11.6.1129 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.6.1130 = getelementptr inbounds [8 x i32]* %arrayidx11.6.1129, i32 0, i64 6
  %210 = load i32* %arrayidx12.6.1130, align 4
  %arrayidx15.6.1131 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1132 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1131, i32 0, i64 0
  %211 = load i32* %arrayidx16.6.1132, align 4
  %mul.6.1133 = mul nsw i32 %210, %211
  %arrayidx19.6.1134 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.6.1135 = getelementptr inbounds [8 x i32]* %arrayidx19.6.1134, i32 0, i64 0
  %212 = load i32* %arrayidx20.6.1135, align 4
  %add.6.1136 = add nsw i32 %212, %mul.6.1133
  store i32 %add.6.1136, i32* %arrayidx20.6.1135, align 4
  br label %for.inc.6.1146

for.inc.6.1146:                                   ; preds = %for.inc.5.1137
  %arrayidx11.7.1138 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.7.1139 = getelementptr inbounds [8 x i32]* %arrayidx11.7.1138, i32 0, i64 7
  %213 = load i32* %arrayidx12.7.1139, align 4
  %arrayidx15.7.1140 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1141 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1140, i32 0, i64 0
  %214 = load i32* %arrayidx16.7.1141, align 4
  %mul.7.1142 = mul nsw i32 %213, %214
  %arrayidx19.7.1143 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.7.1144 = getelementptr inbounds [8 x i32]* %arrayidx19.7.1143, i32 0, i64 0
  %215 = load i32* %arrayidx20.7.1144, align 4
  %add.7.1145 = add nsw i32 %215, %mul.7.1142
  store i32 %add.7.1145, i32* %arrayidx20.7.1144, align 4
  br label %for.inc.7.1147

for.inc.7.1147:                                   ; preds = %for.inc.6.1146
  br label %for.inc21.1148

for.inc21.1148:                                   ; preds = %for.inc.7.1147
  %arrayidx.1.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [8 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  br label %for.body8.1.1

for.body8.1.1:                                    ; preds = %for.inc21.1148
  %arrayidx11.14.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [8 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %216 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 1
  %217 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %216, %217
  %arrayidx19.19.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [8 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %218 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %218, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  br label %for.inc.112.1

for.inc.112.1:                                    ; preds = %for.body8.1.1
  %arrayidx11.1.1.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [8 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %219 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %220 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %219, %220
  %arrayidx19.1.1.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [8 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %221 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %221, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  br label %for.inc.1.1.1

for.inc.1.1.1:                                    ; preds = %for.inc.112.1
  %arrayidx11.2.1.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.2.1.1 = getelementptr inbounds [8 x i32]* %arrayidx11.2.1.1, i32 0, i64 2
  %222 = load i32* %arrayidx12.2.1.1, align 4
  %arrayidx15.2.1.1 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.1.1 = getelementptr inbounds [8 x i32]* %arrayidx15.2.1.1, i32 0, i64 1
  %223 = load i32* %arrayidx16.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %222, %223
  %arrayidx19.2.1.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.2.1.1 = getelementptr inbounds [8 x i32]* %arrayidx19.2.1.1, i32 0, i64 1
  %224 = load i32* %arrayidx20.2.1.1, align 4
  %add.2.1.1 = add nsw i32 %224, %mul.2.1.1
  store i32 %add.2.1.1, i32* %arrayidx20.2.1.1, align 4
  br label %for.inc.2.1.1

for.inc.2.1.1:                                    ; preds = %for.inc.1.1.1
  %arrayidx11.3.1.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.3.1.1 = getelementptr inbounds [8 x i32]* %arrayidx11.3.1.1, i32 0, i64 3
  %225 = load i32* %arrayidx12.3.1.1, align 4
  %arrayidx15.3.1.1 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1.1 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1.1, i32 0, i64 1
  %226 = load i32* %arrayidx16.3.1.1, align 4
  %mul.3.1.1 = mul nsw i32 %225, %226
  %arrayidx19.3.1.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.3.1.1 = getelementptr inbounds [8 x i32]* %arrayidx19.3.1.1, i32 0, i64 1
  %227 = load i32* %arrayidx20.3.1.1, align 4
  %add.3.1.1 = add nsw i32 %227, %mul.3.1.1
  store i32 %add.3.1.1, i32* %arrayidx20.3.1.1, align 4
  br label %for.inc.3.1.1

for.inc.3.1.1:                                    ; preds = %for.inc.2.1.1
  %arrayidx11.4.1.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.4.1.1 = getelementptr inbounds [8 x i32]* %arrayidx11.4.1.1, i32 0, i64 4
  %228 = load i32* %arrayidx12.4.1.1, align 4
  %arrayidx15.4.1.1 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1.1 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1.1, i32 0, i64 1
  %229 = load i32* %arrayidx16.4.1.1, align 4
  %mul.4.1.1 = mul nsw i32 %228, %229
  %arrayidx19.4.1.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.4.1.1 = getelementptr inbounds [8 x i32]* %arrayidx19.4.1.1, i32 0, i64 1
  %230 = load i32* %arrayidx20.4.1.1, align 4
  %add.4.1.1 = add nsw i32 %230, %mul.4.1.1
  store i32 %add.4.1.1, i32* %arrayidx20.4.1.1, align 4
  br label %for.inc.4.1.1

for.inc.4.1.1:                                    ; preds = %for.inc.3.1.1
  %arrayidx11.5.1.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.5.1.1 = getelementptr inbounds [8 x i32]* %arrayidx11.5.1.1, i32 0, i64 5
  %231 = load i32* %arrayidx12.5.1.1, align 4
  %arrayidx15.5.1.1 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1.1 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1.1, i32 0, i64 1
  %232 = load i32* %arrayidx16.5.1.1, align 4
  %mul.5.1.1 = mul nsw i32 %231, %232
  %arrayidx19.5.1.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.5.1.1 = getelementptr inbounds [8 x i32]* %arrayidx19.5.1.1, i32 0, i64 1
  %233 = load i32* %arrayidx20.5.1.1, align 4
  %add.5.1.1 = add nsw i32 %233, %mul.5.1.1
  store i32 %add.5.1.1, i32* %arrayidx20.5.1.1, align 4
  br label %for.inc.5.1.1

for.inc.5.1.1:                                    ; preds = %for.inc.4.1.1
  %arrayidx11.6.1.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.6.1.1 = getelementptr inbounds [8 x i32]* %arrayidx11.6.1.1, i32 0, i64 6
  %234 = load i32* %arrayidx12.6.1.1, align 4
  %arrayidx15.6.1.1 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1.1 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1.1, i32 0, i64 1
  %235 = load i32* %arrayidx16.6.1.1, align 4
  %mul.6.1.1 = mul nsw i32 %234, %235
  %arrayidx19.6.1.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.6.1.1 = getelementptr inbounds [8 x i32]* %arrayidx19.6.1.1, i32 0, i64 1
  %236 = load i32* %arrayidx20.6.1.1, align 4
  %add.6.1.1 = add nsw i32 %236, %mul.6.1.1
  store i32 %add.6.1.1, i32* %arrayidx20.6.1.1, align 4
  br label %for.inc.6.1.1

for.inc.6.1.1:                                    ; preds = %for.inc.5.1.1
  %arrayidx11.7.1.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.7.1.1 = getelementptr inbounds [8 x i32]* %arrayidx11.7.1.1, i32 0, i64 7
  %237 = load i32* %arrayidx12.7.1.1, align 4
  %arrayidx15.7.1.1 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1.1 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1.1, i32 0, i64 1
  %238 = load i32* %arrayidx16.7.1.1, align 4
  %mul.7.1.1 = mul nsw i32 %237, %238
  %arrayidx19.7.1.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.7.1.1 = getelementptr inbounds [8 x i32]* %arrayidx19.7.1.1, i32 0, i64 1
  %239 = load i32* %arrayidx20.7.1.1, align 4
  %add.7.1.1 = add nsw i32 %239, %mul.7.1.1
  store i32 %add.7.1.1, i32* %arrayidx20.7.1.1, align 4
  br label %for.inc.7.1.1

for.inc.7.1.1:                                    ; preds = %for.inc.6.1.1
  br label %for.inc21.1.1

for.inc21.1.1:                                    ; preds = %for.inc.7.1.1
  %arrayidx.2.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [8 x i32]* %arrayidx.2.1, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.1, align 4
  br label %for.body8.2.1

for.body8.2.1:                                    ; preds = %for.inc21.1.1
  %arrayidx11.214.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.215.1 = getelementptr inbounds [8 x i32]* %arrayidx11.214.1, i32 0, i64 0
  %240 = load i32* %arrayidx12.215.1, align 4
  %arrayidx16.216.1 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 2
  %241 = load i32* %arrayidx16.216.1, align 4
  %mul.217.1 = mul nsw i32 %240, %241
  %arrayidx19.219.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.220.1 = getelementptr inbounds [8 x i32]* %arrayidx19.219.1, i32 0, i64 2
  %242 = load i32* %arrayidx20.220.1, align 4
  %add.221.1 = add nsw i32 %242, %mul.217.1
  store i32 %add.221.1, i32* %arrayidx20.220.1, align 4
  br label %for.inc.222.1

for.inc.222.1:                                    ; preds = %for.body8.2.1
  %arrayidx11.1.2.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.1.2.1 = getelementptr inbounds [8 x i32]* %arrayidx11.1.2.1, i32 0, i64 1
  %243 = load i32* %arrayidx12.1.2.1, align 4
  %arrayidx15.1.2.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2.1, i32 0, i64 2
  %244 = load i32* %arrayidx16.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %243, %244
  %arrayidx19.1.2.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.1.2.1 = getelementptr inbounds [8 x i32]* %arrayidx19.1.2.1, i32 0, i64 2
  %245 = load i32* %arrayidx20.1.2.1, align 4
  %add.1.2.1 = add nsw i32 %245, %mul.1.2.1
  store i32 %add.1.2.1, i32* %arrayidx20.1.2.1, align 4
  br label %for.inc.1.2.1

for.inc.1.2.1:                                    ; preds = %for.inc.222.1
  %arrayidx11.2.2.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.2.2.1 = getelementptr inbounds [8 x i32]* %arrayidx11.2.2.1, i32 0, i64 2
  %246 = load i32* %arrayidx12.2.2.1, align 4
  %arrayidx15.2.2.1 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2.1 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2.1, i32 0, i64 2
  %247 = load i32* %arrayidx16.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %246, %247
  %arrayidx19.2.2.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.2.2.1 = getelementptr inbounds [8 x i32]* %arrayidx19.2.2.1, i32 0, i64 2
  %248 = load i32* %arrayidx20.2.2.1, align 4
  %add.2.2.1 = add nsw i32 %248, %mul.2.2.1
  store i32 %add.2.2.1, i32* %arrayidx20.2.2.1, align 4
  br label %for.inc.2.2.1

for.inc.2.2.1:                                    ; preds = %for.inc.1.2.1
  %arrayidx11.3.2.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.3.2.1 = getelementptr inbounds [8 x i32]* %arrayidx11.3.2.1, i32 0, i64 3
  %249 = load i32* %arrayidx12.3.2.1, align 4
  %arrayidx15.3.2.1 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2.1 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2.1, i32 0, i64 2
  %250 = load i32* %arrayidx16.3.2.1, align 4
  %mul.3.2.1 = mul nsw i32 %249, %250
  %arrayidx19.3.2.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.3.2.1 = getelementptr inbounds [8 x i32]* %arrayidx19.3.2.1, i32 0, i64 2
  %251 = load i32* %arrayidx20.3.2.1, align 4
  %add.3.2.1 = add nsw i32 %251, %mul.3.2.1
  store i32 %add.3.2.1, i32* %arrayidx20.3.2.1, align 4
  br label %for.inc.3.2.1

for.inc.3.2.1:                                    ; preds = %for.inc.2.2.1
  %arrayidx11.4.2.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.4.2.1 = getelementptr inbounds [8 x i32]* %arrayidx11.4.2.1, i32 0, i64 4
  %252 = load i32* %arrayidx12.4.2.1, align 4
  %arrayidx15.4.2.1 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2.1 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2.1, i32 0, i64 2
  %253 = load i32* %arrayidx16.4.2.1, align 4
  %mul.4.2.1 = mul nsw i32 %252, %253
  %arrayidx19.4.2.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.4.2.1 = getelementptr inbounds [8 x i32]* %arrayidx19.4.2.1, i32 0, i64 2
  %254 = load i32* %arrayidx20.4.2.1, align 4
  %add.4.2.1 = add nsw i32 %254, %mul.4.2.1
  store i32 %add.4.2.1, i32* %arrayidx20.4.2.1, align 4
  br label %for.inc.4.2.1

for.inc.4.2.1:                                    ; preds = %for.inc.3.2.1
  %arrayidx11.5.2.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.5.2.1 = getelementptr inbounds [8 x i32]* %arrayidx11.5.2.1, i32 0, i64 5
  %255 = load i32* %arrayidx12.5.2.1, align 4
  %arrayidx15.5.2.1 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2.1 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2.1, i32 0, i64 2
  %256 = load i32* %arrayidx16.5.2.1, align 4
  %mul.5.2.1 = mul nsw i32 %255, %256
  %arrayidx19.5.2.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.5.2.1 = getelementptr inbounds [8 x i32]* %arrayidx19.5.2.1, i32 0, i64 2
  %257 = load i32* %arrayidx20.5.2.1, align 4
  %add.5.2.1 = add nsw i32 %257, %mul.5.2.1
  store i32 %add.5.2.1, i32* %arrayidx20.5.2.1, align 4
  br label %for.inc.5.2.1

for.inc.5.2.1:                                    ; preds = %for.inc.4.2.1
  %arrayidx11.6.2.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.6.2.1 = getelementptr inbounds [8 x i32]* %arrayidx11.6.2.1, i32 0, i64 6
  %258 = load i32* %arrayidx12.6.2.1, align 4
  %arrayidx15.6.2.1 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2.1 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2.1, i32 0, i64 2
  %259 = load i32* %arrayidx16.6.2.1, align 4
  %mul.6.2.1 = mul nsw i32 %258, %259
  %arrayidx19.6.2.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.6.2.1 = getelementptr inbounds [8 x i32]* %arrayidx19.6.2.1, i32 0, i64 2
  %260 = load i32* %arrayidx20.6.2.1, align 4
  %add.6.2.1 = add nsw i32 %260, %mul.6.2.1
  store i32 %add.6.2.1, i32* %arrayidx20.6.2.1, align 4
  br label %for.inc.6.2.1

for.inc.6.2.1:                                    ; preds = %for.inc.5.2.1
  %arrayidx11.7.2.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.7.2.1 = getelementptr inbounds [8 x i32]* %arrayidx11.7.2.1, i32 0, i64 7
  %261 = load i32* %arrayidx12.7.2.1, align 4
  %arrayidx15.7.2.1 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2.1 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2.1, i32 0, i64 2
  %262 = load i32* %arrayidx16.7.2.1, align 4
  %mul.7.2.1 = mul nsw i32 %261, %262
  %arrayidx19.7.2.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.7.2.1 = getelementptr inbounds [8 x i32]* %arrayidx19.7.2.1, i32 0, i64 2
  %263 = load i32* %arrayidx20.7.2.1, align 4
  %add.7.2.1 = add nsw i32 %263, %mul.7.2.1
  store i32 %add.7.2.1, i32* %arrayidx20.7.2.1, align 4
  br label %for.inc.7.2.1

for.inc.7.2.1:                                    ; preds = %for.inc.6.2.1
  br label %for.inc21.2.1

for.inc21.2.1:                                    ; preds = %for.inc.7.2.1
  %arrayidx.3.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx5.3.1 = getelementptr inbounds [8 x i32]* %arrayidx.3.1, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.1, align 4
  br label %for.body8.3.1

for.body8.3.1:                                    ; preds = %for.inc21.2.1
  %arrayidx11.324.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.325.1 = getelementptr inbounds [8 x i32]* %arrayidx11.324.1, i32 0, i64 0
  %264 = load i32* %arrayidx12.325.1, align 4
  %arrayidx16.326.1 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 3
  %265 = load i32* %arrayidx16.326.1, align 4
  %mul.327.1 = mul nsw i32 %264, %265
  %arrayidx19.329.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.330.1 = getelementptr inbounds [8 x i32]* %arrayidx19.329.1, i32 0, i64 3
  %266 = load i32* %arrayidx20.330.1, align 4
  %add.331.1 = add nsw i32 %266, %mul.327.1
  store i32 %add.331.1, i32* %arrayidx20.330.1, align 4
  br label %for.inc.332.1

for.inc.332.1:                                    ; preds = %for.body8.3.1
  %arrayidx11.1.3.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.1.3.1 = getelementptr inbounds [8 x i32]* %arrayidx11.1.3.1, i32 0, i64 1
  %267 = load i32* %arrayidx12.1.3.1, align 4
  %arrayidx15.1.3.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3.1, i32 0, i64 3
  %268 = load i32* %arrayidx16.1.3.1, align 4
  %mul.1.3.1 = mul nsw i32 %267, %268
  %arrayidx19.1.3.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.1.3.1 = getelementptr inbounds [8 x i32]* %arrayidx19.1.3.1, i32 0, i64 3
  %269 = load i32* %arrayidx20.1.3.1, align 4
  %add.1.3.1 = add nsw i32 %269, %mul.1.3.1
  store i32 %add.1.3.1, i32* %arrayidx20.1.3.1, align 4
  br label %for.inc.1.3.1

for.inc.1.3.1:                                    ; preds = %for.inc.332.1
  %arrayidx11.2.3.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.2.3.1 = getelementptr inbounds [8 x i32]* %arrayidx11.2.3.1, i32 0, i64 2
  %270 = load i32* %arrayidx12.2.3.1, align 4
  %arrayidx15.2.3.1 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3.1 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3.1, i32 0, i64 3
  %271 = load i32* %arrayidx16.2.3.1, align 4
  %mul.2.3.1 = mul nsw i32 %270, %271
  %arrayidx19.2.3.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.2.3.1 = getelementptr inbounds [8 x i32]* %arrayidx19.2.3.1, i32 0, i64 3
  %272 = load i32* %arrayidx20.2.3.1, align 4
  %add.2.3.1 = add nsw i32 %272, %mul.2.3.1
  store i32 %add.2.3.1, i32* %arrayidx20.2.3.1, align 4
  br label %for.inc.2.3.1

for.inc.2.3.1:                                    ; preds = %for.inc.1.3.1
  %arrayidx11.3.3.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.3.3.1 = getelementptr inbounds [8 x i32]* %arrayidx11.3.3.1, i32 0, i64 3
  %273 = load i32* %arrayidx12.3.3.1, align 4
  %arrayidx15.3.3.1 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3.1 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3.1, i32 0, i64 3
  %274 = load i32* %arrayidx16.3.3.1, align 4
  %mul.3.3.1 = mul nsw i32 %273, %274
  %arrayidx19.3.3.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.3.3.1 = getelementptr inbounds [8 x i32]* %arrayidx19.3.3.1, i32 0, i64 3
  %275 = load i32* %arrayidx20.3.3.1, align 4
  %add.3.3.1 = add nsw i32 %275, %mul.3.3.1
  store i32 %add.3.3.1, i32* %arrayidx20.3.3.1, align 4
  br label %for.inc.3.3.1

for.inc.3.3.1:                                    ; preds = %for.inc.2.3.1
  %arrayidx11.4.3.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.4.3.1 = getelementptr inbounds [8 x i32]* %arrayidx11.4.3.1, i32 0, i64 4
  %276 = load i32* %arrayidx12.4.3.1, align 4
  %arrayidx15.4.3.1 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3.1 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3.1, i32 0, i64 3
  %277 = load i32* %arrayidx16.4.3.1, align 4
  %mul.4.3.1 = mul nsw i32 %276, %277
  %arrayidx19.4.3.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.4.3.1 = getelementptr inbounds [8 x i32]* %arrayidx19.4.3.1, i32 0, i64 3
  %278 = load i32* %arrayidx20.4.3.1, align 4
  %add.4.3.1 = add nsw i32 %278, %mul.4.3.1
  store i32 %add.4.3.1, i32* %arrayidx20.4.3.1, align 4
  br label %for.inc.4.3.1

for.inc.4.3.1:                                    ; preds = %for.inc.3.3.1
  %arrayidx11.5.3.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.5.3.1 = getelementptr inbounds [8 x i32]* %arrayidx11.5.3.1, i32 0, i64 5
  %279 = load i32* %arrayidx12.5.3.1, align 4
  %arrayidx15.5.3.1 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3.1 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3.1, i32 0, i64 3
  %280 = load i32* %arrayidx16.5.3.1, align 4
  %mul.5.3.1 = mul nsw i32 %279, %280
  %arrayidx19.5.3.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.5.3.1 = getelementptr inbounds [8 x i32]* %arrayidx19.5.3.1, i32 0, i64 3
  %281 = load i32* %arrayidx20.5.3.1, align 4
  %add.5.3.1 = add nsw i32 %281, %mul.5.3.1
  store i32 %add.5.3.1, i32* %arrayidx20.5.3.1, align 4
  br label %for.inc.5.3.1

for.inc.5.3.1:                                    ; preds = %for.inc.4.3.1
  %arrayidx11.6.3.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.6.3.1 = getelementptr inbounds [8 x i32]* %arrayidx11.6.3.1, i32 0, i64 6
  %282 = load i32* %arrayidx12.6.3.1, align 4
  %arrayidx15.6.3.1 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3.1 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3.1, i32 0, i64 3
  %283 = load i32* %arrayidx16.6.3.1, align 4
  %mul.6.3.1 = mul nsw i32 %282, %283
  %arrayidx19.6.3.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.6.3.1 = getelementptr inbounds [8 x i32]* %arrayidx19.6.3.1, i32 0, i64 3
  %284 = load i32* %arrayidx20.6.3.1, align 4
  %add.6.3.1 = add nsw i32 %284, %mul.6.3.1
  store i32 %add.6.3.1, i32* %arrayidx20.6.3.1, align 4
  br label %for.inc.6.3.1

for.inc.6.3.1:                                    ; preds = %for.inc.5.3.1
  %arrayidx11.7.3.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.7.3.1 = getelementptr inbounds [8 x i32]* %arrayidx11.7.3.1, i32 0, i64 7
  %285 = load i32* %arrayidx12.7.3.1, align 4
  %arrayidx15.7.3.1 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3.1 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3.1, i32 0, i64 3
  %286 = load i32* %arrayidx16.7.3.1, align 4
  %mul.7.3.1 = mul nsw i32 %285, %286
  %arrayidx19.7.3.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.7.3.1 = getelementptr inbounds [8 x i32]* %arrayidx19.7.3.1, i32 0, i64 3
  %287 = load i32* %arrayidx20.7.3.1, align 4
  %add.7.3.1 = add nsw i32 %287, %mul.7.3.1
  store i32 %add.7.3.1, i32* %arrayidx20.7.3.1, align 4
  br label %for.inc.7.3.1

for.inc.7.3.1:                                    ; preds = %for.inc.6.3.1
  br label %for.inc21.3.1

for.inc21.3.1:                                    ; preds = %for.inc.7.3.1
  %arrayidx.4.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx5.4.1 = getelementptr inbounds [8 x i32]* %arrayidx.4.1, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.1, align 4
  br label %for.body8.4.1

for.body8.4.1:                                    ; preds = %for.inc21.3.1
  %arrayidx11.434.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.435.1 = getelementptr inbounds [8 x i32]* %arrayidx11.434.1, i32 0, i64 0
  %288 = load i32* %arrayidx12.435.1, align 4
  %arrayidx16.436.1 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 4
  %289 = load i32* %arrayidx16.436.1, align 4
  %mul.437.1 = mul nsw i32 %288, %289
  %arrayidx19.439.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.440.1 = getelementptr inbounds [8 x i32]* %arrayidx19.439.1, i32 0, i64 4
  %290 = load i32* %arrayidx20.440.1, align 4
  %add.441.1 = add nsw i32 %290, %mul.437.1
  store i32 %add.441.1, i32* %arrayidx20.440.1, align 4
  br label %for.inc.442.1

for.inc.442.1:                                    ; preds = %for.body8.4.1
  %arrayidx11.1.4.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.1.4.1 = getelementptr inbounds [8 x i32]* %arrayidx11.1.4.1, i32 0, i64 1
  %291 = load i32* %arrayidx12.1.4.1, align 4
  %arrayidx15.1.4.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4.1, i32 0, i64 4
  %292 = load i32* %arrayidx16.1.4.1, align 4
  %mul.1.4.1 = mul nsw i32 %291, %292
  %arrayidx19.1.4.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.1.4.1 = getelementptr inbounds [8 x i32]* %arrayidx19.1.4.1, i32 0, i64 4
  %293 = load i32* %arrayidx20.1.4.1, align 4
  %add.1.4.1 = add nsw i32 %293, %mul.1.4.1
  store i32 %add.1.4.1, i32* %arrayidx20.1.4.1, align 4
  br label %for.inc.1.4.1

for.inc.1.4.1:                                    ; preds = %for.inc.442.1
  %arrayidx11.2.4.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.2.4.1 = getelementptr inbounds [8 x i32]* %arrayidx11.2.4.1, i32 0, i64 2
  %294 = load i32* %arrayidx12.2.4.1, align 4
  %arrayidx15.2.4.1 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4.1 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4.1, i32 0, i64 4
  %295 = load i32* %arrayidx16.2.4.1, align 4
  %mul.2.4.1 = mul nsw i32 %294, %295
  %arrayidx19.2.4.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.2.4.1 = getelementptr inbounds [8 x i32]* %arrayidx19.2.4.1, i32 0, i64 4
  %296 = load i32* %arrayidx20.2.4.1, align 4
  %add.2.4.1 = add nsw i32 %296, %mul.2.4.1
  store i32 %add.2.4.1, i32* %arrayidx20.2.4.1, align 4
  br label %for.inc.2.4.1

for.inc.2.4.1:                                    ; preds = %for.inc.1.4.1
  %arrayidx11.3.4.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.3.4.1 = getelementptr inbounds [8 x i32]* %arrayidx11.3.4.1, i32 0, i64 3
  %297 = load i32* %arrayidx12.3.4.1, align 4
  %arrayidx15.3.4.1 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4.1 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4.1, i32 0, i64 4
  %298 = load i32* %arrayidx16.3.4.1, align 4
  %mul.3.4.1 = mul nsw i32 %297, %298
  %arrayidx19.3.4.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.3.4.1 = getelementptr inbounds [8 x i32]* %arrayidx19.3.4.1, i32 0, i64 4
  %299 = load i32* %arrayidx20.3.4.1, align 4
  %add.3.4.1 = add nsw i32 %299, %mul.3.4.1
  store i32 %add.3.4.1, i32* %arrayidx20.3.4.1, align 4
  br label %for.inc.3.4.1

for.inc.3.4.1:                                    ; preds = %for.inc.2.4.1
  %arrayidx11.4.4.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.4.4.1 = getelementptr inbounds [8 x i32]* %arrayidx11.4.4.1, i32 0, i64 4
  %300 = load i32* %arrayidx12.4.4.1, align 4
  %arrayidx15.4.4.1 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4.1 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4.1, i32 0, i64 4
  %301 = load i32* %arrayidx16.4.4.1, align 4
  %mul.4.4.1 = mul nsw i32 %300, %301
  %arrayidx19.4.4.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.4.4.1 = getelementptr inbounds [8 x i32]* %arrayidx19.4.4.1, i32 0, i64 4
  %302 = load i32* %arrayidx20.4.4.1, align 4
  %add.4.4.1 = add nsw i32 %302, %mul.4.4.1
  store i32 %add.4.4.1, i32* %arrayidx20.4.4.1, align 4
  br label %for.inc.4.4.1

for.inc.4.4.1:                                    ; preds = %for.inc.3.4.1
  %arrayidx11.5.4.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.5.4.1 = getelementptr inbounds [8 x i32]* %arrayidx11.5.4.1, i32 0, i64 5
  %303 = load i32* %arrayidx12.5.4.1, align 4
  %arrayidx15.5.4.1 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4.1 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4.1, i32 0, i64 4
  %304 = load i32* %arrayidx16.5.4.1, align 4
  %mul.5.4.1 = mul nsw i32 %303, %304
  %arrayidx19.5.4.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.5.4.1 = getelementptr inbounds [8 x i32]* %arrayidx19.5.4.1, i32 0, i64 4
  %305 = load i32* %arrayidx20.5.4.1, align 4
  %add.5.4.1 = add nsw i32 %305, %mul.5.4.1
  store i32 %add.5.4.1, i32* %arrayidx20.5.4.1, align 4
  br label %for.inc.5.4.1

for.inc.5.4.1:                                    ; preds = %for.inc.4.4.1
  %arrayidx11.6.4.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.6.4.1 = getelementptr inbounds [8 x i32]* %arrayidx11.6.4.1, i32 0, i64 6
  %306 = load i32* %arrayidx12.6.4.1, align 4
  %arrayidx15.6.4.1 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4.1 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4.1, i32 0, i64 4
  %307 = load i32* %arrayidx16.6.4.1, align 4
  %mul.6.4.1 = mul nsw i32 %306, %307
  %arrayidx19.6.4.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.6.4.1 = getelementptr inbounds [8 x i32]* %arrayidx19.6.4.1, i32 0, i64 4
  %308 = load i32* %arrayidx20.6.4.1, align 4
  %add.6.4.1 = add nsw i32 %308, %mul.6.4.1
  store i32 %add.6.4.1, i32* %arrayidx20.6.4.1, align 4
  br label %for.inc.6.4.1

for.inc.6.4.1:                                    ; preds = %for.inc.5.4.1
  %arrayidx11.7.4.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.7.4.1 = getelementptr inbounds [8 x i32]* %arrayidx11.7.4.1, i32 0, i64 7
  %309 = load i32* %arrayidx12.7.4.1, align 4
  %arrayidx15.7.4.1 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4.1 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4.1, i32 0, i64 4
  %310 = load i32* %arrayidx16.7.4.1, align 4
  %mul.7.4.1 = mul nsw i32 %309, %310
  %arrayidx19.7.4.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.7.4.1 = getelementptr inbounds [8 x i32]* %arrayidx19.7.4.1, i32 0, i64 4
  %311 = load i32* %arrayidx20.7.4.1, align 4
  %add.7.4.1 = add nsw i32 %311, %mul.7.4.1
  store i32 %add.7.4.1, i32* %arrayidx20.7.4.1, align 4
  br label %for.inc.7.4.1

for.inc.7.4.1:                                    ; preds = %for.inc.6.4.1
  br label %for.inc21.4.1

for.inc21.4.1:                                    ; preds = %for.inc.7.4.1
  %arrayidx.5.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx5.5.1 = getelementptr inbounds [8 x i32]* %arrayidx.5.1, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.1, align 4
  br label %for.body8.5.1

for.body8.5.1:                                    ; preds = %for.inc21.4.1
  %arrayidx11.544.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.545.1 = getelementptr inbounds [8 x i32]* %arrayidx11.544.1, i32 0, i64 0
  %312 = load i32* %arrayidx12.545.1, align 4
  %arrayidx16.546.1 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 5
  %313 = load i32* %arrayidx16.546.1, align 4
  %mul.547.1 = mul nsw i32 %312, %313
  %arrayidx19.549.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.550.1 = getelementptr inbounds [8 x i32]* %arrayidx19.549.1, i32 0, i64 5
  %314 = load i32* %arrayidx20.550.1, align 4
  %add.551.1 = add nsw i32 %314, %mul.547.1
  store i32 %add.551.1, i32* %arrayidx20.550.1, align 4
  br label %for.inc.552.1

for.inc.552.1:                                    ; preds = %for.body8.5.1
  %arrayidx11.1.5.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.1.5.1 = getelementptr inbounds [8 x i32]* %arrayidx11.1.5.1, i32 0, i64 1
  %315 = load i32* %arrayidx12.1.5.1, align 4
  %arrayidx15.1.5.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5.1, i32 0, i64 5
  %316 = load i32* %arrayidx16.1.5.1, align 4
  %mul.1.5.1 = mul nsw i32 %315, %316
  %arrayidx19.1.5.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.1.5.1 = getelementptr inbounds [8 x i32]* %arrayidx19.1.5.1, i32 0, i64 5
  %317 = load i32* %arrayidx20.1.5.1, align 4
  %add.1.5.1 = add nsw i32 %317, %mul.1.5.1
  store i32 %add.1.5.1, i32* %arrayidx20.1.5.1, align 4
  br label %for.inc.1.5.1

for.inc.1.5.1:                                    ; preds = %for.inc.552.1
  %arrayidx11.2.5.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.2.5.1 = getelementptr inbounds [8 x i32]* %arrayidx11.2.5.1, i32 0, i64 2
  %318 = load i32* %arrayidx12.2.5.1, align 4
  %arrayidx15.2.5.1 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5.1 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5.1, i32 0, i64 5
  %319 = load i32* %arrayidx16.2.5.1, align 4
  %mul.2.5.1 = mul nsw i32 %318, %319
  %arrayidx19.2.5.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.2.5.1 = getelementptr inbounds [8 x i32]* %arrayidx19.2.5.1, i32 0, i64 5
  %320 = load i32* %arrayidx20.2.5.1, align 4
  %add.2.5.1 = add nsw i32 %320, %mul.2.5.1
  store i32 %add.2.5.1, i32* %arrayidx20.2.5.1, align 4
  br label %for.inc.2.5.1

for.inc.2.5.1:                                    ; preds = %for.inc.1.5.1
  %arrayidx11.3.5.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.3.5.1 = getelementptr inbounds [8 x i32]* %arrayidx11.3.5.1, i32 0, i64 3
  %321 = load i32* %arrayidx12.3.5.1, align 4
  %arrayidx15.3.5.1 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5.1 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5.1, i32 0, i64 5
  %322 = load i32* %arrayidx16.3.5.1, align 4
  %mul.3.5.1 = mul nsw i32 %321, %322
  %arrayidx19.3.5.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.3.5.1 = getelementptr inbounds [8 x i32]* %arrayidx19.3.5.1, i32 0, i64 5
  %323 = load i32* %arrayidx20.3.5.1, align 4
  %add.3.5.1 = add nsw i32 %323, %mul.3.5.1
  store i32 %add.3.5.1, i32* %arrayidx20.3.5.1, align 4
  br label %for.inc.3.5.1

for.inc.3.5.1:                                    ; preds = %for.inc.2.5.1
  %arrayidx11.4.5.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.4.5.1 = getelementptr inbounds [8 x i32]* %arrayidx11.4.5.1, i32 0, i64 4
  %324 = load i32* %arrayidx12.4.5.1, align 4
  %arrayidx15.4.5.1 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5.1 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5.1, i32 0, i64 5
  %325 = load i32* %arrayidx16.4.5.1, align 4
  %mul.4.5.1 = mul nsw i32 %324, %325
  %arrayidx19.4.5.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.4.5.1 = getelementptr inbounds [8 x i32]* %arrayidx19.4.5.1, i32 0, i64 5
  %326 = load i32* %arrayidx20.4.5.1, align 4
  %add.4.5.1 = add nsw i32 %326, %mul.4.5.1
  store i32 %add.4.5.1, i32* %arrayidx20.4.5.1, align 4
  br label %for.inc.4.5.1

for.inc.4.5.1:                                    ; preds = %for.inc.3.5.1
  %arrayidx11.5.5.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.5.5.1 = getelementptr inbounds [8 x i32]* %arrayidx11.5.5.1, i32 0, i64 5
  %327 = load i32* %arrayidx12.5.5.1, align 4
  %arrayidx15.5.5.1 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5.1 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5.1, i32 0, i64 5
  %328 = load i32* %arrayidx16.5.5.1, align 4
  %mul.5.5.1 = mul nsw i32 %327, %328
  %arrayidx19.5.5.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.5.5.1 = getelementptr inbounds [8 x i32]* %arrayidx19.5.5.1, i32 0, i64 5
  %329 = load i32* %arrayidx20.5.5.1, align 4
  %add.5.5.1 = add nsw i32 %329, %mul.5.5.1
  store i32 %add.5.5.1, i32* %arrayidx20.5.5.1, align 4
  br label %for.inc.5.5.1

for.inc.5.5.1:                                    ; preds = %for.inc.4.5.1
  %arrayidx11.6.5.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.6.5.1 = getelementptr inbounds [8 x i32]* %arrayidx11.6.5.1, i32 0, i64 6
  %330 = load i32* %arrayidx12.6.5.1, align 4
  %arrayidx15.6.5.1 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5.1 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5.1, i32 0, i64 5
  %331 = load i32* %arrayidx16.6.5.1, align 4
  %mul.6.5.1 = mul nsw i32 %330, %331
  %arrayidx19.6.5.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.6.5.1 = getelementptr inbounds [8 x i32]* %arrayidx19.6.5.1, i32 0, i64 5
  %332 = load i32* %arrayidx20.6.5.1, align 4
  %add.6.5.1 = add nsw i32 %332, %mul.6.5.1
  store i32 %add.6.5.1, i32* %arrayidx20.6.5.1, align 4
  br label %for.inc.6.5.1

for.inc.6.5.1:                                    ; preds = %for.inc.5.5.1
  %arrayidx11.7.5.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.7.5.1 = getelementptr inbounds [8 x i32]* %arrayidx11.7.5.1, i32 0, i64 7
  %333 = load i32* %arrayidx12.7.5.1, align 4
  %arrayidx15.7.5.1 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5.1 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5.1, i32 0, i64 5
  %334 = load i32* %arrayidx16.7.5.1, align 4
  %mul.7.5.1 = mul nsw i32 %333, %334
  %arrayidx19.7.5.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.7.5.1 = getelementptr inbounds [8 x i32]* %arrayidx19.7.5.1, i32 0, i64 5
  %335 = load i32* %arrayidx20.7.5.1, align 4
  %add.7.5.1 = add nsw i32 %335, %mul.7.5.1
  store i32 %add.7.5.1, i32* %arrayidx20.7.5.1, align 4
  br label %for.inc.7.5.1

for.inc.7.5.1:                                    ; preds = %for.inc.6.5.1
  br label %for.inc21.5.1

for.inc21.5.1:                                    ; preds = %for.inc.7.5.1
  %arrayidx.6.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx5.6.1 = getelementptr inbounds [8 x i32]* %arrayidx.6.1, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.1, align 4
  br label %for.body8.6.1

for.body8.6.1:                                    ; preds = %for.inc21.5.1
  %arrayidx11.654.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.655.1 = getelementptr inbounds [8 x i32]* %arrayidx11.654.1, i32 0, i64 0
  %336 = load i32* %arrayidx12.655.1, align 4
  %arrayidx16.656.1 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 6
  %337 = load i32* %arrayidx16.656.1, align 4
  %mul.657.1 = mul nsw i32 %336, %337
  %arrayidx19.659.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.660.1 = getelementptr inbounds [8 x i32]* %arrayidx19.659.1, i32 0, i64 6
  %338 = load i32* %arrayidx20.660.1, align 4
  %add.661.1 = add nsw i32 %338, %mul.657.1
  store i32 %add.661.1, i32* %arrayidx20.660.1, align 4
  br label %for.inc.662.1

for.inc.662.1:                                    ; preds = %for.body8.6.1
  %arrayidx11.1.6.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.1.6.1 = getelementptr inbounds [8 x i32]* %arrayidx11.1.6.1, i32 0, i64 1
  %339 = load i32* %arrayidx12.1.6.1, align 4
  %arrayidx15.1.6.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6.1, i32 0, i64 6
  %340 = load i32* %arrayidx16.1.6.1, align 4
  %mul.1.6.1 = mul nsw i32 %339, %340
  %arrayidx19.1.6.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.1.6.1 = getelementptr inbounds [8 x i32]* %arrayidx19.1.6.1, i32 0, i64 6
  %341 = load i32* %arrayidx20.1.6.1, align 4
  %add.1.6.1 = add nsw i32 %341, %mul.1.6.1
  store i32 %add.1.6.1, i32* %arrayidx20.1.6.1, align 4
  br label %for.inc.1.6.1

for.inc.1.6.1:                                    ; preds = %for.inc.662.1
  %arrayidx11.2.6.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.2.6.1 = getelementptr inbounds [8 x i32]* %arrayidx11.2.6.1, i32 0, i64 2
  %342 = load i32* %arrayidx12.2.6.1, align 4
  %arrayidx15.2.6.1 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6.1 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6.1, i32 0, i64 6
  %343 = load i32* %arrayidx16.2.6.1, align 4
  %mul.2.6.1 = mul nsw i32 %342, %343
  %arrayidx19.2.6.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.2.6.1 = getelementptr inbounds [8 x i32]* %arrayidx19.2.6.1, i32 0, i64 6
  %344 = load i32* %arrayidx20.2.6.1, align 4
  %add.2.6.1 = add nsw i32 %344, %mul.2.6.1
  store i32 %add.2.6.1, i32* %arrayidx20.2.6.1, align 4
  br label %for.inc.2.6.1

for.inc.2.6.1:                                    ; preds = %for.inc.1.6.1
  %arrayidx11.3.6.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.3.6.1 = getelementptr inbounds [8 x i32]* %arrayidx11.3.6.1, i32 0, i64 3
  %345 = load i32* %arrayidx12.3.6.1, align 4
  %arrayidx15.3.6.1 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6.1 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6.1, i32 0, i64 6
  %346 = load i32* %arrayidx16.3.6.1, align 4
  %mul.3.6.1 = mul nsw i32 %345, %346
  %arrayidx19.3.6.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.3.6.1 = getelementptr inbounds [8 x i32]* %arrayidx19.3.6.1, i32 0, i64 6
  %347 = load i32* %arrayidx20.3.6.1, align 4
  %add.3.6.1 = add nsw i32 %347, %mul.3.6.1
  store i32 %add.3.6.1, i32* %arrayidx20.3.6.1, align 4
  br label %for.inc.3.6.1

for.inc.3.6.1:                                    ; preds = %for.inc.2.6.1
  %arrayidx11.4.6.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.4.6.1 = getelementptr inbounds [8 x i32]* %arrayidx11.4.6.1, i32 0, i64 4
  %348 = load i32* %arrayidx12.4.6.1, align 4
  %arrayidx15.4.6.1 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6.1 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6.1, i32 0, i64 6
  %349 = load i32* %arrayidx16.4.6.1, align 4
  %mul.4.6.1 = mul nsw i32 %348, %349
  %arrayidx19.4.6.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.4.6.1 = getelementptr inbounds [8 x i32]* %arrayidx19.4.6.1, i32 0, i64 6
  %350 = load i32* %arrayidx20.4.6.1, align 4
  %add.4.6.1 = add nsw i32 %350, %mul.4.6.1
  store i32 %add.4.6.1, i32* %arrayidx20.4.6.1, align 4
  br label %for.inc.4.6.1

for.inc.4.6.1:                                    ; preds = %for.inc.3.6.1
  %arrayidx11.5.6.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.5.6.1 = getelementptr inbounds [8 x i32]* %arrayidx11.5.6.1, i32 0, i64 5
  %351 = load i32* %arrayidx12.5.6.1, align 4
  %arrayidx15.5.6.1 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6.1 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6.1, i32 0, i64 6
  %352 = load i32* %arrayidx16.5.6.1, align 4
  %mul.5.6.1 = mul nsw i32 %351, %352
  %arrayidx19.5.6.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.5.6.1 = getelementptr inbounds [8 x i32]* %arrayidx19.5.6.1, i32 0, i64 6
  %353 = load i32* %arrayidx20.5.6.1, align 4
  %add.5.6.1 = add nsw i32 %353, %mul.5.6.1
  store i32 %add.5.6.1, i32* %arrayidx20.5.6.1, align 4
  br label %for.inc.5.6.1

for.inc.5.6.1:                                    ; preds = %for.inc.4.6.1
  %arrayidx11.6.6.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.6.6.1 = getelementptr inbounds [8 x i32]* %arrayidx11.6.6.1, i32 0, i64 6
  %354 = load i32* %arrayidx12.6.6.1, align 4
  %arrayidx15.6.6.1 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6.1 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6.1, i32 0, i64 6
  %355 = load i32* %arrayidx16.6.6.1, align 4
  %mul.6.6.1 = mul nsw i32 %354, %355
  %arrayidx19.6.6.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.6.6.1 = getelementptr inbounds [8 x i32]* %arrayidx19.6.6.1, i32 0, i64 6
  %356 = load i32* %arrayidx20.6.6.1, align 4
  %add.6.6.1 = add nsw i32 %356, %mul.6.6.1
  store i32 %add.6.6.1, i32* %arrayidx20.6.6.1, align 4
  br label %for.inc.6.6.1

for.inc.6.6.1:                                    ; preds = %for.inc.5.6.1
  %arrayidx11.7.6.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.7.6.1 = getelementptr inbounds [8 x i32]* %arrayidx11.7.6.1, i32 0, i64 7
  %357 = load i32* %arrayidx12.7.6.1, align 4
  %arrayidx15.7.6.1 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6.1 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6.1, i32 0, i64 6
  %358 = load i32* %arrayidx16.7.6.1, align 4
  %mul.7.6.1 = mul nsw i32 %357, %358
  %arrayidx19.7.6.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.7.6.1 = getelementptr inbounds [8 x i32]* %arrayidx19.7.6.1, i32 0, i64 6
  %359 = load i32* %arrayidx20.7.6.1, align 4
  %add.7.6.1 = add nsw i32 %359, %mul.7.6.1
  store i32 %add.7.6.1, i32* %arrayidx20.7.6.1, align 4
  br label %for.inc.7.6.1

for.inc.7.6.1:                                    ; preds = %for.inc.6.6.1
  br label %for.inc21.6.1

for.inc21.6.1:                                    ; preds = %for.inc.7.6.1
  %arrayidx.7.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx5.7.1 = getelementptr inbounds [8 x i32]* %arrayidx.7.1, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.1, align 4
  br label %for.body8.7.1

for.body8.7.1:                                    ; preds = %for.inc21.6.1
  %arrayidx11.764.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.765.1 = getelementptr inbounds [8 x i32]* %arrayidx11.764.1, i32 0, i64 0
  %360 = load i32* %arrayidx12.765.1, align 4
  %arrayidx16.766.1 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 7
  %361 = load i32* %arrayidx16.766.1, align 4
  %mul.767.1 = mul nsw i32 %360, %361
  %arrayidx19.769.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.770.1 = getelementptr inbounds [8 x i32]* %arrayidx19.769.1, i32 0, i64 7
  %362 = load i32* %arrayidx20.770.1, align 4
  %add.771.1 = add nsw i32 %362, %mul.767.1
  store i32 %add.771.1, i32* %arrayidx20.770.1, align 4
  br label %for.inc.772.1

for.inc.772.1:                                    ; preds = %for.body8.7.1
  %arrayidx11.1.7.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.1.7.1 = getelementptr inbounds [8 x i32]* %arrayidx11.1.7.1, i32 0, i64 1
  %363 = load i32* %arrayidx12.1.7.1, align 4
  %arrayidx15.1.7.1 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7.1 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7.1, i32 0, i64 7
  %364 = load i32* %arrayidx16.1.7.1, align 4
  %mul.1.7.1 = mul nsw i32 %363, %364
  %arrayidx19.1.7.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.1.7.1 = getelementptr inbounds [8 x i32]* %arrayidx19.1.7.1, i32 0, i64 7
  %365 = load i32* %arrayidx20.1.7.1, align 4
  %add.1.7.1 = add nsw i32 %365, %mul.1.7.1
  store i32 %add.1.7.1, i32* %arrayidx20.1.7.1, align 4
  br label %for.inc.1.7.1

for.inc.1.7.1:                                    ; preds = %for.inc.772.1
  %arrayidx11.2.7.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.2.7.1 = getelementptr inbounds [8 x i32]* %arrayidx11.2.7.1, i32 0, i64 2
  %366 = load i32* %arrayidx12.2.7.1, align 4
  %arrayidx15.2.7.1 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7.1 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7.1, i32 0, i64 7
  %367 = load i32* %arrayidx16.2.7.1, align 4
  %mul.2.7.1 = mul nsw i32 %366, %367
  %arrayidx19.2.7.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.2.7.1 = getelementptr inbounds [8 x i32]* %arrayidx19.2.7.1, i32 0, i64 7
  %368 = load i32* %arrayidx20.2.7.1, align 4
  %add.2.7.1 = add nsw i32 %368, %mul.2.7.1
  store i32 %add.2.7.1, i32* %arrayidx20.2.7.1, align 4
  br label %for.inc.2.7.1

for.inc.2.7.1:                                    ; preds = %for.inc.1.7.1
  %arrayidx11.3.7.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.3.7.1 = getelementptr inbounds [8 x i32]* %arrayidx11.3.7.1, i32 0, i64 3
  %369 = load i32* %arrayidx12.3.7.1, align 4
  %arrayidx15.3.7.1 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7.1 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7.1, i32 0, i64 7
  %370 = load i32* %arrayidx16.3.7.1, align 4
  %mul.3.7.1 = mul nsw i32 %369, %370
  %arrayidx19.3.7.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.3.7.1 = getelementptr inbounds [8 x i32]* %arrayidx19.3.7.1, i32 0, i64 7
  %371 = load i32* %arrayidx20.3.7.1, align 4
  %add.3.7.1 = add nsw i32 %371, %mul.3.7.1
  store i32 %add.3.7.1, i32* %arrayidx20.3.7.1, align 4
  br label %for.inc.3.7.1

for.inc.3.7.1:                                    ; preds = %for.inc.2.7.1
  %arrayidx11.4.7.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.4.7.1 = getelementptr inbounds [8 x i32]* %arrayidx11.4.7.1, i32 0, i64 4
  %372 = load i32* %arrayidx12.4.7.1, align 4
  %arrayidx15.4.7.1 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7.1 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7.1, i32 0, i64 7
  %373 = load i32* %arrayidx16.4.7.1, align 4
  %mul.4.7.1 = mul nsw i32 %372, %373
  %arrayidx19.4.7.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.4.7.1 = getelementptr inbounds [8 x i32]* %arrayidx19.4.7.1, i32 0, i64 7
  %374 = load i32* %arrayidx20.4.7.1, align 4
  %add.4.7.1 = add nsw i32 %374, %mul.4.7.1
  store i32 %add.4.7.1, i32* %arrayidx20.4.7.1, align 4
  br label %for.inc.4.7.1

for.inc.4.7.1:                                    ; preds = %for.inc.3.7.1
  %arrayidx11.5.7.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.5.7.1 = getelementptr inbounds [8 x i32]* %arrayidx11.5.7.1, i32 0, i64 5
  %375 = load i32* %arrayidx12.5.7.1, align 4
  %arrayidx15.5.7.1 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7.1 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7.1, i32 0, i64 7
  %376 = load i32* %arrayidx16.5.7.1, align 4
  %mul.5.7.1 = mul nsw i32 %375, %376
  %arrayidx19.5.7.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.5.7.1 = getelementptr inbounds [8 x i32]* %arrayidx19.5.7.1, i32 0, i64 7
  %377 = load i32* %arrayidx20.5.7.1, align 4
  %add.5.7.1 = add nsw i32 %377, %mul.5.7.1
  store i32 %add.5.7.1, i32* %arrayidx20.5.7.1, align 4
  br label %for.inc.5.7.1

for.inc.5.7.1:                                    ; preds = %for.inc.4.7.1
  %arrayidx11.6.7.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.6.7.1 = getelementptr inbounds [8 x i32]* %arrayidx11.6.7.1, i32 0, i64 6
  %378 = load i32* %arrayidx12.6.7.1, align 4
  %arrayidx15.6.7.1 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7.1 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7.1, i32 0, i64 7
  %379 = load i32* %arrayidx16.6.7.1, align 4
  %mul.6.7.1 = mul nsw i32 %378, %379
  %arrayidx19.6.7.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.6.7.1 = getelementptr inbounds [8 x i32]* %arrayidx19.6.7.1, i32 0, i64 7
  %380 = load i32* %arrayidx20.6.7.1, align 4
  %add.6.7.1 = add nsw i32 %380, %mul.6.7.1
  store i32 %add.6.7.1, i32* %arrayidx20.6.7.1, align 4
  br label %for.inc.6.7.1

for.inc.6.7.1:                                    ; preds = %for.inc.5.7.1
  %arrayidx11.7.7.1 = getelementptr inbounds [8 x i32]* %a, i64 1
  %arrayidx12.7.7.1 = getelementptr inbounds [8 x i32]* %arrayidx11.7.7.1, i32 0, i64 7
  %381 = load i32* %arrayidx12.7.7.1, align 4
  %arrayidx15.7.7.1 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7.1 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7.1, i32 0, i64 7
  %382 = load i32* %arrayidx16.7.7.1, align 4
  %mul.7.7.1 = mul nsw i32 %381, %382
  %arrayidx19.7.7.1 = getelementptr inbounds [8 x i32]* %c, i64 1
  %arrayidx20.7.7.1 = getelementptr inbounds [8 x i32]* %arrayidx19.7.7.1, i32 0, i64 7
  %383 = load i32* %arrayidx20.7.7.1, align 4
  %add.7.7.1 = add nsw i32 %383, %mul.7.7.1
  store i32 %add.7.7.1, i32* %arrayidx20.7.7.1, align 4
  br label %for.inc.7.7.1

for.inc.7.7.1:                                    ; preds = %for.inc.6.7.1
  br label %for.inc21.7.1

for.inc21.7.1:                                    ; preds = %for.inc.7.7.1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.7.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc24.1
  %arrayidx.2149 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx5.2150 = getelementptr inbounds [8 x i32]* %arrayidx.2149, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.2150, align 4
  br label %for.body8.2158

for.body8.2158:                                   ; preds = %for.body3.2
  %arrayidx11.2151 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2152 = getelementptr inbounds [8 x i32]* %arrayidx11.2151, i32 0, i64 0
  %384 = load i32* %arrayidx12.2152, align 4
  %arrayidx16.2153 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 0
  %385 = load i32* %arrayidx16.2153, align 4
  %mul.2154 = mul nsw i32 %384, %385
  %arrayidx19.2155 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2156 = getelementptr inbounds [8 x i32]* %arrayidx19.2155, i32 0, i64 0
  %386 = load i32* %arrayidx20.2156, align 4
  %add.2157 = add nsw i32 %386, %mul.2154
  store i32 %add.2157, i32* %arrayidx20.2156, align 4
  br label %for.inc.2167

for.inc.2167:                                     ; preds = %for.body8.2158
  %arrayidx11.1.2159 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.1.2160 = getelementptr inbounds [8 x i32]* %arrayidx11.1.2159, i32 0, i64 1
  %387 = load i32* %arrayidx12.1.2160, align 4
  %arrayidx15.1.2161 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2162 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2161, i32 0, i64 0
  %388 = load i32* %arrayidx16.1.2162, align 4
  %mul.1.2163 = mul nsw i32 %387, %388
  %arrayidx19.1.2164 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.1.2165 = getelementptr inbounds [8 x i32]* %arrayidx19.1.2164, i32 0, i64 0
  %389 = load i32* %arrayidx20.1.2165, align 4
  %add.1.2166 = add nsw i32 %389, %mul.1.2163
  store i32 %add.1.2166, i32* %arrayidx20.1.2165, align 4
  br label %for.inc.1.2176

for.inc.1.2176:                                   ; preds = %for.inc.2167
  %arrayidx11.2.2168 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2.2169 = getelementptr inbounds [8 x i32]* %arrayidx11.2.2168, i32 0, i64 2
  %390 = load i32* %arrayidx12.2.2169, align 4
  %arrayidx15.2.2170 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2171 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2170, i32 0, i64 0
  %391 = load i32* %arrayidx16.2.2171, align 4
  %mul.2.2172 = mul nsw i32 %390, %391
  %arrayidx19.2.2173 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2.2174 = getelementptr inbounds [8 x i32]* %arrayidx19.2.2173, i32 0, i64 0
  %392 = load i32* %arrayidx20.2.2174, align 4
  %add.2.2175 = add nsw i32 %392, %mul.2.2172
  store i32 %add.2.2175, i32* %arrayidx20.2.2174, align 4
  br label %for.inc.2.2185

for.inc.2.2185:                                   ; preds = %for.inc.1.2176
  %arrayidx11.3.2177 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.3.2178 = getelementptr inbounds [8 x i32]* %arrayidx11.3.2177, i32 0, i64 3
  %393 = load i32* %arrayidx12.3.2178, align 4
  %arrayidx15.3.2179 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2180 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2179, i32 0, i64 0
  %394 = load i32* %arrayidx16.3.2180, align 4
  %mul.3.2181 = mul nsw i32 %393, %394
  %arrayidx19.3.2182 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.3.2183 = getelementptr inbounds [8 x i32]* %arrayidx19.3.2182, i32 0, i64 0
  %395 = load i32* %arrayidx20.3.2183, align 4
  %add.3.2184 = add nsw i32 %395, %mul.3.2181
  store i32 %add.3.2184, i32* %arrayidx20.3.2183, align 4
  br label %for.inc.3.2194

for.inc.3.2194:                                   ; preds = %for.inc.2.2185
  %arrayidx11.4.2186 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.4.2187 = getelementptr inbounds [8 x i32]* %arrayidx11.4.2186, i32 0, i64 4
  %396 = load i32* %arrayidx12.4.2187, align 4
  %arrayidx15.4.2188 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2189 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2188, i32 0, i64 0
  %397 = load i32* %arrayidx16.4.2189, align 4
  %mul.4.2190 = mul nsw i32 %396, %397
  %arrayidx19.4.2191 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.4.2192 = getelementptr inbounds [8 x i32]* %arrayidx19.4.2191, i32 0, i64 0
  %398 = load i32* %arrayidx20.4.2192, align 4
  %add.4.2193 = add nsw i32 %398, %mul.4.2190
  store i32 %add.4.2193, i32* %arrayidx20.4.2192, align 4
  br label %for.inc.4.2203

for.inc.4.2203:                                   ; preds = %for.inc.3.2194
  %arrayidx11.5.2195 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.5.2196 = getelementptr inbounds [8 x i32]* %arrayidx11.5.2195, i32 0, i64 5
  %399 = load i32* %arrayidx12.5.2196, align 4
  %arrayidx15.5.2197 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2198 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2197, i32 0, i64 0
  %400 = load i32* %arrayidx16.5.2198, align 4
  %mul.5.2199 = mul nsw i32 %399, %400
  %arrayidx19.5.2200 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.5.2201 = getelementptr inbounds [8 x i32]* %arrayidx19.5.2200, i32 0, i64 0
  %401 = load i32* %arrayidx20.5.2201, align 4
  %add.5.2202 = add nsw i32 %401, %mul.5.2199
  store i32 %add.5.2202, i32* %arrayidx20.5.2201, align 4
  br label %for.inc.5.2212

for.inc.5.2212:                                   ; preds = %for.inc.4.2203
  %arrayidx11.6.2204 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.6.2205 = getelementptr inbounds [8 x i32]* %arrayidx11.6.2204, i32 0, i64 6
  %402 = load i32* %arrayidx12.6.2205, align 4
  %arrayidx15.6.2206 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2207 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2206, i32 0, i64 0
  %403 = load i32* %arrayidx16.6.2207, align 4
  %mul.6.2208 = mul nsw i32 %402, %403
  %arrayidx19.6.2209 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.6.2210 = getelementptr inbounds [8 x i32]* %arrayidx19.6.2209, i32 0, i64 0
  %404 = load i32* %arrayidx20.6.2210, align 4
  %add.6.2211 = add nsw i32 %404, %mul.6.2208
  store i32 %add.6.2211, i32* %arrayidx20.6.2210, align 4
  br label %for.inc.6.2221

for.inc.6.2221:                                   ; preds = %for.inc.5.2212
  %arrayidx11.7.2213 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.7.2214 = getelementptr inbounds [8 x i32]* %arrayidx11.7.2213, i32 0, i64 7
  %405 = load i32* %arrayidx12.7.2214, align 4
  %arrayidx15.7.2215 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2216 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2215, i32 0, i64 0
  %406 = load i32* %arrayidx16.7.2216, align 4
  %mul.7.2217 = mul nsw i32 %405, %406
  %arrayidx19.7.2218 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.7.2219 = getelementptr inbounds [8 x i32]* %arrayidx19.7.2218, i32 0, i64 0
  %407 = load i32* %arrayidx20.7.2219, align 4
  %add.7.2220 = add nsw i32 %407, %mul.7.2217
  store i32 %add.7.2220, i32* %arrayidx20.7.2219, align 4
  br label %for.inc.7.2222

for.inc.7.2222:                                   ; preds = %for.inc.6.2221
  br label %for.inc21.2223

for.inc21.2223:                                   ; preds = %for.inc.7.2222
  %arrayidx.1.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [8 x i32]* %arrayidx.1.2, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.2, align 4
  br label %for.body8.1.2

for.body8.1.2:                                    ; preds = %for.inc21.2223
  %arrayidx11.14.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.15.2 = getelementptr inbounds [8 x i32]* %arrayidx11.14.2, i32 0, i64 0
  %408 = load i32* %arrayidx12.15.2, align 4
  %arrayidx16.16.2 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 1
  %409 = load i32* %arrayidx16.16.2, align 4
  %mul.17.2 = mul nsw i32 %408, %409
  %arrayidx19.19.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.110.2 = getelementptr inbounds [8 x i32]* %arrayidx19.19.2, i32 0, i64 1
  %410 = load i32* %arrayidx20.110.2, align 4
  %add.111.2 = add nsw i32 %410, %mul.17.2
  store i32 %add.111.2, i32* %arrayidx20.110.2, align 4
  br label %for.inc.112.2

for.inc.112.2:                                    ; preds = %for.body8.1.2
  %arrayidx11.1.1.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.1.1.2 = getelementptr inbounds [8 x i32]* %arrayidx11.1.1.2, i32 0, i64 1
  %411 = load i32* %arrayidx12.1.1.2, align 4
  %arrayidx15.1.1.2 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.1.2 = getelementptr inbounds [8 x i32]* %arrayidx15.1.1.2, i32 0, i64 1
  %412 = load i32* %arrayidx16.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %411, %412
  %arrayidx19.1.1.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.1.1.2 = getelementptr inbounds [8 x i32]* %arrayidx19.1.1.2, i32 0, i64 1
  %413 = load i32* %arrayidx20.1.1.2, align 4
  %add.1.1.2 = add nsw i32 %413, %mul.1.1.2
  store i32 %add.1.1.2, i32* %arrayidx20.1.1.2, align 4
  br label %for.inc.1.1.2

for.inc.1.1.2:                                    ; preds = %for.inc.112.2
  %arrayidx11.2.1.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2.1.2 = getelementptr inbounds [8 x i32]* %arrayidx11.2.1.2, i32 0, i64 2
  %414 = load i32* %arrayidx12.2.1.2, align 4
  %arrayidx15.2.1.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.1.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2.1.2, i32 0, i64 1
  %415 = load i32* %arrayidx16.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %414, %415
  %arrayidx19.2.1.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2.1.2 = getelementptr inbounds [8 x i32]* %arrayidx19.2.1.2, i32 0, i64 1
  %416 = load i32* %arrayidx20.2.1.2, align 4
  %add.2.1.2 = add nsw i32 %416, %mul.2.1.2
  store i32 %add.2.1.2, i32* %arrayidx20.2.1.2, align 4
  br label %for.inc.2.1.2

for.inc.2.1.2:                                    ; preds = %for.inc.1.1.2
  %arrayidx11.3.1.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.3.1.2 = getelementptr inbounds [8 x i32]* %arrayidx11.3.1.2, i32 0, i64 3
  %417 = load i32* %arrayidx12.3.1.2, align 4
  %arrayidx15.3.1.2 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1.2 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1.2, i32 0, i64 1
  %418 = load i32* %arrayidx16.3.1.2, align 4
  %mul.3.1.2 = mul nsw i32 %417, %418
  %arrayidx19.3.1.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.3.1.2 = getelementptr inbounds [8 x i32]* %arrayidx19.3.1.2, i32 0, i64 1
  %419 = load i32* %arrayidx20.3.1.2, align 4
  %add.3.1.2 = add nsw i32 %419, %mul.3.1.2
  store i32 %add.3.1.2, i32* %arrayidx20.3.1.2, align 4
  br label %for.inc.3.1.2

for.inc.3.1.2:                                    ; preds = %for.inc.2.1.2
  %arrayidx11.4.1.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.4.1.2 = getelementptr inbounds [8 x i32]* %arrayidx11.4.1.2, i32 0, i64 4
  %420 = load i32* %arrayidx12.4.1.2, align 4
  %arrayidx15.4.1.2 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1.2 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1.2, i32 0, i64 1
  %421 = load i32* %arrayidx16.4.1.2, align 4
  %mul.4.1.2 = mul nsw i32 %420, %421
  %arrayidx19.4.1.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.4.1.2 = getelementptr inbounds [8 x i32]* %arrayidx19.4.1.2, i32 0, i64 1
  %422 = load i32* %arrayidx20.4.1.2, align 4
  %add.4.1.2 = add nsw i32 %422, %mul.4.1.2
  store i32 %add.4.1.2, i32* %arrayidx20.4.1.2, align 4
  br label %for.inc.4.1.2

for.inc.4.1.2:                                    ; preds = %for.inc.3.1.2
  %arrayidx11.5.1.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.5.1.2 = getelementptr inbounds [8 x i32]* %arrayidx11.5.1.2, i32 0, i64 5
  %423 = load i32* %arrayidx12.5.1.2, align 4
  %arrayidx15.5.1.2 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1.2 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1.2, i32 0, i64 1
  %424 = load i32* %arrayidx16.5.1.2, align 4
  %mul.5.1.2 = mul nsw i32 %423, %424
  %arrayidx19.5.1.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.5.1.2 = getelementptr inbounds [8 x i32]* %arrayidx19.5.1.2, i32 0, i64 1
  %425 = load i32* %arrayidx20.5.1.2, align 4
  %add.5.1.2 = add nsw i32 %425, %mul.5.1.2
  store i32 %add.5.1.2, i32* %arrayidx20.5.1.2, align 4
  br label %for.inc.5.1.2

for.inc.5.1.2:                                    ; preds = %for.inc.4.1.2
  %arrayidx11.6.1.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.6.1.2 = getelementptr inbounds [8 x i32]* %arrayidx11.6.1.2, i32 0, i64 6
  %426 = load i32* %arrayidx12.6.1.2, align 4
  %arrayidx15.6.1.2 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1.2 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1.2, i32 0, i64 1
  %427 = load i32* %arrayidx16.6.1.2, align 4
  %mul.6.1.2 = mul nsw i32 %426, %427
  %arrayidx19.6.1.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.6.1.2 = getelementptr inbounds [8 x i32]* %arrayidx19.6.1.2, i32 0, i64 1
  %428 = load i32* %arrayidx20.6.1.2, align 4
  %add.6.1.2 = add nsw i32 %428, %mul.6.1.2
  store i32 %add.6.1.2, i32* %arrayidx20.6.1.2, align 4
  br label %for.inc.6.1.2

for.inc.6.1.2:                                    ; preds = %for.inc.5.1.2
  %arrayidx11.7.1.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.7.1.2 = getelementptr inbounds [8 x i32]* %arrayidx11.7.1.2, i32 0, i64 7
  %429 = load i32* %arrayidx12.7.1.2, align 4
  %arrayidx15.7.1.2 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1.2 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1.2, i32 0, i64 1
  %430 = load i32* %arrayidx16.7.1.2, align 4
  %mul.7.1.2 = mul nsw i32 %429, %430
  %arrayidx19.7.1.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.7.1.2 = getelementptr inbounds [8 x i32]* %arrayidx19.7.1.2, i32 0, i64 1
  %431 = load i32* %arrayidx20.7.1.2, align 4
  %add.7.1.2 = add nsw i32 %431, %mul.7.1.2
  store i32 %add.7.1.2, i32* %arrayidx20.7.1.2, align 4
  br label %for.inc.7.1.2

for.inc.7.1.2:                                    ; preds = %for.inc.6.1.2
  br label %for.inc21.1.2

for.inc21.1.2:                                    ; preds = %for.inc.7.1.2
  %arrayidx.2.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [8 x i32]* %arrayidx.2.2, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.2, align 4
  br label %for.body8.2.2

for.body8.2.2:                                    ; preds = %for.inc21.1.2
  %arrayidx11.214.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.215.2 = getelementptr inbounds [8 x i32]* %arrayidx11.214.2, i32 0, i64 0
  %432 = load i32* %arrayidx12.215.2, align 4
  %arrayidx16.216.2 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 2
  %433 = load i32* %arrayidx16.216.2, align 4
  %mul.217.2 = mul nsw i32 %432, %433
  %arrayidx19.219.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.220.2 = getelementptr inbounds [8 x i32]* %arrayidx19.219.2, i32 0, i64 2
  %434 = load i32* %arrayidx20.220.2, align 4
  %add.221.2 = add nsw i32 %434, %mul.217.2
  store i32 %add.221.2, i32* %arrayidx20.220.2, align 4
  br label %for.inc.222.2

for.inc.222.2:                                    ; preds = %for.body8.2.2
  %arrayidx11.1.2.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.1.2.2 = getelementptr inbounds [8 x i32]* %arrayidx11.1.2.2, i32 0, i64 1
  %435 = load i32* %arrayidx12.1.2.2, align 4
  %arrayidx15.1.2.2 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2.2 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2.2, i32 0, i64 2
  %436 = load i32* %arrayidx16.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %435, %436
  %arrayidx19.1.2.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.1.2.2 = getelementptr inbounds [8 x i32]* %arrayidx19.1.2.2, i32 0, i64 2
  %437 = load i32* %arrayidx20.1.2.2, align 4
  %add.1.2.2 = add nsw i32 %437, %mul.1.2.2
  store i32 %add.1.2.2, i32* %arrayidx20.1.2.2, align 4
  br label %for.inc.1.2.2

for.inc.1.2.2:                                    ; preds = %for.inc.222.2
  %arrayidx11.2.2.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2.2.2 = getelementptr inbounds [8 x i32]* %arrayidx11.2.2.2, i32 0, i64 2
  %438 = load i32* %arrayidx12.2.2.2, align 4
  %arrayidx15.2.2.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2.2, i32 0, i64 2
  %439 = load i32* %arrayidx16.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %438, %439
  %arrayidx19.2.2.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2.2.2 = getelementptr inbounds [8 x i32]* %arrayidx19.2.2.2, i32 0, i64 2
  %440 = load i32* %arrayidx20.2.2.2, align 4
  %add.2.2.2 = add nsw i32 %440, %mul.2.2.2
  store i32 %add.2.2.2, i32* %arrayidx20.2.2.2, align 4
  br label %for.inc.2.2.2

for.inc.2.2.2:                                    ; preds = %for.inc.1.2.2
  %arrayidx11.3.2.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.3.2.2 = getelementptr inbounds [8 x i32]* %arrayidx11.3.2.2, i32 0, i64 3
  %441 = load i32* %arrayidx12.3.2.2, align 4
  %arrayidx15.3.2.2 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2.2 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2.2, i32 0, i64 2
  %442 = load i32* %arrayidx16.3.2.2, align 4
  %mul.3.2.2 = mul nsw i32 %441, %442
  %arrayidx19.3.2.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.3.2.2 = getelementptr inbounds [8 x i32]* %arrayidx19.3.2.2, i32 0, i64 2
  %443 = load i32* %arrayidx20.3.2.2, align 4
  %add.3.2.2 = add nsw i32 %443, %mul.3.2.2
  store i32 %add.3.2.2, i32* %arrayidx20.3.2.2, align 4
  br label %for.inc.3.2.2

for.inc.3.2.2:                                    ; preds = %for.inc.2.2.2
  %arrayidx11.4.2.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.4.2.2 = getelementptr inbounds [8 x i32]* %arrayidx11.4.2.2, i32 0, i64 4
  %444 = load i32* %arrayidx12.4.2.2, align 4
  %arrayidx15.4.2.2 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2.2 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2.2, i32 0, i64 2
  %445 = load i32* %arrayidx16.4.2.2, align 4
  %mul.4.2.2 = mul nsw i32 %444, %445
  %arrayidx19.4.2.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.4.2.2 = getelementptr inbounds [8 x i32]* %arrayidx19.4.2.2, i32 0, i64 2
  %446 = load i32* %arrayidx20.4.2.2, align 4
  %add.4.2.2 = add nsw i32 %446, %mul.4.2.2
  store i32 %add.4.2.2, i32* %arrayidx20.4.2.2, align 4
  br label %for.inc.4.2.2

for.inc.4.2.2:                                    ; preds = %for.inc.3.2.2
  %arrayidx11.5.2.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.5.2.2 = getelementptr inbounds [8 x i32]* %arrayidx11.5.2.2, i32 0, i64 5
  %447 = load i32* %arrayidx12.5.2.2, align 4
  %arrayidx15.5.2.2 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2.2 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2.2, i32 0, i64 2
  %448 = load i32* %arrayidx16.5.2.2, align 4
  %mul.5.2.2 = mul nsw i32 %447, %448
  %arrayidx19.5.2.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.5.2.2 = getelementptr inbounds [8 x i32]* %arrayidx19.5.2.2, i32 0, i64 2
  %449 = load i32* %arrayidx20.5.2.2, align 4
  %add.5.2.2 = add nsw i32 %449, %mul.5.2.2
  store i32 %add.5.2.2, i32* %arrayidx20.5.2.2, align 4
  br label %for.inc.5.2.2

for.inc.5.2.2:                                    ; preds = %for.inc.4.2.2
  %arrayidx11.6.2.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.6.2.2 = getelementptr inbounds [8 x i32]* %arrayidx11.6.2.2, i32 0, i64 6
  %450 = load i32* %arrayidx12.6.2.2, align 4
  %arrayidx15.6.2.2 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2.2 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2.2, i32 0, i64 2
  %451 = load i32* %arrayidx16.6.2.2, align 4
  %mul.6.2.2 = mul nsw i32 %450, %451
  %arrayidx19.6.2.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.6.2.2 = getelementptr inbounds [8 x i32]* %arrayidx19.6.2.2, i32 0, i64 2
  %452 = load i32* %arrayidx20.6.2.2, align 4
  %add.6.2.2 = add nsw i32 %452, %mul.6.2.2
  store i32 %add.6.2.2, i32* %arrayidx20.6.2.2, align 4
  br label %for.inc.6.2.2

for.inc.6.2.2:                                    ; preds = %for.inc.5.2.2
  %arrayidx11.7.2.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.7.2.2 = getelementptr inbounds [8 x i32]* %arrayidx11.7.2.2, i32 0, i64 7
  %453 = load i32* %arrayidx12.7.2.2, align 4
  %arrayidx15.7.2.2 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2.2 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2.2, i32 0, i64 2
  %454 = load i32* %arrayidx16.7.2.2, align 4
  %mul.7.2.2 = mul nsw i32 %453, %454
  %arrayidx19.7.2.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.7.2.2 = getelementptr inbounds [8 x i32]* %arrayidx19.7.2.2, i32 0, i64 2
  %455 = load i32* %arrayidx20.7.2.2, align 4
  %add.7.2.2 = add nsw i32 %455, %mul.7.2.2
  store i32 %add.7.2.2, i32* %arrayidx20.7.2.2, align 4
  br label %for.inc.7.2.2

for.inc.7.2.2:                                    ; preds = %for.inc.6.2.2
  br label %for.inc21.2.2

for.inc21.2.2:                                    ; preds = %for.inc.7.2.2
  %arrayidx.3.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx5.3.2 = getelementptr inbounds [8 x i32]* %arrayidx.3.2, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.2, align 4
  br label %for.body8.3.2

for.body8.3.2:                                    ; preds = %for.inc21.2.2
  %arrayidx11.324.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.325.2 = getelementptr inbounds [8 x i32]* %arrayidx11.324.2, i32 0, i64 0
  %456 = load i32* %arrayidx12.325.2, align 4
  %arrayidx16.326.2 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 3
  %457 = load i32* %arrayidx16.326.2, align 4
  %mul.327.2 = mul nsw i32 %456, %457
  %arrayidx19.329.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.330.2 = getelementptr inbounds [8 x i32]* %arrayidx19.329.2, i32 0, i64 3
  %458 = load i32* %arrayidx20.330.2, align 4
  %add.331.2 = add nsw i32 %458, %mul.327.2
  store i32 %add.331.2, i32* %arrayidx20.330.2, align 4
  br label %for.inc.332.2

for.inc.332.2:                                    ; preds = %for.body8.3.2
  %arrayidx11.1.3.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.1.3.2 = getelementptr inbounds [8 x i32]* %arrayidx11.1.3.2, i32 0, i64 1
  %459 = load i32* %arrayidx12.1.3.2, align 4
  %arrayidx15.1.3.2 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3.2 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3.2, i32 0, i64 3
  %460 = load i32* %arrayidx16.1.3.2, align 4
  %mul.1.3.2 = mul nsw i32 %459, %460
  %arrayidx19.1.3.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.1.3.2 = getelementptr inbounds [8 x i32]* %arrayidx19.1.3.2, i32 0, i64 3
  %461 = load i32* %arrayidx20.1.3.2, align 4
  %add.1.3.2 = add nsw i32 %461, %mul.1.3.2
  store i32 %add.1.3.2, i32* %arrayidx20.1.3.2, align 4
  br label %for.inc.1.3.2

for.inc.1.3.2:                                    ; preds = %for.inc.332.2
  %arrayidx11.2.3.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2.3.2 = getelementptr inbounds [8 x i32]* %arrayidx11.2.3.2, i32 0, i64 2
  %462 = load i32* %arrayidx12.2.3.2, align 4
  %arrayidx15.2.3.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3.2, i32 0, i64 3
  %463 = load i32* %arrayidx16.2.3.2, align 4
  %mul.2.3.2 = mul nsw i32 %462, %463
  %arrayidx19.2.3.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2.3.2 = getelementptr inbounds [8 x i32]* %arrayidx19.2.3.2, i32 0, i64 3
  %464 = load i32* %arrayidx20.2.3.2, align 4
  %add.2.3.2 = add nsw i32 %464, %mul.2.3.2
  store i32 %add.2.3.2, i32* %arrayidx20.2.3.2, align 4
  br label %for.inc.2.3.2

for.inc.2.3.2:                                    ; preds = %for.inc.1.3.2
  %arrayidx11.3.3.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.3.3.2 = getelementptr inbounds [8 x i32]* %arrayidx11.3.3.2, i32 0, i64 3
  %465 = load i32* %arrayidx12.3.3.2, align 4
  %arrayidx15.3.3.2 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3.2 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3.2, i32 0, i64 3
  %466 = load i32* %arrayidx16.3.3.2, align 4
  %mul.3.3.2 = mul nsw i32 %465, %466
  %arrayidx19.3.3.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.3.3.2 = getelementptr inbounds [8 x i32]* %arrayidx19.3.3.2, i32 0, i64 3
  %467 = load i32* %arrayidx20.3.3.2, align 4
  %add.3.3.2 = add nsw i32 %467, %mul.3.3.2
  store i32 %add.3.3.2, i32* %arrayidx20.3.3.2, align 4
  br label %for.inc.3.3.2

for.inc.3.3.2:                                    ; preds = %for.inc.2.3.2
  %arrayidx11.4.3.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.4.3.2 = getelementptr inbounds [8 x i32]* %arrayidx11.4.3.2, i32 0, i64 4
  %468 = load i32* %arrayidx12.4.3.2, align 4
  %arrayidx15.4.3.2 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3.2 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3.2, i32 0, i64 3
  %469 = load i32* %arrayidx16.4.3.2, align 4
  %mul.4.3.2 = mul nsw i32 %468, %469
  %arrayidx19.4.3.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.4.3.2 = getelementptr inbounds [8 x i32]* %arrayidx19.4.3.2, i32 0, i64 3
  %470 = load i32* %arrayidx20.4.3.2, align 4
  %add.4.3.2 = add nsw i32 %470, %mul.4.3.2
  store i32 %add.4.3.2, i32* %arrayidx20.4.3.2, align 4
  br label %for.inc.4.3.2

for.inc.4.3.2:                                    ; preds = %for.inc.3.3.2
  %arrayidx11.5.3.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.5.3.2 = getelementptr inbounds [8 x i32]* %arrayidx11.5.3.2, i32 0, i64 5
  %471 = load i32* %arrayidx12.5.3.2, align 4
  %arrayidx15.5.3.2 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3.2 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3.2, i32 0, i64 3
  %472 = load i32* %arrayidx16.5.3.2, align 4
  %mul.5.3.2 = mul nsw i32 %471, %472
  %arrayidx19.5.3.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.5.3.2 = getelementptr inbounds [8 x i32]* %arrayidx19.5.3.2, i32 0, i64 3
  %473 = load i32* %arrayidx20.5.3.2, align 4
  %add.5.3.2 = add nsw i32 %473, %mul.5.3.2
  store i32 %add.5.3.2, i32* %arrayidx20.5.3.2, align 4
  br label %for.inc.5.3.2

for.inc.5.3.2:                                    ; preds = %for.inc.4.3.2
  %arrayidx11.6.3.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.6.3.2 = getelementptr inbounds [8 x i32]* %arrayidx11.6.3.2, i32 0, i64 6
  %474 = load i32* %arrayidx12.6.3.2, align 4
  %arrayidx15.6.3.2 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3.2 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3.2, i32 0, i64 3
  %475 = load i32* %arrayidx16.6.3.2, align 4
  %mul.6.3.2 = mul nsw i32 %474, %475
  %arrayidx19.6.3.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.6.3.2 = getelementptr inbounds [8 x i32]* %arrayidx19.6.3.2, i32 0, i64 3
  %476 = load i32* %arrayidx20.6.3.2, align 4
  %add.6.3.2 = add nsw i32 %476, %mul.6.3.2
  store i32 %add.6.3.2, i32* %arrayidx20.6.3.2, align 4
  br label %for.inc.6.3.2

for.inc.6.3.2:                                    ; preds = %for.inc.5.3.2
  %arrayidx11.7.3.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.7.3.2 = getelementptr inbounds [8 x i32]* %arrayidx11.7.3.2, i32 0, i64 7
  %477 = load i32* %arrayidx12.7.3.2, align 4
  %arrayidx15.7.3.2 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3.2 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3.2, i32 0, i64 3
  %478 = load i32* %arrayidx16.7.3.2, align 4
  %mul.7.3.2 = mul nsw i32 %477, %478
  %arrayidx19.7.3.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.7.3.2 = getelementptr inbounds [8 x i32]* %arrayidx19.7.3.2, i32 0, i64 3
  %479 = load i32* %arrayidx20.7.3.2, align 4
  %add.7.3.2 = add nsw i32 %479, %mul.7.3.2
  store i32 %add.7.3.2, i32* %arrayidx20.7.3.2, align 4
  br label %for.inc.7.3.2

for.inc.7.3.2:                                    ; preds = %for.inc.6.3.2
  br label %for.inc21.3.2

for.inc21.3.2:                                    ; preds = %for.inc.7.3.2
  %arrayidx.4.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx5.4.2 = getelementptr inbounds [8 x i32]* %arrayidx.4.2, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.2, align 4
  br label %for.body8.4.2

for.body8.4.2:                                    ; preds = %for.inc21.3.2
  %arrayidx11.434.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.435.2 = getelementptr inbounds [8 x i32]* %arrayidx11.434.2, i32 0, i64 0
  %480 = load i32* %arrayidx12.435.2, align 4
  %arrayidx16.436.2 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 4
  %481 = load i32* %arrayidx16.436.2, align 4
  %mul.437.2 = mul nsw i32 %480, %481
  %arrayidx19.439.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.440.2 = getelementptr inbounds [8 x i32]* %arrayidx19.439.2, i32 0, i64 4
  %482 = load i32* %arrayidx20.440.2, align 4
  %add.441.2 = add nsw i32 %482, %mul.437.2
  store i32 %add.441.2, i32* %arrayidx20.440.2, align 4
  br label %for.inc.442.2

for.inc.442.2:                                    ; preds = %for.body8.4.2
  %arrayidx11.1.4.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.1.4.2 = getelementptr inbounds [8 x i32]* %arrayidx11.1.4.2, i32 0, i64 1
  %483 = load i32* %arrayidx12.1.4.2, align 4
  %arrayidx15.1.4.2 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4.2 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4.2, i32 0, i64 4
  %484 = load i32* %arrayidx16.1.4.2, align 4
  %mul.1.4.2 = mul nsw i32 %483, %484
  %arrayidx19.1.4.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.1.4.2 = getelementptr inbounds [8 x i32]* %arrayidx19.1.4.2, i32 0, i64 4
  %485 = load i32* %arrayidx20.1.4.2, align 4
  %add.1.4.2 = add nsw i32 %485, %mul.1.4.2
  store i32 %add.1.4.2, i32* %arrayidx20.1.4.2, align 4
  br label %for.inc.1.4.2

for.inc.1.4.2:                                    ; preds = %for.inc.442.2
  %arrayidx11.2.4.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2.4.2 = getelementptr inbounds [8 x i32]* %arrayidx11.2.4.2, i32 0, i64 2
  %486 = load i32* %arrayidx12.2.4.2, align 4
  %arrayidx15.2.4.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4.2, i32 0, i64 4
  %487 = load i32* %arrayidx16.2.4.2, align 4
  %mul.2.4.2 = mul nsw i32 %486, %487
  %arrayidx19.2.4.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2.4.2 = getelementptr inbounds [8 x i32]* %arrayidx19.2.4.2, i32 0, i64 4
  %488 = load i32* %arrayidx20.2.4.2, align 4
  %add.2.4.2 = add nsw i32 %488, %mul.2.4.2
  store i32 %add.2.4.2, i32* %arrayidx20.2.4.2, align 4
  br label %for.inc.2.4.2

for.inc.2.4.2:                                    ; preds = %for.inc.1.4.2
  %arrayidx11.3.4.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.3.4.2 = getelementptr inbounds [8 x i32]* %arrayidx11.3.4.2, i32 0, i64 3
  %489 = load i32* %arrayidx12.3.4.2, align 4
  %arrayidx15.3.4.2 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4.2 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4.2, i32 0, i64 4
  %490 = load i32* %arrayidx16.3.4.2, align 4
  %mul.3.4.2 = mul nsw i32 %489, %490
  %arrayidx19.3.4.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.3.4.2 = getelementptr inbounds [8 x i32]* %arrayidx19.3.4.2, i32 0, i64 4
  %491 = load i32* %arrayidx20.3.4.2, align 4
  %add.3.4.2 = add nsw i32 %491, %mul.3.4.2
  store i32 %add.3.4.2, i32* %arrayidx20.3.4.2, align 4
  br label %for.inc.3.4.2

for.inc.3.4.2:                                    ; preds = %for.inc.2.4.2
  %arrayidx11.4.4.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.4.4.2 = getelementptr inbounds [8 x i32]* %arrayidx11.4.4.2, i32 0, i64 4
  %492 = load i32* %arrayidx12.4.4.2, align 4
  %arrayidx15.4.4.2 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4.2 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4.2, i32 0, i64 4
  %493 = load i32* %arrayidx16.4.4.2, align 4
  %mul.4.4.2 = mul nsw i32 %492, %493
  %arrayidx19.4.4.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.4.4.2 = getelementptr inbounds [8 x i32]* %arrayidx19.4.4.2, i32 0, i64 4
  %494 = load i32* %arrayidx20.4.4.2, align 4
  %add.4.4.2 = add nsw i32 %494, %mul.4.4.2
  store i32 %add.4.4.2, i32* %arrayidx20.4.4.2, align 4
  br label %for.inc.4.4.2

for.inc.4.4.2:                                    ; preds = %for.inc.3.4.2
  %arrayidx11.5.4.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.5.4.2 = getelementptr inbounds [8 x i32]* %arrayidx11.5.4.2, i32 0, i64 5
  %495 = load i32* %arrayidx12.5.4.2, align 4
  %arrayidx15.5.4.2 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4.2 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4.2, i32 0, i64 4
  %496 = load i32* %arrayidx16.5.4.2, align 4
  %mul.5.4.2 = mul nsw i32 %495, %496
  %arrayidx19.5.4.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.5.4.2 = getelementptr inbounds [8 x i32]* %arrayidx19.5.4.2, i32 0, i64 4
  %497 = load i32* %arrayidx20.5.4.2, align 4
  %add.5.4.2 = add nsw i32 %497, %mul.5.4.2
  store i32 %add.5.4.2, i32* %arrayidx20.5.4.2, align 4
  br label %for.inc.5.4.2

for.inc.5.4.2:                                    ; preds = %for.inc.4.4.2
  %arrayidx11.6.4.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.6.4.2 = getelementptr inbounds [8 x i32]* %arrayidx11.6.4.2, i32 0, i64 6
  %498 = load i32* %arrayidx12.6.4.2, align 4
  %arrayidx15.6.4.2 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4.2 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4.2, i32 0, i64 4
  %499 = load i32* %arrayidx16.6.4.2, align 4
  %mul.6.4.2 = mul nsw i32 %498, %499
  %arrayidx19.6.4.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.6.4.2 = getelementptr inbounds [8 x i32]* %arrayidx19.6.4.2, i32 0, i64 4
  %500 = load i32* %arrayidx20.6.4.2, align 4
  %add.6.4.2 = add nsw i32 %500, %mul.6.4.2
  store i32 %add.6.4.2, i32* %arrayidx20.6.4.2, align 4
  br label %for.inc.6.4.2

for.inc.6.4.2:                                    ; preds = %for.inc.5.4.2
  %arrayidx11.7.4.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.7.4.2 = getelementptr inbounds [8 x i32]* %arrayidx11.7.4.2, i32 0, i64 7
  %501 = load i32* %arrayidx12.7.4.2, align 4
  %arrayidx15.7.4.2 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4.2 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4.2, i32 0, i64 4
  %502 = load i32* %arrayidx16.7.4.2, align 4
  %mul.7.4.2 = mul nsw i32 %501, %502
  %arrayidx19.7.4.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.7.4.2 = getelementptr inbounds [8 x i32]* %arrayidx19.7.4.2, i32 0, i64 4
  %503 = load i32* %arrayidx20.7.4.2, align 4
  %add.7.4.2 = add nsw i32 %503, %mul.7.4.2
  store i32 %add.7.4.2, i32* %arrayidx20.7.4.2, align 4
  br label %for.inc.7.4.2

for.inc.7.4.2:                                    ; preds = %for.inc.6.4.2
  br label %for.inc21.4.2

for.inc21.4.2:                                    ; preds = %for.inc.7.4.2
  %arrayidx.5.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx5.5.2 = getelementptr inbounds [8 x i32]* %arrayidx.5.2, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.2, align 4
  br label %for.body8.5.2

for.body8.5.2:                                    ; preds = %for.inc21.4.2
  %arrayidx11.544.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.545.2 = getelementptr inbounds [8 x i32]* %arrayidx11.544.2, i32 0, i64 0
  %504 = load i32* %arrayidx12.545.2, align 4
  %arrayidx16.546.2 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 5
  %505 = load i32* %arrayidx16.546.2, align 4
  %mul.547.2 = mul nsw i32 %504, %505
  %arrayidx19.549.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.550.2 = getelementptr inbounds [8 x i32]* %arrayidx19.549.2, i32 0, i64 5
  %506 = load i32* %arrayidx20.550.2, align 4
  %add.551.2 = add nsw i32 %506, %mul.547.2
  store i32 %add.551.2, i32* %arrayidx20.550.2, align 4
  br label %for.inc.552.2

for.inc.552.2:                                    ; preds = %for.body8.5.2
  %arrayidx11.1.5.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.1.5.2 = getelementptr inbounds [8 x i32]* %arrayidx11.1.5.2, i32 0, i64 1
  %507 = load i32* %arrayidx12.1.5.2, align 4
  %arrayidx15.1.5.2 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5.2 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5.2, i32 0, i64 5
  %508 = load i32* %arrayidx16.1.5.2, align 4
  %mul.1.5.2 = mul nsw i32 %507, %508
  %arrayidx19.1.5.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.1.5.2 = getelementptr inbounds [8 x i32]* %arrayidx19.1.5.2, i32 0, i64 5
  %509 = load i32* %arrayidx20.1.5.2, align 4
  %add.1.5.2 = add nsw i32 %509, %mul.1.5.2
  store i32 %add.1.5.2, i32* %arrayidx20.1.5.2, align 4
  br label %for.inc.1.5.2

for.inc.1.5.2:                                    ; preds = %for.inc.552.2
  %arrayidx11.2.5.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2.5.2 = getelementptr inbounds [8 x i32]* %arrayidx11.2.5.2, i32 0, i64 2
  %510 = load i32* %arrayidx12.2.5.2, align 4
  %arrayidx15.2.5.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5.2, i32 0, i64 5
  %511 = load i32* %arrayidx16.2.5.2, align 4
  %mul.2.5.2 = mul nsw i32 %510, %511
  %arrayidx19.2.5.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2.5.2 = getelementptr inbounds [8 x i32]* %arrayidx19.2.5.2, i32 0, i64 5
  %512 = load i32* %arrayidx20.2.5.2, align 4
  %add.2.5.2 = add nsw i32 %512, %mul.2.5.2
  store i32 %add.2.5.2, i32* %arrayidx20.2.5.2, align 4
  br label %for.inc.2.5.2

for.inc.2.5.2:                                    ; preds = %for.inc.1.5.2
  %arrayidx11.3.5.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.3.5.2 = getelementptr inbounds [8 x i32]* %arrayidx11.3.5.2, i32 0, i64 3
  %513 = load i32* %arrayidx12.3.5.2, align 4
  %arrayidx15.3.5.2 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5.2 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5.2, i32 0, i64 5
  %514 = load i32* %arrayidx16.3.5.2, align 4
  %mul.3.5.2 = mul nsw i32 %513, %514
  %arrayidx19.3.5.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.3.5.2 = getelementptr inbounds [8 x i32]* %arrayidx19.3.5.2, i32 0, i64 5
  %515 = load i32* %arrayidx20.3.5.2, align 4
  %add.3.5.2 = add nsw i32 %515, %mul.3.5.2
  store i32 %add.3.5.2, i32* %arrayidx20.3.5.2, align 4
  br label %for.inc.3.5.2

for.inc.3.5.2:                                    ; preds = %for.inc.2.5.2
  %arrayidx11.4.5.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.4.5.2 = getelementptr inbounds [8 x i32]* %arrayidx11.4.5.2, i32 0, i64 4
  %516 = load i32* %arrayidx12.4.5.2, align 4
  %arrayidx15.4.5.2 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5.2 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5.2, i32 0, i64 5
  %517 = load i32* %arrayidx16.4.5.2, align 4
  %mul.4.5.2 = mul nsw i32 %516, %517
  %arrayidx19.4.5.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.4.5.2 = getelementptr inbounds [8 x i32]* %arrayidx19.4.5.2, i32 0, i64 5
  %518 = load i32* %arrayidx20.4.5.2, align 4
  %add.4.5.2 = add nsw i32 %518, %mul.4.5.2
  store i32 %add.4.5.2, i32* %arrayidx20.4.5.2, align 4
  br label %for.inc.4.5.2

for.inc.4.5.2:                                    ; preds = %for.inc.3.5.2
  %arrayidx11.5.5.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.5.5.2 = getelementptr inbounds [8 x i32]* %arrayidx11.5.5.2, i32 0, i64 5
  %519 = load i32* %arrayidx12.5.5.2, align 4
  %arrayidx15.5.5.2 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5.2 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5.2, i32 0, i64 5
  %520 = load i32* %arrayidx16.5.5.2, align 4
  %mul.5.5.2 = mul nsw i32 %519, %520
  %arrayidx19.5.5.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.5.5.2 = getelementptr inbounds [8 x i32]* %arrayidx19.5.5.2, i32 0, i64 5
  %521 = load i32* %arrayidx20.5.5.2, align 4
  %add.5.5.2 = add nsw i32 %521, %mul.5.5.2
  store i32 %add.5.5.2, i32* %arrayidx20.5.5.2, align 4
  br label %for.inc.5.5.2

for.inc.5.5.2:                                    ; preds = %for.inc.4.5.2
  %arrayidx11.6.5.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.6.5.2 = getelementptr inbounds [8 x i32]* %arrayidx11.6.5.2, i32 0, i64 6
  %522 = load i32* %arrayidx12.6.5.2, align 4
  %arrayidx15.6.5.2 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5.2 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5.2, i32 0, i64 5
  %523 = load i32* %arrayidx16.6.5.2, align 4
  %mul.6.5.2 = mul nsw i32 %522, %523
  %arrayidx19.6.5.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.6.5.2 = getelementptr inbounds [8 x i32]* %arrayidx19.6.5.2, i32 0, i64 5
  %524 = load i32* %arrayidx20.6.5.2, align 4
  %add.6.5.2 = add nsw i32 %524, %mul.6.5.2
  store i32 %add.6.5.2, i32* %arrayidx20.6.5.2, align 4
  br label %for.inc.6.5.2

for.inc.6.5.2:                                    ; preds = %for.inc.5.5.2
  %arrayidx11.7.5.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.7.5.2 = getelementptr inbounds [8 x i32]* %arrayidx11.7.5.2, i32 0, i64 7
  %525 = load i32* %arrayidx12.7.5.2, align 4
  %arrayidx15.7.5.2 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5.2 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5.2, i32 0, i64 5
  %526 = load i32* %arrayidx16.7.5.2, align 4
  %mul.7.5.2 = mul nsw i32 %525, %526
  %arrayidx19.7.5.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.7.5.2 = getelementptr inbounds [8 x i32]* %arrayidx19.7.5.2, i32 0, i64 5
  %527 = load i32* %arrayidx20.7.5.2, align 4
  %add.7.5.2 = add nsw i32 %527, %mul.7.5.2
  store i32 %add.7.5.2, i32* %arrayidx20.7.5.2, align 4
  br label %for.inc.7.5.2

for.inc.7.5.2:                                    ; preds = %for.inc.6.5.2
  br label %for.inc21.5.2

for.inc21.5.2:                                    ; preds = %for.inc.7.5.2
  %arrayidx.6.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx5.6.2 = getelementptr inbounds [8 x i32]* %arrayidx.6.2, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.2, align 4
  br label %for.body8.6.2

for.body8.6.2:                                    ; preds = %for.inc21.5.2
  %arrayidx11.654.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.655.2 = getelementptr inbounds [8 x i32]* %arrayidx11.654.2, i32 0, i64 0
  %528 = load i32* %arrayidx12.655.2, align 4
  %arrayidx16.656.2 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 6
  %529 = load i32* %arrayidx16.656.2, align 4
  %mul.657.2 = mul nsw i32 %528, %529
  %arrayidx19.659.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.660.2 = getelementptr inbounds [8 x i32]* %arrayidx19.659.2, i32 0, i64 6
  %530 = load i32* %arrayidx20.660.2, align 4
  %add.661.2 = add nsw i32 %530, %mul.657.2
  store i32 %add.661.2, i32* %arrayidx20.660.2, align 4
  br label %for.inc.662.2

for.inc.662.2:                                    ; preds = %for.body8.6.2
  %arrayidx11.1.6.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.1.6.2 = getelementptr inbounds [8 x i32]* %arrayidx11.1.6.2, i32 0, i64 1
  %531 = load i32* %arrayidx12.1.6.2, align 4
  %arrayidx15.1.6.2 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6.2 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6.2, i32 0, i64 6
  %532 = load i32* %arrayidx16.1.6.2, align 4
  %mul.1.6.2 = mul nsw i32 %531, %532
  %arrayidx19.1.6.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.1.6.2 = getelementptr inbounds [8 x i32]* %arrayidx19.1.6.2, i32 0, i64 6
  %533 = load i32* %arrayidx20.1.6.2, align 4
  %add.1.6.2 = add nsw i32 %533, %mul.1.6.2
  store i32 %add.1.6.2, i32* %arrayidx20.1.6.2, align 4
  br label %for.inc.1.6.2

for.inc.1.6.2:                                    ; preds = %for.inc.662.2
  %arrayidx11.2.6.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2.6.2 = getelementptr inbounds [8 x i32]* %arrayidx11.2.6.2, i32 0, i64 2
  %534 = load i32* %arrayidx12.2.6.2, align 4
  %arrayidx15.2.6.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6.2, i32 0, i64 6
  %535 = load i32* %arrayidx16.2.6.2, align 4
  %mul.2.6.2 = mul nsw i32 %534, %535
  %arrayidx19.2.6.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2.6.2 = getelementptr inbounds [8 x i32]* %arrayidx19.2.6.2, i32 0, i64 6
  %536 = load i32* %arrayidx20.2.6.2, align 4
  %add.2.6.2 = add nsw i32 %536, %mul.2.6.2
  store i32 %add.2.6.2, i32* %arrayidx20.2.6.2, align 4
  br label %for.inc.2.6.2

for.inc.2.6.2:                                    ; preds = %for.inc.1.6.2
  %arrayidx11.3.6.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.3.6.2 = getelementptr inbounds [8 x i32]* %arrayidx11.3.6.2, i32 0, i64 3
  %537 = load i32* %arrayidx12.3.6.2, align 4
  %arrayidx15.3.6.2 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6.2 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6.2, i32 0, i64 6
  %538 = load i32* %arrayidx16.3.6.2, align 4
  %mul.3.6.2 = mul nsw i32 %537, %538
  %arrayidx19.3.6.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.3.6.2 = getelementptr inbounds [8 x i32]* %arrayidx19.3.6.2, i32 0, i64 6
  %539 = load i32* %arrayidx20.3.6.2, align 4
  %add.3.6.2 = add nsw i32 %539, %mul.3.6.2
  store i32 %add.3.6.2, i32* %arrayidx20.3.6.2, align 4
  br label %for.inc.3.6.2

for.inc.3.6.2:                                    ; preds = %for.inc.2.6.2
  %arrayidx11.4.6.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.4.6.2 = getelementptr inbounds [8 x i32]* %arrayidx11.4.6.2, i32 0, i64 4
  %540 = load i32* %arrayidx12.4.6.2, align 4
  %arrayidx15.4.6.2 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6.2 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6.2, i32 0, i64 6
  %541 = load i32* %arrayidx16.4.6.2, align 4
  %mul.4.6.2 = mul nsw i32 %540, %541
  %arrayidx19.4.6.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.4.6.2 = getelementptr inbounds [8 x i32]* %arrayidx19.4.6.2, i32 0, i64 6
  %542 = load i32* %arrayidx20.4.6.2, align 4
  %add.4.6.2 = add nsw i32 %542, %mul.4.6.2
  store i32 %add.4.6.2, i32* %arrayidx20.4.6.2, align 4
  br label %for.inc.4.6.2

for.inc.4.6.2:                                    ; preds = %for.inc.3.6.2
  %arrayidx11.5.6.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.5.6.2 = getelementptr inbounds [8 x i32]* %arrayidx11.5.6.2, i32 0, i64 5
  %543 = load i32* %arrayidx12.5.6.2, align 4
  %arrayidx15.5.6.2 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6.2 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6.2, i32 0, i64 6
  %544 = load i32* %arrayidx16.5.6.2, align 4
  %mul.5.6.2 = mul nsw i32 %543, %544
  %arrayidx19.5.6.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.5.6.2 = getelementptr inbounds [8 x i32]* %arrayidx19.5.6.2, i32 0, i64 6
  %545 = load i32* %arrayidx20.5.6.2, align 4
  %add.5.6.2 = add nsw i32 %545, %mul.5.6.2
  store i32 %add.5.6.2, i32* %arrayidx20.5.6.2, align 4
  br label %for.inc.5.6.2

for.inc.5.6.2:                                    ; preds = %for.inc.4.6.2
  %arrayidx11.6.6.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.6.6.2 = getelementptr inbounds [8 x i32]* %arrayidx11.6.6.2, i32 0, i64 6
  %546 = load i32* %arrayidx12.6.6.2, align 4
  %arrayidx15.6.6.2 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6.2 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6.2, i32 0, i64 6
  %547 = load i32* %arrayidx16.6.6.2, align 4
  %mul.6.6.2 = mul nsw i32 %546, %547
  %arrayidx19.6.6.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.6.6.2 = getelementptr inbounds [8 x i32]* %arrayidx19.6.6.2, i32 0, i64 6
  %548 = load i32* %arrayidx20.6.6.2, align 4
  %add.6.6.2 = add nsw i32 %548, %mul.6.6.2
  store i32 %add.6.6.2, i32* %arrayidx20.6.6.2, align 4
  br label %for.inc.6.6.2

for.inc.6.6.2:                                    ; preds = %for.inc.5.6.2
  %arrayidx11.7.6.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.7.6.2 = getelementptr inbounds [8 x i32]* %arrayidx11.7.6.2, i32 0, i64 7
  %549 = load i32* %arrayidx12.7.6.2, align 4
  %arrayidx15.7.6.2 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6.2 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6.2, i32 0, i64 6
  %550 = load i32* %arrayidx16.7.6.2, align 4
  %mul.7.6.2 = mul nsw i32 %549, %550
  %arrayidx19.7.6.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.7.6.2 = getelementptr inbounds [8 x i32]* %arrayidx19.7.6.2, i32 0, i64 6
  %551 = load i32* %arrayidx20.7.6.2, align 4
  %add.7.6.2 = add nsw i32 %551, %mul.7.6.2
  store i32 %add.7.6.2, i32* %arrayidx20.7.6.2, align 4
  br label %for.inc.7.6.2

for.inc.7.6.2:                                    ; preds = %for.inc.6.6.2
  br label %for.inc21.6.2

for.inc21.6.2:                                    ; preds = %for.inc.7.6.2
  %arrayidx.7.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx5.7.2 = getelementptr inbounds [8 x i32]* %arrayidx.7.2, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.2, align 4
  br label %for.body8.7.2

for.body8.7.2:                                    ; preds = %for.inc21.6.2
  %arrayidx11.764.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.765.2 = getelementptr inbounds [8 x i32]* %arrayidx11.764.2, i32 0, i64 0
  %552 = load i32* %arrayidx12.765.2, align 4
  %arrayidx16.766.2 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 7
  %553 = load i32* %arrayidx16.766.2, align 4
  %mul.767.2 = mul nsw i32 %552, %553
  %arrayidx19.769.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.770.2 = getelementptr inbounds [8 x i32]* %arrayidx19.769.2, i32 0, i64 7
  %554 = load i32* %arrayidx20.770.2, align 4
  %add.771.2 = add nsw i32 %554, %mul.767.2
  store i32 %add.771.2, i32* %arrayidx20.770.2, align 4
  br label %for.inc.772.2

for.inc.772.2:                                    ; preds = %for.body8.7.2
  %arrayidx11.1.7.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.1.7.2 = getelementptr inbounds [8 x i32]* %arrayidx11.1.7.2, i32 0, i64 1
  %555 = load i32* %arrayidx12.1.7.2, align 4
  %arrayidx15.1.7.2 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7.2 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7.2, i32 0, i64 7
  %556 = load i32* %arrayidx16.1.7.2, align 4
  %mul.1.7.2 = mul nsw i32 %555, %556
  %arrayidx19.1.7.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.1.7.2 = getelementptr inbounds [8 x i32]* %arrayidx19.1.7.2, i32 0, i64 7
  %557 = load i32* %arrayidx20.1.7.2, align 4
  %add.1.7.2 = add nsw i32 %557, %mul.1.7.2
  store i32 %add.1.7.2, i32* %arrayidx20.1.7.2, align 4
  br label %for.inc.1.7.2

for.inc.1.7.2:                                    ; preds = %for.inc.772.2
  %arrayidx11.2.7.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.2.7.2 = getelementptr inbounds [8 x i32]* %arrayidx11.2.7.2, i32 0, i64 2
  %558 = load i32* %arrayidx12.2.7.2, align 4
  %arrayidx15.2.7.2 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7.2 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7.2, i32 0, i64 7
  %559 = load i32* %arrayidx16.2.7.2, align 4
  %mul.2.7.2 = mul nsw i32 %558, %559
  %arrayidx19.2.7.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.2.7.2 = getelementptr inbounds [8 x i32]* %arrayidx19.2.7.2, i32 0, i64 7
  %560 = load i32* %arrayidx20.2.7.2, align 4
  %add.2.7.2 = add nsw i32 %560, %mul.2.7.2
  store i32 %add.2.7.2, i32* %arrayidx20.2.7.2, align 4
  br label %for.inc.2.7.2

for.inc.2.7.2:                                    ; preds = %for.inc.1.7.2
  %arrayidx11.3.7.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.3.7.2 = getelementptr inbounds [8 x i32]* %arrayidx11.3.7.2, i32 0, i64 3
  %561 = load i32* %arrayidx12.3.7.2, align 4
  %arrayidx15.3.7.2 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7.2 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7.2, i32 0, i64 7
  %562 = load i32* %arrayidx16.3.7.2, align 4
  %mul.3.7.2 = mul nsw i32 %561, %562
  %arrayidx19.3.7.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.3.7.2 = getelementptr inbounds [8 x i32]* %arrayidx19.3.7.2, i32 0, i64 7
  %563 = load i32* %arrayidx20.3.7.2, align 4
  %add.3.7.2 = add nsw i32 %563, %mul.3.7.2
  store i32 %add.3.7.2, i32* %arrayidx20.3.7.2, align 4
  br label %for.inc.3.7.2

for.inc.3.7.2:                                    ; preds = %for.inc.2.7.2
  %arrayidx11.4.7.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.4.7.2 = getelementptr inbounds [8 x i32]* %arrayidx11.4.7.2, i32 0, i64 4
  %564 = load i32* %arrayidx12.4.7.2, align 4
  %arrayidx15.4.7.2 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7.2 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7.2, i32 0, i64 7
  %565 = load i32* %arrayidx16.4.7.2, align 4
  %mul.4.7.2 = mul nsw i32 %564, %565
  %arrayidx19.4.7.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.4.7.2 = getelementptr inbounds [8 x i32]* %arrayidx19.4.7.2, i32 0, i64 7
  %566 = load i32* %arrayidx20.4.7.2, align 4
  %add.4.7.2 = add nsw i32 %566, %mul.4.7.2
  store i32 %add.4.7.2, i32* %arrayidx20.4.7.2, align 4
  br label %for.inc.4.7.2

for.inc.4.7.2:                                    ; preds = %for.inc.3.7.2
  %arrayidx11.5.7.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.5.7.2 = getelementptr inbounds [8 x i32]* %arrayidx11.5.7.2, i32 0, i64 5
  %567 = load i32* %arrayidx12.5.7.2, align 4
  %arrayidx15.5.7.2 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7.2 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7.2, i32 0, i64 7
  %568 = load i32* %arrayidx16.5.7.2, align 4
  %mul.5.7.2 = mul nsw i32 %567, %568
  %arrayidx19.5.7.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.5.7.2 = getelementptr inbounds [8 x i32]* %arrayidx19.5.7.2, i32 0, i64 7
  %569 = load i32* %arrayidx20.5.7.2, align 4
  %add.5.7.2 = add nsw i32 %569, %mul.5.7.2
  store i32 %add.5.7.2, i32* %arrayidx20.5.7.2, align 4
  br label %for.inc.5.7.2

for.inc.5.7.2:                                    ; preds = %for.inc.4.7.2
  %arrayidx11.6.7.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.6.7.2 = getelementptr inbounds [8 x i32]* %arrayidx11.6.7.2, i32 0, i64 6
  %570 = load i32* %arrayidx12.6.7.2, align 4
  %arrayidx15.6.7.2 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7.2 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7.2, i32 0, i64 7
  %571 = load i32* %arrayidx16.6.7.2, align 4
  %mul.6.7.2 = mul nsw i32 %570, %571
  %arrayidx19.6.7.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.6.7.2 = getelementptr inbounds [8 x i32]* %arrayidx19.6.7.2, i32 0, i64 7
  %572 = load i32* %arrayidx20.6.7.2, align 4
  %add.6.7.2 = add nsw i32 %572, %mul.6.7.2
  store i32 %add.6.7.2, i32* %arrayidx20.6.7.2, align 4
  br label %for.inc.6.7.2

for.inc.6.7.2:                                    ; preds = %for.inc.5.7.2
  %arrayidx11.7.7.2 = getelementptr inbounds [8 x i32]* %a, i64 2
  %arrayidx12.7.7.2 = getelementptr inbounds [8 x i32]* %arrayidx11.7.7.2, i32 0, i64 7
  %573 = load i32* %arrayidx12.7.7.2, align 4
  %arrayidx15.7.7.2 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7.2 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7.2, i32 0, i64 7
  %574 = load i32* %arrayidx16.7.7.2, align 4
  %mul.7.7.2 = mul nsw i32 %573, %574
  %arrayidx19.7.7.2 = getelementptr inbounds [8 x i32]* %c, i64 2
  %arrayidx20.7.7.2 = getelementptr inbounds [8 x i32]* %arrayidx19.7.7.2, i32 0, i64 7
  %575 = load i32* %arrayidx20.7.7.2, align 4
  %add.7.7.2 = add nsw i32 %575, %mul.7.7.2
  store i32 %add.7.7.2, i32* %arrayidx20.7.7.2, align 4
  br label %for.inc.7.7.2

for.inc.7.7.2:                                    ; preds = %for.inc.6.7.2
  br label %for.inc21.7.2

for.inc21.7.2:                                    ; preds = %for.inc.7.7.2
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc21.7.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc24.2
  %arrayidx.3224 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx5.3225 = getelementptr inbounds [8 x i32]* %arrayidx.3224, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.3225, align 4
  br label %for.body8.3233

for.body8.3233:                                   ; preds = %for.body3.3
  %arrayidx11.3226 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3227 = getelementptr inbounds [8 x i32]* %arrayidx11.3226, i32 0, i64 0
  %576 = load i32* %arrayidx12.3227, align 4
  %arrayidx16.3228 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 0
  %577 = load i32* %arrayidx16.3228, align 4
  %mul.3229 = mul nsw i32 %576, %577
  %arrayidx19.3230 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3231 = getelementptr inbounds [8 x i32]* %arrayidx19.3230, i32 0, i64 0
  %578 = load i32* %arrayidx20.3231, align 4
  %add.3232 = add nsw i32 %578, %mul.3229
  store i32 %add.3232, i32* %arrayidx20.3231, align 4
  br label %for.inc.3242

for.inc.3242:                                     ; preds = %for.body8.3233
  %arrayidx11.1.3234 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.1.3235 = getelementptr inbounds [8 x i32]* %arrayidx11.1.3234, i32 0, i64 1
  %579 = load i32* %arrayidx12.1.3235, align 4
  %arrayidx15.1.3236 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3237 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3236, i32 0, i64 0
  %580 = load i32* %arrayidx16.1.3237, align 4
  %mul.1.3238 = mul nsw i32 %579, %580
  %arrayidx19.1.3239 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.1.3240 = getelementptr inbounds [8 x i32]* %arrayidx19.1.3239, i32 0, i64 0
  %581 = load i32* %arrayidx20.1.3240, align 4
  %add.1.3241 = add nsw i32 %581, %mul.1.3238
  store i32 %add.1.3241, i32* %arrayidx20.1.3240, align 4
  br label %for.inc.1.3251

for.inc.1.3251:                                   ; preds = %for.inc.3242
  %arrayidx11.2.3243 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.2.3244 = getelementptr inbounds [8 x i32]* %arrayidx11.2.3243, i32 0, i64 2
  %582 = load i32* %arrayidx12.2.3244, align 4
  %arrayidx15.2.3245 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3246 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3245, i32 0, i64 0
  %583 = load i32* %arrayidx16.2.3246, align 4
  %mul.2.3247 = mul nsw i32 %582, %583
  %arrayidx19.2.3248 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.2.3249 = getelementptr inbounds [8 x i32]* %arrayidx19.2.3248, i32 0, i64 0
  %584 = load i32* %arrayidx20.2.3249, align 4
  %add.2.3250 = add nsw i32 %584, %mul.2.3247
  store i32 %add.2.3250, i32* %arrayidx20.2.3249, align 4
  br label %for.inc.2.3260

for.inc.2.3260:                                   ; preds = %for.inc.1.3251
  %arrayidx11.3.3252 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3.3253 = getelementptr inbounds [8 x i32]* %arrayidx11.3.3252, i32 0, i64 3
  %585 = load i32* %arrayidx12.3.3253, align 4
  %arrayidx15.3.3254 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3255 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3254, i32 0, i64 0
  %586 = load i32* %arrayidx16.3.3255, align 4
  %mul.3.3256 = mul nsw i32 %585, %586
  %arrayidx19.3.3257 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3.3258 = getelementptr inbounds [8 x i32]* %arrayidx19.3.3257, i32 0, i64 0
  %587 = load i32* %arrayidx20.3.3258, align 4
  %add.3.3259 = add nsw i32 %587, %mul.3.3256
  store i32 %add.3.3259, i32* %arrayidx20.3.3258, align 4
  br label %for.inc.3.3269

for.inc.3.3269:                                   ; preds = %for.inc.2.3260
  %arrayidx11.4.3261 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.4.3262 = getelementptr inbounds [8 x i32]* %arrayidx11.4.3261, i32 0, i64 4
  %588 = load i32* %arrayidx12.4.3262, align 4
  %arrayidx15.4.3263 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3264 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3263, i32 0, i64 0
  %589 = load i32* %arrayidx16.4.3264, align 4
  %mul.4.3265 = mul nsw i32 %588, %589
  %arrayidx19.4.3266 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.4.3267 = getelementptr inbounds [8 x i32]* %arrayidx19.4.3266, i32 0, i64 0
  %590 = load i32* %arrayidx20.4.3267, align 4
  %add.4.3268 = add nsw i32 %590, %mul.4.3265
  store i32 %add.4.3268, i32* %arrayidx20.4.3267, align 4
  br label %for.inc.4.3278

for.inc.4.3278:                                   ; preds = %for.inc.3.3269
  %arrayidx11.5.3270 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.5.3271 = getelementptr inbounds [8 x i32]* %arrayidx11.5.3270, i32 0, i64 5
  %591 = load i32* %arrayidx12.5.3271, align 4
  %arrayidx15.5.3272 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3273 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3272, i32 0, i64 0
  %592 = load i32* %arrayidx16.5.3273, align 4
  %mul.5.3274 = mul nsw i32 %591, %592
  %arrayidx19.5.3275 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.5.3276 = getelementptr inbounds [8 x i32]* %arrayidx19.5.3275, i32 0, i64 0
  %593 = load i32* %arrayidx20.5.3276, align 4
  %add.5.3277 = add nsw i32 %593, %mul.5.3274
  store i32 %add.5.3277, i32* %arrayidx20.5.3276, align 4
  br label %for.inc.5.3287

for.inc.5.3287:                                   ; preds = %for.inc.4.3278
  %arrayidx11.6.3279 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.6.3280 = getelementptr inbounds [8 x i32]* %arrayidx11.6.3279, i32 0, i64 6
  %594 = load i32* %arrayidx12.6.3280, align 4
  %arrayidx15.6.3281 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3282 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3281, i32 0, i64 0
  %595 = load i32* %arrayidx16.6.3282, align 4
  %mul.6.3283 = mul nsw i32 %594, %595
  %arrayidx19.6.3284 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.6.3285 = getelementptr inbounds [8 x i32]* %arrayidx19.6.3284, i32 0, i64 0
  %596 = load i32* %arrayidx20.6.3285, align 4
  %add.6.3286 = add nsw i32 %596, %mul.6.3283
  store i32 %add.6.3286, i32* %arrayidx20.6.3285, align 4
  br label %for.inc.6.3296

for.inc.6.3296:                                   ; preds = %for.inc.5.3287
  %arrayidx11.7.3288 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.7.3289 = getelementptr inbounds [8 x i32]* %arrayidx11.7.3288, i32 0, i64 7
  %597 = load i32* %arrayidx12.7.3289, align 4
  %arrayidx15.7.3290 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3291 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3290, i32 0, i64 0
  %598 = load i32* %arrayidx16.7.3291, align 4
  %mul.7.3292 = mul nsw i32 %597, %598
  %arrayidx19.7.3293 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.7.3294 = getelementptr inbounds [8 x i32]* %arrayidx19.7.3293, i32 0, i64 0
  %599 = load i32* %arrayidx20.7.3294, align 4
  %add.7.3295 = add nsw i32 %599, %mul.7.3292
  store i32 %add.7.3295, i32* %arrayidx20.7.3294, align 4
  br label %for.inc.7.3297

for.inc.7.3297:                                   ; preds = %for.inc.6.3296
  br label %for.inc21.3298

for.inc21.3298:                                   ; preds = %for.inc.7.3297
  %arrayidx.1.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx5.1.3 = getelementptr inbounds [8 x i32]* %arrayidx.1.3, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.3, align 4
  br label %for.body8.1.3

for.body8.1.3:                                    ; preds = %for.inc21.3298
  %arrayidx11.14.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.15.3 = getelementptr inbounds [8 x i32]* %arrayidx11.14.3, i32 0, i64 0
  %600 = load i32* %arrayidx12.15.3, align 4
  %arrayidx16.16.3 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 1
  %601 = load i32* %arrayidx16.16.3, align 4
  %mul.17.3 = mul nsw i32 %600, %601
  %arrayidx19.19.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.110.3 = getelementptr inbounds [8 x i32]* %arrayidx19.19.3, i32 0, i64 1
  %602 = load i32* %arrayidx20.110.3, align 4
  %add.111.3 = add nsw i32 %602, %mul.17.3
  store i32 %add.111.3, i32* %arrayidx20.110.3, align 4
  br label %for.inc.112.3

for.inc.112.3:                                    ; preds = %for.body8.1.3
  %arrayidx11.1.1.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.1.1.3 = getelementptr inbounds [8 x i32]* %arrayidx11.1.1.3, i32 0, i64 1
  %603 = load i32* %arrayidx12.1.1.3, align 4
  %arrayidx15.1.1.3 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.1.3 = getelementptr inbounds [8 x i32]* %arrayidx15.1.1.3, i32 0, i64 1
  %604 = load i32* %arrayidx16.1.1.3, align 4
  %mul.1.1.3 = mul nsw i32 %603, %604
  %arrayidx19.1.1.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.1.1.3 = getelementptr inbounds [8 x i32]* %arrayidx19.1.1.3, i32 0, i64 1
  %605 = load i32* %arrayidx20.1.1.3, align 4
  %add.1.1.3 = add nsw i32 %605, %mul.1.1.3
  store i32 %add.1.1.3, i32* %arrayidx20.1.1.3, align 4
  br label %for.inc.1.1.3

for.inc.1.1.3:                                    ; preds = %for.inc.112.3
  %arrayidx11.2.1.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.2.1.3 = getelementptr inbounds [8 x i32]* %arrayidx11.2.1.3, i32 0, i64 2
  %606 = load i32* %arrayidx12.2.1.3, align 4
  %arrayidx15.2.1.3 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.1.3 = getelementptr inbounds [8 x i32]* %arrayidx15.2.1.3, i32 0, i64 1
  %607 = load i32* %arrayidx16.2.1.3, align 4
  %mul.2.1.3 = mul nsw i32 %606, %607
  %arrayidx19.2.1.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.2.1.3 = getelementptr inbounds [8 x i32]* %arrayidx19.2.1.3, i32 0, i64 1
  %608 = load i32* %arrayidx20.2.1.3, align 4
  %add.2.1.3 = add nsw i32 %608, %mul.2.1.3
  store i32 %add.2.1.3, i32* %arrayidx20.2.1.3, align 4
  br label %for.inc.2.1.3

for.inc.2.1.3:                                    ; preds = %for.inc.1.1.3
  %arrayidx11.3.1.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3.1.3 = getelementptr inbounds [8 x i32]* %arrayidx11.3.1.3, i32 0, i64 3
  %609 = load i32* %arrayidx12.3.1.3, align 4
  %arrayidx15.3.1.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1.3, i32 0, i64 1
  %610 = load i32* %arrayidx16.3.1.3, align 4
  %mul.3.1.3 = mul nsw i32 %609, %610
  %arrayidx19.3.1.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3.1.3 = getelementptr inbounds [8 x i32]* %arrayidx19.3.1.3, i32 0, i64 1
  %611 = load i32* %arrayidx20.3.1.3, align 4
  %add.3.1.3 = add nsw i32 %611, %mul.3.1.3
  store i32 %add.3.1.3, i32* %arrayidx20.3.1.3, align 4
  br label %for.inc.3.1.3

for.inc.3.1.3:                                    ; preds = %for.inc.2.1.3
  %arrayidx11.4.1.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.4.1.3 = getelementptr inbounds [8 x i32]* %arrayidx11.4.1.3, i32 0, i64 4
  %612 = load i32* %arrayidx12.4.1.3, align 4
  %arrayidx15.4.1.3 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1.3 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1.3, i32 0, i64 1
  %613 = load i32* %arrayidx16.4.1.3, align 4
  %mul.4.1.3 = mul nsw i32 %612, %613
  %arrayidx19.4.1.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.4.1.3 = getelementptr inbounds [8 x i32]* %arrayidx19.4.1.3, i32 0, i64 1
  %614 = load i32* %arrayidx20.4.1.3, align 4
  %add.4.1.3 = add nsw i32 %614, %mul.4.1.3
  store i32 %add.4.1.3, i32* %arrayidx20.4.1.3, align 4
  br label %for.inc.4.1.3

for.inc.4.1.3:                                    ; preds = %for.inc.3.1.3
  %arrayidx11.5.1.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.5.1.3 = getelementptr inbounds [8 x i32]* %arrayidx11.5.1.3, i32 0, i64 5
  %615 = load i32* %arrayidx12.5.1.3, align 4
  %arrayidx15.5.1.3 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1.3 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1.3, i32 0, i64 1
  %616 = load i32* %arrayidx16.5.1.3, align 4
  %mul.5.1.3 = mul nsw i32 %615, %616
  %arrayidx19.5.1.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.5.1.3 = getelementptr inbounds [8 x i32]* %arrayidx19.5.1.3, i32 0, i64 1
  %617 = load i32* %arrayidx20.5.1.3, align 4
  %add.5.1.3 = add nsw i32 %617, %mul.5.1.3
  store i32 %add.5.1.3, i32* %arrayidx20.5.1.3, align 4
  br label %for.inc.5.1.3

for.inc.5.1.3:                                    ; preds = %for.inc.4.1.3
  %arrayidx11.6.1.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.6.1.3 = getelementptr inbounds [8 x i32]* %arrayidx11.6.1.3, i32 0, i64 6
  %618 = load i32* %arrayidx12.6.1.3, align 4
  %arrayidx15.6.1.3 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1.3 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1.3, i32 0, i64 1
  %619 = load i32* %arrayidx16.6.1.3, align 4
  %mul.6.1.3 = mul nsw i32 %618, %619
  %arrayidx19.6.1.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.6.1.3 = getelementptr inbounds [8 x i32]* %arrayidx19.6.1.3, i32 0, i64 1
  %620 = load i32* %arrayidx20.6.1.3, align 4
  %add.6.1.3 = add nsw i32 %620, %mul.6.1.3
  store i32 %add.6.1.3, i32* %arrayidx20.6.1.3, align 4
  br label %for.inc.6.1.3

for.inc.6.1.3:                                    ; preds = %for.inc.5.1.3
  %arrayidx11.7.1.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.7.1.3 = getelementptr inbounds [8 x i32]* %arrayidx11.7.1.3, i32 0, i64 7
  %621 = load i32* %arrayidx12.7.1.3, align 4
  %arrayidx15.7.1.3 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1.3 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1.3, i32 0, i64 1
  %622 = load i32* %arrayidx16.7.1.3, align 4
  %mul.7.1.3 = mul nsw i32 %621, %622
  %arrayidx19.7.1.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.7.1.3 = getelementptr inbounds [8 x i32]* %arrayidx19.7.1.3, i32 0, i64 1
  %623 = load i32* %arrayidx20.7.1.3, align 4
  %add.7.1.3 = add nsw i32 %623, %mul.7.1.3
  store i32 %add.7.1.3, i32* %arrayidx20.7.1.3, align 4
  br label %for.inc.7.1.3

for.inc.7.1.3:                                    ; preds = %for.inc.6.1.3
  br label %for.inc21.1.3

for.inc21.1.3:                                    ; preds = %for.inc.7.1.3
  %arrayidx.2.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx5.2.3 = getelementptr inbounds [8 x i32]* %arrayidx.2.3, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.3, align 4
  br label %for.body8.2.3

for.body8.2.3:                                    ; preds = %for.inc21.1.3
  %arrayidx11.214.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.215.3 = getelementptr inbounds [8 x i32]* %arrayidx11.214.3, i32 0, i64 0
  %624 = load i32* %arrayidx12.215.3, align 4
  %arrayidx16.216.3 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 2
  %625 = load i32* %arrayidx16.216.3, align 4
  %mul.217.3 = mul nsw i32 %624, %625
  %arrayidx19.219.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.220.3 = getelementptr inbounds [8 x i32]* %arrayidx19.219.3, i32 0, i64 2
  %626 = load i32* %arrayidx20.220.3, align 4
  %add.221.3 = add nsw i32 %626, %mul.217.3
  store i32 %add.221.3, i32* %arrayidx20.220.3, align 4
  br label %for.inc.222.3

for.inc.222.3:                                    ; preds = %for.body8.2.3
  %arrayidx11.1.2.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.1.2.3 = getelementptr inbounds [8 x i32]* %arrayidx11.1.2.3, i32 0, i64 1
  %627 = load i32* %arrayidx12.1.2.3, align 4
  %arrayidx15.1.2.3 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2.3 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2.3, i32 0, i64 2
  %628 = load i32* %arrayidx16.1.2.3, align 4
  %mul.1.2.3 = mul nsw i32 %627, %628
  %arrayidx19.1.2.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.1.2.3 = getelementptr inbounds [8 x i32]* %arrayidx19.1.2.3, i32 0, i64 2
  %629 = load i32* %arrayidx20.1.2.3, align 4
  %add.1.2.3 = add nsw i32 %629, %mul.1.2.3
  store i32 %add.1.2.3, i32* %arrayidx20.1.2.3, align 4
  br label %for.inc.1.2.3

for.inc.1.2.3:                                    ; preds = %for.inc.222.3
  %arrayidx11.2.2.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.2.2.3 = getelementptr inbounds [8 x i32]* %arrayidx11.2.2.3, i32 0, i64 2
  %630 = load i32* %arrayidx12.2.2.3, align 4
  %arrayidx15.2.2.3 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2.3 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2.3, i32 0, i64 2
  %631 = load i32* %arrayidx16.2.2.3, align 4
  %mul.2.2.3 = mul nsw i32 %630, %631
  %arrayidx19.2.2.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.2.2.3 = getelementptr inbounds [8 x i32]* %arrayidx19.2.2.3, i32 0, i64 2
  %632 = load i32* %arrayidx20.2.2.3, align 4
  %add.2.2.3 = add nsw i32 %632, %mul.2.2.3
  store i32 %add.2.2.3, i32* %arrayidx20.2.2.3, align 4
  br label %for.inc.2.2.3

for.inc.2.2.3:                                    ; preds = %for.inc.1.2.3
  %arrayidx11.3.2.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3.2.3 = getelementptr inbounds [8 x i32]* %arrayidx11.3.2.3, i32 0, i64 3
  %633 = load i32* %arrayidx12.3.2.3, align 4
  %arrayidx15.3.2.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2.3, i32 0, i64 2
  %634 = load i32* %arrayidx16.3.2.3, align 4
  %mul.3.2.3 = mul nsw i32 %633, %634
  %arrayidx19.3.2.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3.2.3 = getelementptr inbounds [8 x i32]* %arrayidx19.3.2.3, i32 0, i64 2
  %635 = load i32* %arrayidx20.3.2.3, align 4
  %add.3.2.3 = add nsw i32 %635, %mul.3.2.3
  store i32 %add.3.2.3, i32* %arrayidx20.3.2.3, align 4
  br label %for.inc.3.2.3

for.inc.3.2.3:                                    ; preds = %for.inc.2.2.3
  %arrayidx11.4.2.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.4.2.3 = getelementptr inbounds [8 x i32]* %arrayidx11.4.2.3, i32 0, i64 4
  %636 = load i32* %arrayidx12.4.2.3, align 4
  %arrayidx15.4.2.3 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2.3 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2.3, i32 0, i64 2
  %637 = load i32* %arrayidx16.4.2.3, align 4
  %mul.4.2.3 = mul nsw i32 %636, %637
  %arrayidx19.4.2.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.4.2.3 = getelementptr inbounds [8 x i32]* %arrayidx19.4.2.3, i32 0, i64 2
  %638 = load i32* %arrayidx20.4.2.3, align 4
  %add.4.2.3 = add nsw i32 %638, %mul.4.2.3
  store i32 %add.4.2.3, i32* %arrayidx20.4.2.3, align 4
  br label %for.inc.4.2.3

for.inc.4.2.3:                                    ; preds = %for.inc.3.2.3
  %arrayidx11.5.2.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.5.2.3 = getelementptr inbounds [8 x i32]* %arrayidx11.5.2.3, i32 0, i64 5
  %639 = load i32* %arrayidx12.5.2.3, align 4
  %arrayidx15.5.2.3 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2.3 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2.3, i32 0, i64 2
  %640 = load i32* %arrayidx16.5.2.3, align 4
  %mul.5.2.3 = mul nsw i32 %639, %640
  %arrayidx19.5.2.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.5.2.3 = getelementptr inbounds [8 x i32]* %arrayidx19.5.2.3, i32 0, i64 2
  %641 = load i32* %arrayidx20.5.2.3, align 4
  %add.5.2.3 = add nsw i32 %641, %mul.5.2.3
  store i32 %add.5.2.3, i32* %arrayidx20.5.2.3, align 4
  br label %for.inc.5.2.3

for.inc.5.2.3:                                    ; preds = %for.inc.4.2.3
  %arrayidx11.6.2.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.6.2.3 = getelementptr inbounds [8 x i32]* %arrayidx11.6.2.3, i32 0, i64 6
  %642 = load i32* %arrayidx12.6.2.3, align 4
  %arrayidx15.6.2.3 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2.3 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2.3, i32 0, i64 2
  %643 = load i32* %arrayidx16.6.2.3, align 4
  %mul.6.2.3 = mul nsw i32 %642, %643
  %arrayidx19.6.2.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.6.2.3 = getelementptr inbounds [8 x i32]* %arrayidx19.6.2.3, i32 0, i64 2
  %644 = load i32* %arrayidx20.6.2.3, align 4
  %add.6.2.3 = add nsw i32 %644, %mul.6.2.3
  store i32 %add.6.2.3, i32* %arrayidx20.6.2.3, align 4
  br label %for.inc.6.2.3

for.inc.6.2.3:                                    ; preds = %for.inc.5.2.3
  %arrayidx11.7.2.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.7.2.3 = getelementptr inbounds [8 x i32]* %arrayidx11.7.2.3, i32 0, i64 7
  %645 = load i32* %arrayidx12.7.2.3, align 4
  %arrayidx15.7.2.3 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2.3 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2.3, i32 0, i64 2
  %646 = load i32* %arrayidx16.7.2.3, align 4
  %mul.7.2.3 = mul nsw i32 %645, %646
  %arrayidx19.7.2.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.7.2.3 = getelementptr inbounds [8 x i32]* %arrayidx19.7.2.3, i32 0, i64 2
  %647 = load i32* %arrayidx20.7.2.3, align 4
  %add.7.2.3 = add nsw i32 %647, %mul.7.2.3
  store i32 %add.7.2.3, i32* %arrayidx20.7.2.3, align 4
  br label %for.inc.7.2.3

for.inc.7.2.3:                                    ; preds = %for.inc.6.2.3
  br label %for.inc21.2.3

for.inc21.2.3:                                    ; preds = %for.inc.7.2.3
  %arrayidx.3.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx5.3.3 = getelementptr inbounds [8 x i32]* %arrayidx.3.3, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.3, align 4
  br label %for.body8.3.3

for.body8.3.3:                                    ; preds = %for.inc21.2.3
  %arrayidx11.324.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.325.3 = getelementptr inbounds [8 x i32]* %arrayidx11.324.3, i32 0, i64 0
  %648 = load i32* %arrayidx12.325.3, align 4
  %arrayidx16.326.3 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 3
  %649 = load i32* %arrayidx16.326.3, align 4
  %mul.327.3 = mul nsw i32 %648, %649
  %arrayidx19.329.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.330.3 = getelementptr inbounds [8 x i32]* %arrayidx19.329.3, i32 0, i64 3
  %650 = load i32* %arrayidx20.330.3, align 4
  %add.331.3 = add nsw i32 %650, %mul.327.3
  store i32 %add.331.3, i32* %arrayidx20.330.3, align 4
  br label %for.inc.332.3

for.inc.332.3:                                    ; preds = %for.body8.3.3
  %arrayidx11.1.3.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.1.3.3 = getelementptr inbounds [8 x i32]* %arrayidx11.1.3.3, i32 0, i64 1
  %651 = load i32* %arrayidx12.1.3.3, align 4
  %arrayidx15.1.3.3 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3.3 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3.3, i32 0, i64 3
  %652 = load i32* %arrayidx16.1.3.3, align 4
  %mul.1.3.3 = mul nsw i32 %651, %652
  %arrayidx19.1.3.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.1.3.3 = getelementptr inbounds [8 x i32]* %arrayidx19.1.3.3, i32 0, i64 3
  %653 = load i32* %arrayidx20.1.3.3, align 4
  %add.1.3.3 = add nsw i32 %653, %mul.1.3.3
  store i32 %add.1.3.3, i32* %arrayidx20.1.3.3, align 4
  br label %for.inc.1.3.3

for.inc.1.3.3:                                    ; preds = %for.inc.332.3
  %arrayidx11.2.3.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.2.3.3 = getelementptr inbounds [8 x i32]* %arrayidx11.2.3.3, i32 0, i64 2
  %654 = load i32* %arrayidx12.2.3.3, align 4
  %arrayidx15.2.3.3 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3.3 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3.3, i32 0, i64 3
  %655 = load i32* %arrayidx16.2.3.3, align 4
  %mul.2.3.3 = mul nsw i32 %654, %655
  %arrayidx19.2.3.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.2.3.3 = getelementptr inbounds [8 x i32]* %arrayidx19.2.3.3, i32 0, i64 3
  %656 = load i32* %arrayidx20.2.3.3, align 4
  %add.2.3.3 = add nsw i32 %656, %mul.2.3.3
  store i32 %add.2.3.3, i32* %arrayidx20.2.3.3, align 4
  br label %for.inc.2.3.3

for.inc.2.3.3:                                    ; preds = %for.inc.1.3.3
  %arrayidx11.3.3.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3.3.3 = getelementptr inbounds [8 x i32]* %arrayidx11.3.3.3, i32 0, i64 3
  %657 = load i32* %arrayidx12.3.3.3, align 4
  %arrayidx15.3.3.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3.3, i32 0, i64 3
  %658 = load i32* %arrayidx16.3.3.3, align 4
  %mul.3.3.3 = mul nsw i32 %657, %658
  %arrayidx19.3.3.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3.3.3 = getelementptr inbounds [8 x i32]* %arrayidx19.3.3.3, i32 0, i64 3
  %659 = load i32* %arrayidx20.3.3.3, align 4
  %add.3.3.3 = add nsw i32 %659, %mul.3.3.3
  store i32 %add.3.3.3, i32* %arrayidx20.3.3.3, align 4
  br label %for.inc.3.3.3

for.inc.3.3.3:                                    ; preds = %for.inc.2.3.3
  %arrayidx11.4.3.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.4.3.3 = getelementptr inbounds [8 x i32]* %arrayidx11.4.3.3, i32 0, i64 4
  %660 = load i32* %arrayidx12.4.3.3, align 4
  %arrayidx15.4.3.3 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3.3 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3.3, i32 0, i64 3
  %661 = load i32* %arrayidx16.4.3.3, align 4
  %mul.4.3.3 = mul nsw i32 %660, %661
  %arrayidx19.4.3.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.4.3.3 = getelementptr inbounds [8 x i32]* %arrayidx19.4.3.3, i32 0, i64 3
  %662 = load i32* %arrayidx20.4.3.3, align 4
  %add.4.3.3 = add nsw i32 %662, %mul.4.3.3
  store i32 %add.4.3.3, i32* %arrayidx20.4.3.3, align 4
  br label %for.inc.4.3.3

for.inc.4.3.3:                                    ; preds = %for.inc.3.3.3
  %arrayidx11.5.3.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.5.3.3 = getelementptr inbounds [8 x i32]* %arrayidx11.5.3.3, i32 0, i64 5
  %663 = load i32* %arrayidx12.5.3.3, align 4
  %arrayidx15.5.3.3 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3.3 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3.3, i32 0, i64 3
  %664 = load i32* %arrayidx16.5.3.3, align 4
  %mul.5.3.3 = mul nsw i32 %663, %664
  %arrayidx19.5.3.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.5.3.3 = getelementptr inbounds [8 x i32]* %arrayidx19.5.3.3, i32 0, i64 3
  %665 = load i32* %arrayidx20.5.3.3, align 4
  %add.5.3.3 = add nsw i32 %665, %mul.5.3.3
  store i32 %add.5.3.3, i32* %arrayidx20.5.3.3, align 4
  br label %for.inc.5.3.3

for.inc.5.3.3:                                    ; preds = %for.inc.4.3.3
  %arrayidx11.6.3.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.6.3.3 = getelementptr inbounds [8 x i32]* %arrayidx11.6.3.3, i32 0, i64 6
  %666 = load i32* %arrayidx12.6.3.3, align 4
  %arrayidx15.6.3.3 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3.3 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3.3, i32 0, i64 3
  %667 = load i32* %arrayidx16.6.3.3, align 4
  %mul.6.3.3 = mul nsw i32 %666, %667
  %arrayidx19.6.3.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.6.3.3 = getelementptr inbounds [8 x i32]* %arrayidx19.6.3.3, i32 0, i64 3
  %668 = load i32* %arrayidx20.6.3.3, align 4
  %add.6.3.3 = add nsw i32 %668, %mul.6.3.3
  store i32 %add.6.3.3, i32* %arrayidx20.6.3.3, align 4
  br label %for.inc.6.3.3

for.inc.6.3.3:                                    ; preds = %for.inc.5.3.3
  %arrayidx11.7.3.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.7.3.3 = getelementptr inbounds [8 x i32]* %arrayidx11.7.3.3, i32 0, i64 7
  %669 = load i32* %arrayidx12.7.3.3, align 4
  %arrayidx15.7.3.3 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3.3 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3.3, i32 0, i64 3
  %670 = load i32* %arrayidx16.7.3.3, align 4
  %mul.7.3.3 = mul nsw i32 %669, %670
  %arrayidx19.7.3.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.7.3.3 = getelementptr inbounds [8 x i32]* %arrayidx19.7.3.3, i32 0, i64 3
  %671 = load i32* %arrayidx20.7.3.3, align 4
  %add.7.3.3 = add nsw i32 %671, %mul.7.3.3
  store i32 %add.7.3.3, i32* %arrayidx20.7.3.3, align 4
  br label %for.inc.7.3.3

for.inc.7.3.3:                                    ; preds = %for.inc.6.3.3
  br label %for.inc21.3.3

for.inc21.3.3:                                    ; preds = %for.inc.7.3.3
  %arrayidx.4.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx5.4.3 = getelementptr inbounds [8 x i32]* %arrayidx.4.3, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.3, align 4
  br label %for.body8.4.3

for.body8.4.3:                                    ; preds = %for.inc21.3.3
  %arrayidx11.434.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.435.3 = getelementptr inbounds [8 x i32]* %arrayidx11.434.3, i32 0, i64 0
  %672 = load i32* %arrayidx12.435.3, align 4
  %arrayidx16.436.3 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 4
  %673 = load i32* %arrayidx16.436.3, align 4
  %mul.437.3 = mul nsw i32 %672, %673
  %arrayidx19.439.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.440.3 = getelementptr inbounds [8 x i32]* %arrayidx19.439.3, i32 0, i64 4
  %674 = load i32* %arrayidx20.440.3, align 4
  %add.441.3 = add nsw i32 %674, %mul.437.3
  store i32 %add.441.3, i32* %arrayidx20.440.3, align 4
  br label %for.inc.442.3

for.inc.442.3:                                    ; preds = %for.body8.4.3
  %arrayidx11.1.4.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.1.4.3 = getelementptr inbounds [8 x i32]* %arrayidx11.1.4.3, i32 0, i64 1
  %675 = load i32* %arrayidx12.1.4.3, align 4
  %arrayidx15.1.4.3 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4.3 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4.3, i32 0, i64 4
  %676 = load i32* %arrayidx16.1.4.3, align 4
  %mul.1.4.3 = mul nsw i32 %675, %676
  %arrayidx19.1.4.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.1.4.3 = getelementptr inbounds [8 x i32]* %arrayidx19.1.4.3, i32 0, i64 4
  %677 = load i32* %arrayidx20.1.4.3, align 4
  %add.1.4.3 = add nsw i32 %677, %mul.1.4.3
  store i32 %add.1.4.3, i32* %arrayidx20.1.4.3, align 4
  br label %for.inc.1.4.3

for.inc.1.4.3:                                    ; preds = %for.inc.442.3
  %arrayidx11.2.4.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.2.4.3 = getelementptr inbounds [8 x i32]* %arrayidx11.2.4.3, i32 0, i64 2
  %678 = load i32* %arrayidx12.2.4.3, align 4
  %arrayidx15.2.4.3 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4.3 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4.3, i32 0, i64 4
  %679 = load i32* %arrayidx16.2.4.3, align 4
  %mul.2.4.3 = mul nsw i32 %678, %679
  %arrayidx19.2.4.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.2.4.3 = getelementptr inbounds [8 x i32]* %arrayidx19.2.4.3, i32 0, i64 4
  %680 = load i32* %arrayidx20.2.4.3, align 4
  %add.2.4.3 = add nsw i32 %680, %mul.2.4.3
  store i32 %add.2.4.3, i32* %arrayidx20.2.4.3, align 4
  br label %for.inc.2.4.3

for.inc.2.4.3:                                    ; preds = %for.inc.1.4.3
  %arrayidx11.3.4.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3.4.3 = getelementptr inbounds [8 x i32]* %arrayidx11.3.4.3, i32 0, i64 3
  %681 = load i32* %arrayidx12.3.4.3, align 4
  %arrayidx15.3.4.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4.3, i32 0, i64 4
  %682 = load i32* %arrayidx16.3.4.3, align 4
  %mul.3.4.3 = mul nsw i32 %681, %682
  %arrayidx19.3.4.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3.4.3 = getelementptr inbounds [8 x i32]* %arrayidx19.3.4.3, i32 0, i64 4
  %683 = load i32* %arrayidx20.3.4.3, align 4
  %add.3.4.3 = add nsw i32 %683, %mul.3.4.3
  store i32 %add.3.4.3, i32* %arrayidx20.3.4.3, align 4
  br label %for.inc.3.4.3

for.inc.3.4.3:                                    ; preds = %for.inc.2.4.3
  %arrayidx11.4.4.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.4.4.3 = getelementptr inbounds [8 x i32]* %arrayidx11.4.4.3, i32 0, i64 4
  %684 = load i32* %arrayidx12.4.4.3, align 4
  %arrayidx15.4.4.3 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4.3 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4.3, i32 0, i64 4
  %685 = load i32* %arrayidx16.4.4.3, align 4
  %mul.4.4.3 = mul nsw i32 %684, %685
  %arrayidx19.4.4.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.4.4.3 = getelementptr inbounds [8 x i32]* %arrayidx19.4.4.3, i32 0, i64 4
  %686 = load i32* %arrayidx20.4.4.3, align 4
  %add.4.4.3 = add nsw i32 %686, %mul.4.4.3
  store i32 %add.4.4.3, i32* %arrayidx20.4.4.3, align 4
  br label %for.inc.4.4.3

for.inc.4.4.3:                                    ; preds = %for.inc.3.4.3
  %arrayidx11.5.4.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.5.4.3 = getelementptr inbounds [8 x i32]* %arrayidx11.5.4.3, i32 0, i64 5
  %687 = load i32* %arrayidx12.5.4.3, align 4
  %arrayidx15.5.4.3 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4.3 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4.3, i32 0, i64 4
  %688 = load i32* %arrayidx16.5.4.3, align 4
  %mul.5.4.3 = mul nsw i32 %687, %688
  %arrayidx19.5.4.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.5.4.3 = getelementptr inbounds [8 x i32]* %arrayidx19.5.4.3, i32 0, i64 4
  %689 = load i32* %arrayidx20.5.4.3, align 4
  %add.5.4.3 = add nsw i32 %689, %mul.5.4.3
  store i32 %add.5.4.3, i32* %arrayidx20.5.4.3, align 4
  br label %for.inc.5.4.3

for.inc.5.4.3:                                    ; preds = %for.inc.4.4.3
  %arrayidx11.6.4.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.6.4.3 = getelementptr inbounds [8 x i32]* %arrayidx11.6.4.3, i32 0, i64 6
  %690 = load i32* %arrayidx12.6.4.3, align 4
  %arrayidx15.6.4.3 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4.3 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4.3, i32 0, i64 4
  %691 = load i32* %arrayidx16.6.4.3, align 4
  %mul.6.4.3 = mul nsw i32 %690, %691
  %arrayidx19.6.4.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.6.4.3 = getelementptr inbounds [8 x i32]* %arrayidx19.6.4.3, i32 0, i64 4
  %692 = load i32* %arrayidx20.6.4.3, align 4
  %add.6.4.3 = add nsw i32 %692, %mul.6.4.3
  store i32 %add.6.4.3, i32* %arrayidx20.6.4.3, align 4
  br label %for.inc.6.4.3

for.inc.6.4.3:                                    ; preds = %for.inc.5.4.3
  %arrayidx11.7.4.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.7.4.3 = getelementptr inbounds [8 x i32]* %arrayidx11.7.4.3, i32 0, i64 7
  %693 = load i32* %arrayidx12.7.4.3, align 4
  %arrayidx15.7.4.3 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4.3 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4.3, i32 0, i64 4
  %694 = load i32* %arrayidx16.7.4.3, align 4
  %mul.7.4.3 = mul nsw i32 %693, %694
  %arrayidx19.7.4.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.7.4.3 = getelementptr inbounds [8 x i32]* %arrayidx19.7.4.3, i32 0, i64 4
  %695 = load i32* %arrayidx20.7.4.3, align 4
  %add.7.4.3 = add nsw i32 %695, %mul.7.4.3
  store i32 %add.7.4.3, i32* %arrayidx20.7.4.3, align 4
  br label %for.inc.7.4.3

for.inc.7.4.3:                                    ; preds = %for.inc.6.4.3
  br label %for.inc21.4.3

for.inc21.4.3:                                    ; preds = %for.inc.7.4.3
  %arrayidx.5.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx5.5.3 = getelementptr inbounds [8 x i32]* %arrayidx.5.3, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.3, align 4
  br label %for.body8.5.3

for.body8.5.3:                                    ; preds = %for.inc21.4.3
  %arrayidx11.544.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.545.3 = getelementptr inbounds [8 x i32]* %arrayidx11.544.3, i32 0, i64 0
  %696 = load i32* %arrayidx12.545.3, align 4
  %arrayidx16.546.3 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 5
  %697 = load i32* %arrayidx16.546.3, align 4
  %mul.547.3 = mul nsw i32 %696, %697
  %arrayidx19.549.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.550.3 = getelementptr inbounds [8 x i32]* %arrayidx19.549.3, i32 0, i64 5
  %698 = load i32* %arrayidx20.550.3, align 4
  %add.551.3 = add nsw i32 %698, %mul.547.3
  store i32 %add.551.3, i32* %arrayidx20.550.3, align 4
  br label %for.inc.552.3

for.inc.552.3:                                    ; preds = %for.body8.5.3
  %arrayidx11.1.5.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.1.5.3 = getelementptr inbounds [8 x i32]* %arrayidx11.1.5.3, i32 0, i64 1
  %699 = load i32* %arrayidx12.1.5.3, align 4
  %arrayidx15.1.5.3 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5.3 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5.3, i32 0, i64 5
  %700 = load i32* %arrayidx16.1.5.3, align 4
  %mul.1.5.3 = mul nsw i32 %699, %700
  %arrayidx19.1.5.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.1.5.3 = getelementptr inbounds [8 x i32]* %arrayidx19.1.5.3, i32 0, i64 5
  %701 = load i32* %arrayidx20.1.5.3, align 4
  %add.1.5.3 = add nsw i32 %701, %mul.1.5.3
  store i32 %add.1.5.3, i32* %arrayidx20.1.5.3, align 4
  br label %for.inc.1.5.3

for.inc.1.5.3:                                    ; preds = %for.inc.552.3
  %arrayidx11.2.5.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.2.5.3 = getelementptr inbounds [8 x i32]* %arrayidx11.2.5.3, i32 0, i64 2
  %702 = load i32* %arrayidx12.2.5.3, align 4
  %arrayidx15.2.5.3 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5.3 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5.3, i32 0, i64 5
  %703 = load i32* %arrayidx16.2.5.3, align 4
  %mul.2.5.3 = mul nsw i32 %702, %703
  %arrayidx19.2.5.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.2.5.3 = getelementptr inbounds [8 x i32]* %arrayidx19.2.5.3, i32 0, i64 5
  %704 = load i32* %arrayidx20.2.5.3, align 4
  %add.2.5.3 = add nsw i32 %704, %mul.2.5.3
  store i32 %add.2.5.3, i32* %arrayidx20.2.5.3, align 4
  br label %for.inc.2.5.3

for.inc.2.5.3:                                    ; preds = %for.inc.1.5.3
  %arrayidx11.3.5.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3.5.3 = getelementptr inbounds [8 x i32]* %arrayidx11.3.5.3, i32 0, i64 3
  %705 = load i32* %arrayidx12.3.5.3, align 4
  %arrayidx15.3.5.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5.3, i32 0, i64 5
  %706 = load i32* %arrayidx16.3.5.3, align 4
  %mul.3.5.3 = mul nsw i32 %705, %706
  %arrayidx19.3.5.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3.5.3 = getelementptr inbounds [8 x i32]* %arrayidx19.3.5.3, i32 0, i64 5
  %707 = load i32* %arrayidx20.3.5.3, align 4
  %add.3.5.3 = add nsw i32 %707, %mul.3.5.3
  store i32 %add.3.5.3, i32* %arrayidx20.3.5.3, align 4
  br label %for.inc.3.5.3

for.inc.3.5.3:                                    ; preds = %for.inc.2.5.3
  %arrayidx11.4.5.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.4.5.3 = getelementptr inbounds [8 x i32]* %arrayidx11.4.5.3, i32 0, i64 4
  %708 = load i32* %arrayidx12.4.5.3, align 4
  %arrayidx15.4.5.3 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5.3 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5.3, i32 0, i64 5
  %709 = load i32* %arrayidx16.4.5.3, align 4
  %mul.4.5.3 = mul nsw i32 %708, %709
  %arrayidx19.4.5.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.4.5.3 = getelementptr inbounds [8 x i32]* %arrayidx19.4.5.3, i32 0, i64 5
  %710 = load i32* %arrayidx20.4.5.3, align 4
  %add.4.5.3 = add nsw i32 %710, %mul.4.5.3
  store i32 %add.4.5.3, i32* %arrayidx20.4.5.3, align 4
  br label %for.inc.4.5.3

for.inc.4.5.3:                                    ; preds = %for.inc.3.5.3
  %arrayidx11.5.5.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.5.5.3 = getelementptr inbounds [8 x i32]* %arrayidx11.5.5.3, i32 0, i64 5
  %711 = load i32* %arrayidx12.5.5.3, align 4
  %arrayidx15.5.5.3 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5.3 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5.3, i32 0, i64 5
  %712 = load i32* %arrayidx16.5.5.3, align 4
  %mul.5.5.3 = mul nsw i32 %711, %712
  %arrayidx19.5.5.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.5.5.3 = getelementptr inbounds [8 x i32]* %arrayidx19.5.5.3, i32 0, i64 5
  %713 = load i32* %arrayidx20.5.5.3, align 4
  %add.5.5.3 = add nsw i32 %713, %mul.5.5.3
  store i32 %add.5.5.3, i32* %arrayidx20.5.5.3, align 4
  br label %for.inc.5.5.3

for.inc.5.5.3:                                    ; preds = %for.inc.4.5.3
  %arrayidx11.6.5.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.6.5.3 = getelementptr inbounds [8 x i32]* %arrayidx11.6.5.3, i32 0, i64 6
  %714 = load i32* %arrayidx12.6.5.3, align 4
  %arrayidx15.6.5.3 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5.3 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5.3, i32 0, i64 5
  %715 = load i32* %arrayidx16.6.5.3, align 4
  %mul.6.5.3 = mul nsw i32 %714, %715
  %arrayidx19.6.5.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.6.5.3 = getelementptr inbounds [8 x i32]* %arrayidx19.6.5.3, i32 0, i64 5
  %716 = load i32* %arrayidx20.6.5.3, align 4
  %add.6.5.3 = add nsw i32 %716, %mul.6.5.3
  store i32 %add.6.5.3, i32* %arrayidx20.6.5.3, align 4
  br label %for.inc.6.5.3

for.inc.6.5.3:                                    ; preds = %for.inc.5.5.3
  %arrayidx11.7.5.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.7.5.3 = getelementptr inbounds [8 x i32]* %arrayidx11.7.5.3, i32 0, i64 7
  %717 = load i32* %arrayidx12.7.5.3, align 4
  %arrayidx15.7.5.3 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5.3 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5.3, i32 0, i64 5
  %718 = load i32* %arrayidx16.7.5.3, align 4
  %mul.7.5.3 = mul nsw i32 %717, %718
  %arrayidx19.7.5.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.7.5.3 = getelementptr inbounds [8 x i32]* %arrayidx19.7.5.3, i32 0, i64 5
  %719 = load i32* %arrayidx20.7.5.3, align 4
  %add.7.5.3 = add nsw i32 %719, %mul.7.5.3
  store i32 %add.7.5.3, i32* %arrayidx20.7.5.3, align 4
  br label %for.inc.7.5.3

for.inc.7.5.3:                                    ; preds = %for.inc.6.5.3
  br label %for.inc21.5.3

for.inc21.5.3:                                    ; preds = %for.inc.7.5.3
  %arrayidx.6.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx5.6.3 = getelementptr inbounds [8 x i32]* %arrayidx.6.3, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.3, align 4
  br label %for.body8.6.3

for.body8.6.3:                                    ; preds = %for.inc21.5.3
  %arrayidx11.654.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.655.3 = getelementptr inbounds [8 x i32]* %arrayidx11.654.3, i32 0, i64 0
  %720 = load i32* %arrayidx12.655.3, align 4
  %arrayidx16.656.3 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 6
  %721 = load i32* %arrayidx16.656.3, align 4
  %mul.657.3 = mul nsw i32 %720, %721
  %arrayidx19.659.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.660.3 = getelementptr inbounds [8 x i32]* %arrayidx19.659.3, i32 0, i64 6
  %722 = load i32* %arrayidx20.660.3, align 4
  %add.661.3 = add nsw i32 %722, %mul.657.3
  store i32 %add.661.3, i32* %arrayidx20.660.3, align 4
  br label %for.inc.662.3

for.inc.662.3:                                    ; preds = %for.body8.6.3
  %arrayidx11.1.6.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.1.6.3 = getelementptr inbounds [8 x i32]* %arrayidx11.1.6.3, i32 0, i64 1
  %723 = load i32* %arrayidx12.1.6.3, align 4
  %arrayidx15.1.6.3 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6.3 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6.3, i32 0, i64 6
  %724 = load i32* %arrayidx16.1.6.3, align 4
  %mul.1.6.3 = mul nsw i32 %723, %724
  %arrayidx19.1.6.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.1.6.3 = getelementptr inbounds [8 x i32]* %arrayidx19.1.6.3, i32 0, i64 6
  %725 = load i32* %arrayidx20.1.6.3, align 4
  %add.1.6.3 = add nsw i32 %725, %mul.1.6.3
  store i32 %add.1.6.3, i32* %arrayidx20.1.6.3, align 4
  br label %for.inc.1.6.3

for.inc.1.6.3:                                    ; preds = %for.inc.662.3
  %arrayidx11.2.6.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.2.6.3 = getelementptr inbounds [8 x i32]* %arrayidx11.2.6.3, i32 0, i64 2
  %726 = load i32* %arrayidx12.2.6.3, align 4
  %arrayidx15.2.6.3 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6.3 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6.3, i32 0, i64 6
  %727 = load i32* %arrayidx16.2.6.3, align 4
  %mul.2.6.3 = mul nsw i32 %726, %727
  %arrayidx19.2.6.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.2.6.3 = getelementptr inbounds [8 x i32]* %arrayidx19.2.6.3, i32 0, i64 6
  %728 = load i32* %arrayidx20.2.6.3, align 4
  %add.2.6.3 = add nsw i32 %728, %mul.2.6.3
  store i32 %add.2.6.3, i32* %arrayidx20.2.6.3, align 4
  br label %for.inc.2.6.3

for.inc.2.6.3:                                    ; preds = %for.inc.1.6.3
  %arrayidx11.3.6.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3.6.3 = getelementptr inbounds [8 x i32]* %arrayidx11.3.6.3, i32 0, i64 3
  %729 = load i32* %arrayidx12.3.6.3, align 4
  %arrayidx15.3.6.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6.3, i32 0, i64 6
  %730 = load i32* %arrayidx16.3.6.3, align 4
  %mul.3.6.3 = mul nsw i32 %729, %730
  %arrayidx19.3.6.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3.6.3 = getelementptr inbounds [8 x i32]* %arrayidx19.3.6.3, i32 0, i64 6
  %731 = load i32* %arrayidx20.3.6.3, align 4
  %add.3.6.3 = add nsw i32 %731, %mul.3.6.3
  store i32 %add.3.6.3, i32* %arrayidx20.3.6.3, align 4
  br label %for.inc.3.6.3

for.inc.3.6.3:                                    ; preds = %for.inc.2.6.3
  %arrayidx11.4.6.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.4.6.3 = getelementptr inbounds [8 x i32]* %arrayidx11.4.6.3, i32 0, i64 4
  %732 = load i32* %arrayidx12.4.6.3, align 4
  %arrayidx15.4.6.3 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6.3 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6.3, i32 0, i64 6
  %733 = load i32* %arrayidx16.4.6.3, align 4
  %mul.4.6.3 = mul nsw i32 %732, %733
  %arrayidx19.4.6.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.4.6.3 = getelementptr inbounds [8 x i32]* %arrayidx19.4.6.3, i32 0, i64 6
  %734 = load i32* %arrayidx20.4.6.3, align 4
  %add.4.6.3 = add nsw i32 %734, %mul.4.6.3
  store i32 %add.4.6.3, i32* %arrayidx20.4.6.3, align 4
  br label %for.inc.4.6.3

for.inc.4.6.3:                                    ; preds = %for.inc.3.6.3
  %arrayidx11.5.6.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.5.6.3 = getelementptr inbounds [8 x i32]* %arrayidx11.5.6.3, i32 0, i64 5
  %735 = load i32* %arrayidx12.5.6.3, align 4
  %arrayidx15.5.6.3 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6.3 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6.3, i32 0, i64 6
  %736 = load i32* %arrayidx16.5.6.3, align 4
  %mul.5.6.3 = mul nsw i32 %735, %736
  %arrayidx19.5.6.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.5.6.3 = getelementptr inbounds [8 x i32]* %arrayidx19.5.6.3, i32 0, i64 6
  %737 = load i32* %arrayidx20.5.6.3, align 4
  %add.5.6.3 = add nsw i32 %737, %mul.5.6.3
  store i32 %add.5.6.3, i32* %arrayidx20.5.6.3, align 4
  br label %for.inc.5.6.3

for.inc.5.6.3:                                    ; preds = %for.inc.4.6.3
  %arrayidx11.6.6.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.6.6.3 = getelementptr inbounds [8 x i32]* %arrayidx11.6.6.3, i32 0, i64 6
  %738 = load i32* %arrayidx12.6.6.3, align 4
  %arrayidx15.6.6.3 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6.3 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6.3, i32 0, i64 6
  %739 = load i32* %arrayidx16.6.6.3, align 4
  %mul.6.6.3 = mul nsw i32 %738, %739
  %arrayidx19.6.6.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.6.6.3 = getelementptr inbounds [8 x i32]* %arrayidx19.6.6.3, i32 0, i64 6
  %740 = load i32* %arrayidx20.6.6.3, align 4
  %add.6.6.3 = add nsw i32 %740, %mul.6.6.3
  store i32 %add.6.6.3, i32* %arrayidx20.6.6.3, align 4
  br label %for.inc.6.6.3

for.inc.6.6.3:                                    ; preds = %for.inc.5.6.3
  %arrayidx11.7.6.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.7.6.3 = getelementptr inbounds [8 x i32]* %arrayidx11.7.6.3, i32 0, i64 7
  %741 = load i32* %arrayidx12.7.6.3, align 4
  %arrayidx15.7.6.3 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6.3 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6.3, i32 0, i64 6
  %742 = load i32* %arrayidx16.7.6.3, align 4
  %mul.7.6.3 = mul nsw i32 %741, %742
  %arrayidx19.7.6.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.7.6.3 = getelementptr inbounds [8 x i32]* %arrayidx19.7.6.3, i32 0, i64 6
  %743 = load i32* %arrayidx20.7.6.3, align 4
  %add.7.6.3 = add nsw i32 %743, %mul.7.6.3
  store i32 %add.7.6.3, i32* %arrayidx20.7.6.3, align 4
  br label %for.inc.7.6.3

for.inc.7.6.3:                                    ; preds = %for.inc.6.6.3
  br label %for.inc21.6.3

for.inc21.6.3:                                    ; preds = %for.inc.7.6.3
  %arrayidx.7.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx5.7.3 = getelementptr inbounds [8 x i32]* %arrayidx.7.3, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.3, align 4
  br label %for.body8.7.3

for.body8.7.3:                                    ; preds = %for.inc21.6.3
  %arrayidx11.764.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.765.3 = getelementptr inbounds [8 x i32]* %arrayidx11.764.3, i32 0, i64 0
  %744 = load i32* %arrayidx12.765.3, align 4
  %arrayidx16.766.3 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 7
  %745 = load i32* %arrayidx16.766.3, align 4
  %mul.767.3 = mul nsw i32 %744, %745
  %arrayidx19.769.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.770.3 = getelementptr inbounds [8 x i32]* %arrayidx19.769.3, i32 0, i64 7
  %746 = load i32* %arrayidx20.770.3, align 4
  %add.771.3 = add nsw i32 %746, %mul.767.3
  store i32 %add.771.3, i32* %arrayidx20.770.3, align 4
  br label %for.inc.772.3

for.inc.772.3:                                    ; preds = %for.body8.7.3
  %arrayidx11.1.7.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.1.7.3 = getelementptr inbounds [8 x i32]* %arrayidx11.1.7.3, i32 0, i64 1
  %747 = load i32* %arrayidx12.1.7.3, align 4
  %arrayidx15.1.7.3 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7.3 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7.3, i32 0, i64 7
  %748 = load i32* %arrayidx16.1.7.3, align 4
  %mul.1.7.3 = mul nsw i32 %747, %748
  %arrayidx19.1.7.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.1.7.3 = getelementptr inbounds [8 x i32]* %arrayidx19.1.7.3, i32 0, i64 7
  %749 = load i32* %arrayidx20.1.7.3, align 4
  %add.1.7.3 = add nsw i32 %749, %mul.1.7.3
  store i32 %add.1.7.3, i32* %arrayidx20.1.7.3, align 4
  br label %for.inc.1.7.3

for.inc.1.7.3:                                    ; preds = %for.inc.772.3
  %arrayidx11.2.7.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.2.7.3 = getelementptr inbounds [8 x i32]* %arrayidx11.2.7.3, i32 0, i64 2
  %750 = load i32* %arrayidx12.2.7.3, align 4
  %arrayidx15.2.7.3 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7.3 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7.3, i32 0, i64 7
  %751 = load i32* %arrayidx16.2.7.3, align 4
  %mul.2.7.3 = mul nsw i32 %750, %751
  %arrayidx19.2.7.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.2.7.3 = getelementptr inbounds [8 x i32]* %arrayidx19.2.7.3, i32 0, i64 7
  %752 = load i32* %arrayidx20.2.7.3, align 4
  %add.2.7.3 = add nsw i32 %752, %mul.2.7.3
  store i32 %add.2.7.3, i32* %arrayidx20.2.7.3, align 4
  br label %for.inc.2.7.3

for.inc.2.7.3:                                    ; preds = %for.inc.1.7.3
  %arrayidx11.3.7.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.3.7.3 = getelementptr inbounds [8 x i32]* %arrayidx11.3.7.3, i32 0, i64 3
  %753 = load i32* %arrayidx12.3.7.3, align 4
  %arrayidx15.3.7.3 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7.3 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7.3, i32 0, i64 7
  %754 = load i32* %arrayidx16.3.7.3, align 4
  %mul.3.7.3 = mul nsw i32 %753, %754
  %arrayidx19.3.7.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.3.7.3 = getelementptr inbounds [8 x i32]* %arrayidx19.3.7.3, i32 0, i64 7
  %755 = load i32* %arrayidx20.3.7.3, align 4
  %add.3.7.3 = add nsw i32 %755, %mul.3.7.3
  store i32 %add.3.7.3, i32* %arrayidx20.3.7.3, align 4
  br label %for.inc.3.7.3

for.inc.3.7.3:                                    ; preds = %for.inc.2.7.3
  %arrayidx11.4.7.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.4.7.3 = getelementptr inbounds [8 x i32]* %arrayidx11.4.7.3, i32 0, i64 4
  %756 = load i32* %arrayidx12.4.7.3, align 4
  %arrayidx15.4.7.3 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7.3 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7.3, i32 0, i64 7
  %757 = load i32* %arrayidx16.4.7.3, align 4
  %mul.4.7.3 = mul nsw i32 %756, %757
  %arrayidx19.4.7.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.4.7.3 = getelementptr inbounds [8 x i32]* %arrayidx19.4.7.3, i32 0, i64 7
  %758 = load i32* %arrayidx20.4.7.3, align 4
  %add.4.7.3 = add nsw i32 %758, %mul.4.7.3
  store i32 %add.4.7.3, i32* %arrayidx20.4.7.3, align 4
  br label %for.inc.4.7.3

for.inc.4.7.3:                                    ; preds = %for.inc.3.7.3
  %arrayidx11.5.7.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.5.7.3 = getelementptr inbounds [8 x i32]* %arrayidx11.5.7.3, i32 0, i64 5
  %759 = load i32* %arrayidx12.5.7.3, align 4
  %arrayidx15.5.7.3 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7.3 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7.3, i32 0, i64 7
  %760 = load i32* %arrayidx16.5.7.3, align 4
  %mul.5.7.3 = mul nsw i32 %759, %760
  %arrayidx19.5.7.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.5.7.3 = getelementptr inbounds [8 x i32]* %arrayidx19.5.7.3, i32 0, i64 7
  %761 = load i32* %arrayidx20.5.7.3, align 4
  %add.5.7.3 = add nsw i32 %761, %mul.5.7.3
  store i32 %add.5.7.3, i32* %arrayidx20.5.7.3, align 4
  br label %for.inc.5.7.3

for.inc.5.7.3:                                    ; preds = %for.inc.4.7.3
  %arrayidx11.6.7.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.6.7.3 = getelementptr inbounds [8 x i32]* %arrayidx11.6.7.3, i32 0, i64 6
  %762 = load i32* %arrayidx12.6.7.3, align 4
  %arrayidx15.6.7.3 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7.3 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7.3, i32 0, i64 7
  %763 = load i32* %arrayidx16.6.7.3, align 4
  %mul.6.7.3 = mul nsw i32 %762, %763
  %arrayidx19.6.7.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.6.7.3 = getelementptr inbounds [8 x i32]* %arrayidx19.6.7.3, i32 0, i64 7
  %764 = load i32* %arrayidx20.6.7.3, align 4
  %add.6.7.3 = add nsw i32 %764, %mul.6.7.3
  store i32 %add.6.7.3, i32* %arrayidx20.6.7.3, align 4
  br label %for.inc.6.7.3

for.inc.6.7.3:                                    ; preds = %for.inc.5.7.3
  %arrayidx11.7.7.3 = getelementptr inbounds [8 x i32]* %a, i64 3
  %arrayidx12.7.7.3 = getelementptr inbounds [8 x i32]* %arrayidx11.7.7.3, i32 0, i64 7
  %765 = load i32* %arrayidx12.7.7.3, align 4
  %arrayidx15.7.7.3 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7.3 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7.3, i32 0, i64 7
  %766 = load i32* %arrayidx16.7.7.3, align 4
  %mul.7.7.3 = mul nsw i32 %765, %766
  %arrayidx19.7.7.3 = getelementptr inbounds [8 x i32]* %c, i64 3
  %arrayidx20.7.7.3 = getelementptr inbounds [8 x i32]* %arrayidx19.7.7.3, i32 0, i64 7
  %767 = load i32* %arrayidx20.7.7.3, align 4
  %add.7.7.3 = add nsw i32 %767, %mul.7.7.3
  store i32 %add.7.7.3, i32* %arrayidx20.7.7.3, align 4
  br label %for.inc.7.7.3

for.inc.7.7.3:                                    ; preds = %for.inc.6.7.3
  br label %for.inc21.7.3

for.inc21.7.3:                                    ; preds = %for.inc.7.7.3
  br label %for.inc24.3

for.inc24.3:                                      ; preds = %for.inc21.7.3
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc24.3
  %arrayidx.4299 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx5.4300 = getelementptr inbounds [8 x i32]* %arrayidx.4299, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.4300, align 4
  br label %for.body8.4308

for.body8.4308:                                   ; preds = %for.body3.4
  %arrayidx11.4301 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4302 = getelementptr inbounds [8 x i32]* %arrayidx11.4301, i32 0, i64 0
  %768 = load i32* %arrayidx12.4302, align 4
  %arrayidx16.4303 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 0
  %769 = load i32* %arrayidx16.4303, align 4
  %mul.4304 = mul nsw i32 %768, %769
  %arrayidx19.4305 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4306 = getelementptr inbounds [8 x i32]* %arrayidx19.4305, i32 0, i64 0
  %770 = load i32* %arrayidx20.4306, align 4
  %add.4307 = add nsw i32 %770, %mul.4304
  store i32 %add.4307, i32* %arrayidx20.4306, align 4
  br label %for.inc.4317

for.inc.4317:                                     ; preds = %for.body8.4308
  %arrayidx11.1.4309 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.1.4310 = getelementptr inbounds [8 x i32]* %arrayidx11.1.4309, i32 0, i64 1
  %771 = load i32* %arrayidx12.1.4310, align 4
  %arrayidx15.1.4311 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4312 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4311, i32 0, i64 0
  %772 = load i32* %arrayidx16.1.4312, align 4
  %mul.1.4313 = mul nsw i32 %771, %772
  %arrayidx19.1.4314 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.1.4315 = getelementptr inbounds [8 x i32]* %arrayidx19.1.4314, i32 0, i64 0
  %773 = load i32* %arrayidx20.1.4315, align 4
  %add.1.4316 = add nsw i32 %773, %mul.1.4313
  store i32 %add.1.4316, i32* %arrayidx20.1.4315, align 4
  br label %for.inc.1.4326

for.inc.1.4326:                                   ; preds = %for.inc.4317
  %arrayidx11.2.4318 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.2.4319 = getelementptr inbounds [8 x i32]* %arrayidx11.2.4318, i32 0, i64 2
  %774 = load i32* %arrayidx12.2.4319, align 4
  %arrayidx15.2.4320 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4321 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4320, i32 0, i64 0
  %775 = load i32* %arrayidx16.2.4321, align 4
  %mul.2.4322 = mul nsw i32 %774, %775
  %arrayidx19.2.4323 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.2.4324 = getelementptr inbounds [8 x i32]* %arrayidx19.2.4323, i32 0, i64 0
  %776 = load i32* %arrayidx20.2.4324, align 4
  %add.2.4325 = add nsw i32 %776, %mul.2.4322
  store i32 %add.2.4325, i32* %arrayidx20.2.4324, align 4
  br label %for.inc.2.4335

for.inc.2.4335:                                   ; preds = %for.inc.1.4326
  %arrayidx11.3.4327 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.3.4328 = getelementptr inbounds [8 x i32]* %arrayidx11.3.4327, i32 0, i64 3
  %777 = load i32* %arrayidx12.3.4328, align 4
  %arrayidx15.3.4329 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4330 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4329, i32 0, i64 0
  %778 = load i32* %arrayidx16.3.4330, align 4
  %mul.3.4331 = mul nsw i32 %777, %778
  %arrayidx19.3.4332 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.3.4333 = getelementptr inbounds [8 x i32]* %arrayidx19.3.4332, i32 0, i64 0
  %779 = load i32* %arrayidx20.3.4333, align 4
  %add.3.4334 = add nsw i32 %779, %mul.3.4331
  store i32 %add.3.4334, i32* %arrayidx20.3.4333, align 4
  br label %for.inc.3.4344

for.inc.3.4344:                                   ; preds = %for.inc.2.4335
  %arrayidx11.4.4336 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4.4337 = getelementptr inbounds [8 x i32]* %arrayidx11.4.4336, i32 0, i64 4
  %780 = load i32* %arrayidx12.4.4337, align 4
  %arrayidx15.4.4338 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4339 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4338, i32 0, i64 0
  %781 = load i32* %arrayidx16.4.4339, align 4
  %mul.4.4340 = mul nsw i32 %780, %781
  %arrayidx19.4.4341 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4.4342 = getelementptr inbounds [8 x i32]* %arrayidx19.4.4341, i32 0, i64 0
  %782 = load i32* %arrayidx20.4.4342, align 4
  %add.4.4343 = add nsw i32 %782, %mul.4.4340
  store i32 %add.4.4343, i32* %arrayidx20.4.4342, align 4
  br label %for.inc.4.4353

for.inc.4.4353:                                   ; preds = %for.inc.3.4344
  %arrayidx11.5.4345 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.5.4346 = getelementptr inbounds [8 x i32]* %arrayidx11.5.4345, i32 0, i64 5
  %783 = load i32* %arrayidx12.5.4346, align 4
  %arrayidx15.5.4347 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4348 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4347, i32 0, i64 0
  %784 = load i32* %arrayidx16.5.4348, align 4
  %mul.5.4349 = mul nsw i32 %783, %784
  %arrayidx19.5.4350 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.5.4351 = getelementptr inbounds [8 x i32]* %arrayidx19.5.4350, i32 0, i64 0
  %785 = load i32* %arrayidx20.5.4351, align 4
  %add.5.4352 = add nsw i32 %785, %mul.5.4349
  store i32 %add.5.4352, i32* %arrayidx20.5.4351, align 4
  br label %for.inc.5.4362

for.inc.5.4362:                                   ; preds = %for.inc.4.4353
  %arrayidx11.6.4354 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.6.4355 = getelementptr inbounds [8 x i32]* %arrayidx11.6.4354, i32 0, i64 6
  %786 = load i32* %arrayidx12.6.4355, align 4
  %arrayidx15.6.4356 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4357 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4356, i32 0, i64 0
  %787 = load i32* %arrayidx16.6.4357, align 4
  %mul.6.4358 = mul nsw i32 %786, %787
  %arrayidx19.6.4359 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.6.4360 = getelementptr inbounds [8 x i32]* %arrayidx19.6.4359, i32 0, i64 0
  %788 = load i32* %arrayidx20.6.4360, align 4
  %add.6.4361 = add nsw i32 %788, %mul.6.4358
  store i32 %add.6.4361, i32* %arrayidx20.6.4360, align 4
  br label %for.inc.6.4371

for.inc.6.4371:                                   ; preds = %for.inc.5.4362
  %arrayidx11.7.4363 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.7.4364 = getelementptr inbounds [8 x i32]* %arrayidx11.7.4363, i32 0, i64 7
  %789 = load i32* %arrayidx12.7.4364, align 4
  %arrayidx15.7.4365 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4366 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4365, i32 0, i64 0
  %790 = load i32* %arrayidx16.7.4366, align 4
  %mul.7.4367 = mul nsw i32 %789, %790
  %arrayidx19.7.4368 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.7.4369 = getelementptr inbounds [8 x i32]* %arrayidx19.7.4368, i32 0, i64 0
  %791 = load i32* %arrayidx20.7.4369, align 4
  %add.7.4370 = add nsw i32 %791, %mul.7.4367
  store i32 %add.7.4370, i32* %arrayidx20.7.4369, align 4
  br label %for.inc.7.4372

for.inc.7.4372:                                   ; preds = %for.inc.6.4371
  br label %for.inc21.4373

for.inc21.4373:                                   ; preds = %for.inc.7.4372
  %arrayidx.1.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx5.1.4 = getelementptr inbounds [8 x i32]* %arrayidx.1.4, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.4, align 4
  br label %for.body8.1.4

for.body8.1.4:                                    ; preds = %for.inc21.4373
  %arrayidx11.14.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.15.4 = getelementptr inbounds [8 x i32]* %arrayidx11.14.4, i32 0, i64 0
  %792 = load i32* %arrayidx12.15.4, align 4
  %arrayidx16.16.4 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 1
  %793 = load i32* %arrayidx16.16.4, align 4
  %mul.17.4 = mul nsw i32 %792, %793
  %arrayidx19.19.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.110.4 = getelementptr inbounds [8 x i32]* %arrayidx19.19.4, i32 0, i64 1
  %794 = load i32* %arrayidx20.110.4, align 4
  %add.111.4 = add nsw i32 %794, %mul.17.4
  store i32 %add.111.4, i32* %arrayidx20.110.4, align 4
  br label %for.inc.112.4

for.inc.112.4:                                    ; preds = %for.body8.1.4
  %arrayidx11.1.1.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.1.1.4 = getelementptr inbounds [8 x i32]* %arrayidx11.1.1.4, i32 0, i64 1
  %795 = load i32* %arrayidx12.1.1.4, align 4
  %arrayidx15.1.1.4 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.1.4 = getelementptr inbounds [8 x i32]* %arrayidx15.1.1.4, i32 0, i64 1
  %796 = load i32* %arrayidx16.1.1.4, align 4
  %mul.1.1.4 = mul nsw i32 %795, %796
  %arrayidx19.1.1.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.1.1.4 = getelementptr inbounds [8 x i32]* %arrayidx19.1.1.4, i32 0, i64 1
  %797 = load i32* %arrayidx20.1.1.4, align 4
  %add.1.1.4 = add nsw i32 %797, %mul.1.1.4
  store i32 %add.1.1.4, i32* %arrayidx20.1.1.4, align 4
  br label %for.inc.1.1.4

for.inc.1.1.4:                                    ; preds = %for.inc.112.4
  %arrayidx11.2.1.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.2.1.4 = getelementptr inbounds [8 x i32]* %arrayidx11.2.1.4, i32 0, i64 2
  %798 = load i32* %arrayidx12.2.1.4, align 4
  %arrayidx15.2.1.4 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.1.4 = getelementptr inbounds [8 x i32]* %arrayidx15.2.1.4, i32 0, i64 1
  %799 = load i32* %arrayidx16.2.1.4, align 4
  %mul.2.1.4 = mul nsw i32 %798, %799
  %arrayidx19.2.1.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.2.1.4 = getelementptr inbounds [8 x i32]* %arrayidx19.2.1.4, i32 0, i64 1
  %800 = load i32* %arrayidx20.2.1.4, align 4
  %add.2.1.4 = add nsw i32 %800, %mul.2.1.4
  store i32 %add.2.1.4, i32* %arrayidx20.2.1.4, align 4
  br label %for.inc.2.1.4

for.inc.2.1.4:                                    ; preds = %for.inc.1.1.4
  %arrayidx11.3.1.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.3.1.4 = getelementptr inbounds [8 x i32]* %arrayidx11.3.1.4, i32 0, i64 3
  %801 = load i32* %arrayidx12.3.1.4, align 4
  %arrayidx15.3.1.4 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1.4 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1.4, i32 0, i64 1
  %802 = load i32* %arrayidx16.3.1.4, align 4
  %mul.3.1.4 = mul nsw i32 %801, %802
  %arrayidx19.3.1.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.3.1.4 = getelementptr inbounds [8 x i32]* %arrayidx19.3.1.4, i32 0, i64 1
  %803 = load i32* %arrayidx20.3.1.4, align 4
  %add.3.1.4 = add nsw i32 %803, %mul.3.1.4
  store i32 %add.3.1.4, i32* %arrayidx20.3.1.4, align 4
  br label %for.inc.3.1.4

for.inc.3.1.4:                                    ; preds = %for.inc.2.1.4
  %arrayidx11.4.1.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4.1.4 = getelementptr inbounds [8 x i32]* %arrayidx11.4.1.4, i32 0, i64 4
  %804 = load i32* %arrayidx12.4.1.4, align 4
  %arrayidx15.4.1.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1.4, i32 0, i64 1
  %805 = load i32* %arrayidx16.4.1.4, align 4
  %mul.4.1.4 = mul nsw i32 %804, %805
  %arrayidx19.4.1.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4.1.4 = getelementptr inbounds [8 x i32]* %arrayidx19.4.1.4, i32 0, i64 1
  %806 = load i32* %arrayidx20.4.1.4, align 4
  %add.4.1.4 = add nsw i32 %806, %mul.4.1.4
  store i32 %add.4.1.4, i32* %arrayidx20.4.1.4, align 4
  br label %for.inc.4.1.4

for.inc.4.1.4:                                    ; preds = %for.inc.3.1.4
  %arrayidx11.5.1.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.5.1.4 = getelementptr inbounds [8 x i32]* %arrayidx11.5.1.4, i32 0, i64 5
  %807 = load i32* %arrayidx12.5.1.4, align 4
  %arrayidx15.5.1.4 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1.4 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1.4, i32 0, i64 1
  %808 = load i32* %arrayidx16.5.1.4, align 4
  %mul.5.1.4 = mul nsw i32 %807, %808
  %arrayidx19.5.1.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.5.1.4 = getelementptr inbounds [8 x i32]* %arrayidx19.5.1.4, i32 0, i64 1
  %809 = load i32* %arrayidx20.5.1.4, align 4
  %add.5.1.4 = add nsw i32 %809, %mul.5.1.4
  store i32 %add.5.1.4, i32* %arrayidx20.5.1.4, align 4
  br label %for.inc.5.1.4

for.inc.5.1.4:                                    ; preds = %for.inc.4.1.4
  %arrayidx11.6.1.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.6.1.4 = getelementptr inbounds [8 x i32]* %arrayidx11.6.1.4, i32 0, i64 6
  %810 = load i32* %arrayidx12.6.1.4, align 4
  %arrayidx15.6.1.4 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1.4 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1.4, i32 0, i64 1
  %811 = load i32* %arrayidx16.6.1.4, align 4
  %mul.6.1.4 = mul nsw i32 %810, %811
  %arrayidx19.6.1.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.6.1.4 = getelementptr inbounds [8 x i32]* %arrayidx19.6.1.4, i32 0, i64 1
  %812 = load i32* %arrayidx20.6.1.4, align 4
  %add.6.1.4 = add nsw i32 %812, %mul.6.1.4
  store i32 %add.6.1.4, i32* %arrayidx20.6.1.4, align 4
  br label %for.inc.6.1.4

for.inc.6.1.4:                                    ; preds = %for.inc.5.1.4
  %arrayidx11.7.1.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.7.1.4 = getelementptr inbounds [8 x i32]* %arrayidx11.7.1.4, i32 0, i64 7
  %813 = load i32* %arrayidx12.7.1.4, align 4
  %arrayidx15.7.1.4 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1.4 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1.4, i32 0, i64 1
  %814 = load i32* %arrayidx16.7.1.4, align 4
  %mul.7.1.4 = mul nsw i32 %813, %814
  %arrayidx19.7.1.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.7.1.4 = getelementptr inbounds [8 x i32]* %arrayidx19.7.1.4, i32 0, i64 1
  %815 = load i32* %arrayidx20.7.1.4, align 4
  %add.7.1.4 = add nsw i32 %815, %mul.7.1.4
  store i32 %add.7.1.4, i32* %arrayidx20.7.1.4, align 4
  br label %for.inc.7.1.4

for.inc.7.1.4:                                    ; preds = %for.inc.6.1.4
  br label %for.inc21.1.4

for.inc21.1.4:                                    ; preds = %for.inc.7.1.4
  %arrayidx.2.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx5.2.4 = getelementptr inbounds [8 x i32]* %arrayidx.2.4, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.4, align 4
  br label %for.body8.2.4

for.body8.2.4:                                    ; preds = %for.inc21.1.4
  %arrayidx11.214.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.215.4 = getelementptr inbounds [8 x i32]* %arrayidx11.214.4, i32 0, i64 0
  %816 = load i32* %arrayidx12.215.4, align 4
  %arrayidx16.216.4 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 2
  %817 = load i32* %arrayidx16.216.4, align 4
  %mul.217.4 = mul nsw i32 %816, %817
  %arrayidx19.219.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.220.4 = getelementptr inbounds [8 x i32]* %arrayidx19.219.4, i32 0, i64 2
  %818 = load i32* %arrayidx20.220.4, align 4
  %add.221.4 = add nsw i32 %818, %mul.217.4
  store i32 %add.221.4, i32* %arrayidx20.220.4, align 4
  br label %for.inc.222.4

for.inc.222.4:                                    ; preds = %for.body8.2.4
  %arrayidx11.1.2.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.1.2.4 = getelementptr inbounds [8 x i32]* %arrayidx11.1.2.4, i32 0, i64 1
  %819 = load i32* %arrayidx12.1.2.4, align 4
  %arrayidx15.1.2.4 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2.4 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2.4, i32 0, i64 2
  %820 = load i32* %arrayidx16.1.2.4, align 4
  %mul.1.2.4 = mul nsw i32 %819, %820
  %arrayidx19.1.2.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.1.2.4 = getelementptr inbounds [8 x i32]* %arrayidx19.1.2.4, i32 0, i64 2
  %821 = load i32* %arrayidx20.1.2.4, align 4
  %add.1.2.4 = add nsw i32 %821, %mul.1.2.4
  store i32 %add.1.2.4, i32* %arrayidx20.1.2.4, align 4
  br label %for.inc.1.2.4

for.inc.1.2.4:                                    ; preds = %for.inc.222.4
  %arrayidx11.2.2.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.2.2.4 = getelementptr inbounds [8 x i32]* %arrayidx11.2.2.4, i32 0, i64 2
  %822 = load i32* %arrayidx12.2.2.4, align 4
  %arrayidx15.2.2.4 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2.4 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2.4, i32 0, i64 2
  %823 = load i32* %arrayidx16.2.2.4, align 4
  %mul.2.2.4 = mul nsw i32 %822, %823
  %arrayidx19.2.2.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.2.2.4 = getelementptr inbounds [8 x i32]* %arrayidx19.2.2.4, i32 0, i64 2
  %824 = load i32* %arrayidx20.2.2.4, align 4
  %add.2.2.4 = add nsw i32 %824, %mul.2.2.4
  store i32 %add.2.2.4, i32* %arrayidx20.2.2.4, align 4
  br label %for.inc.2.2.4

for.inc.2.2.4:                                    ; preds = %for.inc.1.2.4
  %arrayidx11.3.2.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.3.2.4 = getelementptr inbounds [8 x i32]* %arrayidx11.3.2.4, i32 0, i64 3
  %825 = load i32* %arrayidx12.3.2.4, align 4
  %arrayidx15.3.2.4 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2.4 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2.4, i32 0, i64 2
  %826 = load i32* %arrayidx16.3.2.4, align 4
  %mul.3.2.4 = mul nsw i32 %825, %826
  %arrayidx19.3.2.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.3.2.4 = getelementptr inbounds [8 x i32]* %arrayidx19.3.2.4, i32 0, i64 2
  %827 = load i32* %arrayidx20.3.2.4, align 4
  %add.3.2.4 = add nsw i32 %827, %mul.3.2.4
  store i32 %add.3.2.4, i32* %arrayidx20.3.2.4, align 4
  br label %for.inc.3.2.4

for.inc.3.2.4:                                    ; preds = %for.inc.2.2.4
  %arrayidx11.4.2.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4.2.4 = getelementptr inbounds [8 x i32]* %arrayidx11.4.2.4, i32 0, i64 4
  %828 = load i32* %arrayidx12.4.2.4, align 4
  %arrayidx15.4.2.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2.4, i32 0, i64 2
  %829 = load i32* %arrayidx16.4.2.4, align 4
  %mul.4.2.4 = mul nsw i32 %828, %829
  %arrayidx19.4.2.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4.2.4 = getelementptr inbounds [8 x i32]* %arrayidx19.4.2.4, i32 0, i64 2
  %830 = load i32* %arrayidx20.4.2.4, align 4
  %add.4.2.4 = add nsw i32 %830, %mul.4.2.4
  store i32 %add.4.2.4, i32* %arrayidx20.4.2.4, align 4
  br label %for.inc.4.2.4

for.inc.4.2.4:                                    ; preds = %for.inc.3.2.4
  %arrayidx11.5.2.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.5.2.4 = getelementptr inbounds [8 x i32]* %arrayidx11.5.2.4, i32 0, i64 5
  %831 = load i32* %arrayidx12.5.2.4, align 4
  %arrayidx15.5.2.4 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2.4 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2.4, i32 0, i64 2
  %832 = load i32* %arrayidx16.5.2.4, align 4
  %mul.5.2.4 = mul nsw i32 %831, %832
  %arrayidx19.5.2.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.5.2.4 = getelementptr inbounds [8 x i32]* %arrayidx19.5.2.4, i32 0, i64 2
  %833 = load i32* %arrayidx20.5.2.4, align 4
  %add.5.2.4 = add nsw i32 %833, %mul.5.2.4
  store i32 %add.5.2.4, i32* %arrayidx20.5.2.4, align 4
  br label %for.inc.5.2.4

for.inc.5.2.4:                                    ; preds = %for.inc.4.2.4
  %arrayidx11.6.2.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.6.2.4 = getelementptr inbounds [8 x i32]* %arrayidx11.6.2.4, i32 0, i64 6
  %834 = load i32* %arrayidx12.6.2.4, align 4
  %arrayidx15.6.2.4 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2.4 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2.4, i32 0, i64 2
  %835 = load i32* %arrayidx16.6.2.4, align 4
  %mul.6.2.4 = mul nsw i32 %834, %835
  %arrayidx19.6.2.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.6.2.4 = getelementptr inbounds [8 x i32]* %arrayidx19.6.2.4, i32 0, i64 2
  %836 = load i32* %arrayidx20.6.2.4, align 4
  %add.6.2.4 = add nsw i32 %836, %mul.6.2.4
  store i32 %add.6.2.4, i32* %arrayidx20.6.2.4, align 4
  br label %for.inc.6.2.4

for.inc.6.2.4:                                    ; preds = %for.inc.5.2.4
  %arrayidx11.7.2.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.7.2.4 = getelementptr inbounds [8 x i32]* %arrayidx11.7.2.4, i32 0, i64 7
  %837 = load i32* %arrayidx12.7.2.4, align 4
  %arrayidx15.7.2.4 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2.4 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2.4, i32 0, i64 2
  %838 = load i32* %arrayidx16.7.2.4, align 4
  %mul.7.2.4 = mul nsw i32 %837, %838
  %arrayidx19.7.2.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.7.2.4 = getelementptr inbounds [8 x i32]* %arrayidx19.7.2.4, i32 0, i64 2
  %839 = load i32* %arrayidx20.7.2.4, align 4
  %add.7.2.4 = add nsw i32 %839, %mul.7.2.4
  store i32 %add.7.2.4, i32* %arrayidx20.7.2.4, align 4
  br label %for.inc.7.2.4

for.inc.7.2.4:                                    ; preds = %for.inc.6.2.4
  br label %for.inc21.2.4

for.inc21.2.4:                                    ; preds = %for.inc.7.2.4
  %arrayidx.3.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx5.3.4 = getelementptr inbounds [8 x i32]* %arrayidx.3.4, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.4, align 4
  br label %for.body8.3.4

for.body8.3.4:                                    ; preds = %for.inc21.2.4
  %arrayidx11.324.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.325.4 = getelementptr inbounds [8 x i32]* %arrayidx11.324.4, i32 0, i64 0
  %840 = load i32* %arrayidx12.325.4, align 4
  %arrayidx16.326.4 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 3
  %841 = load i32* %arrayidx16.326.4, align 4
  %mul.327.4 = mul nsw i32 %840, %841
  %arrayidx19.329.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.330.4 = getelementptr inbounds [8 x i32]* %arrayidx19.329.4, i32 0, i64 3
  %842 = load i32* %arrayidx20.330.4, align 4
  %add.331.4 = add nsw i32 %842, %mul.327.4
  store i32 %add.331.4, i32* %arrayidx20.330.4, align 4
  br label %for.inc.332.4

for.inc.332.4:                                    ; preds = %for.body8.3.4
  %arrayidx11.1.3.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.1.3.4 = getelementptr inbounds [8 x i32]* %arrayidx11.1.3.4, i32 0, i64 1
  %843 = load i32* %arrayidx12.1.3.4, align 4
  %arrayidx15.1.3.4 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3.4 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3.4, i32 0, i64 3
  %844 = load i32* %arrayidx16.1.3.4, align 4
  %mul.1.3.4 = mul nsw i32 %843, %844
  %arrayidx19.1.3.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.1.3.4 = getelementptr inbounds [8 x i32]* %arrayidx19.1.3.4, i32 0, i64 3
  %845 = load i32* %arrayidx20.1.3.4, align 4
  %add.1.3.4 = add nsw i32 %845, %mul.1.3.4
  store i32 %add.1.3.4, i32* %arrayidx20.1.3.4, align 4
  br label %for.inc.1.3.4

for.inc.1.3.4:                                    ; preds = %for.inc.332.4
  %arrayidx11.2.3.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.2.3.4 = getelementptr inbounds [8 x i32]* %arrayidx11.2.3.4, i32 0, i64 2
  %846 = load i32* %arrayidx12.2.3.4, align 4
  %arrayidx15.2.3.4 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3.4 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3.4, i32 0, i64 3
  %847 = load i32* %arrayidx16.2.3.4, align 4
  %mul.2.3.4 = mul nsw i32 %846, %847
  %arrayidx19.2.3.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.2.3.4 = getelementptr inbounds [8 x i32]* %arrayidx19.2.3.4, i32 0, i64 3
  %848 = load i32* %arrayidx20.2.3.4, align 4
  %add.2.3.4 = add nsw i32 %848, %mul.2.3.4
  store i32 %add.2.3.4, i32* %arrayidx20.2.3.4, align 4
  br label %for.inc.2.3.4

for.inc.2.3.4:                                    ; preds = %for.inc.1.3.4
  %arrayidx11.3.3.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.3.3.4 = getelementptr inbounds [8 x i32]* %arrayidx11.3.3.4, i32 0, i64 3
  %849 = load i32* %arrayidx12.3.3.4, align 4
  %arrayidx15.3.3.4 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3.4 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3.4, i32 0, i64 3
  %850 = load i32* %arrayidx16.3.3.4, align 4
  %mul.3.3.4 = mul nsw i32 %849, %850
  %arrayidx19.3.3.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.3.3.4 = getelementptr inbounds [8 x i32]* %arrayidx19.3.3.4, i32 0, i64 3
  %851 = load i32* %arrayidx20.3.3.4, align 4
  %add.3.3.4 = add nsw i32 %851, %mul.3.3.4
  store i32 %add.3.3.4, i32* %arrayidx20.3.3.4, align 4
  br label %for.inc.3.3.4

for.inc.3.3.4:                                    ; preds = %for.inc.2.3.4
  %arrayidx11.4.3.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4.3.4 = getelementptr inbounds [8 x i32]* %arrayidx11.4.3.4, i32 0, i64 4
  %852 = load i32* %arrayidx12.4.3.4, align 4
  %arrayidx15.4.3.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3.4, i32 0, i64 3
  %853 = load i32* %arrayidx16.4.3.4, align 4
  %mul.4.3.4 = mul nsw i32 %852, %853
  %arrayidx19.4.3.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4.3.4 = getelementptr inbounds [8 x i32]* %arrayidx19.4.3.4, i32 0, i64 3
  %854 = load i32* %arrayidx20.4.3.4, align 4
  %add.4.3.4 = add nsw i32 %854, %mul.4.3.4
  store i32 %add.4.3.4, i32* %arrayidx20.4.3.4, align 4
  br label %for.inc.4.3.4

for.inc.4.3.4:                                    ; preds = %for.inc.3.3.4
  %arrayidx11.5.3.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.5.3.4 = getelementptr inbounds [8 x i32]* %arrayidx11.5.3.4, i32 0, i64 5
  %855 = load i32* %arrayidx12.5.3.4, align 4
  %arrayidx15.5.3.4 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3.4 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3.4, i32 0, i64 3
  %856 = load i32* %arrayidx16.5.3.4, align 4
  %mul.5.3.4 = mul nsw i32 %855, %856
  %arrayidx19.5.3.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.5.3.4 = getelementptr inbounds [8 x i32]* %arrayidx19.5.3.4, i32 0, i64 3
  %857 = load i32* %arrayidx20.5.3.4, align 4
  %add.5.3.4 = add nsw i32 %857, %mul.5.3.4
  store i32 %add.5.3.4, i32* %arrayidx20.5.3.4, align 4
  br label %for.inc.5.3.4

for.inc.5.3.4:                                    ; preds = %for.inc.4.3.4
  %arrayidx11.6.3.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.6.3.4 = getelementptr inbounds [8 x i32]* %arrayidx11.6.3.4, i32 0, i64 6
  %858 = load i32* %arrayidx12.6.3.4, align 4
  %arrayidx15.6.3.4 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3.4 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3.4, i32 0, i64 3
  %859 = load i32* %arrayidx16.6.3.4, align 4
  %mul.6.3.4 = mul nsw i32 %858, %859
  %arrayidx19.6.3.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.6.3.4 = getelementptr inbounds [8 x i32]* %arrayidx19.6.3.4, i32 0, i64 3
  %860 = load i32* %arrayidx20.6.3.4, align 4
  %add.6.3.4 = add nsw i32 %860, %mul.6.3.4
  store i32 %add.6.3.4, i32* %arrayidx20.6.3.4, align 4
  br label %for.inc.6.3.4

for.inc.6.3.4:                                    ; preds = %for.inc.5.3.4
  %arrayidx11.7.3.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.7.3.4 = getelementptr inbounds [8 x i32]* %arrayidx11.7.3.4, i32 0, i64 7
  %861 = load i32* %arrayidx12.7.3.4, align 4
  %arrayidx15.7.3.4 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3.4 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3.4, i32 0, i64 3
  %862 = load i32* %arrayidx16.7.3.4, align 4
  %mul.7.3.4 = mul nsw i32 %861, %862
  %arrayidx19.7.3.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.7.3.4 = getelementptr inbounds [8 x i32]* %arrayidx19.7.3.4, i32 0, i64 3
  %863 = load i32* %arrayidx20.7.3.4, align 4
  %add.7.3.4 = add nsw i32 %863, %mul.7.3.4
  store i32 %add.7.3.4, i32* %arrayidx20.7.3.4, align 4
  br label %for.inc.7.3.4

for.inc.7.3.4:                                    ; preds = %for.inc.6.3.4
  br label %for.inc21.3.4

for.inc21.3.4:                                    ; preds = %for.inc.7.3.4
  %arrayidx.4.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx5.4.4 = getelementptr inbounds [8 x i32]* %arrayidx.4.4, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.4, align 4
  br label %for.body8.4.4

for.body8.4.4:                                    ; preds = %for.inc21.3.4
  %arrayidx11.434.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.435.4 = getelementptr inbounds [8 x i32]* %arrayidx11.434.4, i32 0, i64 0
  %864 = load i32* %arrayidx12.435.4, align 4
  %arrayidx16.436.4 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 4
  %865 = load i32* %arrayidx16.436.4, align 4
  %mul.437.4 = mul nsw i32 %864, %865
  %arrayidx19.439.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.440.4 = getelementptr inbounds [8 x i32]* %arrayidx19.439.4, i32 0, i64 4
  %866 = load i32* %arrayidx20.440.4, align 4
  %add.441.4 = add nsw i32 %866, %mul.437.4
  store i32 %add.441.4, i32* %arrayidx20.440.4, align 4
  br label %for.inc.442.4

for.inc.442.4:                                    ; preds = %for.body8.4.4
  %arrayidx11.1.4.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.1.4.4 = getelementptr inbounds [8 x i32]* %arrayidx11.1.4.4, i32 0, i64 1
  %867 = load i32* %arrayidx12.1.4.4, align 4
  %arrayidx15.1.4.4 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4.4 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4.4, i32 0, i64 4
  %868 = load i32* %arrayidx16.1.4.4, align 4
  %mul.1.4.4 = mul nsw i32 %867, %868
  %arrayidx19.1.4.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.1.4.4 = getelementptr inbounds [8 x i32]* %arrayidx19.1.4.4, i32 0, i64 4
  %869 = load i32* %arrayidx20.1.4.4, align 4
  %add.1.4.4 = add nsw i32 %869, %mul.1.4.4
  store i32 %add.1.4.4, i32* %arrayidx20.1.4.4, align 4
  br label %for.inc.1.4.4

for.inc.1.4.4:                                    ; preds = %for.inc.442.4
  %arrayidx11.2.4.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.2.4.4 = getelementptr inbounds [8 x i32]* %arrayidx11.2.4.4, i32 0, i64 2
  %870 = load i32* %arrayidx12.2.4.4, align 4
  %arrayidx15.2.4.4 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4.4 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4.4, i32 0, i64 4
  %871 = load i32* %arrayidx16.2.4.4, align 4
  %mul.2.4.4 = mul nsw i32 %870, %871
  %arrayidx19.2.4.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.2.4.4 = getelementptr inbounds [8 x i32]* %arrayidx19.2.4.4, i32 0, i64 4
  %872 = load i32* %arrayidx20.2.4.4, align 4
  %add.2.4.4 = add nsw i32 %872, %mul.2.4.4
  store i32 %add.2.4.4, i32* %arrayidx20.2.4.4, align 4
  br label %for.inc.2.4.4

for.inc.2.4.4:                                    ; preds = %for.inc.1.4.4
  %arrayidx11.3.4.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.3.4.4 = getelementptr inbounds [8 x i32]* %arrayidx11.3.4.4, i32 0, i64 3
  %873 = load i32* %arrayidx12.3.4.4, align 4
  %arrayidx15.3.4.4 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4.4 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4.4, i32 0, i64 4
  %874 = load i32* %arrayidx16.3.4.4, align 4
  %mul.3.4.4 = mul nsw i32 %873, %874
  %arrayidx19.3.4.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.3.4.4 = getelementptr inbounds [8 x i32]* %arrayidx19.3.4.4, i32 0, i64 4
  %875 = load i32* %arrayidx20.3.4.4, align 4
  %add.3.4.4 = add nsw i32 %875, %mul.3.4.4
  store i32 %add.3.4.4, i32* %arrayidx20.3.4.4, align 4
  br label %for.inc.3.4.4

for.inc.3.4.4:                                    ; preds = %for.inc.2.4.4
  %arrayidx11.4.4.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4.4.4 = getelementptr inbounds [8 x i32]* %arrayidx11.4.4.4, i32 0, i64 4
  %876 = load i32* %arrayidx12.4.4.4, align 4
  %arrayidx15.4.4.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4.4, i32 0, i64 4
  %877 = load i32* %arrayidx16.4.4.4, align 4
  %mul.4.4.4 = mul nsw i32 %876, %877
  %arrayidx19.4.4.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4.4.4 = getelementptr inbounds [8 x i32]* %arrayidx19.4.4.4, i32 0, i64 4
  %878 = load i32* %arrayidx20.4.4.4, align 4
  %add.4.4.4 = add nsw i32 %878, %mul.4.4.4
  store i32 %add.4.4.4, i32* %arrayidx20.4.4.4, align 4
  br label %for.inc.4.4.4

for.inc.4.4.4:                                    ; preds = %for.inc.3.4.4
  %arrayidx11.5.4.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.5.4.4 = getelementptr inbounds [8 x i32]* %arrayidx11.5.4.4, i32 0, i64 5
  %879 = load i32* %arrayidx12.5.4.4, align 4
  %arrayidx15.5.4.4 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4.4 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4.4, i32 0, i64 4
  %880 = load i32* %arrayidx16.5.4.4, align 4
  %mul.5.4.4 = mul nsw i32 %879, %880
  %arrayidx19.5.4.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.5.4.4 = getelementptr inbounds [8 x i32]* %arrayidx19.5.4.4, i32 0, i64 4
  %881 = load i32* %arrayidx20.5.4.4, align 4
  %add.5.4.4 = add nsw i32 %881, %mul.5.4.4
  store i32 %add.5.4.4, i32* %arrayidx20.5.4.4, align 4
  br label %for.inc.5.4.4

for.inc.5.4.4:                                    ; preds = %for.inc.4.4.4
  %arrayidx11.6.4.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.6.4.4 = getelementptr inbounds [8 x i32]* %arrayidx11.6.4.4, i32 0, i64 6
  %882 = load i32* %arrayidx12.6.4.4, align 4
  %arrayidx15.6.4.4 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4.4 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4.4, i32 0, i64 4
  %883 = load i32* %arrayidx16.6.4.4, align 4
  %mul.6.4.4 = mul nsw i32 %882, %883
  %arrayidx19.6.4.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.6.4.4 = getelementptr inbounds [8 x i32]* %arrayidx19.6.4.4, i32 0, i64 4
  %884 = load i32* %arrayidx20.6.4.4, align 4
  %add.6.4.4 = add nsw i32 %884, %mul.6.4.4
  store i32 %add.6.4.4, i32* %arrayidx20.6.4.4, align 4
  br label %for.inc.6.4.4

for.inc.6.4.4:                                    ; preds = %for.inc.5.4.4
  %arrayidx11.7.4.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.7.4.4 = getelementptr inbounds [8 x i32]* %arrayidx11.7.4.4, i32 0, i64 7
  %885 = load i32* %arrayidx12.7.4.4, align 4
  %arrayidx15.7.4.4 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4.4 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4.4, i32 0, i64 4
  %886 = load i32* %arrayidx16.7.4.4, align 4
  %mul.7.4.4 = mul nsw i32 %885, %886
  %arrayidx19.7.4.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.7.4.4 = getelementptr inbounds [8 x i32]* %arrayidx19.7.4.4, i32 0, i64 4
  %887 = load i32* %arrayidx20.7.4.4, align 4
  %add.7.4.4 = add nsw i32 %887, %mul.7.4.4
  store i32 %add.7.4.4, i32* %arrayidx20.7.4.4, align 4
  br label %for.inc.7.4.4

for.inc.7.4.4:                                    ; preds = %for.inc.6.4.4
  br label %for.inc21.4.4

for.inc21.4.4:                                    ; preds = %for.inc.7.4.4
  %arrayidx.5.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx5.5.4 = getelementptr inbounds [8 x i32]* %arrayidx.5.4, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.4, align 4
  br label %for.body8.5.4

for.body8.5.4:                                    ; preds = %for.inc21.4.4
  %arrayidx11.544.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.545.4 = getelementptr inbounds [8 x i32]* %arrayidx11.544.4, i32 0, i64 0
  %888 = load i32* %arrayidx12.545.4, align 4
  %arrayidx16.546.4 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 5
  %889 = load i32* %arrayidx16.546.4, align 4
  %mul.547.4 = mul nsw i32 %888, %889
  %arrayidx19.549.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.550.4 = getelementptr inbounds [8 x i32]* %arrayidx19.549.4, i32 0, i64 5
  %890 = load i32* %arrayidx20.550.4, align 4
  %add.551.4 = add nsw i32 %890, %mul.547.4
  store i32 %add.551.4, i32* %arrayidx20.550.4, align 4
  br label %for.inc.552.4

for.inc.552.4:                                    ; preds = %for.body8.5.4
  %arrayidx11.1.5.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.1.5.4 = getelementptr inbounds [8 x i32]* %arrayidx11.1.5.4, i32 0, i64 1
  %891 = load i32* %arrayidx12.1.5.4, align 4
  %arrayidx15.1.5.4 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5.4 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5.4, i32 0, i64 5
  %892 = load i32* %arrayidx16.1.5.4, align 4
  %mul.1.5.4 = mul nsw i32 %891, %892
  %arrayidx19.1.5.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.1.5.4 = getelementptr inbounds [8 x i32]* %arrayidx19.1.5.4, i32 0, i64 5
  %893 = load i32* %arrayidx20.1.5.4, align 4
  %add.1.5.4 = add nsw i32 %893, %mul.1.5.4
  store i32 %add.1.5.4, i32* %arrayidx20.1.5.4, align 4
  br label %for.inc.1.5.4

for.inc.1.5.4:                                    ; preds = %for.inc.552.4
  %arrayidx11.2.5.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.2.5.4 = getelementptr inbounds [8 x i32]* %arrayidx11.2.5.4, i32 0, i64 2
  %894 = load i32* %arrayidx12.2.5.4, align 4
  %arrayidx15.2.5.4 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5.4 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5.4, i32 0, i64 5
  %895 = load i32* %arrayidx16.2.5.4, align 4
  %mul.2.5.4 = mul nsw i32 %894, %895
  %arrayidx19.2.5.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.2.5.4 = getelementptr inbounds [8 x i32]* %arrayidx19.2.5.4, i32 0, i64 5
  %896 = load i32* %arrayidx20.2.5.4, align 4
  %add.2.5.4 = add nsw i32 %896, %mul.2.5.4
  store i32 %add.2.5.4, i32* %arrayidx20.2.5.4, align 4
  br label %for.inc.2.5.4

for.inc.2.5.4:                                    ; preds = %for.inc.1.5.4
  %arrayidx11.3.5.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.3.5.4 = getelementptr inbounds [8 x i32]* %arrayidx11.3.5.4, i32 0, i64 3
  %897 = load i32* %arrayidx12.3.5.4, align 4
  %arrayidx15.3.5.4 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5.4 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5.4, i32 0, i64 5
  %898 = load i32* %arrayidx16.3.5.4, align 4
  %mul.3.5.4 = mul nsw i32 %897, %898
  %arrayidx19.3.5.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.3.5.4 = getelementptr inbounds [8 x i32]* %arrayidx19.3.5.4, i32 0, i64 5
  %899 = load i32* %arrayidx20.3.5.4, align 4
  %add.3.5.4 = add nsw i32 %899, %mul.3.5.4
  store i32 %add.3.5.4, i32* %arrayidx20.3.5.4, align 4
  br label %for.inc.3.5.4

for.inc.3.5.4:                                    ; preds = %for.inc.2.5.4
  %arrayidx11.4.5.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4.5.4 = getelementptr inbounds [8 x i32]* %arrayidx11.4.5.4, i32 0, i64 4
  %900 = load i32* %arrayidx12.4.5.4, align 4
  %arrayidx15.4.5.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5.4, i32 0, i64 5
  %901 = load i32* %arrayidx16.4.5.4, align 4
  %mul.4.5.4 = mul nsw i32 %900, %901
  %arrayidx19.4.5.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4.5.4 = getelementptr inbounds [8 x i32]* %arrayidx19.4.5.4, i32 0, i64 5
  %902 = load i32* %arrayidx20.4.5.4, align 4
  %add.4.5.4 = add nsw i32 %902, %mul.4.5.4
  store i32 %add.4.5.4, i32* %arrayidx20.4.5.4, align 4
  br label %for.inc.4.5.4

for.inc.4.5.4:                                    ; preds = %for.inc.3.5.4
  %arrayidx11.5.5.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.5.5.4 = getelementptr inbounds [8 x i32]* %arrayidx11.5.5.4, i32 0, i64 5
  %903 = load i32* %arrayidx12.5.5.4, align 4
  %arrayidx15.5.5.4 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5.4 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5.4, i32 0, i64 5
  %904 = load i32* %arrayidx16.5.5.4, align 4
  %mul.5.5.4 = mul nsw i32 %903, %904
  %arrayidx19.5.5.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.5.5.4 = getelementptr inbounds [8 x i32]* %arrayidx19.5.5.4, i32 0, i64 5
  %905 = load i32* %arrayidx20.5.5.4, align 4
  %add.5.5.4 = add nsw i32 %905, %mul.5.5.4
  store i32 %add.5.5.4, i32* %arrayidx20.5.5.4, align 4
  br label %for.inc.5.5.4

for.inc.5.5.4:                                    ; preds = %for.inc.4.5.4
  %arrayidx11.6.5.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.6.5.4 = getelementptr inbounds [8 x i32]* %arrayidx11.6.5.4, i32 0, i64 6
  %906 = load i32* %arrayidx12.6.5.4, align 4
  %arrayidx15.6.5.4 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5.4 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5.4, i32 0, i64 5
  %907 = load i32* %arrayidx16.6.5.4, align 4
  %mul.6.5.4 = mul nsw i32 %906, %907
  %arrayidx19.6.5.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.6.5.4 = getelementptr inbounds [8 x i32]* %arrayidx19.6.5.4, i32 0, i64 5
  %908 = load i32* %arrayidx20.6.5.4, align 4
  %add.6.5.4 = add nsw i32 %908, %mul.6.5.4
  store i32 %add.6.5.4, i32* %arrayidx20.6.5.4, align 4
  br label %for.inc.6.5.4

for.inc.6.5.4:                                    ; preds = %for.inc.5.5.4
  %arrayidx11.7.5.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.7.5.4 = getelementptr inbounds [8 x i32]* %arrayidx11.7.5.4, i32 0, i64 7
  %909 = load i32* %arrayidx12.7.5.4, align 4
  %arrayidx15.7.5.4 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5.4 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5.4, i32 0, i64 5
  %910 = load i32* %arrayidx16.7.5.4, align 4
  %mul.7.5.4 = mul nsw i32 %909, %910
  %arrayidx19.7.5.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.7.5.4 = getelementptr inbounds [8 x i32]* %arrayidx19.7.5.4, i32 0, i64 5
  %911 = load i32* %arrayidx20.7.5.4, align 4
  %add.7.5.4 = add nsw i32 %911, %mul.7.5.4
  store i32 %add.7.5.4, i32* %arrayidx20.7.5.4, align 4
  br label %for.inc.7.5.4

for.inc.7.5.4:                                    ; preds = %for.inc.6.5.4
  br label %for.inc21.5.4

for.inc21.5.4:                                    ; preds = %for.inc.7.5.4
  %arrayidx.6.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx5.6.4 = getelementptr inbounds [8 x i32]* %arrayidx.6.4, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.4, align 4
  br label %for.body8.6.4

for.body8.6.4:                                    ; preds = %for.inc21.5.4
  %arrayidx11.654.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.655.4 = getelementptr inbounds [8 x i32]* %arrayidx11.654.4, i32 0, i64 0
  %912 = load i32* %arrayidx12.655.4, align 4
  %arrayidx16.656.4 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 6
  %913 = load i32* %arrayidx16.656.4, align 4
  %mul.657.4 = mul nsw i32 %912, %913
  %arrayidx19.659.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.660.4 = getelementptr inbounds [8 x i32]* %arrayidx19.659.4, i32 0, i64 6
  %914 = load i32* %arrayidx20.660.4, align 4
  %add.661.4 = add nsw i32 %914, %mul.657.4
  store i32 %add.661.4, i32* %arrayidx20.660.4, align 4
  br label %for.inc.662.4

for.inc.662.4:                                    ; preds = %for.body8.6.4
  %arrayidx11.1.6.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.1.6.4 = getelementptr inbounds [8 x i32]* %arrayidx11.1.6.4, i32 0, i64 1
  %915 = load i32* %arrayidx12.1.6.4, align 4
  %arrayidx15.1.6.4 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6.4 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6.4, i32 0, i64 6
  %916 = load i32* %arrayidx16.1.6.4, align 4
  %mul.1.6.4 = mul nsw i32 %915, %916
  %arrayidx19.1.6.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.1.6.4 = getelementptr inbounds [8 x i32]* %arrayidx19.1.6.4, i32 0, i64 6
  %917 = load i32* %arrayidx20.1.6.4, align 4
  %add.1.6.4 = add nsw i32 %917, %mul.1.6.4
  store i32 %add.1.6.4, i32* %arrayidx20.1.6.4, align 4
  br label %for.inc.1.6.4

for.inc.1.6.4:                                    ; preds = %for.inc.662.4
  %arrayidx11.2.6.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.2.6.4 = getelementptr inbounds [8 x i32]* %arrayidx11.2.6.4, i32 0, i64 2
  %918 = load i32* %arrayidx12.2.6.4, align 4
  %arrayidx15.2.6.4 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6.4 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6.4, i32 0, i64 6
  %919 = load i32* %arrayidx16.2.6.4, align 4
  %mul.2.6.4 = mul nsw i32 %918, %919
  %arrayidx19.2.6.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.2.6.4 = getelementptr inbounds [8 x i32]* %arrayidx19.2.6.4, i32 0, i64 6
  %920 = load i32* %arrayidx20.2.6.4, align 4
  %add.2.6.4 = add nsw i32 %920, %mul.2.6.4
  store i32 %add.2.6.4, i32* %arrayidx20.2.6.4, align 4
  br label %for.inc.2.6.4

for.inc.2.6.4:                                    ; preds = %for.inc.1.6.4
  %arrayidx11.3.6.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.3.6.4 = getelementptr inbounds [8 x i32]* %arrayidx11.3.6.4, i32 0, i64 3
  %921 = load i32* %arrayidx12.3.6.4, align 4
  %arrayidx15.3.6.4 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6.4 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6.4, i32 0, i64 6
  %922 = load i32* %arrayidx16.3.6.4, align 4
  %mul.3.6.4 = mul nsw i32 %921, %922
  %arrayidx19.3.6.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.3.6.4 = getelementptr inbounds [8 x i32]* %arrayidx19.3.6.4, i32 0, i64 6
  %923 = load i32* %arrayidx20.3.6.4, align 4
  %add.3.6.4 = add nsw i32 %923, %mul.3.6.4
  store i32 %add.3.6.4, i32* %arrayidx20.3.6.4, align 4
  br label %for.inc.3.6.4

for.inc.3.6.4:                                    ; preds = %for.inc.2.6.4
  %arrayidx11.4.6.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4.6.4 = getelementptr inbounds [8 x i32]* %arrayidx11.4.6.4, i32 0, i64 4
  %924 = load i32* %arrayidx12.4.6.4, align 4
  %arrayidx15.4.6.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6.4, i32 0, i64 6
  %925 = load i32* %arrayidx16.4.6.4, align 4
  %mul.4.6.4 = mul nsw i32 %924, %925
  %arrayidx19.4.6.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4.6.4 = getelementptr inbounds [8 x i32]* %arrayidx19.4.6.4, i32 0, i64 6
  %926 = load i32* %arrayidx20.4.6.4, align 4
  %add.4.6.4 = add nsw i32 %926, %mul.4.6.4
  store i32 %add.4.6.4, i32* %arrayidx20.4.6.4, align 4
  br label %for.inc.4.6.4

for.inc.4.6.4:                                    ; preds = %for.inc.3.6.4
  %arrayidx11.5.6.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.5.6.4 = getelementptr inbounds [8 x i32]* %arrayidx11.5.6.4, i32 0, i64 5
  %927 = load i32* %arrayidx12.5.6.4, align 4
  %arrayidx15.5.6.4 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6.4 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6.4, i32 0, i64 6
  %928 = load i32* %arrayidx16.5.6.4, align 4
  %mul.5.6.4 = mul nsw i32 %927, %928
  %arrayidx19.5.6.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.5.6.4 = getelementptr inbounds [8 x i32]* %arrayidx19.5.6.4, i32 0, i64 6
  %929 = load i32* %arrayidx20.5.6.4, align 4
  %add.5.6.4 = add nsw i32 %929, %mul.5.6.4
  store i32 %add.5.6.4, i32* %arrayidx20.5.6.4, align 4
  br label %for.inc.5.6.4

for.inc.5.6.4:                                    ; preds = %for.inc.4.6.4
  %arrayidx11.6.6.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.6.6.4 = getelementptr inbounds [8 x i32]* %arrayidx11.6.6.4, i32 0, i64 6
  %930 = load i32* %arrayidx12.6.6.4, align 4
  %arrayidx15.6.6.4 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6.4 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6.4, i32 0, i64 6
  %931 = load i32* %arrayidx16.6.6.4, align 4
  %mul.6.6.4 = mul nsw i32 %930, %931
  %arrayidx19.6.6.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.6.6.4 = getelementptr inbounds [8 x i32]* %arrayidx19.6.6.4, i32 0, i64 6
  %932 = load i32* %arrayidx20.6.6.4, align 4
  %add.6.6.4 = add nsw i32 %932, %mul.6.6.4
  store i32 %add.6.6.4, i32* %arrayidx20.6.6.4, align 4
  br label %for.inc.6.6.4

for.inc.6.6.4:                                    ; preds = %for.inc.5.6.4
  %arrayidx11.7.6.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.7.6.4 = getelementptr inbounds [8 x i32]* %arrayidx11.7.6.4, i32 0, i64 7
  %933 = load i32* %arrayidx12.7.6.4, align 4
  %arrayidx15.7.6.4 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6.4 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6.4, i32 0, i64 6
  %934 = load i32* %arrayidx16.7.6.4, align 4
  %mul.7.6.4 = mul nsw i32 %933, %934
  %arrayidx19.7.6.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.7.6.4 = getelementptr inbounds [8 x i32]* %arrayidx19.7.6.4, i32 0, i64 6
  %935 = load i32* %arrayidx20.7.6.4, align 4
  %add.7.6.4 = add nsw i32 %935, %mul.7.6.4
  store i32 %add.7.6.4, i32* %arrayidx20.7.6.4, align 4
  br label %for.inc.7.6.4

for.inc.7.6.4:                                    ; preds = %for.inc.6.6.4
  br label %for.inc21.6.4

for.inc21.6.4:                                    ; preds = %for.inc.7.6.4
  %arrayidx.7.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx5.7.4 = getelementptr inbounds [8 x i32]* %arrayidx.7.4, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.4, align 4
  br label %for.body8.7.4

for.body8.7.4:                                    ; preds = %for.inc21.6.4
  %arrayidx11.764.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.765.4 = getelementptr inbounds [8 x i32]* %arrayidx11.764.4, i32 0, i64 0
  %936 = load i32* %arrayidx12.765.4, align 4
  %arrayidx16.766.4 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 7
  %937 = load i32* %arrayidx16.766.4, align 4
  %mul.767.4 = mul nsw i32 %936, %937
  %arrayidx19.769.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.770.4 = getelementptr inbounds [8 x i32]* %arrayidx19.769.4, i32 0, i64 7
  %938 = load i32* %arrayidx20.770.4, align 4
  %add.771.4 = add nsw i32 %938, %mul.767.4
  store i32 %add.771.4, i32* %arrayidx20.770.4, align 4
  br label %for.inc.772.4

for.inc.772.4:                                    ; preds = %for.body8.7.4
  %arrayidx11.1.7.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.1.7.4 = getelementptr inbounds [8 x i32]* %arrayidx11.1.7.4, i32 0, i64 1
  %939 = load i32* %arrayidx12.1.7.4, align 4
  %arrayidx15.1.7.4 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7.4 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7.4, i32 0, i64 7
  %940 = load i32* %arrayidx16.1.7.4, align 4
  %mul.1.7.4 = mul nsw i32 %939, %940
  %arrayidx19.1.7.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.1.7.4 = getelementptr inbounds [8 x i32]* %arrayidx19.1.7.4, i32 0, i64 7
  %941 = load i32* %arrayidx20.1.7.4, align 4
  %add.1.7.4 = add nsw i32 %941, %mul.1.7.4
  store i32 %add.1.7.4, i32* %arrayidx20.1.7.4, align 4
  br label %for.inc.1.7.4

for.inc.1.7.4:                                    ; preds = %for.inc.772.4
  %arrayidx11.2.7.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.2.7.4 = getelementptr inbounds [8 x i32]* %arrayidx11.2.7.4, i32 0, i64 2
  %942 = load i32* %arrayidx12.2.7.4, align 4
  %arrayidx15.2.7.4 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7.4 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7.4, i32 0, i64 7
  %943 = load i32* %arrayidx16.2.7.4, align 4
  %mul.2.7.4 = mul nsw i32 %942, %943
  %arrayidx19.2.7.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.2.7.4 = getelementptr inbounds [8 x i32]* %arrayidx19.2.7.4, i32 0, i64 7
  %944 = load i32* %arrayidx20.2.7.4, align 4
  %add.2.7.4 = add nsw i32 %944, %mul.2.7.4
  store i32 %add.2.7.4, i32* %arrayidx20.2.7.4, align 4
  br label %for.inc.2.7.4

for.inc.2.7.4:                                    ; preds = %for.inc.1.7.4
  %arrayidx11.3.7.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.3.7.4 = getelementptr inbounds [8 x i32]* %arrayidx11.3.7.4, i32 0, i64 3
  %945 = load i32* %arrayidx12.3.7.4, align 4
  %arrayidx15.3.7.4 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7.4 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7.4, i32 0, i64 7
  %946 = load i32* %arrayidx16.3.7.4, align 4
  %mul.3.7.4 = mul nsw i32 %945, %946
  %arrayidx19.3.7.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.3.7.4 = getelementptr inbounds [8 x i32]* %arrayidx19.3.7.4, i32 0, i64 7
  %947 = load i32* %arrayidx20.3.7.4, align 4
  %add.3.7.4 = add nsw i32 %947, %mul.3.7.4
  store i32 %add.3.7.4, i32* %arrayidx20.3.7.4, align 4
  br label %for.inc.3.7.4

for.inc.3.7.4:                                    ; preds = %for.inc.2.7.4
  %arrayidx11.4.7.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.4.7.4 = getelementptr inbounds [8 x i32]* %arrayidx11.4.7.4, i32 0, i64 4
  %948 = load i32* %arrayidx12.4.7.4, align 4
  %arrayidx15.4.7.4 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7.4 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7.4, i32 0, i64 7
  %949 = load i32* %arrayidx16.4.7.4, align 4
  %mul.4.7.4 = mul nsw i32 %948, %949
  %arrayidx19.4.7.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.4.7.4 = getelementptr inbounds [8 x i32]* %arrayidx19.4.7.4, i32 0, i64 7
  %950 = load i32* %arrayidx20.4.7.4, align 4
  %add.4.7.4 = add nsw i32 %950, %mul.4.7.4
  store i32 %add.4.7.4, i32* %arrayidx20.4.7.4, align 4
  br label %for.inc.4.7.4

for.inc.4.7.4:                                    ; preds = %for.inc.3.7.4
  %arrayidx11.5.7.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.5.7.4 = getelementptr inbounds [8 x i32]* %arrayidx11.5.7.4, i32 0, i64 5
  %951 = load i32* %arrayidx12.5.7.4, align 4
  %arrayidx15.5.7.4 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7.4 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7.4, i32 0, i64 7
  %952 = load i32* %arrayidx16.5.7.4, align 4
  %mul.5.7.4 = mul nsw i32 %951, %952
  %arrayidx19.5.7.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.5.7.4 = getelementptr inbounds [8 x i32]* %arrayidx19.5.7.4, i32 0, i64 7
  %953 = load i32* %arrayidx20.5.7.4, align 4
  %add.5.7.4 = add nsw i32 %953, %mul.5.7.4
  store i32 %add.5.7.4, i32* %arrayidx20.5.7.4, align 4
  br label %for.inc.5.7.4

for.inc.5.7.4:                                    ; preds = %for.inc.4.7.4
  %arrayidx11.6.7.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.6.7.4 = getelementptr inbounds [8 x i32]* %arrayidx11.6.7.4, i32 0, i64 6
  %954 = load i32* %arrayidx12.6.7.4, align 4
  %arrayidx15.6.7.4 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7.4 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7.4, i32 0, i64 7
  %955 = load i32* %arrayidx16.6.7.4, align 4
  %mul.6.7.4 = mul nsw i32 %954, %955
  %arrayidx19.6.7.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.6.7.4 = getelementptr inbounds [8 x i32]* %arrayidx19.6.7.4, i32 0, i64 7
  %956 = load i32* %arrayidx20.6.7.4, align 4
  %add.6.7.4 = add nsw i32 %956, %mul.6.7.4
  store i32 %add.6.7.4, i32* %arrayidx20.6.7.4, align 4
  br label %for.inc.6.7.4

for.inc.6.7.4:                                    ; preds = %for.inc.5.7.4
  %arrayidx11.7.7.4 = getelementptr inbounds [8 x i32]* %a, i64 4
  %arrayidx12.7.7.4 = getelementptr inbounds [8 x i32]* %arrayidx11.7.7.4, i32 0, i64 7
  %957 = load i32* %arrayidx12.7.7.4, align 4
  %arrayidx15.7.7.4 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7.4 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7.4, i32 0, i64 7
  %958 = load i32* %arrayidx16.7.7.4, align 4
  %mul.7.7.4 = mul nsw i32 %957, %958
  %arrayidx19.7.7.4 = getelementptr inbounds [8 x i32]* %c, i64 4
  %arrayidx20.7.7.4 = getelementptr inbounds [8 x i32]* %arrayidx19.7.7.4, i32 0, i64 7
  %959 = load i32* %arrayidx20.7.7.4, align 4
  %add.7.7.4 = add nsw i32 %959, %mul.7.7.4
  store i32 %add.7.7.4, i32* %arrayidx20.7.7.4, align 4
  br label %for.inc.7.7.4

for.inc.7.7.4:                                    ; preds = %for.inc.6.7.4
  br label %for.inc21.7.4

for.inc21.7.4:                                    ; preds = %for.inc.7.7.4
  br label %for.inc24.4

for.inc24.4:                                      ; preds = %for.inc21.7.4
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.inc24.4
  %arrayidx.5374 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx5.5375 = getelementptr inbounds [8 x i32]* %arrayidx.5374, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.5375, align 4
  br label %for.body8.5383

for.body8.5383:                                   ; preds = %for.body3.5
  %arrayidx11.5376 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5377 = getelementptr inbounds [8 x i32]* %arrayidx11.5376, i32 0, i64 0
  %960 = load i32* %arrayidx12.5377, align 4
  %arrayidx16.5378 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 0
  %961 = load i32* %arrayidx16.5378, align 4
  %mul.5379 = mul nsw i32 %960, %961
  %arrayidx19.5380 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5381 = getelementptr inbounds [8 x i32]* %arrayidx19.5380, i32 0, i64 0
  %962 = load i32* %arrayidx20.5381, align 4
  %add.5382 = add nsw i32 %962, %mul.5379
  store i32 %add.5382, i32* %arrayidx20.5381, align 4
  br label %for.inc.5392

for.inc.5392:                                     ; preds = %for.body8.5383
  %arrayidx11.1.5384 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.1.5385 = getelementptr inbounds [8 x i32]* %arrayidx11.1.5384, i32 0, i64 1
  %963 = load i32* %arrayidx12.1.5385, align 4
  %arrayidx15.1.5386 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5387 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5386, i32 0, i64 0
  %964 = load i32* %arrayidx16.1.5387, align 4
  %mul.1.5388 = mul nsw i32 %963, %964
  %arrayidx19.1.5389 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.1.5390 = getelementptr inbounds [8 x i32]* %arrayidx19.1.5389, i32 0, i64 0
  %965 = load i32* %arrayidx20.1.5390, align 4
  %add.1.5391 = add nsw i32 %965, %mul.1.5388
  store i32 %add.1.5391, i32* %arrayidx20.1.5390, align 4
  br label %for.inc.1.5401

for.inc.1.5401:                                   ; preds = %for.inc.5392
  %arrayidx11.2.5393 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.2.5394 = getelementptr inbounds [8 x i32]* %arrayidx11.2.5393, i32 0, i64 2
  %966 = load i32* %arrayidx12.2.5394, align 4
  %arrayidx15.2.5395 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5396 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5395, i32 0, i64 0
  %967 = load i32* %arrayidx16.2.5396, align 4
  %mul.2.5397 = mul nsw i32 %966, %967
  %arrayidx19.2.5398 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.2.5399 = getelementptr inbounds [8 x i32]* %arrayidx19.2.5398, i32 0, i64 0
  %968 = load i32* %arrayidx20.2.5399, align 4
  %add.2.5400 = add nsw i32 %968, %mul.2.5397
  store i32 %add.2.5400, i32* %arrayidx20.2.5399, align 4
  br label %for.inc.2.5410

for.inc.2.5410:                                   ; preds = %for.inc.1.5401
  %arrayidx11.3.5402 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.3.5403 = getelementptr inbounds [8 x i32]* %arrayidx11.3.5402, i32 0, i64 3
  %969 = load i32* %arrayidx12.3.5403, align 4
  %arrayidx15.3.5404 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5405 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5404, i32 0, i64 0
  %970 = load i32* %arrayidx16.3.5405, align 4
  %mul.3.5406 = mul nsw i32 %969, %970
  %arrayidx19.3.5407 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.3.5408 = getelementptr inbounds [8 x i32]* %arrayidx19.3.5407, i32 0, i64 0
  %971 = load i32* %arrayidx20.3.5408, align 4
  %add.3.5409 = add nsw i32 %971, %mul.3.5406
  store i32 %add.3.5409, i32* %arrayidx20.3.5408, align 4
  br label %for.inc.3.5419

for.inc.3.5419:                                   ; preds = %for.inc.2.5410
  %arrayidx11.4.5411 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.4.5412 = getelementptr inbounds [8 x i32]* %arrayidx11.4.5411, i32 0, i64 4
  %972 = load i32* %arrayidx12.4.5412, align 4
  %arrayidx15.4.5413 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5414 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5413, i32 0, i64 0
  %973 = load i32* %arrayidx16.4.5414, align 4
  %mul.4.5415 = mul nsw i32 %972, %973
  %arrayidx19.4.5416 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.4.5417 = getelementptr inbounds [8 x i32]* %arrayidx19.4.5416, i32 0, i64 0
  %974 = load i32* %arrayidx20.4.5417, align 4
  %add.4.5418 = add nsw i32 %974, %mul.4.5415
  store i32 %add.4.5418, i32* %arrayidx20.4.5417, align 4
  br label %for.inc.4.5428

for.inc.4.5428:                                   ; preds = %for.inc.3.5419
  %arrayidx11.5.5420 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5.5421 = getelementptr inbounds [8 x i32]* %arrayidx11.5.5420, i32 0, i64 5
  %975 = load i32* %arrayidx12.5.5421, align 4
  %arrayidx15.5.5422 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5423 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5422, i32 0, i64 0
  %976 = load i32* %arrayidx16.5.5423, align 4
  %mul.5.5424 = mul nsw i32 %975, %976
  %arrayidx19.5.5425 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5.5426 = getelementptr inbounds [8 x i32]* %arrayidx19.5.5425, i32 0, i64 0
  %977 = load i32* %arrayidx20.5.5426, align 4
  %add.5.5427 = add nsw i32 %977, %mul.5.5424
  store i32 %add.5.5427, i32* %arrayidx20.5.5426, align 4
  br label %for.inc.5.5437

for.inc.5.5437:                                   ; preds = %for.inc.4.5428
  %arrayidx11.6.5429 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.6.5430 = getelementptr inbounds [8 x i32]* %arrayidx11.6.5429, i32 0, i64 6
  %978 = load i32* %arrayidx12.6.5430, align 4
  %arrayidx15.6.5431 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5432 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5431, i32 0, i64 0
  %979 = load i32* %arrayidx16.6.5432, align 4
  %mul.6.5433 = mul nsw i32 %978, %979
  %arrayidx19.6.5434 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.6.5435 = getelementptr inbounds [8 x i32]* %arrayidx19.6.5434, i32 0, i64 0
  %980 = load i32* %arrayidx20.6.5435, align 4
  %add.6.5436 = add nsw i32 %980, %mul.6.5433
  store i32 %add.6.5436, i32* %arrayidx20.6.5435, align 4
  br label %for.inc.6.5446

for.inc.6.5446:                                   ; preds = %for.inc.5.5437
  %arrayidx11.7.5438 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.7.5439 = getelementptr inbounds [8 x i32]* %arrayidx11.7.5438, i32 0, i64 7
  %981 = load i32* %arrayidx12.7.5439, align 4
  %arrayidx15.7.5440 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5441 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5440, i32 0, i64 0
  %982 = load i32* %arrayidx16.7.5441, align 4
  %mul.7.5442 = mul nsw i32 %981, %982
  %arrayidx19.7.5443 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.7.5444 = getelementptr inbounds [8 x i32]* %arrayidx19.7.5443, i32 0, i64 0
  %983 = load i32* %arrayidx20.7.5444, align 4
  %add.7.5445 = add nsw i32 %983, %mul.7.5442
  store i32 %add.7.5445, i32* %arrayidx20.7.5444, align 4
  br label %for.inc.7.5447

for.inc.7.5447:                                   ; preds = %for.inc.6.5446
  br label %for.inc21.5448

for.inc21.5448:                                   ; preds = %for.inc.7.5447
  %arrayidx.1.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx5.1.5 = getelementptr inbounds [8 x i32]* %arrayidx.1.5, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.5, align 4
  br label %for.body8.1.5

for.body8.1.5:                                    ; preds = %for.inc21.5448
  %arrayidx11.14.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.15.5 = getelementptr inbounds [8 x i32]* %arrayidx11.14.5, i32 0, i64 0
  %984 = load i32* %arrayidx12.15.5, align 4
  %arrayidx16.16.5 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 1
  %985 = load i32* %arrayidx16.16.5, align 4
  %mul.17.5 = mul nsw i32 %984, %985
  %arrayidx19.19.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.110.5 = getelementptr inbounds [8 x i32]* %arrayidx19.19.5, i32 0, i64 1
  %986 = load i32* %arrayidx20.110.5, align 4
  %add.111.5 = add nsw i32 %986, %mul.17.5
  store i32 %add.111.5, i32* %arrayidx20.110.5, align 4
  br label %for.inc.112.5

for.inc.112.5:                                    ; preds = %for.body8.1.5
  %arrayidx11.1.1.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.1.1.5 = getelementptr inbounds [8 x i32]* %arrayidx11.1.1.5, i32 0, i64 1
  %987 = load i32* %arrayidx12.1.1.5, align 4
  %arrayidx15.1.1.5 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.1.5 = getelementptr inbounds [8 x i32]* %arrayidx15.1.1.5, i32 0, i64 1
  %988 = load i32* %arrayidx16.1.1.5, align 4
  %mul.1.1.5 = mul nsw i32 %987, %988
  %arrayidx19.1.1.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.1.1.5 = getelementptr inbounds [8 x i32]* %arrayidx19.1.1.5, i32 0, i64 1
  %989 = load i32* %arrayidx20.1.1.5, align 4
  %add.1.1.5 = add nsw i32 %989, %mul.1.1.5
  store i32 %add.1.1.5, i32* %arrayidx20.1.1.5, align 4
  br label %for.inc.1.1.5

for.inc.1.1.5:                                    ; preds = %for.inc.112.5
  %arrayidx11.2.1.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.2.1.5 = getelementptr inbounds [8 x i32]* %arrayidx11.2.1.5, i32 0, i64 2
  %990 = load i32* %arrayidx12.2.1.5, align 4
  %arrayidx15.2.1.5 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.1.5 = getelementptr inbounds [8 x i32]* %arrayidx15.2.1.5, i32 0, i64 1
  %991 = load i32* %arrayidx16.2.1.5, align 4
  %mul.2.1.5 = mul nsw i32 %990, %991
  %arrayidx19.2.1.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.2.1.5 = getelementptr inbounds [8 x i32]* %arrayidx19.2.1.5, i32 0, i64 1
  %992 = load i32* %arrayidx20.2.1.5, align 4
  %add.2.1.5 = add nsw i32 %992, %mul.2.1.5
  store i32 %add.2.1.5, i32* %arrayidx20.2.1.5, align 4
  br label %for.inc.2.1.5

for.inc.2.1.5:                                    ; preds = %for.inc.1.1.5
  %arrayidx11.3.1.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.3.1.5 = getelementptr inbounds [8 x i32]* %arrayidx11.3.1.5, i32 0, i64 3
  %993 = load i32* %arrayidx12.3.1.5, align 4
  %arrayidx15.3.1.5 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1.5 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1.5, i32 0, i64 1
  %994 = load i32* %arrayidx16.3.1.5, align 4
  %mul.3.1.5 = mul nsw i32 %993, %994
  %arrayidx19.3.1.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.3.1.5 = getelementptr inbounds [8 x i32]* %arrayidx19.3.1.5, i32 0, i64 1
  %995 = load i32* %arrayidx20.3.1.5, align 4
  %add.3.1.5 = add nsw i32 %995, %mul.3.1.5
  store i32 %add.3.1.5, i32* %arrayidx20.3.1.5, align 4
  br label %for.inc.3.1.5

for.inc.3.1.5:                                    ; preds = %for.inc.2.1.5
  %arrayidx11.4.1.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.4.1.5 = getelementptr inbounds [8 x i32]* %arrayidx11.4.1.5, i32 0, i64 4
  %996 = load i32* %arrayidx12.4.1.5, align 4
  %arrayidx15.4.1.5 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1.5 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1.5, i32 0, i64 1
  %997 = load i32* %arrayidx16.4.1.5, align 4
  %mul.4.1.5 = mul nsw i32 %996, %997
  %arrayidx19.4.1.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.4.1.5 = getelementptr inbounds [8 x i32]* %arrayidx19.4.1.5, i32 0, i64 1
  %998 = load i32* %arrayidx20.4.1.5, align 4
  %add.4.1.5 = add nsw i32 %998, %mul.4.1.5
  store i32 %add.4.1.5, i32* %arrayidx20.4.1.5, align 4
  br label %for.inc.4.1.5

for.inc.4.1.5:                                    ; preds = %for.inc.3.1.5
  %arrayidx11.5.1.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5.1.5 = getelementptr inbounds [8 x i32]* %arrayidx11.5.1.5, i32 0, i64 5
  %999 = load i32* %arrayidx12.5.1.5, align 4
  %arrayidx15.5.1.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1.5, i32 0, i64 1
  %1000 = load i32* %arrayidx16.5.1.5, align 4
  %mul.5.1.5 = mul nsw i32 %999, %1000
  %arrayidx19.5.1.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5.1.5 = getelementptr inbounds [8 x i32]* %arrayidx19.5.1.5, i32 0, i64 1
  %1001 = load i32* %arrayidx20.5.1.5, align 4
  %add.5.1.5 = add nsw i32 %1001, %mul.5.1.5
  store i32 %add.5.1.5, i32* %arrayidx20.5.1.5, align 4
  br label %for.inc.5.1.5

for.inc.5.1.5:                                    ; preds = %for.inc.4.1.5
  %arrayidx11.6.1.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.6.1.5 = getelementptr inbounds [8 x i32]* %arrayidx11.6.1.5, i32 0, i64 6
  %1002 = load i32* %arrayidx12.6.1.5, align 4
  %arrayidx15.6.1.5 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1.5 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1.5, i32 0, i64 1
  %1003 = load i32* %arrayidx16.6.1.5, align 4
  %mul.6.1.5 = mul nsw i32 %1002, %1003
  %arrayidx19.6.1.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.6.1.5 = getelementptr inbounds [8 x i32]* %arrayidx19.6.1.5, i32 0, i64 1
  %1004 = load i32* %arrayidx20.6.1.5, align 4
  %add.6.1.5 = add nsw i32 %1004, %mul.6.1.5
  store i32 %add.6.1.5, i32* %arrayidx20.6.1.5, align 4
  br label %for.inc.6.1.5

for.inc.6.1.5:                                    ; preds = %for.inc.5.1.5
  %arrayidx11.7.1.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.7.1.5 = getelementptr inbounds [8 x i32]* %arrayidx11.7.1.5, i32 0, i64 7
  %1005 = load i32* %arrayidx12.7.1.5, align 4
  %arrayidx15.7.1.5 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1.5 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1.5, i32 0, i64 1
  %1006 = load i32* %arrayidx16.7.1.5, align 4
  %mul.7.1.5 = mul nsw i32 %1005, %1006
  %arrayidx19.7.1.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.7.1.5 = getelementptr inbounds [8 x i32]* %arrayidx19.7.1.5, i32 0, i64 1
  %1007 = load i32* %arrayidx20.7.1.5, align 4
  %add.7.1.5 = add nsw i32 %1007, %mul.7.1.5
  store i32 %add.7.1.5, i32* %arrayidx20.7.1.5, align 4
  br label %for.inc.7.1.5

for.inc.7.1.5:                                    ; preds = %for.inc.6.1.5
  br label %for.inc21.1.5

for.inc21.1.5:                                    ; preds = %for.inc.7.1.5
  %arrayidx.2.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx5.2.5 = getelementptr inbounds [8 x i32]* %arrayidx.2.5, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.5, align 4
  br label %for.body8.2.5

for.body8.2.5:                                    ; preds = %for.inc21.1.5
  %arrayidx11.214.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.215.5 = getelementptr inbounds [8 x i32]* %arrayidx11.214.5, i32 0, i64 0
  %1008 = load i32* %arrayidx12.215.5, align 4
  %arrayidx16.216.5 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 2
  %1009 = load i32* %arrayidx16.216.5, align 4
  %mul.217.5 = mul nsw i32 %1008, %1009
  %arrayidx19.219.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.220.5 = getelementptr inbounds [8 x i32]* %arrayidx19.219.5, i32 0, i64 2
  %1010 = load i32* %arrayidx20.220.5, align 4
  %add.221.5 = add nsw i32 %1010, %mul.217.5
  store i32 %add.221.5, i32* %arrayidx20.220.5, align 4
  br label %for.inc.222.5

for.inc.222.5:                                    ; preds = %for.body8.2.5
  %arrayidx11.1.2.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.1.2.5 = getelementptr inbounds [8 x i32]* %arrayidx11.1.2.5, i32 0, i64 1
  %1011 = load i32* %arrayidx12.1.2.5, align 4
  %arrayidx15.1.2.5 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2.5 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2.5, i32 0, i64 2
  %1012 = load i32* %arrayidx16.1.2.5, align 4
  %mul.1.2.5 = mul nsw i32 %1011, %1012
  %arrayidx19.1.2.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.1.2.5 = getelementptr inbounds [8 x i32]* %arrayidx19.1.2.5, i32 0, i64 2
  %1013 = load i32* %arrayidx20.1.2.5, align 4
  %add.1.2.5 = add nsw i32 %1013, %mul.1.2.5
  store i32 %add.1.2.5, i32* %arrayidx20.1.2.5, align 4
  br label %for.inc.1.2.5

for.inc.1.2.5:                                    ; preds = %for.inc.222.5
  %arrayidx11.2.2.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.2.2.5 = getelementptr inbounds [8 x i32]* %arrayidx11.2.2.5, i32 0, i64 2
  %1014 = load i32* %arrayidx12.2.2.5, align 4
  %arrayidx15.2.2.5 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2.5 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2.5, i32 0, i64 2
  %1015 = load i32* %arrayidx16.2.2.5, align 4
  %mul.2.2.5 = mul nsw i32 %1014, %1015
  %arrayidx19.2.2.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.2.2.5 = getelementptr inbounds [8 x i32]* %arrayidx19.2.2.5, i32 0, i64 2
  %1016 = load i32* %arrayidx20.2.2.5, align 4
  %add.2.2.5 = add nsw i32 %1016, %mul.2.2.5
  store i32 %add.2.2.5, i32* %arrayidx20.2.2.5, align 4
  br label %for.inc.2.2.5

for.inc.2.2.5:                                    ; preds = %for.inc.1.2.5
  %arrayidx11.3.2.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.3.2.5 = getelementptr inbounds [8 x i32]* %arrayidx11.3.2.5, i32 0, i64 3
  %1017 = load i32* %arrayidx12.3.2.5, align 4
  %arrayidx15.3.2.5 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2.5 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2.5, i32 0, i64 2
  %1018 = load i32* %arrayidx16.3.2.5, align 4
  %mul.3.2.5 = mul nsw i32 %1017, %1018
  %arrayidx19.3.2.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.3.2.5 = getelementptr inbounds [8 x i32]* %arrayidx19.3.2.5, i32 0, i64 2
  %1019 = load i32* %arrayidx20.3.2.5, align 4
  %add.3.2.5 = add nsw i32 %1019, %mul.3.2.5
  store i32 %add.3.2.5, i32* %arrayidx20.3.2.5, align 4
  br label %for.inc.3.2.5

for.inc.3.2.5:                                    ; preds = %for.inc.2.2.5
  %arrayidx11.4.2.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.4.2.5 = getelementptr inbounds [8 x i32]* %arrayidx11.4.2.5, i32 0, i64 4
  %1020 = load i32* %arrayidx12.4.2.5, align 4
  %arrayidx15.4.2.5 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2.5 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2.5, i32 0, i64 2
  %1021 = load i32* %arrayidx16.4.2.5, align 4
  %mul.4.2.5 = mul nsw i32 %1020, %1021
  %arrayidx19.4.2.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.4.2.5 = getelementptr inbounds [8 x i32]* %arrayidx19.4.2.5, i32 0, i64 2
  %1022 = load i32* %arrayidx20.4.2.5, align 4
  %add.4.2.5 = add nsw i32 %1022, %mul.4.2.5
  store i32 %add.4.2.5, i32* %arrayidx20.4.2.5, align 4
  br label %for.inc.4.2.5

for.inc.4.2.5:                                    ; preds = %for.inc.3.2.5
  %arrayidx11.5.2.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5.2.5 = getelementptr inbounds [8 x i32]* %arrayidx11.5.2.5, i32 0, i64 5
  %1023 = load i32* %arrayidx12.5.2.5, align 4
  %arrayidx15.5.2.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2.5, i32 0, i64 2
  %1024 = load i32* %arrayidx16.5.2.5, align 4
  %mul.5.2.5 = mul nsw i32 %1023, %1024
  %arrayidx19.5.2.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5.2.5 = getelementptr inbounds [8 x i32]* %arrayidx19.5.2.5, i32 0, i64 2
  %1025 = load i32* %arrayidx20.5.2.5, align 4
  %add.5.2.5 = add nsw i32 %1025, %mul.5.2.5
  store i32 %add.5.2.5, i32* %arrayidx20.5.2.5, align 4
  br label %for.inc.5.2.5

for.inc.5.2.5:                                    ; preds = %for.inc.4.2.5
  %arrayidx11.6.2.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.6.2.5 = getelementptr inbounds [8 x i32]* %arrayidx11.6.2.5, i32 0, i64 6
  %1026 = load i32* %arrayidx12.6.2.5, align 4
  %arrayidx15.6.2.5 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2.5 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2.5, i32 0, i64 2
  %1027 = load i32* %arrayidx16.6.2.5, align 4
  %mul.6.2.5 = mul nsw i32 %1026, %1027
  %arrayidx19.6.2.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.6.2.5 = getelementptr inbounds [8 x i32]* %arrayidx19.6.2.5, i32 0, i64 2
  %1028 = load i32* %arrayidx20.6.2.5, align 4
  %add.6.2.5 = add nsw i32 %1028, %mul.6.2.5
  store i32 %add.6.2.5, i32* %arrayidx20.6.2.5, align 4
  br label %for.inc.6.2.5

for.inc.6.2.5:                                    ; preds = %for.inc.5.2.5
  %arrayidx11.7.2.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.7.2.5 = getelementptr inbounds [8 x i32]* %arrayidx11.7.2.5, i32 0, i64 7
  %1029 = load i32* %arrayidx12.7.2.5, align 4
  %arrayidx15.7.2.5 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2.5 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2.5, i32 0, i64 2
  %1030 = load i32* %arrayidx16.7.2.5, align 4
  %mul.7.2.5 = mul nsw i32 %1029, %1030
  %arrayidx19.7.2.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.7.2.5 = getelementptr inbounds [8 x i32]* %arrayidx19.7.2.5, i32 0, i64 2
  %1031 = load i32* %arrayidx20.7.2.5, align 4
  %add.7.2.5 = add nsw i32 %1031, %mul.7.2.5
  store i32 %add.7.2.5, i32* %arrayidx20.7.2.5, align 4
  br label %for.inc.7.2.5

for.inc.7.2.5:                                    ; preds = %for.inc.6.2.5
  br label %for.inc21.2.5

for.inc21.2.5:                                    ; preds = %for.inc.7.2.5
  %arrayidx.3.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx5.3.5 = getelementptr inbounds [8 x i32]* %arrayidx.3.5, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.5, align 4
  br label %for.body8.3.5

for.body8.3.5:                                    ; preds = %for.inc21.2.5
  %arrayidx11.324.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.325.5 = getelementptr inbounds [8 x i32]* %arrayidx11.324.5, i32 0, i64 0
  %1032 = load i32* %arrayidx12.325.5, align 4
  %arrayidx16.326.5 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 3
  %1033 = load i32* %arrayidx16.326.5, align 4
  %mul.327.5 = mul nsw i32 %1032, %1033
  %arrayidx19.329.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.330.5 = getelementptr inbounds [8 x i32]* %arrayidx19.329.5, i32 0, i64 3
  %1034 = load i32* %arrayidx20.330.5, align 4
  %add.331.5 = add nsw i32 %1034, %mul.327.5
  store i32 %add.331.5, i32* %arrayidx20.330.5, align 4
  br label %for.inc.332.5

for.inc.332.5:                                    ; preds = %for.body8.3.5
  %arrayidx11.1.3.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.1.3.5 = getelementptr inbounds [8 x i32]* %arrayidx11.1.3.5, i32 0, i64 1
  %1035 = load i32* %arrayidx12.1.3.5, align 4
  %arrayidx15.1.3.5 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3.5 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3.5, i32 0, i64 3
  %1036 = load i32* %arrayidx16.1.3.5, align 4
  %mul.1.3.5 = mul nsw i32 %1035, %1036
  %arrayidx19.1.3.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.1.3.5 = getelementptr inbounds [8 x i32]* %arrayidx19.1.3.5, i32 0, i64 3
  %1037 = load i32* %arrayidx20.1.3.5, align 4
  %add.1.3.5 = add nsw i32 %1037, %mul.1.3.5
  store i32 %add.1.3.5, i32* %arrayidx20.1.3.5, align 4
  br label %for.inc.1.3.5

for.inc.1.3.5:                                    ; preds = %for.inc.332.5
  %arrayidx11.2.3.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.2.3.5 = getelementptr inbounds [8 x i32]* %arrayidx11.2.3.5, i32 0, i64 2
  %1038 = load i32* %arrayidx12.2.3.5, align 4
  %arrayidx15.2.3.5 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3.5 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3.5, i32 0, i64 3
  %1039 = load i32* %arrayidx16.2.3.5, align 4
  %mul.2.3.5 = mul nsw i32 %1038, %1039
  %arrayidx19.2.3.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.2.3.5 = getelementptr inbounds [8 x i32]* %arrayidx19.2.3.5, i32 0, i64 3
  %1040 = load i32* %arrayidx20.2.3.5, align 4
  %add.2.3.5 = add nsw i32 %1040, %mul.2.3.5
  store i32 %add.2.3.5, i32* %arrayidx20.2.3.5, align 4
  br label %for.inc.2.3.5

for.inc.2.3.5:                                    ; preds = %for.inc.1.3.5
  %arrayidx11.3.3.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.3.3.5 = getelementptr inbounds [8 x i32]* %arrayidx11.3.3.5, i32 0, i64 3
  %1041 = load i32* %arrayidx12.3.3.5, align 4
  %arrayidx15.3.3.5 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3.5 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3.5, i32 0, i64 3
  %1042 = load i32* %arrayidx16.3.3.5, align 4
  %mul.3.3.5 = mul nsw i32 %1041, %1042
  %arrayidx19.3.3.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.3.3.5 = getelementptr inbounds [8 x i32]* %arrayidx19.3.3.5, i32 0, i64 3
  %1043 = load i32* %arrayidx20.3.3.5, align 4
  %add.3.3.5 = add nsw i32 %1043, %mul.3.3.5
  store i32 %add.3.3.5, i32* %arrayidx20.3.3.5, align 4
  br label %for.inc.3.3.5

for.inc.3.3.5:                                    ; preds = %for.inc.2.3.5
  %arrayidx11.4.3.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.4.3.5 = getelementptr inbounds [8 x i32]* %arrayidx11.4.3.5, i32 0, i64 4
  %1044 = load i32* %arrayidx12.4.3.5, align 4
  %arrayidx15.4.3.5 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3.5 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3.5, i32 0, i64 3
  %1045 = load i32* %arrayidx16.4.3.5, align 4
  %mul.4.3.5 = mul nsw i32 %1044, %1045
  %arrayidx19.4.3.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.4.3.5 = getelementptr inbounds [8 x i32]* %arrayidx19.4.3.5, i32 0, i64 3
  %1046 = load i32* %arrayidx20.4.3.5, align 4
  %add.4.3.5 = add nsw i32 %1046, %mul.4.3.5
  store i32 %add.4.3.5, i32* %arrayidx20.4.3.5, align 4
  br label %for.inc.4.3.5

for.inc.4.3.5:                                    ; preds = %for.inc.3.3.5
  %arrayidx11.5.3.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5.3.5 = getelementptr inbounds [8 x i32]* %arrayidx11.5.3.5, i32 0, i64 5
  %1047 = load i32* %arrayidx12.5.3.5, align 4
  %arrayidx15.5.3.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3.5, i32 0, i64 3
  %1048 = load i32* %arrayidx16.5.3.5, align 4
  %mul.5.3.5 = mul nsw i32 %1047, %1048
  %arrayidx19.5.3.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5.3.5 = getelementptr inbounds [8 x i32]* %arrayidx19.5.3.5, i32 0, i64 3
  %1049 = load i32* %arrayidx20.5.3.5, align 4
  %add.5.3.5 = add nsw i32 %1049, %mul.5.3.5
  store i32 %add.5.3.5, i32* %arrayidx20.5.3.5, align 4
  br label %for.inc.5.3.5

for.inc.5.3.5:                                    ; preds = %for.inc.4.3.5
  %arrayidx11.6.3.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.6.3.5 = getelementptr inbounds [8 x i32]* %arrayidx11.6.3.5, i32 0, i64 6
  %1050 = load i32* %arrayidx12.6.3.5, align 4
  %arrayidx15.6.3.5 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3.5 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3.5, i32 0, i64 3
  %1051 = load i32* %arrayidx16.6.3.5, align 4
  %mul.6.3.5 = mul nsw i32 %1050, %1051
  %arrayidx19.6.3.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.6.3.5 = getelementptr inbounds [8 x i32]* %arrayidx19.6.3.5, i32 0, i64 3
  %1052 = load i32* %arrayidx20.6.3.5, align 4
  %add.6.3.5 = add nsw i32 %1052, %mul.6.3.5
  store i32 %add.6.3.5, i32* %arrayidx20.6.3.5, align 4
  br label %for.inc.6.3.5

for.inc.6.3.5:                                    ; preds = %for.inc.5.3.5
  %arrayidx11.7.3.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.7.3.5 = getelementptr inbounds [8 x i32]* %arrayidx11.7.3.5, i32 0, i64 7
  %1053 = load i32* %arrayidx12.7.3.5, align 4
  %arrayidx15.7.3.5 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3.5 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3.5, i32 0, i64 3
  %1054 = load i32* %arrayidx16.7.3.5, align 4
  %mul.7.3.5 = mul nsw i32 %1053, %1054
  %arrayidx19.7.3.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.7.3.5 = getelementptr inbounds [8 x i32]* %arrayidx19.7.3.5, i32 0, i64 3
  %1055 = load i32* %arrayidx20.7.3.5, align 4
  %add.7.3.5 = add nsw i32 %1055, %mul.7.3.5
  store i32 %add.7.3.5, i32* %arrayidx20.7.3.5, align 4
  br label %for.inc.7.3.5

for.inc.7.3.5:                                    ; preds = %for.inc.6.3.5
  br label %for.inc21.3.5

for.inc21.3.5:                                    ; preds = %for.inc.7.3.5
  %arrayidx.4.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx5.4.5 = getelementptr inbounds [8 x i32]* %arrayidx.4.5, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.5, align 4
  br label %for.body8.4.5

for.body8.4.5:                                    ; preds = %for.inc21.3.5
  %arrayidx11.434.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.435.5 = getelementptr inbounds [8 x i32]* %arrayidx11.434.5, i32 0, i64 0
  %1056 = load i32* %arrayidx12.435.5, align 4
  %arrayidx16.436.5 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 4
  %1057 = load i32* %arrayidx16.436.5, align 4
  %mul.437.5 = mul nsw i32 %1056, %1057
  %arrayidx19.439.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.440.5 = getelementptr inbounds [8 x i32]* %arrayidx19.439.5, i32 0, i64 4
  %1058 = load i32* %arrayidx20.440.5, align 4
  %add.441.5 = add nsw i32 %1058, %mul.437.5
  store i32 %add.441.5, i32* %arrayidx20.440.5, align 4
  br label %for.inc.442.5

for.inc.442.5:                                    ; preds = %for.body8.4.5
  %arrayidx11.1.4.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.1.4.5 = getelementptr inbounds [8 x i32]* %arrayidx11.1.4.5, i32 0, i64 1
  %1059 = load i32* %arrayidx12.1.4.5, align 4
  %arrayidx15.1.4.5 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4.5 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4.5, i32 0, i64 4
  %1060 = load i32* %arrayidx16.1.4.5, align 4
  %mul.1.4.5 = mul nsw i32 %1059, %1060
  %arrayidx19.1.4.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.1.4.5 = getelementptr inbounds [8 x i32]* %arrayidx19.1.4.5, i32 0, i64 4
  %1061 = load i32* %arrayidx20.1.4.5, align 4
  %add.1.4.5 = add nsw i32 %1061, %mul.1.4.5
  store i32 %add.1.4.5, i32* %arrayidx20.1.4.5, align 4
  br label %for.inc.1.4.5

for.inc.1.4.5:                                    ; preds = %for.inc.442.5
  %arrayidx11.2.4.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.2.4.5 = getelementptr inbounds [8 x i32]* %arrayidx11.2.4.5, i32 0, i64 2
  %1062 = load i32* %arrayidx12.2.4.5, align 4
  %arrayidx15.2.4.5 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4.5 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4.5, i32 0, i64 4
  %1063 = load i32* %arrayidx16.2.4.5, align 4
  %mul.2.4.5 = mul nsw i32 %1062, %1063
  %arrayidx19.2.4.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.2.4.5 = getelementptr inbounds [8 x i32]* %arrayidx19.2.4.5, i32 0, i64 4
  %1064 = load i32* %arrayidx20.2.4.5, align 4
  %add.2.4.5 = add nsw i32 %1064, %mul.2.4.5
  store i32 %add.2.4.5, i32* %arrayidx20.2.4.5, align 4
  br label %for.inc.2.4.5

for.inc.2.4.5:                                    ; preds = %for.inc.1.4.5
  %arrayidx11.3.4.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.3.4.5 = getelementptr inbounds [8 x i32]* %arrayidx11.3.4.5, i32 0, i64 3
  %1065 = load i32* %arrayidx12.3.4.5, align 4
  %arrayidx15.3.4.5 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4.5 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4.5, i32 0, i64 4
  %1066 = load i32* %arrayidx16.3.4.5, align 4
  %mul.3.4.5 = mul nsw i32 %1065, %1066
  %arrayidx19.3.4.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.3.4.5 = getelementptr inbounds [8 x i32]* %arrayidx19.3.4.5, i32 0, i64 4
  %1067 = load i32* %arrayidx20.3.4.5, align 4
  %add.3.4.5 = add nsw i32 %1067, %mul.3.4.5
  store i32 %add.3.4.5, i32* %arrayidx20.3.4.5, align 4
  br label %for.inc.3.4.5

for.inc.3.4.5:                                    ; preds = %for.inc.2.4.5
  %arrayidx11.4.4.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.4.4.5 = getelementptr inbounds [8 x i32]* %arrayidx11.4.4.5, i32 0, i64 4
  %1068 = load i32* %arrayidx12.4.4.5, align 4
  %arrayidx15.4.4.5 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4.5 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4.5, i32 0, i64 4
  %1069 = load i32* %arrayidx16.4.4.5, align 4
  %mul.4.4.5 = mul nsw i32 %1068, %1069
  %arrayidx19.4.4.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.4.4.5 = getelementptr inbounds [8 x i32]* %arrayidx19.4.4.5, i32 0, i64 4
  %1070 = load i32* %arrayidx20.4.4.5, align 4
  %add.4.4.5 = add nsw i32 %1070, %mul.4.4.5
  store i32 %add.4.4.5, i32* %arrayidx20.4.4.5, align 4
  br label %for.inc.4.4.5

for.inc.4.4.5:                                    ; preds = %for.inc.3.4.5
  %arrayidx11.5.4.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5.4.5 = getelementptr inbounds [8 x i32]* %arrayidx11.5.4.5, i32 0, i64 5
  %1071 = load i32* %arrayidx12.5.4.5, align 4
  %arrayidx15.5.4.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4.5, i32 0, i64 4
  %1072 = load i32* %arrayidx16.5.4.5, align 4
  %mul.5.4.5 = mul nsw i32 %1071, %1072
  %arrayidx19.5.4.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5.4.5 = getelementptr inbounds [8 x i32]* %arrayidx19.5.4.5, i32 0, i64 4
  %1073 = load i32* %arrayidx20.5.4.5, align 4
  %add.5.4.5 = add nsw i32 %1073, %mul.5.4.5
  store i32 %add.5.4.5, i32* %arrayidx20.5.4.5, align 4
  br label %for.inc.5.4.5

for.inc.5.4.5:                                    ; preds = %for.inc.4.4.5
  %arrayidx11.6.4.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.6.4.5 = getelementptr inbounds [8 x i32]* %arrayidx11.6.4.5, i32 0, i64 6
  %1074 = load i32* %arrayidx12.6.4.5, align 4
  %arrayidx15.6.4.5 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4.5 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4.5, i32 0, i64 4
  %1075 = load i32* %arrayidx16.6.4.5, align 4
  %mul.6.4.5 = mul nsw i32 %1074, %1075
  %arrayidx19.6.4.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.6.4.5 = getelementptr inbounds [8 x i32]* %arrayidx19.6.4.5, i32 0, i64 4
  %1076 = load i32* %arrayidx20.6.4.5, align 4
  %add.6.4.5 = add nsw i32 %1076, %mul.6.4.5
  store i32 %add.6.4.5, i32* %arrayidx20.6.4.5, align 4
  br label %for.inc.6.4.5

for.inc.6.4.5:                                    ; preds = %for.inc.5.4.5
  %arrayidx11.7.4.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.7.4.5 = getelementptr inbounds [8 x i32]* %arrayidx11.7.4.5, i32 0, i64 7
  %1077 = load i32* %arrayidx12.7.4.5, align 4
  %arrayidx15.7.4.5 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4.5 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4.5, i32 0, i64 4
  %1078 = load i32* %arrayidx16.7.4.5, align 4
  %mul.7.4.5 = mul nsw i32 %1077, %1078
  %arrayidx19.7.4.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.7.4.5 = getelementptr inbounds [8 x i32]* %arrayidx19.7.4.5, i32 0, i64 4
  %1079 = load i32* %arrayidx20.7.4.5, align 4
  %add.7.4.5 = add nsw i32 %1079, %mul.7.4.5
  store i32 %add.7.4.5, i32* %arrayidx20.7.4.5, align 4
  br label %for.inc.7.4.5

for.inc.7.4.5:                                    ; preds = %for.inc.6.4.5
  br label %for.inc21.4.5

for.inc21.4.5:                                    ; preds = %for.inc.7.4.5
  %arrayidx.5.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx5.5.5 = getelementptr inbounds [8 x i32]* %arrayidx.5.5, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.5, align 4
  br label %for.body8.5.5

for.body8.5.5:                                    ; preds = %for.inc21.4.5
  %arrayidx11.544.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.545.5 = getelementptr inbounds [8 x i32]* %arrayidx11.544.5, i32 0, i64 0
  %1080 = load i32* %arrayidx12.545.5, align 4
  %arrayidx16.546.5 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 5
  %1081 = load i32* %arrayidx16.546.5, align 4
  %mul.547.5 = mul nsw i32 %1080, %1081
  %arrayidx19.549.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.550.5 = getelementptr inbounds [8 x i32]* %arrayidx19.549.5, i32 0, i64 5
  %1082 = load i32* %arrayidx20.550.5, align 4
  %add.551.5 = add nsw i32 %1082, %mul.547.5
  store i32 %add.551.5, i32* %arrayidx20.550.5, align 4
  br label %for.inc.552.5

for.inc.552.5:                                    ; preds = %for.body8.5.5
  %arrayidx11.1.5.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.1.5.5 = getelementptr inbounds [8 x i32]* %arrayidx11.1.5.5, i32 0, i64 1
  %1083 = load i32* %arrayidx12.1.5.5, align 4
  %arrayidx15.1.5.5 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5.5 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5.5, i32 0, i64 5
  %1084 = load i32* %arrayidx16.1.5.5, align 4
  %mul.1.5.5 = mul nsw i32 %1083, %1084
  %arrayidx19.1.5.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.1.5.5 = getelementptr inbounds [8 x i32]* %arrayidx19.1.5.5, i32 0, i64 5
  %1085 = load i32* %arrayidx20.1.5.5, align 4
  %add.1.5.5 = add nsw i32 %1085, %mul.1.5.5
  store i32 %add.1.5.5, i32* %arrayidx20.1.5.5, align 4
  br label %for.inc.1.5.5

for.inc.1.5.5:                                    ; preds = %for.inc.552.5
  %arrayidx11.2.5.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.2.5.5 = getelementptr inbounds [8 x i32]* %arrayidx11.2.5.5, i32 0, i64 2
  %1086 = load i32* %arrayidx12.2.5.5, align 4
  %arrayidx15.2.5.5 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5.5 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5.5, i32 0, i64 5
  %1087 = load i32* %arrayidx16.2.5.5, align 4
  %mul.2.5.5 = mul nsw i32 %1086, %1087
  %arrayidx19.2.5.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.2.5.5 = getelementptr inbounds [8 x i32]* %arrayidx19.2.5.5, i32 0, i64 5
  %1088 = load i32* %arrayidx20.2.5.5, align 4
  %add.2.5.5 = add nsw i32 %1088, %mul.2.5.5
  store i32 %add.2.5.5, i32* %arrayidx20.2.5.5, align 4
  br label %for.inc.2.5.5

for.inc.2.5.5:                                    ; preds = %for.inc.1.5.5
  %arrayidx11.3.5.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.3.5.5 = getelementptr inbounds [8 x i32]* %arrayidx11.3.5.5, i32 0, i64 3
  %1089 = load i32* %arrayidx12.3.5.5, align 4
  %arrayidx15.3.5.5 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5.5 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5.5, i32 0, i64 5
  %1090 = load i32* %arrayidx16.3.5.5, align 4
  %mul.3.5.5 = mul nsw i32 %1089, %1090
  %arrayidx19.3.5.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.3.5.5 = getelementptr inbounds [8 x i32]* %arrayidx19.3.5.5, i32 0, i64 5
  %1091 = load i32* %arrayidx20.3.5.5, align 4
  %add.3.5.5 = add nsw i32 %1091, %mul.3.5.5
  store i32 %add.3.5.5, i32* %arrayidx20.3.5.5, align 4
  br label %for.inc.3.5.5

for.inc.3.5.5:                                    ; preds = %for.inc.2.5.5
  %arrayidx11.4.5.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.4.5.5 = getelementptr inbounds [8 x i32]* %arrayidx11.4.5.5, i32 0, i64 4
  %1092 = load i32* %arrayidx12.4.5.5, align 4
  %arrayidx15.4.5.5 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5.5 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5.5, i32 0, i64 5
  %1093 = load i32* %arrayidx16.4.5.5, align 4
  %mul.4.5.5 = mul nsw i32 %1092, %1093
  %arrayidx19.4.5.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.4.5.5 = getelementptr inbounds [8 x i32]* %arrayidx19.4.5.5, i32 0, i64 5
  %1094 = load i32* %arrayidx20.4.5.5, align 4
  %add.4.5.5 = add nsw i32 %1094, %mul.4.5.5
  store i32 %add.4.5.5, i32* %arrayidx20.4.5.5, align 4
  br label %for.inc.4.5.5

for.inc.4.5.5:                                    ; preds = %for.inc.3.5.5
  %arrayidx11.5.5.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5.5.5 = getelementptr inbounds [8 x i32]* %arrayidx11.5.5.5, i32 0, i64 5
  %1095 = load i32* %arrayidx12.5.5.5, align 4
  %arrayidx15.5.5.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5.5, i32 0, i64 5
  %1096 = load i32* %arrayidx16.5.5.5, align 4
  %mul.5.5.5 = mul nsw i32 %1095, %1096
  %arrayidx19.5.5.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5.5.5 = getelementptr inbounds [8 x i32]* %arrayidx19.5.5.5, i32 0, i64 5
  %1097 = load i32* %arrayidx20.5.5.5, align 4
  %add.5.5.5 = add nsw i32 %1097, %mul.5.5.5
  store i32 %add.5.5.5, i32* %arrayidx20.5.5.5, align 4
  br label %for.inc.5.5.5

for.inc.5.5.5:                                    ; preds = %for.inc.4.5.5
  %arrayidx11.6.5.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.6.5.5 = getelementptr inbounds [8 x i32]* %arrayidx11.6.5.5, i32 0, i64 6
  %1098 = load i32* %arrayidx12.6.5.5, align 4
  %arrayidx15.6.5.5 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5.5 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5.5, i32 0, i64 5
  %1099 = load i32* %arrayidx16.6.5.5, align 4
  %mul.6.5.5 = mul nsw i32 %1098, %1099
  %arrayidx19.6.5.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.6.5.5 = getelementptr inbounds [8 x i32]* %arrayidx19.6.5.5, i32 0, i64 5
  %1100 = load i32* %arrayidx20.6.5.5, align 4
  %add.6.5.5 = add nsw i32 %1100, %mul.6.5.5
  store i32 %add.6.5.5, i32* %arrayidx20.6.5.5, align 4
  br label %for.inc.6.5.5

for.inc.6.5.5:                                    ; preds = %for.inc.5.5.5
  %arrayidx11.7.5.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.7.5.5 = getelementptr inbounds [8 x i32]* %arrayidx11.7.5.5, i32 0, i64 7
  %1101 = load i32* %arrayidx12.7.5.5, align 4
  %arrayidx15.7.5.5 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5.5 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5.5, i32 0, i64 5
  %1102 = load i32* %arrayidx16.7.5.5, align 4
  %mul.7.5.5 = mul nsw i32 %1101, %1102
  %arrayidx19.7.5.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.7.5.5 = getelementptr inbounds [8 x i32]* %arrayidx19.7.5.5, i32 0, i64 5
  %1103 = load i32* %arrayidx20.7.5.5, align 4
  %add.7.5.5 = add nsw i32 %1103, %mul.7.5.5
  store i32 %add.7.5.5, i32* %arrayidx20.7.5.5, align 4
  br label %for.inc.7.5.5

for.inc.7.5.5:                                    ; preds = %for.inc.6.5.5
  br label %for.inc21.5.5

for.inc21.5.5:                                    ; preds = %for.inc.7.5.5
  %arrayidx.6.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx5.6.5 = getelementptr inbounds [8 x i32]* %arrayidx.6.5, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.5, align 4
  br label %for.body8.6.5

for.body8.6.5:                                    ; preds = %for.inc21.5.5
  %arrayidx11.654.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.655.5 = getelementptr inbounds [8 x i32]* %arrayidx11.654.5, i32 0, i64 0
  %1104 = load i32* %arrayidx12.655.5, align 4
  %arrayidx16.656.5 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 6
  %1105 = load i32* %arrayidx16.656.5, align 4
  %mul.657.5 = mul nsw i32 %1104, %1105
  %arrayidx19.659.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.660.5 = getelementptr inbounds [8 x i32]* %arrayidx19.659.5, i32 0, i64 6
  %1106 = load i32* %arrayidx20.660.5, align 4
  %add.661.5 = add nsw i32 %1106, %mul.657.5
  store i32 %add.661.5, i32* %arrayidx20.660.5, align 4
  br label %for.inc.662.5

for.inc.662.5:                                    ; preds = %for.body8.6.5
  %arrayidx11.1.6.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.1.6.5 = getelementptr inbounds [8 x i32]* %arrayidx11.1.6.5, i32 0, i64 1
  %1107 = load i32* %arrayidx12.1.6.5, align 4
  %arrayidx15.1.6.5 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6.5 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6.5, i32 0, i64 6
  %1108 = load i32* %arrayidx16.1.6.5, align 4
  %mul.1.6.5 = mul nsw i32 %1107, %1108
  %arrayidx19.1.6.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.1.6.5 = getelementptr inbounds [8 x i32]* %arrayidx19.1.6.5, i32 0, i64 6
  %1109 = load i32* %arrayidx20.1.6.5, align 4
  %add.1.6.5 = add nsw i32 %1109, %mul.1.6.5
  store i32 %add.1.6.5, i32* %arrayidx20.1.6.5, align 4
  br label %for.inc.1.6.5

for.inc.1.6.5:                                    ; preds = %for.inc.662.5
  %arrayidx11.2.6.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.2.6.5 = getelementptr inbounds [8 x i32]* %arrayidx11.2.6.5, i32 0, i64 2
  %1110 = load i32* %arrayidx12.2.6.5, align 4
  %arrayidx15.2.6.5 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6.5 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6.5, i32 0, i64 6
  %1111 = load i32* %arrayidx16.2.6.5, align 4
  %mul.2.6.5 = mul nsw i32 %1110, %1111
  %arrayidx19.2.6.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.2.6.5 = getelementptr inbounds [8 x i32]* %arrayidx19.2.6.5, i32 0, i64 6
  %1112 = load i32* %arrayidx20.2.6.5, align 4
  %add.2.6.5 = add nsw i32 %1112, %mul.2.6.5
  store i32 %add.2.6.5, i32* %arrayidx20.2.6.5, align 4
  br label %for.inc.2.6.5

for.inc.2.6.5:                                    ; preds = %for.inc.1.6.5
  %arrayidx11.3.6.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.3.6.5 = getelementptr inbounds [8 x i32]* %arrayidx11.3.6.5, i32 0, i64 3
  %1113 = load i32* %arrayidx12.3.6.5, align 4
  %arrayidx15.3.6.5 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6.5 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6.5, i32 0, i64 6
  %1114 = load i32* %arrayidx16.3.6.5, align 4
  %mul.3.6.5 = mul nsw i32 %1113, %1114
  %arrayidx19.3.6.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.3.6.5 = getelementptr inbounds [8 x i32]* %arrayidx19.3.6.5, i32 0, i64 6
  %1115 = load i32* %arrayidx20.3.6.5, align 4
  %add.3.6.5 = add nsw i32 %1115, %mul.3.6.5
  store i32 %add.3.6.5, i32* %arrayidx20.3.6.5, align 4
  br label %for.inc.3.6.5

for.inc.3.6.5:                                    ; preds = %for.inc.2.6.5
  %arrayidx11.4.6.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.4.6.5 = getelementptr inbounds [8 x i32]* %arrayidx11.4.6.5, i32 0, i64 4
  %1116 = load i32* %arrayidx12.4.6.5, align 4
  %arrayidx15.4.6.5 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6.5 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6.5, i32 0, i64 6
  %1117 = load i32* %arrayidx16.4.6.5, align 4
  %mul.4.6.5 = mul nsw i32 %1116, %1117
  %arrayidx19.4.6.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.4.6.5 = getelementptr inbounds [8 x i32]* %arrayidx19.4.6.5, i32 0, i64 6
  %1118 = load i32* %arrayidx20.4.6.5, align 4
  %add.4.6.5 = add nsw i32 %1118, %mul.4.6.5
  store i32 %add.4.6.5, i32* %arrayidx20.4.6.5, align 4
  br label %for.inc.4.6.5

for.inc.4.6.5:                                    ; preds = %for.inc.3.6.5
  %arrayidx11.5.6.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5.6.5 = getelementptr inbounds [8 x i32]* %arrayidx11.5.6.5, i32 0, i64 5
  %1119 = load i32* %arrayidx12.5.6.5, align 4
  %arrayidx15.5.6.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6.5, i32 0, i64 6
  %1120 = load i32* %arrayidx16.5.6.5, align 4
  %mul.5.6.5 = mul nsw i32 %1119, %1120
  %arrayidx19.5.6.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5.6.5 = getelementptr inbounds [8 x i32]* %arrayidx19.5.6.5, i32 0, i64 6
  %1121 = load i32* %arrayidx20.5.6.5, align 4
  %add.5.6.5 = add nsw i32 %1121, %mul.5.6.5
  store i32 %add.5.6.5, i32* %arrayidx20.5.6.5, align 4
  br label %for.inc.5.6.5

for.inc.5.6.5:                                    ; preds = %for.inc.4.6.5
  %arrayidx11.6.6.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.6.6.5 = getelementptr inbounds [8 x i32]* %arrayidx11.6.6.5, i32 0, i64 6
  %1122 = load i32* %arrayidx12.6.6.5, align 4
  %arrayidx15.6.6.5 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6.5 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6.5, i32 0, i64 6
  %1123 = load i32* %arrayidx16.6.6.5, align 4
  %mul.6.6.5 = mul nsw i32 %1122, %1123
  %arrayidx19.6.6.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.6.6.5 = getelementptr inbounds [8 x i32]* %arrayidx19.6.6.5, i32 0, i64 6
  %1124 = load i32* %arrayidx20.6.6.5, align 4
  %add.6.6.5 = add nsw i32 %1124, %mul.6.6.5
  store i32 %add.6.6.5, i32* %arrayidx20.6.6.5, align 4
  br label %for.inc.6.6.5

for.inc.6.6.5:                                    ; preds = %for.inc.5.6.5
  %arrayidx11.7.6.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.7.6.5 = getelementptr inbounds [8 x i32]* %arrayidx11.7.6.5, i32 0, i64 7
  %1125 = load i32* %arrayidx12.7.6.5, align 4
  %arrayidx15.7.6.5 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6.5 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6.5, i32 0, i64 6
  %1126 = load i32* %arrayidx16.7.6.5, align 4
  %mul.7.6.5 = mul nsw i32 %1125, %1126
  %arrayidx19.7.6.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.7.6.5 = getelementptr inbounds [8 x i32]* %arrayidx19.7.6.5, i32 0, i64 6
  %1127 = load i32* %arrayidx20.7.6.5, align 4
  %add.7.6.5 = add nsw i32 %1127, %mul.7.6.5
  store i32 %add.7.6.5, i32* %arrayidx20.7.6.5, align 4
  br label %for.inc.7.6.5

for.inc.7.6.5:                                    ; preds = %for.inc.6.6.5
  br label %for.inc21.6.5

for.inc21.6.5:                                    ; preds = %for.inc.7.6.5
  %arrayidx.7.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx5.7.5 = getelementptr inbounds [8 x i32]* %arrayidx.7.5, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.5, align 4
  br label %for.body8.7.5

for.body8.7.5:                                    ; preds = %for.inc21.6.5
  %arrayidx11.764.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.765.5 = getelementptr inbounds [8 x i32]* %arrayidx11.764.5, i32 0, i64 0
  %1128 = load i32* %arrayidx12.765.5, align 4
  %arrayidx16.766.5 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 7
  %1129 = load i32* %arrayidx16.766.5, align 4
  %mul.767.5 = mul nsw i32 %1128, %1129
  %arrayidx19.769.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.770.5 = getelementptr inbounds [8 x i32]* %arrayidx19.769.5, i32 0, i64 7
  %1130 = load i32* %arrayidx20.770.5, align 4
  %add.771.5 = add nsw i32 %1130, %mul.767.5
  store i32 %add.771.5, i32* %arrayidx20.770.5, align 4
  br label %for.inc.772.5

for.inc.772.5:                                    ; preds = %for.body8.7.5
  %arrayidx11.1.7.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.1.7.5 = getelementptr inbounds [8 x i32]* %arrayidx11.1.7.5, i32 0, i64 1
  %1131 = load i32* %arrayidx12.1.7.5, align 4
  %arrayidx15.1.7.5 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7.5 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7.5, i32 0, i64 7
  %1132 = load i32* %arrayidx16.1.7.5, align 4
  %mul.1.7.5 = mul nsw i32 %1131, %1132
  %arrayidx19.1.7.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.1.7.5 = getelementptr inbounds [8 x i32]* %arrayidx19.1.7.5, i32 0, i64 7
  %1133 = load i32* %arrayidx20.1.7.5, align 4
  %add.1.7.5 = add nsw i32 %1133, %mul.1.7.5
  store i32 %add.1.7.5, i32* %arrayidx20.1.7.5, align 4
  br label %for.inc.1.7.5

for.inc.1.7.5:                                    ; preds = %for.inc.772.5
  %arrayidx11.2.7.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.2.7.5 = getelementptr inbounds [8 x i32]* %arrayidx11.2.7.5, i32 0, i64 2
  %1134 = load i32* %arrayidx12.2.7.5, align 4
  %arrayidx15.2.7.5 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7.5 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7.5, i32 0, i64 7
  %1135 = load i32* %arrayidx16.2.7.5, align 4
  %mul.2.7.5 = mul nsw i32 %1134, %1135
  %arrayidx19.2.7.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.2.7.5 = getelementptr inbounds [8 x i32]* %arrayidx19.2.7.5, i32 0, i64 7
  %1136 = load i32* %arrayidx20.2.7.5, align 4
  %add.2.7.5 = add nsw i32 %1136, %mul.2.7.5
  store i32 %add.2.7.5, i32* %arrayidx20.2.7.5, align 4
  br label %for.inc.2.7.5

for.inc.2.7.5:                                    ; preds = %for.inc.1.7.5
  %arrayidx11.3.7.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.3.7.5 = getelementptr inbounds [8 x i32]* %arrayidx11.3.7.5, i32 0, i64 3
  %1137 = load i32* %arrayidx12.3.7.5, align 4
  %arrayidx15.3.7.5 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7.5 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7.5, i32 0, i64 7
  %1138 = load i32* %arrayidx16.3.7.5, align 4
  %mul.3.7.5 = mul nsw i32 %1137, %1138
  %arrayidx19.3.7.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.3.7.5 = getelementptr inbounds [8 x i32]* %arrayidx19.3.7.5, i32 0, i64 7
  %1139 = load i32* %arrayidx20.3.7.5, align 4
  %add.3.7.5 = add nsw i32 %1139, %mul.3.7.5
  store i32 %add.3.7.5, i32* %arrayidx20.3.7.5, align 4
  br label %for.inc.3.7.5

for.inc.3.7.5:                                    ; preds = %for.inc.2.7.5
  %arrayidx11.4.7.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.4.7.5 = getelementptr inbounds [8 x i32]* %arrayidx11.4.7.5, i32 0, i64 4
  %1140 = load i32* %arrayidx12.4.7.5, align 4
  %arrayidx15.4.7.5 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7.5 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7.5, i32 0, i64 7
  %1141 = load i32* %arrayidx16.4.7.5, align 4
  %mul.4.7.5 = mul nsw i32 %1140, %1141
  %arrayidx19.4.7.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.4.7.5 = getelementptr inbounds [8 x i32]* %arrayidx19.4.7.5, i32 0, i64 7
  %1142 = load i32* %arrayidx20.4.7.5, align 4
  %add.4.7.5 = add nsw i32 %1142, %mul.4.7.5
  store i32 %add.4.7.5, i32* %arrayidx20.4.7.5, align 4
  br label %for.inc.4.7.5

for.inc.4.7.5:                                    ; preds = %for.inc.3.7.5
  %arrayidx11.5.7.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.5.7.5 = getelementptr inbounds [8 x i32]* %arrayidx11.5.7.5, i32 0, i64 5
  %1143 = load i32* %arrayidx12.5.7.5, align 4
  %arrayidx15.5.7.5 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7.5 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7.5, i32 0, i64 7
  %1144 = load i32* %arrayidx16.5.7.5, align 4
  %mul.5.7.5 = mul nsw i32 %1143, %1144
  %arrayidx19.5.7.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.5.7.5 = getelementptr inbounds [8 x i32]* %arrayidx19.5.7.5, i32 0, i64 7
  %1145 = load i32* %arrayidx20.5.7.5, align 4
  %add.5.7.5 = add nsw i32 %1145, %mul.5.7.5
  store i32 %add.5.7.5, i32* %arrayidx20.5.7.5, align 4
  br label %for.inc.5.7.5

for.inc.5.7.5:                                    ; preds = %for.inc.4.7.5
  %arrayidx11.6.7.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.6.7.5 = getelementptr inbounds [8 x i32]* %arrayidx11.6.7.5, i32 0, i64 6
  %1146 = load i32* %arrayidx12.6.7.5, align 4
  %arrayidx15.6.7.5 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7.5 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7.5, i32 0, i64 7
  %1147 = load i32* %arrayidx16.6.7.5, align 4
  %mul.6.7.5 = mul nsw i32 %1146, %1147
  %arrayidx19.6.7.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.6.7.5 = getelementptr inbounds [8 x i32]* %arrayidx19.6.7.5, i32 0, i64 7
  %1148 = load i32* %arrayidx20.6.7.5, align 4
  %add.6.7.5 = add nsw i32 %1148, %mul.6.7.5
  store i32 %add.6.7.5, i32* %arrayidx20.6.7.5, align 4
  br label %for.inc.6.7.5

for.inc.6.7.5:                                    ; preds = %for.inc.5.7.5
  %arrayidx11.7.7.5 = getelementptr inbounds [8 x i32]* %a, i64 5
  %arrayidx12.7.7.5 = getelementptr inbounds [8 x i32]* %arrayidx11.7.7.5, i32 0, i64 7
  %1149 = load i32* %arrayidx12.7.7.5, align 4
  %arrayidx15.7.7.5 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7.5 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7.5, i32 0, i64 7
  %1150 = load i32* %arrayidx16.7.7.5, align 4
  %mul.7.7.5 = mul nsw i32 %1149, %1150
  %arrayidx19.7.7.5 = getelementptr inbounds [8 x i32]* %c, i64 5
  %arrayidx20.7.7.5 = getelementptr inbounds [8 x i32]* %arrayidx19.7.7.5, i32 0, i64 7
  %1151 = load i32* %arrayidx20.7.7.5, align 4
  %add.7.7.5 = add nsw i32 %1151, %mul.7.7.5
  store i32 %add.7.7.5, i32* %arrayidx20.7.7.5, align 4
  br label %for.inc.7.7.5

for.inc.7.7.5:                                    ; preds = %for.inc.6.7.5
  br label %for.inc21.7.5

for.inc21.7.5:                                    ; preds = %for.inc.7.7.5
  br label %for.inc24.5

for.inc24.5:                                      ; preds = %for.inc21.7.5
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.inc24.5
  %arrayidx.6449 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx5.6450 = getelementptr inbounds [8 x i32]* %arrayidx.6449, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.6450, align 4
  br label %for.body8.6458

for.body8.6458:                                   ; preds = %for.body3.6
  %arrayidx11.6451 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6452 = getelementptr inbounds [8 x i32]* %arrayidx11.6451, i32 0, i64 0
  %1152 = load i32* %arrayidx12.6452, align 4
  %arrayidx16.6453 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 0
  %1153 = load i32* %arrayidx16.6453, align 4
  %mul.6454 = mul nsw i32 %1152, %1153
  %arrayidx19.6455 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6456 = getelementptr inbounds [8 x i32]* %arrayidx19.6455, i32 0, i64 0
  %1154 = load i32* %arrayidx20.6456, align 4
  %add.6457 = add nsw i32 %1154, %mul.6454
  store i32 %add.6457, i32* %arrayidx20.6456, align 4
  br label %for.inc.6467

for.inc.6467:                                     ; preds = %for.body8.6458
  %arrayidx11.1.6459 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.1.6460 = getelementptr inbounds [8 x i32]* %arrayidx11.1.6459, i32 0, i64 1
  %1155 = load i32* %arrayidx12.1.6460, align 4
  %arrayidx15.1.6461 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6462 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6461, i32 0, i64 0
  %1156 = load i32* %arrayidx16.1.6462, align 4
  %mul.1.6463 = mul nsw i32 %1155, %1156
  %arrayidx19.1.6464 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.1.6465 = getelementptr inbounds [8 x i32]* %arrayidx19.1.6464, i32 0, i64 0
  %1157 = load i32* %arrayidx20.1.6465, align 4
  %add.1.6466 = add nsw i32 %1157, %mul.1.6463
  store i32 %add.1.6466, i32* %arrayidx20.1.6465, align 4
  br label %for.inc.1.6476

for.inc.1.6476:                                   ; preds = %for.inc.6467
  %arrayidx11.2.6468 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.2.6469 = getelementptr inbounds [8 x i32]* %arrayidx11.2.6468, i32 0, i64 2
  %1158 = load i32* %arrayidx12.2.6469, align 4
  %arrayidx15.2.6470 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6471 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6470, i32 0, i64 0
  %1159 = load i32* %arrayidx16.2.6471, align 4
  %mul.2.6472 = mul nsw i32 %1158, %1159
  %arrayidx19.2.6473 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.2.6474 = getelementptr inbounds [8 x i32]* %arrayidx19.2.6473, i32 0, i64 0
  %1160 = load i32* %arrayidx20.2.6474, align 4
  %add.2.6475 = add nsw i32 %1160, %mul.2.6472
  store i32 %add.2.6475, i32* %arrayidx20.2.6474, align 4
  br label %for.inc.2.6485

for.inc.2.6485:                                   ; preds = %for.inc.1.6476
  %arrayidx11.3.6477 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.3.6478 = getelementptr inbounds [8 x i32]* %arrayidx11.3.6477, i32 0, i64 3
  %1161 = load i32* %arrayidx12.3.6478, align 4
  %arrayidx15.3.6479 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6480 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6479, i32 0, i64 0
  %1162 = load i32* %arrayidx16.3.6480, align 4
  %mul.3.6481 = mul nsw i32 %1161, %1162
  %arrayidx19.3.6482 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.3.6483 = getelementptr inbounds [8 x i32]* %arrayidx19.3.6482, i32 0, i64 0
  %1163 = load i32* %arrayidx20.3.6483, align 4
  %add.3.6484 = add nsw i32 %1163, %mul.3.6481
  store i32 %add.3.6484, i32* %arrayidx20.3.6483, align 4
  br label %for.inc.3.6494

for.inc.3.6494:                                   ; preds = %for.inc.2.6485
  %arrayidx11.4.6486 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.4.6487 = getelementptr inbounds [8 x i32]* %arrayidx11.4.6486, i32 0, i64 4
  %1164 = load i32* %arrayidx12.4.6487, align 4
  %arrayidx15.4.6488 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6489 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6488, i32 0, i64 0
  %1165 = load i32* %arrayidx16.4.6489, align 4
  %mul.4.6490 = mul nsw i32 %1164, %1165
  %arrayidx19.4.6491 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.4.6492 = getelementptr inbounds [8 x i32]* %arrayidx19.4.6491, i32 0, i64 0
  %1166 = load i32* %arrayidx20.4.6492, align 4
  %add.4.6493 = add nsw i32 %1166, %mul.4.6490
  store i32 %add.4.6493, i32* %arrayidx20.4.6492, align 4
  br label %for.inc.4.6503

for.inc.4.6503:                                   ; preds = %for.inc.3.6494
  %arrayidx11.5.6495 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.5.6496 = getelementptr inbounds [8 x i32]* %arrayidx11.5.6495, i32 0, i64 5
  %1167 = load i32* %arrayidx12.5.6496, align 4
  %arrayidx15.5.6497 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6498 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6497, i32 0, i64 0
  %1168 = load i32* %arrayidx16.5.6498, align 4
  %mul.5.6499 = mul nsw i32 %1167, %1168
  %arrayidx19.5.6500 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.5.6501 = getelementptr inbounds [8 x i32]* %arrayidx19.5.6500, i32 0, i64 0
  %1169 = load i32* %arrayidx20.5.6501, align 4
  %add.5.6502 = add nsw i32 %1169, %mul.5.6499
  store i32 %add.5.6502, i32* %arrayidx20.5.6501, align 4
  br label %for.inc.5.6512

for.inc.5.6512:                                   ; preds = %for.inc.4.6503
  %arrayidx11.6.6504 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6.6505 = getelementptr inbounds [8 x i32]* %arrayidx11.6.6504, i32 0, i64 6
  %1170 = load i32* %arrayidx12.6.6505, align 4
  %arrayidx15.6.6506 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6507 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6506, i32 0, i64 0
  %1171 = load i32* %arrayidx16.6.6507, align 4
  %mul.6.6508 = mul nsw i32 %1170, %1171
  %arrayidx19.6.6509 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6.6510 = getelementptr inbounds [8 x i32]* %arrayidx19.6.6509, i32 0, i64 0
  %1172 = load i32* %arrayidx20.6.6510, align 4
  %add.6.6511 = add nsw i32 %1172, %mul.6.6508
  store i32 %add.6.6511, i32* %arrayidx20.6.6510, align 4
  br label %for.inc.6.6521

for.inc.6.6521:                                   ; preds = %for.inc.5.6512
  %arrayidx11.7.6513 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.7.6514 = getelementptr inbounds [8 x i32]* %arrayidx11.7.6513, i32 0, i64 7
  %1173 = load i32* %arrayidx12.7.6514, align 4
  %arrayidx15.7.6515 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6516 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6515, i32 0, i64 0
  %1174 = load i32* %arrayidx16.7.6516, align 4
  %mul.7.6517 = mul nsw i32 %1173, %1174
  %arrayidx19.7.6518 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.7.6519 = getelementptr inbounds [8 x i32]* %arrayidx19.7.6518, i32 0, i64 0
  %1175 = load i32* %arrayidx20.7.6519, align 4
  %add.7.6520 = add nsw i32 %1175, %mul.7.6517
  store i32 %add.7.6520, i32* %arrayidx20.7.6519, align 4
  br label %for.inc.7.6522

for.inc.7.6522:                                   ; preds = %for.inc.6.6521
  br label %for.inc21.6523

for.inc21.6523:                                   ; preds = %for.inc.7.6522
  %arrayidx.1.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx5.1.6 = getelementptr inbounds [8 x i32]* %arrayidx.1.6, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.6, align 4
  br label %for.body8.1.6

for.body8.1.6:                                    ; preds = %for.inc21.6523
  %arrayidx11.14.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.15.6 = getelementptr inbounds [8 x i32]* %arrayidx11.14.6, i32 0, i64 0
  %1176 = load i32* %arrayidx12.15.6, align 4
  %arrayidx16.16.6 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 1
  %1177 = load i32* %arrayidx16.16.6, align 4
  %mul.17.6 = mul nsw i32 %1176, %1177
  %arrayidx19.19.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.110.6 = getelementptr inbounds [8 x i32]* %arrayidx19.19.6, i32 0, i64 1
  %1178 = load i32* %arrayidx20.110.6, align 4
  %add.111.6 = add nsw i32 %1178, %mul.17.6
  store i32 %add.111.6, i32* %arrayidx20.110.6, align 4
  br label %for.inc.112.6

for.inc.112.6:                                    ; preds = %for.body8.1.6
  %arrayidx11.1.1.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.1.1.6 = getelementptr inbounds [8 x i32]* %arrayidx11.1.1.6, i32 0, i64 1
  %1179 = load i32* %arrayidx12.1.1.6, align 4
  %arrayidx15.1.1.6 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.1.6 = getelementptr inbounds [8 x i32]* %arrayidx15.1.1.6, i32 0, i64 1
  %1180 = load i32* %arrayidx16.1.1.6, align 4
  %mul.1.1.6 = mul nsw i32 %1179, %1180
  %arrayidx19.1.1.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.1.1.6 = getelementptr inbounds [8 x i32]* %arrayidx19.1.1.6, i32 0, i64 1
  %1181 = load i32* %arrayidx20.1.1.6, align 4
  %add.1.1.6 = add nsw i32 %1181, %mul.1.1.6
  store i32 %add.1.1.6, i32* %arrayidx20.1.1.6, align 4
  br label %for.inc.1.1.6

for.inc.1.1.6:                                    ; preds = %for.inc.112.6
  %arrayidx11.2.1.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.2.1.6 = getelementptr inbounds [8 x i32]* %arrayidx11.2.1.6, i32 0, i64 2
  %1182 = load i32* %arrayidx12.2.1.6, align 4
  %arrayidx15.2.1.6 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.1.6 = getelementptr inbounds [8 x i32]* %arrayidx15.2.1.6, i32 0, i64 1
  %1183 = load i32* %arrayidx16.2.1.6, align 4
  %mul.2.1.6 = mul nsw i32 %1182, %1183
  %arrayidx19.2.1.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.2.1.6 = getelementptr inbounds [8 x i32]* %arrayidx19.2.1.6, i32 0, i64 1
  %1184 = load i32* %arrayidx20.2.1.6, align 4
  %add.2.1.6 = add nsw i32 %1184, %mul.2.1.6
  store i32 %add.2.1.6, i32* %arrayidx20.2.1.6, align 4
  br label %for.inc.2.1.6

for.inc.2.1.6:                                    ; preds = %for.inc.1.1.6
  %arrayidx11.3.1.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.3.1.6 = getelementptr inbounds [8 x i32]* %arrayidx11.3.1.6, i32 0, i64 3
  %1185 = load i32* %arrayidx12.3.1.6, align 4
  %arrayidx15.3.1.6 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1.6 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1.6, i32 0, i64 1
  %1186 = load i32* %arrayidx16.3.1.6, align 4
  %mul.3.1.6 = mul nsw i32 %1185, %1186
  %arrayidx19.3.1.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.3.1.6 = getelementptr inbounds [8 x i32]* %arrayidx19.3.1.6, i32 0, i64 1
  %1187 = load i32* %arrayidx20.3.1.6, align 4
  %add.3.1.6 = add nsw i32 %1187, %mul.3.1.6
  store i32 %add.3.1.6, i32* %arrayidx20.3.1.6, align 4
  br label %for.inc.3.1.6

for.inc.3.1.6:                                    ; preds = %for.inc.2.1.6
  %arrayidx11.4.1.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.4.1.6 = getelementptr inbounds [8 x i32]* %arrayidx11.4.1.6, i32 0, i64 4
  %1188 = load i32* %arrayidx12.4.1.6, align 4
  %arrayidx15.4.1.6 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1.6 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1.6, i32 0, i64 1
  %1189 = load i32* %arrayidx16.4.1.6, align 4
  %mul.4.1.6 = mul nsw i32 %1188, %1189
  %arrayidx19.4.1.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.4.1.6 = getelementptr inbounds [8 x i32]* %arrayidx19.4.1.6, i32 0, i64 1
  %1190 = load i32* %arrayidx20.4.1.6, align 4
  %add.4.1.6 = add nsw i32 %1190, %mul.4.1.6
  store i32 %add.4.1.6, i32* %arrayidx20.4.1.6, align 4
  br label %for.inc.4.1.6

for.inc.4.1.6:                                    ; preds = %for.inc.3.1.6
  %arrayidx11.5.1.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.5.1.6 = getelementptr inbounds [8 x i32]* %arrayidx11.5.1.6, i32 0, i64 5
  %1191 = load i32* %arrayidx12.5.1.6, align 4
  %arrayidx15.5.1.6 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1.6 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1.6, i32 0, i64 1
  %1192 = load i32* %arrayidx16.5.1.6, align 4
  %mul.5.1.6 = mul nsw i32 %1191, %1192
  %arrayidx19.5.1.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.5.1.6 = getelementptr inbounds [8 x i32]* %arrayidx19.5.1.6, i32 0, i64 1
  %1193 = load i32* %arrayidx20.5.1.6, align 4
  %add.5.1.6 = add nsw i32 %1193, %mul.5.1.6
  store i32 %add.5.1.6, i32* %arrayidx20.5.1.6, align 4
  br label %for.inc.5.1.6

for.inc.5.1.6:                                    ; preds = %for.inc.4.1.6
  %arrayidx11.6.1.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6.1.6 = getelementptr inbounds [8 x i32]* %arrayidx11.6.1.6, i32 0, i64 6
  %1194 = load i32* %arrayidx12.6.1.6, align 4
  %arrayidx15.6.1.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1.6, i32 0, i64 1
  %1195 = load i32* %arrayidx16.6.1.6, align 4
  %mul.6.1.6 = mul nsw i32 %1194, %1195
  %arrayidx19.6.1.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6.1.6 = getelementptr inbounds [8 x i32]* %arrayidx19.6.1.6, i32 0, i64 1
  %1196 = load i32* %arrayidx20.6.1.6, align 4
  %add.6.1.6 = add nsw i32 %1196, %mul.6.1.6
  store i32 %add.6.1.6, i32* %arrayidx20.6.1.6, align 4
  br label %for.inc.6.1.6

for.inc.6.1.6:                                    ; preds = %for.inc.5.1.6
  %arrayidx11.7.1.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.7.1.6 = getelementptr inbounds [8 x i32]* %arrayidx11.7.1.6, i32 0, i64 7
  %1197 = load i32* %arrayidx12.7.1.6, align 4
  %arrayidx15.7.1.6 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1.6 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1.6, i32 0, i64 1
  %1198 = load i32* %arrayidx16.7.1.6, align 4
  %mul.7.1.6 = mul nsw i32 %1197, %1198
  %arrayidx19.7.1.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.7.1.6 = getelementptr inbounds [8 x i32]* %arrayidx19.7.1.6, i32 0, i64 1
  %1199 = load i32* %arrayidx20.7.1.6, align 4
  %add.7.1.6 = add nsw i32 %1199, %mul.7.1.6
  store i32 %add.7.1.6, i32* %arrayidx20.7.1.6, align 4
  br label %for.inc.7.1.6

for.inc.7.1.6:                                    ; preds = %for.inc.6.1.6
  br label %for.inc21.1.6

for.inc21.1.6:                                    ; preds = %for.inc.7.1.6
  %arrayidx.2.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx5.2.6 = getelementptr inbounds [8 x i32]* %arrayidx.2.6, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.6, align 4
  br label %for.body8.2.6

for.body8.2.6:                                    ; preds = %for.inc21.1.6
  %arrayidx11.214.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.215.6 = getelementptr inbounds [8 x i32]* %arrayidx11.214.6, i32 0, i64 0
  %1200 = load i32* %arrayidx12.215.6, align 4
  %arrayidx16.216.6 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 2
  %1201 = load i32* %arrayidx16.216.6, align 4
  %mul.217.6 = mul nsw i32 %1200, %1201
  %arrayidx19.219.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.220.6 = getelementptr inbounds [8 x i32]* %arrayidx19.219.6, i32 0, i64 2
  %1202 = load i32* %arrayidx20.220.6, align 4
  %add.221.6 = add nsw i32 %1202, %mul.217.6
  store i32 %add.221.6, i32* %arrayidx20.220.6, align 4
  br label %for.inc.222.6

for.inc.222.6:                                    ; preds = %for.body8.2.6
  %arrayidx11.1.2.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.1.2.6 = getelementptr inbounds [8 x i32]* %arrayidx11.1.2.6, i32 0, i64 1
  %1203 = load i32* %arrayidx12.1.2.6, align 4
  %arrayidx15.1.2.6 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2.6 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2.6, i32 0, i64 2
  %1204 = load i32* %arrayidx16.1.2.6, align 4
  %mul.1.2.6 = mul nsw i32 %1203, %1204
  %arrayidx19.1.2.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.1.2.6 = getelementptr inbounds [8 x i32]* %arrayidx19.1.2.6, i32 0, i64 2
  %1205 = load i32* %arrayidx20.1.2.6, align 4
  %add.1.2.6 = add nsw i32 %1205, %mul.1.2.6
  store i32 %add.1.2.6, i32* %arrayidx20.1.2.6, align 4
  br label %for.inc.1.2.6

for.inc.1.2.6:                                    ; preds = %for.inc.222.6
  %arrayidx11.2.2.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.2.2.6 = getelementptr inbounds [8 x i32]* %arrayidx11.2.2.6, i32 0, i64 2
  %1206 = load i32* %arrayidx12.2.2.6, align 4
  %arrayidx15.2.2.6 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2.6 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2.6, i32 0, i64 2
  %1207 = load i32* %arrayidx16.2.2.6, align 4
  %mul.2.2.6 = mul nsw i32 %1206, %1207
  %arrayidx19.2.2.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.2.2.6 = getelementptr inbounds [8 x i32]* %arrayidx19.2.2.6, i32 0, i64 2
  %1208 = load i32* %arrayidx20.2.2.6, align 4
  %add.2.2.6 = add nsw i32 %1208, %mul.2.2.6
  store i32 %add.2.2.6, i32* %arrayidx20.2.2.6, align 4
  br label %for.inc.2.2.6

for.inc.2.2.6:                                    ; preds = %for.inc.1.2.6
  %arrayidx11.3.2.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.3.2.6 = getelementptr inbounds [8 x i32]* %arrayidx11.3.2.6, i32 0, i64 3
  %1209 = load i32* %arrayidx12.3.2.6, align 4
  %arrayidx15.3.2.6 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2.6 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2.6, i32 0, i64 2
  %1210 = load i32* %arrayidx16.3.2.6, align 4
  %mul.3.2.6 = mul nsw i32 %1209, %1210
  %arrayidx19.3.2.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.3.2.6 = getelementptr inbounds [8 x i32]* %arrayidx19.3.2.6, i32 0, i64 2
  %1211 = load i32* %arrayidx20.3.2.6, align 4
  %add.3.2.6 = add nsw i32 %1211, %mul.3.2.6
  store i32 %add.3.2.6, i32* %arrayidx20.3.2.6, align 4
  br label %for.inc.3.2.6

for.inc.3.2.6:                                    ; preds = %for.inc.2.2.6
  %arrayidx11.4.2.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.4.2.6 = getelementptr inbounds [8 x i32]* %arrayidx11.4.2.6, i32 0, i64 4
  %1212 = load i32* %arrayidx12.4.2.6, align 4
  %arrayidx15.4.2.6 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2.6 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2.6, i32 0, i64 2
  %1213 = load i32* %arrayidx16.4.2.6, align 4
  %mul.4.2.6 = mul nsw i32 %1212, %1213
  %arrayidx19.4.2.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.4.2.6 = getelementptr inbounds [8 x i32]* %arrayidx19.4.2.6, i32 0, i64 2
  %1214 = load i32* %arrayidx20.4.2.6, align 4
  %add.4.2.6 = add nsw i32 %1214, %mul.4.2.6
  store i32 %add.4.2.6, i32* %arrayidx20.4.2.6, align 4
  br label %for.inc.4.2.6

for.inc.4.2.6:                                    ; preds = %for.inc.3.2.6
  %arrayidx11.5.2.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.5.2.6 = getelementptr inbounds [8 x i32]* %arrayidx11.5.2.6, i32 0, i64 5
  %1215 = load i32* %arrayidx12.5.2.6, align 4
  %arrayidx15.5.2.6 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2.6 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2.6, i32 0, i64 2
  %1216 = load i32* %arrayidx16.5.2.6, align 4
  %mul.5.2.6 = mul nsw i32 %1215, %1216
  %arrayidx19.5.2.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.5.2.6 = getelementptr inbounds [8 x i32]* %arrayidx19.5.2.6, i32 0, i64 2
  %1217 = load i32* %arrayidx20.5.2.6, align 4
  %add.5.2.6 = add nsw i32 %1217, %mul.5.2.6
  store i32 %add.5.2.6, i32* %arrayidx20.5.2.6, align 4
  br label %for.inc.5.2.6

for.inc.5.2.6:                                    ; preds = %for.inc.4.2.6
  %arrayidx11.6.2.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6.2.6 = getelementptr inbounds [8 x i32]* %arrayidx11.6.2.6, i32 0, i64 6
  %1218 = load i32* %arrayidx12.6.2.6, align 4
  %arrayidx15.6.2.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2.6, i32 0, i64 2
  %1219 = load i32* %arrayidx16.6.2.6, align 4
  %mul.6.2.6 = mul nsw i32 %1218, %1219
  %arrayidx19.6.2.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6.2.6 = getelementptr inbounds [8 x i32]* %arrayidx19.6.2.6, i32 0, i64 2
  %1220 = load i32* %arrayidx20.6.2.6, align 4
  %add.6.2.6 = add nsw i32 %1220, %mul.6.2.6
  store i32 %add.6.2.6, i32* %arrayidx20.6.2.6, align 4
  br label %for.inc.6.2.6

for.inc.6.2.6:                                    ; preds = %for.inc.5.2.6
  %arrayidx11.7.2.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.7.2.6 = getelementptr inbounds [8 x i32]* %arrayidx11.7.2.6, i32 0, i64 7
  %1221 = load i32* %arrayidx12.7.2.6, align 4
  %arrayidx15.7.2.6 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2.6 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2.6, i32 0, i64 2
  %1222 = load i32* %arrayidx16.7.2.6, align 4
  %mul.7.2.6 = mul nsw i32 %1221, %1222
  %arrayidx19.7.2.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.7.2.6 = getelementptr inbounds [8 x i32]* %arrayidx19.7.2.6, i32 0, i64 2
  %1223 = load i32* %arrayidx20.7.2.6, align 4
  %add.7.2.6 = add nsw i32 %1223, %mul.7.2.6
  store i32 %add.7.2.6, i32* %arrayidx20.7.2.6, align 4
  br label %for.inc.7.2.6

for.inc.7.2.6:                                    ; preds = %for.inc.6.2.6
  br label %for.inc21.2.6

for.inc21.2.6:                                    ; preds = %for.inc.7.2.6
  %arrayidx.3.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx5.3.6 = getelementptr inbounds [8 x i32]* %arrayidx.3.6, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.6, align 4
  br label %for.body8.3.6

for.body8.3.6:                                    ; preds = %for.inc21.2.6
  %arrayidx11.324.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.325.6 = getelementptr inbounds [8 x i32]* %arrayidx11.324.6, i32 0, i64 0
  %1224 = load i32* %arrayidx12.325.6, align 4
  %arrayidx16.326.6 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 3
  %1225 = load i32* %arrayidx16.326.6, align 4
  %mul.327.6 = mul nsw i32 %1224, %1225
  %arrayidx19.329.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.330.6 = getelementptr inbounds [8 x i32]* %arrayidx19.329.6, i32 0, i64 3
  %1226 = load i32* %arrayidx20.330.6, align 4
  %add.331.6 = add nsw i32 %1226, %mul.327.6
  store i32 %add.331.6, i32* %arrayidx20.330.6, align 4
  br label %for.inc.332.6

for.inc.332.6:                                    ; preds = %for.body8.3.6
  %arrayidx11.1.3.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.1.3.6 = getelementptr inbounds [8 x i32]* %arrayidx11.1.3.6, i32 0, i64 1
  %1227 = load i32* %arrayidx12.1.3.6, align 4
  %arrayidx15.1.3.6 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3.6 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3.6, i32 0, i64 3
  %1228 = load i32* %arrayidx16.1.3.6, align 4
  %mul.1.3.6 = mul nsw i32 %1227, %1228
  %arrayidx19.1.3.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.1.3.6 = getelementptr inbounds [8 x i32]* %arrayidx19.1.3.6, i32 0, i64 3
  %1229 = load i32* %arrayidx20.1.3.6, align 4
  %add.1.3.6 = add nsw i32 %1229, %mul.1.3.6
  store i32 %add.1.3.6, i32* %arrayidx20.1.3.6, align 4
  br label %for.inc.1.3.6

for.inc.1.3.6:                                    ; preds = %for.inc.332.6
  %arrayidx11.2.3.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.2.3.6 = getelementptr inbounds [8 x i32]* %arrayidx11.2.3.6, i32 0, i64 2
  %1230 = load i32* %arrayidx12.2.3.6, align 4
  %arrayidx15.2.3.6 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3.6 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3.6, i32 0, i64 3
  %1231 = load i32* %arrayidx16.2.3.6, align 4
  %mul.2.3.6 = mul nsw i32 %1230, %1231
  %arrayidx19.2.3.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.2.3.6 = getelementptr inbounds [8 x i32]* %arrayidx19.2.3.6, i32 0, i64 3
  %1232 = load i32* %arrayidx20.2.3.6, align 4
  %add.2.3.6 = add nsw i32 %1232, %mul.2.3.6
  store i32 %add.2.3.6, i32* %arrayidx20.2.3.6, align 4
  br label %for.inc.2.3.6

for.inc.2.3.6:                                    ; preds = %for.inc.1.3.6
  %arrayidx11.3.3.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.3.3.6 = getelementptr inbounds [8 x i32]* %arrayidx11.3.3.6, i32 0, i64 3
  %1233 = load i32* %arrayidx12.3.3.6, align 4
  %arrayidx15.3.3.6 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3.6 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3.6, i32 0, i64 3
  %1234 = load i32* %arrayidx16.3.3.6, align 4
  %mul.3.3.6 = mul nsw i32 %1233, %1234
  %arrayidx19.3.3.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.3.3.6 = getelementptr inbounds [8 x i32]* %arrayidx19.3.3.6, i32 0, i64 3
  %1235 = load i32* %arrayidx20.3.3.6, align 4
  %add.3.3.6 = add nsw i32 %1235, %mul.3.3.6
  store i32 %add.3.3.6, i32* %arrayidx20.3.3.6, align 4
  br label %for.inc.3.3.6

for.inc.3.3.6:                                    ; preds = %for.inc.2.3.6
  %arrayidx11.4.3.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.4.3.6 = getelementptr inbounds [8 x i32]* %arrayidx11.4.3.6, i32 0, i64 4
  %1236 = load i32* %arrayidx12.4.3.6, align 4
  %arrayidx15.4.3.6 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3.6 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3.6, i32 0, i64 3
  %1237 = load i32* %arrayidx16.4.3.6, align 4
  %mul.4.3.6 = mul nsw i32 %1236, %1237
  %arrayidx19.4.3.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.4.3.6 = getelementptr inbounds [8 x i32]* %arrayidx19.4.3.6, i32 0, i64 3
  %1238 = load i32* %arrayidx20.4.3.6, align 4
  %add.4.3.6 = add nsw i32 %1238, %mul.4.3.6
  store i32 %add.4.3.6, i32* %arrayidx20.4.3.6, align 4
  br label %for.inc.4.3.6

for.inc.4.3.6:                                    ; preds = %for.inc.3.3.6
  %arrayidx11.5.3.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.5.3.6 = getelementptr inbounds [8 x i32]* %arrayidx11.5.3.6, i32 0, i64 5
  %1239 = load i32* %arrayidx12.5.3.6, align 4
  %arrayidx15.5.3.6 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3.6 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3.6, i32 0, i64 3
  %1240 = load i32* %arrayidx16.5.3.6, align 4
  %mul.5.3.6 = mul nsw i32 %1239, %1240
  %arrayidx19.5.3.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.5.3.6 = getelementptr inbounds [8 x i32]* %arrayidx19.5.3.6, i32 0, i64 3
  %1241 = load i32* %arrayidx20.5.3.6, align 4
  %add.5.3.6 = add nsw i32 %1241, %mul.5.3.6
  store i32 %add.5.3.6, i32* %arrayidx20.5.3.6, align 4
  br label %for.inc.5.3.6

for.inc.5.3.6:                                    ; preds = %for.inc.4.3.6
  %arrayidx11.6.3.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6.3.6 = getelementptr inbounds [8 x i32]* %arrayidx11.6.3.6, i32 0, i64 6
  %1242 = load i32* %arrayidx12.6.3.6, align 4
  %arrayidx15.6.3.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3.6, i32 0, i64 3
  %1243 = load i32* %arrayidx16.6.3.6, align 4
  %mul.6.3.6 = mul nsw i32 %1242, %1243
  %arrayidx19.6.3.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6.3.6 = getelementptr inbounds [8 x i32]* %arrayidx19.6.3.6, i32 0, i64 3
  %1244 = load i32* %arrayidx20.6.3.6, align 4
  %add.6.3.6 = add nsw i32 %1244, %mul.6.3.6
  store i32 %add.6.3.6, i32* %arrayidx20.6.3.6, align 4
  br label %for.inc.6.3.6

for.inc.6.3.6:                                    ; preds = %for.inc.5.3.6
  %arrayidx11.7.3.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.7.3.6 = getelementptr inbounds [8 x i32]* %arrayidx11.7.3.6, i32 0, i64 7
  %1245 = load i32* %arrayidx12.7.3.6, align 4
  %arrayidx15.7.3.6 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3.6 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3.6, i32 0, i64 3
  %1246 = load i32* %arrayidx16.7.3.6, align 4
  %mul.7.3.6 = mul nsw i32 %1245, %1246
  %arrayidx19.7.3.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.7.3.6 = getelementptr inbounds [8 x i32]* %arrayidx19.7.3.6, i32 0, i64 3
  %1247 = load i32* %arrayidx20.7.3.6, align 4
  %add.7.3.6 = add nsw i32 %1247, %mul.7.3.6
  store i32 %add.7.3.6, i32* %arrayidx20.7.3.6, align 4
  br label %for.inc.7.3.6

for.inc.7.3.6:                                    ; preds = %for.inc.6.3.6
  br label %for.inc21.3.6

for.inc21.3.6:                                    ; preds = %for.inc.7.3.6
  %arrayidx.4.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx5.4.6 = getelementptr inbounds [8 x i32]* %arrayidx.4.6, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.6, align 4
  br label %for.body8.4.6

for.body8.4.6:                                    ; preds = %for.inc21.3.6
  %arrayidx11.434.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.435.6 = getelementptr inbounds [8 x i32]* %arrayidx11.434.6, i32 0, i64 0
  %1248 = load i32* %arrayidx12.435.6, align 4
  %arrayidx16.436.6 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 4
  %1249 = load i32* %arrayidx16.436.6, align 4
  %mul.437.6 = mul nsw i32 %1248, %1249
  %arrayidx19.439.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.440.6 = getelementptr inbounds [8 x i32]* %arrayidx19.439.6, i32 0, i64 4
  %1250 = load i32* %arrayidx20.440.6, align 4
  %add.441.6 = add nsw i32 %1250, %mul.437.6
  store i32 %add.441.6, i32* %arrayidx20.440.6, align 4
  br label %for.inc.442.6

for.inc.442.6:                                    ; preds = %for.body8.4.6
  %arrayidx11.1.4.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.1.4.6 = getelementptr inbounds [8 x i32]* %arrayidx11.1.4.6, i32 0, i64 1
  %1251 = load i32* %arrayidx12.1.4.6, align 4
  %arrayidx15.1.4.6 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4.6 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4.6, i32 0, i64 4
  %1252 = load i32* %arrayidx16.1.4.6, align 4
  %mul.1.4.6 = mul nsw i32 %1251, %1252
  %arrayidx19.1.4.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.1.4.6 = getelementptr inbounds [8 x i32]* %arrayidx19.1.4.6, i32 0, i64 4
  %1253 = load i32* %arrayidx20.1.4.6, align 4
  %add.1.4.6 = add nsw i32 %1253, %mul.1.4.6
  store i32 %add.1.4.6, i32* %arrayidx20.1.4.6, align 4
  br label %for.inc.1.4.6

for.inc.1.4.6:                                    ; preds = %for.inc.442.6
  %arrayidx11.2.4.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.2.4.6 = getelementptr inbounds [8 x i32]* %arrayidx11.2.4.6, i32 0, i64 2
  %1254 = load i32* %arrayidx12.2.4.6, align 4
  %arrayidx15.2.4.6 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4.6 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4.6, i32 0, i64 4
  %1255 = load i32* %arrayidx16.2.4.6, align 4
  %mul.2.4.6 = mul nsw i32 %1254, %1255
  %arrayidx19.2.4.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.2.4.6 = getelementptr inbounds [8 x i32]* %arrayidx19.2.4.6, i32 0, i64 4
  %1256 = load i32* %arrayidx20.2.4.6, align 4
  %add.2.4.6 = add nsw i32 %1256, %mul.2.4.6
  store i32 %add.2.4.6, i32* %arrayidx20.2.4.6, align 4
  br label %for.inc.2.4.6

for.inc.2.4.6:                                    ; preds = %for.inc.1.4.6
  %arrayidx11.3.4.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.3.4.6 = getelementptr inbounds [8 x i32]* %arrayidx11.3.4.6, i32 0, i64 3
  %1257 = load i32* %arrayidx12.3.4.6, align 4
  %arrayidx15.3.4.6 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4.6 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4.6, i32 0, i64 4
  %1258 = load i32* %arrayidx16.3.4.6, align 4
  %mul.3.4.6 = mul nsw i32 %1257, %1258
  %arrayidx19.3.4.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.3.4.6 = getelementptr inbounds [8 x i32]* %arrayidx19.3.4.6, i32 0, i64 4
  %1259 = load i32* %arrayidx20.3.4.6, align 4
  %add.3.4.6 = add nsw i32 %1259, %mul.3.4.6
  store i32 %add.3.4.6, i32* %arrayidx20.3.4.6, align 4
  br label %for.inc.3.4.6

for.inc.3.4.6:                                    ; preds = %for.inc.2.4.6
  %arrayidx11.4.4.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.4.4.6 = getelementptr inbounds [8 x i32]* %arrayidx11.4.4.6, i32 0, i64 4
  %1260 = load i32* %arrayidx12.4.4.6, align 4
  %arrayidx15.4.4.6 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4.6 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4.6, i32 0, i64 4
  %1261 = load i32* %arrayidx16.4.4.6, align 4
  %mul.4.4.6 = mul nsw i32 %1260, %1261
  %arrayidx19.4.4.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.4.4.6 = getelementptr inbounds [8 x i32]* %arrayidx19.4.4.6, i32 0, i64 4
  %1262 = load i32* %arrayidx20.4.4.6, align 4
  %add.4.4.6 = add nsw i32 %1262, %mul.4.4.6
  store i32 %add.4.4.6, i32* %arrayidx20.4.4.6, align 4
  br label %for.inc.4.4.6

for.inc.4.4.6:                                    ; preds = %for.inc.3.4.6
  %arrayidx11.5.4.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.5.4.6 = getelementptr inbounds [8 x i32]* %arrayidx11.5.4.6, i32 0, i64 5
  %1263 = load i32* %arrayidx12.5.4.6, align 4
  %arrayidx15.5.4.6 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4.6 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4.6, i32 0, i64 4
  %1264 = load i32* %arrayidx16.5.4.6, align 4
  %mul.5.4.6 = mul nsw i32 %1263, %1264
  %arrayidx19.5.4.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.5.4.6 = getelementptr inbounds [8 x i32]* %arrayidx19.5.4.6, i32 0, i64 4
  %1265 = load i32* %arrayidx20.5.4.6, align 4
  %add.5.4.6 = add nsw i32 %1265, %mul.5.4.6
  store i32 %add.5.4.6, i32* %arrayidx20.5.4.6, align 4
  br label %for.inc.5.4.6

for.inc.5.4.6:                                    ; preds = %for.inc.4.4.6
  %arrayidx11.6.4.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6.4.6 = getelementptr inbounds [8 x i32]* %arrayidx11.6.4.6, i32 0, i64 6
  %1266 = load i32* %arrayidx12.6.4.6, align 4
  %arrayidx15.6.4.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4.6, i32 0, i64 4
  %1267 = load i32* %arrayidx16.6.4.6, align 4
  %mul.6.4.6 = mul nsw i32 %1266, %1267
  %arrayidx19.6.4.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6.4.6 = getelementptr inbounds [8 x i32]* %arrayidx19.6.4.6, i32 0, i64 4
  %1268 = load i32* %arrayidx20.6.4.6, align 4
  %add.6.4.6 = add nsw i32 %1268, %mul.6.4.6
  store i32 %add.6.4.6, i32* %arrayidx20.6.4.6, align 4
  br label %for.inc.6.4.6

for.inc.6.4.6:                                    ; preds = %for.inc.5.4.6
  %arrayidx11.7.4.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.7.4.6 = getelementptr inbounds [8 x i32]* %arrayidx11.7.4.6, i32 0, i64 7
  %1269 = load i32* %arrayidx12.7.4.6, align 4
  %arrayidx15.7.4.6 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4.6 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4.6, i32 0, i64 4
  %1270 = load i32* %arrayidx16.7.4.6, align 4
  %mul.7.4.6 = mul nsw i32 %1269, %1270
  %arrayidx19.7.4.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.7.4.6 = getelementptr inbounds [8 x i32]* %arrayidx19.7.4.6, i32 0, i64 4
  %1271 = load i32* %arrayidx20.7.4.6, align 4
  %add.7.4.6 = add nsw i32 %1271, %mul.7.4.6
  store i32 %add.7.4.6, i32* %arrayidx20.7.4.6, align 4
  br label %for.inc.7.4.6

for.inc.7.4.6:                                    ; preds = %for.inc.6.4.6
  br label %for.inc21.4.6

for.inc21.4.6:                                    ; preds = %for.inc.7.4.6
  %arrayidx.5.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx5.5.6 = getelementptr inbounds [8 x i32]* %arrayidx.5.6, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.6, align 4
  br label %for.body8.5.6

for.body8.5.6:                                    ; preds = %for.inc21.4.6
  %arrayidx11.544.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.545.6 = getelementptr inbounds [8 x i32]* %arrayidx11.544.6, i32 0, i64 0
  %1272 = load i32* %arrayidx12.545.6, align 4
  %arrayidx16.546.6 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 5
  %1273 = load i32* %arrayidx16.546.6, align 4
  %mul.547.6 = mul nsw i32 %1272, %1273
  %arrayidx19.549.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.550.6 = getelementptr inbounds [8 x i32]* %arrayidx19.549.6, i32 0, i64 5
  %1274 = load i32* %arrayidx20.550.6, align 4
  %add.551.6 = add nsw i32 %1274, %mul.547.6
  store i32 %add.551.6, i32* %arrayidx20.550.6, align 4
  br label %for.inc.552.6

for.inc.552.6:                                    ; preds = %for.body8.5.6
  %arrayidx11.1.5.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.1.5.6 = getelementptr inbounds [8 x i32]* %arrayidx11.1.5.6, i32 0, i64 1
  %1275 = load i32* %arrayidx12.1.5.6, align 4
  %arrayidx15.1.5.6 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5.6 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5.6, i32 0, i64 5
  %1276 = load i32* %arrayidx16.1.5.6, align 4
  %mul.1.5.6 = mul nsw i32 %1275, %1276
  %arrayidx19.1.5.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.1.5.6 = getelementptr inbounds [8 x i32]* %arrayidx19.1.5.6, i32 0, i64 5
  %1277 = load i32* %arrayidx20.1.5.6, align 4
  %add.1.5.6 = add nsw i32 %1277, %mul.1.5.6
  store i32 %add.1.5.6, i32* %arrayidx20.1.5.6, align 4
  br label %for.inc.1.5.6

for.inc.1.5.6:                                    ; preds = %for.inc.552.6
  %arrayidx11.2.5.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.2.5.6 = getelementptr inbounds [8 x i32]* %arrayidx11.2.5.6, i32 0, i64 2
  %1278 = load i32* %arrayidx12.2.5.6, align 4
  %arrayidx15.2.5.6 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5.6 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5.6, i32 0, i64 5
  %1279 = load i32* %arrayidx16.2.5.6, align 4
  %mul.2.5.6 = mul nsw i32 %1278, %1279
  %arrayidx19.2.5.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.2.5.6 = getelementptr inbounds [8 x i32]* %arrayidx19.2.5.6, i32 0, i64 5
  %1280 = load i32* %arrayidx20.2.5.6, align 4
  %add.2.5.6 = add nsw i32 %1280, %mul.2.5.6
  store i32 %add.2.5.6, i32* %arrayidx20.2.5.6, align 4
  br label %for.inc.2.5.6

for.inc.2.5.6:                                    ; preds = %for.inc.1.5.6
  %arrayidx11.3.5.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.3.5.6 = getelementptr inbounds [8 x i32]* %arrayidx11.3.5.6, i32 0, i64 3
  %1281 = load i32* %arrayidx12.3.5.6, align 4
  %arrayidx15.3.5.6 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5.6 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5.6, i32 0, i64 5
  %1282 = load i32* %arrayidx16.3.5.6, align 4
  %mul.3.5.6 = mul nsw i32 %1281, %1282
  %arrayidx19.3.5.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.3.5.6 = getelementptr inbounds [8 x i32]* %arrayidx19.3.5.6, i32 0, i64 5
  %1283 = load i32* %arrayidx20.3.5.6, align 4
  %add.3.5.6 = add nsw i32 %1283, %mul.3.5.6
  store i32 %add.3.5.6, i32* %arrayidx20.3.5.6, align 4
  br label %for.inc.3.5.6

for.inc.3.5.6:                                    ; preds = %for.inc.2.5.6
  %arrayidx11.4.5.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.4.5.6 = getelementptr inbounds [8 x i32]* %arrayidx11.4.5.6, i32 0, i64 4
  %1284 = load i32* %arrayidx12.4.5.6, align 4
  %arrayidx15.4.5.6 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5.6 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5.6, i32 0, i64 5
  %1285 = load i32* %arrayidx16.4.5.6, align 4
  %mul.4.5.6 = mul nsw i32 %1284, %1285
  %arrayidx19.4.5.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.4.5.6 = getelementptr inbounds [8 x i32]* %arrayidx19.4.5.6, i32 0, i64 5
  %1286 = load i32* %arrayidx20.4.5.6, align 4
  %add.4.5.6 = add nsw i32 %1286, %mul.4.5.6
  store i32 %add.4.5.6, i32* %arrayidx20.4.5.6, align 4
  br label %for.inc.4.5.6

for.inc.4.5.6:                                    ; preds = %for.inc.3.5.6
  %arrayidx11.5.5.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.5.5.6 = getelementptr inbounds [8 x i32]* %arrayidx11.5.5.6, i32 0, i64 5
  %1287 = load i32* %arrayidx12.5.5.6, align 4
  %arrayidx15.5.5.6 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5.6 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5.6, i32 0, i64 5
  %1288 = load i32* %arrayidx16.5.5.6, align 4
  %mul.5.5.6 = mul nsw i32 %1287, %1288
  %arrayidx19.5.5.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.5.5.6 = getelementptr inbounds [8 x i32]* %arrayidx19.5.5.6, i32 0, i64 5
  %1289 = load i32* %arrayidx20.5.5.6, align 4
  %add.5.5.6 = add nsw i32 %1289, %mul.5.5.6
  store i32 %add.5.5.6, i32* %arrayidx20.5.5.6, align 4
  br label %for.inc.5.5.6

for.inc.5.5.6:                                    ; preds = %for.inc.4.5.6
  %arrayidx11.6.5.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6.5.6 = getelementptr inbounds [8 x i32]* %arrayidx11.6.5.6, i32 0, i64 6
  %1290 = load i32* %arrayidx12.6.5.6, align 4
  %arrayidx15.6.5.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5.6, i32 0, i64 5
  %1291 = load i32* %arrayidx16.6.5.6, align 4
  %mul.6.5.6 = mul nsw i32 %1290, %1291
  %arrayidx19.6.5.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6.5.6 = getelementptr inbounds [8 x i32]* %arrayidx19.6.5.6, i32 0, i64 5
  %1292 = load i32* %arrayidx20.6.5.6, align 4
  %add.6.5.6 = add nsw i32 %1292, %mul.6.5.6
  store i32 %add.6.5.6, i32* %arrayidx20.6.5.6, align 4
  br label %for.inc.6.5.6

for.inc.6.5.6:                                    ; preds = %for.inc.5.5.6
  %arrayidx11.7.5.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.7.5.6 = getelementptr inbounds [8 x i32]* %arrayidx11.7.5.6, i32 0, i64 7
  %1293 = load i32* %arrayidx12.7.5.6, align 4
  %arrayidx15.7.5.6 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5.6 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5.6, i32 0, i64 5
  %1294 = load i32* %arrayidx16.7.5.6, align 4
  %mul.7.5.6 = mul nsw i32 %1293, %1294
  %arrayidx19.7.5.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.7.5.6 = getelementptr inbounds [8 x i32]* %arrayidx19.7.5.6, i32 0, i64 5
  %1295 = load i32* %arrayidx20.7.5.6, align 4
  %add.7.5.6 = add nsw i32 %1295, %mul.7.5.6
  store i32 %add.7.5.6, i32* %arrayidx20.7.5.6, align 4
  br label %for.inc.7.5.6

for.inc.7.5.6:                                    ; preds = %for.inc.6.5.6
  br label %for.inc21.5.6

for.inc21.5.6:                                    ; preds = %for.inc.7.5.6
  %arrayidx.6.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx5.6.6 = getelementptr inbounds [8 x i32]* %arrayidx.6.6, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.6, align 4
  br label %for.body8.6.6

for.body8.6.6:                                    ; preds = %for.inc21.5.6
  %arrayidx11.654.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.655.6 = getelementptr inbounds [8 x i32]* %arrayidx11.654.6, i32 0, i64 0
  %1296 = load i32* %arrayidx12.655.6, align 4
  %arrayidx16.656.6 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 6
  %1297 = load i32* %arrayidx16.656.6, align 4
  %mul.657.6 = mul nsw i32 %1296, %1297
  %arrayidx19.659.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.660.6 = getelementptr inbounds [8 x i32]* %arrayidx19.659.6, i32 0, i64 6
  %1298 = load i32* %arrayidx20.660.6, align 4
  %add.661.6 = add nsw i32 %1298, %mul.657.6
  store i32 %add.661.6, i32* %arrayidx20.660.6, align 4
  br label %for.inc.662.6

for.inc.662.6:                                    ; preds = %for.body8.6.6
  %arrayidx11.1.6.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.1.6.6 = getelementptr inbounds [8 x i32]* %arrayidx11.1.6.6, i32 0, i64 1
  %1299 = load i32* %arrayidx12.1.6.6, align 4
  %arrayidx15.1.6.6 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6.6 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6.6, i32 0, i64 6
  %1300 = load i32* %arrayidx16.1.6.6, align 4
  %mul.1.6.6 = mul nsw i32 %1299, %1300
  %arrayidx19.1.6.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.1.6.6 = getelementptr inbounds [8 x i32]* %arrayidx19.1.6.6, i32 0, i64 6
  %1301 = load i32* %arrayidx20.1.6.6, align 4
  %add.1.6.6 = add nsw i32 %1301, %mul.1.6.6
  store i32 %add.1.6.6, i32* %arrayidx20.1.6.6, align 4
  br label %for.inc.1.6.6

for.inc.1.6.6:                                    ; preds = %for.inc.662.6
  %arrayidx11.2.6.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.2.6.6 = getelementptr inbounds [8 x i32]* %arrayidx11.2.6.6, i32 0, i64 2
  %1302 = load i32* %arrayidx12.2.6.6, align 4
  %arrayidx15.2.6.6 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6.6 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6.6, i32 0, i64 6
  %1303 = load i32* %arrayidx16.2.6.6, align 4
  %mul.2.6.6 = mul nsw i32 %1302, %1303
  %arrayidx19.2.6.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.2.6.6 = getelementptr inbounds [8 x i32]* %arrayidx19.2.6.6, i32 0, i64 6
  %1304 = load i32* %arrayidx20.2.6.6, align 4
  %add.2.6.6 = add nsw i32 %1304, %mul.2.6.6
  store i32 %add.2.6.6, i32* %arrayidx20.2.6.6, align 4
  br label %for.inc.2.6.6

for.inc.2.6.6:                                    ; preds = %for.inc.1.6.6
  %arrayidx11.3.6.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.3.6.6 = getelementptr inbounds [8 x i32]* %arrayidx11.3.6.6, i32 0, i64 3
  %1305 = load i32* %arrayidx12.3.6.6, align 4
  %arrayidx15.3.6.6 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6.6 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6.6, i32 0, i64 6
  %1306 = load i32* %arrayidx16.3.6.6, align 4
  %mul.3.6.6 = mul nsw i32 %1305, %1306
  %arrayidx19.3.6.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.3.6.6 = getelementptr inbounds [8 x i32]* %arrayidx19.3.6.6, i32 0, i64 6
  %1307 = load i32* %arrayidx20.3.6.6, align 4
  %add.3.6.6 = add nsw i32 %1307, %mul.3.6.6
  store i32 %add.3.6.6, i32* %arrayidx20.3.6.6, align 4
  br label %for.inc.3.6.6

for.inc.3.6.6:                                    ; preds = %for.inc.2.6.6
  %arrayidx11.4.6.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.4.6.6 = getelementptr inbounds [8 x i32]* %arrayidx11.4.6.6, i32 0, i64 4
  %1308 = load i32* %arrayidx12.4.6.6, align 4
  %arrayidx15.4.6.6 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6.6 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6.6, i32 0, i64 6
  %1309 = load i32* %arrayidx16.4.6.6, align 4
  %mul.4.6.6 = mul nsw i32 %1308, %1309
  %arrayidx19.4.6.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.4.6.6 = getelementptr inbounds [8 x i32]* %arrayidx19.4.6.6, i32 0, i64 6
  %1310 = load i32* %arrayidx20.4.6.6, align 4
  %add.4.6.6 = add nsw i32 %1310, %mul.4.6.6
  store i32 %add.4.6.6, i32* %arrayidx20.4.6.6, align 4
  br label %for.inc.4.6.6

for.inc.4.6.6:                                    ; preds = %for.inc.3.6.6
  %arrayidx11.5.6.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.5.6.6 = getelementptr inbounds [8 x i32]* %arrayidx11.5.6.6, i32 0, i64 5
  %1311 = load i32* %arrayidx12.5.6.6, align 4
  %arrayidx15.5.6.6 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6.6 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6.6, i32 0, i64 6
  %1312 = load i32* %arrayidx16.5.6.6, align 4
  %mul.5.6.6 = mul nsw i32 %1311, %1312
  %arrayidx19.5.6.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.5.6.6 = getelementptr inbounds [8 x i32]* %arrayidx19.5.6.6, i32 0, i64 6
  %1313 = load i32* %arrayidx20.5.6.6, align 4
  %add.5.6.6 = add nsw i32 %1313, %mul.5.6.6
  store i32 %add.5.6.6, i32* %arrayidx20.5.6.6, align 4
  br label %for.inc.5.6.6

for.inc.5.6.6:                                    ; preds = %for.inc.4.6.6
  %arrayidx11.6.6.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6.6.6 = getelementptr inbounds [8 x i32]* %arrayidx11.6.6.6, i32 0, i64 6
  %1314 = load i32* %arrayidx12.6.6.6, align 4
  %arrayidx15.6.6.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6.6, i32 0, i64 6
  %1315 = load i32* %arrayidx16.6.6.6, align 4
  %mul.6.6.6 = mul nsw i32 %1314, %1315
  %arrayidx19.6.6.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6.6.6 = getelementptr inbounds [8 x i32]* %arrayidx19.6.6.6, i32 0, i64 6
  %1316 = load i32* %arrayidx20.6.6.6, align 4
  %add.6.6.6 = add nsw i32 %1316, %mul.6.6.6
  store i32 %add.6.6.6, i32* %arrayidx20.6.6.6, align 4
  br label %for.inc.6.6.6

for.inc.6.6.6:                                    ; preds = %for.inc.5.6.6
  %arrayidx11.7.6.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.7.6.6 = getelementptr inbounds [8 x i32]* %arrayidx11.7.6.6, i32 0, i64 7
  %1317 = load i32* %arrayidx12.7.6.6, align 4
  %arrayidx15.7.6.6 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6.6 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6.6, i32 0, i64 6
  %1318 = load i32* %arrayidx16.7.6.6, align 4
  %mul.7.6.6 = mul nsw i32 %1317, %1318
  %arrayidx19.7.6.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.7.6.6 = getelementptr inbounds [8 x i32]* %arrayidx19.7.6.6, i32 0, i64 6
  %1319 = load i32* %arrayidx20.7.6.6, align 4
  %add.7.6.6 = add nsw i32 %1319, %mul.7.6.6
  store i32 %add.7.6.6, i32* %arrayidx20.7.6.6, align 4
  br label %for.inc.7.6.6

for.inc.7.6.6:                                    ; preds = %for.inc.6.6.6
  br label %for.inc21.6.6

for.inc21.6.6:                                    ; preds = %for.inc.7.6.6
  %arrayidx.7.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx5.7.6 = getelementptr inbounds [8 x i32]* %arrayidx.7.6, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.6, align 4
  br label %for.body8.7.6

for.body8.7.6:                                    ; preds = %for.inc21.6.6
  %arrayidx11.764.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.765.6 = getelementptr inbounds [8 x i32]* %arrayidx11.764.6, i32 0, i64 0
  %1320 = load i32* %arrayidx12.765.6, align 4
  %arrayidx16.766.6 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 7
  %1321 = load i32* %arrayidx16.766.6, align 4
  %mul.767.6 = mul nsw i32 %1320, %1321
  %arrayidx19.769.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.770.6 = getelementptr inbounds [8 x i32]* %arrayidx19.769.6, i32 0, i64 7
  %1322 = load i32* %arrayidx20.770.6, align 4
  %add.771.6 = add nsw i32 %1322, %mul.767.6
  store i32 %add.771.6, i32* %arrayidx20.770.6, align 4
  br label %for.inc.772.6

for.inc.772.6:                                    ; preds = %for.body8.7.6
  %arrayidx11.1.7.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.1.7.6 = getelementptr inbounds [8 x i32]* %arrayidx11.1.7.6, i32 0, i64 1
  %1323 = load i32* %arrayidx12.1.7.6, align 4
  %arrayidx15.1.7.6 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7.6 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7.6, i32 0, i64 7
  %1324 = load i32* %arrayidx16.1.7.6, align 4
  %mul.1.7.6 = mul nsw i32 %1323, %1324
  %arrayidx19.1.7.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.1.7.6 = getelementptr inbounds [8 x i32]* %arrayidx19.1.7.6, i32 0, i64 7
  %1325 = load i32* %arrayidx20.1.7.6, align 4
  %add.1.7.6 = add nsw i32 %1325, %mul.1.7.6
  store i32 %add.1.7.6, i32* %arrayidx20.1.7.6, align 4
  br label %for.inc.1.7.6

for.inc.1.7.6:                                    ; preds = %for.inc.772.6
  %arrayidx11.2.7.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.2.7.6 = getelementptr inbounds [8 x i32]* %arrayidx11.2.7.6, i32 0, i64 2
  %1326 = load i32* %arrayidx12.2.7.6, align 4
  %arrayidx15.2.7.6 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7.6 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7.6, i32 0, i64 7
  %1327 = load i32* %arrayidx16.2.7.6, align 4
  %mul.2.7.6 = mul nsw i32 %1326, %1327
  %arrayidx19.2.7.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.2.7.6 = getelementptr inbounds [8 x i32]* %arrayidx19.2.7.6, i32 0, i64 7
  %1328 = load i32* %arrayidx20.2.7.6, align 4
  %add.2.7.6 = add nsw i32 %1328, %mul.2.7.6
  store i32 %add.2.7.6, i32* %arrayidx20.2.7.6, align 4
  br label %for.inc.2.7.6

for.inc.2.7.6:                                    ; preds = %for.inc.1.7.6
  %arrayidx11.3.7.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.3.7.6 = getelementptr inbounds [8 x i32]* %arrayidx11.3.7.6, i32 0, i64 3
  %1329 = load i32* %arrayidx12.3.7.6, align 4
  %arrayidx15.3.7.6 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7.6 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7.6, i32 0, i64 7
  %1330 = load i32* %arrayidx16.3.7.6, align 4
  %mul.3.7.6 = mul nsw i32 %1329, %1330
  %arrayidx19.3.7.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.3.7.6 = getelementptr inbounds [8 x i32]* %arrayidx19.3.7.6, i32 0, i64 7
  %1331 = load i32* %arrayidx20.3.7.6, align 4
  %add.3.7.6 = add nsw i32 %1331, %mul.3.7.6
  store i32 %add.3.7.6, i32* %arrayidx20.3.7.6, align 4
  br label %for.inc.3.7.6

for.inc.3.7.6:                                    ; preds = %for.inc.2.7.6
  %arrayidx11.4.7.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.4.7.6 = getelementptr inbounds [8 x i32]* %arrayidx11.4.7.6, i32 0, i64 4
  %1332 = load i32* %arrayidx12.4.7.6, align 4
  %arrayidx15.4.7.6 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7.6 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7.6, i32 0, i64 7
  %1333 = load i32* %arrayidx16.4.7.6, align 4
  %mul.4.7.6 = mul nsw i32 %1332, %1333
  %arrayidx19.4.7.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.4.7.6 = getelementptr inbounds [8 x i32]* %arrayidx19.4.7.6, i32 0, i64 7
  %1334 = load i32* %arrayidx20.4.7.6, align 4
  %add.4.7.6 = add nsw i32 %1334, %mul.4.7.6
  store i32 %add.4.7.6, i32* %arrayidx20.4.7.6, align 4
  br label %for.inc.4.7.6

for.inc.4.7.6:                                    ; preds = %for.inc.3.7.6
  %arrayidx11.5.7.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.5.7.6 = getelementptr inbounds [8 x i32]* %arrayidx11.5.7.6, i32 0, i64 5
  %1335 = load i32* %arrayidx12.5.7.6, align 4
  %arrayidx15.5.7.6 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7.6 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7.6, i32 0, i64 7
  %1336 = load i32* %arrayidx16.5.7.6, align 4
  %mul.5.7.6 = mul nsw i32 %1335, %1336
  %arrayidx19.5.7.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.5.7.6 = getelementptr inbounds [8 x i32]* %arrayidx19.5.7.6, i32 0, i64 7
  %1337 = load i32* %arrayidx20.5.7.6, align 4
  %add.5.7.6 = add nsw i32 %1337, %mul.5.7.6
  store i32 %add.5.7.6, i32* %arrayidx20.5.7.6, align 4
  br label %for.inc.5.7.6

for.inc.5.7.6:                                    ; preds = %for.inc.4.7.6
  %arrayidx11.6.7.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.6.7.6 = getelementptr inbounds [8 x i32]* %arrayidx11.6.7.6, i32 0, i64 6
  %1338 = load i32* %arrayidx12.6.7.6, align 4
  %arrayidx15.6.7.6 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7.6 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7.6, i32 0, i64 7
  %1339 = load i32* %arrayidx16.6.7.6, align 4
  %mul.6.7.6 = mul nsw i32 %1338, %1339
  %arrayidx19.6.7.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.6.7.6 = getelementptr inbounds [8 x i32]* %arrayidx19.6.7.6, i32 0, i64 7
  %1340 = load i32* %arrayidx20.6.7.6, align 4
  %add.6.7.6 = add nsw i32 %1340, %mul.6.7.6
  store i32 %add.6.7.6, i32* %arrayidx20.6.7.6, align 4
  br label %for.inc.6.7.6

for.inc.6.7.6:                                    ; preds = %for.inc.5.7.6
  %arrayidx11.7.7.6 = getelementptr inbounds [8 x i32]* %a, i64 6
  %arrayidx12.7.7.6 = getelementptr inbounds [8 x i32]* %arrayidx11.7.7.6, i32 0, i64 7
  %1341 = load i32* %arrayidx12.7.7.6, align 4
  %arrayidx15.7.7.6 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7.6 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7.6, i32 0, i64 7
  %1342 = load i32* %arrayidx16.7.7.6, align 4
  %mul.7.7.6 = mul nsw i32 %1341, %1342
  %arrayidx19.7.7.6 = getelementptr inbounds [8 x i32]* %c, i64 6
  %arrayidx20.7.7.6 = getelementptr inbounds [8 x i32]* %arrayidx19.7.7.6, i32 0, i64 7
  %1343 = load i32* %arrayidx20.7.7.6, align 4
  %add.7.7.6 = add nsw i32 %1343, %mul.7.7.6
  store i32 %add.7.7.6, i32* %arrayidx20.7.7.6, align 4
  br label %for.inc.7.7.6

for.inc.7.7.6:                                    ; preds = %for.inc.6.7.6
  br label %for.inc21.7.6

for.inc21.7.6:                                    ; preds = %for.inc.7.7.6
  br label %for.inc24.6

for.inc24.6:                                      ; preds = %for.inc21.7.6
  br label %for.body3.7

for.body3.7:                                      ; preds = %for.inc24.6
  %arrayidx.7524 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx5.7525 = getelementptr inbounds [8 x i32]* %arrayidx.7524, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.7525, align 4
  br label %for.body8.7533

for.body8.7533:                                   ; preds = %for.body3.7
  %arrayidx11.7526 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7527 = getelementptr inbounds [8 x i32]* %arrayidx11.7526, i32 0, i64 0
  %1344 = load i32* %arrayidx12.7527, align 4
  %arrayidx16.7528 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 0
  %1345 = load i32* %arrayidx16.7528, align 4
  %mul.7529 = mul nsw i32 %1344, %1345
  %arrayidx19.7530 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7531 = getelementptr inbounds [8 x i32]* %arrayidx19.7530, i32 0, i64 0
  %1346 = load i32* %arrayidx20.7531, align 4
  %add.7532 = add nsw i32 %1346, %mul.7529
  store i32 %add.7532, i32* %arrayidx20.7531, align 4
  br label %for.inc.7542

for.inc.7542:                                     ; preds = %for.body8.7533
  %arrayidx11.1.7534 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.1.7535 = getelementptr inbounds [8 x i32]* %arrayidx11.1.7534, i32 0, i64 1
  %1347 = load i32* %arrayidx12.1.7535, align 4
  %arrayidx15.1.7536 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7537 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7536, i32 0, i64 0
  %1348 = load i32* %arrayidx16.1.7537, align 4
  %mul.1.7538 = mul nsw i32 %1347, %1348
  %arrayidx19.1.7539 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.1.7540 = getelementptr inbounds [8 x i32]* %arrayidx19.1.7539, i32 0, i64 0
  %1349 = load i32* %arrayidx20.1.7540, align 4
  %add.1.7541 = add nsw i32 %1349, %mul.1.7538
  store i32 %add.1.7541, i32* %arrayidx20.1.7540, align 4
  br label %for.inc.1.7551

for.inc.1.7551:                                   ; preds = %for.inc.7542
  %arrayidx11.2.7543 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.2.7544 = getelementptr inbounds [8 x i32]* %arrayidx11.2.7543, i32 0, i64 2
  %1350 = load i32* %arrayidx12.2.7544, align 4
  %arrayidx15.2.7545 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7546 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7545, i32 0, i64 0
  %1351 = load i32* %arrayidx16.2.7546, align 4
  %mul.2.7547 = mul nsw i32 %1350, %1351
  %arrayidx19.2.7548 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.2.7549 = getelementptr inbounds [8 x i32]* %arrayidx19.2.7548, i32 0, i64 0
  %1352 = load i32* %arrayidx20.2.7549, align 4
  %add.2.7550 = add nsw i32 %1352, %mul.2.7547
  store i32 %add.2.7550, i32* %arrayidx20.2.7549, align 4
  br label %for.inc.2.7560

for.inc.2.7560:                                   ; preds = %for.inc.1.7551
  %arrayidx11.3.7552 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.3.7553 = getelementptr inbounds [8 x i32]* %arrayidx11.3.7552, i32 0, i64 3
  %1353 = load i32* %arrayidx12.3.7553, align 4
  %arrayidx15.3.7554 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7555 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7554, i32 0, i64 0
  %1354 = load i32* %arrayidx16.3.7555, align 4
  %mul.3.7556 = mul nsw i32 %1353, %1354
  %arrayidx19.3.7557 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.3.7558 = getelementptr inbounds [8 x i32]* %arrayidx19.3.7557, i32 0, i64 0
  %1355 = load i32* %arrayidx20.3.7558, align 4
  %add.3.7559 = add nsw i32 %1355, %mul.3.7556
  store i32 %add.3.7559, i32* %arrayidx20.3.7558, align 4
  br label %for.inc.3.7569

for.inc.3.7569:                                   ; preds = %for.inc.2.7560
  %arrayidx11.4.7561 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.4.7562 = getelementptr inbounds [8 x i32]* %arrayidx11.4.7561, i32 0, i64 4
  %1356 = load i32* %arrayidx12.4.7562, align 4
  %arrayidx15.4.7563 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7564 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7563, i32 0, i64 0
  %1357 = load i32* %arrayidx16.4.7564, align 4
  %mul.4.7565 = mul nsw i32 %1356, %1357
  %arrayidx19.4.7566 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.4.7567 = getelementptr inbounds [8 x i32]* %arrayidx19.4.7566, i32 0, i64 0
  %1358 = load i32* %arrayidx20.4.7567, align 4
  %add.4.7568 = add nsw i32 %1358, %mul.4.7565
  store i32 %add.4.7568, i32* %arrayidx20.4.7567, align 4
  br label %for.inc.4.7578

for.inc.4.7578:                                   ; preds = %for.inc.3.7569
  %arrayidx11.5.7570 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.5.7571 = getelementptr inbounds [8 x i32]* %arrayidx11.5.7570, i32 0, i64 5
  %1359 = load i32* %arrayidx12.5.7571, align 4
  %arrayidx15.5.7572 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7573 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7572, i32 0, i64 0
  %1360 = load i32* %arrayidx16.5.7573, align 4
  %mul.5.7574 = mul nsw i32 %1359, %1360
  %arrayidx19.5.7575 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.5.7576 = getelementptr inbounds [8 x i32]* %arrayidx19.5.7575, i32 0, i64 0
  %1361 = load i32* %arrayidx20.5.7576, align 4
  %add.5.7577 = add nsw i32 %1361, %mul.5.7574
  store i32 %add.5.7577, i32* %arrayidx20.5.7576, align 4
  br label %for.inc.5.7587

for.inc.5.7587:                                   ; preds = %for.inc.4.7578
  %arrayidx11.6.7579 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.6.7580 = getelementptr inbounds [8 x i32]* %arrayidx11.6.7579, i32 0, i64 6
  %1362 = load i32* %arrayidx12.6.7580, align 4
  %arrayidx15.6.7581 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7582 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7581, i32 0, i64 0
  %1363 = load i32* %arrayidx16.6.7582, align 4
  %mul.6.7583 = mul nsw i32 %1362, %1363
  %arrayidx19.6.7584 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.6.7585 = getelementptr inbounds [8 x i32]* %arrayidx19.6.7584, i32 0, i64 0
  %1364 = load i32* %arrayidx20.6.7585, align 4
  %add.6.7586 = add nsw i32 %1364, %mul.6.7583
  store i32 %add.6.7586, i32* %arrayidx20.6.7585, align 4
  br label %for.inc.6.7596

for.inc.6.7596:                                   ; preds = %for.inc.5.7587
  %arrayidx11.7.7588 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7.7589 = getelementptr inbounds [8 x i32]* %arrayidx11.7.7588, i32 0, i64 7
  %1365 = load i32* %arrayidx12.7.7589, align 4
  %arrayidx15.7.7590 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7591 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7590, i32 0, i64 0
  %1366 = load i32* %arrayidx16.7.7591, align 4
  %mul.7.7592 = mul nsw i32 %1365, %1366
  %arrayidx19.7.7593 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7.7594 = getelementptr inbounds [8 x i32]* %arrayidx19.7.7593, i32 0, i64 0
  %1367 = load i32* %arrayidx20.7.7594, align 4
  %add.7.7595 = add nsw i32 %1367, %mul.7.7592
  store i32 %add.7.7595, i32* %arrayidx20.7.7594, align 4
  br label %for.inc.7.7597

for.inc.7.7597:                                   ; preds = %for.inc.6.7596
  br label %for.inc21.7598

for.inc21.7598:                                   ; preds = %for.inc.7.7597
  %arrayidx.1.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx5.1.7 = getelementptr inbounds [8 x i32]* %arrayidx.1.7, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.7, align 4
  br label %for.body8.1.7

for.body8.1.7:                                    ; preds = %for.inc21.7598
  %arrayidx11.14.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.15.7 = getelementptr inbounds [8 x i32]* %arrayidx11.14.7, i32 0, i64 0
  %1368 = load i32* %arrayidx12.15.7, align 4
  %arrayidx16.16.7 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 1
  %1369 = load i32* %arrayidx16.16.7, align 4
  %mul.17.7 = mul nsw i32 %1368, %1369
  %arrayidx19.19.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.110.7 = getelementptr inbounds [8 x i32]* %arrayidx19.19.7, i32 0, i64 1
  %1370 = load i32* %arrayidx20.110.7, align 4
  %add.111.7 = add nsw i32 %1370, %mul.17.7
  store i32 %add.111.7, i32* %arrayidx20.110.7, align 4
  br label %for.inc.112.7

for.inc.112.7:                                    ; preds = %for.body8.1.7
  %arrayidx11.1.1.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.1.1.7 = getelementptr inbounds [8 x i32]* %arrayidx11.1.1.7, i32 0, i64 1
  %1371 = load i32* %arrayidx12.1.1.7, align 4
  %arrayidx15.1.1.7 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.1.7 = getelementptr inbounds [8 x i32]* %arrayidx15.1.1.7, i32 0, i64 1
  %1372 = load i32* %arrayidx16.1.1.7, align 4
  %mul.1.1.7 = mul nsw i32 %1371, %1372
  %arrayidx19.1.1.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.1.1.7 = getelementptr inbounds [8 x i32]* %arrayidx19.1.1.7, i32 0, i64 1
  %1373 = load i32* %arrayidx20.1.1.7, align 4
  %add.1.1.7 = add nsw i32 %1373, %mul.1.1.7
  store i32 %add.1.1.7, i32* %arrayidx20.1.1.7, align 4
  br label %for.inc.1.1.7

for.inc.1.1.7:                                    ; preds = %for.inc.112.7
  %arrayidx11.2.1.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.2.1.7 = getelementptr inbounds [8 x i32]* %arrayidx11.2.1.7, i32 0, i64 2
  %1374 = load i32* %arrayidx12.2.1.7, align 4
  %arrayidx15.2.1.7 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.1.7 = getelementptr inbounds [8 x i32]* %arrayidx15.2.1.7, i32 0, i64 1
  %1375 = load i32* %arrayidx16.2.1.7, align 4
  %mul.2.1.7 = mul nsw i32 %1374, %1375
  %arrayidx19.2.1.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.2.1.7 = getelementptr inbounds [8 x i32]* %arrayidx19.2.1.7, i32 0, i64 1
  %1376 = load i32* %arrayidx20.2.1.7, align 4
  %add.2.1.7 = add nsw i32 %1376, %mul.2.1.7
  store i32 %add.2.1.7, i32* %arrayidx20.2.1.7, align 4
  br label %for.inc.2.1.7

for.inc.2.1.7:                                    ; preds = %for.inc.1.1.7
  %arrayidx11.3.1.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.3.1.7 = getelementptr inbounds [8 x i32]* %arrayidx11.3.1.7, i32 0, i64 3
  %1377 = load i32* %arrayidx12.3.1.7, align 4
  %arrayidx15.3.1.7 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.1.7 = getelementptr inbounds [8 x i32]* %arrayidx15.3.1.7, i32 0, i64 1
  %1378 = load i32* %arrayidx16.3.1.7, align 4
  %mul.3.1.7 = mul nsw i32 %1377, %1378
  %arrayidx19.3.1.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.3.1.7 = getelementptr inbounds [8 x i32]* %arrayidx19.3.1.7, i32 0, i64 1
  %1379 = load i32* %arrayidx20.3.1.7, align 4
  %add.3.1.7 = add nsw i32 %1379, %mul.3.1.7
  store i32 %add.3.1.7, i32* %arrayidx20.3.1.7, align 4
  br label %for.inc.3.1.7

for.inc.3.1.7:                                    ; preds = %for.inc.2.1.7
  %arrayidx11.4.1.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.4.1.7 = getelementptr inbounds [8 x i32]* %arrayidx11.4.1.7, i32 0, i64 4
  %1380 = load i32* %arrayidx12.4.1.7, align 4
  %arrayidx15.4.1.7 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.1.7 = getelementptr inbounds [8 x i32]* %arrayidx15.4.1.7, i32 0, i64 1
  %1381 = load i32* %arrayidx16.4.1.7, align 4
  %mul.4.1.7 = mul nsw i32 %1380, %1381
  %arrayidx19.4.1.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.4.1.7 = getelementptr inbounds [8 x i32]* %arrayidx19.4.1.7, i32 0, i64 1
  %1382 = load i32* %arrayidx20.4.1.7, align 4
  %add.4.1.7 = add nsw i32 %1382, %mul.4.1.7
  store i32 %add.4.1.7, i32* %arrayidx20.4.1.7, align 4
  br label %for.inc.4.1.7

for.inc.4.1.7:                                    ; preds = %for.inc.3.1.7
  %arrayidx11.5.1.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.5.1.7 = getelementptr inbounds [8 x i32]* %arrayidx11.5.1.7, i32 0, i64 5
  %1383 = load i32* %arrayidx12.5.1.7, align 4
  %arrayidx15.5.1.7 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.1.7 = getelementptr inbounds [8 x i32]* %arrayidx15.5.1.7, i32 0, i64 1
  %1384 = load i32* %arrayidx16.5.1.7, align 4
  %mul.5.1.7 = mul nsw i32 %1383, %1384
  %arrayidx19.5.1.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.5.1.7 = getelementptr inbounds [8 x i32]* %arrayidx19.5.1.7, i32 0, i64 1
  %1385 = load i32* %arrayidx20.5.1.7, align 4
  %add.5.1.7 = add nsw i32 %1385, %mul.5.1.7
  store i32 %add.5.1.7, i32* %arrayidx20.5.1.7, align 4
  br label %for.inc.5.1.7

for.inc.5.1.7:                                    ; preds = %for.inc.4.1.7
  %arrayidx11.6.1.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.6.1.7 = getelementptr inbounds [8 x i32]* %arrayidx11.6.1.7, i32 0, i64 6
  %1386 = load i32* %arrayidx12.6.1.7, align 4
  %arrayidx15.6.1.7 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.1.7 = getelementptr inbounds [8 x i32]* %arrayidx15.6.1.7, i32 0, i64 1
  %1387 = load i32* %arrayidx16.6.1.7, align 4
  %mul.6.1.7 = mul nsw i32 %1386, %1387
  %arrayidx19.6.1.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.6.1.7 = getelementptr inbounds [8 x i32]* %arrayidx19.6.1.7, i32 0, i64 1
  %1388 = load i32* %arrayidx20.6.1.7, align 4
  %add.6.1.7 = add nsw i32 %1388, %mul.6.1.7
  store i32 %add.6.1.7, i32* %arrayidx20.6.1.7, align 4
  br label %for.inc.6.1.7

for.inc.6.1.7:                                    ; preds = %for.inc.5.1.7
  %arrayidx11.7.1.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7.1.7 = getelementptr inbounds [8 x i32]* %arrayidx11.7.1.7, i32 0, i64 7
  %1389 = load i32* %arrayidx12.7.1.7, align 4
  %arrayidx15.7.1.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.1.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7.1.7, i32 0, i64 1
  %1390 = load i32* %arrayidx16.7.1.7, align 4
  %mul.7.1.7 = mul nsw i32 %1389, %1390
  %arrayidx19.7.1.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7.1.7 = getelementptr inbounds [8 x i32]* %arrayidx19.7.1.7, i32 0, i64 1
  %1391 = load i32* %arrayidx20.7.1.7, align 4
  %add.7.1.7 = add nsw i32 %1391, %mul.7.1.7
  store i32 %add.7.1.7, i32* %arrayidx20.7.1.7, align 4
  br label %for.inc.7.1.7

for.inc.7.1.7:                                    ; preds = %for.inc.6.1.7
  br label %for.inc21.1.7

for.inc21.1.7:                                    ; preds = %for.inc.7.1.7
  %arrayidx.2.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx5.2.7 = getelementptr inbounds [8 x i32]* %arrayidx.2.7, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.7, align 4
  br label %for.body8.2.7

for.body8.2.7:                                    ; preds = %for.inc21.1.7
  %arrayidx11.214.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.215.7 = getelementptr inbounds [8 x i32]* %arrayidx11.214.7, i32 0, i64 0
  %1392 = load i32* %arrayidx12.215.7, align 4
  %arrayidx16.216.7 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 2
  %1393 = load i32* %arrayidx16.216.7, align 4
  %mul.217.7 = mul nsw i32 %1392, %1393
  %arrayidx19.219.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.220.7 = getelementptr inbounds [8 x i32]* %arrayidx19.219.7, i32 0, i64 2
  %1394 = load i32* %arrayidx20.220.7, align 4
  %add.221.7 = add nsw i32 %1394, %mul.217.7
  store i32 %add.221.7, i32* %arrayidx20.220.7, align 4
  br label %for.inc.222.7

for.inc.222.7:                                    ; preds = %for.body8.2.7
  %arrayidx11.1.2.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.1.2.7 = getelementptr inbounds [8 x i32]* %arrayidx11.1.2.7, i32 0, i64 1
  %1395 = load i32* %arrayidx12.1.2.7, align 4
  %arrayidx15.1.2.7 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.2.7 = getelementptr inbounds [8 x i32]* %arrayidx15.1.2.7, i32 0, i64 2
  %1396 = load i32* %arrayidx16.1.2.7, align 4
  %mul.1.2.7 = mul nsw i32 %1395, %1396
  %arrayidx19.1.2.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.1.2.7 = getelementptr inbounds [8 x i32]* %arrayidx19.1.2.7, i32 0, i64 2
  %1397 = load i32* %arrayidx20.1.2.7, align 4
  %add.1.2.7 = add nsw i32 %1397, %mul.1.2.7
  store i32 %add.1.2.7, i32* %arrayidx20.1.2.7, align 4
  br label %for.inc.1.2.7

for.inc.1.2.7:                                    ; preds = %for.inc.222.7
  %arrayidx11.2.2.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.2.2.7 = getelementptr inbounds [8 x i32]* %arrayidx11.2.2.7, i32 0, i64 2
  %1398 = load i32* %arrayidx12.2.2.7, align 4
  %arrayidx15.2.2.7 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.2.7 = getelementptr inbounds [8 x i32]* %arrayidx15.2.2.7, i32 0, i64 2
  %1399 = load i32* %arrayidx16.2.2.7, align 4
  %mul.2.2.7 = mul nsw i32 %1398, %1399
  %arrayidx19.2.2.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.2.2.7 = getelementptr inbounds [8 x i32]* %arrayidx19.2.2.7, i32 0, i64 2
  %1400 = load i32* %arrayidx20.2.2.7, align 4
  %add.2.2.7 = add nsw i32 %1400, %mul.2.2.7
  store i32 %add.2.2.7, i32* %arrayidx20.2.2.7, align 4
  br label %for.inc.2.2.7

for.inc.2.2.7:                                    ; preds = %for.inc.1.2.7
  %arrayidx11.3.2.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.3.2.7 = getelementptr inbounds [8 x i32]* %arrayidx11.3.2.7, i32 0, i64 3
  %1401 = load i32* %arrayidx12.3.2.7, align 4
  %arrayidx15.3.2.7 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.2.7 = getelementptr inbounds [8 x i32]* %arrayidx15.3.2.7, i32 0, i64 2
  %1402 = load i32* %arrayidx16.3.2.7, align 4
  %mul.3.2.7 = mul nsw i32 %1401, %1402
  %arrayidx19.3.2.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.3.2.7 = getelementptr inbounds [8 x i32]* %arrayidx19.3.2.7, i32 0, i64 2
  %1403 = load i32* %arrayidx20.3.2.7, align 4
  %add.3.2.7 = add nsw i32 %1403, %mul.3.2.7
  store i32 %add.3.2.7, i32* %arrayidx20.3.2.7, align 4
  br label %for.inc.3.2.7

for.inc.3.2.7:                                    ; preds = %for.inc.2.2.7
  %arrayidx11.4.2.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.4.2.7 = getelementptr inbounds [8 x i32]* %arrayidx11.4.2.7, i32 0, i64 4
  %1404 = load i32* %arrayidx12.4.2.7, align 4
  %arrayidx15.4.2.7 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.2.7 = getelementptr inbounds [8 x i32]* %arrayidx15.4.2.7, i32 0, i64 2
  %1405 = load i32* %arrayidx16.4.2.7, align 4
  %mul.4.2.7 = mul nsw i32 %1404, %1405
  %arrayidx19.4.2.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.4.2.7 = getelementptr inbounds [8 x i32]* %arrayidx19.4.2.7, i32 0, i64 2
  %1406 = load i32* %arrayidx20.4.2.7, align 4
  %add.4.2.7 = add nsw i32 %1406, %mul.4.2.7
  store i32 %add.4.2.7, i32* %arrayidx20.4.2.7, align 4
  br label %for.inc.4.2.7

for.inc.4.2.7:                                    ; preds = %for.inc.3.2.7
  %arrayidx11.5.2.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.5.2.7 = getelementptr inbounds [8 x i32]* %arrayidx11.5.2.7, i32 0, i64 5
  %1407 = load i32* %arrayidx12.5.2.7, align 4
  %arrayidx15.5.2.7 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.2.7 = getelementptr inbounds [8 x i32]* %arrayidx15.5.2.7, i32 0, i64 2
  %1408 = load i32* %arrayidx16.5.2.7, align 4
  %mul.5.2.7 = mul nsw i32 %1407, %1408
  %arrayidx19.5.2.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.5.2.7 = getelementptr inbounds [8 x i32]* %arrayidx19.5.2.7, i32 0, i64 2
  %1409 = load i32* %arrayidx20.5.2.7, align 4
  %add.5.2.7 = add nsw i32 %1409, %mul.5.2.7
  store i32 %add.5.2.7, i32* %arrayidx20.5.2.7, align 4
  br label %for.inc.5.2.7

for.inc.5.2.7:                                    ; preds = %for.inc.4.2.7
  %arrayidx11.6.2.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.6.2.7 = getelementptr inbounds [8 x i32]* %arrayidx11.6.2.7, i32 0, i64 6
  %1410 = load i32* %arrayidx12.6.2.7, align 4
  %arrayidx15.6.2.7 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.2.7 = getelementptr inbounds [8 x i32]* %arrayidx15.6.2.7, i32 0, i64 2
  %1411 = load i32* %arrayidx16.6.2.7, align 4
  %mul.6.2.7 = mul nsw i32 %1410, %1411
  %arrayidx19.6.2.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.6.2.7 = getelementptr inbounds [8 x i32]* %arrayidx19.6.2.7, i32 0, i64 2
  %1412 = load i32* %arrayidx20.6.2.7, align 4
  %add.6.2.7 = add nsw i32 %1412, %mul.6.2.7
  store i32 %add.6.2.7, i32* %arrayidx20.6.2.7, align 4
  br label %for.inc.6.2.7

for.inc.6.2.7:                                    ; preds = %for.inc.5.2.7
  %arrayidx11.7.2.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7.2.7 = getelementptr inbounds [8 x i32]* %arrayidx11.7.2.7, i32 0, i64 7
  %1413 = load i32* %arrayidx12.7.2.7, align 4
  %arrayidx15.7.2.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.2.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7.2.7, i32 0, i64 2
  %1414 = load i32* %arrayidx16.7.2.7, align 4
  %mul.7.2.7 = mul nsw i32 %1413, %1414
  %arrayidx19.7.2.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7.2.7 = getelementptr inbounds [8 x i32]* %arrayidx19.7.2.7, i32 0, i64 2
  %1415 = load i32* %arrayidx20.7.2.7, align 4
  %add.7.2.7 = add nsw i32 %1415, %mul.7.2.7
  store i32 %add.7.2.7, i32* %arrayidx20.7.2.7, align 4
  br label %for.inc.7.2.7

for.inc.7.2.7:                                    ; preds = %for.inc.6.2.7
  br label %for.inc21.2.7

for.inc21.2.7:                                    ; preds = %for.inc.7.2.7
  %arrayidx.3.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx5.3.7 = getelementptr inbounds [8 x i32]* %arrayidx.3.7, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.7, align 4
  br label %for.body8.3.7

for.body8.3.7:                                    ; preds = %for.inc21.2.7
  %arrayidx11.324.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.325.7 = getelementptr inbounds [8 x i32]* %arrayidx11.324.7, i32 0, i64 0
  %1416 = load i32* %arrayidx12.325.7, align 4
  %arrayidx16.326.7 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 3
  %1417 = load i32* %arrayidx16.326.7, align 4
  %mul.327.7 = mul nsw i32 %1416, %1417
  %arrayidx19.329.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.330.7 = getelementptr inbounds [8 x i32]* %arrayidx19.329.7, i32 0, i64 3
  %1418 = load i32* %arrayidx20.330.7, align 4
  %add.331.7 = add nsw i32 %1418, %mul.327.7
  store i32 %add.331.7, i32* %arrayidx20.330.7, align 4
  br label %for.inc.332.7

for.inc.332.7:                                    ; preds = %for.body8.3.7
  %arrayidx11.1.3.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.1.3.7 = getelementptr inbounds [8 x i32]* %arrayidx11.1.3.7, i32 0, i64 1
  %1419 = load i32* %arrayidx12.1.3.7, align 4
  %arrayidx15.1.3.7 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.3.7 = getelementptr inbounds [8 x i32]* %arrayidx15.1.3.7, i32 0, i64 3
  %1420 = load i32* %arrayidx16.1.3.7, align 4
  %mul.1.3.7 = mul nsw i32 %1419, %1420
  %arrayidx19.1.3.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.1.3.7 = getelementptr inbounds [8 x i32]* %arrayidx19.1.3.7, i32 0, i64 3
  %1421 = load i32* %arrayidx20.1.3.7, align 4
  %add.1.3.7 = add nsw i32 %1421, %mul.1.3.7
  store i32 %add.1.3.7, i32* %arrayidx20.1.3.7, align 4
  br label %for.inc.1.3.7

for.inc.1.3.7:                                    ; preds = %for.inc.332.7
  %arrayidx11.2.3.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.2.3.7 = getelementptr inbounds [8 x i32]* %arrayidx11.2.3.7, i32 0, i64 2
  %1422 = load i32* %arrayidx12.2.3.7, align 4
  %arrayidx15.2.3.7 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.3.7 = getelementptr inbounds [8 x i32]* %arrayidx15.2.3.7, i32 0, i64 3
  %1423 = load i32* %arrayidx16.2.3.7, align 4
  %mul.2.3.7 = mul nsw i32 %1422, %1423
  %arrayidx19.2.3.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.2.3.7 = getelementptr inbounds [8 x i32]* %arrayidx19.2.3.7, i32 0, i64 3
  %1424 = load i32* %arrayidx20.2.3.7, align 4
  %add.2.3.7 = add nsw i32 %1424, %mul.2.3.7
  store i32 %add.2.3.7, i32* %arrayidx20.2.3.7, align 4
  br label %for.inc.2.3.7

for.inc.2.3.7:                                    ; preds = %for.inc.1.3.7
  %arrayidx11.3.3.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.3.3.7 = getelementptr inbounds [8 x i32]* %arrayidx11.3.3.7, i32 0, i64 3
  %1425 = load i32* %arrayidx12.3.3.7, align 4
  %arrayidx15.3.3.7 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.3.7 = getelementptr inbounds [8 x i32]* %arrayidx15.3.3.7, i32 0, i64 3
  %1426 = load i32* %arrayidx16.3.3.7, align 4
  %mul.3.3.7 = mul nsw i32 %1425, %1426
  %arrayidx19.3.3.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.3.3.7 = getelementptr inbounds [8 x i32]* %arrayidx19.3.3.7, i32 0, i64 3
  %1427 = load i32* %arrayidx20.3.3.7, align 4
  %add.3.3.7 = add nsw i32 %1427, %mul.3.3.7
  store i32 %add.3.3.7, i32* %arrayidx20.3.3.7, align 4
  br label %for.inc.3.3.7

for.inc.3.3.7:                                    ; preds = %for.inc.2.3.7
  %arrayidx11.4.3.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.4.3.7 = getelementptr inbounds [8 x i32]* %arrayidx11.4.3.7, i32 0, i64 4
  %1428 = load i32* %arrayidx12.4.3.7, align 4
  %arrayidx15.4.3.7 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.3.7 = getelementptr inbounds [8 x i32]* %arrayidx15.4.3.7, i32 0, i64 3
  %1429 = load i32* %arrayidx16.4.3.7, align 4
  %mul.4.3.7 = mul nsw i32 %1428, %1429
  %arrayidx19.4.3.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.4.3.7 = getelementptr inbounds [8 x i32]* %arrayidx19.4.3.7, i32 0, i64 3
  %1430 = load i32* %arrayidx20.4.3.7, align 4
  %add.4.3.7 = add nsw i32 %1430, %mul.4.3.7
  store i32 %add.4.3.7, i32* %arrayidx20.4.3.7, align 4
  br label %for.inc.4.3.7

for.inc.4.3.7:                                    ; preds = %for.inc.3.3.7
  %arrayidx11.5.3.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.5.3.7 = getelementptr inbounds [8 x i32]* %arrayidx11.5.3.7, i32 0, i64 5
  %1431 = load i32* %arrayidx12.5.3.7, align 4
  %arrayidx15.5.3.7 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.3.7 = getelementptr inbounds [8 x i32]* %arrayidx15.5.3.7, i32 0, i64 3
  %1432 = load i32* %arrayidx16.5.3.7, align 4
  %mul.5.3.7 = mul nsw i32 %1431, %1432
  %arrayidx19.5.3.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.5.3.7 = getelementptr inbounds [8 x i32]* %arrayidx19.5.3.7, i32 0, i64 3
  %1433 = load i32* %arrayidx20.5.3.7, align 4
  %add.5.3.7 = add nsw i32 %1433, %mul.5.3.7
  store i32 %add.5.3.7, i32* %arrayidx20.5.3.7, align 4
  br label %for.inc.5.3.7

for.inc.5.3.7:                                    ; preds = %for.inc.4.3.7
  %arrayidx11.6.3.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.6.3.7 = getelementptr inbounds [8 x i32]* %arrayidx11.6.3.7, i32 0, i64 6
  %1434 = load i32* %arrayidx12.6.3.7, align 4
  %arrayidx15.6.3.7 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.3.7 = getelementptr inbounds [8 x i32]* %arrayidx15.6.3.7, i32 0, i64 3
  %1435 = load i32* %arrayidx16.6.3.7, align 4
  %mul.6.3.7 = mul nsw i32 %1434, %1435
  %arrayidx19.6.3.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.6.3.7 = getelementptr inbounds [8 x i32]* %arrayidx19.6.3.7, i32 0, i64 3
  %1436 = load i32* %arrayidx20.6.3.7, align 4
  %add.6.3.7 = add nsw i32 %1436, %mul.6.3.7
  store i32 %add.6.3.7, i32* %arrayidx20.6.3.7, align 4
  br label %for.inc.6.3.7

for.inc.6.3.7:                                    ; preds = %for.inc.5.3.7
  %arrayidx11.7.3.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7.3.7 = getelementptr inbounds [8 x i32]* %arrayidx11.7.3.7, i32 0, i64 7
  %1437 = load i32* %arrayidx12.7.3.7, align 4
  %arrayidx15.7.3.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.3.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7.3.7, i32 0, i64 3
  %1438 = load i32* %arrayidx16.7.3.7, align 4
  %mul.7.3.7 = mul nsw i32 %1437, %1438
  %arrayidx19.7.3.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7.3.7 = getelementptr inbounds [8 x i32]* %arrayidx19.7.3.7, i32 0, i64 3
  %1439 = load i32* %arrayidx20.7.3.7, align 4
  %add.7.3.7 = add nsw i32 %1439, %mul.7.3.7
  store i32 %add.7.3.7, i32* %arrayidx20.7.3.7, align 4
  br label %for.inc.7.3.7

for.inc.7.3.7:                                    ; preds = %for.inc.6.3.7
  br label %for.inc21.3.7

for.inc21.3.7:                                    ; preds = %for.inc.7.3.7
  %arrayidx.4.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx5.4.7 = getelementptr inbounds [8 x i32]* %arrayidx.4.7, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.7, align 4
  br label %for.body8.4.7

for.body8.4.7:                                    ; preds = %for.inc21.3.7
  %arrayidx11.434.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.435.7 = getelementptr inbounds [8 x i32]* %arrayidx11.434.7, i32 0, i64 0
  %1440 = load i32* %arrayidx12.435.7, align 4
  %arrayidx16.436.7 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 4
  %1441 = load i32* %arrayidx16.436.7, align 4
  %mul.437.7 = mul nsw i32 %1440, %1441
  %arrayidx19.439.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.440.7 = getelementptr inbounds [8 x i32]* %arrayidx19.439.7, i32 0, i64 4
  %1442 = load i32* %arrayidx20.440.7, align 4
  %add.441.7 = add nsw i32 %1442, %mul.437.7
  store i32 %add.441.7, i32* %arrayidx20.440.7, align 4
  br label %for.inc.442.7

for.inc.442.7:                                    ; preds = %for.body8.4.7
  %arrayidx11.1.4.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.1.4.7 = getelementptr inbounds [8 x i32]* %arrayidx11.1.4.7, i32 0, i64 1
  %1443 = load i32* %arrayidx12.1.4.7, align 4
  %arrayidx15.1.4.7 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.4.7 = getelementptr inbounds [8 x i32]* %arrayidx15.1.4.7, i32 0, i64 4
  %1444 = load i32* %arrayidx16.1.4.7, align 4
  %mul.1.4.7 = mul nsw i32 %1443, %1444
  %arrayidx19.1.4.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.1.4.7 = getelementptr inbounds [8 x i32]* %arrayidx19.1.4.7, i32 0, i64 4
  %1445 = load i32* %arrayidx20.1.4.7, align 4
  %add.1.4.7 = add nsw i32 %1445, %mul.1.4.7
  store i32 %add.1.4.7, i32* %arrayidx20.1.4.7, align 4
  br label %for.inc.1.4.7

for.inc.1.4.7:                                    ; preds = %for.inc.442.7
  %arrayidx11.2.4.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.2.4.7 = getelementptr inbounds [8 x i32]* %arrayidx11.2.4.7, i32 0, i64 2
  %1446 = load i32* %arrayidx12.2.4.7, align 4
  %arrayidx15.2.4.7 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.4.7 = getelementptr inbounds [8 x i32]* %arrayidx15.2.4.7, i32 0, i64 4
  %1447 = load i32* %arrayidx16.2.4.7, align 4
  %mul.2.4.7 = mul nsw i32 %1446, %1447
  %arrayidx19.2.4.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.2.4.7 = getelementptr inbounds [8 x i32]* %arrayidx19.2.4.7, i32 0, i64 4
  %1448 = load i32* %arrayidx20.2.4.7, align 4
  %add.2.4.7 = add nsw i32 %1448, %mul.2.4.7
  store i32 %add.2.4.7, i32* %arrayidx20.2.4.7, align 4
  br label %for.inc.2.4.7

for.inc.2.4.7:                                    ; preds = %for.inc.1.4.7
  %arrayidx11.3.4.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.3.4.7 = getelementptr inbounds [8 x i32]* %arrayidx11.3.4.7, i32 0, i64 3
  %1449 = load i32* %arrayidx12.3.4.7, align 4
  %arrayidx15.3.4.7 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.4.7 = getelementptr inbounds [8 x i32]* %arrayidx15.3.4.7, i32 0, i64 4
  %1450 = load i32* %arrayidx16.3.4.7, align 4
  %mul.3.4.7 = mul nsw i32 %1449, %1450
  %arrayidx19.3.4.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.3.4.7 = getelementptr inbounds [8 x i32]* %arrayidx19.3.4.7, i32 0, i64 4
  %1451 = load i32* %arrayidx20.3.4.7, align 4
  %add.3.4.7 = add nsw i32 %1451, %mul.3.4.7
  store i32 %add.3.4.7, i32* %arrayidx20.3.4.7, align 4
  br label %for.inc.3.4.7

for.inc.3.4.7:                                    ; preds = %for.inc.2.4.7
  %arrayidx11.4.4.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.4.4.7 = getelementptr inbounds [8 x i32]* %arrayidx11.4.4.7, i32 0, i64 4
  %1452 = load i32* %arrayidx12.4.4.7, align 4
  %arrayidx15.4.4.7 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.4.7 = getelementptr inbounds [8 x i32]* %arrayidx15.4.4.7, i32 0, i64 4
  %1453 = load i32* %arrayidx16.4.4.7, align 4
  %mul.4.4.7 = mul nsw i32 %1452, %1453
  %arrayidx19.4.4.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.4.4.7 = getelementptr inbounds [8 x i32]* %arrayidx19.4.4.7, i32 0, i64 4
  %1454 = load i32* %arrayidx20.4.4.7, align 4
  %add.4.4.7 = add nsw i32 %1454, %mul.4.4.7
  store i32 %add.4.4.7, i32* %arrayidx20.4.4.7, align 4
  br label %for.inc.4.4.7

for.inc.4.4.7:                                    ; preds = %for.inc.3.4.7
  %arrayidx11.5.4.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.5.4.7 = getelementptr inbounds [8 x i32]* %arrayidx11.5.4.7, i32 0, i64 5
  %1455 = load i32* %arrayidx12.5.4.7, align 4
  %arrayidx15.5.4.7 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.4.7 = getelementptr inbounds [8 x i32]* %arrayidx15.5.4.7, i32 0, i64 4
  %1456 = load i32* %arrayidx16.5.4.7, align 4
  %mul.5.4.7 = mul nsw i32 %1455, %1456
  %arrayidx19.5.4.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.5.4.7 = getelementptr inbounds [8 x i32]* %arrayidx19.5.4.7, i32 0, i64 4
  %1457 = load i32* %arrayidx20.5.4.7, align 4
  %add.5.4.7 = add nsw i32 %1457, %mul.5.4.7
  store i32 %add.5.4.7, i32* %arrayidx20.5.4.7, align 4
  br label %for.inc.5.4.7

for.inc.5.4.7:                                    ; preds = %for.inc.4.4.7
  %arrayidx11.6.4.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.6.4.7 = getelementptr inbounds [8 x i32]* %arrayidx11.6.4.7, i32 0, i64 6
  %1458 = load i32* %arrayidx12.6.4.7, align 4
  %arrayidx15.6.4.7 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.4.7 = getelementptr inbounds [8 x i32]* %arrayidx15.6.4.7, i32 0, i64 4
  %1459 = load i32* %arrayidx16.6.4.7, align 4
  %mul.6.4.7 = mul nsw i32 %1458, %1459
  %arrayidx19.6.4.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.6.4.7 = getelementptr inbounds [8 x i32]* %arrayidx19.6.4.7, i32 0, i64 4
  %1460 = load i32* %arrayidx20.6.4.7, align 4
  %add.6.4.7 = add nsw i32 %1460, %mul.6.4.7
  store i32 %add.6.4.7, i32* %arrayidx20.6.4.7, align 4
  br label %for.inc.6.4.7

for.inc.6.4.7:                                    ; preds = %for.inc.5.4.7
  %arrayidx11.7.4.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7.4.7 = getelementptr inbounds [8 x i32]* %arrayidx11.7.4.7, i32 0, i64 7
  %1461 = load i32* %arrayidx12.7.4.7, align 4
  %arrayidx15.7.4.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.4.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7.4.7, i32 0, i64 4
  %1462 = load i32* %arrayidx16.7.4.7, align 4
  %mul.7.4.7 = mul nsw i32 %1461, %1462
  %arrayidx19.7.4.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7.4.7 = getelementptr inbounds [8 x i32]* %arrayidx19.7.4.7, i32 0, i64 4
  %1463 = load i32* %arrayidx20.7.4.7, align 4
  %add.7.4.7 = add nsw i32 %1463, %mul.7.4.7
  store i32 %add.7.4.7, i32* %arrayidx20.7.4.7, align 4
  br label %for.inc.7.4.7

for.inc.7.4.7:                                    ; preds = %for.inc.6.4.7
  br label %for.inc21.4.7

for.inc21.4.7:                                    ; preds = %for.inc.7.4.7
  %arrayidx.5.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx5.5.7 = getelementptr inbounds [8 x i32]* %arrayidx.5.7, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.7, align 4
  br label %for.body8.5.7

for.body8.5.7:                                    ; preds = %for.inc21.4.7
  %arrayidx11.544.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.545.7 = getelementptr inbounds [8 x i32]* %arrayidx11.544.7, i32 0, i64 0
  %1464 = load i32* %arrayidx12.545.7, align 4
  %arrayidx16.546.7 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 5
  %1465 = load i32* %arrayidx16.546.7, align 4
  %mul.547.7 = mul nsw i32 %1464, %1465
  %arrayidx19.549.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.550.7 = getelementptr inbounds [8 x i32]* %arrayidx19.549.7, i32 0, i64 5
  %1466 = load i32* %arrayidx20.550.7, align 4
  %add.551.7 = add nsw i32 %1466, %mul.547.7
  store i32 %add.551.7, i32* %arrayidx20.550.7, align 4
  br label %for.inc.552.7

for.inc.552.7:                                    ; preds = %for.body8.5.7
  %arrayidx11.1.5.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.1.5.7 = getelementptr inbounds [8 x i32]* %arrayidx11.1.5.7, i32 0, i64 1
  %1467 = load i32* %arrayidx12.1.5.7, align 4
  %arrayidx15.1.5.7 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.5.7 = getelementptr inbounds [8 x i32]* %arrayidx15.1.5.7, i32 0, i64 5
  %1468 = load i32* %arrayidx16.1.5.7, align 4
  %mul.1.5.7 = mul nsw i32 %1467, %1468
  %arrayidx19.1.5.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.1.5.7 = getelementptr inbounds [8 x i32]* %arrayidx19.1.5.7, i32 0, i64 5
  %1469 = load i32* %arrayidx20.1.5.7, align 4
  %add.1.5.7 = add nsw i32 %1469, %mul.1.5.7
  store i32 %add.1.5.7, i32* %arrayidx20.1.5.7, align 4
  br label %for.inc.1.5.7

for.inc.1.5.7:                                    ; preds = %for.inc.552.7
  %arrayidx11.2.5.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.2.5.7 = getelementptr inbounds [8 x i32]* %arrayidx11.2.5.7, i32 0, i64 2
  %1470 = load i32* %arrayidx12.2.5.7, align 4
  %arrayidx15.2.5.7 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.5.7 = getelementptr inbounds [8 x i32]* %arrayidx15.2.5.7, i32 0, i64 5
  %1471 = load i32* %arrayidx16.2.5.7, align 4
  %mul.2.5.7 = mul nsw i32 %1470, %1471
  %arrayidx19.2.5.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.2.5.7 = getelementptr inbounds [8 x i32]* %arrayidx19.2.5.7, i32 0, i64 5
  %1472 = load i32* %arrayidx20.2.5.7, align 4
  %add.2.5.7 = add nsw i32 %1472, %mul.2.5.7
  store i32 %add.2.5.7, i32* %arrayidx20.2.5.7, align 4
  br label %for.inc.2.5.7

for.inc.2.5.7:                                    ; preds = %for.inc.1.5.7
  %arrayidx11.3.5.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.3.5.7 = getelementptr inbounds [8 x i32]* %arrayidx11.3.5.7, i32 0, i64 3
  %1473 = load i32* %arrayidx12.3.5.7, align 4
  %arrayidx15.3.5.7 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.5.7 = getelementptr inbounds [8 x i32]* %arrayidx15.3.5.7, i32 0, i64 5
  %1474 = load i32* %arrayidx16.3.5.7, align 4
  %mul.3.5.7 = mul nsw i32 %1473, %1474
  %arrayidx19.3.5.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.3.5.7 = getelementptr inbounds [8 x i32]* %arrayidx19.3.5.7, i32 0, i64 5
  %1475 = load i32* %arrayidx20.3.5.7, align 4
  %add.3.5.7 = add nsw i32 %1475, %mul.3.5.7
  store i32 %add.3.5.7, i32* %arrayidx20.3.5.7, align 4
  br label %for.inc.3.5.7

for.inc.3.5.7:                                    ; preds = %for.inc.2.5.7
  %arrayidx11.4.5.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.4.5.7 = getelementptr inbounds [8 x i32]* %arrayidx11.4.5.7, i32 0, i64 4
  %1476 = load i32* %arrayidx12.4.5.7, align 4
  %arrayidx15.4.5.7 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.5.7 = getelementptr inbounds [8 x i32]* %arrayidx15.4.5.7, i32 0, i64 5
  %1477 = load i32* %arrayidx16.4.5.7, align 4
  %mul.4.5.7 = mul nsw i32 %1476, %1477
  %arrayidx19.4.5.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.4.5.7 = getelementptr inbounds [8 x i32]* %arrayidx19.4.5.7, i32 0, i64 5
  %1478 = load i32* %arrayidx20.4.5.7, align 4
  %add.4.5.7 = add nsw i32 %1478, %mul.4.5.7
  store i32 %add.4.5.7, i32* %arrayidx20.4.5.7, align 4
  br label %for.inc.4.5.7

for.inc.4.5.7:                                    ; preds = %for.inc.3.5.7
  %arrayidx11.5.5.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.5.5.7 = getelementptr inbounds [8 x i32]* %arrayidx11.5.5.7, i32 0, i64 5
  %1479 = load i32* %arrayidx12.5.5.7, align 4
  %arrayidx15.5.5.7 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.5.7 = getelementptr inbounds [8 x i32]* %arrayidx15.5.5.7, i32 0, i64 5
  %1480 = load i32* %arrayidx16.5.5.7, align 4
  %mul.5.5.7 = mul nsw i32 %1479, %1480
  %arrayidx19.5.5.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.5.5.7 = getelementptr inbounds [8 x i32]* %arrayidx19.5.5.7, i32 0, i64 5
  %1481 = load i32* %arrayidx20.5.5.7, align 4
  %add.5.5.7 = add nsw i32 %1481, %mul.5.5.7
  store i32 %add.5.5.7, i32* %arrayidx20.5.5.7, align 4
  br label %for.inc.5.5.7

for.inc.5.5.7:                                    ; preds = %for.inc.4.5.7
  %arrayidx11.6.5.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.6.5.7 = getelementptr inbounds [8 x i32]* %arrayidx11.6.5.7, i32 0, i64 6
  %1482 = load i32* %arrayidx12.6.5.7, align 4
  %arrayidx15.6.5.7 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.5.7 = getelementptr inbounds [8 x i32]* %arrayidx15.6.5.7, i32 0, i64 5
  %1483 = load i32* %arrayidx16.6.5.7, align 4
  %mul.6.5.7 = mul nsw i32 %1482, %1483
  %arrayidx19.6.5.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.6.5.7 = getelementptr inbounds [8 x i32]* %arrayidx19.6.5.7, i32 0, i64 5
  %1484 = load i32* %arrayidx20.6.5.7, align 4
  %add.6.5.7 = add nsw i32 %1484, %mul.6.5.7
  store i32 %add.6.5.7, i32* %arrayidx20.6.5.7, align 4
  br label %for.inc.6.5.7

for.inc.6.5.7:                                    ; preds = %for.inc.5.5.7
  %arrayidx11.7.5.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7.5.7 = getelementptr inbounds [8 x i32]* %arrayidx11.7.5.7, i32 0, i64 7
  %1485 = load i32* %arrayidx12.7.5.7, align 4
  %arrayidx15.7.5.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.5.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7.5.7, i32 0, i64 5
  %1486 = load i32* %arrayidx16.7.5.7, align 4
  %mul.7.5.7 = mul nsw i32 %1485, %1486
  %arrayidx19.7.5.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7.5.7 = getelementptr inbounds [8 x i32]* %arrayidx19.7.5.7, i32 0, i64 5
  %1487 = load i32* %arrayidx20.7.5.7, align 4
  %add.7.5.7 = add nsw i32 %1487, %mul.7.5.7
  store i32 %add.7.5.7, i32* %arrayidx20.7.5.7, align 4
  br label %for.inc.7.5.7

for.inc.7.5.7:                                    ; preds = %for.inc.6.5.7
  br label %for.inc21.5.7

for.inc21.5.7:                                    ; preds = %for.inc.7.5.7
  %arrayidx.6.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx5.6.7 = getelementptr inbounds [8 x i32]* %arrayidx.6.7, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.7, align 4
  br label %for.body8.6.7

for.body8.6.7:                                    ; preds = %for.inc21.5.7
  %arrayidx11.654.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.655.7 = getelementptr inbounds [8 x i32]* %arrayidx11.654.7, i32 0, i64 0
  %1488 = load i32* %arrayidx12.655.7, align 4
  %arrayidx16.656.7 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 6
  %1489 = load i32* %arrayidx16.656.7, align 4
  %mul.657.7 = mul nsw i32 %1488, %1489
  %arrayidx19.659.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.660.7 = getelementptr inbounds [8 x i32]* %arrayidx19.659.7, i32 0, i64 6
  %1490 = load i32* %arrayidx20.660.7, align 4
  %add.661.7 = add nsw i32 %1490, %mul.657.7
  store i32 %add.661.7, i32* %arrayidx20.660.7, align 4
  br label %for.inc.662.7

for.inc.662.7:                                    ; preds = %for.body8.6.7
  %arrayidx11.1.6.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.1.6.7 = getelementptr inbounds [8 x i32]* %arrayidx11.1.6.7, i32 0, i64 1
  %1491 = load i32* %arrayidx12.1.6.7, align 4
  %arrayidx15.1.6.7 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.6.7 = getelementptr inbounds [8 x i32]* %arrayidx15.1.6.7, i32 0, i64 6
  %1492 = load i32* %arrayidx16.1.6.7, align 4
  %mul.1.6.7 = mul nsw i32 %1491, %1492
  %arrayidx19.1.6.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.1.6.7 = getelementptr inbounds [8 x i32]* %arrayidx19.1.6.7, i32 0, i64 6
  %1493 = load i32* %arrayidx20.1.6.7, align 4
  %add.1.6.7 = add nsw i32 %1493, %mul.1.6.7
  store i32 %add.1.6.7, i32* %arrayidx20.1.6.7, align 4
  br label %for.inc.1.6.7

for.inc.1.6.7:                                    ; preds = %for.inc.662.7
  %arrayidx11.2.6.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.2.6.7 = getelementptr inbounds [8 x i32]* %arrayidx11.2.6.7, i32 0, i64 2
  %1494 = load i32* %arrayidx12.2.6.7, align 4
  %arrayidx15.2.6.7 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.6.7 = getelementptr inbounds [8 x i32]* %arrayidx15.2.6.7, i32 0, i64 6
  %1495 = load i32* %arrayidx16.2.6.7, align 4
  %mul.2.6.7 = mul nsw i32 %1494, %1495
  %arrayidx19.2.6.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.2.6.7 = getelementptr inbounds [8 x i32]* %arrayidx19.2.6.7, i32 0, i64 6
  %1496 = load i32* %arrayidx20.2.6.7, align 4
  %add.2.6.7 = add nsw i32 %1496, %mul.2.6.7
  store i32 %add.2.6.7, i32* %arrayidx20.2.6.7, align 4
  br label %for.inc.2.6.7

for.inc.2.6.7:                                    ; preds = %for.inc.1.6.7
  %arrayidx11.3.6.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.3.6.7 = getelementptr inbounds [8 x i32]* %arrayidx11.3.6.7, i32 0, i64 3
  %1497 = load i32* %arrayidx12.3.6.7, align 4
  %arrayidx15.3.6.7 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.6.7 = getelementptr inbounds [8 x i32]* %arrayidx15.3.6.7, i32 0, i64 6
  %1498 = load i32* %arrayidx16.3.6.7, align 4
  %mul.3.6.7 = mul nsw i32 %1497, %1498
  %arrayidx19.3.6.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.3.6.7 = getelementptr inbounds [8 x i32]* %arrayidx19.3.6.7, i32 0, i64 6
  %1499 = load i32* %arrayidx20.3.6.7, align 4
  %add.3.6.7 = add nsw i32 %1499, %mul.3.6.7
  store i32 %add.3.6.7, i32* %arrayidx20.3.6.7, align 4
  br label %for.inc.3.6.7

for.inc.3.6.7:                                    ; preds = %for.inc.2.6.7
  %arrayidx11.4.6.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.4.6.7 = getelementptr inbounds [8 x i32]* %arrayidx11.4.6.7, i32 0, i64 4
  %1500 = load i32* %arrayidx12.4.6.7, align 4
  %arrayidx15.4.6.7 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.6.7 = getelementptr inbounds [8 x i32]* %arrayidx15.4.6.7, i32 0, i64 6
  %1501 = load i32* %arrayidx16.4.6.7, align 4
  %mul.4.6.7 = mul nsw i32 %1500, %1501
  %arrayidx19.4.6.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.4.6.7 = getelementptr inbounds [8 x i32]* %arrayidx19.4.6.7, i32 0, i64 6
  %1502 = load i32* %arrayidx20.4.6.7, align 4
  %add.4.6.7 = add nsw i32 %1502, %mul.4.6.7
  store i32 %add.4.6.7, i32* %arrayidx20.4.6.7, align 4
  br label %for.inc.4.6.7

for.inc.4.6.7:                                    ; preds = %for.inc.3.6.7
  %arrayidx11.5.6.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.5.6.7 = getelementptr inbounds [8 x i32]* %arrayidx11.5.6.7, i32 0, i64 5
  %1503 = load i32* %arrayidx12.5.6.7, align 4
  %arrayidx15.5.6.7 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.6.7 = getelementptr inbounds [8 x i32]* %arrayidx15.5.6.7, i32 0, i64 6
  %1504 = load i32* %arrayidx16.5.6.7, align 4
  %mul.5.6.7 = mul nsw i32 %1503, %1504
  %arrayidx19.5.6.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.5.6.7 = getelementptr inbounds [8 x i32]* %arrayidx19.5.6.7, i32 0, i64 6
  %1505 = load i32* %arrayidx20.5.6.7, align 4
  %add.5.6.7 = add nsw i32 %1505, %mul.5.6.7
  store i32 %add.5.6.7, i32* %arrayidx20.5.6.7, align 4
  br label %for.inc.5.6.7

for.inc.5.6.7:                                    ; preds = %for.inc.4.6.7
  %arrayidx11.6.6.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.6.6.7 = getelementptr inbounds [8 x i32]* %arrayidx11.6.6.7, i32 0, i64 6
  %1506 = load i32* %arrayidx12.6.6.7, align 4
  %arrayidx15.6.6.7 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.6.7 = getelementptr inbounds [8 x i32]* %arrayidx15.6.6.7, i32 0, i64 6
  %1507 = load i32* %arrayidx16.6.6.7, align 4
  %mul.6.6.7 = mul nsw i32 %1506, %1507
  %arrayidx19.6.6.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.6.6.7 = getelementptr inbounds [8 x i32]* %arrayidx19.6.6.7, i32 0, i64 6
  %1508 = load i32* %arrayidx20.6.6.7, align 4
  %add.6.6.7 = add nsw i32 %1508, %mul.6.6.7
  store i32 %add.6.6.7, i32* %arrayidx20.6.6.7, align 4
  br label %for.inc.6.6.7

for.inc.6.6.7:                                    ; preds = %for.inc.5.6.7
  %arrayidx11.7.6.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7.6.7 = getelementptr inbounds [8 x i32]* %arrayidx11.7.6.7, i32 0, i64 7
  %1509 = load i32* %arrayidx12.7.6.7, align 4
  %arrayidx15.7.6.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.6.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7.6.7, i32 0, i64 6
  %1510 = load i32* %arrayidx16.7.6.7, align 4
  %mul.7.6.7 = mul nsw i32 %1509, %1510
  %arrayidx19.7.6.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7.6.7 = getelementptr inbounds [8 x i32]* %arrayidx19.7.6.7, i32 0, i64 6
  %1511 = load i32* %arrayidx20.7.6.7, align 4
  %add.7.6.7 = add nsw i32 %1511, %mul.7.6.7
  store i32 %add.7.6.7, i32* %arrayidx20.7.6.7, align 4
  br label %for.inc.7.6.7

for.inc.7.6.7:                                    ; preds = %for.inc.6.6.7
  br label %for.inc21.6.7

for.inc21.6.7:                                    ; preds = %for.inc.7.6.7
  %arrayidx.7.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx5.7.7 = getelementptr inbounds [8 x i32]* %arrayidx.7.7, i32 0, i64 7
  store i32 %init, i32* %arrayidx5.7.7, align 4
  br label %for.body8.7.7

for.body8.7.7:                                    ; preds = %for.inc21.6.7
  %arrayidx11.764.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.765.7 = getelementptr inbounds [8 x i32]* %arrayidx11.764.7, i32 0, i64 0
  %1512 = load i32* %arrayidx12.765.7, align 4
  %arrayidx16.766.7 = getelementptr inbounds [8 x i32]* %b, i32 0, i64 7
  %1513 = load i32* %arrayidx16.766.7, align 4
  %mul.767.7 = mul nsw i32 %1512, %1513
  %arrayidx19.769.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.770.7 = getelementptr inbounds [8 x i32]* %arrayidx19.769.7, i32 0, i64 7
  %1514 = load i32* %arrayidx20.770.7, align 4
  %add.771.7 = add nsw i32 %1514, %mul.767.7
  store i32 %add.771.7, i32* %arrayidx20.770.7, align 4
  br label %for.inc.772.7

for.inc.772.7:                                    ; preds = %for.body8.7.7
  %arrayidx11.1.7.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.1.7.7 = getelementptr inbounds [8 x i32]* %arrayidx11.1.7.7, i32 0, i64 1
  %1515 = load i32* %arrayidx12.1.7.7, align 4
  %arrayidx15.1.7.7 = getelementptr inbounds [8 x i32]* %b, i64 1
  %arrayidx16.1.7.7 = getelementptr inbounds [8 x i32]* %arrayidx15.1.7.7, i32 0, i64 7
  %1516 = load i32* %arrayidx16.1.7.7, align 4
  %mul.1.7.7 = mul nsw i32 %1515, %1516
  %arrayidx19.1.7.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.1.7.7 = getelementptr inbounds [8 x i32]* %arrayidx19.1.7.7, i32 0, i64 7
  %1517 = load i32* %arrayidx20.1.7.7, align 4
  %add.1.7.7 = add nsw i32 %1517, %mul.1.7.7
  store i32 %add.1.7.7, i32* %arrayidx20.1.7.7, align 4
  br label %for.inc.1.7.7

for.inc.1.7.7:                                    ; preds = %for.inc.772.7
  %arrayidx11.2.7.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.2.7.7 = getelementptr inbounds [8 x i32]* %arrayidx11.2.7.7, i32 0, i64 2
  %1518 = load i32* %arrayidx12.2.7.7, align 4
  %arrayidx15.2.7.7 = getelementptr inbounds [8 x i32]* %b, i64 2
  %arrayidx16.2.7.7 = getelementptr inbounds [8 x i32]* %arrayidx15.2.7.7, i32 0, i64 7
  %1519 = load i32* %arrayidx16.2.7.7, align 4
  %mul.2.7.7 = mul nsw i32 %1518, %1519
  %arrayidx19.2.7.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.2.7.7 = getelementptr inbounds [8 x i32]* %arrayidx19.2.7.7, i32 0, i64 7
  %1520 = load i32* %arrayidx20.2.7.7, align 4
  %add.2.7.7 = add nsw i32 %1520, %mul.2.7.7
  store i32 %add.2.7.7, i32* %arrayidx20.2.7.7, align 4
  br label %for.inc.2.7.7

for.inc.2.7.7:                                    ; preds = %for.inc.1.7.7
  %arrayidx11.3.7.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.3.7.7 = getelementptr inbounds [8 x i32]* %arrayidx11.3.7.7, i32 0, i64 3
  %1521 = load i32* %arrayidx12.3.7.7, align 4
  %arrayidx15.3.7.7 = getelementptr inbounds [8 x i32]* %b, i64 3
  %arrayidx16.3.7.7 = getelementptr inbounds [8 x i32]* %arrayidx15.3.7.7, i32 0, i64 7
  %1522 = load i32* %arrayidx16.3.7.7, align 4
  %mul.3.7.7 = mul nsw i32 %1521, %1522
  %arrayidx19.3.7.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.3.7.7 = getelementptr inbounds [8 x i32]* %arrayidx19.3.7.7, i32 0, i64 7
  %1523 = load i32* %arrayidx20.3.7.7, align 4
  %add.3.7.7 = add nsw i32 %1523, %mul.3.7.7
  store i32 %add.3.7.7, i32* %arrayidx20.3.7.7, align 4
  br label %for.inc.3.7.7

for.inc.3.7.7:                                    ; preds = %for.inc.2.7.7
  %arrayidx11.4.7.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.4.7.7 = getelementptr inbounds [8 x i32]* %arrayidx11.4.7.7, i32 0, i64 4
  %1524 = load i32* %arrayidx12.4.7.7, align 4
  %arrayidx15.4.7.7 = getelementptr inbounds [8 x i32]* %b, i64 4
  %arrayidx16.4.7.7 = getelementptr inbounds [8 x i32]* %arrayidx15.4.7.7, i32 0, i64 7
  %1525 = load i32* %arrayidx16.4.7.7, align 4
  %mul.4.7.7 = mul nsw i32 %1524, %1525
  %arrayidx19.4.7.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.4.7.7 = getelementptr inbounds [8 x i32]* %arrayidx19.4.7.7, i32 0, i64 7
  %1526 = load i32* %arrayidx20.4.7.7, align 4
  %add.4.7.7 = add nsw i32 %1526, %mul.4.7.7
  store i32 %add.4.7.7, i32* %arrayidx20.4.7.7, align 4
  br label %for.inc.4.7.7

for.inc.4.7.7:                                    ; preds = %for.inc.3.7.7
  %arrayidx11.5.7.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.5.7.7 = getelementptr inbounds [8 x i32]* %arrayidx11.5.7.7, i32 0, i64 5
  %1527 = load i32* %arrayidx12.5.7.7, align 4
  %arrayidx15.5.7.7 = getelementptr inbounds [8 x i32]* %b, i64 5
  %arrayidx16.5.7.7 = getelementptr inbounds [8 x i32]* %arrayidx15.5.7.7, i32 0, i64 7
  %1528 = load i32* %arrayidx16.5.7.7, align 4
  %mul.5.7.7 = mul nsw i32 %1527, %1528
  %arrayidx19.5.7.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.5.7.7 = getelementptr inbounds [8 x i32]* %arrayidx19.5.7.7, i32 0, i64 7
  %1529 = load i32* %arrayidx20.5.7.7, align 4
  %add.5.7.7 = add nsw i32 %1529, %mul.5.7.7
  store i32 %add.5.7.7, i32* %arrayidx20.5.7.7, align 4
  br label %for.inc.5.7.7

for.inc.5.7.7:                                    ; preds = %for.inc.4.7.7
  %arrayidx11.6.7.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.6.7.7 = getelementptr inbounds [8 x i32]* %arrayidx11.6.7.7, i32 0, i64 6
  %1530 = load i32* %arrayidx12.6.7.7, align 4
  %arrayidx15.6.7.7 = getelementptr inbounds [8 x i32]* %b, i64 6
  %arrayidx16.6.7.7 = getelementptr inbounds [8 x i32]* %arrayidx15.6.7.7, i32 0, i64 7
  %1531 = load i32* %arrayidx16.6.7.7, align 4
  %mul.6.7.7 = mul nsw i32 %1530, %1531
  %arrayidx19.6.7.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.6.7.7 = getelementptr inbounds [8 x i32]* %arrayidx19.6.7.7, i32 0, i64 7
  %1532 = load i32* %arrayidx20.6.7.7, align 4
  %add.6.7.7 = add nsw i32 %1532, %mul.6.7.7
  store i32 %add.6.7.7, i32* %arrayidx20.6.7.7, align 4
  br label %for.inc.6.7.7

for.inc.6.7.7:                                    ; preds = %for.inc.5.7.7
  %arrayidx11.7.7.7 = getelementptr inbounds [8 x i32]* %a, i64 7
  %arrayidx12.7.7.7 = getelementptr inbounds [8 x i32]* %arrayidx11.7.7.7, i32 0, i64 7
  %1533 = load i32* %arrayidx12.7.7.7, align 4
  %arrayidx15.7.7.7 = getelementptr inbounds [8 x i32]* %b, i64 7
  %arrayidx16.7.7.7 = getelementptr inbounds [8 x i32]* %arrayidx15.7.7.7, i32 0, i64 7
  %1534 = load i32* %arrayidx16.7.7.7, align 4
  %mul.7.7.7 = mul nsw i32 %1533, %1534
  %arrayidx19.7.7.7 = getelementptr inbounds [8 x i32]* %c, i64 7
  %arrayidx20.7.7.7 = getelementptr inbounds [8 x i32]* %arrayidx19.7.7.7, i32 0, i64 7
  %1535 = load i32* %arrayidx20.7.7.7, align 4
  %add.7.7.7 = add nsw i32 %1535, %mul.7.7.7
  store i32 %add.7.7.7, i32* %arrayidx20.7.7.7, align 4
  br label %for.inc.7.7.7

for.inc.7.7.7:                                    ; preds = %for.inc.6.7.7
  br label %for.inc21.7.7

for.inc21.7.7:                                    ; preds = %for.inc.7.7.7
  br label %for.inc24.7

for.inc24.7:                                      ; preds = %for.inc21.7.7
  ret void
}
