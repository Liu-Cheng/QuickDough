; ModuleID = 'fun3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

define i32 @_Z6branchiii(i32 %a, i32 %b, i32 %sel) nounwind {
entry:
  %cmp = icmp slt i32 %sel, 30
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %a, %b
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %result.0 = phi i32 [ %mul, %if.then ], [ 0, %entry ]
  ret i32 %result.0
}
