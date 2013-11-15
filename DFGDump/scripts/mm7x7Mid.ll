; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [7 x [7 x i32]] zeroinitializer, align 16

define void @_Z5mm7x7PA7_iS0_iS0_([7 x i32]* %a, [7 x i32]* %b, i32 %init, [7 x i32]* %c) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %arrayidx12.1 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [7 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  br label %for.inc.1

for.inc21:                                        ; preds = %for.inc.6
  %arrayidx5.1 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  br label %for.body8.1

for.inc24:                                        ; preds = %for.inc21.6
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx12.2 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 2
  %6 = load i32* %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2 = getelementptr inbounds [7 x i32]* %arrayidx15.2, i32 0, i64 0
  %7 = load i32* %arrayidx16.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %arrayidx20.2 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 0
  %8 = load i32* %arrayidx20.2, align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* %arrayidx20.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx12.3 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 3
  %9 = load i32* %arrayidx12.3, align 4
  %arrayidx15.3 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3 = getelementptr inbounds [7 x i32]* %arrayidx15.3, i32 0, i64 0
  %10 = load i32* %arrayidx16.3, align 4
  %mul.3 = mul nsw i32 %9, %10
  %arrayidx20.3 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 0
  %11 = load i32* %arrayidx20.3, align 4
  %add.3 = add nsw i32 %11, %mul.3
  store i32 %add.3, i32* %arrayidx20.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx12.4 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 4
  %12 = load i32* %arrayidx12.4, align 4
  %arrayidx15.4 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4 = getelementptr inbounds [7 x i32]* %arrayidx15.4, i32 0, i64 0
  %13 = load i32* %arrayidx16.4, align 4
  %mul.4 = mul nsw i32 %12, %13
  %arrayidx20.4 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 0
  %14 = load i32* %arrayidx20.4, align 4
  %add.4 = add nsw i32 %14, %mul.4
  store i32 %add.4, i32* %arrayidx20.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx12.5 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 5
  %15 = load i32* %arrayidx12.5, align 4
  %arrayidx15.5 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5 = getelementptr inbounds [7 x i32]* %arrayidx15.5, i32 0, i64 0
  %16 = load i32* %arrayidx16.5, align 4
  %mul.5 = mul nsw i32 %15, %16
  %arrayidx20.5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 0
  %17 = load i32* %arrayidx20.5, align 4
  %add.5 = add nsw i32 %17, %mul.5
  store i32 %add.5, i32* %arrayidx20.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx12.6 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 6
  %18 = load i32* %arrayidx12.6, align 4
  %arrayidx15.6 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6 = getelementptr inbounds [7 x i32]* %arrayidx15.6, i32 0, i64 0
  %19 = load i32* %arrayidx16.6, align 4
  %mul.6 = mul nsw i32 %18, %19
  %arrayidx20.6 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 0
  %20 = load i32* %arrayidx20.6, align 4
  %add.6 = add nsw i32 %20, %mul.6
  store i32 %add.6, i32* %arrayidx20.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.5
  br label %for.inc21

for.body8.1:                                      ; preds = %for.inc21
  %arrayidx12.15 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 0
  %21 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 1
  %22 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %21, %22
  %arrayidx20.110 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 1
  %23 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %23, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body8.1
  %arrayidx12.1.1 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 1
  %24 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [7 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %25 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %24, %25
  %arrayidx20.1.1 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 1
  %26 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %26, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.112
  %arrayidx12.2.1 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 2
  %27 = load i32* %arrayidx12.2.1, align 4
  %arrayidx15.2.1 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.1 = getelementptr inbounds [7 x i32]* %arrayidx15.2.1, i32 0, i64 1
  %28 = load i32* %arrayidx16.2.1, align 4
  %mul.2.1 = mul nsw i32 %27, %28
  %arrayidx20.2.1 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 1
  %29 = load i32* %arrayidx20.2.1, align 4
  %add.2.1 = add nsw i32 %29, %mul.2.1
  store i32 %add.2.1, i32* %arrayidx20.2.1, align 4
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %arrayidx12.3.1 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 3
  %30 = load i32* %arrayidx12.3.1, align 4
  %arrayidx15.3.1 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.1 = getelementptr inbounds [7 x i32]* %arrayidx15.3.1, i32 0, i64 1
  %31 = load i32* %arrayidx16.3.1, align 4
  %mul.3.1 = mul nsw i32 %30, %31
  %arrayidx20.3.1 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 1
  %32 = load i32* %arrayidx20.3.1, align 4
  %add.3.1 = add nsw i32 %32, %mul.3.1
  store i32 %add.3.1, i32* %arrayidx20.3.1, align 4
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %for.inc.2.1
  %arrayidx12.4.1 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 4
  %33 = load i32* %arrayidx12.4.1, align 4
  %arrayidx15.4.1 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.1 = getelementptr inbounds [7 x i32]* %arrayidx15.4.1, i32 0, i64 1
  %34 = load i32* %arrayidx16.4.1, align 4
  %mul.4.1 = mul nsw i32 %33, %34
  %arrayidx20.4.1 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 1
  %35 = load i32* %arrayidx20.4.1, align 4
  %add.4.1 = add nsw i32 %35, %mul.4.1
  store i32 %add.4.1, i32* %arrayidx20.4.1, align 4
  br label %for.inc.4.1

for.inc.4.1:                                      ; preds = %for.inc.3.1
  %arrayidx12.5.1 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 5
  %36 = load i32* %arrayidx12.5.1, align 4
  %arrayidx15.5.1 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.1 = getelementptr inbounds [7 x i32]* %arrayidx15.5.1, i32 0, i64 1
  %37 = load i32* %arrayidx16.5.1, align 4
  %mul.5.1 = mul nsw i32 %36, %37
  %arrayidx20.5.1 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 1
  %38 = load i32* %arrayidx20.5.1, align 4
  %add.5.1 = add nsw i32 %38, %mul.5.1
  store i32 %add.5.1, i32* %arrayidx20.5.1, align 4
  br label %for.inc.5.1

for.inc.5.1:                                      ; preds = %for.inc.4.1
  %arrayidx12.6.1 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 6
  %39 = load i32* %arrayidx12.6.1, align 4
  %arrayidx15.6.1 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.1 = getelementptr inbounds [7 x i32]* %arrayidx15.6.1, i32 0, i64 1
  %40 = load i32* %arrayidx16.6.1, align 4
  %mul.6.1 = mul nsw i32 %39, %40
  %arrayidx20.6.1 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 1
  %41 = load i32* %arrayidx20.6.1, align 4
  %add.6.1 = add nsw i32 %41, %mul.6.1
  store i32 %add.6.1, i32* %arrayidx20.6.1, align 4
  br label %for.inc.6.1

for.inc.6.1:                                      ; preds = %for.inc.5.1
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.inc.6.1
  %arrayidx5.2 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc21.1
  %arrayidx12.215 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 0
  %42 = load i32* %arrayidx12.215, align 4
  %arrayidx16.216 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 2
  %43 = load i32* %arrayidx16.216, align 4
  %mul.217 = mul nsw i32 %42, %43
  %arrayidx20.220 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 2
  %44 = load i32* %arrayidx20.220, align 4
  %add.221 = add nsw i32 %44, %mul.217
  store i32 %add.221, i32* %arrayidx20.220, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body8.2
  %arrayidx12.1.2 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 1
  %45 = load i32* %arrayidx12.1.2, align 4
  %arrayidx15.1.2 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.2 = getelementptr inbounds [7 x i32]* %arrayidx15.1.2, i32 0, i64 2
  %46 = load i32* %arrayidx16.1.2, align 4
  %mul.1.2 = mul nsw i32 %45, %46
  %arrayidx20.1.2 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 2
  %47 = load i32* %arrayidx20.1.2, align 4
  %add.1.2 = add nsw i32 %47, %mul.1.2
  store i32 %add.1.2, i32* %arrayidx20.1.2, align 4
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.222
  %arrayidx12.2.2 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 2
  %48 = load i32* %arrayidx12.2.2, align 4
  %arrayidx15.2.2 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.2 = getelementptr inbounds [7 x i32]* %arrayidx15.2.2, i32 0, i64 2
  %49 = load i32* %arrayidx16.2.2, align 4
  %mul.2.2 = mul nsw i32 %48, %49
  %arrayidx20.2.2 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 2
  %50 = load i32* %arrayidx20.2.2, align 4
  %add.2.2 = add nsw i32 %50, %mul.2.2
  store i32 %add.2.2, i32* %arrayidx20.2.2, align 4
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  %arrayidx12.3.2 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 3
  %51 = load i32* %arrayidx12.3.2, align 4
  %arrayidx15.3.2 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.2 = getelementptr inbounds [7 x i32]* %arrayidx15.3.2, i32 0, i64 2
  %52 = load i32* %arrayidx16.3.2, align 4
  %mul.3.2 = mul nsw i32 %51, %52
  %arrayidx20.3.2 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 2
  %53 = load i32* %arrayidx20.3.2, align 4
  %add.3.2 = add nsw i32 %53, %mul.3.2
  store i32 %add.3.2, i32* %arrayidx20.3.2, align 4
  br label %for.inc.3.2

for.inc.3.2:                                      ; preds = %for.inc.2.2
  %arrayidx12.4.2 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 4
  %54 = load i32* %arrayidx12.4.2, align 4
  %arrayidx15.4.2 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.2 = getelementptr inbounds [7 x i32]* %arrayidx15.4.2, i32 0, i64 2
  %55 = load i32* %arrayidx16.4.2, align 4
  %mul.4.2 = mul nsw i32 %54, %55
  %arrayidx20.4.2 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 2
  %56 = load i32* %arrayidx20.4.2, align 4
  %add.4.2 = add nsw i32 %56, %mul.4.2
  store i32 %add.4.2, i32* %arrayidx20.4.2, align 4
  br label %for.inc.4.2

for.inc.4.2:                                      ; preds = %for.inc.3.2
  %arrayidx12.5.2 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 5
  %57 = load i32* %arrayidx12.5.2, align 4
  %arrayidx15.5.2 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.2 = getelementptr inbounds [7 x i32]* %arrayidx15.5.2, i32 0, i64 2
  %58 = load i32* %arrayidx16.5.2, align 4
  %mul.5.2 = mul nsw i32 %57, %58
  %arrayidx20.5.2 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 2
  %59 = load i32* %arrayidx20.5.2, align 4
  %add.5.2 = add nsw i32 %59, %mul.5.2
  store i32 %add.5.2, i32* %arrayidx20.5.2, align 4
  br label %for.inc.5.2

for.inc.5.2:                                      ; preds = %for.inc.4.2
  %arrayidx12.6.2 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 6
  %60 = load i32* %arrayidx12.6.2, align 4
  %arrayidx15.6.2 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.2 = getelementptr inbounds [7 x i32]* %arrayidx15.6.2, i32 0, i64 2
  %61 = load i32* %arrayidx16.6.2, align 4
  %mul.6.2 = mul nsw i32 %60, %61
  %arrayidx20.6.2 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 2
  %62 = load i32* %arrayidx20.6.2, align 4
  %add.6.2 = add nsw i32 %62, %mul.6.2
  store i32 %add.6.2, i32* %arrayidx20.6.2, align 4
  br label %for.inc.6.2

for.inc.6.2:                                      ; preds = %for.inc.5.2
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %for.inc.6.2
  %arrayidx5.3 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3, align 4
  br label %for.body8.3

for.body8.3:                                      ; preds = %for.inc21.2
  %arrayidx12.325 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 0
  %63 = load i32* %arrayidx12.325, align 4
  %arrayidx16.326 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 3
  %64 = load i32* %arrayidx16.326, align 4
  %mul.327 = mul nsw i32 %63, %64
  %arrayidx20.330 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 3
  %65 = load i32* %arrayidx20.330, align 4
  %add.331 = add nsw i32 %65, %mul.327
  store i32 %add.331, i32* %arrayidx20.330, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body8.3
  %arrayidx12.1.3 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 1
  %66 = load i32* %arrayidx12.1.3, align 4
  %arrayidx15.1.3 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.3 = getelementptr inbounds [7 x i32]* %arrayidx15.1.3, i32 0, i64 3
  %67 = load i32* %arrayidx16.1.3, align 4
  %mul.1.3 = mul nsw i32 %66, %67
  %arrayidx20.1.3 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 3
  %68 = load i32* %arrayidx20.1.3, align 4
  %add.1.3 = add nsw i32 %68, %mul.1.3
  store i32 %add.1.3, i32* %arrayidx20.1.3, align 4
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %for.inc.332
  %arrayidx12.2.3 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 2
  %69 = load i32* %arrayidx12.2.3, align 4
  %arrayidx15.2.3 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.3 = getelementptr inbounds [7 x i32]* %arrayidx15.2.3, i32 0, i64 3
  %70 = load i32* %arrayidx16.2.3, align 4
  %mul.2.3 = mul nsw i32 %69, %70
  %arrayidx20.2.3 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 3
  %71 = load i32* %arrayidx20.2.3, align 4
  %add.2.3 = add nsw i32 %71, %mul.2.3
  store i32 %add.2.3, i32* %arrayidx20.2.3, align 4
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %for.inc.1.3
  %arrayidx12.3.3 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 3
  %72 = load i32* %arrayidx12.3.3, align 4
  %arrayidx15.3.3 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.3 = getelementptr inbounds [7 x i32]* %arrayidx15.3.3, i32 0, i64 3
  %73 = load i32* %arrayidx16.3.3, align 4
  %mul.3.3 = mul nsw i32 %72, %73
  %arrayidx20.3.3 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 3
  %74 = load i32* %arrayidx20.3.3, align 4
  %add.3.3 = add nsw i32 %74, %mul.3.3
  store i32 %add.3.3, i32* %arrayidx20.3.3, align 4
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %for.inc.2.3
  %arrayidx12.4.3 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 4
  %75 = load i32* %arrayidx12.4.3, align 4
  %arrayidx15.4.3 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.3 = getelementptr inbounds [7 x i32]* %arrayidx15.4.3, i32 0, i64 3
  %76 = load i32* %arrayidx16.4.3, align 4
  %mul.4.3 = mul nsw i32 %75, %76
  %arrayidx20.4.3 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 3
  %77 = load i32* %arrayidx20.4.3, align 4
  %add.4.3 = add nsw i32 %77, %mul.4.3
  store i32 %add.4.3, i32* %arrayidx20.4.3, align 4
  br label %for.inc.4.3

for.inc.4.3:                                      ; preds = %for.inc.3.3
  %arrayidx12.5.3 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 5
  %78 = load i32* %arrayidx12.5.3, align 4
  %arrayidx15.5.3 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.3 = getelementptr inbounds [7 x i32]* %arrayidx15.5.3, i32 0, i64 3
  %79 = load i32* %arrayidx16.5.3, align 4
  %mul.5.3 = mul nsw i32 %78, %79
  %arrayidx20.5.3 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 3
  %80 = load i32* %arrayidx20.5.3, align 4
  %add.5.3 = add nsw i32 %80, %mul.5.3
  store i32 %add.5.3, i32* %arrayidx20.5.3, align 4
  br label %for.inc.5.3

for.inc.5.3:                                      ; preds = %for.inc.4.3
  %arrayidx12.6.3 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 6
  %81 = load i32* %arrayidx12.6.3, align 4
  %arrayidx15.6.3 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.3 = getelementptr inbounds [7 x i32]* %arrayidx15.6.3, i32 0, i64 3
  %82 = load i32* %arrayidx16.6.3, align 4
  %mul.6.3 = mul nsw i32 %81, %82
  %arrayidx20.6.3 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 3
  %83 = load i32* %arrayidx20.6.3, align 4
  %add.6.3 = add nsw i32 %83, %mul.6.3
  store i32 %add.6.3, i32* %arrayidx20.6.3, align 4
  br label %for.inc.6.3

for.inc.6.3:                                      ; preds = %for.inc.5.3
  br label %for.inc21.3

for.inc21.3:                                      ; preds = %for.inc.6.3
  %arrayidx5.4 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4, align 4
  br label %for.body8.4

for.body8.4:                                      ; preds = %for.inc21.3
  %arrayidx12.435 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 0
  %84 = load i32* %arrayidx12.435, align 4
  %arrayidx16.436 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 4
  %85 = load i32* %arrayidx16.436, align 4
  %mul.437 = mul nsw i32 %84, %85
  %arrayidx20.440 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 4
  %86 = load i32* %arrayidx20.440, align 4
  %add.441 = add nsw i32 %86, %mul.437
  store i32 %add.441, i32* %arrayidx20.440, align 4
  br label %for.inc.442

for.inc.442:                                      ; preds = %for.body8.4
  %arrayidx12.1.4 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 1
  %87 = load i32* %arrayidx12.1.4, align 4
  %arrayidx15.1.4 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.4 = getelementptr inbounds [7 x i32]* %arrayidx15.1.4, i32 0, i64 4
  %88 = load i32* %arrayidx16.1.4, align 4
  %mul.1.4 = mul nsw i32 %87, %88
  %arrayidx20.1.4 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 4
  %89 = load i32* %arrayidx20.1.4, align 4
  %add.1.4 = add nsw i32 %89, %mul.1.4
  store i32 %add.1.4, i32* %arrayidx20.1.4, align 4
  br label %for.inc.1.4

for.inc.1.4:                                      ; preds = %for.inc.442
  %arrayidx12.2.4 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 2
  %90 = load i32* %arrayidx12.2.4, align 4
  %arrayidx15.2.4 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.4 = getelementptr inbounds [7 x i32]* %arrayidx15.2.4, i32 0, i64 4
  %91 = load i32* %arrayidx16.2.4, align 4
  %mul.2.4 = mul nsw i32 %90, %91
  %arrayidx20.2.4 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 4
  %92 = load i32* %arrayidx20.2.4, align 4
  %add.2.4 = add nsw i32 %92, %mul.2.4
  store i32 %add.2.4, i32* %arrayidx20.2.4, align 4
  br label %for.inc.2.4

for.inc.2.4:                                      ; preds = %for.inc.1.4
  %arrayidx12.3.4 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 3
  %93 = load i32* %arrayidx12.3.4, align 4
  %arrayidx15.3.4 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.4 = getelementptr inbounds [7 x i32]* %arrayidx15.3.4, i32 0, i64 4
  %94 = load i32* %arrayidx16.3.4, align 4
  %mul.3.4 = mul nsw i32 %93, %94
  %arrayidx20.3.4 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 4
  %95 = load i32* %arrayidx20.3.4, align 4
  %add.3.4 = add nsw i32 %95, %mul.3.4
  store i32 %add.3.4, i32* %arrayidx20.3.4, align 4
  br label %for.inc.3.4

for.inc.3.4:                                      ; preds = %for.inc.2.4
  %arrayidx12.4.4 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 4
  %96 = load i32* %arrayidx12.4.4, align 4
  %arrayidx15.4.4 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.4 = getelementptr inbounds [7 x i32]* %arrayidx15.4.4, i32 0, i64 4
  %97 = load i32* %arrayidx16.4.4, align 4
  %mul.4.4 = mul nsw i32 %96, %97
  %arrayidx20.4.4 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 4
  %98 = load i32* %arrayidx20.4.4, align 4
  %add.4.4 = add nsw i32 %98, %mul.4.4
  store i32 %add.4.4, i32* %arrayidx20.4.4, align 4
  br label %for.inc.4.4

for.inc.4.4:                                      ; preds = %for.inc.3.4
  %arrayidx12.5.4 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 5
  %99 = load i32* %arrayidx12.5.4, align 4
  %arrayidx15.5.4 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.4 = getelementptr inbounds [7 x i32]* %arrayidx15.5.4, i32 0, i64 4
  %100 = load i32* %arrayidx16.5.4, align 4
  %mul.5.4 = mul nsw i32 %99, %100
  %arrayidx20.5.4 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 4
  %101 = load i32* %arrayidx20.5.4, align 4
  %add.5.4 = add nsw i32 %101, %mul.5.4
  store i32 %add.5.4, i32* %arrayidx20.5.4, align 4
  br label %for.inc.5.4

for.inc.5.4:                                      ; preds = %for.inc.4.4
  %arrayidx12.6.4 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 6
  %102 = load i32* %arrayidx12.6.4, align 4
  %arrayidx15.6.4 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.4 = getelementptr inbounds [7 x i32]* %arrayidx15.6.4, i32 0, i64 4
  %103 = load i32* %arrayidx16.6.4, align 4
  %mul.6.4 = mul nsw i32 %102, %103
  %arrayidx20.6.4 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 4
  %104 = load i32* %arrayidx20.6.4, align 4
  %add.6.4 = add nsw i32 %104, %mul.6.4
  store i32 %add.6.4, i32* %arrayidx20.6.4, align 4
  br label %for.inc.6.4

for.inc.6.4:                                      ; preds = %for.inc.5.4
  br label %for.inc21.4

for.inc21.4:                                      ; preds = %for.inc.6.4
  %arrayidx5.5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5, align 4
  br label %for.body8.5

for.body8.5:                                      ; preds = %for.inc21.4
  %arrayidx12.545 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 0
  %105 = load i32* %arrayidx12.545, align 4
  %arrayidx16.546 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 5
  %106 = load i32* %arrayidx16.546, align 4
  %mul.547 = mul nsw i32 %105, %106
  %arrayidx20.550 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 5
  %107 = load i32* %arrayidx20.550, align 4
  %add.551 = add nsw i32 %107, %mul.547
  store i32 %add.551, i32* %arrayidx20.550, align 4
  br label %for.inc.552

for.inc.552:                                      ; preds = %for.body8.5
  %arrayidx12.1.5 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 1
  %108 = load i32* %arrayidx12.1.5, align 4
  %arrayidx15.1.5 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.5 = getelementptr inbounds [7 x i32]* %arrayidx15.1.5, i32 0, i64 5
  %109 = load i32* %arrayidx16.1.5, align 4
  %mul.1.5 = mul nsw i32 %108, %109
  %arrayidx20.1.5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 5
  %110 = load i32* %arrayidx20.1.5, align 4
  %add.1.5 = add nsw i32 %110, %mul.1.5
  store i32 %add.1.5, i32* %arrayidx20.1.5, align 4
  br label %for.inc.1.5

for.inc.1.5:                                      ; preds = %for.inc.552
  %arrayidx12.2.5 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 2
  %111 = load i32* %arrayidx12.2.5, align 4
  %arrayidx15.2.5 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.5 = getelementptr inbounds [7 x i32]* %arrayidx15.2.5, i32 0, i64 5
  %112 = load i32* %arrayidx16.2.5, align 4
  %mul.2.5 = mul nsw i32 %111, %112
  %arrayidx20.2.5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 5
  %113 = load i32* %arrayidx20.2.5, align 4
  %add.2.5 = add nsw i32 %113, %mul.2.5
  store i32 %add.2.5, i32* %arrayidx20.2.5, align 4
  br label %for.inc.2.5

for.inc.2.5:                                      ; preds = %for.inc.1.5
  %arrayidx12.3.5 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 3
  %114 = load i32* %arrayidx12.3.5, align 4
  %arrayidx15.3.5 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.5 = getelementptr inbounds [7 x i32]* %arrayidx15.3.5, i32 0, i64 5
  %115 = load i32* %arrayidx16.3.5, align 4
  %mul.3.5 = mul nsw i32 %114, %115
  %arrayidx20.3.5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 5
  %116 = load i32* %arrayidx20.3.5, align 4
  %add.3.5 = add nsw i32 %116, %mul.3.5
  store i32 %add.3.5, i32* %arrayidx20.3.5, align 4
  br label %for.inc.3.5

for.inc.3.5:                                      ; preds = %for.inc.2.5
  %arrayidx12.4.5 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 4
  %117 = load i32* %arrayidx12.4.5, align 4
  %arrayidx15.4.5 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.5 = getelementptr inbounds [7 x i32]* %arrayidx15.4.5, i32 0, i64 5
  %118 = load i32* %arrayidx16.4.5, align 4
  %mul.4.5 = mul nsw i32 %117, %118
  %arrayidx20.4.5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 5
  %119 = load i32* %arrayidx20.4.5, align 4
  %add.4.5 = add nsw i32 %119, %mul.4.5
  store i32 %add.4.5, i32* %arrayidx20.4.5, align 4
  br label %for.inc.4.5

for.inc.4.5:                                      ; preds = %for.inc.3.5
  %arrayidx12.5.5 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 5
  %120 = load i32* %arrayidx12.5.5, align 4
  %arrayidx15.5.5 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.5 = getelementptr inbounds [7 x i32]* %arrayidx15.5.5, i32 0, i64 5
  %121 = load i32* %arrayidx16.5.5, align 4
  %mul.5.5 = mul nsw i32 %120, %121
  %arrayidx20.5.5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 5
  %122 = load i32* %arrayidx20.5.5, align 4
  %add.5.5 = add nsw i32 %122, %mul.5.5
  store i32 %add.5.5, i32* %arrayidx20.5.5, align 4
  br label %for.inc.5.5

for.inc.5.5:                                      ; preds = %for.inc.4.5
  %arrayidx12.6.5 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 6
  %123 = load i32* %arrayidx12.6.5, align 4
  %arrayidx15.6.5 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.5 = getelementptr inbounds [7 x i32]* %arrayidx15.6.5, i32 0, i64 5
  %124 = load i32* %arrayidx16.6.5, align 4
  %mul.6.5 = mul nsw i32 %123, %124
  %arrayidx20.6.5 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 5
  %125 = load i32* %arrayidx20.6.5, align 4
  %add.6.5 = add nsw i32 %125, %mul.6.5
  store i32 %add.6.5, i32* %arrayidx20.6.5, align 4
  br label %for.inc.6.5

for.inc.6.5:                                      ; preds = %for.inc.5.5
  br label %for.inc21.5

for.inc21.5:                                      ; preds = %for.inc.6.5
  %arrayidx5.6 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6, align 4
  br label %for.body8.6

for.body8.6:                                      ; preds = %for.inc21.5
  %arrayidx12.655 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 0
  %126 = load i32* %arrayidx12.655, align 4
  %arrayidx16.656 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 6
  %127 = load i32* %arrayidx16.656, align 4
  %mul.657 = mul nsw i32 %126, %127
  %arrayidx20.660 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 6
  %128 = load i32* %arrayidx20.660, align 4
  %add.661 = add nsw i32 %128, %mul.657
  store i32 %add.661, i32* %arrayidx20.660, align 4
  br label %for.inc.662

for.inc.662:                                      ; preds = %for.body8.6
  %arrayidx12.1.6 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 1
  %129 = load i32* %arrayidx12.1.6, align 4
  %arrayidx15.1.6 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.6 = getelementptr inbounds [7 x i32]* %arrayidx15.1.6, i32 0, i64 6
  %130 = load i32* %arrayidx16.1.6, align 4
  %mul.1.6 = mul nsw i32 %129, %130
  %arrayidx20.1.6 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 6
  %131 = load i32* %arrayidx20.1.6, align 4
  %add.1.6 = add nsw i32 %131, %mul.1.6
  store i32 %add.1.6, i32* %arrayidx20.1.6, align 4
  br label %for.inc.1.6

for.inc.1.6:                                      ; preds = %for.inc.662
  %arrayidx12.2.6 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 2
  %132 = load i32* %arrayidx12.2.6, align 4
  %arrayidx15.2.6 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.6 = getelementptr inbounds [7 x i32]* %arrayidx15.2.6, i32 0, i64 6
  %133 = load i32* %arrayidx16.2.6, align 4
  %mul.2.6 = mul nsw i32 %132, %133
  %arrayidx20.2.6 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 6
  %134 = load i32* %arrayidx20.2.6, align 4
  %add.2.6 = add nsw i32 %134, %mul.2.6
  store i32 %add.2.6, i32* %arrayidx20.2.6, align 4
  br label %for.inc.2.6

for.inc.2.6:                                      ; preds = %for.inc.1.6
  %arrayidx12.3.6 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 3
  %135 = load i32* %arrayidx12.3.6, align 4
  %arrayidx15.3.6 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.6 = getelementptr inbounds [7 x i32]* %arrayidx15.3.6, i32 0, i64 6
  %136 = load i32* %arrayidx16.3.6, align 4
  %mul.3.6 = mul nsw i32 %135, %136
  %arrayidx20.3.6 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 6
  %137 = load i32* %arrayidx20.3.6, align 4
  %add.3.6 = add nsw i32 %137, %mul.3.6
  store i32 %add.3.6, i32* %arrayidx20.3.6, align 4
  br label %for.inc.3.6

for.inc.3.6:                                      ; preds = %for.inc.2.6
  %arrayidx12.4.6 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 4
  %138 = load i32* %arrayidx12.4.6, align 4
  %arrayidx15.4.6 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.6 = getelementptr inbounds [7 x i32]* %arrayidx15.4.6, i32 0, i64 6
  %139 = load i32* %arrayidx16.4.6, align 4
  %mul.4.6 = mul nsw i32 %138, %139
  %arrayidx20.4.6 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 6
  %140 = load i32* %arrayidx20.4.6, align 4
  %add.4.6 = add nsw i32 %140, %mul.4.6
  store i32 %add.4.6, i32* %arrayidx20.4.6, align 4
  br label %for.inc.4.6

for.inc.4.6:                                      ; preds = %for.inc.3.6
  %arrayidx12.5.6 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 5
  %141 = load i32* %arrayidx12.5.6, align 4
  %arrayidx15.5.6 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.6 = getelementptr inbounds [7 x i32]* %arrayidx15.5.6, i32 0, i64 6
  %142 = load i32* %arrayidx16.5.6, align 4
  %mul.5.6 = mul nsw i32 %141, %142
  %arrayidx20.5.6 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 6
  %143 = load i32* %arrayidx20.5.6, align 4
  %add.5.6 = add nsw i32 %143, %mul.5.6
  store i32 %add.5.6, i32* %arrayidx20.5.6, align 4
  br label %for.inc.5.6

for.inc.5.6:                                      ; preds = %for.inc.4.6
  %arrayidx12.6.6 = getelementptr inbounds [7 x i32]* %a, i32 0, i64 6
  %144 = load i32* %arrayidx12.6.6, align 4
  %arrayidx15.6.6 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.6 = getelementptr inbounds [7 x i32]* %arrayidx15.6.6, i32 0, i64 6
  %145 = load i32* %arrayidx16.6.6, align 4
  %mul.6.6 = mul nsw i32 %144, %145
  %arrayidx20.6.6 = getelementptr inbounds [7 x i32]* %c, i32 0, i64 6
  %146 = load i32* %arrayidx20.6.6, align 4
  %add.6.6 = add nsw i32 %146, %mul.6.6
  store i32 %add.6.6, i32* %arrayidx20.6.6, align 4
  br label %for.inc.6.6

for.inc.6.6:                                      ; preds = %for.inc.5.6
  br label %for.inc21.6

for.inc21.6:                                      ; preds = %for.inc.6.6
  br label %for.inc24

for.body3.1:                                      ; preds = %for.inc24
  %arrayidx.164 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx5.165 = getelementptr inbounds [7 x i32]* %arrayidx.164, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.165, align 4
  br label %for.body8.173

for.body8.173:                                    ; preds = %for.body3.1
  %arrayidx11.166 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.167 = getelementptr inbounds [7 x i32]* %arrayidx11.166, i32 0, i64 0
  %147 = load i32* %arrayidx12.167, align 4
  %arrayidx16.168 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 0
  %148 = load i32* %arrayidx16.168, align 4
  %mul.169 = mul nsw i32 %147, %148
  %arrayidx19.170 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.171 = getelementptr inbounds [7 x i32]* %arrayidx19.170, i32 0, i64 0
  %149 = load i32* %arrayidx20.171, align 4
  %add.172 = add nsw i32 %149, %mul.169
  store i32 %add.172, i32* %arrayidx20.171, align 4
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body8.173
  %arrayidx11.1.174 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.1.175 = getelementptr inbounds [7 x i32]* %arrayidx11.1.174, i32 0, i64 1
  %150 = load i32* %arrayidx12.1.175, align 4
  %arrayidx15.1.176 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.177 = getelementptr inbounds [7 x i32]* %arrayidx15.1.176, i32 0, i64 0
  %151 = load i32* %arrayidx16.1.177, align 4
  %mul.1.178 = mul nsw i32 %150, %151
  %arrayidx19.1.179 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.1.180 = getelementptr inbounds [7 x i32]* %arrayidx19.1.179, i32 0, i64 0
  %152 = load i32* %arrayidx20.1.180, align 4
  %add.1.181 = add nsw i32 %152, %mul.1.178
  store i32 %add.1.181, i32* %arrayidx20.1.180, align 4
  br label %for.inc.1.191

for.inc.1.191:                                    ; preds = %for.inc.182
  %arrayidx11.2.183 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.2.184 = getelementptr inbounds [7 x i32]* %arrayidx11.2.183, i32 0, i64 2
  %153 = load i32* %arrayidx12.2.184, align 4
  %arrayidx15.2.185 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.186 = getelementptr inbounds [7 x i32]* %arrayidx15.2.185, i32 0, i64 0
  %154 = load i32* %arrayidx16.2.186, align 4
  %mul.2.187 = mul nsw i32 %153, %154
  %arrayidx19.2.188 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.2.189 = getelementptr inbounds [7 x i32]* %arrayidx19.2.188, i32 0, i64 0
  %155 = load i32* %arrayidx20.2.189, align 4
  %add.2.190 = add nsw i32 %155, %mul.2.187
  store i32 %add.2.190, i32* %arrayidx20.2.189, align 4
  br label %for.inc.2.1100

for.inc.2.1100:                                   ; preds = %for.inc.1.191
  %arrayidx11.3.192 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.3.193 = getelementptr inbounds [7 x i32]* %arrayidx11.3.192, i32 0, i64 3
  %156 = load i32* %arrayidx12.3.193, align 4
  %arrayidx15.3.194 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.195 = getelementptr inbounds [7 x i32]* %arrayidx15.3.194, i32 0, i64 0
  %157 = load i32* %arrayidx16.3.195, align 4
  %mul.3.196 = mul nsw i32 %156, %157
  %arrayidx19.3.197 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.3.198 = getelementptr inbounds [7 x i32]* %arrayidx19.3.197, i32 0, i64 0
  %158 = load i32* %arrayidx20.3.198, align 4
  %add.3.199 = add nsw i32 %158, %mul.3.196
  store i32 %add.3.199, i32* %arrayidx20.3.198, align 4
  br label %for.inc.3.1109

for.inc.3.1109:                                   ; preds = %for.inc.2.1100
  %arrayidx11.4.1101 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.4.1102 = getelementptr inbounds [7 x i32]* %arrayidx11.4.1101, i32 0, i64 4
  %159 = load i32* %arrayidx12.4.1102, align 4
  %arrayidx15.4.1103 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.1104 = getelementptr inbounds [7 x i32]* %arrayidx15.4.1103, i32 0, i64 0
  %160 = load i32* %arrayidx16.4.1104, align 4
  %mul.4.1105 = mul nsw i32 %159, %160
  %arrayidx19.4.1106 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.4.1107 = getelementptr inbounds [7 x i32]* %arrayidx19.4.1106, i32 0, i64 0
  %161 = load i32* %arrayidx20.4.1107, align 4
  %add.4.1108 = add nsw i32 %161, %mul.4.1105
  store i32 %add.4.1108, i32* %arrayidx20.4.1107, align 4
  br label %for.inc.4.1118

for.inc.4.1118:                                   ; preds = %for.inc.3.1109
  %arrayidx11.5.1110 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.5.1111 = getelementptr inbounds [7 x i32]* %arrayidx11.5.1110, i32 0, i64 5
  %162 = load i32* %arrayidx12.5.1111, align 4
  %arrayidx15.5.1112 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.1113 = getelementptr inbounds [7 x i32]* %arrayidx15.5.1112, i32 0, i64 0
  %163 = load i32* %arrayidx16.5.1113, align 4
  %mul.5.1114 = mul nsw i32 %162, %163
  %arrayidx19.5.1115 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.5.1116 = getelementptr inbounds [7 x i32]* %arrayidx19.5.1115, i32 0, i64 0
  %164 = load i32* %arrayidx20.5.1116, align 4
  %add.5.1117 = add nsw i32 %164, %mul.5.1114
  store i32 %add.5.1117, i32* %arrayidx20.5.1116, align 4
  br label %for.inc.5.1127

for.inc.5.1127:                                   ; preds = %for.inc.4.1118
  %arrayidx11.6.1119 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.6.1120 = getelementptr inbounds [7 x i32]* %arrayidx11.6.1119, i32 0, i64 6
  %165 = load i32* %arrayidx12.6.1120, align 4
  %arrayidx15.6.1121 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.1122 = getelementptr inbounds [7 x i32]* %arrayidx15.6.1121, i32 0, i64 0
  %166 = load i32* %arrayidx16.6.1122, align 4
  %mul.6.1123 = mul nsw i32 %165, %166
  %arrayidx19.6.1124 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.6.1125 = getelementptr inbounds [7 x i32]* %arrayidx19.6.1124, i32 0, i64 0
  %167 = load i32* %arrayidx20.6.1125, align 4
  %add.6.1126 = add nsw i32 %167, %mul.6.1123
  store i32 %add.6.1126, i32* %arrayidx20.6.1125, align 4
  br label %for.inc.6.1128

for.inc.6.1128:                                   ; preds = %for.inc.5.1127
  br label %for.inc21.1129

for.inc21.1129:                                   ; preds = %for.inc.6.1128
  %arrayidx.1.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [7 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  br label %for.body8.1.1

for.body8.1.1:                                    ; preds = %for.inc21.1129
  %arrayidx11.14.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [7 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %168 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 1
  %169 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %168, %169
  %arrayidx19.19.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [7 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %170 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %170, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  br label %for.inc.112.1

for.inc.112.1:                                    ; preds = %for.body8.1.1
  %arrayidx11.1.1.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [7 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %171 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [7 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %172 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %171, %172
  %arrayidx19.1.1.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [7 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %173 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %173, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  br label %for.inc.1.1.1

for.inc.1.1.1:                                    ; preds = %for.inc.112.1
  %arrayidx11.2.1.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.2.1.1 = getelementptr inbounds [7 x i32]* %arrayidx11.2.1.1, i32 0, i64 2
  %174 = load i32* %arrayidx12.2.1.1, align 4
  %arrayidx15.2.1.1 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.1.1 = getelementptr inbounds [7 x i32]* %arrayidx15.2.1.1, i32 0, i64 1
  %175 = load i32* %arrayidx16.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %174, %175
  %arrayidx19.2.1.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.2.1.1 = getelementptr inbounds [7 x i32]* %arrayidx19.2.1.1, i32 0, i64 1
  %176 = load i32* %arrayidx20.2.1.1, align 4
  %add.2.1.1 = add nsw i32 %176, %mul.2.1.1
  store i32 %add.2.1.1, i32* %arrayidx20.2.1.1, align 4
  br label %for.inc.2.1.1

for.inc.2.1.1:                                    ; preds = %for.inc.1.1.1
  %arrayidx11.3.1.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.3.1.1 = getelementptr inbounds [7 x i32]* %arrayidx11.3.1.1, i32 0, i64 3
  %177 = load i32* %arrayidx12.3.1.1, align 4
  %arrayidx15.3.1.1 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.1.1 = getelementptr inbounds [7 x i32]* %arrayidx15.3.1.1, i32 0, i64 1
  %178 = load i32* %arrayidx16.3.1.1, align 4
  %mul.3.1.1 = mul nsw i32 %177, %178
  %arrayidx19.3.1.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.3.1.1 = getelementptr inbounds [7 x i32]* %arrayidx19.3.1.1, i32 0, i64 1
  %179 = load i32* %arrayidx20.3.1.1, align 4
  %add.3.1.1 = add nsw i32 %179, %mul.3.1.1
  store i32 %add.3.1.1, i32* %arrayidx20.3.1.1, align 4
  br label %for.inc.3.1.1

for.inc.3.1.1:                                    ; preds = %for.inc.2.1.1
  %arrayidx11.4.1.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.4.1.1 = getelementptr inbounds [7 x i32]* %arrayidx11.4.1.1, i32 0, i64 4
  %180 = load i32* %arrayidx12.4.1.1, align 4
  %arrayidx15.4.1.1 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.1.1 = getelementptr inbounds [7 x i32]* %arrayidx15.4.1.1, i32 0, i64 1
  %181 = load i32* %arrayidx16.4.1.1, align 4
  %mul.4.1.1 = mul nsw i32 %180, %181
  %arrayidx19.4.1.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.4.1.1 = getelementptr inbounds [7 x i32]* %arrayidx19.4.1.1, i32 0, i64 1
  %182 = load i32* %arrayidx20.4.1.1, align 4
  %add.4.1.1 = add nsw i32 %182, %mul.4.1.1
  store i32 %add.4.1.1, i32* %arrayidx20.4.1.1, align 4
  br label %for.inc.4.1.1

for.inc.4.1.1:                                    ; preds = %for.inc.3.1.1
  %arrayidx11.5.1.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.5.1.1 = getelementptr inbounds [7 x i32]* %arrayidx11.5.1.1, i32 0, i64 5
  %183 = load i32* %arrayidx12.5.1.1, align 4
  %arrayidx15.5.1.1 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.1.1 = getelementptr inbounds [7 x i32]* %arrayidx15.5.1.1, i32 0, i64 1
  %184 = load i32* %arrayidx16.5.1.1, align 4
  %mul.5.1.1 = mul nsw i32 %183, %184
  %arrayidx19.5.1.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.5.1.1 = getelementptr inbounds [7 x i32]* %arrayidx19.5.1.1, i32 0, i64 1
  %185 = load i32* %arrayidx20.5.1.1, align 4
  %add.5.1.1 = add nsw i32 %185, %mul.5.1.1
  store i32 %add.5.1.1, i32* %arrayidx20.5.1.1, align 4
  br label %for.inc.5.1.1

for.inc.5.1.1:                                    ; preds = %for.inc.4.1.1
  %arrayidx11.6.1.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.6.1.1 = getelementptr inbounds [7 x i32]* %arrayidx11.6.1.1, i32 0, i64 6
  %186 = load i32* %arrayidx12.6.1.1, align 4
  %arrayidx15.6.1.1 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.1.1 = getelementptr inbounds [7 x i32]* %arrayidx15.6.1.1, i32 0, i64 1
  %187 = load i32* %arrayidx16.6.1.1, align 4
  %mul.6.1.1 = mul nsw i32 %186, %187
  %arrayidx19.6.1.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.6.1.1 = getelementptr inbounds [7 x i32]* %arrayidx19.6.1.1, i32 0, i64 1
  %188 = load i32* %arrayidx20.6.1.1, align 4
  %add.6.1.1 = add nsw i32 %188, %mul.6.1.1
  store i32 %add.6.1.1, i32* %arrayidx20.6.1.1, align 4
  br label %for.inc.6.1.1

for.inc.6.1.1:                                    ; preds = %for.inc.5.1.1
  br label %for.inc21.1.1

for.inc21.1.1:                                    ; preds = %for.inc.6.1.1
  %arrayidx.2.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [7 x i32]* %arrayidx.2.1, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.1, align 4
  br label %for.body8.2.1

for.body8.2.1:                                    ; preds = %for.inc21.1.1
  %arrayidx11.214.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.215.1 = getelementptr inbounds [7 x i32]* %arrayidx11.214.1, i32 0, i64 0
  %189 = load i32* %arrayidx12.215.1, align 4
  %arrayidx16.216.1 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 2
  %190 = load i32* %arrayidx16.216.1, align 4
  %mul.217.1 = mul nsw i32 %189, %190
  %arrayidx19.219.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.220.1 = getelementptr inbounds [7 x i32]* %arrayidx19.219.1, i32 0, i64 2
  %191 = load i32* %arrayidx20.220.1, align 4
  %add.221.1 = add nsw i32 %191, %mul.217.1
  store i32 %add.221.1, i32* %arrayidx20.220.1, align 4
  br label %for.inc.222.1

for.inc.222.1:                                    ; preds = %for.body8.2.1
  %arrayidx11.1.2.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.1.2.1 = getelementptr inbounds [7 x i32]* %arrayidx11.1.2.1, i32 0, i64 1
  %192 = load i32* %arrayidx12.1.2.1, align 4
  %arrayidx15.1.2.1 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.2.1 = getelementptr inbounds [7 x i32]* %arrayidx15.1.2.1, i32 0, i64 2
  %193 = load i32* %arrayidx16.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %192, %193
  %arrayidx19.1.2.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.1.2.1 = getelementptr inbounds [7 x i32]* %arrayidx19.1.2.1, i32 0, i64 2
  %194 = load i32* %arrayidx20.1.2.1, align 4
  %add.1.2.1 = add nsw i32 %194, %mul.1.2.1
  store i32 %add.1.2.1, i32* %arrayidx20.1.2.1, align 4
  br label %for.inc.1.2.1

for.inc.1.2.1:                                    ; preds = %for.inc.222.1
  %arrayidx11.2.2.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.2.2.1 = getelementptr inbounds [7 x i32]* %arrayidx11.2.2.1, i32 0, i64 2
  %195 = load i32* %arrayidx12.2.2.1, align 4
  %arrayidx15.2.2.1 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.2.1 = getelementptr inbounds [7 x i32]* %arrayidx15.2.2.1, i32 0, i64 2
  %196 = load i32* %arrayidx16.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %195, %196
  %arrayidx19.2.2.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.2.2.1 = getelementptr inbounds [7 x i32]* %arrayidx19.2.2.1, i32 0, i64 2
  %197 = load i32* %arrayidx20.2.2.1, align 4
  %add.2.2.1 = add nsw i32 %197, %mul.2.2.1
  store i32 %add.2.2.1, i32* %arrayidx20.2.2.1, align 4
  br label %for.inc.2.2.1

for.inc.2.2.1:                                    ; preds = %for.inc.1.2.1
  %arrayidx11.3.2.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.3.2.1 = getelementptr inbounds [7 x i32]* %arrayidx11.3.2.1, i32 0, i64 3
  %198 = load i32* %arrayidx12.3.2.1, align 4
  %arrayidx15.3.2.1 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.2.1 = getelementptr inbounds [7 x i32]* %arrayidx15.3.2.1, i32 0, i64 2
  %199 = load i32* %arrayidx16.3.2.1, align 4
  %mul.3.2.1 = mul nsw i32 %198, %199
  %arrayidx19.3.2.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.3.2.1 = getelementptr inbounds [7 x i32]* %arrayidx19.3.2.1, i32 0, i64 2
  %200 = load i32* %arrayidx20.3.2.1, align 4
  %add.3.2.1 = add nsw i32 %200, %mul.3.2.1
  store i32 %add.3.2.1, i32* %arrayidx20.3.2.1, align 4
  br label %for.inc.3.2.1

for.inc.3.2.1:                                    ; preds = %for.inc.2.2.1
  %arrayidx11.4.2.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.4.2.1 = getelementptr inbounds [7 x i32]* %arrayidx11.4.2.1, i32 0, i64 4
  %201 = load i32* %arrayidx12.4.2.1, align 4
  %arrayidx15.4.2.1 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.2.1 = getelementptr inbounds [7 x i32]* %arrayidx15.4.2.1, i32 0, i64 2
  %202 = load i32* %arrayidx16.4.2.1, align 4
  %mul.4.2.1 = mul nsw i32 %201, %202
  %arrayidx19.4.2.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.4.2.1 = getelementptr inbounds [7 x i32]* %arrayidx19.4.2.1, i32 0, i64 2
  %203 = load i32* %arrayidx20.4.2.1, align 4
  %add.4.2.1 = add nsw i32 %203, %mul.4.2.1
  store i32 %add.4.2.1, i32* %arrayidx20.4.2.1, align 4
  br label %for.inc.4.2.1

for.inc.4.2.1:                                    ; preds = %for.inc.3.2.1
  %arrayidx11.5.2.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.5.2.1 = getelementptr inbounds [7 x i32]* %arrayidx11.5.2.1, i32 0, i64 5
  %204 = load i32* %arrayidx12.5.2.1, align 4
  %arrayidx15.5.2.1 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.2.1 = getelementptr inbounds [7 x i32]* %arrayidx15.5.2.1, i32 0, i64 2
  %205 = load i32* %arrayidx16.5.2.1, align 4
  %mul.5.2.1 = mul nsw i32 %204, %205
  %arrayidx19.5.2.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.5.2.1 = getelementptr inbounds [7 x i32]* %arrayidx19.5.2.1, i32 0, i64 2
  %206 = load i32* %arrayidx20.5.2.1, align 4
  %add.5.2.1 = add nsw i32 %206, %mul.5.2.1
  store i32 %add.5.2.1, i32* %arrayidx20.5.2.1, align 4
  br label %for.inc.5.2.1

for.inc.5.2.1:                                    ; preds = %for.inc.4.2.1
  %arrayidx11.6.2.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.6.2.1 = getelementptr inbounds [7 x i32]* %arrayidx11.6.2.1, i32 0, i64 6
  %207 = load i32* %arrayidx12.6.2.1, align 4
  %arrayidx15.6.2.1 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.2.1 = getelementptr inbounds [7 x i32]* %arrayidx15.6.2.1, i32 0, i64 2
  %208 = load i32* %arrayidx16.6.2.1, align 4
  %mul.6.2.1 = mul nsw i32 %207, %208
  %arrayidx19.6.2.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.6.2.1 = getelementptr inbounds [7 x i32]* %arrayidx19.6.2.1, i32 0, i64 2
  %209 = load i32* %arrayidx20.6.2.1, align 4
  %add.6.2.1 = add nsw i32 %209, %mul.6.2.1
  store i32 %add.6.2.1, i32* %arrayidx20.6.2.1, align 4
  br label %for.inc.6.2.1

for.inc.6.2.1:                                    ; preds = %for.inc.5.2.1
  br label %for.inc21.2.1

for.inc21.2.1:                                    ; preds = %for.inc.6.2.1
  %arrayidx.3.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx5.3.1 = getelementptr inbounds [7 x i32]* %arrayidx.3.1, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.1, align 4
  br label %for.body8.3.1

for.body8.3.1:                                    ; preds = %for.inc21.2.1
  %arrayidx11.324.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.325.1 = getelementptr inbounds [7 x i32]* %arrayidx11.324.1, i32 0, i64 0
  %210 = load i32* %arrayidx12.325.1, align 4
  %arrayidx16.326.1 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 3
  %211 = load i32* %arrayidx16.326.1, align 4
  %mul.327.1 = mul nsw i32 %210, %211
  %arrayidx19.329.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.330.1 = getelementptr inbounds [7 x i32]* %arrayidx19.329.1, i32 0, i64 3
  %212 = load i32* %arrayidx20.330.1, align 4
  %add.331.1 = add nsw i32 %212, %mul.327.1
  store i32 %add.331.1, i32* %arrayidx20.330.1, align 4
  br label %for.inc.332.1

for.inc.332.1:                                    ; preds = %for.body8.3.1
  %arrayidx11.1.3.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.1.3.1 = getelementptr inbounds [7 x i32]* %arrayidx11.1.3.1, i32 0, i64 1
  %213 = load i32* %arrayidx12.1.3.1, align 4
  %arrayidx15.1.3.1 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.3.1 = getelementptr inbounds [7 x i32]* %arrayidx15.1.3.1, i32 0, i64 3
  %214 = load i32* %arrayidx16.1.3.1, align 4
  %mul.1.3.1 = mul nsw i32 %213, %214
  %arrayidx19.1.3.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.1.3.1 = getelementptr inbounds [7 x i32]* %arrayidx19.1.3.1, i32 0, i64 3
  %215 = load i32* %arrayidx20.1.3.1, align 4
  %add.1.3.1 = add nsw i32 %215, %mul.1.3.1
  store i32 %add.1.3.1, i32* %arrayidx20.1.3.1, align 4
  br label %for.inc.1.3.1

for.inc.1.3.1:                                    ; preds = %for.inc.332.1
  %arrayidx11.2.3.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.2.3.1 = getelementptr inbounds [7 x i32]* %arrayidx11.2.3.1, i32 0, i64 2
  %216 = load i32* %arrayidx12.2.3.1, align 4
  %arrayidx15.2.3.1 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.3.1 = getelementptr inbounds [7 x i32]* %arrayidx15.2.3.1, i32 0, i64 3
  %217 = load i32* %arrayidx16.2.3.1, align 4
  %mul.2.3.1 = mul nsw i32 %216, %217
  %arrayidx19.2.3.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.2.3.1 = getelementptr inbounds [7 x i32]* %arrayidx19.2.3.1, i32 0, i64 3
  %218 = load i32* %arrayidx20.2.3.1, align 4
  %add.2.3.1 = add nsw i32 %218, %mul.2.3.1
  store i32 %add.2.3.1, i32* %arrayidx20.2.3.1, align 4
  br label %for.inc.2.3.1

for.inc.2.3.1:                                    ; preds = %for.inc.1.3.1
  %arrayidx11.3.3.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.3.3.1 = getelementptr inbounds [7 x i32]* %arrayidx11.3.3.1, i32 0, i64 3
  %219 = load i32* %arrayidx12.3.3.1, align 4
  %arrayidx15.3.3.1 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.3.1 = getelementptr inbounds [7 x i32]* %arrayidx15.3.3.1, i32 0, i64 3
  %220 = load i32* %arrayidx16.3.3.1, align 4
  %mul.3.3.1 = mul nsw i32 %219, %220
  %arrayidx19.3.3.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.3.3.1 = getelementptr inbounds [7 x i32]* %arrayidx19.3.3.1, i32 0, i64 3
  %221 = load i32* %arrayidx20.3.3.1, align 4
  %add.3.3.1 = add nsw i32 %221, %mul.3.3.1
  store i32 %add.3.3.1, i32* %arrayidx20.3.3.1, align 4
  br label %for.inc.3.3.1

for.inc.3.3.1:                                    ; preds = %for.inc.2.3.1
  %arrayidx11.4.3.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.4.3.1 = getelementptr inbounds [7 x i32]* %arrayidx11.4.3.1, i32 0, i64 4
  %222 = load i32* %arrayidx12.4.3.1, align 4
  %arrayidx15.4.3.1 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.3.1 = getelementptr inbounds [7 x i32]* %arrayidx15.4.3.1, i32 0, i64 3
  %223 = load i32* %arrayidx16.4.3.1, align 4
  %mul.4.3.1 = mul nsw i32 %222, %223
  %arrayidx19.4.3.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.4.3.1 = getelementptr inbounds [7 x i32]* %arrayidx19.4.3.1, i32 0, i64 3
  %224 = load i32* %arrayidx20.4.3.1, align 4
  %add.4.3.1 = add nsw i32 %224, %mul.4.3.1
  store i32 %add.4.3.1, i32* %arrayidx20.4.3.1, align 4
  br label %for.inc.4.3.1

for.inc.4.3.1:                                    ; preds = %for.inc.3.3.1
  %arrayidx11.5.3.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.5.3.1 = getelementptr inbounds [7 x i32]* %arrayidx11.5.3.1, i32 0, i64 5
  %225 = load i32* %arrayidx12.5.3.1, align 4
  %arrayidx15.5.3.1 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.3.1 = getelementptr inbounds [7 x i32]* %arrayidx15.5.3.1, i32 0, i64 3
  %226 = load i32* %arrayidx16.5.3.1, align 4
  %mul.5.3.1 = mul nsw i32 %225, %226
  %arrayidx19.5.3.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.5.3.1 = getelementptr inbounds [7 x i32]* %arrayidx19.5.3.1, i32 0, i64 3
  %227 = load i32* %arrayidx20.5.3.1, align 4
  %add.5.3.1 = add nsw i32 %227, %mul.5.3.1
  store i32 %add.5.3.1, i32* %arrayidx20.5.3.1, align 4
  br label %for.inc.5.3.1

for.inc.5.3.1:                                    ; preds = %for.inc.4.3.1
  %arrayidx11.6.3.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.6.3.1 = getelementptr inbounds [7 x i32]* %arrayidx11.6.3.1, i32 0, i64 6
  %228 = load i32* %arrayidx12.6.3.1, align 4
  %arrayidx15.6.3.1 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.3.1 = getelementptr inbounds [7 x i32]* %arrayidx15.6.3.1, i32 0, i64 3
  %229 = load i32* %arrayidx16.6.3.1, align 4
  %mul.6.3.1 = mul nsw i32 %228, %229
  %arrayidx19.6.3.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.6.3.1 = getelementptr inbounds [7 x i32]* %arrayidx19.6.3.1, i32 0, i64 3
  %230 = load i32* %arrayidx20.6.3.1, align 4
  %add.6.3.1 = add nsw i32 %230, %mul.6.3.1
  store i32 %add.6.3.1, i32* %arrayidx20.6.3.1, align 4
  br label %for.inc.6.3.1

for.inc.6.3.1:                                    ; preds = %for.inc.5.3.1
  br label %for.inc21.3.1

for.inc21.3.1:                                    ; preds = %for.inc.6.3.1
  %arrayidx.4.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx5.4.1 = getelementptr inbounds [7 x i32]* %arrayidx.4.1, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.1, align 4
  br label %for.body8.4.1

for.body8.4.1:                                    ; preds = %for.inc21.3.1
  %arrayidx11.434.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.435.1 = getelementptr inbounds [7 x i32]* %arrayidx11.434.1, i32 0, i64 0
  %231 = load i32* %arrayidx12.435.1, align 4
  %arrayidx16.436.1 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 4
  %232 = load i32* %arrayidx16.436.1, align 4
  %mul.437.1 = mul nsw i32 %231, %232
  %arrayidx19.439.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.440.1 = getelementptr inbounds [7 x i32]* %arrayidx19.439.1, i32 0, i64 4
  %233 = load i32* %arrayidx20.440.1, align 4
  %add.441.1 = add nsw i32 %233, %mul.437.1
  store i32 %add.441.1, i32* %arrayidx20.440.1, align 4
  br label %for.inc.442.1

for.inc.442.1:                                    ; preds = %for.body8.4.1
  %arrayidx11.1.4.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.1.4.1 = getelementptr inbounds [7 x i32]* %arrayidx11.1.4.1, i32 0, i64 1
  %234 = load i32* %arrayidx12.1.4.1, align 4
  %arrayidx15.1.4.1 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.4.1 = getelementptr inbounds [7 x i32]* %arrayidx15.1.4.1, i32 0, i64 4
  %235 = load i32* %arrayidx16.1.4.1, align 4
  %mul.1.4.1 = mul nsw i32 %234, %235
  %arrayidx19.1.4.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.1.4.1 = getelementptr inbounds [7 x i32]* %arrayidx19.1.4.1, i32 0, i64 4
  %236 = load i32* %arrayidx20.1.4.1, align 4
  %add.1.4.1 = add nsw i32 %236, %mul.1.4.1
  store i32 %add.1.4.1, i32* %arrayidx20.1.4.1, align 4
  br label %for.inc.1.4.1

for.inc.1.4.1:                                    ; preds = %for.inc.442.1
  %arrayidx11.2.4.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.2.4.1 = getelementptr inbounds [7 x i32]* %arrayidx11.2.4.1, i32 0, i64 2
  %237 = load i32* %arrayidx12.2.4.1, align 4
  %arrayidx15.2.4.1 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.4.1 = getelementptr inbounds [7 x i32]* %arrayidx15.2.4.1, i32 0, i64 4
  %238 = load i32* %arrayidx16.2.4.1, align 4
  %mul.2.4.1 = mul nsw i32 %237, %238
  %arrayidx19.2.4.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.2.4.1 = getelementptr inbounds [7 x i32]* %arrayidx19.2.4.1, i32 0, i64 4
  %239 = load i32* %arrayidx20.2.4.1, align 4
  %add.2.4.1 = add nsw i32 %239, %mul.2.4.1
  store i32 %add.2.4.1, i32* %arrayidx20.2.4.1, align 4
  br label %for.inc.2.4.1

for.inc.2.4.1:                                    ; preds = %for.inc.1.4.1
  %arrayidx11.3.4.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.3.4.1 = getelementptr inbounds [7 x i32]* %arrayidx11.3.4.1, i32 0, i64 3
  %240 = load i32* %arrayidx12.3.4.1, align 4
  %arrayidx15.3.4.1 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.4.1 = getelementptr inbounds [7 x i32]* %arrayidx15.3.4.1, i32 0, i64 4
  %241 = load i32* %arrayidx16.3.4.1, align 4
  %mul.3.4.1 = mul nsw i32 %240, %241
  %arrayidx19.3.4.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.3.4.1 = getelementptr inbounds [7 x i32]* %arrayidx19.3.4.1, i32 0, i64 4
  %242 = load i32* %arrayidx20.3.4.1, align 4
  %add.3.4.1 = add nsw i32 %242, %mul.3.4.1
  store i32 %add.3.4.1, i32* %arrayidx20.3.4.1, align 4
  br label %for.inc.3.4.1

for.inc.3.4.1:                                    ; preds = %for.inc.2.4.1
  %arrayidx11.4.4.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.4.4.1 = getelementptr inbounds [7 x i32]* %arrayidx11.4.4.1, i32 0, i64 4
  %243 = load i32* %arrayidx12.4.4.1, align 4
  %arrayidx15.4.4.1 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.4.1 = getelementptr inbounds [7 x i32]* %arrayidx15.4.4.1, i32 0, i64 4
  %244 = load i32* %arrayidx16.4.4.1, align 4
  %mul.4.4.1 = mul nsw i32 %243, %244
  %arrayidx19.4.4.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.4.4.1 = getelementptr inbounds [7 x i32]* %arrayidx19.4.4.1, i32 0, i64 4
  %245 = load i32* %arrayidx20.4.4.1, align 4
  %add.4.4.1 = add nsw i32 %245, %mul.4.4.1
  store i32 %add.4.4.1, i32* %arrayidx20.4.4.1, align 4
  br label %for.inc.4.4.1

for.inc.4.4.1:                                    ; preds = %for.inc.3.4.1
  %arrayidx11.5.4.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.5.4.1 = getelementptr inbounds [7 x i32]* %arrayidx11.5.4.1, i32 0, i64 5
  %246 = load i32* %arrayidx12.5.4.1, align 4
  %arrayidx15.5.4.1 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.4.1 = getelementptr inbounds [7 x i32]* %arrayidx15.5.4.1, i32 0, i64 4
  %247 = load i32* %arrayidx16.5.4.1, align 4
  %mul.5.4.1 = mul nsw i32 %246, %247
  %arrayidx19.5.4.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.5.4.1 = getelementptr inbounds [7 x i32]* %arrayidx19.5.4.1, i32 0, i64 4
  %248 = load i32* %arrayidx20.5.4.1, align 4
  %add.5.4.1 = add nsw i32 %248, %mul.5.4.1
  store i32 %add.5.4.1, i32* %arrayidx20.5.4.1, align 4
  br label %for.inc.5.4.1

for.inc.5.4.1:                                    ; preds = %for.inc.4.4.1
  %arrayidx11.6.4.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.6.4.1 = getelementptr inbounds [7 x i32]* %arrayidx11.6.4.1, i32 0, i64 6
  %249 = load i32* %arrayidx12.6.4.1, align 4
  %arrayidx15.6.4.1 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.4.1 = getelementptr inbounds [7 x i32]* %arrayidx15.6.4.1, i32 0, i64 4
  %250 = load i32* %arrayidx16.6.4.1, align 4
  %mul.6.4.1 = mul nsw i32 %249, %250
  %arrayidx19.6.4.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.6.4.1 = getelementptr inbounds [7 x i32]* %arrayidx19.6.4.1, i32 0, i64 4
  %251 = load i32* %arrayidx20.6.4.1, align 4
  %add.6.4.1 = add nsw i32 %251, %mul.6.4.1
  store i32 %add.6.4.1, i32* %arrayidx20.6.4.1, align 4
  br label %for.inc.6.4.1

for.inc.6.4.1:                                    ; preds = %for.inc.5.4.1
  br label %for.inc21.4.1

for.inc21.4.1:                                    ; preds = %for.inc.6.4.1
  %arrayidx.5.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx5.5.1 = getelementptr inbounds [7 x i32]* %arrayidx.5.1, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.1, align 4
  br label %for.body8.5.1

for.body8.5.1:                                    ; preds = %for.inc21.4.1
  %arrayidx11.544.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.545.1 = getelementptr inbounds [7 x i32]* %arrayidx11.544.1, i32 0, i64 0
  %252 = load i32* %arrayidx12.545.1, align 4
  %arrayidx16.546.1 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 5
  %253 = load i32* %arrayidx16.546.1, align 4
  %mul.547.1 = mul nsw i32 %252, %253
  %arrayidx19.549.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.550.1 = getelementptr inbounds [7 x i32]* %arrayidx19.549.1, i32 0, i64 5
  %254 = load i32* %arrayidx20.550.1, align 4
  %add.551.1 = add nsw i32 %254, %mul.547.1
  store i32 %add.551.1, i32* %arrayidx20.550.1, align 4
  br label %for.inc.552.1

for.inc.552.1:                                    ; preds = %for.body8.5.1
  %arrayidx11.1.5.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.1.5.1 = getelementptr inbounds [7 x i32]* %arrayidx11.1.5.1, i32 0, i64 1
  %255 = load i32* %arrayidx12.1.5.1, align 4
  %arrayidx15.1.5.1 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.5.1 = getelementptr inbounds [7 x i32]* %arrayidx15.1.5.1, i32 0, i64 5
  %256 = load i32* %arrayidx16.1.5.1, align 4
  %mul.1.5.1 = mul nsw i32 %255, %256
  %arrayidx19.1.5.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.1.5.1 = getelementptr inbounds [7 x i32]* %arrayidx19.1.5.1, i32 0, i64 5
  %257 = load i32* %arrayidx20.1.5.1, align 4
  %add.1.5.1 = add nsw i32 %257, %mul.1.5.1
  store i32 %add.1.5.1, i32* %arrayidx20.1.5.1, align 4
  br label %for.inc.1.5.1

for.inc.1.5.1:                                    ; preds = %for.inc.552.1
  %arrayidx11.2.5.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.2.5.1 = getelementptr inbounds [7 x i32]* %arrayidx11.2.5.1, i32 0, i64 2
  %258 = load i32* %arrayidx12.2.5.1, align 4
  %arrayidx15.2.5.1 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.5.1 = getelementptr inbounds [7 x i32]* %arrayidx15.2.5.1, i32 0, i64 5
  %259 = load i32* %arrayidx16.2.5.1, align 4
  %mul.2.5.1 = mul nsw i32 %258, %259
  %arrayidx19.2.5.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.2.5.1 = getelementptr inbounds [7 x i32]* %arrayidx19.2.5.1, i32 0, i64 5
  %260 = load i32* %arrayidx20.2.5.1, align 4
  %add.2.5.1 = add nsw i32 %260, %mul.2.5.1
  store i32 %add.2.5.1, i32* %arrayidx20.2.5.1, align 4
  br label %for.inc.2.5.1

for.inc.2.5.1:                                    ; preds = %for.inc.1.5.1
  %arrayidx11.3.5.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.3.5.1 = getelementptr inbounds [7 x i32]* %arrayidx11.3.5.1, i32 0, i64 3
  %261 = load i32* %arrayidx12.3.5.1, align 4
  %arrayidx15.3.5.1 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.5.1 = getelementptr inbounds [7 x i32]* %arrayidx15.3.5.1, i32 0, i64 5
  %262 = load i32* %arrayidx16.3.5.1, align 4
  %mul.3.5.1 = mul nsw i32 %261, %262
  %arrayidx19.3.5.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.3.5.1 = getelementptr inbounds [7 x i32]* %arrayidx19.3.5.1, i32 0, i64 5
  %263 = load i32* %arrayidx20.3.5.1, align 4
  %add.3.5.1 = add nsw i32 %263, %mul.3.5.1
  store i32 %add.3.5.1, i32* %arrayidx20.3.5.1, align 4
  br label %for.inc.3.5.1

for.inc.3.5.1:                                    ; preds = %for.inc.2.5.1
  %arrayidx11.4.5.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.4.5.1 = getelementptr inbounds [7 x i32]* %arrayidx11.4.5.1, i32 0, i64 4
  %264 = load i32* %arrayidx12.4.5.1, align 4
  %arrayidx15.4.5.1 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.5.1 = getelementptr inbounds [7 x i32]* %arrayidx15.4.5.1, i32 0, i64 5
  %265 = load i32* %arrayidx16.4.5.1, align 4
  %mul.4.5.1 = mul nsw i32 %264, %265
  %arrayidx19.4.5.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.4.5.1 = getelementptr inbounds [7 x i32]* %arrayidx19.4.5.1, i32 0, i64 5
  %266 = load i32* %arrayidx20.4.5.1, align 4
  %add.4.5.1 = add nsw i32 %266, %mul.4.5.1
  store i32 %add.4.5.1, i32* %arrayidx20.4.5.1, align 4
  br label %for.inc.4.5.1

for.inc.4.5.1:                                    ; preds = %for.inc.3.5.1
  %arrayidx11.5.5.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.5.5.1 = getelementptr inbounds [7 x i32]* %arrayidx11.5.5.1, i32 0, i64 5
  %267 = load i32* %arrayidx12.5.5.1, align 4
  %arrayidx15.5.5.1 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.5.1 = getelementptr inbounds [7 x i32]* %arrayidx15.5.5.1, i32 0, i64 5
  %268 = load i32* %arrayidx16.5.5.1, align 4
  %mul.5.5.1 = mul nsw i32 %267, %268
  %arrayidx19.5.5.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.5.5.1 = getelementptr inbounds [7 x i32]* %arrayidx19.5.5.1, i32 0, i64 5
  %269 = load i32* %arrayidx20.5.5.1, align 4
  %add.5.5.1 = add nsw i32 %269, %mul.5.5.1
  store i32 %add.5.5.1, i32* %arrayidx20.5.5.1, align 4
  br label %for.inc.5.5.1

for.inc.5.5.1:                                    ; preds = %for.inc.4.5.1
  %arrayidx11.6.5.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.6.5.1 = getelementptr inbounds [7 x i32]* %arrayidx11.6.5.1, i32 0, i64 6
  %270 = load i32* %arrayidx12.6.5.1, align 4
  %arrayidx15.6.5.1 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.5.1 = getelementptr inbounds [7 x i32]* %arrayidx15.6.5.1, i32 0, i64 5
  %271 = load i32* %arrayidx16.6.5.1, align 4
  %mul.6.5.1 = mul nsw i32 %270, %271
  %arrayidx19.6.5.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.6.5.1 = getelementptr inbounds [7 x i32]* %arrayidx19.6.5.1, i32 0, i64 5
  %272 = load i32* %arrayidx20.6.5.1, align 4
  %add.6.5.1 = add nsw i32 %272, %mul.6.5.1
  store i32 %add.6.5.1, i32* %arrayidx20.6.5.1, align 4
  br label %for.inc.6.5.1

for.inc.6.5.1:                                    ; preds = %for.inc.5.5.1
  br label %for.inc21.5.1

for.inc21.5.1:                                    ; preds = %for.inc.6.5.1
  %arrayidx.6.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx5.6.1 = getelementptr inbounds [7 x i32]* %arrayidx.6.1, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.1, align 4
  br label %for.body8.6.1

for.body8.6.1:                                    ; preds = %for.inc21.5.1
  %arrayidx11.654.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.655.1 = getelementptr inbounds [7 x i32]* %arrayidx11.654.1, i32 0, i64 0
  %273 = load i32* %arrayidx12.655.1, align 4
  %arrayidx16.656.1 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 6
  %274 = load i32* %arrayidx16.656.1, align 4
  %mul.657.1 = mul nsw i32 %273, %274
  %arrayidx19.659.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.660.1 = getelementptr inbounds [7 x i32]* %arrayidx19.659.1, i32 0, i64 6
  %275 = load i32* %arrayidx20.660.1, align 4
  %add.661.1 = add nsw i32 %275, %mul.657.1
  store i32 %add.661.1, i32* %arrayidx20.660.1, align 4
  br label %for.inc.662.1

for.inc.662.1:                                    ; preds = %for.body8.6.1
  %arrayidx11.1.6.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.1.6.1 = getelementptr inbounds [7 x i32]* %arrayidx11.1.6.1, i32 0, i64 1
  %276 = load i32* %arrayidx12.1.6.1, align 4
  %arrayidx15.1.6.1 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.6.1 = getelementptr inbounds [7 x i32]* %arrayidx15.1.6.1, i32 0, i64 6
  %277 = load i32* %arrayidx16.1.6.1, align 4
  %mul.1.6.1 = mul nsw i32 %276, %277
  %arrayidx19.1.6.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.1.6.1 = getelementptr inbounds [7 x i32]* %arrayidx19.1.6.1, i32 0, i64 6
  %278 = load i32* %arrayidx20.1.6.1, align 4
  %add.1.6.1 = add nsw i32 %278, %mul.1.6.1
  store i32 %add.1.6.1, i32* %arrayidx20.1.6.1, align 4
  br label %for.inc.1.6.1

for.inc.1.6.1:                                    ; preds = %for.inc.662.1
  %arrayidx11.2.6.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.2.6.1 = getelementptr inbounds [7 x i32]* %arrayidx11.2.6.1, i32 0, i64 2
  %279 = load i32* %arrayidx12.2.6.1, align 4
  %arrayidx15.2.6.1 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.6.1 = getelementptr inbounds [7 x i32]* %arrayidx15.2.6.1, i32 0, i64 6
  %280 = load i32* %arrayidx16.2.6.1, align 4
  %mul.2.6.1 = mul nsw i32 %279, %280
  %arrayidx19.2.6.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.2.6.1 = getelementptr inbounds [7 x i32]* %arrayidx19.2.6.1, i32 0, i64 6
  %281 = load i32* %arrayidx20.2.6.1, align 4
  %add.2.6.1 = add nsw i32 %281, %mul.2.6.1
  store i32 %add.2.6.1, i32* %arrayidx20.2.6.1, align 4
  br label %for.inc.2.6.1

for.inc.2.6.1:                                    ; preds = %for.inc.1.6.1
  %arrayidx11.3.6.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.3.6.1 = getelementptr inbounds [7 x i32]* %arrayidx11.3.6.1, i32 0, i64 3
  %282 = load i32* %arrayidx12.3.6.1, align 4
  %arrayidx15.3.6.1 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.6.1 = getelementptr inbounds [7 x i32]* %arrayidx15.3.6.1, i32 0, i64 6
  %283 = load i32* %arrayidx16.3.6.1, align 4
  %mul.3.6.1 = mul nsw i32 %282, %283
  %arrayidx19.3.6.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.3.6.1 = getelementptr inbounds [7 x i32]* %arrayidx19.3.6.1, i32 0, i64 6
  %284 = load i32* %arrayidx20.3.6.1, align 4
  %add.3.6.1 = add nsw i32 %284, %mul.3.6.1
  store i32 %add.3.6.1, i32* %arrayidx20.3.6.1, align 4
  br label %for.inc.3.6.1

for.inc.3.6.1:                                    ; preds = %for.inc.2.6.1
  %arrayidx11.4.6.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.4.6.1 = getelementptr inbounds [7 x i32]* %arrayidx11.4.6.1, i32 0, i64 4
  %285 = load i32* %arrayidx12.4.6.1, align 4
  %arrayidx15.4.6.1 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.6.1 = getelementptr inbounds [7 x i32]* %arrayidx15.4.6.1, i32 0, i64 6
  %286 = load i32* %arrayidx16.4.6.1, align 4
  %mul.4.6.1 = mul nsw i32 %285, %286
  %arrayidx19.4.6.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.4.6.1 = getelementptr inbounds [7 x i32]* %arrayidx19.4.6.1, i32 0, i64 6
  %287 = load i32* %arrayidx20.4.6.1, align 4
  %add.4.6.1 = add nsw i32 %287, %mul.4.6.1
  store i32 %add.4.6.1, i32* %arrayidx20.4.6.1, align 4
  br label %for.inc.4.6.1

for.inc.4.6.1:                                    ; preds = %for.inc.3.6.1
  %arrayidx11.5.6.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.5.6.1 = getelementptr inbounds [7 x i32]* %arrayidx11.5.6.1, i32 0, i64 5
  %288 = load i32* %arrayidx12.5.6.1, align 4
  %arrayidx15.5.6.1 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.6.1 = getelementptr inbounds [7 x i32]* %arrayidx15.5.6.1, i32 0, i64 6
  %289 = load i32* %arrayidx16.5.6.1, align 4
  %mul.5.6.1 = mul nsw i32 %288, %289
  %arrayidx19.5.6.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.5.6.1 = getelementptr inbounds [7 x i32]* %arrayidx19.5.6.1, i32 0, i64 6
  %290 = load i32* %arrayidx20.5.6.1, align 4
  %add.5.6.1 = add nsw i32 %290, %mul.5.6.1
  store i32 %add.5.6.1, i32* %arrayidx20.5.6.1, align 4
  br label %for.inc.5.6.1

for.inc.5.6.1:                                    ; preds = %for.inc.4.6.1
  %arrayidx11.6.6.1 = getelementptr inbounds [7 x i32]* %a, i64 1
  %arrayidx12.6.6.1 = getelementptr inbounds [7 x i32]* %arrayidx11.6.6.1, i32 0, i64 6
  %291 = load i32* %arrayidx12.6.6.1, align 4
  %arrayidx15.6.6.1 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.6.1 = getelementptr inbounds [7 x i32]* %arrayidx15.6.6.1, i32 0, i64 6
  %292 = load i32* %arrayidx16.6.6.1, align 4
  %mul.6.6.1 = mul nsw i32 %291, %292
  %arrayidx19.6.6.1 = getelementptr inbounds [7 x i32]* %c, i64 1
  %arrayidx20.6.6.1 = getelementptr inbounds [7 x i32]* %arrayidx19.6.6.1, i32 0, i64 6
  %293 = load i32* %arrayidx20.6.6.1, align 4
  %add.6.6.1 = add nsw i32 %293, %mul.6.6.1
  store i32 %add.6.6.1, i32* %arrayidx20.6.6.1, align 4
  br label %for.inc.6.6.1

for.inc.6.6.1:                                    ; preds = %for.inc.5.6.1
  br label %for.inc21.6.1

for.inc21.6.1:                                    ; preds = %for.inc.6.6.1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.6.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc24.1
  %arrayidx.2130 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx5.2131 = getelementptr inbounds [7 x i32]* %arrayidx.2130, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.2131, align 4
  br label %for.body8.2139

for.body8.2139:                                   ; preds = %for.body3.2
  %arrayidx11.2132 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.2133 = getelementptr inbounds [7 x i32]* %arrayidx11.2132, i32 0, i64 0
  %294 = load i32* %arrayidx12.2133, align 4
  %arrayidx16.2134 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 0
  %295 = load i32* %arrayidx16.2134, align 4
  %mul.2135 = mul nsw i32 %294, %295
  %arrayidx19.2136 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.2137 = getelementptr inbounds [7 x i32]* %arrayidx19.2136, i32 0, i64 0
  %296 = load i32* %arrayidx20.2137, align 4
  %add.2138 = add nsw i32 %296, %mul.2135
  store i32 %add.2138, i32* %arrayidx20.2137, align 4
  br label %for.inc.2148

for.inc.2148:                                     ; preds = %for.body8.2139
  %arrayidx11.1.2140 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.1.2141 = getelementptr inbounds [7 x i32]* %arrayidx11.1.2140, i32 0, i64 1
  %297 = load i32* %arrayidx12.1.2141, align 4
  %arrayidx15.1.2142 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.2143 = getelementptr inbounds [7 x i32]* %arrayidx15.1.2142, i32 0, i64 0
  %298 = load i32* %arrayidx16.1.2143, align 4
  %mul.1.2144 = mul nsw i32 %297, %298
  %arrayidx19.1.2145 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.1.2146 = getelementptr inbounds [7 x i32]* %arrayidx19.1.2145, i32 0, i64 0
  %299 = load i32* %arrayidx20.1.2146, align 4
  %add.1.2147 = add nsw i32 %299, %mul.1.2144
  store i32 %add.1.2147, i32* %arrayidx20.1.2146, align 4
  br label %for.inc.1.2157

for.inc.1.2157:                                   ; preds = %for.inc.2148
  %arrayidx11.2.2149 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.2.2150 = getelementptr inbounds [7 x i32]* %arrayidx11.2.2149, i32 0, i64 2
  %300 = load i32* %arrayidx12.2.2150, align 4
  %arrayidx15.2.2151 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.2152 = getelementptr inbounds [7 x i32]* %arrayidx15.2.2151, i32 0, i64 0
  %301 = load i32* %arrayidx16.2.2152, align 4
  %mul.2.2153 = mul nsw i32 %300, %301
  %arrayidx19.2.2154 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.2.2155 = getelementptr inbounds [7 x i32]* %arrayidx19.2.2154, i32 0, i64 0
  %302 = load i32* %arrayidx20.2.2155, align 4
  %add.2.2156 = add nsw i32 %302, %mul.2.2153
  store i32 %add.2.2156, i32* %arrayidx20.2.2155, align 4
  br label %for.inc.2.2166

for.inc.2.2166:                                   ; preds = %for.inc.1.2157
  %arrayidx11.3.2158 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.3.2159 = getelementptr inbounds [7 x i32]* %arrayidx11.3.2158, i32 0, i64 3
  %303 = load i32* %arrayidx12.3.2159, align 4
  %arrayidx15.3.2160 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.2161 = getelementptr inbounds [7 x i32]* %arrayidx15.3.2160, i32 0, i64 0
  %304 = load i32* %arrayidx16.3.2161, align 4
  %mul.3.2162 = mul nsw i32 %303, %304
  %arrayidx19.3.2163 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.3.2164 = getelementptr inbounds [7 x i32]* %arrayidx19.3.2163, i32 0, i64 0
  %305 = load i32* %arrayidx20.3.2164, align 4
  %add.3.2165 = add nsw i32 %305, %mul.3.2162
  store i32 %add.3.2165, i32* %arrayidx20.3.2164, align 4
  br label %for.inc.3.2175

for.inc.3.2175:                                   ; preds = %for.inc.2.2166
  %arrayidx11.4.2167 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.4.2168 = getelementptr inbounds [7 x i32]* %arrayidx11.4.2167, i32 0, i64 4
  %306 = load i32* %arrayidx12.4.2168, align 4
  %arrayidx15.4.2169 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.2170 = getelementptr inbounds [7 x i32]* %arrayidx15.4.2169, i32 0, i64 0
  %307 = load i32* %arrayidx16.4.2170, align 4
  %mul.4.2171 = mul nsw i32 %306, %307
  %arrayidx19.4.2172 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.4.2173 = getelementptr inbounds [7 x i32]* %arrayidx19.4.2172, i32 0, i64 0
  %308 = load i32* %arrayidx20.4.2173, align 4
  %add.4.2174 = add nsw i32 %308, %mul.4.2171
  store i32 %add.4.2174, i32* %arrayidx20.4.2173, align 4
  br label %for.inc.4.2184

for.inc.4.2184:                                   ; preds = %for.inc.3.2175
  %arrayidx11.5.2176 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.5.2177 = getelementptr inbounds [7 x i32]* %arrayidx11.5.2176, i32 0, i64 5
  %309 = load i32* %arrayidx12.5.2177, align 4
  %arrayidx15.5.2178 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.2179 = getelementptr inbounds [7 x i32]* %arrayidx15.5.2178, i32 0, i64 0
  %310 = load i32* %arrayidx16.5.2179, align 4
  %mul.5.2180 = mul nsw i32 %309, %310
  %arrayidx19.5.2181 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.5.2182 = getelementptr inbounds [7 x i32]* %arrayidx19.5.2181, i32 0, i64 0
  %311 = load i32* %arrayidx20.5.2182, align 4
  %add.5.2183 = add nsw i32 %311, %mul.5.2180
  store i32 %add.5.2183, i32* %arrayidx20.5.2182, align 4
  br label %for.inc.5.2193

for.inc.5.2193:                                   ; preds = %for.inc.4.2184
  %arrayidx11.6.2185 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.6.2186 = getelementptr inbounds [7 x i32]* %arrayidx11.6.2185, i32 0, i64 6
  %312 = load i32* %arrayidx12.6.2186, align 4
  %arrayidx15.6.2187 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.2188 = getelementptr inbounds [7 x i32]* %arrayidx15.6.2187, i32 0, i64 0
  %313 = load i32* %arrayidx16.6.2188, align 4
  %mul.6.2189 = mul nsw i32 %312, %313
  %arrayidx19.6.2190 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.6.2191 = getelementptr inbounds [7 x i32]* %arrayidx19.6.2190, i32 0, i64 0
  %314 = load i32* %arrayidx20.6.2191, align 4
  %add.6.2192 = add nsw i32 %314, %mul.6.2189
  store i32 %add.6.2192, i32* %arrayidx20.6.2191, align 4
  br label %for.inc.6.2194

for.inc.6.2194:                                   ; preds = %for.inc.5.2193
  br label %for.inc21.2195

for.inc21.2195:                                   ; preds = %for.inc.6.2194
  %arrayidx.1.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [7 x i32]* %arrayidx.1.2, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.2, align 4
  br label %for.body8.1.2

for.body8.1.2:                                    ; preds = %for.inc21.2195
  %arrayidx11.14.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.15.2 = getelementptr inbounds [7 x i32]* %arrayidx11.14.2, i32 0, i64 0
  %315 = load i32* %arrayidx12.15.2, align 4
  %arrayidx16.16.2 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 1
  %316 = load i32* %arrayidx16.16.2, align 4
  %mul.17.2 = mul nsw i32 %315, %316
  %arrayidx19.19.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.110.2 = getelementptr inbounds [7 x i32]* %arrayidx19.19.2, i32 0, i64 1
  %317 = load i32* %arrayidx20.110.2, align 4
  %add.111.2 = add nsw i32 %317, %mul.17.2
  store i32 %add.111.2, i32* %arrayidx20.110.2, align 4
  br label %for.inc.112.2

for.inc.112.2:                                    ; preds = %for.body8.1.2
  %arrayidx11.1.1.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.1.1.2 = getelementptr inbounds [7 x i32]* %arrayidx11.1.1.2, i32 0, i64 1
  %318 = load i32* %arrayidx12.1.1.2, align 4
  %arrayidx15.1.1.2 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.1.2 = getelementptr inbounds [7 x i32]* %arrayidx15.1.1.2, i32 0, i64 1
  %319 = load i32* %arrayidx16.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %318, %319
  %arrayidx19.1.1.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.1.1.2 = getelementptr inbounds [7 x i32]* %arrayidx19.1.1.2, i32 0, i64 1
  %320 = load i32* %arrayidx20.1.1.2, align 4
  %add.1.1.2 = add nsw i32 %320, %mul.1.1.2
  store i32 %add.1.1.2, i32* %arrayidx20.1.1.2, align 4
  br label %for.inc.1.1.2

for.inc.1.1.2:                                    ; preds = %for.inc.112.2
  %arrayidx11.2.1.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.2.1.2 = getelementptr inbounds [7 x i32]* %arrayidx11.2.1.2, i32 0, i64 2
  %321 = load i32* %arrayidx12.2.1.2, align 4
  %arrayidx15.2.1.2 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.1.2 = getelementptr inbounds [7 x i32]* %arrayidx15.2.1.2, i32 0, i64 1
  %322 = load i32* %arrayidx16.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %321, %322
  %arrayidx19.2.1.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.2.1.2 = getelementptr inbounds [7 x i32]* %arrayidx19.2.1.2, i32 0, i64 1
  %323 = load i32* %arrayidx20.2.1.2, align 4
  %add.2.1.2 = add nsw i32 %323, %mul.2.1.2
  store i32 %add.2.1.2, i32* %arrayidx20.2.1.2, align 4
  br label %for.inc.2.1.2

for.inc.2.1.2:                                    ; preds = %for.inc.1.1.2
  %arrayidx11.3.1.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.3.1.2 = getelementptr inbounds [7 x i32]* %arrayidx11.3.1.2, i32 0, i64 3
  %324 = load i32* %arrayidx12.3.1.2, align 4
  %arrayidx15.3.1.2 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.1.2 = getelementptr inbounds [7 x i32]* %arrayidx15.3.1.2, i32 0, i64 1
  %325 = load i32* %arrayidx16.3.1.2, align 4
  %mul.3.1.2 = mul nsw i32 %324, %325
  %arrayidx19.3.1.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.3.1.2 = getelementptr inbounds [7 x i32]* %arrayidx19.3.1.2, i32 0, i64 1
  %326 = load i32* %arrayidx20.3.1.2, align 4
  %add.3.1.2 = add nsw i32 %326, %mul.3.1.2
  store i32 %add.3.1.2, i32* %arrayidx20.3.1.2, align 4
  br label %for.inc.3.1.2

for.inc.3.1.2:                                    ; preds = %for.inc.2.1.2
  %arrayidx11.4.1.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.4.1.2 = getelementptr inbounds [7 x i32]* %arrayidx11.4.1.2, i32 0, i64 4
  %327 = load i32* %arrayidx12.4.1.2, align 4
  %arrayidx15.4.1.2 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.1.2 = getelementptr inbounds [7 x i32]* %arrayidx15.4.1.2, i32 0, i64 1
  %328 = load i32* %arrayidx16.4.1.2, align 4
  %mul.4.1.2 = mul nsw i32 %327, %328
  %arrayidx19.4.1.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.4.1.2 = getelementptr inbounds [7 x i32]* %arrayidx19.4.1.2, i32 0, i64 1
  %329 = load i32* %arrayidx20.4.1.2, align 4
  %add.4.1.2 = add nsw i32 %329, %mul.4.1.2
  store i32 %add.4.1.2, i32* %arrayidx20.4.1.2, align 4
  br label %for.inc.4.1.2

for.inc.4.1.2:                                    ; preds = %for.inc.3.1.2
  %arrayidx11.5.1.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.5.1.2 = getelementptr inbounds [7 x i32]* %arrayidx11.5.1.2, i32 0, i64 5
  %330 = load i32* %arrayidx12.5.1.2, align 4
  %arrayidx15.5.1.2 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.1.2 = getelementptr inbounds [7 x i32]* %arrayidx15.5.1.2, i32 0, i64 1
  %331 = load i32* %arrayidx16.5.1.2, align 4
  %mul.5.1.2 = mul nsw i32 %330, %331
  %arrayidx19.5.1.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.5.1.2 = getelementptr inbounds [7 x i32]* %arrayidx19.5.1.2, i32 0, i64 1
  %332 = load i32* %arrayidx20.5.1.2, align 4
  %add.5.1.2 = add nsw i32 %332, %mul.5.1.2
  store i32 %add.5.1.2, i32* %arrayidx20.5.1.2, align 4
  br label %for.inc.5.1.2

for.inc.5.1.2:                                    ; preds = %for.inc.4.1.2
  %arrayidx11.6.1.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.6.1.2 = getelementptr inbounds [7 x i32]* %arrayidx11.6.1.2, i32 0, i64 6
  %333 = load i32* %arrayidx12.6.1.2, align 4
  %arrayidx15.6.1.2 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.1.2 = getelementptr inbounds [7 x i32]* %arrayidx15.6.1.2, i32 0, i64 1
  %334 = load i32* %arrayidx16.6.1.2, align 4
  %mul.6.1.2 = mul nsw i32 %333, %334
  %arrayidx19.6.1.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.6.1.2 = getelementptr inbounds [7 x i32]* %arrayidx19.6.1.2, i32 0, i64 1
  %335 = load i32* %arrayidx20.6.1.2, align 4
  %add.6.1.2 = add nsw i32 %335, %mul.6.1.2
  store i32 %add.6.1.2, i32* %arrayidx20.6.1.2, align 4
  br label %for.inc.6.1.2

for.inc.6.1.2:                                    ; preds = %for.inc.5.1.2
  br label %for.inc21.1.2

for.inc21.1.2:                                    ; preds = %for.inc.6.1.2
  %arrayidx.2.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [7 x i32]* %arrayidx.2.2, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.2, align 4
  br label %for.body8.2.2

for.body8.2.2:                                    ; preds = %for.inc21.1.2
  %arrayidx11.214.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.215.2 = getelementptr inbounds [7 x i32]* %arrayidx11.214.2, i32 0, i64 0
  %336 = load i32* %arrayidx12.215.2, align 4
  %arrayidx16.216.2 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 2
  %337 = load i32* %arrayidx16.216.2, align 4
  %mul.217.2 = mul nsw i32 %336, %337
  %arrayidx19.219.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.220.2 = getelementptr inbounds [7 x i32]* %arrayidx19.219.2, i32 0, i64 2
  %338 = load i32* %arrayidx20.220.2, align 4
  %add.221.2 = add nsw i32 %338, %mul.217.2
  store i32 %add.221.2, i32* %arrayidx20.220.2, align 4
  br label %for.inc.222.2

for.inc.222.2:                                    ; preds = %for.body8.2.2
  %arrayidx11.1.2.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.1.2.2 = getelementptr inbounds [7 x i32]* %arrayidx11.1.2.2, i32 0, i64 1
  %339 = load i32* %arrayidx12.1.2.2, align 4
  %arrayidx15.1.2.2 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.2.2 = getelementptr inbounds [7 x i32]* %arrayidx15.1.2.2, i32 0, i64 2
  %340 = load i32* %arrayidx16.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %339, %340
  %arrayidx19.1.2.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.1.2.2 = getelementptr inbounds [7 x i32]* %arrayidx19.1.2.2, i32 0, i64 2
  %341 = load i32* %arrayidx20.1.2.2, align 4
  %add.1.2.2 = add nsw i32 %341, %mul.1.2.2
  store i32 %add.1.2.2, i32* %arrayidx20.1.2.2, align 4
  br label %for.inc.1.2.2

for.inc.1.2.2:                                    ; preds = %for.inc.222.2
  %arrayidx11.2.2.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.2.2.2 = getelementptr inbounds [7 x i32]* %arrayidx11.2.2.2, i32 0, i64 2
  %342 = load i32* %arrayidx12.2.2.2, align 4
  %arrayidx15.2.2.2 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.2.2 = getelementptr inbounds [7 x i32]* %arrayidx15.2.2.2, i32 0, i64 2
  %343 = load i32* %arrayidx16.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %342, %343
  %arrayidx19.2.2.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.2.2.2 = getelementptr inbounds [7 x i32]* %arrayidx19.2.2.2, i32 0, i64 2
  %344 = load i32* %arrayidx20.2.2.2, align 4
  %add.2.2.2 = add nsw i32 %344, %mul.2.2.2
  store i32 %add.2.2.2, i32* %arrayidx20.2.2.2, align 4
  br label %for.inc.2.2.2

for.inc.2.2.2:                                    ; preds = %for.inc.1.2.2
  %arrayidx11.3.2.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.3.2.2 = getelementptr inbounds [7 x i32]* %arrayidx11.3.2.2, i32 0, i64 3
  %345 = load i32* %arrayidx12.3.2.2, align 4
  %arrayidx15.3.2.2 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.2.2 = getelementptr inbounds [7 x i32]* %arrayidx15.3.2.2, i32 0, i64 2
  %346 = load i32* %arrayidx16.3.2.2, align 4
  %mul.3.2.2 = mul nsw i32 %345, %346
  %arrayidx19.3.2.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.3.2.2 = getelementptr inbounds [7 x i32]* %arrayidx19.3.2.2, i32 0, i64 2
  %347 = load i32* %arrayidx20.3.2.2, align 4
  %add.3.2.2 = add nsw i32 %347, %mul.3.2.2
  store i32 %add.3.2.2, i32* %arrayidx20.3.2.2, align 4
  br label %for.inc.3.2.2

for.inc.3.2.2:                                    ; preds = %for.inc.2.2.2
  %arrayidx11.4.2.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.4.2.2 = getelementptr inbounds [7 x i32]* %arrayidx11.4.2.2, i32 0, i64 4
  %348 = load i32* %arrayidx12.4.2.2, align 4
  %arrayidx15.4.2.2 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.2.2 = getelementptr inbounds [7 x i32]* %arrayidx15.4.2.2, i32 0, i64 2
  %349 = load i32* %arrayidx16.4.2.2, align 4
  %mul.4.2.2 = mul nsw i32 %348, %349
  %arrayidx19.4.2.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.4.2.2 = getelementptr inbounds [7 x i32]* %arrayidx19.4.2.2, i32 0, i64 2
  %350 = load i32* %arrayidx20.4.2.2, align 4
  %add.4.2.2 = add nsw i32 %350, %mul.4.2.2
  store i32 %add.4.2.2, i32* %arrayidx20.4.2.2, align 4
  br label %for.inc.4.2.2

for.inc.4.2.2:                                    ; preds = %for.inc.3.2.2
  %arrayidx11.5.2.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.5.2.2 = getelementptr inbounds [7 x i32]* %arrayidx11.5.2.2, i32 0, i64 5
  %351 = load i32* %arrayidx12.5.2.2, align 4
  %arrayidx15.5.2.2 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.2.2 = getelementptr inbounds [7 x i32]* %arrayidx15.5.2.2, i32 0, i64 2
  %352 = load i32* %arrayidx16.5.2.2, align 4
  %mul.5.2.2 = mul nsw i32 %351, %352
  %arrayidx19.5.2.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.5.2.2 = getelementptr inbounds [7 x i32]* %arrayidx19.5.2.2, i32 0, i64 2
  %353 = load i32* %arrayidx20.5.2.2, align 4
  %add.5.2.2 = add nsw i32 %353, %mul.5.2.2
  store i32 %add.5.2.2, i32* %arrayidx20.5.2.2, align 4
  br label %for.inc.5.2.2

for.inc.5.2.2:                                    ; preds = %for.inc.4.2.2
  %arrayidx11.6.2.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.6.2.2 = getelementptr inbounds [7 x i32]* %arrayidx11.6.2.2, i32 0, i64 6
  %354 = load i32* %arrayidx12.6.2.2, align 4
  %arrayidx15.6.2.2 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.2.2 = getelementptr inbounds [7 x i32]* %arrayidx15.6.2.2, i32 0, i64 2
  %355 = load i32* %arrayidx16.6.2.2, align 4
  %mul.6.2.2 = mul nsw i32 %354, %355
  %arrayidx19.6.2.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.6.2.2 = getelementptr inbounds [7 x i32]* %arrayidx19.6.2.2, i32 0, i64 2
  %356 = load i32* %arrayidx20.6.2.2, align 4
  %add.6.2.2 = add nsw i32 %356, %mul.6.2.2
  store i32 %add.6.2.2, i32* %arrayidx20.6.2.2, align 4
  br label %for.inc.6.2.2

for.inc.6.2.2:                                    ; preds = %for.inc.5.2.2
  br label %for.inc21.2.2

for.inc21.2.2:                                    ; preds = %for.inc.6.2.2
  %arrayidx.3.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx5.3.2 = getelementptr inbounds [7 x i32]* %arrayidx.3.2, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.2, align 4
  br label %for.body8.3.2

for.body8.3.2:                                    ; preds = %for.inc21.2.2
  %arrayidx11.324.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.325.2 = getelementptr inbounds [7 x i32]* %arrayidx11.324.2, i32 0, i64 0
  %357 = load i32* %arrayidx12.325.2, align 4
  %arrayidx16.326.2 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 3
  %358 = load i32* %arrayidx16.326.2, align 4
  %mul.327.2 = mul nsw i32 %357, %358
  %arrayidx19.329.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.330.2 = getelementptr inbounds [7 x i32]* %arrayidx19.329.2, i32 0, i64 3
  %359 = load i32* %arrayidx20.330.2, align 4
  %add.331.2 = add nsw i32 %359, %mul.327.2
  store i32 %add.331.2, i32* %arrayidx20.330.2, align 4
  br label %for.inc.332.2

for.inc.332.2:                                    ; preds = %for.body8.3.2
  %arrayidx11.1.3.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.1.3.2 = getelementptr inbounds [7 x i32]* %arrayidx11.1.3.2, i32 0, i64 1
  %360 = load i32* %arrayidx12.1.3.2, align 4
  %arrayidx15.1.3.2 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.3.2 = getelementptr inbounds [7 x i32]* %arrayidx15.1.3.2, i32 0, i64 3
  %361 = load i32* %arrayidx16.1.3.2, align 4
  %mul.1.3.2 = mul nsw i32 %360, %361
  %arrayidx19.1.3.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.1.3.2 = getelementptr inbounds [7 x i32]* %arrayidx19.1.3.2, i32 0, i64 3
  %362 = load i32* %arrayidx20.1.3.2, align 4
  %add.1.3.2 = add nsw i32 %362, %mul.1.3.2
  store i32 %add.1.3.2, i32* %arrayidx20.1.3.2, align 4
  br label %for.inc.1.3.2

for.inc.1.3.2:                                    ; preds = %for.inc.332.2
  %arrayidx11.2.3.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.2.3.2 = getelementptr inbounds [7 x i32]* %arrayidx11.2.3.2, i32 0, i64 2
  %363 = load i32* %arrayidx12.2.3.2, align 4
  %arrayidx15.2.3.2 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.3.2 = getelementptr inbounds [7 x i32]* %arrayidx15.2.3.2, i32 0, i64 3
  %364 = load i32* %arrayidx16.2.3.2, align 4
  %mul.2.3.2 = mul nsw i32 %363, %364
  %arrayidx19.2.3.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.2.3.2 = getelementptr inbounds [7 x i32]* %arrayidx19.2.3.2, i32 0, i64 3
  %365 = load i32* %arrayidx20.2.3.2, align 4
  %add.2.3.2 = add nsw i32 %365, %mul.2.3.2
  store i32 %add.2.3.2, i32* %arrayidx20.2.3.2, align 4
  br label %for.inc.2.3.2

for.inc.2.3.2:                                    ; preds = %for.inc.1.3.2
  %arrayidx11.3.3.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.3.3.2 = getelementptr inbounds [7 x i32]* %arrayidx11.3.3.2, i32 0, i64 3
  %366 = load i32* %arrayidx12.3.3.2, align 4
  %arrayidx15.3.3.2 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.3.2 = getelementptr inbounds [7 x i32]* %arrayidx15.3.3.2, i32 0, i64 3
  %367 = load i32* %arrayidx16.3.3.2, align 4
  %mul.3.3.2 = mul nsw i32 %366, %367
  %arrayidx19.3.3.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.3.3.2 = getelementptr inbounds [7 x i32]* %arrayidx19.3.3.2, i32 0, i64 3
  %368 = load i32* %arrayidx20.3.3.2, align 4
  %add.3.3.2 = add nsw i32 %368, %mul.3.3.2
  store i32 %add.3.3.2, i32* %arrayidx20.3.3.2, align 4
  br label %for.inc.3.3.2

for.inc.3.3.2:                                    ; preds = %for.inc.2.3.2
  %arrayidx11.4.3.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.4.3.2 = getelementptr inbounds [7 x i32]* %arrayidx11.4.3.2, i32 0, i64 4
  %369 = load i32* %arrayidx12.4.3.2, align 4
  %arrayidx15.4.3.2 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.3.2 = getelementptr inbounds [7 x i32]* %arrayidx15.4.3.2, i32 0, i64 3
  %370 = load i32* %arrayidx16.4.3.2, align 4
  %mul.4.3.2 = mul nsw i32 %369, %370
  %arrayidx19.4.3.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.4.3.2 = getelementptr inbounds [7 x i32]* %arrayidx19.4.3.2, i32 0, i64 3
  %371 = load i32* %arrayidx20.4.3.2, align 4
  %add.4.3.2 = add nsw i32 %371, %mul.4.3.2
  store i32 %add.4.3.2, i32* %arrayidx20.4.3.2, align 4
  br label %for.inc.4.3.2

for.inc.4.3.2:                                    ; preds = %for.inc.3.3.2
  %arrayidx11.5.3.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.5.3.2 = getelementptr inbounds [7 x i32]* %arrayidx11.5.3.2, i32 0, i64 5
  %372 = load i32* %arrayidx12.5.3.2, align 4
  %arrayidx15.5.3.2 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.3.2 = getelementptr inbounds [7 x i32]* %arrayidx15.5.3.2, i32 0, i64 3
  %373 = load i32* %arrayidx16.5.3.2, align 4
  %mul.5.3.2 = mul nsw i32 %372, %373
  %arrayidx19.5.3.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.5.3.2 = getelementptr inbounds [7 x i32]* %arrayidx19.5.3.2, i32 0, i64 3
  %374 = load i32* %arrayidx20.5.3.2, align 4
  %add.5.3.2 = add nsw i32 %374, %mul.5.3.2
  store i32 %add.5.3.2, i32* %arrayidx20.5.3.2, align 4
  br label %for.inc.5.3.2

for.inc.5.3.2:                                    ; preds = %for.inc.4.3.2
  %arrayidx11.6.3.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.6.3.2 = getelementptr inbounds [7 x i32]* %arrayidx11.6.3.2, i32 0, i64 6
  %375 = load i32* %arrayidx12.6.3.2, align 4
  %arrayidx15.6.3.2 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.3.2 = getelementptr inbounds [7 x i32]* %arrayidx15.6.3.2, i32 0, i64 3
  %376 = load i32* %arrayidx16.6.3.2, align 4
  %mul.6.3.2 = mul nsw i32 %375, %376
  %arrayidx19.6.3.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.6.3.2 = getelementptr inbounds [7 x i32]* %arrayidx19.6.3.2, i32 0, i64 3
  %377 = load i32* %arrayidx20.6.3.2, align 4
  %add.6.3.2 = add nsw i32 %377, %mul.6.3.2
  store i32 %add.6.3.2, i32* %arrayidx20.6.3.2, align 4
  br label %for.inc.6.3.2

for.inc.6.3.2:                                    ; preds = %for.inc.5.3.2
  br label %for.inc21.3.2

for.inc21.3.2:                                    ; preds = %for.inc.6.3.2
  %arrayidx.4.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx5.4.2 = getelementptr inbounds [7 x i32]* %arrayidx.4.2, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.2, align 4
  br label %for.body8.4.2

for.body8.4.2:                                    ; preds = %for.inc21.3.2
  %arrayidx11.434.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.435.2 = getelementptr inbounds [7 x i32]* %arrayidx11.434.2, i32 0, i64 0
  %378 = load i32* %arrayidx12.435.2, align 4
  %arrayidx16.436.2 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 4
  %379 = load i32* %arrayidx16.436.2, align 4
  %mul.437.2 = mul nsw i32 %378, %379
  %arrayidx19.439.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.440.2 = getelementptr inbounds [7 x i32]* %arrayidx19.439.2, i32 0, i64 4
  %380 = load i32* %arrayidx20.440.2, align 4
  %add.441.2 = add nsw i32 %380, %mul.437.2
  store i32 %add.441.2, i32* %arrayidx20.440.2, align 4
  br label %for.inc.442.2

for.inc.442.2:                                    ; preds = %for.body8.4.2
  %arrayidx11.1.4.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.1.4.2 = getelementptr inbounds [7 x i32]* %arrayidx11.1.4.2, i32 0, i64 1
  %381 = load i32* %arrayidx12.1.4.2, align 4
  %arrayidx15.1.4.2 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.4.2 = getelementptr inbounds [7 x i32]* %arrayidx15.1.4.2, i32 0, i64 4
  %382 = load i32* %arrayidx16.1.4.2, align 4
  %mul.1.4.2 = mul nsw i32 %381, %382
  %arrayidx19.1.4.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.1.4.2 = getelementptr inbounds [7 x i32]* %arrayidx19.1.4.2, i32 0, i64 4
  %383 = load i32* %arrayidx20.1.4.2, align 4
  %add.1.4.2 = add nsw i32 %383, %mul.1.4.2
  store i32 %add.1.4.2, i32* %arrayidx20.1.4.2, align 4
  br label %for.inc.1.4.2

for.inc.1.4.2:                                    ; preds = %for.inc.442.2
  %arrayidx11.2.4.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.2.4.2 = getelementptr inbounds [7 x i32]* %arrayidx11.2.4.2, i32 0, i64 2
  %384 = load i32* %arrayidx12.2.4.2, align 4
  %arrayidx15.2.4.2 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.4.2 = getelementptr inbounds [7 x i32]* %arrayidx15.2.4.2, i32 0, i64 4
  %385 = load i32* %arrayidx16.2.4.2, align 4
  %mul.2.4.2 = mul nsw i32 %384, %385
  %arrayidx19.2.4.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.2.4.2 = getelementptr inbounds [7 x i32]* %arrayidx19.2.4.2, i32 0, i64 4
  %386 = load i32* %arrayidx20.2.4.2, align 4
  %add.2.4.2 = add nsw i32 %386, %mul.2.4.2
  store i32 %add.2.4.2, i32* %arrayidx20.2.4.2, align 4
  br label %for.inc.2.4.2

for.inc.2.4.2:                                    ; preds = %for.inc.1.4.2
  %arrayidx11.3.4.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.3.4.2 = getelementptr inbounds [7 x i32]* %arrayidx11.3.4.2, i32 0, i64 3
  %387 = load i32* %arrayidx12.3.4.2, align 4
  %arrayidx15.3.4.2 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.4.2 = getelementptr inbounds [7 x i32]* %arrayidx15.3.4.2, i32 0, i64 4
  %388 = load i32* %arrayidx16.3.4.2, align 4
  %mul.3.4.2 = mul nsw i32 %387, %388
  %arrayidx19.3.4.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.3.4.2 = getelementptr inbounds [7 x i32]* %arrayidx19.3.4.2, i32 0, i64 4
  %389 = load i32* %arrayidx20.3.4.2, align 4
  %add.3.4.2 = add nsw i32 %389, %mul.3.4.2
  store i32 %add.3.4.2, i32* %arrayidx20.3.4.2, align 4
  br label %for.inc.3.4.2

for.inc.3.4.2:                                    ; preds = %for.inc.2.4.2
  %arrayidx11.4.4.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.4.4.2 = getelementptr inbounds [7 x i32]* %arrayidx11.4.4.2, i32 0, i64 4
  %390 = load i32* %arrayidx12.4.4.2, align 4
  %arrayidx15.4.4.2 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.4.2 = getelementptr inbounds [7 x i32]* %arrayidx15.4.4.2, i32 0, i64 4
  %391 = load i32* %arrayidx16.4.4.2, align 4
  %mul.4.4.2 = mul nsw i32 %390, %391
  %arrayidx19.4.4.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.4.4.2 = getelementptr inbounds [7 x i32]* %arrayidx19.4.4.2, i32 0, i64 4
  %392 = load i32* %arrayidx20.4.4.2, align 4
  %add.4.4.2 = add nsw i32 %392, %mul.4.4.2
  store i32 %add.4.4.2, i32* %arrayidx20.4.4.2, align 4
  br label %for.inc.4.4.2

for.inc.4.4.2:                                    ; preds = %for.inc.3.4.2
  %arrayidx11.5.4.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.5.4.2 = getelementptr inbounds [7 x i32]* %arrayidx11.5.4.2, i32 0, i64 5
  %393 = load i32* %arrayidx12.5.4.2, align 4
  %arrayidx15.5.4.2 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.4.2 = getelementptr inbounds [7 x i32]* %arrayidx15.5.4.2, i32 0, i64 4
  %394 = load i32* %arrayidx16.5.4.2, align 4
  %mul.5.4.2 = mul nsw i32 %393, %394
  %arrayidx19.5.4.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.5.4.2 = getelementptr inbounds [7 x i32]* %arrayidx19.5.4.2, i32 0, i64 4
  %395 = load i32* %arrayidx20.5.4.2, align 4
  %add.5.4.2 = add nsw i32 %395, %mul.5.4.2
  store i32 %add.5.4.2, i32* %arrayidx20.5.4.2, align 4
  br label %for.inc.5.4.2

for.inc.5.4.2:                                    ; preds = %for.inc.4.4.2
  %arrayidx11.6.4.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.6.4.2 = getelementptr inbounds [7 x i32]* %arrayidx11.6.4.2, i32 0, i64 6
  %396 = load i32* %arrayidx12.6.4.2, align 4
  %arrayidx15.6.4.2 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.4.2 = getelementptr inbounds [7 x i32]* %arrayidx15.6.4.2, i32 0, i64 4
  %397 = load i32* %arrayidx16.6.4.2, align 4
  %mul.6.4.2 = mul nsw i32 %396, %397
  %arrayidx19.6.4.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.6.4.2 = getelementptr inbounds [7 x i32]* %arrayidx19.6.4.2, i32 0, i64 4
  %398 = load i32* %arrayidx20.6.4.2, align 4
  %add.6.4.2 = add nsw i32 %398, %mul.6.4.2
  store i32 %add.6.4.2, i32* %arrayidx20.6.4.2, align 4
  br label %for.inc.6.4.2

for.inc.6.4.2:                                    ; preds = %for.inc.5.4.2
  br label %for.inc21.4.2

for.inc21.4.2:                                    ; preds = %for.inc.6.4.2
  %arrayidx.5.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx5.5.2 = getelementptr inbounds [7 x i32]* %arrayidx.5.2, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.2, align 4
  br label %for.body8.5.2

for.body8.5.2:                                    ; preds = %for.inc21.4.2
  %arrayidx11.544.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.545.2 = getelementptr inbounds [7 x i32]* %arrayidx11.544.2, i32 0, i64 0
  %399 = load i32* %arrayidx12.545.2, align 4
  %arrayidx16.546.2 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 5
  %400 = load i32* %arrayidx16.546.2, align 4
  %mul.547.2 = mul nsw i32 %399, %400
  %arrayidx19.549.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.550.2 = getelementptr inbounds [7 x i32]* %arrayidx19.549.2, i32 0, i64 5
  %401 = load i32* %arrayidx20.550.2, align 4
  %add.551.2 = add nsw i32 %401, %mul.547.2
  store i32 %add.551.2, i32* %arrayidx20.550.2, align 4
  br label %for.inc.552.2

for.inc.552.2:                                    ; preds = %for.body8.5.2
  %arrayidx11.1.5.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.1.5.2 = getelementptr inbounds [7 x i32]* %arrayidx11.1.5.2, i32 0, i64 1
  %402 = load i32* %arrayidx12.1.5.2, align 4
  %arrayidx15.1.5.2 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.5.2 = getelementptr inbounds [7 x i32]* %arrayidx15.1.5.2, i32 0, i64 5
  %403 = load i32* %arrayidx16.1.5.2, align 4
  %mul.1.5.2 = mul nsw i32 %402, %403
  %arrayidx19.1.5.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.1.5.2 = getelementptr inbounds [7 x i32]* %arrayidx19.1.5.2, i32 0, i64 5
  %404 = load i32* %arrayidx20.1.5.2, align 4
  %add.1.5.2 = add nsw i32 %404, %mul.1.5.2
  store i32 %add.1.5.2, i32* %arrayidx20.1.5.2, align 4
  br label %for.inc.1.5.2

for.inc.1.5.2:                                    ; preds = %for.inc.552.2
  %arrayidx11.2.5.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.2.5.2 = getelementptr inbounds [7 x i32]* %arrayidx11.2.5.2, i32 0, i64 2
  %405 = load i32* %arrayidx12.2.5.2, align 4
  %arrayidx15.2.5.2 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.5.2 = getelementptr inbounds [7 x i32]* %arrayidx15.2.5.2, i32 0, i64 5
  %406 = load i32* %arrayidx16.2.5.2, align 4
  %mul.2.5.2 = mul nsw i32 %405, %406
  %arrayidx19.2.5.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.2.5.2 = getelementptr inbounds [7 x i32]* %arrayidx19.2.5.2, i32 0, i64 5
  %407 = load i32* %arrayidx20.2.5.2, align 4
  %add.2.5.2 = add nsw i32 %407, %mul.2.5.2
  store i32 %add.2.5.2, i32* %arrayidx20.2.5.2, align 4
  br label %for.inc.2.5.2

for.inc.2.5.2:                                    ; preds = %for.inc.1.5.2
  %arrayidx11.3.5.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.3.5.2 = getelementptr inbounds [7 x i32]* %arrayidx11.3.5.2, i32 0, i64 3
  %408 = load i32* %arrayidx12.3.5.2, align 4
  %arrayidx15.3.5.2 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.5.2 = getelementptr inbounds [7 x i32]* %arrayidx15.3.5.2, i32 0, i64 5
  %409 = load i32* %arrayidx16.3.5.2, align 4
  %mul.3.5.2 = mul nsw i32 %408, %409
  %arrayidx19.3.5.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.3.5.2 = getelementptr inbounds [7 x i32]* %arrayidx19.3.5.2, i32 0, i64 5
  %410 = load i32* %arrayidx20.3.5.2, align 4
  %add.3.5.2 = add nsw i32 %410, %mul.3.5.2
  store i32 %add.3.5.2, i32* %arrayidx20.3.5.2, align 4
  br label %for.inc.3.5.2

for.inc.3.5.2:                                    ; preds = %for.inc.2.5.2
  %arrayidx11.4.5.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.4.5.2 = getelementptr inbounds [7 x i32]* %arrayidx11.4.5.2, i32 0, i64 4
  %411 = load i32* %arrayidx12.4.5.2, align 4
  %arrayidx15.4.5.2 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.5.2 = getelementptr inbounds [7 x i32]* %arrayidx15.4.5.2, i32 0, i64 5
  %412 = load i32* %arrayidx16.4.5.2, align 4
  %mul.4.5.2 = mul nsw i32 %411, %412
  %arrayidx19.4.5.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.4.5.2 = getelementptr inbounds [7 x i32]* %arrayidx19.4.5.2, i32 0, i64 5
  %413 = load i32* %arrayidx20.4.5.2, align 4
  %add.4.5.2 = add nsw i32 %413, %mul.4.5.2
  store i32 %add.4.5.2, i32* %arrayidx20.4.5.2, align 4
  br label %for.inc.4.5.2

for.inc.4.5.2:                                    ; preds = %for.inc.3.5.2
  %arrayidx11.5.5.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.5.5.2 = getelementptr inbounds [7 x i32]* %arrayidx11.5.5.2, i32 0, i64 5
  %414 = load i32* %arrayidx12.5.5.2, align 4
  %arrayidx15.5.5.2 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.5.2 = getelementptr inbounds [7 x i32]* %arrayidx15.5.5.2, i32 0, i64 5
  %415 = load i32* %arrayidx16.5.5.2, align 4
  %mul.5.5.2 = mul nsw i32 %414, %415
  %arrayidx19.5.5.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.5.5.2 = getelementptr inbounds [7 x i32]* %arrayidx19.5.5.2, i32 0, i64 5
  %416 = load i32* %arrayidx20.5.5.2, align 4
  %add.5.5.2 = add nsw i32 %416, %mul.5.5.2
  store i32 %add.5.5.2, i32* %arrayidx20.5.5.2, align 4
  br label %for.inc.5.5.2

for.inc.5.5.2:                                    ; preds = %for.inc.4.5.2
  %arrayidx11.6.5.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.6.5.2 = getelementptr inbounds [7 x i32]* %arrayidx11.6.5.2, i32 0, i64 6
  %417 = load i32* %arrayidx12.6.5.2, align 4
  %arrayidx15.6.5.2 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.5.2 = getelementptr inbounds [7 x i32]* %arrayidx15.6.5.2, i32 0, i64 5
  %418 = load i32* %arrayidx16.6.5.2, align 4
  %mul.6.5.2 = mul nsw i32 %417, %418
  %arrayidx19.6.5.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.6.5.2 = getelementptr inbounds [7 x i32]* %arrayidx19.6.5.2, i32 0, i64 5
  %419 = load i32* %arrayidx20.6.5.2, align 4
  %add.6.5.2 = add nsw i32 %419, %mul.6.5.2
  store i32 %add.6.5.2, i32* %arrayidx20.6.5.2, align 4
  br label %for.inc.6.5.2

for.inc.6.5.2:                                    ; preds = %for.inc.5.5.2
  br label %for.inc21.5.2

for.inc21.5.2:                                    ; preds = %for.inc.6.5.2
  %arrayidx.6.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx5.6.2 = getelementptr inbounds [7 x i32]* %arrayidx.6.2, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.2, align 4
  br label %for.body8.6.2

for.body8.6.2:                                    ; preds = %for.inc21.5.2
  %arrayidx11.654.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.655.2 = getelementptr inbounds [7 x i32]* %arrayidx11.654.2, i32 0, i64 0
  %420 = load i32* %arrayidx12.655.2, align 4
  %arrayidx16.656.2 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 6
  %421 = load i32* %arrayidx16.656.2, align 4
  %mul.657.2 = mul nsw i32 %420, %421
  %arrayidx19.659.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.660.2 = getelementptr inbounds [7 x i32]* %arrayidx19.659.2, i32 0, i64 6
  %422 = load i32* %arrayidx20.660.2, align 4
  %add.661.2 = add nsw i32 %422, %mul.657.2
  store i32 %add.661.2, i32* %arrayidx20.660.2, align 4
  br label %for.inc.662.2

for.inc.662.2:                                    ; preds = %for.body8.6.2
  %arrayidx11.1.6.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.1.6.2 = getelementptr inbounds [7 x i32]* %arrayidx11.1.6.2, i32 0, i64 1
  %423 = load i32* %arrayidx12.1.6.2, align 4
  %arrayidx15.1.6.2 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.6.2 = getelementptr inbounds [7 x i32]* %arrayidx15.1.6.2, i32 0, i64 6
  %424 = load i32* %arrayidx16.1.6.2, align 4
  %mul.1.6.2 = mul nsw i32 %423, %424
  %arrayidx19.1.6.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.1.6.2 = getelementptr inbounds [7 x i32]* %arrayidx19.1.6.2, i32 0, i64 6
  %425 = load i32* %arrayidx20.1.6.2, align 4
  %add.1.6.2 = add nsw i32 %425, %mul.1.6.2
  store i32 %add.1.6.2, i32* %arrayidx20.1.6.2, align 4
  br label %for.inc.1.6.2

for.inc.1.6.2:                                    ; preds = %for.inc.662.2
  %arrayidx11.2.6.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.2.6.2 = getelementptr inbounds [7 x i32]* %arrayidx11.2.6.2, i32 0, i64 2
  %426 = load i32* %arrayidx12.2.6.2, align 4
  %arrayidx15.2.6.2 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.6.2 = getelementptr inbounds [7 x i32]* %arrayidx15.2.6.2, i32 0, i64 6
  %427 = load i32* %arrayidx16.2.6.2, align 4
  %mul.2.6.2 = mul nsw i32 %426, %427
  %arrayidx19.2.6.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.2.6.2 = getelementptr inbounds [7 x i32]* %arrayidx19.2.6.2, i32 0, i64 6
  %428 = load i32* %arrayidx20.2.6.2, align 4
  %add.2.6.2 = add nsw i32 %428, %mul.2.6.2
  store i32 %add.2.6.2, i32* %arrayidx20.2.6.2, align 4
  br label %for.inc.2.6.2

for.inc.2.6.2:                                    ; preds = %for.inc.1.6.2
  %arrayidx11.3.6.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.3.6.2 = getelementptr inbounds [7 x i32]* %arrayidx11.3.6.2, i32 0, i64 3
  %429 = load i32* %arrayidx12.3.6.2, align 4
  %arrayidx15.3.6.2 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.6.2 = getelementptr inbounds [7 x i32]* %arrayidx15.3.6.2, i32 0, i64 6
  %430 = load i32* %arrayidx16.3.6.2, align 4
  %mul.3.6.2 = mul nsw i32 %429, %430
  %arrayidx19.3.6.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.3.6.2 = getelementptr inbounds [7 x i32]* %arrayidx19.3.6.2, i32 0, i64 6
  %431 = load i32* %arrayidx20.3.6.2, align 4
  %add.3.6.2 = add nsw i32 %431, %mul.3.6.2
  store i32 %add.3.6.2, i32* %arrayidx20.3.6.2, align 4
  br label %for.inc.3.6.2

for.inc.3.6.2:                                    ; preds = %for.inc.2.6.2
  %arrayidx11.4.6.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.4.6.2 = getelementptr inbounds [7 x i32]* %arrayidx11.4.6.2, i32 0, i64 4
  %432 = load i32* %arrayidx12.4.6.2, align 4
  %arrayidx15.4.6.2 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.6.2 = getelementptr inbounds [7 x i32]* %arrayidx15.4.6.2, i32 0, i64 6
  %433 = load i32* %arrayidx16.4.6.2, align 4
  %mul.4.6.2 = mul nsw i32 %432, %433
  %arrayidx19.4.6.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.4.6.2 = getelementptr inbounds [7 x i32]* %arrayidx19.4.6.2, i32 0, i64 6
  %434 = load i32* %arrayidx20.4.6.2, align 4
  %add.4.6.2 = add nsw i32 %434, %mul.4.6.2
  store i32 %add.4.6.2, i32* %arrayidx20.4.6.2, align 4
  br label %for.inc.4.6.2

for.inc.4.6.2:                                    ; preds = %for.inc.3.6.2
  %arrayidx11.5.6.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.5.6.2 = getelementptr inbounds [7 x i32]* %arrayidx11.5.6.2, i32 0, i64 5
  %435 = load i32* %arrayidx12.5.6.2, align 4
  %arrayidx15.5.6.2 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.6.2 = getelementptr inbounds [7 x i32]* %arrayidx15.5.6.2, i32 0, i64 6
  %436 = load i32* %arrayidx16.5.6.2, align 4
  %mul.5.6.2 = mul nsw i32 %435, %436
  %arrayidx19.5.6.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.5.6.2 = getelementptr inbounds [7 x i32]* %arrayidx19.5.6.2, i32 0, i64 6
  %437 = load i32* %arrayidx20.5.6.2, align 4
  %add.5.6.2 = add nsw i32 %437, %mul.5.6.2
  store i32 %add.5.6.2, i32* %arrayidx20.5.6.2, align 4
  br label %for.inc.5.6.2

for.inc.5.6.2:                                    ; preds = %for.inc.4.6.2
  %arrayidx11.6.6.2 = getelementptr inbounds [7 x i32]* %a, i64 2
  %arrayidx12.6.6.2 = getelementptr inbounds [7 x i32]* %arrayidx11.6.6.2, i32 0, i64 6
  %438 = load i32* %arrayidx12.6.6.2, align 4
  %arrayidx15.6.6.2 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.6.2 = getelementptr inbounds [7 x i32]* %arrayidx15.6.6.2, i32 0, i64 6
  %439 = load i32* %arrayidx16.6.6.2, align 4
  %mul.6.6.2 = mul nsw i32 %438, %439
  %arrayidx19.6.6.2 = getelementptr inbounds [7 x i32]* %c, i64 2
  %arrayidx20.6.6.2 = getelementptr inbounds [7 x i32]* %arrayidx19.6.6.2, i32 0, i64 6
  %440 = load i32* %arrayidx20.6.6.2, align 4
  %add.6.6.2 = add nsw i32 %440, %mul.6.6.2
  store i32 %add.6.6.2, i32* %arrayidx20.6.6.2, align 4
  br label %for.inc.6.6.2

for.inc.6.6.2:                                    ; preds = %for.inc.5.6.2
  br label %for.inc21.6.2

for.inc21.6.2:                                    ; preds = %for.inc.6.6.2
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc21.6.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc24.2
  %arrayidx.3196 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx5.3197 = getelementptr inbounds [7 x i32]* %arrayidx.3196, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.3197, align 4
  br label %for.body8.3205

for.body8.3205:                                   ; preds = %for.body3.3
  %arrayidx11.3198 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.3199 = getelementptr inbounds [7 x i32]* %arrayidx11.3198, i32 0, i64 0
  %441 = load i32* %arrayidx12.3199, align 4
  %arrayidx16.3200 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 0
  %442 = load i32* %arrayidx16.3200, align 4
  %mul.3201 = mul nsw i32 %441, %442
  %arrayidx19.3202 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.3203 = getelementptr inbounds [7 x i32]* %arrayidx19.3202, i32 0, i64 0
  %443 = load i32* %arrayidx20.3203, align 4
  %add.3204 = add nsw i32 %443, %mul.3201
  store i32 %add.3204, i32* %arrayidx20.3203, align 4
  br label %for.inc.3214

for.inc.3214:                                     ; preds = %for.body8.3205
  %arrayidx11.1.3206 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.1.3207 = getelementptr inbounds [7 x i32]* %arrayidx11.1.3206, i32 0, i64 1
  %444 = load i32* %arrayidx12.1.3207, align 4
  %arrayidx15.1.3208 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.3209 = getelementptr inbounds [7 x i32]* %arrayidx15.1.3208, i32 0, i64 0
  %445 = load i32* %arrayidx16.1.3209, align 4
  %mul.1.3210 = mul nsw i32 %444, %445
  %arrayidx19.1.3211 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.1.3212 = getelementptr inbounds [7 x i32]* %arrayidx19.1.3211, i32 0, i64 0
  %446 = load i32* %arrayidx20.1.3212, align 4
  %add.1.3213 = add nsw i32 %446, %mul.1.3210
  store i32 %add.1.3213, i32* %arrayidx20.1.3212, align 4
  br label %for.inc.1.3223

for.inc.1.3223:                                   ; preds = %for.inc.3214
  %arrayidx11.2.3215 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.2.3216 = getelementptr inbounds [7 x i32]* %arrayidx11.2.3215, i32 0, i64 2
  %447 = load i32* %arrayidx12.2.3216, align 4
  %arrayidx15.2.3217 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.3218 = getelementptr inbounds [7 x i32]* %arrayidx15.2.3217, i32 0, i64 0
  %448 = load i32* %arrayidx16.2.3218, align 4
  %mul.2.3219 = mul nsw i32 %447, %448
  %arrayidx19.2.3220 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.2.3221 = getelementptr inbounds [7 x i32]* %arrayidx19.2.3220, i32 0, i64 0
  %449 = load i32* %arrayidx20.2.3221, align 4
  %add.2.3222 = add nsw i32 %449, %mul.2.3219
  store i32 %add.2.3222, i32* %arrayidx20.2.3221, align 4
  br label %for.inc.2.3232

for.inc.2.3232:                                   ; preds = %for.inc.1.3223
  %arrayidx11.3.3224 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.3.3225 = getelementptr inbounds [7 x i32]* %arrayidx11.3.3224, i32 0, i64 3
  %450 = load i32* %arrayidx12.3.3225, align 4
  %arrayidx15.3.3226 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.3227 = getelementptr inbounds [7 x i32]* %arrayidx15.3.3226, i32 0, i64 0
  %451 = load i32* %arrayidx16.3.3227, align 4
  %mul.3.3228 = mul nsw i32 %450, %451
  %arrayidx19.3.3229 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.3.3230 = getelementptr inbounds [7 x i32]* %arrayidx19.3.3229, i32 0, i64 0
  %452 = load i32* %arrayidx20.3.3230, align 4
  %add.3.3231 = add nsw i32 %452, %mul.3.3228
  store i32 %add.3.3231, i32* %arrayidx20.3.3230, align 4
  br label %for.inc.3.3241

for.inc.3.3241:                                   ; preds = %for.inc.2.3232
  %arrayidx11.4.3233 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.4.3234 = getelementptr inbounds [7 x i32]* %arrayidx11.4.3233, i32 0, i64 4
  %453 = load i32* %arrayidx12.4.3234, align 4
  %arrayidx15.4.3235 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.3236 = getelementptr inbounds [7 x i32]* %arrayidx15.4.3235, i32 0, i64 0
  %454 = load i32* %arrayidx16.4.3236, align 4
  %mul.4.3237 = mul nsw i32 %453, %454
  %arrayidx19.4.3238 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.4.3239 = getelementptr inbounds [7 x i32]* %arrayidx19.4.3238, i32 0, i64 0
  %455 = load i32* %arrayidx20.4.3239, align 4
  %add.4.3240 = add nsw i32 %455, %mul.4.3237
  store i32 %add.4.3240, i32* %arrayidx20.4.3239, align 4
  br label %for.inc.4.3250

for.inc.4.3250:                                   ; preds = %for.inc.3.3241
  %arrayidx11.5.3242 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.5.3243 = getelementptr inbounds [7 x i32]* %arrayidx11.5.3242, i32 0, i64 5
  %456 = load i32* %arrayidx12.5.3243, align 4
  %arrayidx15.5.3244 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.3245 = getelementptr inbounds [7 x i32]* %arrayidx15.5.3244, i32 0, i64 0
  %457 = load i32* %arrayidx16.5.3245, align 4
  %mul.5.3246 = mul nsw i32 %456, %457
  %arrayidx19.5.3247 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.5.3248 = getelementptr inbounds [7 x i32]* %arrayidx19.5.3247, i32 0, i64 0
  %458 = load i32* %arrayidx20.5.3248, align 4
  %add.5.3249 = add nsw i32 %458, %mul.5.3246
  store i32 %add.5.3249, i32* %arrayidx20.5.3248, align 4
  br label %for.inc.5.3259

for.inc.5.3259:                                   ; preds = %for.inc.4.3250
  %arrayidx11.6.3251 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.6.3252 = getelementptr inbounds [7 x i32]* %arrayidx11.6.3251, i32 0, i64 6
  %459 = load i32* %arrayidx12.6.3252, align 4
  %arrayidx15.6.3253 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.3254 = getelementptr inbounds [7 x i32]* %arrayidx15.6.3253, i32 0, i64 0
  %460 = load i32* %arrayidx16.6.3254, align 4
  %mul.6.3255 = mul nsw i32 %459, %460
  %arrayidx19.6.3256 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.6.3257 = getelementptr inbounds [7 x i32]* %arrayidx19.6.3256, i32 0, i64 0
  %461 = load i32* %arrayidx20.6.3257, align 4
  %add.6.3258 = add nsw i32 %461, %mul.6.3255
  store i32 %add.6.3258, i32* %arrayidx20.6.3257, align 4
  br label %for.inc.6.3260

for.inc.6.3260:                                   ; preds = %for.inc.5.3259
  br label %for.inc21.3261

for.inc21.3261:                                   ; preds = %for.inc.6.3260
  %arrayidx.1.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx5.1.3 = getelementptr inbounds [7 x i32]* %arrayidx.1.3, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.3, align 4
  br label %for.body8.1.3

for.body8.1.3:                                    ; preds = %for.inc21.3261
  %arrayidx11.14.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.15.3 = getelementptr inbounds [7 x i32]* %arrayidx11.14.3, i32 0, i64 0
  %462 = load i32* %arrayidx12.15.3, align 4
  %arrayidx16.16.3 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 1
  %463 = load i32* %arrayidx16.16.3, align 4
  %mul.17.3 = mul nsw i32 %462, %463
  %arrayidx19.19.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.110.3 = getelementptr inbounds [7 x i32]* %arrayidx19.19.3, i32 0, i64 1
  %464 = load i32* %arrayidx20.110.3, align 4
  %add.111.3 = add nsw i32 %464, %mul.17.3
  store i32 %add.111.3, i32* %arrayidx20.110.3, align 4
  br label %for.inc.112.3

for.inc.112.3:                                    ; preds = %for.body8.1.3
  %arrayidx11.1.1.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.1.1.3 = getelementptr inbounds [7 x i32]* %arrayidx11.1.1.3, i32 0, i64 1
  %465 = load i32* %arrayidx12.1.1.3, align 4
  %arrayidx15.1.1.3 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.1.3 = getelementptr inbounds [7 x i32]* %arrayidx15.1.1.3, i32 0, i64 1
  %466 = load i32* %arrayidx16.1.1.3, align 4
  %mul.1.1.3 = mul nsw i32 %465, %466
  %arrayidx19.1.1.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.1.1.3 = getelementptr inbounds [7 x i32]* %arrayidx19.1.1.3, i32 0, i64 1
  %467 = load i32* %arrayidx20.1.1.3, align 4
  %add.1.1.3 = add nsw i32 %467, %mul.1.1.3
  store i32 %add.1.1.3, i32* %arrayidx20.1.1.3, align 4
  br label %for.inc.1.1.3

for.inc.1.1.3:                                    ; preds = %for.inc.112.3
  %arrayidx11.2.1.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.2.1.3 = getelementptr inbounds [7 x i32]* %arrayidx11.2.1.3, i32 0, i64 2
  %468 = load i32* %arrayidx12.2.1.3, align 4
  %arrayidx15.2.1.3 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.1.3 = getelementptr inbounds [7 x i32]* %arrayidx15.2.1.3, i32 0, i64 1
  %469 = load i32* %arrayidx16.2.1.3, align 4
  %mul.2.1.3 = mul nsw i32 %468, %469
  %arrayidx19.2.1.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.2.1.3 = getelementptr inbounds [7 x i32]* %arrayidx19.2.1.3, i32 0, i64 1
  %470 = load i32* %arrayidx20.2.1.3, align 4
  %add.2.1.3 = add nsw i32 %470, %mul.2.1.3
  store i32 %add.2.1.3, i32* %arrayidx20.2.1.3, align 4
  br label %for.inc.2.1.3

for.inc.2.1.3:                                    ; preds = %for.inc.1.1.3
  %arrayidx11.3.1.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.3.1.3 = getelementptr inbounds [7 x i32]* %arrayidx11.3.1.3, i32 0, i64 3
  %471 = load i32* %arrayidx12.3.1.3, align 4
  %arrayidx15.3.1.3 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.1.3 = getelementptr inbounds [7 x i32]* %arrayidx15.3.1.3, i32 0, i64 1
  %472 = load i32* %arrayidx16.3.1.3, align 4
  %mul.3.1.3 = mul nsw i32 %471, %472
  %arrayidx19.3.1.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.3.1.3 = getelementptr inbounds [7 x i32]* %arrayidx19.3.1.3, i32 0, i64 1
  %473 = load i32* %arrayidx20.3.1.3, align 4
  %add.3.1.3 = add nsw i32 %473, %mul.3.1.3
  store i32 %add.3.1.3, i32* %arrayidx20.3.1.3, align 4
  br label %for.inc.3.1.3

for.inc.3.1.3:                                    ; preds = %for.inc.2.1.3
  %arrayidx11.4.1.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.4.1.3 = getelementptr inbounds [7 x i32]* %arrayidx11.4.1.3, i32 0, i64 4
  %474 = load i32* %arrayidx12.4.1.3, align 4
  %arrayidx15.4.1.3 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.1.3 = getelementptr inbounds [7 x i32]* %arrayidx15.4.1.3, i32 0, i64 1
  %475 = load i32* %arrayidx16.4.1.3, align 4
  %mul.4.1.3 = mul nsw i32 %474, %475
  %arrayidx19.4.1.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.4.1.3 = getelementptr inbounds [7 x i32]* %arrayidx19.4.1.3, i32 0, i64 1
  %476 = load i32* %arrayidx20.4.1.3, align 4
  %add.4.1.3 = add nsw i32 %476, %mul.4.1.3
  store i32 %add.4.1.3, i32* %arrayidx20.4.1.3, align 4
  br label %for.inc.4.1.3

for.inc.4.1.3:                                    ; preds = %for.inc.3.1.3
  %arrayidx11.5.1.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.5.1.3 = getelementptr inbounds [7 x i32]* %arrayidx11.5.1.3, i32 0, i64 5
  %477 = load i32* %arrayidx12.5.1.3, align 4
  %arrayidx15.5.1.3 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.1.3 = getelementptr inbounds [7 x i32]* %arrayidx15.5.1.3, i32 0, i64 1
  %478 = load i32* %arrayidx16.5.1.3, align 4
  %mul.5.1.3 = mul nsw i32 %477, %478
  %arrayidx19.5.1.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.5.1.3 = getelementptr inbounds [7 x i32]* %arrayidx19.5.1.3, i32 0, i64 1
  %479 = load i32* %arrayidx20.5.1.3, align 4
  %add.5.1.3 = add nsw i32 %479, %mul.5.1.3
  store i32 %add.5.1.3, i32* %arrayidx20.5.1.3, align 4
  br label %for.inc.5.1.3

for.inc.5.1.3:                                    ; preds = %for.inc.4.1.3
  %arrayidx11.6.1.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.6.1.3 = getelementptr inbounds [7 x i32]* %arrayidx11.6.1.3, i32 0, i64 6
  %480 = load i32* %arrayidx12.6.1.3, align 4
  %arrayidx15.6.1.3 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.1.3 = getelementptr inbounds [7 x i32]* %arrayidx15.6.1.3, i32 0, i64 1
  %481 = load i32* %arrayidx16.6.1.3, align 4
  %mul.6.1.3 = mul nsw i32 %480, %481
  %arrayidx19.6.1.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.6.1.3 = getelementptr inbounds [7 x i32]* %arrayidx19.6.1.3, i32 0, i64 1
  %482 = load i32* %arrayidx20.6.1.3, align 4
  %add.6.1.3 = add nsw i32 %482, %mul.6.1.3
  store i32 %add.6.1.3, i32* %arrayidx20.6.1.3, align 4
  br label %for.inc.6.1.3

for.inc.6.1.3:                                    ; preds = %for.inc.5.1.3
  br label %for.inc21.1.3

for.inc21.1.3:                                    ; preds = %for.inc.6.1.3
  %arrayidx.2.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx5.2.3 = getelementptr inbounds [7 x i32]* %arrayidx.2.3, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.3, align 4
  br label %for.body8.2.3

for.body8.2.3:                                    ; preds = %for.inc21.1.3
  %arrayidx11.214.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.215.3 = getelementptr inbounds [7 x i32]* %arrayidx11.214.3, i32 0, i64 0
  %483 = load i32* %arrayidx12.215.3, align 4
  %arrayidx16.216.3 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 2
  %484 = load i32* %arrayidx16.216.3, align 4
  %mul.217.3 = mul nsw i32 %483, %484
  %arrayidx19.219.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.220.3 = getelementptr inbounds [7 x i32]* %arrayidx19.219.3, i32 0, i64 2
  %485 = load i32* %arrayidx20.220.3, align 4
  %add.221.3 = add nsw i32 %485, %mul.217.3
  store i32 %add.221.3, i32* %arrayidx20.220.3, align 4
  br label %for.inc.222.3

for.inc.222.3:                                    ; preds = %for.body8.2.3
  %arrayidx11.1.2.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.1.2.3 = getelementptr inbounds [7 x i32]* %arrayidx11.1.2.3, i32 0, i64 1
  %486 = load i32* %arrayidx12.1.2.3, align 4
  %arrayidx15.1.2.3 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.2.3 = getelementptr inbounds [7 x i32]* %arrayidx15.1.2.3, i32 0, i64 2
  %487 = load i32* %arrayidx16.1.2.3, align 4
  %mul.1.2.3 = mul nsw i32 %486, %487
  %arrayidx19.1.2.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.1.2.3 = getelementptr inbounds [7 x i32]* %arrayidx19.1.2.3, i32 0, i64 2
  %488 = load i32* %arrayidx20.1.2.3, align 4
  %add.1.2.3 = add nsw i32 %488, %mul.1.2.3
  store i32 %add.1.2.3, i32* %arrayidx20.1.2.3, align 4
  br label %for.inc.1.2.3

for.inc.1.2.3:                                    ; preds = %for.inc.222.3
  %arrayidx11.2.2.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.2.2.3 = getelementptr inbounds [7 x i32]* %arrayidx11.2.2.3, i32 0, i64 2
  %489 = load i32* %arrayidx12.2.2.3, align 4
  %arrayidx15.2.2.3 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.2.3 = getelementptr inbounds [7 x i32]* %arrayidx15.2.2.3, i32 0, i64 2
  %490 = load i32* %arrayidx16.2.2.3, align 4
  %mul.2.2.3 = mul nsw i32 %489, %490
  %arrayidx19.2.2.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.2.2.3 = getelementptr inbounds [7 x i32]* %arrayidx19.2.2.3, i32 0, i64 2
  %491 = load i32* %arrayidx20.2.2.3, align 4
  %add.2.2.3 = add nsw i32 %491, %mul.2.2.3
  store i32 %add.2.2.3, i32* %arrayidx20.2.2.3, align 4
  br label %for.inc.2.2.3

for.inc.2.2.3:                                    ; preds = %for.inc.1.2.3
  %arrayidx11.3.2.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.3.2.3 = getelementptr inbounds [7 x i32]* %arrayidx11.3.2.3, i32 0, i64 3
  %492 = load i32* %arrayidx12.3.2.3, align 4
  %arrayidx15.3.2.3 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.2.3 = getelementptr inbounds [7 x i32]* %arrayidx15.3.2.3, i32 0, i64 2
  %493 = load i32* %arrayidx16.3.2.3, align 4
  %mul.3.2.3 = mul nsw i32 %492, %493
  %arrayidx19.3.2.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.3.2.3 = getelementptr inbounds [7 x i32]* %arrayidx19.3.2.3, i32 0, i64 2
  %494 = load i32* %arrayidx20.3.2.3, align 4
  %add.3.2.3 = add nsw i32 %494, %mul.3.2.3
  store i32 %add.3.2.3, i32* %arrayidx20.3.2.3, align 4
  br label %for.inc.3.2.3

for.inc.3.2.3:                                    ; preds = %for.inc.2.2.3
  %arrayidx11.4.2.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.4.2.3 = getelementptr inbounds [7 x i32]* %arrayidx11.4.2.3, i32 0, i64 4
  %495 = load i32* %arrayidx12.4.2.3, align 4
  %arrayidx15.4.2.3 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.2.3 = getelementptr inbounds [7 x i32]* %arrayidx15.4.2.3, i32 0, i64 2
  %496 = load i32* %arrayidx16.4.2.3, align 4
  %mul.4.2.3 = mul nsw i32 %495, %496
  %arrayidx19.4.2.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.4.2.3 = getelementptr inbounds [7 x i32]* %arrayidx19.4.2.3, i32 0, i64 2
  %497 = load i32* %arrayidx20.4.2.3, align 4
  %add.4.2.3 = add nsw i32 %497, %mul.4.2.3
  store i32 %add.4.2.3, i32* %arrayidx20.4.2.3, align 4
  br label %for.inc.4.2.3

for.inc.4.2.3:                                    ; preds = %for.inc.3.2.3
  %arrayidx11.5.2.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.5.2.3 = getelementptr inbounds [7 x i32]* %arrayidx11.5.2.3, i32 0, i64 5
  %498 = load i32* %arrayidx12.5.2.3, align 4
  %arrayidx15.5.2.3 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.2.3 = getelementptr inbounds [7 x i32]* %arrayidx15.5.2.3, i32 0, i64 2
  %499 = load i32* %arrayidx16.5.2.3, align 4
  %mul.5.2.3 = mul nsw i32 %498, %499
  %arrayidx19.5.2.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.5.2.3 = getelementptr inbounds [7 x i32]* %arrayidx19.5.2.3, i32 0, i64 2
  %500 = load i32* %arrayidx20.5.2.3, align 4
  %add.5.2.3 = add nsw i32 %500, %mul.5.2.3
  store i32 %add.5.2.3, i32* %arrayidx20.5.2.3, align 4
  br label %for.inc.5.2.3

for.inc.5.2.3:                                    ; preds = %for.inc.4.2.3
  %arrayidx11.6.2.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.6.2.3 = getelementptr inbounds [7 x i32]* %arrayidx11.6.2.3, i32 0, i64 6
  %501 = load i32* %arrayidx12.6.2.3, align 4
  %arrayidx15.6.2.3 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.2.3 = getelementptr inbounds [7 x i32]* %arrayidx15.6.2.3, i32 0, i64 2
  %502 = load i32* %arrayidx16.6.2.3, align 4
  %mul.6.2.3 = mul nsw i32 %501, %502
  %arrayidx19.6.2.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.6.2.3 = getelementptr inbounds [7 x i32]* %arrayidx19.6.2.3, i32 0, i64 2
  %503 = load i32* %arrayidx20.6.2.3, align 4
  %add.6.2.3 = add nsw i32 %503, %mul.6.2.3
  store i32 %add.6.2.3, i32* %arrayidx20.6.2.3, align 4
  br label %for.inc.6.2.3

for.inc.6.2.3:                                    ; preds = %for.inc.5.2.3
  br label %for.inc21.2.3

for.inc21.2.3:                                    ; preds = %for.inc.6.2.3
  %arrayidx.3.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx5.3.3 = getelementptr inbounds [7 x i32]* %arrayidx.3.3, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.3, align 4
  br label %for.body8.3.3

for.body8.3.3:                                    ; preds = %for.inc21.2.3
  %arrayidx11.324.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.325.3 = getelementptr inbounds [7 x i32]* %arrayidx11.324.3, i32 0, i64 0
  %504 = load i32* %arrayidx12.325.3, align 4
  %arrayidx16.326.3 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 3
  %505 = load i32* %arrayidx16.326.3, align 4
  %mul.327.3 = mul nsw i32 %504, %505
  %arrayidx19.329.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.330.3 = getelementptr inbounds [7 x i32]* %arrayidx19.329.3, i32 0, i64 3
  %506 = load i32* %arrayidx20.330.3, align 4
  %add.331.3 = add nsw i32 %506, %mul.327.3
  store i32 %add.331.3, i32* %arrayidx20.330.3, align 4
  br label %for.inc.332.3

for.inc.332.3:                                    ; preds = %for.body8.3.3
  %arrayidx11.1.3.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.1.3.3 = getelementptr inbounds [7 x i32]* %arrayidx11.1.3.3, i32 0, i64 1
  %507 = load i32* %arrayidx12.1.3.3, align 4
  %arrayidx15.1.3.3 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.3.3 = getelementptr inbounds [7 x i32]* %arrayidx15.1.3.3, i32 0, i64 3
  %508 = load i32* %arrayidx16.1.3.3, align 4
  %mul.1.3.3 = mul nsw i32 %507, %508
  %arrayidx19.1.3.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.1.3.3 = getelementptr inbounds [7 x i32]* %arrayidx19.1.3.3, i32 0, i64 3
  %509 = load i32* %arrayidx20.1.3.3, align 4
  %add.1.3.3 = add nsw i32 %509, %mul.1.3.3
  store i32 %add.1.3.3, i32* %arrayidx20.1.3.3, align 4
  br label %for.inc.1.3.3

for.inc.1.3.3:                                    ; preds = %for.inc.332.3
  %arrayidx11.2.3.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.2.3.3 = getelementptr inbounds [7 x i32]* %arrayidx11.2.3.3, i32 0, i64 2
  %510 = load i32* %arrayidx12.2.3.3, align 4
  %arrayidx15.2.3.3 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.3.3 = getelementptr inbounds [7 x i32]* %arrayidx15.2.3.3, i32 0, i64 3
  %511 = load i32* %arrayidx16.2.3.3, align 4
  %mul.2.3.3 = mul nsw i32 %510, %511
  %arrayidx19.2.3.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.2.3.3 = getelementptr inbounds [7 x i32]* %arrayidx19.2.3.3, i32 0, i64 3
  %512 = load i32* %arrayidx20.2.3.3, align 4
  %add.2.3.3 = add nsw i32 %512, %mul.2.3.3
  store i32 %add.2.3.3, i32* %arrayidx20.2.3.3, align 4
  br label %for.inc.2.3.3

for.inc.2.3.3:                                    ; preds = %for.inc.1.3.3
  %arrayidx11.3.3.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.3.3.3 = getelementptr inbounds [7 x i32]* %arrayidx11.3.3.3, i32 0, i64 3
  %513 = load i32* %arrayidx12.3.3.3, align 4
  %arrayidx15.3.3.3 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.3.3 = getelementptr inbounds [7 x i32]* %arrayidx15.3.3.3, i32 0, i64 3
  %514 = load i32* %arrayidx16.3.3.3, align 4
  %mul.3.3.3 = mul nsw i32 %513, %514
  %arrayidx19.3.3.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.3.3.3 = getelementptr inbounds [7 x i32]* %arrayidx19.3.3.3, i32 0, i64 3
  %515 = load i32* %arrayidx20.3.3.3, align 4
  %add.3.3.3 = add nsw i32 %515, %mul.3.3.3
  store i32 %add.3.3.3, i32* %arrayidx20.3.3.3, align 4
  br label %for.inc.3.3.3

for.inc.3.3.3:                                    ; preds = %for.inc.2.3.3
  %arrayidx11.4.3.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.4.3.3 = getelementptr inbounds [7 x i32]* %arrayidx11.4.3.3, i32 0, i64 4
  %516 = load i32* %arrayidx12.4.3.3, align 4
  %arrayidx15.4.3.3 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.3.3 = getelementptr inbounds [7 x i32]* %arrayidx15.4.3.3, i32 0, i64 3
  %517 = load i32* %arrayidx16.4.3.3, align 4
  %mul.4.3.3 = mul nsw i32 %516, %517
  %arrayidx19.4.3.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.4.3.3 = getelementptr inbounds [7 x i32]* %arrayidx19.4.3.3, i32 0, i64 3
  %518 = load i32* %arrayidx20.4.3.3, align 4
  %add.4.3.3 = add nsw i32 %518, %mul.4.3.3
  store i32 %add.4.3.3, i32* %arrayidx20.4.3.3, align 4
  br label %for.inc.4.3.3

for.inc.4.3.3:                                    ; preds = %for.inc.3.3.3
  %arrayidx11.5.3.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.5.3.3 = getelementptr inbounds [7 x i32]* %arrayidx11.5.3.3, i32 0, i64 5
  %519 = load i32* %arrayidx12.5.3.3, align 4
  %arrayidx15.5.3.3 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.3.3 = getelementptr inbounds [7 x i32]* %arrayidx15.5.3.3, i32 0, i64 3
  %520 = load i32* %arrayidx16.5.3.3, align 4
  %mul.5.3.3 = mul nsw i32 %519, %520
  %arrayidx19.5.3.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.5.3.3 = getelementptr inbounds [7 x i32]* %arrayidx19.5.3.3, i32 0, i64 3
  %521 = load i32* %arrayidx20.5.3.3, align 4
  %add.5.3.3 = add nsw i32 %521, %mul.5.3.3
  store i32 %add.5.3.3, i32* %arrayidx20.5.3.3, align 4
  br label %for.inc.5.3.3

for.inc.5.3.3:                                    ; preds = %for.inc.4.3.3
  %arrayidx11.6.3.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.6.3.3 = getelementptr inbounds [7 x i32]* %arrayidx11.6.3.3, i32 0, i64 6
  %522 = load i32* %arrayidx12.6.3.3, align 4
  %arrayidx15.6.3.3 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.3.3 = getelementptr inbounds [7 x i32]* %arrayidx15.6.3.3, i32 0, i64 3
  %523 = load i32* %arrayidx16.6.3.3, align 4
  %mul.6.3.3 = mul nsw i32 %522, %523
  %arrayidx19.6.3.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.6.3.3 = getelementptr inbounds [7 x i32]* %arrayidx19.6.3.3, i32 0, i64 3
  %524 = load i32* %arrayidx20.6.3.3, align 4
  %add.6.3.3 = add nsw i32 %524, %mul.6.3.3
  store i32 %add.6.3.3, i32* %arrayidx20.6.3.3, align 4
  br label %for.inc.6.3.3

for.inc.6.3.3:                                    ; preds = %for.inc.5.3.3
  br label %for.inc21.3.3

for.inc21.3.3:                                    ; preds = %for.inc.6.3.3
  %arrayidx.4.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx5.4.3 = getelementptr inbounds [7 x i32]* %arrayidx.4.3, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.3, align 4
  br label %for.body8.4.3

for.body8.4.3:                                    ; preds = %for.inc21.3.3
  %arrayidx11.434.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.435.3 = getelementptr inbounds [7 x i32]* %arrayidx11.434.3, i32 0, i64 0
  %525 = load i32* %arrayidx12.435.3, align 4
  %arrayidx16.436.3 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 4
  %526 = load i32* %arrayidx16.436.3, align 4
  %mul.437.3 = mul nsw i32 %525, %526
  %arrayidx19.439.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.440.3 = getelementptr inbounds [7 x i32]* %arrayidx19.439.3, i32 0, i64 4
  %527 = load i32* %arrayidx20.440.3, align 4
  %add.441.3 = add nsw i32 %527, %mul.437.3
  store i32 %add.441.3, i32* %arrayidx20.440.3, align 4
  br label %for.inc.442.3

for.inc.442.3:                                    ; preds = %for.body8.4.3
  %arrayidx11.1.4.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.1.4.3 = getelementptr inbounds [7 x i32]* %arrayidx11.1.4.3, i32 0, i64 1
  %528 = load i32* %arrayidx12.1.4.3, align 4
  %arrayidx15.1.4.3 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.4.3 = getelementptr inbounds [7 x i32]* %arrayidx15.1.4.3, i32 0, i64 4
  %529 = load i32* %arrayidx16.1.4.3, align 4
  %mul.1.4.3 = mul nsw i32 %528, %529
  %arrayidx19.1.4.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.1.4.3 = getelementptr inbounds [7 x i32]* %arrayidx19.1.4.3, i32 0, i64 4
  %530 = load i32* %arrayidx20.1.4.3, align 4
  %add.1.4.3 = add nsw i32 %530, %mul.1.4.3
  store i32 %add.1.4.3, i32* %arrayidx20.1.4.3, align 4
  br label %for.inc.1.4.3

for.inc.1.4.3:                                    ; preds = %for.inc.442.3
  %arrayidx11.2.4.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.2.4.3 = getelementptr inbounds [7 x i32]* %arrayidx11.2.4.3, i32 0, i64 2
  %531 = load i32* %arrayidx12.2.4.3, align 4
  %arrayidx15.2.4.3 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.4.3 = getelementptr inbounds [7 x i32]* %arrayidx15.2.4.3, i32 0, i64 4
  %532 = load i32* %arrayidx16.2.4.3, align 4
  %mul.2.4.3 = mul nsw i32 %531, %532
  %arrayidx19.2.4.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.2.4.3 = getelementptr inbounds [7 x i32]* %arrayidx19.2.4.3, i32 0, i64 4
  %533 = load i32* %arrayidx20.2.4.3, align 4
  %add.2.4.3 = add nsw i32 %533, %mul.2.4.3
  store i32 %add.2.4.3, i32* %arrayidx20.2.4.3, align 4
  br label %for.inc.2.4.3

for.inc.2.4.3:                                    ; preds = %for.inc.1.4.3
  %arrayidx11.3.4.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.3.4.3 = getelementptr inbounds [7 x i32]* %arrayidx11.3.4.3, i32 0, i64 3
  %534 = load i32* %arrayidx12.3.4.3, align 4
  %arrayidx15.3.4.3 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.4.3 = getelementptr inbounds [7 x i32]* %arrayidx15.3.4.3, i32 0, i64 4
  %535 = load i32* %arrayidx16.3.4.3, align 4
  %mul.3.4.3 = mul nsw i32 %534, %535
  %arrayidx19.3.4.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.3.4.3 = getelementptr inbounds [7 x i32]* %arrayidx19.3.4.3, i32 0, i64 4
  %536 = load i32* %arrayidx20.3.4.3, align 4
  %add.3.4.3 = add nsw i32 %536, %mul.3.4.3
  store i32 %add.3.4.3, i32* %arrayidx20.3.4.3, align 4
  br label %for.inc.3.4.3

for.inc.3.4.3:                                    ; preds = %for.inc.2.4.3
  %arrayidx11.4.4.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.4.4.3 = getelementptr inbounds [7 x i32]* %arrayidx11.4.4.3, i32 0, i64 4
  %537 = load i32* %arrayidx12.4.4.3, align 4
  %arrayidx15.4.4.3 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.4.3 = getelementptr inbounds [7 x i32]* %arrayidx15.4.4.3, i32 0, i64 4
  %538 = load i32* %arrayidx16.4.4.3, align 4
  %mul.4.4.3 = mul nsw i32 %537, %538
  %arrayidx19.4.4.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.4.4.3 = getelementptr inbounds [7 x i32]* %arrayidx19.4.4.3, i32 0, i64 4
  %539 = load i32* %arrayidx20.4.4.3, align 4
  %add.4.4.3 = add nsw i32 %539, %mul.4.4.3
  store i32 %add.4.4.3, i32* %arrayidx20.4.4.3, align 4
  br label %for.inc.4.4.3

for.inc.4.4.3:                                    ; preds = %for.inc.3.4.3
  %arrayidx11.5.4.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.5.4.3 = getelementptr inbounds [7 x i32]* %arrayidx11.5.4.3, i32 0, i64 5
  %540 = load i32* %arrayidx12.5.4.3, align 4
  %arrayidx15.5.4.3 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.4.3 = getelementptr inbounds [7 x i32]* %arrayidx15.5.4.3, i32 0, i64 4
  %541 = load i32* %arrayidx16.5.4.3, align 4
  %mul.5.4.3 = mul nsw i32 %540, %541
  %arrayidx19.5.4.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.5.4.3 = getelementptr inbounds [7 x i32]* %arrayidx19.5.4.3, i32 0, i64 4
  %542 = load i32* %arrayidx20.5.4.3, align 4
  %add.5.4.3 = add nsw i32 %542, %mul.5.4.3
  store i32 %add.5.4.3, i32* %arrayidx20.5.4.3, align 4
  br label %for.inc.5.4.3

for.inc.5.4.3:                                    ; preds = %for.inc.4.4.3
  %arrayidx11.6.4.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.6.4.3 = getelementptr inbounds [7 x i32]* %arrayidx11.6.4.3, i32 0, i64 6
  %543 = load i32* %arrayidx12.6.4.3, align 4
  %arrayidx15.6.4.3 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.4.3 = getelementptr inbounds [7 x i32]* %arrayidx15.6.4.3, i32 0, i64 4
  %544 = load i32* %arrayidx16.6.4.3, align 4
  %mul.6.4.3 = mul nsw i32 %543, %544
  %arrayidx19.6.4.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.6.4.3 = getelementptr inbounds [7 x i32]* %arrayidx19.6.4.3, i32 0, i64 4
  %545 = load i32* %arrayidx20.6.4.3, align 4
  %add.6.4.3 = add nsw i32 %545, %mul.6.4.3
  store i32 %add.6.4.3, i32* %arrayidx20.6.4.3, align 4
  br label %for.inc.6.4.3

for.inc.6.4.3:                                    ; preds = %for.inc.5.4.3
  br label %for.inc21.4.3

for.inc21.4.3:                                    ; preds = %for.inc.6.4.3
  %arrayidx.5.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx5.5.3 = getelementptr inbounds [7 x i32]* %arrayidx.5.3, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.3, align 4
  br label %for.body8.5.3

for.body8.5.3:                                    ; preds = %for.inc21.4.3
  %arrayidx11.544.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.545.3 = getelementptr inbounds [7 x i32]* %arrayidx11.544.3, i32 0, i64 0
  %546 = load i32* %arrayidx12.545.3, align 4
  %arrayidx16.546.3 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 5
  %547 = load i32* %arrayidx16.546.3, align 4
  %mul.547.3 = mul nsw i32 %546, %547
  %arrayidx19.549.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.550.3 = getelementptr inbounds [7 x i32]* %arrayidx19.549.3, i32 0, i64 5
  %548 = load i32* %arrayidx20.550.3, align 4
  %add.551.3 = add nsw i32 %548, %mul.547.3
  store i32 %add.551.3, i32* %arrayidx20.550.3, align 4
  br label %for.inc.552.3

for.inc.552.3:                                    ; preds = %for.body8.5.3
  %arrayidx11.1.5.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.1.5.3 = getelementptr inbounds [7 x i32]* %arrayidx11.1.5.3, i32 0, i64 1
  %549 = load i32* %arrayidx12.1.5.3, align 4
  %arrayidx15.1.5.3 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.5.3 = getelementptr inbounds [7 x i32]* %arrayidx15.1.5.3, i32 0, i64 5
  %550 = load i32* %arrayidx16.1.5.3, align 4
  %mul.1.5.3 = mul nsw i32 %549, %550
  %arrayidx19.1.5.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.1.5.3 = getelementptr inbounds [7 x i32]* %arrayidx19.1.5.3, i32 0, i64 5
  %551 = load i32* %arrayidx20.1.5.3, align 4
  %add.1.5.3 = add nsw i32 %551, %mul.1.5.3
  store i32 %add.1.5.3, i32* %arrayidx20.1.5.3, align 4
  br label %for.inc.1.5.3

for.inc.1.5.3:                                    ; preds = %for.inc.552.3
  %arrayidx11.2.5.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.2.5.3 = getelementptr inbounds [7 x i32]* %arrayidx11.2.5.3, i32 0, i64 2
  %552 = load i32* %arrayidx12.2.5.3, align 4
  %arrayidx15.2.5.3 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.5.3 = getelementptr inbounds [7 x i32]* %arrayidx15.2.5.3, i32 0, i64 5
  %553 = load i32* %arrayidx16.2.5.3, align 4
  %mul.2.5.3 = mul nsw i32 %552, %553
  %arrayidx19.2.5.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.2.5.3 = getelementptr inbounds [7 x i32]* %arrayidx19.2.5.3, i32 0, i64 5
  %554 = load i32* %arrayidx20.2.5.3, align 4
  %add.2.5.3 = add nsw i32 %554, %mul.2.5.3
  store i32 %add.2.5.3, i32* %arrayidx20.2.5.3, align 4
  br label %for.inc.2.5.3

for.inc.2.5.3:                                    ; preds = %for.inc.1.5.3
  %arrayidx11.3.5.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.3.5.3 = getelementptr inbounds [7 x i32]* %arrayidx11.3.5.3, i32 0, i64 3
  %555 = load i32* %arrayidx12.3.5.3, align 4
  %arrayidx15.3.5.3 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.5.3 = getelementptr inbounds [7 x i32]* %arrayidx15.3.5.3, i32 0, i64 5
  %556 = load i32* %arrayidx16.3.5.3, align 4
  %mul.3.5.3 = mul nsw i32 %555, %556
  %arrayidx19.3.5.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.3.5.3 = getelementptr inbounds [7 x i32]* %arrayidx19.3.5.3, i32 0, i64 5
  %557 = load i32* %arrayidx20.3.5.3, align 4
  %add.3.5.3 = add nsw i32 %557, %mul.3.5.3
  store i32 %add.3.5.3, i32* %arrayidx20.3.5.3, align 4
  br label %for.inc.3.5.3

for.inc.3.5.3:                                    ; preds = %for.inc.2.5.3
  %arrayidx11.4.5.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.4.5.3 = getelementptr inbounds [7 x i32]* %arrayidx11.4.5.3, i32 0, i64 4
  %558 = load i32* %arrayidx12.4.5.3, align 4
  %arrayidx15.4.5.3 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.5.3 = getelementptr inbounds [7 x i32]* %arrayidx15.4.5.3, i32 0, i64 5
  %559 = load i32* %arrayidx16.4.5.3, align 4
  %mul.4.5.3 = mul nsw i32 %558, %559
  %arrayidx19.4.5.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.4.5.3 = getelementptr inbounds [7 x i32]* %arrayidx19.4.5.3, i32 0, i64 5
  %560 = load i32* %arrayidx20.4.5.3, align 4
  %add.4.5.3 = add nsw i32 %560, %mul.4.5.3
  store i32 %add.4.5.3, i32* %arrayidx20.4.5.3, align 4
  br label %for.inc.4.5.3

for.inc.4.5.3:                                    ; preds = %for.inc.3.5.3
  %arrayidx11.5.5.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.5.5.3 = getelementptr inbounds [7 x i32]* %arrayidx11.5.5.3, i32 0, i64 5
  %561 = load i32* %arrayidx12.5.5.3, align 4
  %arrayidx15.5.5.3 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.5.3 = getelementptr inbounds [7 x i32]* %arrayidx15.5.5.3, i32 0, i64 5
  %562 = load i32* %arrayidx16.5.5.3, align 4
  %mul.5.5.3 = mul nsw i32 %561, %562
  %arrayidx19.5.5.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.5.5.3 = getelementptr inbounds [7 x i32]* %arrayidx19.5.5.3, i32 0, i64 5
  %563 = load i32* %arrayidx20.5.5.3, align 4
  %add.5.5.3 = add nsw i32 %563, %mul.5.5.3
  store i32 %add.5.5.3, i32* %arrayidx20.5.5.3, align 4
  br label %for.inc.5.5.3

for.inc.5.5.3:                                    ; preds = %for.inc.4.5.3
  %arrayidx11.6.5.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.6.5.3 = getelementptr inbounds [7 x i32]* %arrayidx11.6.5.3, i32 0, i64 6
  %564 = load i32* %arrayidx12.6.5.3, align 4
  %arrayidx15.6.5.3 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.5.3 = getelementptr inbounds [7 x i32]* %arrayidx15.6.5.3, i32 0, i64 5
  %565 = load i32* %arrayidx16.6.5.3, align 4
  %mul.6.5.3 = mul nsw i32 %564, %565
  %arrayidx19.6.5.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.6.5.3 = getelementptr inbounds [7 x i32]* %arrayidx19.6.5.3, i32 0, i64 5
  %566 = load i32* %arrayidx20.6.5.3, align 4
  %add.6.5.3 = add nsw i32 %566, %mul.6.5.3
  store i32 %add.6.5.3, i32* %arrayidx20.6.5.3, align 4
  br label %for.inc.6.5.3

for.inc.6.5.3:                                    ; preds = %for.inc.5.5.3
  br label %for.inc21.5.3

for.inc21.5.3:                                    ; preds = %for.inc.6.5.3
  %arrayidx.6.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx5.6.3 = getelementptr inbounds [7 x i32]* %arrayidx.6.3, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.3, align 4
  br label %for.body8.6.3

for.body8.6.3:                                    ; preds = %for.inc21.5.3
  %arrayidx11.654.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.655.3 = getelementptr inbounds [7 x i32]* %arrayidx11.654.3, i32 0, i64 0
  %567 = load i32* %arrayidx12.655.3, align 4
  %arrayidx16.656.3 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 6
  %568 = load i32* %arrayidx16.656.3, align 4
  %mul.657.3 = mul nsw i32 %567, %568
  %arrayidx19.659.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.660.3 = getelementptr inbounds [7 x i32]* %arrayidx19.659.3, i32 0, i64 6
  %569 = load i32* %arrayidx20.660.3, align 4
  %add.661.3 = add nsw i32 %569, %mul.657.3
  store i32 %add.661.3, i32* %arrayidx20.660.3, align 4
  br label %for.inc.662.3

for.inc.662.3:                                    ; preds = %for.body8.6.3
  %arrayidx11.1.6.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.1.6.3 = getelementptr inbounds [7 x i32]* %arrayidx11.1.6.3, i32 0, i64 1
  %570 = load i32* %arrayidx12.1.6.3, align 4
  %arrayidx15.1.6.3 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.6.3 = getelementptr inbounds [7 x i32]* %arrayidx15.1.6.3, i32 0, i64 6
  %571 = load i32* %arrayidx16.1.6.3, align 4
  %mul.1.6.3 = mul nsw i32 %570, %571
  %arrayidx19.1.6.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.1.6.3 = getelementptr inbounds [7 x i32]* %arrayidx19.1.6.3, i32 0, i64 6
  %572 = load i32* %arrayidx20.1.6.3, align 4
  %add.1.6.3 = add nsw i32 %572, %mul.1.6.3
  store i32 %add.1.6.3, i32* %arrayidx20.1.6.3, align 4
  br label %for.inc.1.6.3

for.inc.1.6.3:                                    ; preds = %for.inc.662.3
  %arrayidx11.2.6.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.2.6.3 = getelementptr inbounds [7 x i32]* %arrayidx11.2.6.3, i32 0, i64 2
  %573 = load i32* %arrayidx12.2.6.3, align 4
  %arrayidx15.2.6.3 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.6.3 = getelementptr inbounds [7 x i32]* %arrayidx15.2.6.3, i32 0, i64 6
  %574 = load i32* %arrayidx16.2.6.3, align 4
  %mul.2.6.3 = mul nsw i32 %573, %574
  %arrayidx19.2.6.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.2.6.3 = getelementptr inbounds [7 x i32]* %arrayidx19.2.6.3, i32 0, i64 6
  %575 = load i32* %arrayidx20.2.6.3, align 4
  %add.2.6.3 = add nsw i32 %575, %mul.2.6.3
  store i32 %add.2.6.3, i32* %arrayidx20.2.6.3, align 4
  br label %for.inc.2.6.3

for.inc.2.6.3:                                    ; preds = %for.inc.1.6.3
  %arrayidx11.3.6.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.3.6.3 = getelementptr inbounds [7 x i32]* %arrayidx11.3.6.3, i32 0, i64 3
  %576 = load i32* %arrayidx12.3.6.3, align 4
  %arrayidx15.3.6.3 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.6.3 = getelementptr inbounds [7 x i32]* %arrayidx15.3.6.3, i32 0, i64 6
  %577 = load i32* %arrayidx16.3.6.3, align 4
  %mul.3.6.3 = mul nsw i32 %576, %577
  %arrayidx19.3.6.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.3.6.3 = getelementptr inbounds [7 x i32]* %arrayidx19.3.6.3, i32 0, i64 6
  %578 = load i32* %arrayidx20.3.6.3, align 4
  %add.3.6.3 = add nsw i32 %578, %mul.3.6.3
  store i32 %add.3.6.3, i32* %arrayidx20.3.6.3, align 4
  br label %for.inc.3.6.3

for.inc.3.6.3:                                    ; preds = %for.inc.2.6.3
  %arrayidx11.4.6.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.4.6.3 = getelementptr inbounds [7 x i32]* %arrayidx11.4.6.3, i32 0, i64 4
  %579 = load i32* %arrayidx12.4.6.3, align 4
  %arrayidx15.4.6.3 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.6.3 = getelementptr inbounds [7 x i32]* %arrayidx15.4.6.3, i32 0, i64 6
  %580 = load i32* %arrayidx16.4.6.3, align 4
  %mul.4.6.3 = mul nsw i32 %579, %580
  %arrayidx19.4.6.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.4.6.3 = getelementptr inbounds [7 x i32]* %arrayidx19.4.6.3, i32 0, i64 6
  %581 = load i32* %arrayidx20.4.6.3, align 4
  %add.4.6.3 = add nsw i32 %581, %mul.4.6.3
  store i32 %add.4.6.3, i32* %arrayidx20.4.6.3, align 4
  br label %for.inc.4.6.3

for.inc.4.6.3:                                    ; preds = %for.inc.3.6.3
  %arrayidx11.5.6.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.5.6.3 = getelementptr inbounds [7 x i32]* %arrayidx11.5.6.3, i32 0, i64 5
  %582 = load i32* %arrayidx12.5.6.3, align 4
  %arrayidx15.5.6.3 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.6.3 = getelementptr inbounds [7 x i32]* %arrayidx15.5.6.3, i32 0, i64 6
  %583 = load i32* %arrayidx16.5.6.3, align 4
  %mul.5.6.3 = mul nsw i32 %582, %583
  %arrayidx19.5.6.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.5.6.3 = getelementptr inbounds [7 x i32]* %arrayidx19.5.6.3, i32 0, i64 6
  %584 = load i32* %arrayidx20.5.6.3, align 4
  %add.5.6.3 = add nsw i32 %584, %mul.5.6.3
  store i32 %add.5.6.3, i32* %arrayidx20.5.6.3, align 4
  br label %for.inc.5.6.3

for.inc.5.6.3:                                    ; preds = %for.inc.4.6.3
  %arrayidx11.6.6.3 = getelementptr inbounds [7 x i32]* %a, i64 3
  %arrayidx12.6.6.3 = getelementptr inbounds [7 x i32]* %arrayidx11.6.6.3, i32 0, i64 6
  %585 = load i32* %arrayidx12.6.6.3, align 4
  %arrayidx15.6.6.3 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.6.3 = getelementptr inbounds [7 x i32]* %arrayidx15.6.6.3, i32 0, i64 6
  %586 = load i32* %arrayidx16.6.6.3, align 4
  %mul.6.6.3 = mul nsw i32 %585, %586
  %arrayidx19.6.6.3 = getelementptr inbounds [7 x i32]* %c, i64 3
  %arrayidx20.6.6.3 = getelementptr inbounds [7 x i32]* %arrayidx19.6.6.3, i32 0, i64 6
  %587 = load i32* %arrayidx20.6.6.3, align 4
  %add.6.6.3 = add nsw i32 %587, %mul.6.6.3
  store i32 %add.6.6.3, i32* %arrayidx20.6.6.3, align 4
  br label %for.inc.6.6.3

for.inc.6.6.3:                                    ; preds = %for.inc.5.6.3
  br label %for.inc21.6.3

for.inc21.6.3:                                    ; preds = %for.inc.6.6.3
  br label %for.inc24.3

for.inc24.3:                                      ; preds = %for.inc21.6.3
  br label %for.body3.4

for.body3.4:                                      ; preds = %for.inc24.3
  %arrayidx.4262 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx5.4263 = getelementptr inbounds [7 x i32]* %arrayidx.4262, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.4263, align 4
  br label %for.body8.4271

for.body8.4271:                                   ; preds = %for.body3.4
  %arrayidx11.4264 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.4265 = getelementptr inbounds [7 x i32]* %arrayidx11.4264, i32 0, i64 0
  %588 = load i32* %arrayidx12.4265, align 4
  %arrayidx16.4266 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 0
  %589 = load i32* %arrayidx16.4266, align 4
  %mul.4267 = mul nsw i32 %588, %589
  %arrayidx19.4268 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.4269 = getelementptr inbounds [7 x i32]* %arrayidx19.4268, i32 0, i64 0
  %590 = load i32* %arrayidx20.4269, align 4
  %add.4270 = add nsw i32 %590, %mul.4267
  store i32 %add.4270, i32* %arrayidx20.4269, align 4
  br label %for.inc.4280

for.inc.4280:                                     ; preds = %for.body8.4271
  %arrayidx11.1.4272 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.1.4273 = getelementptr inbounds [7 x i32]* %arrayidx11.1.4272, i32 0, i64 1
  %591 = load i32* %arrayidx12.1.4273, align 4
  %arrayidx15.1.4274 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.4275 = getelementptr inbounds [7 x i32]* %arrayidx15.1.4274, i32 0, i64 0
  %592 = load i32* %arrayidx16.1.4275, align 4
  %mul.1.4276 = mul nsw i32 %591, %592
  %arrayidx19.1.4277 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.1.4278 = getelementptr inbounds [7 x i32]* %arrayidx19.1.4277, i32 0, i64 0
  %593 = load i32* %arrayidx20.1.4278, align 4
  %add.1.4279 = add nsw i32 %593, %mul.1.4276
  store i32 %add.1.4279, i32* %arrayidx20.1.4278, align 4
  br label %for.inc.1.4289

for.inc.1.4289:                                   ; preds = %for.inc.4280
  %arrayidx11.2.4281 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.2.4282 = getelementptr inbounds [7 x i32]* %arrayidx11.2.4281, i32 0, i64 2
  %594 = load i32* %arrayidx12.2.4282, align 4
  %arrayidx15.2.4283 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.4284 = getelementptr inbounds [7 x i32]* %arrayidx15.2.4283, i32 0, i64 0
  %595 = load i32* %arrayidx16.2.4284, align 4
  %mul.2.4285 = mul nsw i32 %594, %595
  %arrayidx19.2.4286 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.2.4287 = getelementptr inbounds [7 x i32]* %arrayidx19.2.4286, i32 0, i64 0
  %596 = load i32* %arrayidx20.2.4287, align 4
  %add.2.4288 = add nsw i32 %596, %mul.2.4285
  store i32 %add.2.4288, i32* %arrayidx20.2.4287, align 4
  br label %for.inc.2.4298

for.inc.2.4298:                                   ; preds = %for.inc.1.4289
  %arrayidx11.3.4290 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.3.4291 = getelementptr inbounds [7 x i32]* %arrayidx11.3.4290, i32 0, i64 3
  %597 = load i32* %arrayidx12.3.4291, align 4
  %arrayidx15.3.4292 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.4293 = getelementptr inbounds [7 x i32]* %arrayidx15.3.4292, i32 0, i64 0
  %598 = load i32* %arrayidx16.3.4293, align 4
  %mul.3.4294 = mul nsw i32 %597, %598
  %arrayidx19.3.4295 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.3.4296 = getelementptr inbounds [7 x i32]* %arrayidx19.3.4295, i32 0, i64 0
  %599 = load i32* %arrayidx20.3.4296, align 4
  %add.3.4297 = add nsw i32 %599, %mul.3.4294
  store i32 %add.3.4297, i32* %arrayidx20.3.4296, align 4
  br label %for.inc.3.4307

for.inc.3.4307:                                   ; preds = %for.inc.2.4298
  %arrayidx11.4.4299 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.4.4300 = getelementptr inbounds [7 x i32]* %arrayidx11.4.4299, i32 0, i64 4
  %600 = load i32* %arrayidx12.4.4300, align 4
  %arrayidx15.4.4301 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.4302 = getelementptr inbounds [7 x i32]* %arrayidx15.4.4301, i32 0, i64 0
  %601 = load i32* %arrayidx16.4.4302, align 4
  %mul.4.4303 = mul nsw i32 %600, %601
  %arrayidx19.4.4304 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.4.4305 = getelementptr inbounds [7 x i32]* %arrayidx19.4.4304, i32 0, i64 0
  %602 = load i32* %arrayidx20.4.4305, align 4
  %add.4.4306 = add nsw i32 %602, %mul.4.4303
  store i32 %add.4.4306, i32* %arrayidx20.4.4305, align 4
  br label %for.inc.4.4316

for.inc.4.4316:                                   ; preds = %for.inc.3.4307
  %arrayidx11.5.4308 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.5.4309 = getelementptr inbounds [7 x i32]* %arrayidx11.5.4308, i32 0, i64 5
  %603 = load i32* %arrayidx12.5.4309, align 4
  %arrayidx15.5.4310 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.4311 = getelementptr inbounds [7 x i32]* %arrayidx15.5.4310, i32 0, i64 0
  %604 = load i32* %arrayidx16.5.4311, align 4
  %mul.5.4312 = mul nsw i32 %603, %604
  %arrayidx19.5.4313 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.5.4314 = getelementptr inbounds [7 x i32]* %arrayidx19.5.4313, i32 0, i64 0
  %605 = load i32* %arrayidx20.5.4314, align 4
  %add.5.4315 = add nsw i32 %605, %mul.5.4312
  store i32 %add.5.4315, i32* %arrayidx20.5.4314, align 4
  br label %for.inc.5.4325

for.inc.5.4325:                                   ; preds = %for.inc.4.4316
  %arrayidx11.6.4317 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.6.4318 = getelementptr inbounds [7 x i32]* %arrayidx11.6.4317, i32 0, i64 6
  %606 = load i32* %arrayidx12.6.4318, align 4
  %arrayidx15.6.4319 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.4320 = getelementptr inbounds [7 x i32]* %arrayidx15.6.4319, i32 0, i64 0
  %607 = load i32* %arrayidx16.6.4320, align 4
  %mul.6.4321 = mul nsw i32 %606, %607
  %arrayidx19.6.4322 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.6.4323 = getelementptr inbounds [7 x i32]* %arrayidx19.6.4322, i32 0, i64 0
  %608 = load i32* %arrayidx20.6.4323, align 4
  %add.6.4324 = add nsw i32 %608, %mul.6.4321
  store i32 %add.6.4324, i32* %arrayidx20.6.4323, align 4
  br label %for.inc.6.4326

for.inc.6.4326:                                   ; preds = %for.inc.5.4325
  br label %for.inc21.4327

for.inc21.4327:                                   ; preds = %for.inc.6.4326
  %arrayidx.1.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx5.1.4 = getelementptr inbounds [7 x i32]* %arrayidx.1.4, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.4, align 4
  br label %for.body8.1.4

for.body8.1.4:                                    ; preds = %for.inc21.4327
  %arrayidx11.14.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.15.4 = getelementptr inbounds [7 x i32]* %arrayidx11.14.4, i32 0, i64 0
  %609 = load i32* %arrayidx12.15.4, align 4
  %arrayidx16.16.4 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 1
  %610 = load i32* %arrayidx16.16.4, align 4
  %mul.17.4 = mul nsw i32 %609, %610
  %arrayidx19.19.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.110.4 = getelementptr inbounds [7 x i32]* %arrayidx19.19.4, i32 0, i64 1
  %611 = load i32* %arrayidx20.110.4, align 4
  %add.111.4 = add nsw i32 %611, %mul.17.4
  store i32 %add.111.4, i32* %arrayidx20.110.4, align 4
  br label %for.inc.112.4

for.inc.112.4:                                    ; preds = %for.body8.1.4
  %arrayidx11.1.1.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.1.1.4 = getelementptr inbounds [7 x i32]* %arrayidx11.1.1.4, i32 0, i64 1
  %612 = load i32* %arrayidx12.1.1.4, align 4
  %arrayidx15.1.1.4 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.1.4 = getelementptr inbounds [7 x i32]* %arrayidx15.1.1.4, i32 0, i64 1
  %613 = load i32* %arrayidx16.1.1.4, align 4
  %mul.1.1.4 = mul nsw i32 %612, %613
  %arrayidx19.1.1.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.1.1.4 = getelementptr inbounds [7 x i32]* %arrayidx19.1.1.4, i32 0, i64 1
  %614 = load i32* %arrayidx20.1.1.4, align 4
  %add.1.1.4 = add nsw i32 %614, %mul.1.1.4
  store i32 %add.1.1.4, i32* %arrayidx20.1.1.4, align 4
  br label %for.inc.1.1.4

for.inc.1.1.4:                                    ; preds = %for.inc.112.4
  %arrayidx11.2.1.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.2.1.4 = getelementptr inbounds [7 x i32]* %arrayidx11.2.1.4, i32 0, i64 2
  %615 = load i32* %arrayidx12.2.1.4, align 4
  %arrayidx15.2.1.4 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.1.4 = getelementptr inbounds [7 x i32]* %arrayidx15.2.1.4, i32 0, i64 1
  %616 = load i32* %arrayidx16.2.1.4, align 4
  %mul.2.1.4 = mul nsw i32 %615, %616
  %arrayidx19.2.1.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.2.1.4 = getelementptr inbounds [7 x i32]* %arrayidx19.2.1.4, i32 0, i64 1
  %617 = load i32* %arrayidx20.2.1.4, align 4
  %add.2.1.4 = add nsw i32 %617, %mul.2.1.4
  store i32 %add.2.1.4, i32* %arrayidx20.2.1.4, align 4
  br label %for.inc.2.1.4

for.inc.2.1.4:                                    ; preds = %for.inc.1.1.4
  %arrayidx11.3.1.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.3.1.4 = getelementptr inbounds [7 x i32]* %arrayidx11.3.1.4, i32 0, i64 3
  %618 = load i32* %arrayidx12.3.1.4, align 4
  %arrayidx15.3.1.4 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.1.4 = getelementptr inbounds [7 x i32]* %arrayidx15.3.1.4, i32 0, i64 1
  %619 = load i32* %arrayidx16.3.1.4, align 4
  %mul.3.1.4 = mul nsw i32 %618, %619
  %arrayidx19.3.1.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.3.1.4 = getelementptr inbounds [7 x i32]* %arrayidx19.3.1.4, i32 0, i64 1
  %620 = load i32* %arrayidx20.3.1.4, align 4
  %add.3.1.4 = add nsw i32 %620, %mul.3.1.4
  store i32 %add.3.1.4, i32* %arrayidx20.3.1.4, align 4
  br label %for.inc.3.1.4

for.inc.3.1.4:                                    ; preds = %for.inc.2.1.4
  %arrayidx11.4.1.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.4.1.4 = getelementptr inbounds [7 x i32]* %arrayidx11.4.1.4, i32 0, i64 4
  %621 = load i32* %arrayidx12.4.1.4, align 4
  %arrayidx15.4.1.4 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.1.4 = getelementptr inbounds [7 x i32]* %arrayidx15.4.1.4, i32 0, i64 1
  %622 = load i32* %arrayidx16.4.1.4, align 4
  %mul.4.1.4 = mul nsw i32 %621, %622
  %arrayidx19.4.1.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.4.1.4 = getelementptr inbounds [7 x i32]* %arrayidx19.4.1.4, i32 0, i64 1
  %623 = load i32* %arrayidx20.4.1.4, align 4
  %add.4.1.4 = add nsw i32 %623, %mul.4.1.4
  store i32 %add.4.1.4, i32* %arrayidx20.4.1.4, align 4
  br label %for.inc.4.1.4

for.inc.4.1.4:                                    ; preds = %for.inc.3.1.4
  %arrayidx11.5.1.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.5.1.4 = getelementptr inbounds [7 x i32]* %arrayidx11.5.1.4, i32 0, i64 5
  %624 = load i32* %arrayidx12.5.1.4, align 4
  %arrayidx15.5.1.4 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.1.4 = getelementptr inbounds [7 x i32]* %arrayidx15.5.1.4, i32 0, i64 1
  %625 = load i32* %arrayidx16.5.1.4, align 4
  %mul.5.1.4 = mul nsw i32 %624, %625
  %arrayidx19.5.1.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.5.1.4 = getelementptr inbounds [7 x i32]* %arrayidx19.5.1.4, i32 0, i64 1
  %626 = load i32* %arrayidx20.5.1.4, align 4
  %add.5.1.4 = add nsw i32 %626, %mul.5.1.4
  store i32 %add.5.1.4, i32* %arrayidx20.5.1.4, align 4
  br label %for.inc.5.1.4

for.inc.5.1.4:                                    ; preds = %for.inc.4.1.4
  %arrayidx11.6.1.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.6.1.4 = getelementptr inbounds [7 x i32]* %arrayidx11.6.1.4, i32 0, i64 6
  %627 = load i32* %arrayidx12.6.1.4, align 4
  %arrayidx15.6.1.4 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.1.4 = getelementptr inbounds [7 x i32]* %arrayidx15.6.1.4, i32 0, i64 1
  %628 = load i32* %arrayidx16.6.1.4, align 4
  %mul.6.1.4 = mul nsw i32 %627, %628
  %arrayidx19.6.1.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.6.1.4 = getelementptr inbounds [7 x i32]* %arrayidx19.6.1.4, i32 0, i64 1
  %629 = load i32* %arrayidx20.6.1.4, align 4
  %add.6.1.4 = add nsw i32 %629, %mul.6.1.4
  store i32 %add.6.1.4, i32* %arrayidx20.6.1.4, align 4
  br label %for.inc.6.1.4

for.inc.6.1.4:                                    ; preds = %for.inc.5.1.4
  br label %for.inc21.1.4

for.inc21.1.4:                                    ; preds = %for.inc.6.1.4
  %arrayidx.2.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx5.2.4 = getelementptr inbounds [7 x i32]* %arrayidx.2.4, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.4, align 4
  br label %for.body8.2.4

for.body8.2.4:                                    ; preds = %for.inc21.1.4
  %arrayidx11.214.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.215.4 = getelementptr inbounds [7 x i32]* %arrayidx11.214.4, i32 0, i64 0
  %630 = load i32* %arrayidx12.215.4, align 4
  %arrayidx16.216.4 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 2
  %631 = load i32* %arrayidx16.216.4, align 4
  %mul.217.4 = mul nsw i32 %630, %631
  %arrayidx19.219.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.220.4 = getelementptr inbounds [7 x i32]* %arrayidx19.219.4, i32 0, i64 2
  %632 = load i32* %arrayidx20.220.4, align 4
  %add.221.4 = add nsw i32 %632, %mul.217.4
  store i32 %add.221.4, i32* %arrayidx20.220.4, align 4
  br label %for.inc.222.4

for.inc.222.4:                                    ; preds = %for.body8.2.4
  %arrayidx11.1.2.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.1.2.4 = getelementptr inbounds [7 x i32]* %arrayidx11.1.2.4, i32 0, i64 1
  %633 = load i32* %arrayidx12.1.2.4, align 4
  %arrayidx15.1.2.4 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.2.4 = getelementptr inbounds [7 x i32]* %arrayidx15.1.2.4, i32 0, i64 2
  %634 = load i32* %arrayidx16.1.2.4, align 4
  %mul.1.2.4 = mul nsw i32 %633, %634
  %arrayidx19.1.2.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.1.2.4 = getelementptr inbounds [7 x i32]* %arrayidx19.1.2.4, i32 0, i64 2
  %635 = load i32* %arrayidx20.1.2.4, align 4
  %add.1.2.4 = add nsw i32 %635, %mul.1.2.4
  store i32 %add.1.2.4, i32* %arrayidx20.1.2.4, align 4
  br label %for.inc.1.2.4

for.inc.1.2.4:                                    ; preds = %for.inc.222.4
  %arrayidx11.2.2.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.2.2.4 = getelementptr inbounds [7 x i32]* %arrayidx11.2.2.4, i32 0, i64 2
  %636 = load i32* %arrayidx12.2.2.4, align 4
  %arrayidx15.2.2.4 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.2.4 = getelementptr inbounds [7 x i32]* %arrayidx15.2.2.4, i32 0, i64 2
  %637 = load i32* %arrayidx16.2.2.4, align 4
  %mul.2.2.4 = mul nsw i32 %636, %637
  %arrayidx19.2.2.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.2.2.4 = getelementptr inbounds [7 x i32]* %arrayidx19.2.2.4, i32 0, i64 2
  %638 = load i32* %arrayidx20.2.2.4, align 4
  %add.2.2.4 = add nsw i32 %638, %mul.2.2.4
  store i32 %add.2.2.4, i32* %arrayidx20.2.2.4, align 4
  br label %for.inc.2.2.4

for.inc.2.2.4:                                    ; preds = %for.inc.1.2.4
  %arrayidx11.3.2.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.3.2.4 = getelementptr inbounds [7 x i32]* %arrayidx11.3.2.4, i32 0, i64 3
  %639 = load i32* %arrayidx12.3.2.4, align 4
  %arrayidx15.3.2.4 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.2.4 = getelementptr inbounds [7 x i32]* %arrayidx15.3.2.4, i32 0, i64 2
  %640 = load i32* %arrayidx16.3.2.4, align 4
  %mul.3.2.4 = mul nsw i32 %639, %640
  %arrayidx19.3.2.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.3.2.4 = getelementptr inbounds [7 x i32]* %arrayidx19.3.2.4, i32 0, i64 2
  %641 = load i32* %arrayidx20.3.2.4, align 4
  %add.3.2.4 = add nsw i32 %641, %mul.3.2.4
  store i32 %add.3.2.4, i32* %arrayidx20.3.2.4, align 4
  br label %for.inc.3.2.4

for.inc.3.2.4:                                    ; preds = %for.inc.2.2.4
  %arrayidx11.4.2.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.4.2.4 = getelementptr inbounds [7 x i32]* %arrayidx11.4.2.4, i32 0, i64 4
  %642 = load i32* %arrayidx12.4.2.4, align 4
  %arrayidx15.4.2.4 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.2.4 = getelementptr inbounds [7 x i32]* %arrayidx15.4.2.4, i32 0, i64 2
  %643 = load i32* %arrayidx16.4.2.4, align 4
  %mul.4.2.4 = mul nsw i32 %642, %643
  %arrayidx19.4.2.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.4.2.4 = getelementptr inbounds [7 x i32]* %arrayidx19.4.2.4, i32 0, i64 2
  %644 = load i32* %arrayidx20.4.2.4, align 4
  %add.4.2.4 = add nsw i32 %644, %mul.4.2.4
  store i32 %add.4.2.4, i32* %arrayidx20.4.2.4, align 4
  br label %for.inc.4.2.4

for.inc.4.2.4:                                    ; preds = %for.inc.3.2.4
  %arrayidx11.5.2.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.5.2.4 = getelementptr inbounds [7 x i32]* %arrayidx11.5.2.4, i32 0, i64 5
  %645 = load i32* %arrayidx12.5.2.4, align 4
  %arrayidx15.5.2.4 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.2.4 = getelementptr inbounds [7 x i32]* %arrayidx15.5.2.4, i32 0, i64 2
  %646 = load i32* %arrayidx16.5.2.4, align 4
  %mul.5.2.4 = mul nsw i32 %645, %646
  %arrayidx19.5.2.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.5.2.4 = getelementptr inbounds [7 x i32]* %arrayidx19.5.2.4, i32 0, i64 2
  %647 = load i32* %arrayidx20.5.2.4, align 4
  %add.5.2.4 = add nsw i32 %647, %mul.5.2.4
  store i32 %add.5.2.4, i32* %arrayidx20.5.2.4, align 4
  br label %for.inc.5.2.4

for.inc.5.2.4:                                    ; preds = %for.inc.4.2.4
  %arrayidx11.6.2.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.6.2.4 = getelementptr inbounds [7 x i32]* %arrayidx11.6.2.4, i32 0, i64 6
  %648 = load i32* %arrayidx12.6.2.4, align 4
  %arrayidx15.6.2.4 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.2.4 = getelementptr inbounds [7 x i32]* %arrayidx15.6.2.4, i32 0, i64 2
  %649 = load i32* %arrayidx16.6.2.4, align 4
  %mul.6.2.4 = mul nsw i32 %648, %649
  %arrayidx19.6.2.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.6.2.4 = getelementptr inbounds [7 x i32]* %arrayidx19.6.2.4, i32 0, i64 2
  %650 = load i32* %arrayidx20.6.2.4, align 4
  %add.6.2.4 = add nsw i32 %650, %mul.6.2.4
  store i32 %add.6.2.4, i32* %arrayidx20.6.2.4, align 4
  br label %for.inc.6.2.4

for.inc.6.2.4:                                    ; preds = %for.inc.5.2.4
  br label %for.inc21.2.4

for.inc21.2.4:                                    ; preds = %for.inc.6.2.4
  %arrayidx.3.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx5.3.4 = getelementptr inbounds [7 x i32]* %arrayidx.3.4, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.4, align 4
  br label %for.body8.3.4

for.body8.3.4:                                    ; preds = %for.inc21.2.4
  %arrayidx11.324.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.325.4 = getelementptr inbounds [7 x i32]* %arrayidx11.324.4, i32 0, i64 0
  %651 = load i32* %arrayidx12.325.4, align 4
  %arrayidx16.326.4 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 3
  %652 = load i32* %arrayidx16.326.4, align 4
  %mul.327.4 = mul nsw i32 %651, %652
  %arrayidx19.329.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.330.4 = getelementptr inbounds [7 x i32]* %arrayidx19.329.4, i32 0, i64 3
  %653 = load i32* %arrayidx20.330.4, align 4
  %add.331.4 = add nsw i32 %653, %mul.327.4
  store i32 %add.331.4, i32* %arrayidx20.330.4, align 4
  br label %for.inc.332.4

for.inc.332.4:                                    ; preds = %for.body8.3.4
  %arrayidx11.1.3.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.1.3.4 = getelementptr inbounds [7 x i32]* %arrayidx11.1.3.4, i32 0, i64 1
  %654 = load i32* %arrayidx12.1.3.4, align 4
  %arrayidx15.1.3.4 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.3.4 = getelementptr inbounds [7 x i32]* %arrayidx15.1.3.4, i32 0, i64 3
  %655 = load i32* %arrayidx16.1.3.4, align 4
  %mul.1.3.4 = mul nsw i32 %654, %655
  %arrayidx19.1.3.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.1.3.4 = getelementptr inbounds [7 x i32]* %arrayidx19.1.3.4, i32 0, i64 3
  %656 = load i32* %arrayidx20.1.3.4, align 4
  %add.1.3.4 = add nsw i32 %656, %mul.1.3.4
  store i32 %add.1.3.4, i32* %arrayidx20.1.3.4, align 4
  br label %for.inc.1.3.4

for.inc.1.3.4:                                    ; preds = %for.inc.332.4
  %arrayidx11.2.3.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.2.3.4 = getelementptr inbounds [7 x i32]* %arrayidx11.2.3.4, i32 0, i64 2
  %657 = load i32* %arrayidx12.2.3.4, align 4
  %arrayidx15.2.3.4 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.3.4 = getelementptr inbounds [7 x i32]* %arrayidx15.2.3.4, i32 0, i64 3
  %658 = load i32* %arrayidx16.2.3.4, align 4
  %mul.2.3.4 = mul nsw i32 %657, %658
  %arrayidx19.2.3.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.2.3.4 = getelementptr inbounds [7 x i32]* %arrayidx19.2.3.4, i32 0, i64 3
  %659 = load i32* %arrayidx20.2.3.4, align 4
  %add.2.3.4 = add nsw i32 %659, %mul.2.3.4
  store i32 %add.2.3.4, i32* %arrayidx20.2.3.4, align 4
  br label %for.inc.2.3.4

for.inc.2.3.4:                                    ; preds = %for.inc.1.3.4
  %arrayidx11.3.3.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.3.3.4 = getelementptr inbounds [7 x i32]* %arrayidx11.3.3.4, i32 0, i64 3
  %660 = load i32* %arrayidx12.3.3.4, align 4
  %arrayidx15.3.3.4 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.3.4 = getelementptr inbounds [7 x i32]* %arrayidx15.3.3.4, i32 0, i64 3
  %661 = load i32* %arrayidx16.3.3.4, align 4
  %mul.3.3.4 = mul nsw i32 %660, %661
  %arrayidx19.3.3.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.3.3.4 = getelementptr inbounds [7 x i32]* %arrayidx19.3.3.4, i32 0, i64 3
  %662 = load i32* %arrayidx20.3.3.4, align 4
  %add.3.3.4 = add nsw i32 %662, %mul.3.3.4
  store i32 %add.3.3.4, i32* %arrayidx20.3.3.4, align 4
  br label %for.inc.3.3.4

for.inc.3.3.4:                                    ; preds = %for.inc.2.3.4
  %arrayidx11.4.3.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.4.3.4 = getelementptr inbounds [7 x i32]* %arrayidx11.4.3.4, i32 0, i64 4
  %663 = load i32* %arrayidx12.4.3.4, align 4
  %arrayidx15.4.3.4 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.3.4 = getelementptr inbounds [7 x i32]* %arrayidx15.4.3.4, i32 0, i64 3
  %664 = load i32* %arrayidx16.4.3.4, align 4
  %mul.4.3.4 = mul nsw i32 %663, %664
  %arrayidx19.4.3.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.4.3.4 = getelementptr inbounds [7 x i32]* %arrayidx19.4.3.4, i32 0, i64 3
  %665 = load i32* %arrayidx20.4.3.4, align 4
  %add.4.3.4 = add nsw i32 %665, %mul.4.3.4
  store i32 %add.4.3.4, i32* %arrayidx20.4.3.4, align 4
  br label %for.inc.4.3.4

for.inc.4.3.4:                                    ; preds = %for.inc.3.3.4
  %arrayidx11.5.3.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.5.3.4 = getelementptr inbounds [7 x i32]* %arrayidx11.5.3.4, i32 0, i64 5
  %666 = load i32* %arrayidx12.5.3.4, align 4
  %arrayidx15.5.3.4 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.3.4 = getelementptr inbounds [7 x i32]* %arrayidx15.5.3.4, i32 0, i64 3
  %667 = load i32* %arrayidx16.5.3.4, align 4
  %mul.5.3.4 = mul nsw i32 %666, %667
  %arrayidx19.5.3.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.5.3.4 = getelementptr inbounds [7 x i32]* %arrayidx19.5.3.4, i32 0, i64 3
  %668 = load i32* %arrayidx20.5.3.4, align 4
  %add.5.3.4 = add nsw i32 %668, %mul.5.3.4
  store i32 %add.5.3.4, i32* %arrayidx20.5.3.4, align 4
  br label %for.inc.5.3.4

for.inc.5.3.4:                                    ; preds = %for.inc.4.3.4
  %arrayidx11.6.3.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.6.3.4 = getelementptr inbounds [7 x i32]* %arrayidx11.6.3.4, i32 0, i64 6
  %669 = load i32* %arrayidx12.6.3.4, align 4
  %arrayidx15.6.3.4 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.3.4 = getelementptr inbounds [7 x i32]* %arrayidx15.6.3.4, i32 0, i64 3
  %670 = load i32* %arrayidx16.6.3.4, align 4
  %mul.6.3.4 = mul nsw i32 %669, %670
  %arrayidx19.6.3.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.6.3.4 = getelementptr inbounds [7 x i32]* %arrayidx19.6.3.4, i32 0, i64 3
  %671 = load i32* %arrayidx20.6.3.4, align 4
  %add.6.3.4 = add nsw i32 %671, %mul.6.3.4
  store i32 %add.6.3.4, i32* %arrayidx20.6.3.4, align 4
  br label %for.inc.6.3.4

for.inc.6.3.4:                                    ; preds = %for.inc.5.3.4
  br label %for.inc21.3.4

for.inc21.3.4:                                    ; preds = %for.inc.6.3.4
  %arrayidx.4.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx5.4.4 = getelementptr inbounds [7 x i32]* %arrayidx.4.4, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.4, align 4
  br label %for.body8.4.4

for.body8.4.4:                                    ; preds = %for.inc21.3.4
  %arrayidx11.434.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.435.4 = getelementptr inbounds [7 x i32]* %arrayidx11.434.4, i32 0, i64 0
  %672 = load i32* %arrayidx12.435.4, align 4
  %arrayidx16.436.4 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 4
  %673 = load i32* %arrayidx16.436.4, align 4
  %mul.437.4 = mul nsw i32 %672, %673
  %arrayidx19.439.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.440.4 = getelementptr inbounds [7 x i32]* %arrayidx19.439.4, i32 0, i64 4
  %674 = load i32* %arrayidx20.440.4, align 4
  %add.441.4 = add nsw i32 %674, %mul.437.4
  store i32 %add.441.4, i32* %arrayidx20.440.4, align 4
  br label %for.inc.442.4

for.inc.442.4:                                    ; preds = %for.body8.4.4
  %arrayidx11.1.4.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.1.4.4 = getelementptr inbounds [7 x i32]* %arrayidx11.1.4.4, i32 0, i64 1
  %675 = load i32* %arrayidx12.1.4.4, align 4
  %arrayidx15.1.4.4 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.4.4 = getelementptr inbounds [7 x i32]* %arrayidx15.1.4.4, i32 0, i64 4
  %676 = load i32* %arrayidx16.1.4.4, align 4
  %mul.1.4.4 = mul nsw i32 %675, %676
  %arrayidx19.1.4.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.1.4.4 = getelementptr inbounds [7 x i32]* %arrayidx19.1.4.4, i32 0, i64 4
  %677 = load i32* %arrayidx20.1.4.4, align 4
  %add.1.4.4 = add nsw i32 %677, %mul.1.4.4
  store i32 %add.1.4.4, i32* %arrayidx20.1.4.4, align 4
  br label %for.inc.1.4.4

for.inc.1.4.4:                                    ; preds = %for.inc.442.4
  %arrayidx11.2.4.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.2.4.4 = getelementptr inbounds [7 x i32]* %arrayidx11.2.4.4, i32 0, i64 2
  %678 = load i32* %arrayidx12.2.4.4, align 4
  %arrayidx15.2.4.4 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.4.4 = getelementptr inbounds [7 x i32]* %arrayidx15.2.4.4, i32 0, i64 4
  %679 = load i32* %arrayidx16.2.4.4, align 4
  %mul.2.4.4 = mul nsw i32 %678, %679
  %arrayidx19.2.4.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.2.4.4 = getelementptr inbounds [7 x i32]* %arrayidx19.2.4.4, i32 0, i64 4
  %680 = load i32* %arrayidx20.2.4.4, align 4
  %add.2.4.4 = add nsw i32 %680, %mul.2.4.4
  store i32 %add.2.4.4, i32* %arrayidx20.2.4.4, align 4
  br label %for.inc.2.4.4

for.inc.2.4.4:                                    ; preds = %for.inc.1.4.4
  %arrayidx11.3.4.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.3.4.4 = getelementptr inbounds [7 x i32]* %arrayidx11.3.4.4, i32 0, i64 3
  %681 = load i32* %arrayidx12.3.4.4, align 4
  %arrayidx15.3.4.4 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.4.4 = getelementptr inbounds [7 x i32]* %arrayidx15.3.4.4, i32 0, i64 4
  %682 = load i32* %arrayidx16.3.4.4, align 4
  %mul.3.4.4 = mul nsw i32 %681, %682
  %arrayidx19.3.4.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.3.4.4 = getelementptr inbounds [7 x i32]* %arrayidx19.3.4.4, i32 0, i64 4
  %683 = load i32* %arrayidx20.3.4.4, align 4
  %add.3.4.4 = add nsw i32 %683, %mul.3.4.4
  store i32 %add.3.4.4, i32* %arrayidx20.3.4.4, align 4
  br label %for.inc.3.4.4

for.inc.3.4.4:                                    ; preds = %for.inc.2.4.4
  %arrayidx11.4.4.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.4.4.4 = getelementptr inbounds [7 x i32]* %arrayidx11.4.4.4, i32 0, i64 4
  %684 = load i32* %arrayidx12.4.4.4, align 4
  %arrayidx15.4.4.4 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.4.4 = getelementptr inbounds [7 x i32]* %arrayidx15.4.4.4, i32 0, i64 4
  %685 = load i32* %arrayidx16.4.4.4, align 4
  %mul.4.4.4 = mul nsw i32 %684, %685
  %arrayidx19.4.4.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.4.4.4 = getelementptr inbounds [7 x i32]* %arrayidx19.4.4.4, i32 0, i64 4
  %686 = load i32* %arrayidx20.4.4.4, align 4
  %add.4.4.4 = add nsw i32 %686, %mul.4.4.4
  store i32 %add.4.4.4, i32* %arrayidx20.4.4.4, align 4
  br label %for.inc.4.4.4

for.inc.4.4.4:                                    ; preds = %for.inc.3.4.4
  %arrayidx11.5.4.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.5.4.4 = getelementptr inbounds [7 x i32]* %arrayidx11.5.4.4, i32 0, i64 5
  %687 = load i32* %arrayidx12.5.4.4, align 4
  %arrayidx15.5.4.4 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.4.4 = getelementptr inbounds [7 x i32]* %arrayidx15.5.4.4, i32 0, i64 4
  %688 = load i32* %arrayidx16.5.4.4, align 4
  %mul.5.4.4 = mul nsw i32 %687, %688
  %arrayidx19.5.4.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.5.4.4 = getelementptr inbounds [7 x i32]* %arrayidx19.5.4.4, i32 0, i64 4
  %689 = load i32* %arrayidx20.5.4.4, align 4
  %add.5.4.4 = add nsw i32 %689, %mul.5.4.4
  store i32 %add.5.4.4, i32* %arrayidx20.5.4.4, align 4
  br label %for.inc.5.4.4

for.inc.5.4.4:                                    ; preds = %for.inc.4.4.4
  %arrayidx11.6.4.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.6.4.4 = getelementptr inbounds [7 x i32]* %arrayidx11.6.4.4, i32 0, i64 6
  %690 = load i32* %arrayidx12.6.4.4, align 4
  %arrayidx15.6.4.4 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.4.4 = getelementptr inbounds [7 x i32]* %arrayidx15.6.4.4, i32 0, i64 4
  %691 = load i32* %arrayidx16.6.4.4, align 4
  %mul.6.4.4 = mul nsw i32 %690, %691
  %arrayidx19.6.4.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.6.4.4 = getelementptr inbounds [7 x i32]* %arrayidx19.6.4.4, i32 0, i64 4
  %692 = load i32* %arrayidx20.6.4.4, align 4
  %add.6.4.4 = add nsw i32 %692, %mul.6.4.4
  store i32 %add.6.4.4, i32* %arrayidx20.6.4.4, align 4
  br label %for.inc.6.4.4

for.inc.6.4.4:                                    ; preds = %for.inc.5.4.4
  br label %for.inc21.4.4

for.inc21.4.4:                                    ; preds = %for.inc.6.4.4
  %arrayidx.5.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx5.5.4 = getelementptr inbounds [7 x i32]* %arrayidx.5.4, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.4, align 4
  br label %for.body8.5.4

for.body8.5.4:                                    ; preds = %for.inc21.4.4
  %arrayidx11.544.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.545.4 = getelementptr inbounds [7 x i32]* %arrayidx11.544.4, i32 0, i64 0
  %693 = load i32* %arrayidx12.545.4, align 4
  %arrayidx16.546.4 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 5
  %694 = load i32* %arrayidx16.546.4, align 4
  %mul.547.4 = mul nsw i32 %693, %694
  %arrayidx19.549.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.550.4 = getelementptr inbounds [7 x i32]* %arrayidx19.549.4, i32 0, i64 5
  %695 = load i32* %arrayidx20.550.4, align 4
  %add.551.4 = add nsw i32 %695, %mul.547.4
  store i32 %add.551.4, i32* %arrayidx20.550.4, align 4
  br label %for.inc.552.4

for.inc.552.4:                                    ; preds = %for.body8.5.4
  %arrayidx11.1.5.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.1.5.4 = getelementptr inbounds [7 x i32]* %arrayidx11.1.5.4, i32 0, i64 1
  %696 = load i32* %arrayidx12.1.5.4, align 4
  %arrayidx15.1.5.4 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.5.4 = getelementptr inbounds [7 x i32]* %arrayidx15.1.5.4, i32 0, i64 5
  %697 = load i32* %arrayidx16.1.5.4, align 4
  %mul.1.5.4 = mul nsw i32 %696, %697
  %arrayidx19.1.5.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.1.5.4 = getelementptr inbounds [7 x i32]* %arrayidx19.1.5.4, i32 0, i64 5
  %698 = load i32* %arrayidx20.1.5.4, align 4
  %add.1.5.4 = add nsw i32 %698, %mul.1.5.4
  store i32 %add.1.5.4, i32* %arrayidx20.1.5.4, align 4
  br label %for.inc.1.5.4

for.inc.1.5.4:                                    ; preds = %for.inc.552.4
  %arrayidx11.2.5.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.2.5.4 = getelementptr inbounds [7 x i32]* %arrayidx11.2.5.4, i32 0, i64 2
  %699 = load i32* %arrayidx12.2.5.4, align 4
  %arrayidx15.2.5.4 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.5.4 = getelementptr inbounds [7 x i32]* %arrayidx15.2.5.4, i32 0, i64 5
  %700 = load i32* %arrayidx16.2.5.4, align 4
  %mul.2.5.4 = mul nsw i32 %699, %700
  %arrayidx19.2.5.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.2.5.4 = getelementptr inbounds [7 x i32]* %arrayidx19.2.5.4, i32 0, i64 5
  %701 = load i32* %arrayidx20.2.5.4, align 4
  %add.2.5.4 = add nsw i32 %701, %mul.2.5.4
  store i32 %add.2.5.4, i32* %arrayidx20.2.5.4, align 4
  br label %for.inc.2.5.4

for.inc.2.5.4:                                    ; preds = %for.inc.1.5.4
  %arrayidx11.3.5.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.3.5.4 = getelementptr inbounds [7 x i32]* %arrayidx11.3.5.4, i32 0, i64 3
  %702 = load i32* %arrayidx12.3.5.4, align 4
  %arrayidx15.3.5.4 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.5.4 = getelementptr inbounds [7 x i32]* %arrayidx15.3.5.4, i32 0, i64 5
  %703 = load i32* %arrayidx16.3.5.4, align 4
  %mul.3.5.4 = mul nsw i32 %702, %703
  %arrayidx19.3.5.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.3.5.4 = getelementptr inbounds [7 x i32]* %arrayidx19.3.5.4, i32 0, i64 5
  %704 = load i32* %arrayidx20.3.5.4, align 4
  %add.3.5.4 = add nsw i32 %704, %mul.3.5.4
  store i32 %add.3.5.4, i32* %arrayidx20.3.5.4, align 4
  br label %for.inc.3.5.4

for.inc.3.5.4:                                    ; preds = %for.inc.2.5.4
  %arrayidx11.4.5.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.4.5.4 = getelementptr inbounds [7 x i32]* %arrayidx11.4.5.4, i32 0, i64 4
  %705 = load i32* %arrayidx12.4.5.4, align 4
  %arrayidx15.4.5.4 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.5.4 = getelementptr inbounds [7 x i32]* %arrayidx15.4.5.4, i32 0, i64 5
  %706 = load i32* %arrayidx16.4.5.4, align 4
  %mul.4.5.4 = mul nsw i32 %705, %706
  %arrayidx19.4.5.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.4.5.4 = getelementptr inbounds [7 x i32]* %arrayidx19.4.5.4, i32 0, i64 5
  %707 = load i32* %arrayidx20.4.5.4, align 4
  %add.4.5.4 = add nsw i32 %707, %mul.4.5.4
  store i32 %add.4.5.4, i32* %arrayidx20.4.5.4, align 4
  br label %for.inc.4.5.4

for.inc.4.5.4:                                    ; preds = %for.inc.3.5.4
  %arrayidx11.5.5.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.5.5.4 = getelementptr inbounds [7 x i32]* %arrayidx11.5.5.4, i32 0, i64 5
  %708 = load i32* %arrayidx12.5.5.4, align 4
  %arrayidx15.5.5.4 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.5.4 = getelementptr inbounds [7 x i32]* %arrayidx15.5.5.4, i32 0, i64 5
  %709 = load i32* %arrayidx16.5.5.4, align 4
  %mul.5.5.4 = mul nsw i32 %708, %709
  %arrayidx19.5.5.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.5.5.4 = getelementptr inbounds [7 x i32]* %arrayidx19.5.5.4, i32 0, i64 5
  %710 = load i32* %arrayidx20.5.5.4, align 4
  %add.5.5.4 = add nsw i32 %710, %mul.5.5.4
  store i32 %add.5.5.4, i32* %arrayidx20.5.5.4, align 4
  br label %for.inc.5.5.4

for.inc.5.5.4:                                    ; preds = %for.inc.4.5.4
  %arrayidx11.6.5.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.6.5.4 = getelementptr inbounds [7 x i32]* %arrayidx11.6.5.4, i32 0, i64 6
  %711 = load i32* %arrayidx12.6.5.4, align 4
  %arrayidx15.6.5.4 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.5.4 = getelementptr inbounds [7 x i32]* %arrayidx15.6.5.4, i32 0, i64 5
  %712 = load i32* %arrayidx16.6.5.4, align 4
  %mul.6.5.4 = mul nsw i32 %711, %712
  %arrayidx19.6.5.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.6.5.4 = getelementptr inbounds [7 x i32]* %arrayidx19.6.5.4, i32 0, i64 5
  %713 = load i32* %arrayidx20.6.5.4, align 4
  %add.6.5.4 = add nsw i32 %713, %mul.6.5.4
  store i32 %add.6.5.4, i32* %arrayidx20.6.5.4, align 4
  br label %for.inc.6.5.4

for.inc.6.5.4:                                    ; preds = %for.inc.5.5.4
  br label %for.inc21.5.4

for.inc21.5.4:                                    ; preds = %for.inc.6.5.4
  %arrayidx.6.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx5.6.4 = getelementptr inbounds [7 x i32]* %arrayidx.6.4, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.4, align 4
  br label %for.body8.6.4

for.body8.6.4:                                    ; preds = %for.inc21.5.4
  %arrayidx11.654.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.655.4 = getelementptr inbounds [7 x i32]* %arrayidx11.654.4, i32 0, i64 0
  %714 = load i32* %arrayidx12.655.4, align 4
  %arrayidx16.656.4 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 6
  %715 = load i32* %arrayidx16.656.4, align 4
  %mul.657.4 = mul nsw i32 %714, %715
  %arrayidx19.659.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.660.4 = getelementptr inbounds [7 x i32]* %arrayidx19.659.4, i32 0, i64 6
  %716 = load i32* %arrayidx20.660.4, align 4
  %add.661.4 = add nsw i32 %716, %mul.657.4
  store i32 %add.661.4, i32* %arrayidx20.660.4, align 4
  br label %for.inc.662.4

for.inc.662.4:                                    ; preds = %for.body8.6.4
  %arrayidx11.1.6.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.1.6.4 = getelementptr inbounds [7 x i32]* %arrayidx11.1.6.4, i32 0, i64 1
  %717 = load i32* %arrayidx12.1.6.4, align 4
  %arrayidx15.1.6.4 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.6.4 = getelementptr inbounds [7 x i32]* %arrayidx15.1.6.4, i32 0, i64 6
  %718 = load i32* %arrayidx16.1.6.4, align 4
  %mul.1.6.4 = mul nsw i32 %717, %718
  %arrayidx19.1.6.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.1.6.4 = getelementptr inbounds [7 x i32]* %arrayidx19.1.6.4, i32 0, i64 6
  %719 = load i32* %arrayidx20.1.6.4, align 4
  %add.1.6.4 = add nsw i32 %719, %mul.1.6.4
  store i32 %add.1.6.4, i32* %arrayidx20.1.6.4, align 4
  br label %for.inc.1.6.4

for.inc.1.6.4:                                    ; preds = %for.inc.662.4
  %arrayidx11.2.6.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.2.6.4 = getelementptr inbounds [7 x i32]* %arrayidx11.2.6.4, i32 0, i64 2
  %720 = load i32* %arrayidx12.2.6.4, align 4
  %arrayidx15.2.6.4 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.6.4 = getelementptr inbounds [7 x i32]* %arrayidx15.2.6.4, i32 0, i64 6
  %721 = load i32* %arrayidx16.2.6.4, align 4
  %mul.2.6.4 = mul nsw i32 %720, %721
  %arrayidx19.2.6.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.2.6.4 = getelementptr inbounds [7 x i32]* %arrayidx19.2.6.4, i32 0, i64 6
  %722 = load i32* %arrayidx20.2.6.4, align 4
  %add.2.6.4 = add nsw i32 %722, %mul.2.6.4
  store i32 %add.2.6.4, i32* %arrayidx20.2.6.4, align 4
  br label %for.inc.2.6.4

for.inc.2.6.4:                                    ; preds = %for.inc.1.6.4
  %arrayidx11.3.6.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.3.6.4 = getelementptr inbounds [7 x i32]* %arrayidx11.3.6.4, i32 0, i64 3
  %723 = load i32* %arrayidx12.3.6.4, align 4
  %arrayidx15.3.6.4 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.6.4 = getelementptr inbounds [7 x i32]* %arrayidx15.3.6.4, i32 0, i64 6
  %724 = load i32* %arrayidx16.3.6.4, align 4
  %mul.3.6.4 = mul nsw i32 %723, %724
  %arrayidx19.3.6.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.3.6.4 = getelementptr inbounds [7 x i32]* %arrayidx19.3.6.4, i32 0, i64 6
  %725 = load i32* %arrayidx20.3.6.4, align 4
  %add.3.6.4 = add nsw i32 %725, %mul.3.6.4
  store i32 %add.3.6.4, i32* %arrayidx20.3.6.4, align 4
  br label %for.inc.3.6.4

for.inc.3.6.4:                                    ; preds = %for.inc.2.6.4
  %arrayidx11.4.6.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.4.6.4 = getelementptr inbounds [7 x i32]* %arrayidx11.4.6.4, i32 0, i64 4
  %726 = load i32* %arrayidx12.4.6.4, align 4
  %arrayidx15.4.6.4 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.6.4 = getelementptr inbounds [7 x i32]* %arrayidx15.4.6.4, i32 0, i64 6
  %727 = load i32* %arrayidx16.4.6.4, align 4
  %mul.4.6.4 = mul nsw i32 %726, %727
  %arrayidx19.4.6.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.4.6.4 = getelementptr inbounds [7 x i32]* %arrayidx19.4.6.4, i32 0, i64 6
  %728 = load i32* %arrayidx20.4.6.4, align 4
  %add.4.6.4 = add nsw i32 %728, %mul.4.6.4
  store i32 %add.4.6.4, i32* %arrayidx20.4.6.4, align 4
  br label %for.inc.4.6.4

for.inc.4.6.4:                                    ; preds = %for.inc.3.6.4
  %arrayidx11.5.6.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.5.6.4 = getelementptr inbounds [7 x i32]* %arrayidx11.5.6.4, i32 0, i64 5
  %729 = load i32* %arrayidx12.5.6.4, align 4
  %arrayidx15.5.6.4 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.6.4 = getelementptr inbounds [7 x i32]* %arrayidx15.5.6.4, i32 0, i64 6
  %730 = load i32* %arrayidx16.5.6.4, align 4
  %mul.5.6.4 = mul nsw i32 %729, %730
  %arrayidx19.5.6.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.5.6.4 = getelementptr inbounds [7 x i32]* %arrayidx19.5.6.4, i32 0, i64 6
  %731 = load i32* %arrayidx20.5.6.4, align 4
  %add.5.6.4 = add nsw i32 %731, %mul.5.6.4
  store i32 %add.5.6.4, i32* %arrayidx20.5.6.4, align 4
  br label %for.inc.5.6.4

for.inc.5.6.4:                                    ; preds = %for.inc.4.6.4
  %arrayidx11.6.6.4 = getelementptr inbounds [7 x i32]* %a, i64 4
  %arrayidx12.6.6.4 = getelementptr inbounds [7 x i32]* %arrayidx11.6.6.4, i32 0, i64 6
  %732 = load i32* %arrayidx12.6.6.4, align 4
  %arrayidx15.6.6.4 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.6.4 = getelementptr inbounds [7 x i32]* %arrayidx15.6.6.4, i32 0, i64 6
  %733 = load i32* %arrayidx16.6.6.4, align 4
  %mul.6.6.4 = mul nsw i32 %732, %733
  %arrayidx19.6.6.4 = getelementptr inbounds [7 x i32]* %c, i64 4
  %arrayidx20.6.6.4 = getelementptr inbounds [7 x i32]* %arrayidx19.6.6.4, i32 0, i64 6
  %734 = load i32* %arrayidx20.6.6.4, align 4
  %add.6.6.4 = add nsw i32 %734, %mul.6.6.4
  store i32 %add.6.6.4, i32* %arrayidx20.6.6.4, align 4
  br label %for.inc.6.6.4

for.inc.6.6.4:                                    ; preds = %for.inc.5.6.4
  br label %for.inc21.6.4

for.inc21.6.4:                                    ; preds = %for.inc.6.6.4
  br label %for.inc24.4

for.inc24.4:                                      ; preds = %for.inc21.6.4
  br label %for.body3.5

for.body3.5:                                      ; preds = %for.inc24.4
  %arrayidx.5328 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx5.5329 = getelementptr inbounds [7 x i32]* %arrayidx.5328, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.5329, align 4
  br label %for.body8.5337

for.body8.5337:                                   ; preds = %for.body3.5
  %arrayidx11.5330 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.5331 = getelementptr inbounds [7 x i32]* %arrayidx11.5330, i32 0, i64 0
  %735 = load i32* %arrayidx12.5331, align 4
  %arrayidx16.5332 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 0
  %736 = load i32* %arrayidx16.5332, align 4
  %mul.5333 = mul nsw i32 %735, %736
  %arrayidx19.5334 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.5335 = getelementptr inbounds [7 x i32]* %arrayidx19.5334, i32 0, i64 0
  %737 = load i32* %arrayidx20.5335, align 4
  %add.5336 = add nsw i32 %737, %mul.5333
  store i32 %add.5336, i32* %arrayidx20.5335, align 4
  br label %for.inc.5346

for.inc.5346:                                     ; preds = %for.body8.5337
  %arrayidx11.1.5338 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.1.5339 = getelementptr inbounds [7 x i32]* %arrayidx11.1.5338, i32 0, i64 1
  %738 = load i32* %arrayidx12.1.5339, align 4
  %arrayidx15.1.5340 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.5341 = getelementptr inbounds [7 x i32]* %arrayidx15.1.5340, i32 0, i64 0
  %739 = load i32* %arrayidx16.1.5341, align 4
  %mul.1.5342 = mul nsw i32 %738, %739
  %arrayidx19.1.5343 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.1.5344 = getelementptr inbounds [7 x i32]* %arrayidx19.1.5343, i32 0, i64 0
  %740 = load i32* %arrayidx20.1.5344, align 4
  %add.1.5345 = add nsw i32 %740, %mul.1.5342
  store i32 %add.1.5345, i32* %arrayidx20.1.5344, align 4
  br label %for.inc.1.5355

for.inc.1.5355:                                   ; preds = %for.inc.5346
  %arrayidx11.2.5347 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.2.5348 = getelementptr inbounds [7 x i32]* %arrayidx11.2.5347, i32 0, i64 2
  %741 = load i32* %arrayidx12.2.5348, align 4
  %arrayidx15.2.5349 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.5350 = getelementptr inbounds [7 x i32]* %arrayidx15.2.5349, i32 0, i64 0
  %742 = load i32* %arrayidx16.2.5350, align 4
  %mul.2.5351 = mul nsw i32 %741, %742
  %arrayidx19.2.5352 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.2.5353 = getelementptr inbounds [7 x i32]* %arrayidx19.2.5352, i32 0, i64 0
  %743 = load i32* %arrayidx20.2.5353, align 4
  %add.2.5354 = add nsw i32 %743, %mul.2.5351
  store i32 %add.2.5354, i32* %arrayidx20.2.5353, align 4
  br label %for.inc.2.5364

for.inc.2.5364:                                   ; preds = %for.inc.1.5355
  %arrayidx11.3.5356 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.3.5357 = getelementptr inbounds [7 x i32]* %arrayidx11.3.5356, i32 0, i64 3
  %744 = load i32* %arrayidx12.3.5357, align 4
  %arrayidx15.3.5358 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.5359 = getelementptr inbounds [7 x i32]* %arrayidx15.3.5358, i32 0, i64 0
  %745 = load i32* %arrayidx16.3.5359, align 4
  %mul.3.5360 = mul nsw i32 %744, %745
  %arrayidx19.3.5361 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.3.5362 = getelementptr inbounds [7 x i32]* %arrayidx19.3.5361, i32 0, i64 0
  %746 = load i32* %arrayidx20.3.5362, align 4
  %add.3.5363 = add nsw i32 %746, %mul.3.5360
  store i32 %add.3.5363, i32* %arrayidx20.3.5362, align 4
  br label %for.inc.3.5373

for.inc.3.5373:                                   ; preds = %for.inc.2.5364
  %arrayidx11.4.5365 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.4.5366 = getelementptr inbounds [7 x i32]* %arrayidx11.4.5365, i32 0, i64 4
  %747 = load i32* %arrayidx12.4.5366, align 4
  %arrayidx15.4.5367 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.5368 = getelementptr inbounds [7 x i32]* %arrayidx15.4.5367, i32 0, i64 0
  %748 = load i32* %arrayidx16.4.5368, align 4
  %mul.4.5369 = mul nsw i32 %747, %748
  %arrayidx19.4.5370 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.4.5371 = getelementptr inbounds [7 x i32]* %arrayidx19.4.5370, i32 0, i64 0
  %749 = load i32* %arrayidx20.4.5371, align 4
  %add.4.5372 = add nsw i32 %749, %mul.4.5369
  store i32 %add.4.5372, i32* %arrayidx20.4.5371, align 4
  br label %for.inc.4.5382

for.inc.4.5382:                                   ; preds = %for.inc.3.5373
  %arrayidx11.5.5374 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.5.5375 = getelementptr inbounds [7 x i32]* %arrayidx11.5.5374, i32 0, i64 5
  %750 = load i32* %arrayidx12.5.5375, align 4
  %arrayidx15.5.5376 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.5377 = getelementptr inbounds [7 x i32]* %arrayidx15.5.5376, i32 0, i64 0
  %751 = load i32* %arrayidx16.5.5377, align 4
  %mul.5.5378 = mul nsw i32 %750, %751
  %arrayidx19.5.5379 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.5.5380 = getelementptr inbounds [7 x i32]* %arrayidx19.5.5379, i32 0, i64 0
  %752 = load i32* %arrayidx20.5.5380, align 4
  %add.5.5381 = add nsw i32 %752, %mul.5.5378
  store i32 %add.5.5381, i32* %arrayidx20.5.5380, align 4
  br label %for.inc.5.5391

for.inc.5.5391:                                   ; preds = %for.inc.4.5382
  %arrayidx11.6.5383 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.6.5384 = getelementptr inbounds [7 x i32]* %arrayidx11.6.5383, i32 0, i64 6
  %753 = load i32* %arrayidx12.6.5384, align 4
  %arrayidx15.6.5385 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.5386 = getelementptr inbounds [7 x i32]* %arrayidx15.6.5385, i32 0, i64 0
  %754 = load i32* %arrayidx16.6.5386, align 4
  %mul.6.5387 = mul nsw i32 %753, %754
  %arrayidx19.6.5388 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.6.5389 = getelementptr inbounds [7 x i32]* %arrayidx19.6.5388, i32 0, i64 0
  %755 = load i32* %arrayidx20.6.5389, align 4
  %add.6.5390 = add nsw i32 %755, %mul.6.5387
  store i32 %add.6.5390, i32* %arrayidx20.6.5389, align 4
  br label %for.inc.6.5392

for.inc.6.5392:                                   ; preds = %for.inc.5.5391
  br label %for.inc21.5393

for.inc21.5393:                                   ; preds = %for.inc.6.5392
  %arrayidx.1.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx5.1.5 = getelementptr inbounds [7 x i32]* %arrayidx.1.5, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.5, align 4
  br label %for.body8.1.5

for.body8.1.5:                                    ; preds = %for.inc21.5393
  %arrayidx11.14.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.15.5 = getelementptr inbounds [7 x i32]* %arrayidx11.14.5, i32 0, i64 0
  %756 = load i32* %arrayidx12.15.5, align 4
  %arrayidx16.16.5 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 1
  %757 = load i32* %arrayidx16.16.5, align 4
  %mul.17.5 = mul nsw i32 %756, %757
  %arrayidx19.19.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.110.5 = getelementptr inbounds [7 x i32]* %arrayidx19.19.5, i32 0, i64 1
  %758 = load i32* %arrayidx20.110.5, align 4
  %add.111.5 = add nsw i32 %758, %mul.17.5
  store i32 %add.111.5, i32* %arrayidx20.110.5, align 4
  br label %for.inc.112.5

for.inc.112.5:                                    ; preds = %for.body8.1.5
  %arrayidx11.1.1.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.1.1.5 = getelementptr inbounds [7 x i32]* %arrayidx11.1.1.5, i32 0, i64 1
  %759 = load i32* %arrayidx12.1.1.5, align 4
  %arrayidx15.1.1.5 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.1.5 = getelementptr inbounds [7 x i32]* %arrayidx15.1.1.5, i32 0, i64 1
  %760 = load i32* %arrayidx16.1.1.5, align 4
  %mul.1.1.5 = mul nsw i32 %759, %760
  %arrayidx19.1.1.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.1.1.5 = getelementptr inbounds [7 x i32]* %arrayidx19.1.1.5, i32 0, i64 1
  %761 = load i32* %arrayidx20.1.1.5, align 4
  %add.1.1.5 = add nsw i32 %761, %mul.1.1.5
  store i32 %add.1.1.5, i32* %arrayidx20.1.1.5, align 4
  br label %for.inc.1.1.5

for.inc.1.1.5:                                    ; preds = %for.inc.112.5
  %arrayidx11.2.1.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.2.1.5 = getelementptr inbounds [7 x i32]* %arrayidx11.2.1.5, i32 0, i64 2
  %762 = load i32* %arrayidx12.2.1.5, align 4
  %arrayidx15.2.1.5 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.1.5 = getelementptr inbounds [7 x i32]* %arrayidx15.2.1.5, i32 0, i64 1
  %763 = load i32* %arrayidx16.2.1.5, align 4
  %mul.2.1.5 = mul nsw i32 %762, %763
  %arrayidx19.2.1.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.2.1.5 = getelementptr inbounds [7 x i32]* %arrayidx19.2.1.5, i32 0, i64 1
  %764 = load i32* %arrayidx20.2.1.5, align 4
  %add.2.1.5 = add nsw i32 %764, %mul.2.1.5
  store i32 %add.2.1.5, i32* %arrayidx20.2.1.5, align 4
  br label %for.inc.2.1.5

for.inc.2.1.5:                                    ; preds = %for.inc.1.1.5
  %arrayidx11.3.1.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.3.1.5 = getelementptr inbounds [7 x i32]* %arrayidx11.3.1.5, i32 0, i64 3
  %765 = load i32* %arrayidx12.3.1.5, align 4
  %arrayidx15.3.1.5 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.1.5 = getelementptr inbounds [7 x i32]* %arrayidx15.3.1.5, i32 0, i64 1
  %766 = load i32* %arrayidx16.3.1.5, align 4
  %mul.3.1.5 = mul nsw i32 %765, %766
  %arrayidx19.3.1.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.3.1.5 = getelementptr inbounds [7 x i32]* %arrayidx19.3.1.5, i32 0, i64 1
  %767 = load i32* %arrayidx20.3.1.5, align 4
  %add.3.1.5 = add nsw i32 %767, %mul.3.1.5
  store i32 %add.3.1.5, i32* %arrayidx20.3.1.5, align 4
  br label %for.inc.3.1.5

for.inc.3.1.5:                                    ; preds = %for.inc.2.1.5
  %arrayidx11.4.1.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.4.1.5 = getelementptr inbounds [7 x i32]* %arrayidx11.4.1.5, i32 0, i64 4
  %768 = load i32* %arrayidx12.4.1.5, align 4
  %arrayidx15.4.1.5 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.1.5 = getelementptr inbounds [7 x i32]* %arrayidx15.4.1.5, i32 0, i64 1
  %769 = load i32* %arrayidx16.4.1.5, align 4
  %mul.4.1.5 = mul nsw i32 %768, %769
  %arrayidx19.4.1.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.4.1.5 = getelementptr inbounds [7 x i32]* %arrayidx19.4.1.5, i32 0, i64 1
  %770 = load i32* %arrayidx20.4.1.5, align 4
  %add.4.1.5 = add nsw i32 %770, %mul.4.1.5
  store i32 %add.4.1.5, i32* %arrayidx20.4.1.5, align 4
  br label %for.inc.4.1.5

for.inc.4.1.5:                                    ; preds = %for.inc.3.1.5
  %arrayidx11.5.1.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.5.1.5 = getelementptr inbounds [7 x i32]* %arrayidx11.5.1.5, i32 0, i64 5
  %771 = load i32* %arrayidx12.5.1.5, align 4
  %arrayidx15.5.1.5 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.1.5 = getelementptr inbounds [7 x i32]* %arrayidx15.5.1.5, i32 0, i64 1
  %772 = load i32* %arrayidx16.5.1.5, align 4
  %mul.5.1.5 = mul nsw i32 %771, %772
  %arrayidx19.5.1.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.5.1.5 = getelementptr inbounds [7 x i32]* %arrayidx19.5.1.5, i32 0, i64 1
  %773 = load i32* %arrayidx20.5.1.5, align 4
  %add.5.1.5 = add nsw i32 %773, %mul.5.1.5
  store i32 %add.5.1.5, i32* %arrayidx20.5.1.5, align 4
  br label %for.inc.5.1.5

for.inc.5.1.5:                                    ; preds = %for.inc.4.1.5
  %arrayidx11.6.1.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.6.1.5 = getelementptr inbounds [7 x i32]* %arrayidx11.6.1.5, i32 0, i64 6
  %774 = load i32* %arrayidx12.6.1.5, align 4
  %arrayidx15.6.1.5 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.1.5 = getelementptr inbounds [7 x i32]* %arrayidx15.6.1.5, i32 0, i64 1
  %775 = load i32* %arrayidx16.6.1.5, align 4
  %mul.6.1.5 = mul nsw i32 %774, %775
  %arrayidx19.6.1.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.6.1.5 = getelementptr inbounds [7 x i32]* %arrayidx19.6.1.5, i32 0, i64 1
  %776 = load i32* %arrayidx20.6.1.5, align 4
  %add.6.1.5 = add nsw i32 %776, %mul.6.1.5
  store i32 %add.6.1.5, i32* %arrayidx20.6.1.5, align 4
  br label %for.inc.6.1.5

for.inc.6.1.5:                                    ; preds = %for.inc.5.1.5
  br label %for.inc21.1.5

for.inc21.1.5:                                    ; preds = %for.inc.6.1.5
  %arrayidx.2.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx5.2.5 = getelementptr inbounds [7 x i32]* %arrayidx.2.5, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.5, align 4
  br label %for.body8.2.5

for.body8.2.5:                                    ; preds = %for.inc21.1.5
  %arrayidx11.214.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.215.5 = getelementptr inbounds [7 x i32]* %arrayidx11.214.5, i32 0, i64 0
  %777 = load i32* %arrayidx12.215.5, align 4
  %arrayidx16.216.5 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 2
  %778 = load i32* %arrayidx16.216.5, align 4
  %mul.217.5 = mul nsw i32 %777, %778
  %arrayidx19.219.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.220.5 = getelementptr inbounds [7 x i32]* %arrayidx19.219.5, i32 0, i64 2
  %779 = load i32* %arrayidx20.220.5, align 4
  %add.221.5 = add nsw i32 %779, %mul.217.5
  store i32 %add.221.5, i32* %arrayidx20.220.5, align 4
  br label %for.inc.222.5

for.inc.222.5:                                    ; preds = %for.body8.2.5
  %arrayidx11.1.2.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.1.2.5 = getelementptr inbounds [7 x i32]* %arrayidx11.1.2.5, i32 0, i64 1
  %780 = load i32* %arrayidx12.1.2.5, align 4
  %arrayidx15.1.2.5 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.2.5 = getelementptr inbounds [7 x i32]* %arrayidx15.1.2.5, i32 0, i64 2
  %781 = load i32* %arrayidx16.1.2.5, align 4
  %mul.1.2.5 = mul nsw i32 %780, %781
  %arrayidx19.1.2.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.1.2.5 = getelementptr inbounds [7 x i32]* %arrayidx19.1.2.5, i32 0, i64 2
  %782 = load i32* %arrayidx20.1.2.5, align 4
  %add.1.2.5 = add nsw i32 %782, %mul.1.2.5
  store i32 %add.1.2.5, i32* %arrayidx20.1.2.5, align 4
  br label %for.inc.1.2.5

for.inc.1.2.5:                                    ; preds = %for.inc.222.5
  %arrayidx11.2.2.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.2.2.5 = getelementptr inbounds [7 x i32]* %arrayidx11.2.2.5, i32 0, i64 2
  %783 = load i32* %arrayidx12.2.2.5, align 4
  %arrayidx15.2.2.5 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.2.5 = getelementptr inbounds [7 x i32]* %arrayidx15.2.2.5, i32 0, i64 2
  %784 = load i32* %arrayidx16.2.2.5, align 4
  %mul.2.2.5 = mul nsw i32 %783, %784
  %arrayidx19.2.2.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.2.2.5 = getelementptr inbounds [7 x i32]* %arrayidx19.2.2.5, i32 0, i64 2
  %785 = load i32* %arrayidx20.2.2.5, align 4
  %add.2.2.5 = add nsw i32 %785, %mul.2.2.5
  store i32 %add.2.2.5, i32* %arrayidx20.2.2.5, align 4
  br label %for.inc.2.2.5

for.inc.2.2.5:                                    ; preds = %for.inc.1.2.5
  %arrayidx11.3.2.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.3.2.5 = getelementptr inbounds [7 x i32]* %arrayidx11.3.2.5, i32 0, i64 3
  %786 = load i32* %arrayidx12.3.2.5, align 4
  %arrayidx15.3.2.5 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.2.5 = getelementptr inbounds [7 x i32]* %arrayidx15.3.2.5, i32 0, i64 2
  %787 = load i32* %arrayidx16.3.2.5, align 4
  %mul.3.2.5 = mul nsw i32 %786, %787
  %arrayidx19.3.2.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.3.2.5 = getelementptr inbounds [7 x i32]* %arrayidx19.3.2.5, i32 0, i64 2
  %788 = load i32* %arrayidx20.3.2.5, align 4
  %add.3.2.5 = add nsw i32 %788, %mul.3.2.5
  store i32 %add.3.2.5, i32* %arrayidx20.3.2.5, align 4
  br label %for.inc.3.2.5

for.inc.3.2.5:                                    ; preds = %for.inc.2.2.5
  %arrayidx11.4.2.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.4.2.5 = getelementptr inbounds [7 x i32]* %arrayidx11.4.2.5, i32 0, i64 4
  %789 = load i32* %arrayidx12.4.2.5, align 4
  %arrayidx15.4.2.5 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.2.5 = getelementptr inbounds [7 x i32]* %arrayidx15.4.2.5, i32 0, i64 2
  %790 = load i32* %arrayidx16.4.2.5, align 4
  %mul.4.2.5 = mul nsw i32 %789, %790
  %arrayidx19.4.2.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.4.2.5 = getelementptr inbounds [7 x i32]* %arrayidx19.4.2.5, i32 0, i64 2
  %791 = load i32* %arrayidx20.4.2.5, align 4
  %add.4.2.5 = add nsw i32 %791, %mul.4.2.5
  store i32 %add.4.2.5, i32* %arrayidx20.4.2.5, align 4
  br label %for.inc.4.2.5

for.inc.4.2.5:                                    ; preds = %for.inc.3.2.5
  %arrayidx11.5.2.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.5.2.5 = getelementptr inbounds [7 x i32]* %arrayidx11.5.2.5, i32 0, i64 5
  %792 = load i32* %arrayidx12.5.2.5, align 4
  %arrayidx15.5.2.5 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.2.5 = getelementptr inbounds [7 x i32]* %arrayidx15.5.2.5, i32 0, i64 2
  %793 = load i32* %arrayidx16.5.2.5, align 4
  %mul.5.2.5 = mul nsw i32 %792, %793
  %arrayidx19.5.2.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.5.2.5 = getelementptr inbounds [7 x i32]* %arrayidx19.5.2.5, i32 0, i64 2
  %794 = load i32* %arrayidx20.5.2.5, align 4
  %add.5.2.5 = add nsw i32 %794, %mul.5.2.5
  store i32 %add.5.2.5, i32* %arrayidx20.5.2.5, align 4
  br label %for.inc.5.2.5

for.inc.5.2.5:                                    ; preds = %for.inc.4.2.5
  %arrayidx11.6.2.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.6.2.5 = getelementptr inbounds [7 x i32]* %arrayidx11.6.2.5, i32 0, i64 6
  %795 = load i32* %arrayidx12.6.2.5, align 4
  %arrayidx15.6.2.5 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.2.5 = getelementptr inbounds [7 x i32]* %arrayidx15.6.2.5, i32 0, i64 2
  %796 = load i32* %arrayidx16.6.2.5, align 4
  %mul.6.2.5 = mul nsw i32 %795, %796
  %arrayidx19.6.2.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.6.2.5 = getelementptr inbounds [7 x i32]* %arrayidx19.6.2.5, i32 0, i64 2
  %797 = load i32* %arrayidx20.6.2.5, align 4
  %add.6.2.5 = add nsw i32 %797, %mul.6.2.5
  store i32 %add.6.2.5, i32* %arrayidx20.6.2.5, align 4
  br label %for.inc.6.2.5

for.inc.6.2.5:                                    ; preds = %for.inc.5.2.5
  br label %for.inc21.2.5

for.inc21.2.5:                                    ; preds = %for.inc.6.2.5
  %arrayidx.3.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx5.3.5 = getelementptr inbounds [7 x i32]* %arrayidx.3.5, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.5, align 4
  br label %for.body8.3.5

for.body8.3.5:                                    ; preds = %for.inc21.2.5
  %arrayidx11.324.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.325.5 = getelementptr inbounds [7 x i32]* %arrayidx11.324.5, i32 0, i64 0
  %798 = load i32* %arrayidx12.325.5, align 4
  %arrayidx16.326.5 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 3
  %799 = load i32* %arrayidx16.326.5, align 4
  %mul.327.5 = mul nsw i32 %798, %799
  %arrayidx19.329.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.330.5 = getelementptr inbounds [7 x i32]* %arrayidx19.329.5, i32 0, i64 3
  %800 = load i32* %arrayidx20.330.5, align 4
  %add.331.5 = add nsw i32 %800, %mul.327.5
  store i32 %add.331.5, i32* %arrayidx20.330.5, align 4
  br label %for.inc.332.5

for.inc.332.5:                                    ; preds = %for.body8.3.5
  %arrayidx11.1.3.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.1.3.5 = getelementptr inbounds [7 x i32]* %arrayidx11.1.3.5, i32 0, i64 1
  %801 = load i32* %arrayidx12.1.3.5, align 4
  %arrayidx15.1.3.5 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.3.5 = getelementptr inbounds [7 x i32]* %arrayidx15.1.3.5, i32 0, i64 3
  %802 = load i32* %arrayidx16.1.3.5, align 4
  %mul.1.3.5 = mul nsw i32 %801, %802
  %arrayidx19.1.3.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.1.3.5 = getelementptr inbounds [7 x i32]* %arrayidx19.1.3.5, i32 0, i64 3
  %803 = load i32* %arrayidx20.1.3.5, align 4
  %add.1.3.5 = add nsw i32 %803, %mul.1.3.5
  store i32 %add.1.3.5, i32* %arrayidx20.1.3.5, align 4
  br label %for.inc.1.3.5

for.inc.1.3.5:                                    ; preds = %for.inc.332.5
  %arrayidx11.2.3.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.2.3.5 = getelementptr inbounds [7 x i32]* %arrayidx11.2.3.5, i32 0, i64 2
  %804 = load i32* %arrayidx12.2.3.5, align 4
  %arrayidx15.2.3.5 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.3.5 = getelementptr inbounds [7 x i32]* %arrayidx15.2.3.5, i32 0, i64 3
  %805 = load i32* %arrayidx16.2.3.5, align 4
  %mul.2.3.5 = mul nsw i32 %804, %805
  %arrayidx19.2.3.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.2.3.5 = getelementptr inbounds [7 x i32]* %arrayidx19.2.3.5, i32 0, i64 3
  %806 = load i32* %arrayidx20.2.3.5, align 4
  %add.2.3.5 = add nsw i32 %806, %mul.2.3.5
  store i32 %add.2.3.5, i32* %arrayidx20.2.3.5, align 4
  br label %for.inc.2.3.5

for.inc.2.3.5:                                    ; preds = %for.inc.1.3.5
  %arrayidx11.3.3.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.3.3.5 = getelementptr inbounds [7 x i32]* %arrayidx11.3.3.5, i32 0, i64 3
  %807 = load i32* %arrayidx12.3.3.5, align 4
  %arrayidx15.3.3.5 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.3.5 = getelementptr inbounds [7 x i32]* %arrayidx15.3.3.5, i32 0, i64 3
  %808 = load i32* %arrayidx16.3.3.5, align 4
  %mul.3.3.5 = mul nsw i32 %807, %808
  %arrayidx19.3.3.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.3.3.5 = getelementptr inbounds [7 x i32]* %arrayidx19.3.3.5, i32 0, i64 3
  %809 = load i32* %arrayidx20.3.3.5, align 4
  %add.3.3.5 = add nsw i32 %809, %mul.3.3.5
  store i32 %add.3.3.5, i32* %arrayidx20.3.3.5, align 4
  br label %for.inc.3.3.5

for.inc.3.3.5:                                    ; preds = %for.inc.2.3.5
  %arrayidx11.4.3.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.4.3.5 = getelementptr inbounds [7 x i32]* %arrayidx11.4.3.5, i32 0, i64 4
  %810 = load i32* %arrayidx12.4.3.5, align 4
  %arrayidx15.4.3.5 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.3.5 = getelementptr inbounds [7 x i32]* %arrayidx15.4.3.5, i32 0, i64 3
  %811 = load i32* %arrayidx16.4.3.5, align 4
  %mul.4.3.5 = mul nsw i32 %810, %811
  %arrayidx19.4.3.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.4.3.5 = getelementptr inbounds [7 x i32]* %arrayidx19.4.3.5, i32 0, i64 3
  %812 = load i32* %arrayidx20.4.3.5, align 4
  %add.4.3.5 = add nsw i32 %812, %mul.4.3.5
  store i32 %add.4.3.5, i32* %arrayidx20.4.3.5, align 4
  br label %for.inc.4.3.5

for.inc.4.3.5:                                    ; preds = %for.inc.3.3.5
  %arrayidx11.5.3.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.5.3.5 = getelementptr inbounds [7 x i32]* %arrayidx11.5.3.5, i32 0, i64 5
  %813 = load i32* %arrayidx12.5.3.5, align 4
  %arrayidx15.5.3.5 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.3.5 = getelementptr inbounds [7 x i32]* %arrayidx15.5.3.5, i32 0, i64 3
  %814 = load i32* %arrayidx16.5.3.5, align 4
  %mul.5.3.5 = mul nsw i32 %813, %814
  %arrayidx19.5.3.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.5.3.5 = getelementptr inbounds [7 x i32]* %arrayidx19.5.3.5, i32 0, i64 3
  %815 = load i32* %arrayidx20.5.3.5, align 4
  %add.5.3.5 = add nsw i32 %815, %mul.5.3.5
  store i32 %add.5.3.5, i32* %arrayidx20.5.3.5, align 4
  br label %for.inc.5.3.5

for.inc.5.3.5:                                    ; preds = %for.inc.4.3.5
  %arrayidx11.6.3.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.6.3.5 = getelementptr inbounds [7 x i32]* %arrayidx11.6.3.5, i32 0, i64 6
  %816 = load i32* %arrayidx12.6.3.5, align 4
  %arrayidx15.6.3.5 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.3.5 = getelementptr inbounds [7 x i32]* %arrayidx15.6.3.5, i32 0, i64 3
  %817 = load i32* %arrayidx16.6.3.5, align 4
  %mul.6.3.5 = mul nsw i32 %816, %817
  %arrayidx19.6.3.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.6.3.5 = getelementptr inbounds [7 x i32]* %arrayidx19.6.3.5, i32 0, i64 3
  %818 = load i32* %arrayidx20.6.3.5, align 4
  %add.6.3.5 = add nsw i32 %818, %mul.6.3.5
  store i32 %add.6.3.5, i32* %arrayidx20.6.3.5, align 4
  br label %for.inc.6.3.5

for.inc.6.3.5:                                    ; preds = %for.inc.5.3.5
  br label %for.inc21.3.5

for.inc21.3.5:                                    ; preds = %for.inc.6.3.5
  %arrayidx.4.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx5.4.5 = getelementptr inbounds [7 x i32]* %arrayidx.4.5, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.5, align 4
  br label %for.body8.4.5

for.body8.4.5:                                    ; preds = %for.inc21.3.5
  %arrayidx11.434.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.435.5 = getelementptr inbounds [7 x i32]* %arrayidx11.434.5, i32 0, i64 0
  %819 = load i32* %arrayidx12.435.5, align 4
  %arrayidx16.436.5 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 4
  %820 = load i32* %arrayidx16.436.5, align 4
  %mul.437.5 = mul nsw i32 %819, %820
  %arrayidx19.439.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.440.5 = getelementptr inbounds [7 x i32]* %arrayidx19.439.5, i32 0, i64 4
  %821 = load i32* %arrayidx20.440.5, align 4
  %add.441.5 = add nsw i32 %821, %mul.437.5
  store i32 %add.441.5, i32* %arrayidx20.440.5, align 4
  br label %for.inc.442.5

for.inc.442.5:                                    ; preds = %for.body8.4.5
  %arrayidx11.1.4.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.1.4.5 = getelementptr inbounds [7 x i32]* %arrayidx11.1.4.5, i32 0, i64 1
  %822 = load i32* %arrayidx12.1.4.5, align 4
  %arrayidx15.1.4.5 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.4.5 = getelementptr inbounds [7 x i32]* %arrayidx15.1.4.5, i32 0, i64 4
  %823 = load i32* %arrayidx16.1.4.5, align 4
  %mul.1.4.5 = mul nsw i32 %822, %823
  %arrayidx19.1.4.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.1.4.5 = getelementptr inbounds [7 x i32]* %arrayidx19.1.4.5, i32 0, i64 4
  %824 = load i32* %arrayidx20.1.4.5, align 4
  %add.1.4.5 = add nsw i32 %824, %mul.1.4.5
  store i32 %add.1.4.5, i32* %arrayidx20.1.4.5, align 4
  br label %for.inc.1.4.5

for.inc.1.4.5:                                    ; preds = %for.inc.442.5
  %arrayidx11.2.4.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.2.4.5 = getelementptr inbounds [7 x i32]* %arrayidx11.2.4.5, i32 0, i64 2
  %825 = load i32* %arrayidx12.2.4.5, align 4
  %arrayidx15.2.4.5 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.4.5 = getelementptr inbounds [7 x i32]* %arrayidx15.2.4.5, i32 0, i64 4
  %826 = load i32* %arrayidx16.2.4.5, align 4
  %mul.2.4.5 = mul nsw i32 %825, %826
  %arrayidx19.2.4.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.2.4.5 = getelementptr inbounds [7 x i32]* %arrayidx19.2.4.5, i32 0, i64 4
  %827 = load i32* %arrayidx20.2.4.5, align 4
  %add.2.4.5 = add nsw i32 %827, %mul.2.4.5
  store i32 %add.2.4.5, i32* %arrayidx20.2.4.5, align 4
  br label %for.inc.2.4.5

for.inc.2.4.5:                                    ; preds = %for.inc.1.4.5
  %arrayidx11.3.4.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.3.4.5 = getelementptr inbounds [7 x i32]* %arrayidx11.3.4.5, i32 0, i64 3
  %828 = load i32* %arrayidx12.3.4.5, align 4
  %arrayidx15.3.4.5 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.4.5 = getelementptr inbounds [7 x i32]* %arrayidx15.3.4.5, i32 0, i64 4
  %829 = load i32* %arrayidx16.3.4.5, align 4
  %mul.3.4.5 = mul nsw i32 %828, %829
  %arrayidx19.3.4.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.3.4.5 = getelementptr inbounds [7 x i32]* %arrayidx19.3.4.5, i32 0, i64 4
  %830 = load i32* %arrayidx20.3.4.5, align 4
  %add.3.4.5 = add nsw i32 %830, %mul.3.4.5
  store i32 %add.3.4.5, i32* %arrayidx20.3.4.5, align 4
  br label %for.inc.3.4.5

for.inc.3.4.5:                                    ; preds = %for.inc.2.4.5
  %arrayidx11.4.4.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.4.4.5 = getelementptr inbounds [7 x i32]* %arrayidx11.4.4.5, i32 0, i64 4
  %831 = load i32* %arrayidx12.4.4.5, align 4
  %arrayidx15.4.4.5 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.4.5 = getelementptr inbounds [7 x i32]* %arrayidx15.4.4.5, i32 0, i64 4
  %832 = load i32* %arrayidx16.4.4.5, align 4
  %mul.4.4.5 = mul nsw i32 %831, %832
  %arrayidx19.4.4.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.4.4.5 = getelementptr inbounds [7 x i32]* %arrayidx19.4.4.5, i32 0, i64 4
  %833 = load i32* %arrayidx20.4.4.5, align 4
  %add.4.4.5 = add nsw i32 %833, %mul.4.4.5
  store i32 %add.4.4.5, i32* %arrayidx20.4.4.5, align 4
  br label %for.inc.4.4.5

for.inc.4.4.5:                                    ; preds = %for.inc.3.4.5
  %arrayidx11.5.4.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.5.4.5 = getelementptr inbounds [7 x i32]* %arrayidx11.5.4.5, i32 0, i64 5
  %834 = load i32* %arrayidx12.5.4.5, align 4
  %arrayidx15.5.4.5 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.4.5 = getelementptr inbounds [7 x i32]* %arrayidx15.5.4.5, i32 0, i64 4
  %835 = load i32* %arrayidx16.5.4.5, align 4
  %mul.5.4.5 = mul nsw i32 %834, %835
  %arrayidx19.5.4.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.5.4.5 = getelementptr inbounds [7 x i32]* %arrayidx19.5.4.5, i32 0, i64 4
  %836 = load i32* %arrayidx20.5.4.5, align 4
  %add.5.4.5 = add nsw i32 %836, %mul.5.4.5
  store i32 %add.5.4.5, i32* %arrayidx20.5.4.5, align 4
  br label %for.inc.5.4.5

for.inc.5.4.5:                                    ; preds = %for.inc.4.4.5
  %arrayidx11.6.4.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.6.4.5 = getelementptr inbounds [7 x i32]* %arrayidx11.6.4.5, i32 0, i64 6
  %837 = load i32* %arrayidx12.6.4.5, align 4
  %arrayidx15.6.4.5 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.4.5 = getelementptr inbounds [7 x i32]* %arrayidx15.6.4.5, i32 0, i64 4
  %838 = load i32* %arrayidx16.6.4.5, align 4
  %mul.6.4.5 = mul nsw i32 %837, %838
  %arrayidx19.6.4.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.6.4.5 = getelementptr inbounds [7 x i32]* %arrayidx19.6.4.5, i32 0, i64 4
  %839 = load i32* %arrayidx20.6.4.5, align 4
  %add.6.4.5 = add nsw i32 %839, %mul.6.4.5
  store i32 %add.6.4.5, i32* %arrayidx20.6.4.5, align 4
  br label %for.inc.6.4.5

for.inc.6.4.5:                                    ; preds = %for.inc.5.4.5
  br label %for.inc21.4.5

for.inc21.4.5:                                    ; preds = %for.inc.6.4.5
  %arrayidx.5.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx5.5.5 = getelementptr inbounds [7 x i32]* %arrayidx.5.5, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.5, align 4
  br label %for.body8.5.5

for.body8.5.5:                                    ; preds = %for.inc21.4.5
  %arrayidx11.544.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.545.5 = getelementptr inbounds [7 x i32]* %arrayidx11.544.5, i32 0, i64 0
  %840 = load i32* %arrayidx12.545.5, align 4
  %arrayidx16.546.5 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 5
  %841 = load i32* %arrayidx16.546.5, align 4
  %mul.547.5 = mul nsw i32 %840, %841
  %arrayidx19.549.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.550.5 = getelementptr inbounds [7 x i32]* %arrayidx19.549.5, i32 0, i64 5
  %842 = load i32* %arrayidx20.550.5, align 4
  %add.551.5 = add nsw i32 %842, %mul.547.5
  store i32 %add.551.5, i32* %arrayidx20.550.5, align 4
  br label %for.inc.552.5

for.inc.552.5:                                    ; preds = %for.body8.5.5
  %arrayidx11.1.5.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.1.5.5 = getelementptr inbounds [7 x i32]* %arrayidx11.1.5.5, i32 0, i64 1
  %843 = load i32* %arrayidx12.1.5.5, align 4
  %arrayidx15.1.5.5 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.5.5 = getelementptr inbounds [7 x i32]* %arrayidx15.1.5.5, i32 0, i64 5
  %844 = load i32* %arrayidx16.1.5.5, align 4
  %mul.1.5.5 = mul nsw i32 %843, %844
  %arrayidx19.1.5.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.1.5.5 = getelementptr inbounds [7 x i32]* %arrayidx19.1.5.5, i32 0, i64 5
  %845 = load i32* %arrayidx20.1.5.5, align 4
  %add.1.5.5 = add nsw i32 %845, %mul.1.5.5
  store i32 %add.1.5.5, i32* %arrayidx20.1.5.5, align 4
  br label %for.inc.1.5.5

for.inc.1.5.5:                                    ; preds = %for.inc.552.5
  %arrayidx11.2.5.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.2.5.5 = getelementptr inbounds [7 x i32]* %arrayidx11.2.5.5, i32 0, i64 2
  %846 = load i32* %arrayidx12.2.5.5, align 4
  %arrayidx15.2.5.5 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.5.5 = getelementptr inbounds [7 x i32]* %arrayidx15.2.5.5, i32 0, i64 5
  %847 = load i32* %arrayidx16.2.5.5, align 4
  %mul.2.5.5 = mul nsw i32 %846, %847
  %arrayidx19.2.5.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.2.5.5 = getelementptr inbounds [7 x i32]* %arrayidx19.2.5.5, i32 0, i64 5
  %848 = load i32* %arrayidx20.2.5.5, align 4
  %add.2.5.5 = add nsw i32 %848, %mul.2.5.5
  store i32 %add.2.5.5, i32* %arrayidx20.2.5.5, align 4
  br label %for.inc.2.5.5

for.inc.2.5.5:                                    ; preds = %for.inc.1.5.5
  %arrayidx11.3.5.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.3.5.5 = getelementptr inbounds [7 x i32]* %arrayidx11.3.5.5, i32 0, i64 3
  %849 = load i32* %arrayidx12.3.5.5, align 4
  %arrayidx15.3.5.5 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.5.5 = getelementptr inbounds [7 x i32]* %arrayidx15.3.5.5, i32 0, i64 5
  %850 = load i32* %arrayidx16.3.5.5, align 4
  %mul.3.5.5 = mul nsw i32 %849, %850
  %arrayidx19.3.5.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.3.5.5 = getelementptr inbounds [7 x i32]* %arrayidx19.3.5.5, i32 0, i64 5
  %851 = load i32* %arrayidx20.3.5.5, align 4
  %add.3.5.5 = add nsw i32 %851, %mul.3.5.5
  store i32 %add.3.5.5, i32* %arrayidx20.3.5.5, align 4
  br label %for.inc.3.5.5

for.inc.3.5.5:                                    ; preds = %for.inc.2.5.5
  %arrayidx11.4.5.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.4.5.5 = getelementptr inbounds [7 x i32]* %arrayidx11.4.5.5, i32 0, i64 4
  %852 = load i32* %arrayidx12.4.5.5, align 4
  %arrayidx15.4.5.5 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.5.5 = getelementptr inbounds [7 x i32]* %arrayidx15.4.5.5, i32 0, i64 5
  %853 = load i32* %arrayidx16.4.5.5, align 4
  %mul.4.5.5 = mul nsw i32 %852, %853
  %arrayidx19.4.5.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.4.5.5 = getelementptr inbounds [7 x i32]* %arrayidx19.4.5.5, i32 0, i64 5
  %854 = load i32* %arrayidx20.4.5.5, align 4
  %add.4.5.5 = add nsw i32 %854, %mul.4.5.5
  store i32 %add.4.5.5, i32* %arrayidx20.4.5.5, align 4
  br label %for.inc.4.5.5

for.inc.4.5.5:                                    ; preds = %for.inc.3.5.5
  %arrayidx11.5.5.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.5.5.5 = getelementptr inbounds [7 x i32]* %arrayidx11.5.5.5, i32 0, i64 5
  %855 = load i32* %arrayidx12.5.5.5, align 4
  %arrayidx15.5.5.5 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.5.5 = getelementptr inbounds [7 x i32]* %arrayidx15.5.5.5, i32 0, i64 5
  %856 = load i32* %arrayidx16.5.5.5, align 4
  %mul.5.5.5 = mul nsw i32 %855, %856
  %arrayidx19.5.5.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.5.5.5 = getelementptr inbounds [7 x i32]* %arrayidx19.5.5.5, i32 0, i64 5
  %857 = load i32* %arrayidx20.5.5.5, align 4
  %add.5.5.5 = add nsw i32 %857, %mul.5.5.5
  store i32 %add.5.5.5, i32* %arrayidx20.5.5.5, align 4
  br label %for.inc.5.5.5

for.inc.5.5.5:                                    ; preds = %for.inc.4.5.5
  %arrayidx11.6.5.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.6.5.5 = getelementptr inbounds [7 x i32]* %arrayidx11.6.5.5, i32 0, i64 6
  %858 = load i32* %arrayidx12.6.5.5, align 4
  %arrayidx15.6.5.5 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.5.5 = getelementptr inbounds [7 x i32]* %arrayidx15.6.5.5, i32 0, i64 5
  %859 = load i32* %arrayidx16.6.5.5, align 4
  %mul.6.5.5 = mul nsw i32 %858, %859
  %arrayidx19.6.5.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.6.5.5 = getelementptr inbounds [7 x i32]* %arrayidx19.6.5.5, i32 0, i64 5
  %860 = load i32* %arrayidx20.6.5.5, align 4
  %add.6.5.5 = add nsw i32 %860, %mul.6.5.5
  store i32 %add.6.5.5, i32* %arrayidx20.6.5.5, align 4
  br label %for.inc.6.5.5

for.inc.6.5.5:                                    ; preds = %for.inc.5.5.5
  br label %for.inc21.5.5

for.inc21.5.5:                                    ; preds = %for.inc.6.5.5
  %arrayidx.6.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx5.6.5 = getelementptr inbounds [7 x i32]* %arrayidx.6.5, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.5, align 4
  br label %for.body8.6.5

for.body8.6.5:                                    ; preds = %for.inc21.5.5
  %arrayidx11.654.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.655.5 = getelementptr inbounds [7 x i32]* %arrayidx11.654.5, i32 0, i64 0
  %861 = load i32* %arrayidx12.655.5, align 4
  %arrayidx16.656.5 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 6
  %862 = load i32* %arrayidx16.656.5, align 4
  %mul.657.5 = mul nsw i32 %861, %862
  %arrayidx19.659.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.660.5 = getelementptr inbounds [7 x i32]* %arrayidx19.659.5, i32 0, i64 6
  %863 = load i32* %arrayidx20.660.5, align 4
  %add.661.5 = add nsw i32 %863, %mul.657.5
  store i32 %add.661.5, i32* %arrayidx20.660.5, align 4
  br label %for.inc.662.5

for.inc.662.5:                                    ; preds = %for.body8.6.5
  %arrayidx11.1.6.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.1.6.5 = getelementptr inbounds [7 x i32]* %arrayidx11.1.6.5, i32 0, i64 1
  %864 = load i32* %arrayidx12.1.6.5, align 4
  %arrayidx15.1.6.5 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.6.5 = getelementptr inbounds [7 x i32]* %arrayidx15.1.6.5, i32 0, i64 6
  %865 = load i32* %arrayidx16.1.6.5, align 4
  %mul.1.6.5 = mul nsw i32 %864, %865
  %arrayidx19.1.6.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.1.6.5 = getelementptr inbounds [7 x i32]* %arrayidx19.1.6.5, i32 0, i64 6
  %866 = load i32* %arrayidx20.1.6.5, align 4
  %add.1.6.5 = add nsw i32 %866, %mul.1.6.5
  store i32 %add.1.6.5, i32* %arrayidx20.1.6.5, align 4
  br label %for.inc.1.6.5

for.inc.1.6.5:                                    ; preds = %for.inc.662.5
  %arrayidx11.2.6.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.2.6.5 = getelementptr inbounds [7 x i32]* %arrayidx11.2.6.5, i32 0, i64 2
  %867 = load i32* %arrayidx12.2.6.5, align 4
  %arrayidx15.2.6.5 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.6.5 = getelementptr inbounds [7 x i32]* %arrayidx15.2.6.5, i32 0, i64 6
  %868 = load i32* %arrayidx16.2.6.5, align 4
  %mul.2.6.5 = mul nsw i32 %867, %868
  %arrayidx19.2.6.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.2.6.5 = getelementptr inbounds [7 x i32]* %arrayidx19.2.6.5, i32 0, i64 6
  %869 = load i32* %arrayidx20.2.6.5, align 4
  %add.2.6.5 = add nsw i32 %869, %mul.2.6.5
  store i32 %add.2.6.5, i32* %arrayidx20.2.6.5, align 4
  br label %for.inc.2.6.5

for.inc.2.6.5:                                    ; preds = %for.inc.1.6.5
  %arrayidx11.3.6.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.3.6.5 = getelementptr inbounds [7 x i32]* %arrayidx11.3.6.5, i32 0, i64 3
  %870 = load i32* %arrayidx12.3.6.5, align 4
  %arrayidx15.3.6.5 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.6.5 = getelementptr inbounds [7 x i32]* %arrayidx15.3.6.5, i32 0, i64 6
  %871 = load i32* %arrayidx16.3.6.5, align 4
  %mul.3.6.5 = mul nsw i32 %870, %871
  %arrayidx19.3.6.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.3.6.5 = getelementptr inbounds [7 x i32]* %arrayidx19.3.6.5, i32 0, i64 6
  %872 = load i32* %arrayidx20.3.6.5, align 4
  %add.3.6.5 = add nsw i32 %872, %mul.3.6.5
  store i32 %add.3.6.5, i32* %arrayidx20.3.6.5, align 4
  br label %for.inc.3.6.5

for.inc.3.6.5:                                    ; preds = %for.inc.2.6.5
  %arrayidx11.4.6.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.4.6.5 = getelementptr inbounds [7 x i32]* %arrayidx11.4.6.5, i32 0, i64 4
  %873 = load i32* %arrayidx12.4.6.5, align 4
  %arrayidx15.4.6.5 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.6.5 = getelementptr inbounds [7 x i32]* %arrayidx15.4.6.5, i32 0, i64 6
  %874 = load i32* %arrayidx16.4.6.5, align 4
  %mul.4.6.5 = mul nsw i32 %873, %874
  %arrayidx19.4.6.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.4.6.5 = getelementptr inbounds [7 x i32]* %arrayidx19.4.6.5, i32 0, i64 6
  %875 = load i32* %arrayidx20.4.6.5, align 4
  %add.4.6.5 = add nsw i32 %875, %mul.4.6.5
  store i32 %add.4.6.5, i32* %arrayidx20.4.6.5, align 4
  br label %for.inc.4.6.5

for.inc.4.6.5:                                    ; preds = %for.inc.3.6.5
  %arrayidx11.5.6.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.5.6.5 = getelementptr inbounds [7 x i32]* %arrayidx11.5.6.5, i32 0, i64 5
  %876 = load i32* %arrayidx12.5.6.5, align 4
  %arrayidx15.5.6.5 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.6.5 = getelementptr inbounds [7 x i32]* %arrayidx15.5.6.5, i32 0, i64 6
  %877 = load i32* %arrayidx16.5.6.5, align 4
  %mul.5.6.5 = mul nsw i32 %876, %877
  %arrayidx19.5.6.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.5.6.5 = getelementptr inbounds [7 x i32]* %arrayidx19.5.6.5, i32 0, i64 6
  %878 = load i32* %arrayidx20.5.6.5, align 4
  %add.5.6.5 = add nsw i32 %878, %mul.5.6.5
  store i32 %add.5.6.5, i32* %arrayidx20.5.6.5, align 4
  br label %for.inc.5.6.5

for.inc.5.6.5:                                    ; preds = %for.inc.4.6.5
  %arrayidx11.6.6.5 = getelementptr inbounds [7 x i32]* %a, i64 5
  %arrayidx12.6.6.5 = getelementptr inbounds [7 x i32]* %arrayidx11.6.6.5, i32 0, i64 6
  %879 = load i32* %arrayidx12.6.6.5, align 4
  %arrayidx15.6.6.5 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.6.5 = getelementptr inbounds [7 x i32]* %arrayidx15.6.6.5, i32 0, i64 6
  %880 = load i32* %arrayidx16.6.6.5, align 4
  %mul.6.6.5 = mul nsw i32 %879, %880
  %arrayidx19.6.6.5 = getelementptr inbounds [7 x i32]* %c, i64 5
  %arrayidx20.6.6.5 = getelementptr inbounds [7 x i32]* %arrayidx19.6.6.5, i32 0, i64 6
  %881 = load i32* %arrayidx20.6.6.5, align 4
  %add.6.6.5 = add nsw i32 %881, %mul.6.6.5
  store i32 %add.6.6.5, i32* %arrayidx20.6.6.5, align 4
  br label %for.inc.6.6.5

for.inc.6.6.5:                                    ; preds = %for.inc.5.6.5
  br label %for.inc21.6.5

for.inc21.6.5:                                    ; preds = %for.inc.6.6.5
  br label %for.inc24.5

for.inc24.5:                                      ; preds = %for.inc21.6.5
  br label %for.body3.6

for.body3.6:                                      ; preds = %for.inc24.5
  %arrayidx.6394 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx5.6395 = getelementptr inbounds [7 x i32]* %arrayidx.6394, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.6395, align 4
  br label %for.body8.6403

for.body8.6403:                                   ; preds = %for.body3.6
  %arrayidx11.6396 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.6397 = getelementptr inbounds [7 x i32]* %arrayidx11.6396, i32 0, i64 0
  %882 = load i32* %arrayidx12.6397, align 4
  %arrayidx16.6398 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 0
  %883 = load i32* %arrayidx16.6398, align 4
  %mul.6399 = mul nsw i32 %882, %883
  %arrayidx19.6400 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.6401 = getelementptr inbounds [7 x i32]* %arrayidx19.6400, i32 0, i64 0
  %884 = load i32* %arrayidx20.6401, align 4
  %add.6402 = add nsw i32 %884, %mul.6399
  store i32 %add.6402, i32* %arrayidx20.6401, align 4
  br label %for.inc.6412

for.inc.6412:                                     ; preds = %for.body8.6403
  %arrayidx11.1.6404 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.1.6405 = getelementptr inbounds [7 x i32]* %arrayidx11.1.6404, i32 0, i64 1
  %885 = load i32* %arrayidx12.1.6405, align 4
  %arrayidx15.1.6406 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.6407 = getelementptr inbounds [7 x i32]* %arrayidx15.1.6406, i32 0, i64 0
  %886 = load i32* %arrayidx16.1.6407, align 4
  %mul.1.6408 = mul nsw i32 %885, %886
  %arrayidx19.1.6409 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.1.6410 = getelementptr inbounds [7 x i32]* %arrayidx19.1.6409, i32 0, i64 0
  %887 = load i32* %arrayidx20.1.6410, align 4
  %add.1.6411 = add nsw i32 %887, %mul.1.6408
  store i32 %add.1.6411, i32* %arrayidx20.1.6410, align 4
  br label %for.inc.1.6421

for.inc.1.6421:                                   ; preds = %for.inc.6412
  %arrayidx11.2.6413 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.2.6414 = getelementptr inbounds [7 x i32]* %arrayidx11.2.6413, i32 0, i64 2
  %888 = load i32* %arrayidx12.2.6414, align 4
  %arrayidx15.2.6415 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.6416 = getelementptr inbounds [7 x i32]* %arrayidx15.2.6415, i32 0, i64 0
  %889 = load i32* %arrayidx16.2.6416, align 4
  %mul.2.6417 = mul nsw i32 %888, %889
  %arrayidx19.2.6418 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.2.6419 = getelementptr inbounds [7 x i32]* %arrayidx19.2.6418, i32 0, i64 0
  %890 = load i32* %arrayidx20.2.6419, align 4
  %add.2.6420 = add nsw i32 %890, %mul.2.6417
  store i32 %add.2.6420, i32* %arrayidx20.2.6419, align 4
  br label %for.inc.2.6430

for.inc.2.6430:                                   ; preds = %for.inc.1.6421
  %arrayidx11.3.6422 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.3.6423 = getelementptr inbounds [7 x i32]* %arrayidx11.3.6422, i32 0, i64 3
  %891 = load i32* %arrayidx12.3.6423, align 4
  %arrayidx15.3.6424 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.6425 = getelementptr inbounds [7 x i32]* %arrayidx15.3.6424, i32 0, i64 0
  %892 = load i32* %arrayidx16.3.6425, align 4
  %mul.3.6426 = mul nsw i32 %891, %892
  %arrayidx19.3.6427 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.3.6428 = getelementptr inbounds [7 x i32]* %arrayidx19.3.6427, i32 0, i64 0
  %893 = load i32* %arrayidx20.3.6428, align 4
  %add.3.6429 = add nsw i32 %893, %mul.3.6426
  store i32 %add.3.6429, i32* %arrayidx20.3.6428, align 4
  br label %for.inc.3.6439

for.inc.3.6439:                                   ; preds = %for.inc.2.6430
  %arrayidx11.4.6431 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.4.6432 = getelementptr inbounds [7 x i32]* %arrayidx11.4.6431, i32 0, i64 4
  %894 = load i32* %arrayidx12.4.6432, align 4
  %arrayidx15.4.6433 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.6434 = getelementptr inbounds [7 x i32]* %arrayidx15.4.6433, i32 0, i64 0
  %895 = load i32* %arrayidx16.4.6434, align 4
  %mul.4.6435 = mul nsw i32 %894, %895
  %arrayidx19.4.6436 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.4.6437 = getelementptr inbounds [7 x i32]* %arrayidx19.4.6436, i32 0, i64 0
  %896 = load i32* %arrayidx20.4.6437, align 4
  %add.4.6438 = add nsw i32 %896, %mul.4.6435
  store i32 %add.4.6438, i32* %arrayidx20.4.6437, align 4
  br label %for.inc.4.6448

for.inc.4.6448:                                   ; preds = %for.inc.3.6439
  %arrayidx11.5.6440 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.5.6441 = getelementptr inbounds [7 x i32]* %arrayidx11.5.6440, i32 0, i64 5
  %897 = load i32* %arrayidx12.5.6441, align 4
  %arrayidx15.5.6442 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.6443 = getelementptr inbounds [7 x i32]* %arrayidx15.5.6442, i32 0, i64 0
  %898 = load i32* %arrayidx16.5.6443, align 4
  %mul.5.6444 = mul nsw i32 %897, %898
  %arrayidx19.5.6445 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.5.6446 = getelementptr inbounds [7 x i32]* %arrayidx19.5.6445, i32 0, i64 0
  %899 = load i32* %arrayidx20.5.6446, align 4
  %add.5.6447 = add nsw i32 %899, %mul.5.6444
  store i32 %add.5.6447, i32* %arrayidx20.5.6446, align 4
  br label %for.inc.5.6457

for.inc.5.6457:                                   ; preds = %for.inc.4.6448
  %arrayidx11.6.6449 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.6.6450 = getelementptr inbounds [7 x i32]* %arrayidx11.6.6449, i32 0, i64 6
  %900 = load i32* %arrayidx12.6.6450, align 4
  %arrayidx15.6.6451 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.6452 = getelementptr inbounds [7 x i32]* %arrayidx15.6.6451, i32 0, i64 0
  %901 = load i32* %arrayidx16.6.6452, align 4
  %mul.6.6453 = mul nsw i32 %900, %901
  %arrayidx19.6.6454 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.6.6455 = getelementptr inbounds [7 x i32]* %arrayidx19.6.6454, i32 0, i64 0
  %902 = load i32* %arrayidx20.6.6455, align 4
  %add.6.6456 = add nsw i32 %902, %mul.6.6453
  store i32 %add.6.6456, i32* %arrayidx20.6.6455, align 4
  br label %for.inc.6.6458

for.inc.6.6458:                                   ; preds = %for.inc.5.6457
  br label %for.inc21.6459

for.inc21.6459:                                   ; preds = %for.inc.6.6458
  %arrayidx.1.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx5.1.6 = getelementptr inbounds [7 x i32]* %arrayidx.1.6, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.6, align 4
  br label %for.body8.1.6

for.body8.1.6:                                    ; preds = %for.inc21.6459
  %arrayidx11.14.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.15.6 = getelementptr inbounds [7 x i32]* %arrayidx11.14.6, i32 0, i64 0
  %903 = load i32* %arrayidx12.15.6, align 4
  %arrayidx16.16.6 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 1
  %904 = load i32* %arrayidx16.16.6, align 4
  %mul.17.6 = mul nsw i32 %903, %904
  %arrayidx19.19.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.110.6 = getelementptr inbounds [7 x i32]* %arrayidx19.19.6, i32 0, i64 1
  %905 = load i32* %arrayidx20.110.6, align 4
  %add.111.6 = add nsw i32 %905, %mul.17.6
  store i32 %add.111.6, i32* %arrayidx20.110.6, align 4
  br label %for.inc.112.6

for.inc.112.6:                                    ; preds = %for.body8.1.6
  %arrayidx11.1.1.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.1.1.6 = getelementptr inbounds [7 x i32]* %arrayidx11.1.1.6, i32 0, i64 1
  %906 = load i32* %arrayidx12.1.1.6, align 4
  %arrayidx15.1.1.6 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.1.6 = getelementptr inbounds [7 x i32]* %arrayidx15.1.1.6, i32 0, i64 1
  %907 = load i32* %arrayidx16.1.1.6, align 4
  %mul.1.1.6 = mul nsw i32 %906, %907
  %arrayidx19.1.1.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.1.1.6 = getelementptr inbounds [7 x i32]* %arrayidx19.1.1.6, i32 0, i64 1
  %908 = load i32* %arrayidx20.1.1.6, align 4
  %add.1.1.6 = add nsw i32 %908, %mul.1.1.6
  store i32 %add.1.1.6, i32* %arrayidx20.1.1.6, align 4
  br label %for.inc.1.1.6

for.inc.1.1.6:                                    ; preds = %for.inc.112.6
  %arrayidx11.2.1.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.2.1.6 = getelementptr inbounds [7 x i32]* %arrayidx11.2.1.6, i32 0, i64 2
  %909 = load i32* %arrayidx12.2.1.6, align 4
  %arrayidx15.2.1.6 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.1.6 = getelementptr inbounds [7 x i32]* %arrayidx15.2.1.6, i32 0, i64 1
  %910 = load i32* %arrayidx16.2.1.6, align 4
  %mul.2.1.6 = mul nsw i32 %909, %910
  %arrayidx19.2.1.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.2.1.6 = getelementptr inbounds [7 x i32]* %arrayidx19.2.1.6, i32 0, i64 1
  %911 = load i32* %arrayidx20.2.1.6, align 4
  %add.2.1.6 = add nsw i32 %911, %mul.2.1.6
  store i32 %add.2.1.6, i32* %arrayidx20.2.1.6, align 4
  br label %for.inc.2.1.6

for.inc.2.1.6:                                    ; preds = %for.inc.1.1.6
  %arrayidx11.3.1.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.3.1.6 = getelementptr inbounds [7 x i32]* %arrayidx11.3.1.6, i32 0, i64 3
  %912 = load i32* %arrayidx12.3.1.6, align 4
  %arrayidx15.3.1.6 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.1.6 = getelementptr inbounds [7 x i32]* %arrayidx15.3.1.6, i32 0, i64 1
  %913 = load i32* %arrayidx16.3.1.6, align 4
  %mul.3.1.6 = mul nsw i32 %912, %913
  %arrayidx19.3.1.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.3.1.6 = getelementptr inbounds [7 x i32]* %arrayidx19.3.1.6, i32 0, i64 1
  %914 = load i32* %arrayidx20.3.1.6, align 4
  %add.3.1.6 = add nsw i32 %914, %mul.3.1.6
  store i32 %add.3.1.6, i32* %arrayidx20.3.1.6, align 4
  br label %for.inc.3.1.6

for.inc.3.1.6:                                    ; preds = %for.inc.2.1.6
  %arrayidx11.4.1.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.4.1.6 = getelementptr inbounds [7 x i32]* %arrayidx11.4.1.6, i32 0, i64 4
  %915 = load i32* %arrayidx12.4.1.6, align 4
  %arrayidx15.4.1.6 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.1.6 = getelementptr inbounds [7 x i32]* %arrayidx15.4.1.6, i32 0, i64 1
  %916 = load i32* %arrayidx16.4.1.6, align 4
  %mul.4.1.6 = mul nsw i32 %915, %916
  %arrayidx19.4.1.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.4.1.6 = getelementptr inbounds [7 x i32]* %arrayidx19.4.1.6, i32 0, i64 1
  %917 = load i32* %arrayidx20.4.1.6, align 4
  %add.4.1.6 = add nsw i32 %917, %mul.4.1.6
  store i32 %add.4.1.6, i32* %arrayidx20.4.1.6, align 4
  br label %for.inc.4.1.6

for.inc.4.1.6:                                    ; preds = %for.inc.3.1.6
  %arrayidx11.5.1.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.5.1.6 = getelementptr inbounds [7 x i32]* %arrayidx11.5.1.6, i32 0, i64 5
  %918 = load i32* %arrayidx12.5.1.6, align 4
  %arrayidx15.5.1.6 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.1.6 = getelementptr inbounds [7 x i32]* %arrayidx15.5.1.6, i32 0, i64 1
  %919 = load i32* %arrayidx16.5.1.6, align 4
  %mul.5.1.6 = mul nsw i32 %918, %919
  %arrayidx19.5.1.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.5.1.6 = getelementptr inbounds [7 x i32]* %arrayidx19.5.1.6, i32 0, i64 1
  %920 = load i32* %arrayidx20.5.1.6, align 4
  %add.5.1.6 = add nsw i32 %920, %mul.5.1.6
  store i32 %add.5.1.6, i32* %arrayidx20.5.1.6, align 4
  br label %for.inc.5.1.6

for.inc.5.1.6:                                    ; preds = %for.inc.4.1.6
  %arrayidx11.6.1.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.6.1.6 = getelementptr inbounds [7 x i32]* %arrayidx11.6.1.6, i32 0, i64 6
  %921 = load i32* %arrayidx12.6.1.6, align 4
  %arrayidx15.6.1.6 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.1.6 = getelementptr inbounds [7 x i32]* %arrayidx15.6.1.6, i32 0, i64 1
  %922 = load i32* %arrayidx16.6.1.6, align 4
  %mul.6.1.6 = mul nsw i32 %921, %922
  %arrayidx19.6.1.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.6.1.6 = getelementptr inbounds [7 x i32]* %arrayidx19.6.1.6, i32 0, i64 1
  %923 = load i32* %arrayidx20.6.1.6, align 4
  %add.6.1.6 = add nsw i32 %923, %mul.6.1.6
  store i32 %add.6.1.6, i32* %arrayidx20.6.1.6, align 4
  br label %for.inc.6.1.6

for.inc.6.1.6:                                    ; preds = %for.inc.5.1.6
  br label %for.inc21.1.6

for.inc21.1.6:                                    ; preds = %for.inc.6.1.6
  %arrayidx.2.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx5.2.6 = getelementptr inbounds [7 x i32]* %arrayidx.2.6, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.6, align 4
  br label %for.body8.2.6

for.body8.2.6:                                    ; preds = %for.inc21.1.6
  %arrayidx11.214.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.215.6 = getelementptr inbounds [7 x i32]* %arrayidx11.214.6, i32 0, i64 0
  %924 = load i32* %arrayidx12.215.6, align 4
  %arrayidx16.216.6 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 2
  %925 = load i32* %arrayidx16.216.6, align 4
  %mul.217.6 = mul nsw i32 %924, %925
  %arrayidx19.219.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.220.6 = getelementptr inbounds [7 x i32]* %arrayidx19.219.6, i32 0, i64 2
  %926 = load i32* %arrayidx20.220.6, align 4
  %add.221.6 = add nsw i32 %926, %mul.217.6
  store i32 %add.221.6, i32* %arrayidx20.220.6, align 4
  br label %for.inc.222.6

for.inc.222.6:                                    ; preds = %for.body8.2.6
  %arrayidx11.1.2.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.1.2.6 = getelementptr inbounds [7 x i32]* %arrayidx11.1.2.6, i32 0, i64 1
  %927 = load i32* %arrayidx12.1.2.6, align 4
  %arrayidx15.1.2.6 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.2.6 = getelementptr inbounds [7 x i32]* %arrayidx15.1.2.6, i32 0, i64 2
  %928 = load i32* %arrayidx16.1.2.6, align 4
  %mul.1.2.6 = mul nsw i32 %927, %928
  %arrayidx19.1.2.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.1.2.6 = getelementptr inbounds [7 x i32]* %arrayidx19.1.2.6, i32 0, i64 2
  %929 = load i32* %arrayidx20.1.2.6, align 4
  %add.1.2.6 = add nsw i32 %929, %mul.1.2.6
  store i32 %add.1.2.6, i32* %arrayidx20.1.2.6, align 4
  br label %for.inc.1.2.6

for.inc.1.2.6:                                    ; preds = %for.inc.222.6
  %arrayidx11.2.2.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.2.2.6 = getelementptr inbounds [7 x i32]* %arrayidx11.2.2.6, i32 0, i64 2
  %930 = load i32* %arrayidx12.2.2.6, align 4
  %arrayidx15.2.2.6 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.2.6 = getelementptr inbounds [7 x i32]* %arrayidx15.2.2.6, i32 0, i64 2
  %931 = load i32* %arrayidx16.2.2.6, align 4
  %mul.2.2.6 = mul nsw i32 %930, %931
  %arrayidx19.2.2.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.2.2.6 = getelementptr inbounds [7 x i32]* %arrayidx19.2.2.6, i32 0, i64 2
  %932 = load i32* %arrayidx20.2.2.6, align 4
  %add.2.2.6 = add nsw i32 %932, %mul.2.2.6
  store i32 %add.2.2.6, i32* %arrayidx20.2.2.6, align 4
  br label %for.inc.2.2.6

for.inc.2.2.6:                                    ; preds = %for.inc.1.2.6
  %arrayidx11.3.2.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.3.2.6 = getelementptr inbounds [7 x i32]* %arrayidx11.3.2.6, i32 0, i64 3
  %933 = load i32* %arrayidx12.3.2.6, align 4
  %arrayidx15.3.2.6 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.2.6 = getelementptr inbounds [7 x i32]* %arrayidx15.3.2.6, i32 0, i64 2
  %934 = load i32* %arrayidx16.3.2.6, align 4
  %mul.3.2.6 = mul nsw i32 %933, %934
  %arrayidx19.3.2.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.3.2.6 = getelementptr inbounds [7 x i32]* %arrayidx19.3.2.6, i32 0, i64 2
  %935 = load i32* %arrayidx20.3.2.6, align 4
  %add.3.2.6 = add nsw i32 %935, %mul.3.2.6
  store i32 %add.3.2.6, i32* %arrayidx20.3.2.6, align 4
  br label %for.inc.3.2.6

for.inc.3.2.6:                                    ; preds = %for.inc.2.2.6
  %arrayidx11.4.2.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.4.2.6 = getelementptr inbounds [7 x i32]* %arrayidx11.4.2.6, i32 0, i64 4
  %936 = load i32* %arrayidx12.4.2.6, align 4
  %arrayidx15.4.2.6 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.2.6 = getelementptr inbounds [7 x i32]* %arrayidx15.4.2.6, i32 0, i64 2
  %937 = load i32* %arrayidx16.4.2.6, align 4
  %mul.4.2.6 = mul nsw i32 %936, %937
  %arrayidx19.4.2.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.4.2.6 = getelementptr inbounds [7 x i32]* %arrayidx19.4.2.6, i32 0, i64 2
  %938 = load i32* %arrayidx20.4.2.6, align 4
  %add.4.2.6 = add nsw i32 %938, %mul.4.2.6
  store i32 %add.4.2.6, i32* %arrayidx20.4.2.6, align 4
  br label %for.inc.4.2.6

for.inc.4.2.6:                                    ; preds = %for.inc.3.2.6
  %arrayidx11.5.2.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.5.2.6 = getelementptr inbounds [7 x i32]* %arrayidx11.5.2.6, i32 0, i64 5
  %939 = load i32* %arrayidx12.5.2.6, align 4
  %arrayidx15.5.2.6 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.2.6 = getelementptr inbounds [7 x i32]* %arrayidx15.5.2.6, i32 0, i64 2
  %940 = load i32* %arrayidx16.5.2.6, align 4
  %mul.5.2.6 = mul nsw i32 %939, %940
  %arrayidx19.5.2.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.5.2.6 = getelementptr inbounds [7 x i32]* %arrayidx19.5.2.6, i32 0, i64 2
  %941 = load i32* %arrayidx20.5.2.6, align 4
  %add.5.2.6 = add nsw i32 %941, %mul.5.2.6
  store i32 %add.5.2.6, i32* %arrayidx20.5.2.6, align 4
  br label %for.inc.5.2.6

for.inc.5.2.6:                                    ; preds = %for.inc.4.2.6
  %arrayidx11.6.2.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.6.2.6 = getelementptr inbounds [7 x i32]* %arrayidx11.6.2.6, i32 0, i64 6
  %942 = load i32* %arrayidx12.6.2.6, align 4
  %arrayidx15.6.2.6 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.2.6 = getelementptr inbounds [7 x i32]* %arrayidx15.6.2.6, i32 0, i64 2
  %943 = load i32* %arrayidx16.6.2.6, align 4
  %mul.6.2.6 = mul nsw i32 %942, %943
  %arrayidx19.6.2.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.6.2.6 = getelementptr inbounds [7 x i32]* %arrayidx19.6.2.6, i32 0, i64 2
  %944 = load i32* %arrayidx20.6.2.6, align 4
  %add.6.2.6 = add nsw i32 %944, %mul.6.2.6
  store i32 %add.6.2.6, i32* %arrayidx20.6.2.6, align 4
  br label %for.inc.6.2.6

for.inc.6.2.6:                                    ; preds = %for.inc.5.2.6
  br label %for.inc21.2.6

for.inc21.2.6:                                    ; preds = %for.inc.6.2.6
  %arrayidx.3.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx5.3.6 = getelementptr inbounds [7 x i32]* %arrayidx.3.6, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.6, align 4
  br label %for.body8.3.6

for.body8.3.6:                                    ; preds = %for.inc21.2.6
  %arrayidx11.324.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.325.6 = getelementptr inbounds [7 x i32]* %arrayidx11.324.6, i32 0, i64 0
  %945 = load i32* %arrayidx12.325.6, align 4
  %arrayidx16.326.6 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 3
  %946 = load i32* %arrayidx16.326.6, align 4
  %mul.327.6 = mul nsw i32 %945, %946
  %arrayidx19.329.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.330.6 = getelementptr inbounds [7 x i32]* %arrayidx19.329.6, i32 0, i64 3
  %947 = load i32* %arrayidx20.330.6, align 4
  %add.331.6 = add nsw i32 %947, %mul.327.6
  store i32 %add.331.6, i32* %arrayidx20.330.6, align 4
  br label %for.inc.332.6

for.inc.332.6:                                    ; preds = %for.body8.3.6
  %arrayidx11.1.3.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.1.3.6 = getelementptr inbounds [7 x i32]* %arrayidx11.1.3.6, i32 0, i64 1
  %948 = load i32* %arrayidx12.1.3.6, align 4
  %arrayidx15.1.3.6 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.3.6 = getelementptr inbounds [7 x i32]* %arrayidx15.1.3.6, i32 0, i64 3
  %949 = load i32* %arrayidx16.1.3.6, align 4
  %mul.1.3.6 = mul nsw i32 %948, %949
  %arrayidx19.1.3.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.1.3.6 = getelementptr inbounds [7 x i32]* %arrayidx19.1.3.6, i32 0, i64 3
  %950 = load i32* %arrayidx20.1.3.6, align 4
  %add.1.3.6 = add nsw i32 %950, %mul.1.3.6
  store i32 %add.1.3.6, i32* %arrayidx20.1.3.6, align 4
  br label %for.inc.1.3.6

for.inc.1.3.6:                                    ; preds = %for.inc.332.6
  %arrayidx11.2.3.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.2.3.6 = getelementptr inbounds [7 x i32]* %arrayidx11.2.3.6, i32 0, i64 2
  %951 = load i32* %arrayidx12.2.3.6, align 4
  %arrayidx15.2.3.6 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.3.6 = getelementptr inbounds [7 x i32]* %arrayidx15.2.3.6, i32 0, i64 3
  %952 = load i32* %arrayidx16.2.3.6, align 4
  %mul.2.3.6 = mul nsw i32 %951, %952
  %arrayidx19.2.3.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.2.3.6 = getelementptr inbounds [7 x i32]* %arrayidx19.2.3.6, i32 0, i64 3
  %953 = load i32* %arrayidx20.2.3.6, align 4
  %add.2.3.6 = add nsw i32 %953, %mul.2.3.6
  store i32 %add.2.3.6, i32* %arrayidx20.2.3.6, align 4
  br label %for.inc.2.3.6

for.inc.2.3.6:                                    ; preds = %for.inc.1.3.6
  %arrayidx11.3.3.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.3.3.6 = getelementptr inbounds [7 x i32]* %arrayidx11.3.3.6, i32 0, i64 3
  %954 = load i32* %arrayidx12.3.3.6, align 4
  %arrayidx15.3.3.6 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.3.6 = getelementptr inbounds [7 x i32]* %arrayidx15.3.3.6, i32 0, i64 3
  %955 = load i32* %arrayidx16.3.3.6, align 4
  %mul.3.3.6 = mul nsw i32 %954, %955
  %arrayidx19.3.3.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.3.3.6 = getelementptr inbounds [7 x i32]* %arrayidx19.3.3.6, i32 0, i64 3
  %956 = load i32* %arrayidx20.3.3.6, align 4
  %add.3.3.6 = add nsw i32 %956, %mul.3.3.6
  store i32 %add.3.3.6, i32* %arrayidx20.3.3.6, align 4
  br label %for.inc.3.3.6

for.inc.3.3.6:                                    ; preds = %for.inc.2.3.6
  %arrayidx11.4.3.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.4.3.6 = getelementptr inbounds [7 x i32]* %arrayidx11.4.3.6, i32 0, i64 4
  %957 = load i32* %arrayidx12.4.3.6, align 4
  %arrayidx15.4.3.6 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.3.6 = getelementptr inbounds [7 x i32]* %arrayidx15.4.3.6, i32 0, i64 3
  %958 = load i32* %arrayidx16.4.3.6, align 4
  %mul.4.3.6 = mul nsw i32 %957, %958
  %arrayidx19.4.3.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.4.3.6 = getelementptr inbounds [7 x i32]* %arrayidx19.4.3.6, i32 0, i64 3
  %959 = load i32* %arrayidx20.4.3.6, align 4
  %add.4.3.6 = add nsw i32 %959, %mul.4.3.6
  store i32 %add.4.3.6, i32* %arrayidx20.4.3.6, align 4
  br label %for.inc.4.3.6

for.inc.4.3.6:                                    ; preds = %for.inc.3.3.6
  %arrayidx11.5.3.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.5.3.6 = getelementptr inbounds [7 x i32]* %arrayidx11.5.3.6, i32 0, i64 5
  %960 = load i32* %arrayidx12.5.3.6, align 4
  %arrayidx15.5.3.6 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.3.6 = getelementptr inbounds [7 x i32]* %arrayidx15.5.3.6, i32 0, i64 3
  %961 = load i32* %arrayidx16.5.3.6, align 4
  %mul.5.3.6 = mul nsw i32 %960, %961
  %arrayidx19.5.3.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.5.3.6 = getelementptr inbounds [7 x i32]* %arrayidx19.5.3.6, i32 0, i64 3
  %962 = load i32* %arrayidx20.5.3.6, align 4
  %add.5.3.6 = add nsw i32 %962, %mul.5.3.6
  store i32 %add.5.3.6, i32* %arrayidx20.5.3.6, align 4
  br label %for.inc.5.3.6

for.inc.5.3.6:                                    ; preds = %for.inc.4.3.6
  %arrayidx11.6.3.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.6.3.6 = getelementptr inbounds [7 x i32]* %arrayidx11.6.3.6, i32 0, i64 6
  %963 = load i32* %arrayidx12.6.3.6, align 4
  %arrayidx15.6.3.6 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.3.6 = getelementptr inbounds [7 x i32]* %arrayidx15.6.3.6, i32 0, i64 3
  %964 = load i32* %arrayidx16.6.3.6, align 4
  %mul.6.3.6 = mul nsw i32 %963, %964
  %arrayidx19.6.3.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.6.3.6 = getelementptr inbounds [7 x i32]* %arrayidx19.6.3.6, i32 0, i64 3
  %965 = load i32* %arrayidx20.6.3.6, align 4
  %add.6.3.6 = add nsw i32 %965, %mul.6.3.6
  store i32 %add.6.3.6, i32* %arrayidx20.6.3.6, align 4
  br label %for.inc.6.3.6

for.inc.6.3.6:                                    ; preds = %for.inc.5.3.6
  br label %for.inc21.3.6

for.inc21.3.6:                                    ; preds = %for.inc.6.3.6
  %arrayidx.4.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx5.4.6 = getelementptr inbounds [7 x i32]* %arrayidx.4.6, i32 0, i64 4
  store i32 %init, i32* %arrayidx5.4.6, align 4
  br label %for.body8.4.6

for.body8.4.6:                                    ; preds = %for.inc21.3.6
  %arrayidx11.434.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.435.6 = getelementptr inbounds [7 x i32]* %arrayidx11.434.6, i32 0, i64 0
  %966 = load i32* %arrayidx12.435.6, align 4
  %arrayidx16.436.6 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 4
  %967 = load i32* %arrayidx16.436.6, align 4
  %mul.437.6 = mul nsw i32 %966, %967
  %arrayidx19.439.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.440.6 = getelementptr inbounds [7 x i32]* %arrayidx19.439.6, i32 0, i64 4
  %968 = load i32* %arrayidx20.440.6, align 4
  %add.441.6 = add nsw i32 %968, %mul.437.6
  store i32 %add.441.6, i32* %arrayidx20.440.6, align 4
  br label %for.inc.442.6

for.inc.442.6:                                    ; preds = %for.body8.4.6
  %arrayidx11.1.4.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.1.4.6 = getelementptr inbounds [7 x i32]* %arrayidx11.1.4.6, i32 0, i64 1
  %969 = load i32* %arrayidx12.1.4.6, align 4
  %arrayidx15.1.4.6 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.4.6 = getelementptr inbounds [7 x i32]* %arrayidx15.1.4.6, i32 0, i64 4
  %970 = load i32* %arrayidx16.1.4.6, align 4
  %mul.1.4.6 = mul nsw i32 %969, %970
  %arrayidx19.1.4.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.1.4.6 = getelementptr inbounds [7 x i32]* %arrayidx19.1.4.6, i32 0, i64 4
  %971 = load i32* %arrayidx20.1.4.6, align 4
  %add.1.4.6 = add nsw i32 %971, %mul.1.4.6
  store i32 %add.1.4.6, i32* %arrayidx20.1.4.6, align 4
  br label %for.inc.1.4.6

for.inc.1.4.6:                                    ; preds = %for.inc.442.6
  %arrayidx11.2.4.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.2.4.6 = getelementptr inbounds [7 x i32]* %arrayidx11.2.4.6, i32 0, i64 2
  %972 = load i32* %arrayidx12.2.4.6, align 4
  %arrayidx15.2.4.6 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.4.6 = getelementptr inbounds [7 x i32]* %arrayidx15.2.4.6, i32 0, i64 4
  %973 = load i32* %arrayidx16.2.4.6, align 4
  %mul.2.4.6 = mul nsw i32 %972, %973
  %arrayidx19.2.4.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.2.4.6 = getelementptr inbounds [7 x i32]* %arrayidx19.2.4.6, i32 0, i64 4
  %974 = load i32* %arrayidx20.2.4.6, align 4
  %add.2.4.6 = add nsw i32 %974, %mul.2.4.6
  store i32 %add.2.4.6, i32* %arrayidx20.2.4.6, align 4
  br label %for.inc.2.4.6

for.inc.2.4.6:                                    ; preds = %for.inc.1.4.6
  %arrayidx11.3.4.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.3.4.6 = getelementptr inbounds [7 x i32]* %arrayidx11.3.4.6, i32 0, i64 3
  %975 = load i32* %arrayidx12.3.4.6, align 4
  %arrayidx15.3.4.6 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.4.6 = getelementptr inbounds [7 x i32]* %arrayidx15.3.4.6, i32 0, i64 4
  %976 = load i32* %arrayidx16.3.4.6, align 4
  %mul.3.4.6 = mul nsw i32 %975, %976
  %arrayidx19.3.4.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.3.4.6 = getelementptr inbounds [7 x i32]* %arrayidx19.3.4.6, i32 0, i64 4
  %977 = load i32* %arrayidx20.3.4.6, align 4
  %add.3.4.6 = add nsw i32 %977, %mul.3.4.6
  store i32 %add.3.4.6, i32* %arrayidx20.3.4.6, align 4
  br label %for.inc.3.4.6

for.inc.3.4.6:                                    ; preds = %for.inc.2.4.6
  %arrayidx11.4.4.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.4.4.6 = getelementptr inbounds [7 x i32]* %arrayidx11.4.4.6, i32 0, i64 4
  %978 = load i32* %arrayidx12.4.4.6, align 4
  %arrayidx15.4.4.6 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.4.6 = getelementptr inbounds [7 x i32]* %arrayidx15.4.4.6, i32 0, i64 4
  %979 = load i32* %arrayidx16.4.4.6, align 4
  %mul.4.4.6 = mul nsw i32 %978, %979
  %arrayidx19.4.4.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.4.4.6 = getelementptr inbounds [7 x i32]* %arrayidx19.4.4.6, i32 0, i64 4
  %980 = load i32* %arrayidx20.4.4.6, align 4
  %add.4.4.6 = add nsw i32 %980, %mul.4.4.6
  store i32 %add.4.4.6, i32* %arrayidx20.4.4.6, align 4
  br label %for.inc.4.4.6

for.inc.4.4.6:                                    ; preds = %for.inc.3.4.6
  %arrayidx11.5.4.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.5.4.6 = getelementptr inbounds [7 x i32]* %arrayidx11.5.4.6, i32 0, i64 5
  %981 = load i32* %arrayidx12.5.4.6, align 4
  %arrayidx15.5.4.6 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.4.6 = getelementptr inbounds [7 x i32]* %arrayidx15.5.4.6, i32 0, i64 4
  %982 = load i32* %arrayidx16.5.4.6, align 4
  %mul.5.4.6 = mul nsw i32 %981, %982
  %arrayidx19.5.4.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.5.4.6 = getelementptr inbounds [7 x i32]* %arrayidx19.5.4.6, i32 0, i64 4
  %983 = load i32* %arrayidx20.5.4.6, align 4
  %add.5.4.6 = add nsw i32 %983, %mul.5.4.6
  store i32 %add.5.4.6, i32* %arrayidx20.5.4.6, align 4
  br label %for.inc.5.4.6

for.inc.5.4.6:                                    ; preds = %for.inc.4.4.6
  %arrayidx11.6.4.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.6.4.6 = getelementptr inbounds [7 x i32]* %arrayidx11.6.4.6, i32 0, i64 6
  %984 = load i32* %arrayidx12.6.4.6, align 4
  %arrayidx15.6.4.6 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.4.6 = getelementptr inbounds [7 x i32]* %arrayidx15.6.4.6, i32 0, i64 4
  %985 = load i32* %arrayidx16.6.4.6, align 4
  %mul.6.4.6 = mul nsw i32 %984, %985
  %arrayidx19.6.4.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.6.4.6 = getelementptr inbounds [7 x i32]* %arrayidx19.6.4.6, i32 0, i64 4
  %986 = load i32* %arrayidx20.6.4.6, align 4
  %add.6.4.6 = add nsw i32 %986, %mul.6.4.6
  store i32 %add.6.4.6, i32* %arrayidx20.6.4.6, align 4
  br label %for.inc.6.4.6

for.inc.6.4.6:                                    ; preds = %for.inc.5.4.6
  br label %for.inc21.4.6

for.inc21.4.6:                                    ; preds = %for.inc.6.4.6
  %arrayidx.5.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx5.5.6 = getelementptr inbounds [7 x i32]* %arrayidx.5.6, i32 0, i64 5
  store i32 %init, i32* %arrayidx5.5.6, align 4
  br label %for.body8.5.6

for.body8.5.6:                                    ; preds = %for.inc21.4.6
  %arrayidx11.544.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.545.6 = getelementptr inbounds [7 x i32]* %arrayidx11.544.6, i32 0, i64 0
  %987 = load i32* %arrayidx12.545.6, align 4
  %arrayidx16.546.6 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 5
  %988 = load i32* %arrayidx16.546.6, align 4
  %mul.547.6 = mul nsw i32 %987, %988
  %arrayidx19.549.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.550.6 = getelementptr inbounds [7 x i32]* %arrayidx19.549.6, i32 0, i64 5
  %989 = load i32* %arrayidx20.550.6, align 4
  %add.551.6 = add nsw i32 %989, %mul.547.6
  store i32 %add.551.6, i32* %arrayidx20.550.6, align 4
  br label %for.inc.552.6

for.inc.552.6:                                    ; preds = %for.body8.5.6
  %arrayidx11.1.5.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.1.5.6 = getelementptr inbounds [7 x i32]* %arrayidx11.1.5.6, i32 0, i64 1
  %990 = load i32* %arrayidx12.1.5.6, align 4
  %arrayidx15.1.5.6 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.5.6 = getelementptr inbounds [7 x i32]* %arrayidx15.1.5.6, i32 0, i64 5
  %991 = load i32* %arrayidx16.1.5.6, align 4
  %mul.1.5.6 = mul nsw i32 %990, %991
  %arrayidx19.1.5.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.1.5.6 = getelementptr inbounds [7 x i32]* %arrayidx19.1.5.6, i32 0, i64 5
  %992 = load i32* %arrayidx20.1.5.6, align 4
  %add.1.5.6 = add nsw i32 %992, %mul.1.5.6
  store i32 %add.1.5.6, i32* %arrayidx20.1.5.6, align 4
  br label %for.inc.1.5.6

for.inc.1.5.6:                                    ; preds = %for.inc.552.6
  %arrayidx11.2.5.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.2.5.6 = getelementptr inbounds [7 x i32]* %arrayidx11.2.5.6, i32 0, i64 2
  %993 = load i32* %arrayidx12.2.5.6, align 4
  %arrayidx15.2.5.6 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.5.6 = getelementptr inbounds [7 x i32]* %arrayidx15.2.5.6, i32 0, i64 5
  %994 = load i32* %arrayidx16.2.5.6, align 4
  %mul.2.5.6 = mul nsw i32 %993, %994
  %arrayidx19.2.5.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.2.5.6 = getelementptr inbounds [7 x i32]* %arrayidx19.2.5.6, i32 0, i64 5
  %995 = load i32* %arrayidx20.2.5.6, align 4
  %add.2.5.6 = add nsw i32 %995, %mul.2.5.6
  store i32 %add.2.5.6, i32* %arrayidx20.2.5.6, align 4
  br label %for.inc.2.5.6

for.inc.2.5.6:                                    ; preds = %for.inc.1.5.6
  %arrayidx11.3.5.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.3.5.6 = getelementptr inbounds [7 x i32]* %arrayidx11.3.5.6, i32 0, i64 3
  %996 = load i32* %arrayidx12.3.5.6, align 4
  %arrayidx15.3.5.6 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.5.6 = getelementptr inbounds [7 x i32]* %arrayidx15.3.5.6, i32 0, i64 5
  %997 = load i32* %arrayidx16.3.5.6, align 4
  %mul.3.5.6 = mul nsw i32 %996, %997
  %arrayidx19.3.5.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.3.5.6 = getelementptr inbounds [7 x i32]* %arrayidx19.3.5.6, i32 0, i64 5
  %998 = load i32* %arrayidx20.3.5.6, align 4
  %add.3.5.6 = add nsw i32 %998, %mul.3.5.6
  store i32 %add.3.5.6, i32* %arrayidx20.3.5.6, align 4
  br label %for.inc.3.5.6

for.inc.3.5.6:                                    ; preds = %for.inc.2.5.6
  %arrayidx11.4.5.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.4.5.6 = getelementptr inbounds [7 x i32]* %arrayidx11.4.5.6, i32 0, i64 4
  %999 = load i32* %arrayidx12.4.5.6, align 4
  %arrayidx15.4.5.6 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.5.6 = getelementptr inbounds [7 x i32]* %arrayidx15.4.5.6, i32 0, i64 5
  %1000 = load i32* %arrayidx16.4.5.6, align 4
  %mul.4.5.6 = mul nsw i32 %999, %1000
  %arrayidx19.4.5.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.4.5.6 = getelementptr inbounds [7 x i32]* %arrayidx19.4.5.6, i32 0, i64 5
  %1001 = load i32* %arrayidx20.4.5.6, align 4
  %add.4.5.6 = add nsw i32 %1001, %mul.4.5.6
  store i32 %add.4.5.6, i32* %arrayidx20.4.5.6, align 4
  br label %for.inc.4.5.6

for.inc.4.5.6:                                    ; preds = %for.inc.3.5.6
  %arrayidx11.5.5.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.5.5.6 = getelementptr inbounds [7 x i32]* %arrayidx11.5.5.6, i32 0, i64 5
  %1002 = load i32* %arrayidx12.5.5.6, align 4
  %arrayidx15.5.5.6 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.5.6 = getelementptr inbounds [7 x i32]* %arrayidx15.5.5.6, i32 0, i64 5
  %1003 = load i32* %arrayidx16.5.5.6, align 4
  %mul.5.5.6 = mul nsw i32 %1002, %1003
  %arrayidx19.5.5.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.5.5.6 = getelementptr inbounds [7 x i32]* %arrayidx19.5.5.6, i32 0, i64 5
  %1004 = load i32* %arrayidx20.5.5.6, align 4
  %add.5.5.6 = add nsw i32 %1004, %mul.5.5.6
  store i32 %add.5.5.6, i32* %arrayidx20.5.5.6, align 4
  br label %for.inc.5.5.6

for.inc.5.5.6:                                    ; preds = %for.inc.4.5.6
  %arrayidx11.6.5.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.6.5.6 = getelementptr inbounds [7 x i32]* %arrayidx11.6.5.6, i32 0, i64 6
  %1005 = load i32* %arrayidx12.6.5.6, align 4
  %arrayidx15.6.5.6 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.5.6 = getelementptr inbounds [7 x i32]* %arrayidx15.6.5.6, i32 0, i64 5
  %1006 = load i32* %arrayidx16.6.5.6, align 4
  %mul.6.5.6 = mul nsw i32 %1005, %1006
  %arrayidx19.6.5.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.6.5.6 = getelementptr inbounds [7 x i32]* %arrayidx19.6.5.6, i32 0, i64 5
  %1007 = load i32* %arrayidx20.6.5.6, align 4
  %add.6.5.6 = add nsw i32 %1007, %mul.6.5.6
  store i32 %add.6.5.6, i32* %arrayidx20.6.5.6, align 4
  br label %for.inc.6.5.6

for.inc.6.5.6:                                    ; preds = %for.inc.5.5.6
  br label %for.inc21.5.6

for.inc21.5.6:                                    ; preds = %for.inc.6.5.6
  %arrayidx.6.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx5.6.6 = getelementptr inbounds [7 x i32]* %arrayidx.6.6, i32 0, i64 6
  store i32 %init, i32* %arrayidx5.6.6, align 4
  br label %for.body8.6.6

for.body8.6.6:                                    ; preds = %for.inc21.5.6
  %arrayidx11.654.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.655.6 = getelementptr inbounds [7 x i32]* %arrayidx11.654.6, i32 0, i64 0
  %1008 = load i32* %arrayidx12.655.6, align 4
  %arrayidx16.656.6 = getelementptr inbounds [7 x i32]* %b, i32 0, i64 6
  %1009 = load i32* %arrayidx16.656.6, align 4
  %mul.657.6 = mul nsw i32 %1008, %1009
  %arrayidx19.659.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.660.6 = getelementptr inbounds [7 x i32]* %arrayidx19.659.6, i32 0, i64 6
  %1010 = load i32* %arrayidx20.660.6, align 4
  %add.661.6 = add nsw i32 %1010, %mul.657.6
  store i32 %add.661.6, i32* %arrayidx20.660.6, align 4
  br label %for.inc.662.6

for.inc.662.6:                                    ; preds = %for.body8.6.6
  %arrayidx11.1.6.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.1.6.6 = getelementptr inbounds [7 x i32]* %arrayidx11.1.6.6, i32 0, i64 1
  %1011 = load i32* %arrayidx12.1.6.6, align 4
  %arrayidx15.1.6.6 = getelementptr inbounds [7 x i32]* %b, i64 1
  %arrayidx16.1.6.6 = getelementptr inbounds [7 x i32]* %arrayidx15.1.6.6, i32 0, i64 6
  %1012 = load i32* %arrayidx16.1.6.6, align 4
  %mul.1.6.6 = mul nsw i32 %1011, %1012
  %arrayidx19.1.6.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.1.6.6 = getelementptr inbounds [7 x i32]* %arrayidx19.1.6.6, i32 0, i64 6
  %1013 = load i32* %arrayidx20.1.6.6, align 4
  %add.1.6.6 = add nsw i32 %1013, %mul.1.6.6
  store i32 %add.1.6.6, i32* %arrayidx20.1.6.6, align 4
  br label %for.inc.1.6.6

for.inc.1.6.6:                                    ; preds = %for.inc.662.6
  %arrayidx11.2.6.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.2.6.6 = getelementptr inbounds [7 x i32]* %arrayidx11.2.6.6, i32 0, i64 2
  %1014 = load i32* %arrayidx12.2.6.6, align 4
  %arrayidx15.2.6.6 = getelementptr inbounds [7 x i32]* %b, i64 2
  %arrayidx16.2.6.6 = getelementptr inbounds [7 x i32]* %arrayidx15.2.6.6, i32 0, i64 6
  %1015 = load i32* %arrayidx16.2.6.6, align 4
  %mul.2.6.6 = mul nsw i32 %1014, %1015
  %arrayidx19.2.6.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.2.6.6 = getelementptr inbounds [7 x i32]* %arrayidx19.2.6.6, i32 0, i64 6
  %1016 = load i32* %arrayidx20.2.6.6, align 4
  %add.2.6.6 = add nsw i32 %1016, %mul.2.6.6
  store i32 %add.2.6.6, i32* %arrayidx20.2.6.6, align 4
  br label %for.inc.2.6.6

for.inc.2.6.6:                                    ; preds = %for.inc.1.6.6
  %arrayidx11.3.6.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.3.6.6 = getelementptr inbounds [7 x i32]* %arrayidx11.3.6.6, i32 0, i64 3
  %1017 = load i32* %arrayidx12.3.6.6, align 4
  %arrayidx15.3.6.6 = getelementptr inbounds [7 x i32]* %b, i64 3
  %arrayidx16.3.6.6 = getelementptr inbounds [7 x i32]* %arrayidx15.3.6.6, i32 0, i64 6
  %1018 = load i32* %arrayidx16.3.6.6, align 4
  %mul.3.6.6 = mul nsw i32 %1017, %1018
  %arrayidx19.3.6.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.3.6.6 = getelementptr inbounds [7 x i32]* %arrayidx19.3.6.6, i32 0, i64 6
  %1019 = load i32* %arrayidx20.3.6.6, align 4
  %add.3.6.6 = add nsw i32 %1019, %mul.3.6.6
  store i32 %add.3.6.6, i32* %arrayidx20.3.6.6, align 4
  br label %for.inc.3.6.6

for.inc.3.6.6:                                    ; preds = %for.inc.2.6.6
  %arrayidx11.4.6.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.4.6.6 = getelementptr inbounds [7 x i32]* %arrayidx11.4.6.6, i32 0, i64 4
  %1020 = load i32* %arrayidx12.4.6.6, align 4
  %arrayidx15.4.6.6 = getelementptr inbounds [7 x i32]* %b, i64 4
  %arrayidx16.4.6.6 = getelementptr inbounds [7 x i32]* %arrayidx15.4.6.6, i32 0, i64 6
  %1021 = load i32* %arrayidx16.4.6.6, align 4
  %mul.4.6.6 = mul nsw i32 %1020, %1021
  %arrayidx19.4.6.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.4.6.6 = getelementptr inbounds [7 x i32]* %arrayidx19.4.6.6, i32 0, i64 6
  %1022 = load i32* %arrayidx20.4.6.6, align 4
  %add.4.6.6 = add nsw i32 %1022, %mul.4.6.6
  store i32 %add.4.6.6, i32* %arrayidx20.4.6.6, align 4
  br label %for.inc.4.6.6

for.inc.4.6.6:                                    ; preds = %for.inc.3.6.6
  %arrayidx11.5.6.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.5.6.6 = getelementptr inbounds [7 x i32]* %arrayidx11.5.6.6, i32 0, i64 5
  %1023 = load i32* %arrayidx12.5.6.6, align 4
  %arrayidx15.5.6.6 = getelementptr inbounds [7 x i32]* %b, i64 5
  %arrayidx16.5.6.6 = getelementptr inbounds [7 x i32]* %arrayidx15.5.6.6, i32 0, i64 6
  %1024 = load i32* %arrayidx16.5.6.6, align 4
  %mul.5.6.6 = mul nsw i32 %1023, %1024
  %arrayidx19.5.6.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.5.6.6 = getelementptr inbounds [7 x i32]* %arrayidx19.5.6.6, i32 0, i64 6
  %1025 = load i32* %arrayidx20.5.6.6, align 4
  %add.5.6.6 = add nsw i32 %1025, %mul.5.6.6
  store i32 %add.5.6.6, i32* %arrayidx20.5.6.6, align 4
  br label %for.inc.5.6.6

for.inc.5.6.6:                                    ; preds = %for.inc.4.6.6
  %arrayidx11.6.6.6 = getelementptr inbounds [7 x i32]* %a, i64 6
  %arrayidx12.6.6.6 = getelementptr inbounds [7 x i32]* %arrayidx11.6.6.6, i32 0, i64 6
  %1026 = load i32* %arrayidx12.6.6.6, align 4
  %arrayidx15.6.6.6 = getelementptr inbounds [7 x i32]* %b, i64 6
  %arrayidx16.6.6.6 = getelementptr inbounds [7 x i32]* %arrayidx15.6.6.6, i32 0, i64 6
  %1027 = load i32* %arrayidx16.6.6.6, align 4
  %mul.6.6.6 = mul nsw i32 %1026, %1027
  %arrayidx19.6.6.6 = getelementptr inbounds [7 x i32]* %c, i64 6
  %arrayidx20.6.6.6 = getelementptr inbounds [7 x i32]* %arrayidx19.6.6.6, i32 0, i64 6
  %1028 = load i32* %arrayidx20.6.6.6, align 4
  %add.6.6.6 = add nsw i32 %1028, %mul.6.6.6
  store i32 %add.6.6.6, i32* %arrayidx20.6.6.6, align 4
  br label %for.inc.6.6.6

for.inc.6.6.6:                                    ; preds = %for.inc.5.6.6
  br label %for.inc21.6.6

for.inc21.6.6:                                    ; preds = %for.inc.6.6.6
  br label %for.inc24.6

for.inc24.6:                                      ; preds = %for.inc21.6.6
  ret void
}
