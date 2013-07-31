; ModuleID = 'matrixMul.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

define void @_Z9matrixMuliiiiiiii(i32 %a00, i32 %a01, i32 %a10, i32 %a11, i32 %b00, i32 %b01, i32 %b10, i32 %b11) nounwind {
entry:
  %a00.addr = alloca i32, align 4
  %a01.addr = alloca i32, align 4
  %a10.addr = alloca i32, align 4
  %a11.addr = alloca i32, align 4
  %b00.addr = alloca i32, align 4
  %b01.addr = alloca i32, align 4
  %b10.addr = alloca i32, align 4
  %b11.addr = alloca i32, align 4
  %c00 = alloca i32, align 4
  %c01 = alloca i32, align 4
  %c10 = alloca i32, align 4
  %c11 = alloca i32, align 4
  store i32 %a00, i32* %a00.addr, align 4
  store i32 %a01, i32* %a01.addr, align 4
  store i32 %a10, i32* %a10.addr, align 4
  store i32 %a11, i32* %a11.addr, align 4
  store i32 %b00, i32* %b00.addr, align 4
  store i32 %b01, i32* %b01.addr, align 4
  store i32 %b10, i32* %b10.addr, align 4
  store i32 %b11, i32* %b11.addr, align 4
  %0 = load i32* %a00.addr, align 4
  %1 = load i32* %b00.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32* %a01.addr, align 4
  %3 = load i32* %b10.addr, align 4
  %mul1 = mul nsw i32 %2, %3
  %add = add nsw i32 %mul, %mul1
  store i32 %add, i32* %c00, align 4
  %4 = load i32* %a00.addr, align 4
  %5 = load i32* %b01.addr, align 4
  %mul2 = mul nsw i32 %4, %5
  %6 = load i32* %a01.addr, align 4
  %7 = load i32* %b11.addr, align 4
  %mul3 = mul nsw i32 %6, %7
  %add4 = add nsw i32 %mul2, %mul3
  store i32 %add4, i32* %c01, align 4
  %8 = load i32* %a10.addr, align 4
  %9 = load i32* %b00.addr, align 4
  %mul5 = mul nsw i32 %8, %9
  %10 = load i32* %a11.addr, align 4
  %11 = load i32* %b10.addr, align 4
  %mul6 = mul nsw i32 %10, %11
  %add7 = add nsw i32 %mul5, %mul6
  store i32 %add7, i32* %c10, align 4
  %12 = load i32* %a10.addr, align 4
  %13 = load i32* %b01.addr, align 4
  %mul8 = mul nsw i32 %12, %13
  %14 = load i32* %a11.addr, align 4
  %15 = load i32* %b11.addr, align 4
  %mul9 = mul nsw i32 %14, %15
  %add10 = add nsw i32 %mul8, %mul9
  store i32 %add10, i32* %c11, align 4
  ret void
}
