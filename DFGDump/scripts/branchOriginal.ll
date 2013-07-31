; ModuleID = 'branch.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

define i32 @_Z6branchiii(i32 %a, i32 %b, i32 %sel) nounwind {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %sel.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %sel, i32* %sel.addr, align 4
  store i32 0, i32* %result, align 4
  %0 = load i32* %sel.addr, align 4
  %cmp = icmp slt i32 %0, 30
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32* %a.addr, align 4
  %2 = load i32* %b.addr, align 4
  %mul = mul nsw i32 %1, %2
  store i32 %mul, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32* %result, align 4
  ret i32 %3
}
