; ModuleID = 'fun3.bc'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.Point = type { i32, i32 }

define i32 @_Z5sqdis5PointS_(%struct.Point* byval align 4 %A, %struct.Point* byval align 4 %B) nounwind {
entry:
  %x = getelementptr inbounds %struct.Point* %A, i32 0, i32 0
  %0 = load i32* %x, align 4
  %x1 = getelementptr inbounds %struct.Point* %B, i32 0, i32 0
  %1 = load i32* %x1, align 4
  %sub = sub nsw i32 %0, %1
  %x2 = getelementptr inbounds %struct.Point* %A, i32 0, i32 0
  %2 = load i32* %x2, align 4
  %x3 = getelementptr inbounds %struct.Point* %B, i32 0, i32 0
  %3 = load i32* %x3, align 4
  %sub4 = sub nsw i32 %2, %3
  %mul = mul nsw i32 %sub, %sub4
  %y = getelementptr inbounds %struct.Point* %A, i32 0, i32 1
  %4 = load i32* %y, align 4
  %y5 = getelementptr inbounds %struct.Point* %B, i32 0, i32 1
  %5 = load i32* %y5, align 4
  %sub6 = sub nsw i32 %4, %5
  %y7 = getelementptr inbounds %struct.Point* %A, i32 0, i32 1
  %6 = load i32* %y7, align 4
  %y8 = getelementptr inbounds %struct.Point* %B, i32 0, i32 1
  %7 = load i32* %y8, align 4
  %sub9 = sub nsw i32 %6, %7
  %mul10 = mul nsw i32 %sub6, %sub9
  %add = add nsw i32 %mul, %mul10
  ret i32 %add
}
