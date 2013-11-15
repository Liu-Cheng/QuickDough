; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [3 x [3 x i32]] zeroinitializer, align 16

define void @_Z5mm3x3PA3_iS0_iS0_([3 x i32]* %a, [3 x i32]* %b, i32 %init, [3 x i32]* %c) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %arrayidx12.1 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [3 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  br label %for.inc.1

for.inc21:                                        ; preds = %for.inc.2
  %arrayidx5.1 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  br label %for.body8.1

for.inc24:                                        ; preds = %for.inc21.2
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx12.2 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 2
  %6 = load i32* %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2 = getelementptr inbounds [3 x i32]* %arrayidx15.2, i32 0, i64 0
  %7 = load i32* %arrayidx16.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %arrayidx20.2 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 0
  %8 = load i32* %arrayidx20.2, align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* %arrayidx20.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  br label %for.inc21

for.body8.1:                                      ; preds = %for.inc21
  %arrayidx12.15 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 0
  %9 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 1
  %10 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %9, %10
  %arrayidx20.110 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 1
  %11 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %11, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body8.1
  %arrayidx12.1.1 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 1
  %12 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [3 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %13 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %12, %13
  %arrayidx20.1.1 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 1
  %14 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %14, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.112
  %arrayidx12.2.1 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 2
  %15 = load i32* %arrayidx12.2.1, align 4
  %arrayidx15.2.1 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2.1 = getelementptr inbounds [3 x i32]* %arrayidx15.2.1, i32 0, i64 1
  %16 = load i32* %arrayidx16.2.1, align 4
  %mul.2.1 = mul nsw i32 %15, %16
  %arrayidx20.2.1 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 1
  %17 = load i32* %arrayidx20.2.1, align 4
  %add.2.1 = add nsw i32 %17, %mul.2.1
  store i32 %add.2.1, i32* %arrayidx20.2.1, align 4
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.inc.2.1
  %arrayidx5.2 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc21.1
  %arrayidx12.215 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 0
  %18 = load i32* %arrayidx12.215, align 4
  %arrayidx16.216 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 2
  %19 = load i32* %arrayidx16.216, align 4
  %mul.217 = mul nsw i32 %18, %19
  %arrayidx20.220 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 2
  %20 = load i32* %arrayidx20.220, align 4
  %add.221 = add nsw i32 %20, %mul.217
  store i32 %add.221, i32* %arrayidx20.220, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body8.2
  %arrayidx12.1.2 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 1
  %21 = load i32* %arrayidx12.1.2, align 4
  %arrayidx15.1.2 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1.2 = getelementptr inbounds [3 x i32]* %arrayidx15.1.2, i32 0, i64 2
  %22 = load i32* %arrayidx16.1.2, align 4
  %mul.1.2 = mul nsw i32 %21, %22
  %arrayidx20.1.2 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 2
  %23 = load i32* %arrayidx20.1.2, align 4
  %add.1.2 = add nsw i32 %23, %mul.1.2
  store i32 %add.1.2, i32* %arrayidx20.1.2, align 4
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.222
  %arrayidx12.2.2 = getelementptr inbounds [3 x i32]* %a, i32 0, i64 2
  %24 = load i32* %arrayidx12.2.2, align 4
  %arrayidx15.2.2 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2.2 = getelementptr inbounds [3 x i32]* %arrayidx15.2.2, i32 0, i64 2
  %25 = load i32* %arrayidx16.2.2, align 4
  %mul.2.2 = mul nsw i32 %24, %25
  %arrayidx20.2.2 = getelementptr inbounds [3 x i32]* %c, i32 0, i64 2
  %26 = load i32* %arrayidx20.2.2, align 4
  %add.2.2 = add nsw i32 %26, %mul.2.2
  store i32 %add.2.2, i32* %arrayidx20.2.2, align 4
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %for.inc.2.2
  br label %for.inc24

for.body3.1:                                      ; preds = %for.inc24
  %arrayidx.124 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx5.125 = getelementptr inbounds [3 x i32]* %arrayidx.124, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.125, align 4
  br label %for.body8.133

for.body8.133:                                    ; preds = %for.body3.1
  %arrayidx11.126 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.127 = getelementptr inbounds [3 x i32]* %arrayidx11.126, i32 0, i64 0
  %27 = load i32* %arrayidx12.127, align 4
  %arrayidx16.128 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 0
  %28 = load i32* %arrayidx16.128, align 4
  %mul.129 = mul nsw i32 %27, %28
  %arrayidx19.130 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.131 = getelementptr inbounds [3 x i32]* %arrayidx19.130, i32 0, i64 0
  %29 = load i32* %arrayidx20.131, align 4
  %add.132 = add nsw i32 %29, %mul.129
  store i32 %add.132, i32* %arrayidx20.131, align 4
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.body8.133
  %arrayidx11.1.134 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.1.135 = getelementptr inbounds [3 x i32]* %arrayidx11.1.134, i32 0, i64 1
  %30 = load i32* %arrayidx12.1.135, align 4
  %arrayidx15.1.136 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1.137 = getelementptr inbounds [3 x i32]* %arrayidx15.1.136, i32 0, i64 0
  %31 = load i32* %arrayidx16.1.137, align 4
  %mul.1.138 = mul nsw i32 %30, %31
  %arrayidx19.1.139 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.1.140 = getelementptr inbounds [3 x i32]* %arrayidx19.1.139, i32 0, i64 0
  %32 = load i32* %arrayidx20.1.140, align 4
  %add.1.141 = add nsw i32 %32, %mul.1.138
  store i32 %add.1.141, i32* %arrayidx20.1.140, align 4
  br label %for.inc.1.151

for.inc.1.151:                                    ; preds = %for.inc.142
  %arrayidx11.2.143 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.2.144 = getelementptr inbounds [3 x i32]* %arrayidx11.2.143, i32 0, i64 2
  %33 = load i32* %arrayidx12.2.144, align 4
  %arrayidx15.2.145 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2.146 = getelementptr inbounds [3 x i32]* %arrayidx15.2.145, i32 0, i64 0
  %34 = load i32* %arrayidx16.2.146, align 4
  %mul.2.147 = mul nsw i32 %33, %34
  %arrayidx19.2.148 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.2.149 = getelementptr inbounds [3 x i32]* %arrayidx19.2.148, i32 0, i64 0
  %35 = load i32* %arrayidx20.2.149, align 4
  %add.2.150 = add nsw i32 %35, %mul.2.147
  store i32 %add.2.150, i32* %arrayidx20.2.149, align 4
  br label %for.inc.2.152

for.inc.2.152:                                    ; preds = %for.inc.1.151
  br label %for.inc21.153

for.inc21.153:                                    ; preds = %for.inc.2.152
  %arrayidx.1.1 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [3 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  br label %for.body8.1.1

for.body8.1.1:                                    ; preds = %for.inc21.153
  %arrayidx11.14.1 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [3 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %36 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 1
  %37 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %36, %37
  %arrayidx19.19.1 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [3 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %38 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %38, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  br label %for.inc.112.1

for.inc.112.1:                                    ; preds = %for.body8.1.1
  %arrayidx11.1.1.1 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [3 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %39 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [3 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %40 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %39, %40
  %arrayidx19.1.1.1 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [3 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %41 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %41, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  br label %for.inc.1.1.1

for.inc.1.1.1:                                    ; preds = %for.inc.112.1
  %arrayidx11.2.1.1 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.2.1.1 = getelementptr inbounds [3 x i32]* %arrayidx11.2.1.1, i32 0, i64 2
  %42 = load i32* %arrayidx12.2.1.1, align 4
  %arrayidx15.2.1.1 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2.1.1 = getelementptr inbounds [3 x i32]* %arrayidx15.2.1.1, i32 0, i64 1
  %43 = load i32* %arrayidx16.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %42, %43
  %arrayidx19.2.1.1 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.2.1.1 = getelementptr inbounds [3 x i32]* %arrayidx19.2.1.1, i32 0, i64 1
  %44 = load i32* %arrayidx20.2.1.1, align 4
  %add.2.1.1 = add nsw i32 %44, %mul.2.1.1
  store i32 %add.2.1.1, i32* %arrayidx20.2.1.1, align 4
  br label %for.inc.2.1.1

for.inc.2.1.1:                                    ; preds = %for.inc.1.1.1
  br label %for.inc21.1.1

for.inc21.1.1:                                    ; preds = %for.inc.2.1.1
  %arrayidx.2.1 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [3 x i32]* %arrayidx.2.1, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.1, align 4
  br label %for.body8.2.1

for.body8.2.1:                                    ; preds = %for.inc21.1.1
  %arrayidx11.214.1 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.215.1 = getelementptr inbounds [3 x i32]* %arrayidx11.214.1, i32 0, i64 0
  %45 = load i32* %arrayidx12.215.1, align 4
  %arrayidx16.216.1 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 2
  %46 = load i32* %arrayidx16.216.1, align 4
  %mul.217.1 = mul nsw i32 %45, %46
  %arrayidx19.219.1 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.220.1 = getelementptr inbounds [3 x i32]* %arrayidx19.219.1, i32 0, i64 2
  %47 = load i32* %arrayidx20.220.1, align 4
  %add.221.1 = add nsw i32 %47, %mul.217.1
  store i32 %add.221.1, i32* %arrayidx20.220.1, align 4
  br label %for.inc.222.1

for.inc.222.1:                                    ; preds = %for.body8.2.1
  %arrayidx11.1.2.1 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.1.2.1 = getelementptr inbounds [3 x i32]* %arrayidx11.1.2.1, i32 0, i64 1
  %48 = load i32* %arrayidx12.1.2.1, align 4
  %arrayidx15.1.2.1 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1.2.1 = getelementptr inbounds [3 x i32]* %arrayidx15.1.2.1, i32 0, i64 2
  %49 = load i32* %arrayidx16.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %48, %49
  %arrayidx19.1.2.1 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.1.2.1 = getelementptr inbounds [3 x i32]* %arrayidx19.1.2.1, i32 0, i64 2
  %50 = load i32* %arrayidx20.1.2.1, align 4
  %add.1.2.1 = add nsw i32 %50, %mul.1.2.1
  store i32 %add.1.2.1, i32* %arrayidx20.1.2.1, align 4
  br label %for.inc.1.2.1

for.inc.1.2.1:                                    ; preds = %for.inc.222.1
  %arrayidx11.2.2.1 = getelementptr inbounds [3 x i32]* %a, i64 1
  %arrayidx12.2.2.1 = getelementptr inbounds [3 x i32]* %arrayidx11.2.2.1, i32 0, i64 2
  %51 = load i32* %arrayidx12.2.2.1, align 4
  %arrayidx15.2.2.1 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2.2.1 = getelementptr inbounds [3 x i32]* %arrayidx15.2.2.1, i32 0, i64 2
  %52 = load i32* %arrayidx16.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %51, %52
  %arrayidx19.2.2.1 = getelementptr inbounds [3 x i32]* %c, i64 1
  %arrayidx20.2.2.1 = getelementptr inbounds [3 x i32]* %arrayidx19.2.2.1, i32 0, i64 2
  %53 = load i32* %arrayidx20.2.2.1, align 4
  %add.2.2.1 = add nsw i32 %53, %mul.2.2.1
  store i32 %add.2.2.1, i32* %arrayidx20.2.2.1, align 4
  br label %for.inc.2.2.1

for.inc.2.2.1:                                    ; preds = %for.inc.1.2.1
  br label %for.inc21.2.1

for.inc21.2.1:                                    ; preds = %for.inc.2.2.1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.2.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc24.1
  %arrayidx.254 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx5.255 = getelementptr inbounds [3 x i32]* %arrayidx.254, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.255, align 4
  br label %for.body8.263

for.body8.263:                                    ; preds = %for.body3.2
  %arrayidx11.256 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.257 = getelementptr inbounds [3 x i32]* %arrayidx11.256, i32 0, i64 0
  %54 = load i32* %arrayidx12.257, align 4
  %arrayidx16.258 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 0
  %55 = load i32* %arrayidx16.258, align 4
  %mul.259 = mul nsw i32 %54, %55
  %arrayidx19.260 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.261 = getelementptr inbounds [3 x i32]* %arrayidx19.260, i32 0, i64 0
  %56 = load i32* %arrayidx20.261, align 4
  %add.262 = add nsw i32 %56, %mul.259
  store i32 %add.262, i32* %arrayidx20.261, align 4
  br label %for.inc.272

for.inc.272:                                      ; preds = %for.body8.263
  %arrayidx11.1.264 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.1.265 = getelementptr inbounds [3 x i32]* %arrayidx11.1.264, i32 0, i64 1
  %57 = load i32* %arrayidx12.1.265, align 4
  %arrayidx15.1.266 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1.267 = getelementptr inbounds [3 x i32]* %arrayidx15.1.266, i32 0, i64 0
  %58 = load i32* %arrayidx16.1.267, align 4
  %mul.1.268 = mul nsw i32 %57, %58
  %arrayidx19.1.269 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.1.270 = getelementptr inbounds [3 x i32]* %arrayidx19.1.269, i32 0, i64 0
  %59 = load i32* %arrayidx20.1.270, align 4
  %add.1.271 = add nsw i32 %59, %mul.1.268
  store i32 %add.1.271, i32* %arrayidx20.1.270, align 4
  br label %for.inc.1.281

for.inc.1.281:                                    ; preds = %for.inc.272
  %arrayidx11.2.273 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.2.274 = getelementptr inbounds [3 x i32]* %arrayidx11.2.273, i32 0, i64 2
  %60 = load i32* %arrayidx12.2.274, align 4
  %arrayidx15.2.275 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2.276 = getelementptr inbounds [3 x i32]* %arrayidx15.2.275, i32 0, i64 0
  %61 = load i32* %arrayidx16.2.276, align 4
  %mul.2.277 = mul nsw i32 %60, %61
  %arrayidx19.2.278 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.2.279 = getelementptr inbounds [3 x i32]* %arrayidx19.2.278, i32 0, i64 0
  %62 = load i32* %arrayidx20.2.279, align 4
  %add.2.280 = add nsw i32 %62, %mul.2.277
  store i32 %add.2.280, i32* %arrayidx20.2.279, align 4
  br label %for.inc.2.282

for.inc.2.282:                                    ; preds = %for.inc.1.281
  br label %for.inc21.283

for.inc21.283:                                    ; preds = %for.inc.2.282
  %arrayidx.1.2 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [3 x i32]* %arrayidx.1.2, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.2, align 4
  br label %for.body8.1.2

for.body8.1.2:                                    ; preds = %for.inc21.283
  %arrayidx11.14.2 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.15.2 = getelementptr inbounds [3 x i32]* %arrayidx11.14.2, i32 0, i64 0
  %63 = load i32* %arrayidx12.15.2, align 4
  %arrayidx16.16.2 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 1
  %64 = load i32* %arrayidx16.16.2, align 4
  %mul.17.2 = mul nsw i32 %63, %64
  %arrayidx19.19.2 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.110.2 = getelementptr inbounds [3 x i32]* %arrayidx19.19.2, i32 0, i64 1
  %65 = load i32* %arrayidx20.110.2, align 4
  %add.111.2 = add nsw i32 %65, %mul.17.2
  store i32 %add.111.2, i32* %arrayidx20.110.2, align 4
  br label %for.inc.112.2

for.inc.112.2:                                    ; preds = %for.body8.1.2
  %arrayidx11.1.1.2 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.1.1.2 = getelementptr inbounds [3 x i32]* %arrayidx11.1.1.2, i32 0, i64 1
  %66 = load i32* %arrayidx12.1.1.2, align 4
  %arrayidx15.1.1.2 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1.1.2 = getelementptr inbounds [3 x i32]* %arrayidx15.1.1.2, i32 0, i64 1
  %67 = load i32* %arrayidx16.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %66, %67
  %arrayidx19.1.1.2 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.1.1.2 = getelementptr inbounds [3 x i32]* %arrayidx19.1.1.2, i32 0, i64 1
  %68 = load i32* %arrayidx20.1.1.2, align 4
  %add.1.1.2 = add nsw i32 %68, %mul.1.1.2
  store i32 %add.1.1.2, i32* %arrayidx20.1.1.2, align 4
  br label %for.inc.1.1.2

for.inc.1.1.2:                                    ; preds = %for.inc.112.2
  %arrayidx11.2.1.2 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.2.1.2 = getelementptr inbounds [3 x i32]* %arrayidx11.2.1.2, i32 0, i64 2
  %69 = load i32* %arrayidx12.2.1.2, align 4
  %arrayidx15.2.1.2 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2.1.2 = getelementptr inbounds [3 x i32]* %arrayidx15.2.1.2, i32 0, i64 1
  %70 = load i32* %arrayidx16.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %69, %70
  %arrayidx19.2.1.2 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.2.1.2 = getelementptr inbounds [3 x i32]* %arrayidx19.2.1.2, i32 0, i64 1
  %71 = load i32* %arrayidx20.2.1.2, align 4
  %add.2.1.2 = add nsw i32 %71, %mul.2.1.2
  store i32 %add.2.1.2, i32* %arrayidx20.2.1.2, align 4
  br label %for.inc.2.1.2

for.inc.2.1.2:                                    ; preds = %for.inc.1.1.2
  br label %for.inc21.1.2

for.inc21.1.2:                                    ; preds = %for.inc.2.1.2
  %arrayidx.2.2 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [3 x i32]* %arrayidx.2.2, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.2, align 4
  br label %for.body8.2.2

for.body8.2.2:                                    ; preds = %for.inc21.1.2
  %arrayidx11.214.2 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.215.2 = getelementptr inbounds [3 x i32]* %arrayidx11.214.2, i32 0, i64 0
  %72 = load i32* %arrayidx12.215.2, align 4
  %arrayidx16.216.2 = getelementptr inbounds [3 x i32]* %b, i32 0, i64 2
  %73 = load i32* %arrayidx16.216.2, align 4
  %mul.217.2 = mul nsw i32 %72, %73
  %arrayidx19.219.2 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.220.2 = getelementptr inbounds [3 x i32]* %arrayidx19.219.2, i32 0, i64 2
  %74 = load i32* %arrayidx20.220.2, align 4
  %add.221.2 = add nsw i32 %74, %mul.217.2
  store i32 %add.221.2, i32* %arrayidx20.220.2, align 4
  br label %for.inc.222.2

for.inc.222.2:                                    ; preds = %for.body8.2.2
  %arrayidx11.1.2.2 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.1.2.2 = getelementptr inbounds [3 x i32]* %arrayidx11.1.2.2, i32 0, i64 1
  %75 = load i32* %arrayidx12.1.2.2, align 4
  %arrayidx15.1.2.2 = getelementptr inbounds [3 x i32]* %b, i64 1
  %arrayidx16.1.2.2 = getelementptr inbounds [3 x i32]* %arrayidx15.1.2.2, i32 0, i64 2
  %76 = load i32* %arrayidx16.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %75, %76
  %arrayidx19.1.2.2 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.1.2.2 = getelementptr inbounds [3 x i32]* %arrayidx19.1.2.2, i32 0, i64 2
  %77 = load i32* %arrayidx20.1.2.2, align 4
  %add.1.2.2 = add nsw i32 %77, %mul.1.2.2
  store i32 %add.1.2.2, i32* %arrayidx20.1.2.2, align 4
  br label %for.inc.1.2.2

for.inc.1.2.2:                                    ; preds = %for.inc.222.2
  %arrayidx11.2.2.2 = getelementptr inbounds [3 x i32]* %a, i64 2
  %arrayidx12.2.2.2 = getelementptr inbounds [3 x i32]* %arrayidx11.2.2.2, i32 0, i64 2
  %78 = load i32* %arrayidx12.2.2.2, align 4
  %arrayidx15.2.2.2 = getelementptr inbounds [3 x i32]* %b, i64 2
  %arrayidx16.2.2.2 = getelementptr inbounds [3 x i32]* %arrayidx15.2.2.2, i32 0, i64 2
  %79 = load i32* %arrayidx16.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %78, %79
  %arrayidx19.2.2.2 = getelementptr inbounds [3 x i32]* %c, i64 2
  %arrayidx20.2.2.2 = getelementptr inbounds [3 x i32]* %arrayidx19.2.2.2, i32 0, i64 2
  %80 = load i32* %arrayidx20.2.2.2, align 4
  %add.2.2.2 = add nsw i32 %80, %mul.2.2.2
  store i32 %add.2.2.2, i32* %arrayidx20.2.2.2, align 4
  br label %for.inc.2.2.2

for.inc.2.2.2:                                    ; preds = %for.inc.1.2.2
  br label %for.inc21.2.2

for.inc21.2.2:                                    ; preds = %for.inc.2.2.2
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc21.2.2
  ret void
}
