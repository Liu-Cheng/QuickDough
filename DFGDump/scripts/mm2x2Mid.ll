; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [2 x [2 x i32]] zeroinitializer, align 16

define void @_Z5mm2x2PA2_iS0_iS0_([2 x i32]* %a, [2 x i32]* %b, i32 %init, [2 x i32]* %c) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [2 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds [2 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [2 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [2 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %arrayidx12.1 = getelementptr inbounds [2 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [2 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [2 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [2 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  br label %for.inc.1

for.inc21:                                        ; preds = %for.inc.1
  %arrayidx5.1 = getelementptr inbounds [2 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  br label %for.body8.1

for.inc24:                                        ; preds = %for.inc21.1
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  br label %for.inc21

for.body8.1:                                      ; preds = %for.inc21
  %arrayidx12.15 = getelementptr inbounds [2 x i32]* %a, i32 0, i64 0
  %6 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [2 x i32]* %b, i32 0, i64 1
  %7 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %6, %7
  %arrayidx20.110 = getelementptr inbounds [2 x i32]* %c, i32 0, i64 1
  %8 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %8, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body8.1
  %arrayidx12.1.1 = getelementptr inbounds [2 x i32]* %a, i32 0, i64 1
  %9 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [2 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [2 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %10 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %9, %10
  %arrayidx20.1.1 = getelementptr inbounds [2 x i32]* %c, i32 0, i64 1
  %11 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %11, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.112
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.inc.1.1
  br label %for.inc24

for.body3.1:                                      ; preds = %for.inc24
  %arrayidx.114 = getelementptr inbounds [2 x i32]* %c, i64 1
  %arrayidx5.115 = getelementptr inbounds [2 x i32]* %arrayidx.114, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.115, align 4
  br label %for.body8.123

for.body8.123:                                    ; preds = %for.body3.1
  %arrayidx11.116 = getelementptr inbounds [2 x i32]* %a, i64 1
  %arrayidx12.117 = getelementptr inbounds [2 x i32]* %arrayidx11.116, i32 0, i64 0
  %12 = load i32* %arrayidx12.117, align 4
  %arrayidx16.118 = getelementptr inbounds [2 x i32]* %b, i32 0, i64 0
  %13 = load i32* %arrayidx16.118, align 4
  %mul.119 = mul nsw i32 %12, %13
  %arrayidx19.120 = getelementptr inbounds [2 x i32]* %c, i64 1
  %arrayidx20.121 = getelementptr inbounds [2 x i32]* %arrayidx19.120, i32 0, i64 0
  %14 = load i32* %arrayidx20.121, align 4
  %add.122 = add nsw i32 %14, %mul.119
  store i32 %add.122, i32* %arrayidx20.121, align 4
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body8.123
  %arrayidx11.1.124 = getelementptr inbounds [2 x i32]* %a, i64 1
  %arrayidx12.1.125 = getelementptr inbounds [2 x i32]* %arrayidx11.1.124, i32 0, i64 1
  %15 = load i32* %arrayidx12.1.125, align 4
  %arrayidx15.1.126 = getelementptr inbounds [2 x i32]* %b, i64 1
  %arrayidx16.1.127 = getelementptr inbounds [2 x i32]* %arrayidx15.1.126, i32 0, i64 0
  %16 = load i32* %arrayidx16.1.127, align 4
  %mul.1.128 = mul nsw i32 %15, %16
  %arrayidx19.1.129 = getelementptr inbounds [2 x i32]* %c, i64 1
  %arrayidx20.1.130 = getelementptr inbounds [2 x i32]* %arrayidx19.1.129, i32 0, i64 0
  %17 = load i32* %arrayidx20.1.130, align 4
  %add.1.131 = add nsw i32 %17, %mul.1.128
  store i32 %add.1.131, i32* %arrayidx20.1.130, align 4
  br label %for.inc.1.133

for.inc.1.133:                                    ; preds = %for.inc.132
  br label %for.inc21.134

for.inc21.134:                                    ; preds = %for.inc.1.133
  %arrayidx.1.1 = getelementptr inbounds [2 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [2 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  br label %for.body8.1.1

for.body8.1.1:                                    ; preds = %for.inc21.134
  %arrayidx11.14.1 = getelementptr inbounds [2 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [2 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %18 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [2 x i32]* %b, i32 0, i64 1
  %19 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %18, %19
  %arrayidx19.19.1 = getelementptr inbounds [2 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [2 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %20 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %20, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  br label %for.inc.112.1

for.inc.112.1:                                    ; preds = %for.body8.1.1
  %arrayidx11.1.1.1 = getelementptr inbounds [2 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [2 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %21 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [2 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [2 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %22 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %21, %22
  %arrayidx19.1.1.1 = getelementptr inbounds [2 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [2 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %23 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %23, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  br label %for.inc.1.1.1

for.inc.1.1.1:                                    ; preds = %for.inc.112.1
  br label %for.inc21.1.1

for.inc21.1.1:                                    ; preds = %for.inc.1.1.1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.1.1
  ret void
}
