; ModuleID = 'mathFun.cpp'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

define void @_Z7mathFunfRf(float %x, float* %y) nounwind {
entry:
  %x.addr = alloca float, align 4
  %y.addr = alloca float*, align 4
  store float %x, float* %x.addr, align 4
  store float* %y, float** %y.addr, align 4
  %0 = load float* %x.addr, align 4
  %conv = fpext float %0 to double
  %call = call double @sin(double %conv) nounwind readnone
  %conv1 = fptrunc double %call to float
  %1 = load float** %y.addr, align 4
  store float %conv1, float* %1, align 4
  ret void
}

declare double @sin(double) nounwind readnone
