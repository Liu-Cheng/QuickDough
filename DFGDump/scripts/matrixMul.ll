; ModuleID = 'fun3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

define void @_Z9matrixMuliiiiiiii(i32 %a00, i32 %a01, i32 %a10, i32 %a11, i32 %b00, i32 %b01, i32 %b10, i32 %b11) nounwind {
entry:
  %mul = mul nsw i32 %a00, %b00
  %mul1 = mul nsw i32 %a01, %b10
  %add = add nsw i32 %mul, %mul1
  %mul2 = mul nsw i32 %a00, %b01
  %mul3 = mul nsw i32 %a01, %b11
  %add4 = add nsw i32 %mul2, %mul3
  %mul5 = mul nsw i32 %a10, %b00
  %mul6 = mul nsw i32 %a11, %b10
  %add7 = add nsw i32 %mul5, %mul6
  %mul8 = mul nsw i32 %a10, %b01
  %mul9 = mul nsw i32 %a11, %b11
  %add10 = add nsw i32 %mul8, %mul9
  ret void
}
