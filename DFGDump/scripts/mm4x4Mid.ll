; ModuleID = 'fun2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@c = global [4 x [4 x i32]] zeroinitializer, align 16

define void @_Z5mm4x4PA4_iS0_iS0_([4 x i32]* %a, [4 x i32]* %b, i32 %init, [4 x i32]* %c) nounwind uwtable {
entry:
  br label %for.body

for.body:                                         ; preds = %entry
  br label %for.body3

for.body3:                                        ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 0
  store i32 %init, i32* %arrayidx5, align 4
  br label %for.body8

for.body8:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 0
  %0 = load i32* %arrayidx12, align 4
  %arrayidx16 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 0
  %1 = load i32* %arrayidx16, align 4
  %mul = mul nsw i32 %0, %1
  %arrayidx20 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 0
  %2 = load i32* %arrayidx20, align 4
  %add = add nsw i32 %2, %mul
  store i32 %add, i32* %arrayidx20, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %arrayidx12.1 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 1
  %3 = load i32* %arrayidx12.1, align 4
  %arrayidx15.1 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1 = getelementptr inbounds [4 x i32]* %arrayidx15.1, i32 0, i64 0
  %4 = load i32* %arrayidx16.1, align 4
  %mul.1 = mul nsw i32 %3, %4
  %arrayidx20.1 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 0
  %5 = load i32* %arrayidx20.1, align 4
  %add.1 = add nsw i32 %5, %mul.1
  store i32 %add.1, i32* %arrayidx20.1, align 4
  br label %for.inc.1

for.inc21:                                        ; preds = %for.inc.3
  %arrayidx5.1 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1, align 4
  br label %for.body8.1

for.inc24:                                        ; preds = %for.inc21.3
  br label %for.body3.1

for.inc.1:                                        ; preds = %for.inc
  %arrayidx12.2 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 2
  %6 = load i32* %arrayidx12.2, align 4
  %arrayidx15.2 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2 = getelementptr inbounds [4 x i32]* %arrayidx15.2, i32 0, i64 0
  %7 = load i32* %arrayidx16.2, align 4
  %mul.2 = mul nsw i32 %6, %7
  %arrayidx20.2 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 0
  %8 = load i32* %arrayidx20.2, align 4
  %add.2 = add nsw i32 %8, %mul.2
  store i32 %add.2, i32* %arrayidx20.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx12.3 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 3
  %9 = load i32* %arrayidx12.3, align 4
  %arrayidx15.3 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3 = getelementptr inbounds [4 x i32]* %arrayidx15.3, i32 0, i64 0
  %10 = load i32* %arrayidx16.3, align 4
  %mul.3 = mul nsw i32 %9, %10
  %arrayidx20.3 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 0
  %11 = load i32* %arrayidx20.3, align 4
  %add.3 = add nsw i32 %11, %mul.3
  store i32 %add.3, i32* %arrayidx20.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.inc.2
  br label %for.inc21

for.body8.1:                                      ; preds = %for.inc21
  %arrayidx12.15 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 0
  %12 = load i32* %arrayidx12.15, align 4
  %arrayidx16.16 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 1
  %13 = load i32* %arrayidx16.16, align 4
  %mul.17 = mul nsw i32 %12, %13
  %arrayidx20.110 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 1
  %14 = load i32* %arrayidx20.110, align 4
  %add.111 = add nsw i32 %14, %mul.17
  store i32 %add.111, i32* %arrayidx20.110, align 4
  br label %for.inc.112

for.inc.112:                                      ; preds = %for.body8.1
  %arrayidx12.1.1 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 1
  %15 = load i32* %arrayidx12.1.1, align 4
  %arrayidx15.1.1 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.1 = getelementptr inbounds [4 x i32]* %arrayidx15.1.1, i32 0, i64 1
  %16 = load i32* %arrayidx16.1.1, align 4
  %mul.1.1 = mul nsw i32 %15, %16
  %arrayidx20.1.1 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 1
  %17 = load i32* %arrayidx20.1.1, align 4
  %add.1.1 = add nsw i32 %17, %mul.1.1
  store i32 %add.1.1, i32* %arrayidx20.1.1, align 4
  br label %for.inc.1.1

for.inc.1.1:                                      ; preds = %for.inc.112
  %arrayidx12.2.1 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 2
  %18 = load i32* %arrayidx12.2.1, align 4
  %arrayidx15.2.1 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.1 = getelementptr inbounds [4 x i32]* %arrayidx15.2.1, i32 0, i64 1
  %19 = load i32* %arrayidx16.2.1, align 4
  %mul.2.1 = mul nsw i32 %18, %19
  %arrayidx20.2.1 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 1
  %20 = load i32* %arrayidx20.2.1, align 4
  %add.2.1 = add nsw i32 %20, %mul.2.1
  store i32 %add.2.1, i32* %arrayidx20.2.1, align 4
  br label %for.inc.2.1

for.inc.2.1:                                      ; preds = %for.inc.1.1
  %arrayidx12.3.1 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 3
  %21 = load i32* %arrayidx12.3.1, align 4
  %arrayidx15.3.1 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.1 = getelementptr inbounds [4 x i32]* %arrayidx15.3.1, i32 0, i64 1
  %22 = load i32* %arrayidx16.3.1, align 4
  %mul.3.1 = mul nsw i32 %21, %22
  %arrayidx20.3.1 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 1
  %23 = load i32* %arrayidx20.3.1, align 4
  %add.3.1 = add nsw i32 %23, %mul.3.1
  store i32 %add.3.1, i32* %arrayidx20.3.1, align 4
  br label %for.inc.3.1

for.inc.3.1:                                      ; preds = %for.inc.2.1
  br label %for.inc21.1

for.inc21.1:                                      ; preds = %for.inc.3.1
  %arrayidx5.2 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2, align 4
  br label %for.body8.2

for.body8.2:                                      ; preds = %for.inc21.1
  %arrayidx12.215 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 0
  %24 = load i32* %arrayidx12.215, align 4
  %arrayidx16.216 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 2
  %25 = load i32* %arrayidx16.216, align 4
  %mul.217 = mul nsw i32 %24, %25
  %arrayidx20.220 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 2
  %26 = load i32* %arrayidx20.220, align 4
  %add.221 = add nsw i32 %26, %mul.217
  store i32 %add.221, i32* %arrayidx20.220, align 4
  br label %for.inc.222

for.inc.222:                                      ; preds = %for.body8.2
  %arrayidx12.1.2 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 1
  %27 = load i32* %arrayidx12.1.2, align 4
  %arrayidx15.1.2 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.2 = getelementptr inbounds [4 x i32]* %arrayidx15.1.2, i32 0, i64 2
  %28 = load i32* %arrayidx16.1.2, align 4
  %mul.1.2 = mul nsw i32 %27, %28
  %arrayidx20.1.2 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 2
  %29 = load i32* %arrayidx20.1.2, align 4
  %add.1.2 = add nsw i32 %29, %mul.1.2
  store i32 %add.1.2, i32* %arrayidx20.1.2, align 4
  br label %for.inc.1.2

for.inc.1.2:                                      ; preds = %for.inc.222
  %arrayidx12.2.2 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 2
  %30 = load i32* %arrayidx12.2.2, align 4
  %arrayidx15.2.2 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.2 = getelementptr inbounds [4 x i32]* %arrayidx15.2.2, i32 0, i64 2
  %31 = load i32* %arrayidx16.2.2, align 4
  %mul.2.2 = mul nsw i32 %30, %31
  %arrayidx20.2.2 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 2
  %32 = load i32* %arrayidx20.2.2, align 4
  %add.2.2 = add nsw i32 %32, %mul.2.2
  store i32 %add.2.2, i32* %arrayidx20.2.2, align 4
  br label %for.inc.2.2

for.inc.2.2:                                      ; preds = %for.inc.1.2
  %arrayidx12.3.2 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 3
  %33 = load i32* %arrayidx12.3.2, align 4
  %arrayidx15.3.2 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.2 = getelementptr inbounds [4 x i32]* %arrayidx15.3.2, i32 0, i64 2
  %34 = load i32* %arrayidx16.3.2, align 4
  %mul.3.2 = mul nsw i32 %33, %34
  %arrayidx20.3.2 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 2
  %35 = load i32* %arrayidx20.3.2, align 4
  %add.3.2 = add nsw i32 %35, %mul.3.2
  store i32 %add.3.2, i32* %arrayidx20.3.2, align 4
  br label %for.inc.3.2

for.inc.3.2:                                      ; preds = %for.inc.2.2
  br label %for.inc21.2

for.inc21.2:                                      ; preds = %for.inc.3.2
  %arrayidx5.3 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3, align 4
  br label %for.body8.3

for.body8.3:                                      ; preds = %for.inc21.2
  %arrayidx12.325 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 0
  %36 = load i32* %arrayidx12.325, align 4
  %arrayidx16.326 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 3
  %37 = load i32* %arrayidx16.326, align 4
  %mul.327 = mul nsw i32 %36, %37
  %arrayidx20.330 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 3
  %38 = load i32* %arrayidx20.330, align 4
  %add.331 = add nsw i32 %38, %mul.327
  store i32 %add.331, i32* %arrayidx20.330, align 4
  br label %for.inc.332

for.inc.332:                                      ; preds = %for.body8.3
  %arrayidx12.1.3 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 1
  %39 = load i32* %arrayidx12.1.3, align 4
  %arrayidx15.1.3 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.3 = getelementptr inbounds [4 x i32]* %arrayidx15.1.3, i32 0, i64 3
  %40 = load i32* %arrayidx16.1.3, align 4
  %mul.1.3 = mul nsw i32 %39, %40
  %arrayidx20.1.3 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 3
  %41 = load i32* %arrayidx20.1.3, align 4
  %add.1.3 = add nsw i32 %41, %mul.1.3
  store i32 %add.1.3, i32* %arrayidx20.1.3, align 4
  br label %for.inc.1.3

for.inc.1.3:                                      ; preds = %for.inc.332
  %arrayidx12.2.3 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 2
  %42 = load i32* %arrayidx12.2.3, align 4
  %arrayidx15.2.3 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.3 = getelementptr inbounds [4 x i32]* %arrayidx15.2.3, i32 0, i64 3
  %43 = load i32* %arrayidx16.2.3, align 4
  %mul.2.3 = mul nsw i32 %42, %43
  %arrayidx20.2.3 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 3
  %44 = load i32* %arrayidx20.2.3, align 4
  %add.2.3 = add nsw i32 %44, %mul.2.3
  store i32 %add.2.3, i32* %arrayidx20.2.3, align 4
  br label %for.inc.2.3

for.inc.2.3:                                      ; preds = %for.inc.1.3
  %arrayidx12.3.3 = getelementptr inbounds [4 x i32]* %a, i32 0, i64 3
  %45 = load i32* %arrayidx12.3.3, align 4
  %arrayidx15.3.3 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.3 = getelementptr inbounds [4 x i32]* %arrayidx15.3.3, i32 0, i64 3
  %46 = load i32* %arrayidx16.3.3, align 4
  %mul.3.3 = mul nsw i32 %45, %46
  %arrayidx20.3.3 = getelementptr inbounds [4 x i32]* %c, i32 0, i64 3
  %47 = load i32* %arrayidx20.3.3, align 4
  %add.3.3 = add nsw i32 %47, %mul.3.3
  store i32 %add.3.3, i32* %arrayidx20.3.3, align 4
  br label %for.inc.3.3

for.inc.3.3:                                      ; preds = %for.inc.2.3
  br label %for.inc21.3

for.inc21.3:                                      ; preds = %for.inc.3.3
  br label %for.inc24

for.body3.1:                                      ; preds = %for.inc24
  %arrayidx.134 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx5.135 = getelementptr inbounds [4 x i32]* %arrayidx.134, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.135, align 4
  br label %for.body8.143

for.body8.143:                                    ; preds = %for.body3.1
  %arrayidx11.136 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.137 = getelementptr inbounds [4 x i32]* %arrayidx11.136, i32 0, i64 0
  %48 = load i32* %arrayidx12.137, align 4
  %arrayidx16.138 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 0
  %49 = load i32* %arrayidx16.138, align 4
  %mul.139 = mul nsw i32 %48, %49
  %arrayidx19.140 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.141 = getelementptr inbounds [4 x i32]* %arrayidx19.140, i32 0, i64 0
  %50 = load i32* %arrayidx20.141, align 4
  %add.142 = add nsw i32 %50, %mul.139
  store i32 %add.142, i32* %arrayidx20.141, align 4
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body8.143
  %arrayidx11.1.144 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.1.145 = getelementptr inbounds [4 x i32]* %arrayidx11.1.144, i32 0, i64 1
  %51 = load i32* %arrayidx12.1.145, align 4
  %arrayidx15.1.146 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.147 = getelementptr inbounds [4 x i32]* %arrayidx15.1.146, i32 0, i64 0
  %52 = load i32* %arrayidx16.1.147, align 4
  %mul.1.148 = mul nsw i32 %51, %52
  %arrayidx19.1.149 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.1.150 = getelementptr inbounds [4 x i32]* %arrayidx19.1.149, i32 0, i64 0
  %53 = load i32* %arrayidx20.1.150, align 4
  %add.1.151 = add nsw i32 %53, %mul.1.148
  store i32 %add.1.151, i32* %arrayidx20.1.150, align 4
  br label %for.inc.1.161

for.inc.1.161:                                    ; preds = %for.inc.152
  %arrayidx11.2.153 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.2.154 = getelementptr inbounds [4 x i32]* %arrayidx11.2.153, i32 0, i64 2
  %54 = load i32* %arrayidx12.2.154, align 4
  %arrayidx15.2.155 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.156 = getelementptr inbounds [4 x i32]* %arrayidx15.2.155, i32 0, i64 0
  %55 = load i32* %arrayidx16.2.156, align 4
  %mul.2.157 = mul nsw i32 %54, %55
  %arrayidx19.2.158 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.2.159 = getelementptr inbounds [4 x i32]* %arrayidx19.2.158, i32 0, i64 0
  %56 = load i32* %arrayidx20.2.159, align 4
  %add.2.160 = add nsw i32 %56, %mul.2.157
  store i32 %add.2.160, i32* %arrayidx20.2.159, align 4
  br label %for.inc.2.170

for.inc.2.170:                                    ; preds = %for.inc.1.161
  %arrayidx11.3.162 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.3.163 = getelementptr inbounds [4 x i32]* %arrayidx11.3.162, i32 0, i64 3
  %57 = load i32* %arrayidx12.3.163, align 4
  %arrayidx15.3.164 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.165 = getelementptr inbounds [4 x i32]* %arrayidx15.3.164, i32 0, i64 0
  %58 = load i32* %arrayidx16.3.165, align 4
  %mul.3.166 = mul nsw i32 %57, %58
  %arrayidx19.3.167 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.3.168 = getelementptr inbounds [4 x i32]* %arrayidx19.3.167, i32 0, i64 0
  %59 = load i32* %arrayidx20.3.168, align 4
  %add.3.169 = add nsw i32 %59, %mul.3.166
  store i32 %add.3.169, i32* %arrayidx20.3.168, align 4
  br label %for.inc.3.171

for.inc.3.171:                                    ; preds = %for.inc.2.170
  br label %for.inc21.172

for.inc21.172:                                    ; preds = %for.inc.3.171
  %arrayidx.1.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx5.1.1 = getelementptr inbounds [4 x i32]* %arrayidx.1.1, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.1, align 4
  br label %for.body8.1.1

for.body8.1.1:                                    ; preds = %for.inc21.172
  %arrayidx11.14.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.15.1 = getelementptr inbounds [4 x i32]* %arrayidx11.14.1, i32 0, i64 0
  %60 = load i32* %arrayidx12.15.1, align 4
  %arrayidx16.16.1 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 1
  %61 = load i32* %arrayidx16.16.1, align 4
  %mul.17.1 = mul nsw i32 %60, %61
  %arrayidx19.19.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.110.1 = getelementptr inbounds [4 x i32]* %arrayidx19.19.1, i32 0, i64 1
  %62 = load i32* %arrayidx20.110.1, align 4
  %add.111.1 = add nsw i32 %62, %mul.17.1
  store i32 %add.111.1, i32* %arrayidx20.110.1, align 4
  br label %for.inc.112.1

for.inc.112.1:                                    ; preds = %for.body8.1.1
  %arrayidx11.1.1.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.1.1.1 = getelementptr inbounds [4 x i32]* %arrayidx11.1.1.1, i32 0, i64 1
  %63 = load i32* %arrayidx12.1.1.1, align 4
  %arrayidx15.1.1.1 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.1.1 = getelementptr inbounds [4 x i32]* %arrayidx15.1.1.1, i32 0, i64 1
  %64 = load i32* %arrayidx16.1.1.1, align 4
  %mul.1.1.1 = mul nsw i32 %63, %64
  %arrayidx19.1.1.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.1.1.1 = getelementptr inbounds [4 x i32]* %arrayidx19.1.1.1, i32 0, i64 1
  %65 = load i32* %arrayidx20.1.1.1, align 4
  %add.1.1.1 = add nsw i32 %65, %mul.1.1.1
  store i32 %add.1.1.1, i32* %arrayidx20.1.1.1, align 4
  br label %for.inc.1.1.1

for.inc.1.1.1:                                    ; preds = %for.inc.112.1
  %arrayidx11.2.1.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.2.1.1 = getelementptr inbounds [4 x i32]* %arrayidx11.2.1.1, i32 0, i64 2
  %66 = load i32* %arrayidx12.2.1.1, align 4
  %arrayidx15.2.1.1 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.1.1 = getelementptr inbounds [4 x i32]* %arrayidx15.2.1.1, i32 0, i64 1
  %67 = load i32* %arrayidx16.2.1.1, align 4
  %mul.2.1.1 = mul nsw i32 %66, %67
  %arrayidx19.2.1.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.2.1.1 = getelementptr inbounds [4 x i32]* %arrayidx19.2.1.1, i32 0, i64 1
  %68 = load i32* %arrayidx20.2.1.1, align 4
  %add.2.1.1 = add nsw i32 %68, %mul.2.1.1
  store i32 %add.2.1.1, i32* %arrayidx20.2.1.1, align 4
  br label %for.inc.2.1.1

for.inc.2.1.1:                                    ; preds = %for.inc.1.1.1
  %arrayidx11.3.1.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.3.1.1 = getelementptr inbounds [4 x i32]* %arrayidx11.3.1.1, i32 0, i64 3
  %69 = load i32* %arrayidx12.3.1.1, align 4
  %arrayidx15.3.1.1 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.1.1 = getelementptr inbounds [4 x i32]* %arrayidx15.3.1.1, i32 0, i64 1
  %70 = load i32* %arrayidx16.3.1.1, align 4
  %mul.3.1.1 = mul nsw i32 %69, %70
  %arrayidx19.3.1.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.3.1.1 = getelementptr inbounds [4 x i32]* %arrayidx19.3.1.1, i32 0, i64 1
  %71 = load i32* %arrayidx20.3.1.1, align 4
  %add.3.1.1 = add nsw i32 %71, %mul.3.1.1
  store i32 %add.3.1.1, i32* %arrayidx20.3.1.1, align 4
  br label %for.inc.3.1.1

for.inc.3.1.1:                                    ; preds = %for.inc.2.1.1
  br label %for.inc21.1.1

for.inc21.1.1:                                    ; preds = %for.inc.3.1.1
  %arrayidx.2.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx5.2.1 = getelementptr inbounds [4 x i32]* %arrayidx.2.1, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.1, align 4
  br label %for.body8.2.1

for.body8.2.1:                                    ; preds = %for.inc21.1.1
  %arrayidx11.214.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.215.1 = getelementptr inbounds [4 x i32]* %arrayidx11.214.1, i32 0, i64 0
  %72 = load i32* %arrayidx12.215.1, align 4
  %arrayidx16.216.1 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 2
  %73 = load i32* %arrayidx16.216.1, align 4
  %mul.217.1 = mul nsw i32 %72, %73
  %arrayidx19.219.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.220.1 = getelementptr inbounds [4 x i32]* %arrayidx19.219.1, i32 0, i64 2
  %74 = load i32* %arrayidx20.220.1, align 4
  %add.221.1 = add nsw i32 %74, %mul.217.1
  store i32 %add.221.1, i32* %arrayidx20.220.1, align 4
  br label %for.inc.222.1

for.inc.222.1:                                    ; preds = %for.body8.2.1
  %arrayidx11.1.2.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.1.2.1 = getelementptr inbounds [4 x i32]* %arrayidx11.1.2.1, i32 0, i64 1
  %75 = load i32* %arrayidx12.1.2.1, align 4
  %arrayidx15.1.2.1 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.2.1 = getelementptr inbounds [4 x i32]* %arrayidx15.1.2.1, i32 0, i64 2
  %76 = load i32* %arrayidx16.1.2.1, align 4
  %mul.1.2.1 = mul nsw i32 %75, %76
  %arrayidx19.1.2.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.1.2.1 = getelementptr inbounds [4 x i32]* %arrayidx19.1.2.1, i32 0, i64 2
  %77 = load i32* %arrayidx20.1.2.1, align 4
  %add.1.2.1 = add nsw i32 %77, %mul.1.2.1
  store i32 %add.1.2.1, i32* %arrayidx20.1.2.1, align 4
  br label %for.inc.1.2.1

for.inc.1.2.1:                                    ; preds = %for.inc.222.1
  %arrayidx11.2.2.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.2.2.1 = getelementptr inbounds [4 x i32]* %arrayidx11.2.2.1, i32 0, i64 2
  %78 = load i32* %arrayidx12.2.2.1, align 4
  %arrayidx15.2.2.1 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.2.1 = getelementptr inbounds [4 x i32]* %arrayidx15.2.2.1, i32 0, i64 2
  %79 = load i32* %arrayidx16.2.2.1, align 4
  %mul.2.2.1 = mul nsw i32 %78, %79
  %arrayidx19.2.2.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.2.2.1 = getelementptr inbounds [4 x i32]* %arrayidx19.2.2.1, i32 0, i64 2
  %80 = load i32* %arrayidx20.2.2.1, align 4
  %add.2.2.1 = add nsw i32 %80, %mul.2.2.1
  store i32 %add.2.2.1, i32* %arrayidx20.2.2.1, align 4
  br label %for.inc.2.2.1

for.inc.2.2.1:                                    ; preds = %for.inc.1.2.1
  %arrayidx11.3.2.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.3.2.1 = getelementptr inbounds [4 x i32]* %arrayidx11.3.2.1, i32 0, i64 3
  %81 = load i32* %arrayidx12.3.2.1, align 4
  %arrayidx15.3.2.1 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.2.1 = getelementptr inbounds [4 x i32]* %arrayidx15.3.2.1, i32 0, i64 2
  %82 = load i32* %arrayidx16.3.2.1, align 4
  %mul.3.2.1 = mul nsw i32 %81, %82
  %arrayidx19.3.2.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.3.2.1 = getelementptr inbounds [4 x i32]* %arrayidx19.3.2.1, i32 0, i64 2
  %83 = load i32* %arrayidx20.3.2.1, align 4
  %add.3.2.1 = add nsw i32 %83, %mul.3.2.1
  store i32 %add.3.2.1, i32* %arrayidx20.3.2.1, align 4
  br label %for.inc.3.2.1

for.inc.3.2.1:                                    ; preds = %for.inc.2.2.1
  br label %for.inc21.2.1

for.inc21.2.1:                                    ; preds = %for.inc.3.2.1
  %arrayidx.3.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx5.3.1 = getelementptr inbounds [4 x i32]* %arrayidx.3.1, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.1, align 4
  br label %for.body8.3.1

for.body8.3.1:                                    ; preds = %for.inc21.2.1
  %arrayidx11.324.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.325.1 = getelementptr inbounds [4 x i32]* %arrayidx11.324.1, i32 0, i64 0
  %84 = load i32* %arrayidx12.325.1, align 4
  %arrayidx16.326.1 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 3
  %85 = load i32* %arrayidx16.326.1, align 4
  %mul.327.1 = mul nsw i32 %84, %85
  %arrayidx19.329.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.330.1 = getelementptr inbounds [4 x i32]* %arrayidx19.329.1, i32 0, i64 3
  %86 = load i32* %arrayidx20.330.1, align 4
  %add.331.1 = add nsw i32 %86, %mul.327.1
  store i32 %add.331.1, i32* %arrayidx20.330.1, align 4
  br label %for.inc.332.1

for.inc.332.1:                                    ; preds = %for.body8.3.1
  %arrayidx11.1.3.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.1.3.1 = getelementptr inbounds [4 x i32]* %arrayidx11.1.3.1, i32 0, i64 1
  %87 = load i32* %arrayidx12.1.3.1, align 4
  %arrayidx15.1.3.1 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.3.1 = getelementptr inbounds [4 x i32]* %arrayidx15.1.3.1, i32 0, i64 3
  %88 = load i32* %arrayidx16.1.3.1, align 4
  %mul.1.3.1 = mul nsw i32 %87, %88
  %arrayidx19.1.3.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.1.3.1 = getelementptr inbounds [4 x i32]* %arrayidx19.1.3.1, i32 0, i64 3
  %89 = load i32* %arrayidx20.1.3.1, align 4
  %add.1.3.1 = add nsw i32 %89, %mul.1.3.1
  store i32 %add.1.3.1, i32* %arrayidx20.1.3.1, align 4
  br label %for.inc.1.3.1

for.inc.1.3.1:                                    ; preds = %for.inc.332.1
  %arrayidx11.2.3.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.2.3.1 = getelementptr inbounds [4 x i32]* %arrayidx11.2.3.1, i32 0, i64 2
  %90 = load i32* %arrayidx12.2.3.1, align 4
  %arrayidx15.2.3.1 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.3.1 = getelementptr inbounds [4 x i32]* %arrayidx15.2.3.1, i32 0, i64 3
  %91 = load i32* %arrayidx16.2.3.1, align 4
  %mul.2.3.1 = mul nsw i32 %90, %91
  %arrayidx19.2.3.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.2.3.1 = getelementptr inbounds [4 x i32]* %arrayidx19.2.3.1, i32 0, i64 3
  %92 = load i32* %arrayidx20.2.3.1, align 4
  %add.2.3.1 = add nsw i32 %92, %mul.2.3.1
  store i32 %add.2.3.1, i32* %arrayidx20.2.3.1, align 4
  br label %for.inc.2.3.1

for.inc.2.3.1:                                    ; preds = %for.inc.1.3.1
  %arrayidx11.3.3.1 = getelementptr inbounds [4 x i32]* %a, i64 1
  %arrayidx12.3.3.1 = getelementptr inbounds [4 x i32]* %arrayidx11.3.3.1, i32 0, i64 3
  %93 = load i32* %arrayidx12.3.3.1, align 4
  %arrayidx15.3.3.1 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.3.1 = getelementptr inbounds [4 x i32]* %arrayidx15.3.3.1, i32 0, i64 3
  %94 = load i32* %arrayidx16.3.3.1, align 4
  %mul.3.3.1 = mul nsw i32 %93, %94
  %arrayidx19.3.3.1 = getelementptr inbounds [4 x i32]* %c, i64 1
  %arrayidx20.3.3.1 = getelementptr inbounds [4 x i32]* %arrayidx19.3.3.1, i32 0, i64 3
  %95 = load i32* %arrayidx20.3.3.1, align 4
  %add.3.3.1 = add nsw i32 %95, %mul.3.3.1
  store i32 %add.3.3.1, i32* %arrayidx20.3.3.1, align 4
  br label %for.inc.3.3.1

for.inc.3.3.1:                                    ; preds = %for.inc.2.3.1
  br label %for.inc21.3.1

for.inc21.3.1:                                    ; preds = %for.inc.3.3.1
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.3.1
  br label %for.body3.2

for.body3.2:                                      ; preds = %for.inc24.1
  %arrayidx.273 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx5.274 = getelementptr inbounds [4 x i32]* %arrayidx.273, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.274, align 4
  br label %for.body8.282

for.body8.282:                                    ; preds = %for.body3.2
  %arrayidx11.275 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.276 = getelementptr inbounds [4 x i32]* %arrayidx11.275, i32 0, i64 0
  %96 = load i32* %arrayidx12.276, align 4
  %arrayidx16.277 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 0
  %97 = load i32* %arrayidx16.277, align 4
  %mul.278 = mul nsw i32 %96, %97
  %arrayidx19.279 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.280 = getelementptr inbounds [4 x i32]* %arrayidx19.279, i32 0, i64 0
  %98 = load i32* %arrayidx20.280, align 4
  %add.281 = add nsw i32 %98, %mul.278
  store i32 %add.281, i32* %arrayidx20.280, align 4
  br label %for.inc.291

for.inc.291:                                      ; preds = %for.body8.282
  %arrayidx11.1.283 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.1.284 = getelementptr inbounds [4 x i32]* %arrayidx11.1.283, i32 0, i64 1
  %99 = load i32* %arrayidx12.1.284, align 4
  %arrayidx15.1.285 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.286 = getelementptr inbounds [4 x i32]* %arrayidx15.1.285, i32 0, i64 0
  %100 = load i32* %arrayidx16.1.286, align 4
  %mul.1.287 = mul nsw i32 %99, %100
  %arrayidx19.1.288 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.1.289 = getelementptr inbounds [4 x i32]* %arrayidx19.1.288, i32 0, i64 0
  %101 = load i32* %arrayidx20.1.289, align 4
  %add.1.290 = add nsw i32 %101, %mul.1.287
  store i32 %add.1.290, i32* %arrayidx20.1.289, align 4
  br label %for.inc.1.2100

for.inc.1.2100:                                   ; preds = %for.inc.291
  %arrayidx11.2.292 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.2.293 = getelementptr inbounds [4 x i32]* %arrayidx11.2.292, i32 0, i64 2
  %102 = load i32* %arrayidx12.2.293, align 4
  %arrayidx15.2.294 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.295 = getelementptr inbounds [4 x i32]* %arrayidx15.2.294, i32 0, i64 0
  %103 = load i32* %arrayidx16.2.295, align 4
  %mul.2.296 = mul nsw i32 %102, %103
  %arrayidx19.2.297 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.2.298 = getelementptr inbounds [4 x i32]* %arrayidx19.2.297, i32 0, i64 0
  %104 = load i32* %arrayidx20.2.298, align 4
  %add.2.299 = add nsw i32 %104, %mul.2.296
  store i32 %add.2.299, i32* %arrayidx20.2.298, align 4
  br label %for.inc.2.2109

for.inc.2.2109:                                   ; preds = %for.inc.1.2100
  %arrayidx11.3.2101 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.3.2102 = getelementptr inbounds [4 x i32]* %arrayidx11.3.2101, i32 0, i64 3
  %105 = load i32* %arrayidx12.3.2102, align 4
  %arrayidx15.3.2103 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.2104 = getelementptr inbounds [4 x i32]* %arrayidx15.3.2103, i32 0, i64 0
  %106 = load i32* %arrayidx16.3.2104, align 4
  %mul.3.2105 = mul nsw i32 %105, %106
  %arrayidx19.3.2106 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.3.2107 = getelementptr inbounds [4 x i32]* %arrayidx19.3.2106, i32 0, i64 0
  %107 = load i32* %arrayidx20.3.2107, align 4
  %add.3.2108 = add nsw i32 %107, %mul.3.2105
  store i32 %add.3.2108, i32* %arrayidx20.3.2107, align 4
  br label %for.inc.3.2110

for.inc.3.2110:                                   ; preds = %for.inc.2.2109
  br label %for.inc21.2111

for.inc21.2111:                                   ; preds = %for.inc.3.2110
  %arrayidx.1.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx5.1.2 = getelementptr inbounds [4 x i32]* %arrayidx.1.2, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.2, align 4
  br label %for.body8.1.2

for.body8.1.2:                                    ; preds = %for.inc21.2111
  %arrayidx11.14.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.15.2 = getelementptr inbounds [4 x i32]* %arrayidx11.14.2, i32 0, i64 0
  %108 = load i32* %arrayidx12.15.2, align 4
  %arrayidx16.16.2 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 1
  %109 = load i32* %arrayidx16.16.2, align 4
  %mul.17.2 = mul nsw i32 %108, %109
  %arrayidx19.19.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.110.2 = getelementptr inbounds [4 x i32]* %arrayidx19.19.2, i32 0, i64 1
  %110 = load i32* %arrayidx20.110.2, align 4
  %add.111.2 = add nsw i32 %110, %mul.17.2
  store i32 %add.111.2, i32* %arrayidx20.110.2, align 4
  br label %for.inc.112.2

for.inc.112.2:                                    ; preds = %for.body8.1.2
  %arrayidx11.1.1.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.1.1.2 = getelementptr inbounds [4 x i32]* %arrayidx11.1.1.2, i32 0, i64 1
  %111 = load i32* %arrayidx12.1.1.2, align 4
  %arrayidx15.1.1.2 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.1.2 = getelementptr inbounds [4 x i32]* %arrayidx15.1.1.2, i32 0, i64 1
  %112 = load i32* %arrayidx16.1.1.2, align 4
  %mul.1.1.2 = mul nsw i32 %111, %112
  %arrayidx19.1.1.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.1.1.2 = getelementptr inbounds [4 x i32]* %arrayidx19.1.1.2, i32 0, i64 1
  %113 = load i32* %arrayidx20.1.1.2, align 4
  %add.1.1.2 = add nsw i32 %113, %mul.1.1.2
  store i32 %add.1.1.2, i32* %arrayidx20.1.1.2, align 4
  br label %for.inc.1.1.2

for.inc.1.1.2:                                    ; preds = %for.inc.112.2
  %arrayidx11.2.1.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.2.1.2 = getelementptr inbounds [4 x i32]* %arrayidx11.2.1.2, i32 0, i64 2
  %114 = load i32* %arrayidx12.2.1.2, align 4
  %arrayidx15.2.1.2 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.1.2 = getelementptr inbounds [4 x i32]* %arrayidx15.2.1.2, i32 0, i64 1
  %115 = load i32* %arrayidx16.2.1.2, align 4
  %mul.2.1.2 = mul nsw i32 %114, %115
  %arrayidx19.2.1.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.2.1.2 = getelementptr inbounds [4 x i32]* %arrayidx19.2.1.2, i32 0, i64 1
  %116 = load i32* %arrayidx20.2.1.2, align 4
  %add.2.1.2 = add nsw i32 %116, %mul.2.1.2
  store i32 %add.2.1.2, i32* %arrayidx20.2.1.2, align 4
  br label %for.inc.2.1.2

for.inc.2.1.2:                                    ; preds = %for.inc.1.1.2
  %arrayidx11.3.1.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.3.1.2 = getelementptr inbounds [4 x i32]* %arrayidx11.3.1.2, i32 0, i64 3
  %117 = load i32* %arrayidx12.3.1.2, align 4
  %arrayidx15.3.1.2 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.1.2 = getelementptr inbounds [4 x i32]* %arrayidx15.3.1.2, i32 0, i64 1
  %118 = load i32* %arrayidx16.3.1.2, align 4
  %mul.3.1.2 = mul nsw i32 %117, %118
  %arrayidx19.3.1.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.3.1.2 = getelementptr inbounds [4 x i32]* %arrayidx19.3.1.2, i32 0, i64 1
  %119 = load i32* %arrayidx20.3.1.2, align 4
  %add.3.1.2 = add nsw i32 %119, %mul.3.1.2
  store i32 %add.3.1.2, i32* %arrayidx20.3.1.2, align 4
  br label %for.inc.3.1.2

for.inc.3.1.2:                                    ; preds = %for.inc.2.1.2
  br label %for.inc21.1.2

for.inc21.1.2:                                    ; preds = %for.inc.3.1.2
  %arrayidx.2.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx5.2.2 = getelementptr inbounds [4 x i32]* %arrayidx.2.2, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.2, align 4
  br label %for.body8.2.2

for.body8.2.2:                                    ; preds = %for.inc21.1.2
  %arrayidx11.214.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.215.2 = getelementptr inbounds [4 x i32]* %arrayidx11.214.2, i32 0, i64 0
  %120 = load i32* %arrayidx12.215.2, align 4
  %arrayidx16.216.2 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 2
  %121 = load i32* %arrayidx16.216.2, align 4
  %mul.217.2 = mul nsw i32 %120, %121
  %arrayidx19.219.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.220.2 = getelementptr inbounds [4 x i32]* %arrayidx19.219.2, i32 0, i64 2
  %122 = load i32* %arrayidx20.220.2, align 4
  %add.221.2 = add nsw i32 %122, %mul.217.2
  store i32 %add.221.2, i32* %arrayidx20.220.2, align 4
  br label %for.inc.222.2

for.inc.222.2:                                    ; preds = %for.body8.2.2
  %arrayidx11.1.2.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.1.2.2 = getelementptr inbounds [4 x i32]* %arrayidx11.1.2.2, i32 0, i64 1
  %123 = load i32* %arrayidx12.1.2.2, align 4
  %arrayidx15.1.2.2 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.2.2 = getelementptr inbounds [4 x i32]* %arrayidx15.1.2.2, i32 0, i64 2
  %124 = load i32* %arrayidx16.1.2.2, align 4
  %mul.1.2.2 = mul nsw i32 %123, %124
  %arrayidx19.1.2.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.1.2.2 = getelementptr inbounds [4 x i32]* %arrayidx19.1.2.2, i32 0, i64 2
  %125 = load i32* %arrayidx20.1.2.2, align 4
  %add.1.2.2 = add nsw i32 %125, %mul.1.2.2
  store i32 %add.1.2.2, i32* %arrayidx20.1.2.2, align 4
  br label %for.inc.1.2.2

for.inc.1.2.2:                                    ; preds = %for.inc.222.2
  %arrayidx11.2.2.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.2.2.2 = getelementptr inbounds [4 x i32]* %arrayidx11.2.2.2, i32 0, i64 2
  %126 = load i32* %arrayidx12.2.2.2, align 4
  %arrayidx15.2.2.2 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.2.2 = getelementptr inbounds [4 x i32]* %arrayidx15.2.2.2, i32 0, i64 2
  %127 = load i32* %arrayidx16.2.2.2, align 4
  %mul.2.2.2 = mul nsw i32 %126, %127
  %arrayidx19.2.2.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.2.2.2 = getelementptr inbounds [4 x i32]* %arrayidx19.2.2.2, i32 0, i64 2
  %128 = load i32* %arrayidx20.2.2.2, align 4
  %add.2.2.2 = add nsw i32 %128, %mul.2.2.2
  store i32 %add.2.2.2, i32* %arrayidx20.2.2.2, align 4
  br label %for.inc.2.2.2

for.inc.2.2.2:                                    ; preds = %for.inc.1.2.2
  %arrayidx11.3.2.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.3.2.2 = getelementptr inbounds [4 x i32]* %arrayidx11.3.2.2, i32 0, i64 3
  %129 = load i32* %arrayidx12.3.2.2, align 4
  %arrayidx15.3.2.2 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.2.2 = getelementptr inbounds [4 x i32]* %arrayidx15.3.2.2, i32 0, i64 2
  %130 = load i32* %arrayidx16.3.2.2, align 4
  %mul.3.2.2 = mul nsw i32 %129, %130
  %arrayidx19.3.2.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.3.2.2 = getelementptr inbounds [4 x i32]* %arrayidx19.3.2.2, i32 0, i64 2
  %131 = load i32* %arrayidx20.3.2.2, align 4
  %add.3.2.2 = add nsw i32 %131, %mul.3.2.2
  store i32 %add.3.2.2, i32* %arrayidx20.3.2.2, align 4
  br label %for.inc.3.2.2

for.inc.3.2.2:                                    ; preds = %for.inc.2.2.2
  br label %for.inc21.2.2

for.inc21.2.2:                                    ; preds = %for.inc.3.2.2
  %arrayidx.3.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx5.3.2 = getelementptr inbounds [4 x i32]* %arrayidx.3.2, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.2, align 4
  br label %for.body8.3.2

for.body8.3.2:                                    ; preds = %for.inc21.2.2
  %arrayidx11.324.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.325.2 = getelementptr inbounds [4 x i32]* %arrayidx11.324.2, i32 0, i64 0
  %132 = load i32* %arrayidx12.325.2, align 4
  %arrayidx16.326.2 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 3
  %133 = load i32* %arrayidx16.326.2, align 4
  %mul.327.2 = mul nsw i32 %132, %133
  %arrayidx19.329.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.330.2 = getelementptr inbounds [4 x i32]* %arrayidx19.329.2, i32 0, i64 3
  %134 = load i32* %arrayidx20.330.2, align 4
  %add.331.2 = add nsw i32 %134, %mul.327.2
  store i32 %add.331.2, i32* %arrayidx20.330.2, align 4
  br label %for.inc.332.2

for.inc.332.2:                                    ; preds = %for.body8.3.2
  %arrayidx11.1.3.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.1.3.2 = getelementptr inbounds [4 x i32]* %arrayidx11.1.3.2, i32 0, i64 1
  %135 = load i32* %arrayidx12.1.3.2, align 4
  %arrayidx15.1.3.2 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.3.2 = getelementptr inbounds [4 x i32]* %arrayidx15.1.3.2, i32 0, i64 3
  %136 = load i32* %arrayidx16.1.3.2, align 4
  %mul.1.3.2 = mul nsw i32 %135, %136
  %arrayidx19.1.3.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.1.3.2 = getelementptr inbounds [4 x i32]* %arrayidx19.1.3.2, i32 0, i64 3
  %137 = load i32* %arrayidx20.1.3.2, align 4
  %add.1.3.2 = add nsw i32 %137, %mul.1.3.2
  store i32 %add.1.3.2, i32* %arrayidx20.1.3.2, align 4
  br label %for.inc.1.3.2

for.inc.1.3.2:                                    ; preds = %for.inc.332.2
  %arrayidx11.2.3.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.2.3.2 = getelementptr inbounds [4 x i32]* %arrayidx11.2.3.2, i32 0, i64 2
  %138 = load i32* %arrayidx12.2.3.2, align 4
  %arrayidx15.2.3.2 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.3.2 = getelementptr inbounds [4 x i32]* %arrayidx15.2.3.2, i32 0, i64 3
  %139 = load i32* %arrayidx16.2.3.2, align 4
  %mul.2.3.2 = mul nsw i32 %138, %139
  %arrayidx19.2.3.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.2.3.2 = getelementptr inbounds [4 x i32]* %arrayidx19.2.3.2, i32 0, i64 3
  %140 = load i32* %arrayidx20.2.3.2, align 4
  %add.2.3.2 = add nsw i32 %140, %mul.2.3.2
  store i32 %add.2.3.2, i32* %arrayidx20.2.3.2, align 4
  br label %for.inc.2.3.2

for.inc.2.3.2:                                    ; preds = %for.inc.1.3.2
  %arrayidx11.3.3.2 = getelementptr inbounds [4 x i32]* %a, i64 2
  %arrayidx12.3.3.2 = getelementptr inbounds [4 x i32]* %arrayidx11.3.3.2, i32 0, i64 3
  %141 = load i32* %arrayidx12.3.3.2, align 4
  %arrayidx15.3.3.2 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.3.2 = getelementptr inbounds [4 x i32]* %arrayidx15.3.3.2, i32 0, i64 3
  %142 = load i32* %arrayidx16.3.3.2, align 4
  %mul.3.3.2 = mul nsw i32 %141, %142
  %arrayidx19.3.3.2 = getelementptr inbounds [4 x i32]* %c, i64 2
  %arrayidx20.3.3.2 = getelementptr inbounds [4 x i32]* %arrayidx19.3.3.2, i32 0, i64 3
  %143 = load i32* %arrayidx20.3.3.2, align 4
  %add.3.3.2 = add nsw i32 %143, %mul.3.3.2
  store i32 %add.3.3.2, i32* %arrayidx20.3.3.2, align 4
  br label %for.inc.3.3.2

for.inc.3.3.2:                                    ; preds = %for.inc.2.3.2
  br label %for.inc21.3.2

for.inc21.3.2:                                    ; preds = %for.inc.3.3.2
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc21.3.2
  br label %for.body3.3

for.body3.3:                                      ; preds = %for.inc24.2
  %arrayidx.3112 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx5.3113 = getelementptr inbounds [4 x i32]* %arrayidx.3112, i32 0, i64 0
  store i32 %init, i32* %arrayidx5.3113, align 4
  br label %for.body8.3121

for.body8.3121:                                   ; preds = %for.body3.3
  %arrayidx11.3114 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.3115 = getelementptr inbounds [4 x i32]* %arrayidx11.3114, i32 0, i64 0
  %144 = load i32* %arrayidx12.3115, align 4
  %arrayidx16.3116 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 0
  %145 = load i32* %arrayidx16.3116, align 4
  %mul.3117 = mul nsw i32 %144, %145
  %arrayidx19.3118 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.3119 = getelementptr inbounds [4 x i32]* %arrayidx19.3118, i32 0, i64 0
  %146 = load i32* %arrayidx20.3119, align 4
  %add.3120 = add nsw i32 %146, %mul.3117
  store i32 %add.3120, i32* %arrayidx20.3119, align 4
  br label %for.inc.3130

for.inc.3130:                                     ; preds = %for.body8.3121
  %arrayidx11.1.3122 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.1.3123 = getelementptr inbounds [4 x i32]* %arrayidx11.1.3122, i32 0, i64 1
  %147 = load i32* %arrayidx12.1.3123, align 4
  %arrayidx15.1.3124 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.3125 = getelementptr inbounds [4 x i32]* %arrayidx15.1.3124, i32 0, i64 0
  %148 = load i32* %arrayidx16.1.3125, align 4
  %mul.1.3126 = mul nsw i32 %147, %148
  %arrayidx19.1.3127 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.1.3128 = getelementptr inbounds [4 x i32]* %arrayidx19.1.3127, i32 0, i64 0
  %149 = load i32* %arrayidx20.1.3128, align 4
  %add.1.3129 = add nsw i32 %149, %mul.1.3126
  store i32 %add.1.3129, i32* %arrayidx20.1.3128, align 4
  br label %for.inc.1.3139

for.inc.1.3139:                                   ; preds = %for.inc.3130
  %arrayidx11.2.3131 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.2.3132 = getelementptr inbounds [4 x i32]* %arrayidx11.2.3131, i32 0, i64 2
  %150 = load i32* %arrayidx12.2.3132, align 4
  %arrayidx15.2.3133 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.3134 = getelementptr inbounds [4 x i32]* %arrayidx15.2.3133, i32 0, i64 0
  %151 = load i32* %arrayidx16.2.3134, align 4
  %mul.2.3135 = mul nsw i32 %150, %151
  %arrayidx19.2.3136 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.2.3137 = getelementptr inbounds [4 x i32]* %arrayidx19.2.3136, i32 0, i64 0
  %152 = load i32* %arrayidx20.2.3137, align 4
  %add.2.3138 = add nsw i32 %152, %mul.2.3135
  store i32 %add.2.3138, i32* %arrayidx20.2.3137, align 4
  br label %for.inc.2.3148

for.inc.2.3148:                                   ; preds = %for.inc.1.3139
  %arrayidx11.3.3140 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.3.3141 = getelementptr inbounds [4 x i32]* %arrayidx11.3.3140, i32 0, i64 3
  %153 = load i32* %arrayidx12.3.3141, align 4
  %arrayidx15.3.3142 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.3143 = getelementptr inbounds [4 x i32]* %arrayidx15.3.3142, i32 0, i64 0
  %154 = load i32* %arrayidx16.3.3143, align 4
  %mul.3.3144 = mul nsw i32 %153, %154
  %arrayidx19.3.3145 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.3.3146 = getelementptr inbounds [4 x i32]* %arrayidx19.3.3145, i32 0, i64 0
  %155 = load i32* %arrayidx20.3.3146, align 4
  %add.3.3147 = add nsw i32 %155, %mul.3.3144
  store i32 %add.3.3147, i32* %arrayidx20.3.3146, align 4
  br label %for.inc.3.3149

for.inc.3.3149:                                   ; preds = %for.inc.2.3148
  br label %for.inc21.3150

for.inc21.3150:                                   ; preds = %for.inc.3.3149
  %arrayidx.1.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx5.1.3 = getelementptr inbounds [4 x i32]* %arrayidx.1.3, i32 0, i64 1
  store i32 %init, i32* %arrayidx5.1.3, align 4
  br label %for.body8.1.3

for.body8.1.3:                                    ; preds = %for.inc21.3150
  %arrayidx11.14.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.15.3 = getelementptr inbounds [4 x i32]* %arrayidx11.14.3, i32 0, i64 0
  %156 = load i32* %arrayidx12.15.3, align 4
  %arrayidx16.16.3 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 1
  %157 = load i32* %arrayidx16.16.3, align 4
  %mul.17.3 = mul nsw i32 %156, %157
  %arrayidx19.19.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.110.3 = getelementptr inbounds [4 x i32]* %arrayidx19.19.3, i32 0, i64 1
  %158 = load i32* %arrayidx20.110.3, align 4
  %add.111.3 = add nsw i32 %158, %mul.17.3
  store i32 %add.111.3, i32* %arrayidx20.110.3, align 4
  br label %for.inc.112.3

for.inc.112.3:                                    ; preds = %for.body8.1.3
  %arrayidx11.1.1.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.1.1.3 = getelementptr inbounds [4 x i32]* %arrayidx11.1.1.3, i32 0, i64 1
  %159 = load i32* %arrayidx12.1.1.3, align 4
  %arrayidx15.1.1.3 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.1.3 = getelementptr inbounds [4 x i32]* %arrayidx15.1.1.3, i32 0, i64 1
  %160 = load i32* %arrayidx16.1.1.3, align 4
  %mul.1.1.3 = mul nsw i32 %159, %160
  %arrayidx19.1.1.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.1.1.3 = getelementptr inbounds [4 x i32]* %arrayidx19.1.1.3, i32 0, i64 1
  %161 = load i32* %arrayidx20.1.1.3, align 4
  %add.1.1.3 = add nsw i32 %161, %mul.1.1.3
  store i32 %add.1.1.3, i32* %arrayidx20.1.1.3, align 4
  br label %for.inc.1.1.3

for.inc.1.1.3:                                    ; preds = %for.inc.112.3
  %arrayidx11.2.1.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.2.1.3 = getelementptr inbounds [4 x i32]* %arrayidx11.2.1.3, i32 0, i64 2
  %162 = load i32* %arrayidx12.2.1.3, align 4
  %arrayidx15.2.1.3 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.1.3 = getelementptr inbounds [4 x i32]* %arrayidx15.2.1.3, i32 0, i64 1
  %163 = load i32* %arrayidx16.2.1.3, align 4
  %mul.2.1.3 = mul nsw i32 %162, %163
  %arrayidx19.2.1.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.2.1.3 = getelementptr inbounds [4 x i32]* %arrayidx19.2.1.3, i32 0, i64 1
  %164 = load i32* %arrayidx20.2.1.3, align 4
  %add.2.1.3 = add nsw i32 %164, %mul.2.1.3
  store i32 %add.2.1.3, i32* %arrayidx20.2.1.3, align 4
  br label %for.inc.2.1.3

for.inc.2.1.3:                                    ; preds = %for.inc.1.1.3
  %arrayidx11.3.1.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.3.1.3 = getelementptr inbounds [4 x i32]* %arrayidx11.3.1.3, i32 0, i64 3
  %165 = load i32* %arrayidx12.3.1.3, align 4
  %arrayidx15.3.1.3 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.1.3 = getelementptr inbounds [4 x i32]* %arrayidx15.3.1.3, i32 0, i64 1
  %166 = load i32* %arrayidx16.3.1.3, align 4
  %mul.3.1.3 = mul nsw i32 %165, %166
  %arrayidx19.3.1.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.3.1.3 = getelementptr inbounds [4 x i32]* %arrayidx19.3.1.3, i32 0, i64 1
  %167 = load i32* %arrayidx20.3.1.3, align 4
  %add.3.1.3 = add nsw i32 %167, %mul.3.1.3
  store i32 %add.3.1.3, i32* %arrayidx20.3.1.3, align 4
  br label %for.inc.3.1.3

for.inc.3.1.3:                                    ; preds = %for.inc.2.1.3
  br label %for.inc21.1.3

for.inc21.1.3:                                    ; preds = %for.inc.3.1.3
  %arrayidx.2.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx5.2.3 = getelementptr inbounds [4 x i32]* %arrayidx.2.3, i32 0, i64 2
  store i32 %init, i32* %arrayidx5.2.3, align 4
  br label %for.body8.2.3

for.body8.2.3:                                    ; preds = %for.inc21.1.3
  %arrayidx11.214.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.215.3 = getelementptr inbounds [4 x i32]* %arrayidx11.214.3, i32 0, i64 0
  %168 = load i32* %arrayidx12.215.3, align 4
  %arrayidx16.216.3 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 2
  %169 = load i32* %arrayidx16.216.3, align 4
  %mul.217.3 = mul nsw i32 %168, %169
  %arrayidx19.219.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.220.3 = getelementptr inbounds [4 x i32]* %arrayidx19.219.3, i32 0, i64 2
  %170 = load i32* %arrayidx20.220.3, align 4
  %add.221.3 = add nsw i32 %170, %mul.217.3
  store i32 %add.221.3, i32* %arrayidx20.220.3, align 4
  br label %for.inc.222.3

for.inc.222.3:                                    ; preds = %for.body8.2.3
  %arrayidx11.1.2.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.1.2.3 = getelementptr inbounds [4 x i32]* %arrayidx11.1.2.3, i32 0, i64 1
  %171 = load i32* %arrayidx12.1.2.3, align 4
  %arrayidx15.1.2.3 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.2.3 = getelementptr inbounds [4 x i32]* %arrayidx15.1.2.3, i32 0, i64 2
  %172 = load i32* %arrayidx16.1.2.3, align 4
  %mul.1.2.3 = mul nsw i32 %171, %172
  %arrayidx19.1.2.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.1.2.3 = getelementptr inbounds [4 x i32]* %arrayidx19.1.2.3, i32 0, i64 2
  %173 = load i32* %arrayidx20.1.2.3, align 4
  %add.1.2.3 = add nsw i32 %173, %mul.1.2.3
  store i32 %add.1.2.3, i32* %arrayidx20.1.2.3, align 4
  br label %for.inc.1.2.3

for.inc.1.2.3:                                    ; preds = %for.inc.222.3
  %arrayidx11.2.2.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.2.2.3 = getelementptr inbounds [4 x i32]* %arrayidx11.2.2.3, i32 0, i64 2
  %174 = load i32* %arrayidx12.2.2.3, align 4
  %arrayidx15.2.2.3 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.2.3 = getelementptr inbounds [4 x i32]* %arrayidx15.2.2.3, i32 0, i64 2
  %175 = load i32* %arrayidx16.2.2.3, align 4
  %mul.2.2.3 = mul nsw i32 %174, %175
  %arrayidx19.2.2.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.2.2.3 = getelementptr inbounds [4 x i32]* %arrayidx19.2.2.3, i32 0, i64 2
  %176 = load i32* %arrayidx20.2.2.3, align 4
  %add.2.2.3 = add nsw i32 %176, %mul.2.2.3
  store i32 %add.2.2.3, i32* %arrayidx20.2.2.3, align 4
  br label %for.inc.2.2.3

for.inc.2.2.3:                                    ; preds = %for.inc.1.2.3
  %arrayidx11.3.2.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.3.2.3 = getelementptr inbounds [4 x i32]* %arrayidx11.3.2.3, i32 0, i64 3
  %177 = load i32* %arrayidx12.3.2.3, align 4
  %arrayidx15.3.2.3 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.2.3 = getelementptr inbounds [4 x i32]* %arrayidx15.3.2.3, i32 0, i64 2
  %178 = load i32* %arrayidx16.3.2.3, align 4
  %mul.3.2.3 = mul nsw i32 %177, %178
  %arrayidx19.3.2.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.3.2.3 = getelementptr inbounds [4 x i32]* %arrayidx19.3.2.3, i32 0, i64 2
  %179 = load i32* %arrayidx20.3.2.3, align 4
  %add.3.2.3 = add nsw i32 %179, %mul.3.2.3
  store i32 %add.3.2.3, i32* %arrayidx20.3.2.3, align 4
  br label %for.inc.3.2.3

for.inc.3.2.3:                                    ; preds = %for.inc.2.2.3
  br label %for.inc21.2.3

for.inc21.2.3:                                    ; preds = %for.inc.3.2.3
  %arrayidx.3.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx5.3.3 = getelementptr inbounds [4 x i32]* %arrayidx.3.3, i32 0, i64 3
  store i32 %init, i32* %arrayidx5.3.3, align 4
  br label %for.body8.3.3

for.body8.3.3:                                    ; preds = %for.inc21.2.3
  %arrayidx11.324.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.325.3 = getelementptr inbounds [4 x i32]* %arrayidx11.324.3, i32 0, i64 0
  %180 = load i32* %arrayidx12.325.3, align 4
  %arrayidx16.326.3 = getelementptr inbounds [4 x i32]* %b, i32 0, i64 3
  %181 = load i32* %arrayidx16.326.3, align 4
  %mul.327.3 = mul nsw i32 %180, %181
  %arrayidx19.329.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.330.3 = getelementptr inbounds [4 x i32]* %arrayidx19.329.3, i32 0, i64 3
  %182 = load i32* %arrayidx20.330.3, align 4
  %add.331.3 = add nsw i32 %182, %mul.327.3
  store i32 %add.331.3, i32* %arrayidx20.330.3, align 4
  br label %for.inc.332.3

for.inc.332.3:                                    ; preds = %for.body8.3.3
  %arrayidx11.1.3.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.1.3.3 = getelementptr inbounds [4 x i32]* %arrayidx11.1.3.3, i32 0, i64 1
  %183 = load i32* %arrayidx12.1.3.3, align 4
  %arrayidx15.1.3.3 = getelementptr inbounds [4 x i32]* %b, i64 1
  %arrayidx16.1.3.3 = getelementptr inbounds [4 x i32]* %arrayidx15.1.3.3, i32 0, i64 3
  %184 = load i32* %arrayidx16.1.3.3, align 4
  %mul.1.3.3 = mul nsw i32 %183, %184
  %arrayidx19.1.3.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.1.3.3 = getelementptr inbounds [4 x i32]* %arrayidx19.1.3.3, i32 0, i64 3
  %185 = load i32* %arrayidx20.1.3.3, align 4
  %add.1.3.3 = add nsw i32 %185, %mul.1.3.3
  store i32 %add.1.3.3, i32* %arrayidx20.1.3.3, align 4
  br label %for.inc.1.3.3

for.inc.1.3.3:                                    ; preds = %for.inc.332.3
  %arrayidx11.2.3.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.2.3.3 = getelementptr inbounds [4 x i32]* %arrayidx11.2.3.3, i32 0, i64 2
  %186 = load i32* %arrayidx12.2.3.3, align 4
  %arrayidx15.2.3.3 = getelementptr inbounds [4 x i32]* %b, i64 2
  %arrayidx16.2.3.3 = getelementptr inbounds [4 x i32]* %arrayidx15.2.3.3, i32 0, i64 3
  %187 = load i32* %arrayidx16.2.3.3, align 4
  %mul.2.3.3 = mul nsw i32 %186, %187
  %arrayidx19.2.3.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.2.3.3 = getelementptr inbounds [4 x i32]* %arrayidx19.2.3.3, i32 0, i64 3
  %188 = load i32* %arrayidx20.2.3.3, align 4
  %add.2.3.3 = add nsw i32 %188, %mul.2.3.3
  store i32 %add.2.3.3, i32* %arrayidx20.2.3.3, align 4
  br label %for.inc.2.3.3

for.inc.2.3.3:                                    ; preds = %for.inc.1.3.3
  %arrayidx11.3.3.3 = getelementptr inbounds [4 x i32]* %a, i64 3
  %arrayidx12.3.3.3 = getelementptr inbounds [4 x i32]* %arrayidx11.3.3.3, i32 0, i64 3
  %189 = load i32* %arrayidx12.3.3.3, align 4
  %arrayidx15.3.3.3 = getelementptr inbounds [4 x i32]* %b, i64 3
  %arrayidx16.3.3.3 = getelementptr inbounds [4 x i32]* %arrayidx15.3.3.3, i32 0, i64 3
  %190 = load i32* %arrayidx16.3.3.3, align 4
  %mul.3.3.3 = mul nsw i32 %189, %190
  %arrayidx19.3.3.3 = getelementptr inbounds [4 x i32]* %c, i64 3
  %arrayidx20.3.3.3 = getelementptr inbounds [4 x i32]* %arrayidx19.3.3.3, i32 0, i64 3
  %191 = load i32* %arrayidx20.3.3.3, align 4
  %add.3.3.3 = add nsw i32 %191, %mul.3.3.3
  store i32 %add.3.3.3, i32* %arrayidx20.3.3.3, align 4
  br label %for.inc.3.3.3

for.inc.3.3.3:                                    ; preds = %for.inc.2.3.3
  br label %for.inc21.3.3

for.inc21.3.3:                                    ; preds = %for.inc.3.3.3
  br label %for.inc24.3

for.inc24.3:                                      ; preds = %for.inc21.3.3
  ret void
}
