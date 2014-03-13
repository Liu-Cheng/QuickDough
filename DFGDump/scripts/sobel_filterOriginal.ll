; ModuleID = 'sobel_filter.cpp'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @_Z12sobel_filteriiiiiiiiiPA5_ii(i32 %w0, i32 %w1, i32 %w2, i32 %w3, i32 %w4, i32 %w5, i32 %w6, i32 %w7, i32 %w8, [5 x i32]* %image1, i32 %pixel_value_init) nounwind uwtable {
entry:
  %w0.addr = alloca i32, align 4
  %w1.addr = alloca i32, align 4
  %w2.addr = alloca i32, align 4
  %w3.addr = alloca i32, align 4
  %w4.addr = alloca i32, align 4
  %w5.addr = alloca i32, align 4
  %w6.addr = alloca i32, align 4
  %w7.addr = alloca i32, align 4
  %w8.addr = alloca i32, align 4
  %image1.addr = alloca [5 x i32]*, align 8
  %pixel_value_init.addr = alloca i32, align 4
  %pixel_value1 = alloca i32, align 4
  %pixel_value2 = alloca i32, align 4
  %pixel_value3 = alloca i32, align 4
  %pixel_value = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 %w0, i32* %w0.addr, align 4
  store i32 %w1, i32* %w1.addr, align 4
  store i32 %w2, i32* %w2.addr, align 4
  store i32 %w3, i32* %w3.addr, align 4
  store i32 %w4, i32* %w4.addr, align 4
  store i32 %w5, i32* %w5.addr, align 4
  store i32 %w6, i32* %w6.addr, align 4
  store i32 %w7, i32* %w7.addr, align 4
  store i32 %w8, i32* %w8.addr, align 4
  store [5 x i32]* %image1, [5 x i32]** %image1.addr, align 8
  store i32 %pixel_value_init, i32* %pixel_value_init.addr, align 4
  %0 = load i32* %pixel_value_init.addr, align 4
  store i32 %0, i32* %pixel_value, align 4
  store i32 1, i32* %y, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc65, %entry
  %1 = load i32* %y, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end67

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %x, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32* %x, align 4
  %cmp2 = icmp slt i32 %2, 4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32* %w0.addr, align 4
  %4 = load i32* %x, align 4
  %sub = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub to i64
  %5 = load i32* %y, align 4
  %sub4 = sub nsw i32 %5, 1
  %idxprom5 = sext i32 %sub4 to i64
  %6 = load [5 x i32]** %image1.addr, align 8
  %arrayidx = getelementptr inbounds [5 x i32]* %6, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [5 x i32]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i32* %arrayidx6, align 4
  %mul = mul nsw i32 %3, %7
  %8 = load i32* %w1.addr, align 4
  %9 = load i32* %x, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i32* %y, align 4
  %sub8 = sub nsw i32 %10, 1
  %idxprom9 = sext i32 %sub8 to i64
  %11 = load [5 x i32]** %image1.addr, align 8
  %arrayidx10 = getelementptr inbounds [5 x i32]* %11, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [5 x i32]* %arrayidx10, i32 0, i64 %idxprom7
  %12 = load i32* %arrayidx11, align 4
  %mul12 = mul nsw i32 %8, %12
  %add = add nsw i32 %mul, %mul12
  %13 = load i32* %w2.addr, align 4
  %14 = load i32* %x, align 4
  %add13 = add nsw i32 %14, 1
  %idxprom14 = sext i32 %add13 to i64
  %15 = load i32* %y, align 4
  %sub15 = sub nsw i32 %15, 1
  %idxprom16 = sext i32 %sub15 to i64
  %16 = load [5 x i32]** %image1.addr, align 8
  %arrayidx17 = getelementptr inbounds [5 x i32]* %16, i64 %idxprom16
  %arrayidx18 = getelementptr inbounds [5 x i32]* %arrayidx17, i32 0, i64 %idxprom14
  %17 = load i32* %arrayidx18, align 4
  %mul19 = mul nsw i32 %13, %17
  %add20 = add nsw i32 %add, %mul19
  store i32 %add20, i32* %pixel_value1, align 4
  %18 = load i32* %w3.addr, align 4
  %19 = load i32* %x, align 4
  %sub21 = sub nsw i32 %19, 1
  %idxprom22 = sext i32 %sub21 to i64
  %20 = load i32* %y, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load [5 x i32]** %image1.addr, align 8
  %arrayidx24 = getelementptr inbounds [5 x i32]* %21, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [5 x i32]* %arrayidx24, i32 0, i64 %idxprom22
  %22 = load i32* %arrayidx25, align 4
  %mul26 = mul nsw i32 %18, %22
  %23 = load i32* %w4.addr, align 4
  %24 = load i32* %x, align 4
  %idxprom27 = sext i32 %24 to i64
  %25 = load i32* %y, align 4
  %idxprom28 = sext i32 %25 to i64
  %26 = load [5 x i32]** %image1.addr, align 8
  %arrayidx29 = getelementptr inbounds [5 x i32]* %26, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [5 x i32]* %arrayidx29, i32 0, i64 %idxprom27
  %27 = load i32* %arrayidx30, align 4
  %mul31 = mul nsw i32 %23, %27
  %add32 = add nsw i32 %mul26, %mul31
  %28 = load i32* %w5.addr, align 4
  %29 = load i32* %x, align 4
  %add33 = add nsw i32 %29, 1
  %idxprom34 = sext i32 %add33 to i64
  %30 = load i32* %y, align 4
  %idxprom35 = sext i32 %30 to i64
  %31 = load [5 x i32]** %image1.addr, align 8
  %arrayidx36 = getelementptr inbounds [5 x i32]* %31, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [5 x i32]* %arrayidx36, i32 0, i64 %idxprom34
  %32 = load i32* %arrayidx37, align 4
  %mul38 = mul nsw i32 %28, %32
  %add39 = add nsw i32 %add32, %mul38
  store i32 %add39, i32* %pixel_value2, align 4
  %33 = load i32* %w6.addr, align 4
  %34 = load i32* %x, align 4
  %sub40 = sub nsw i32 %34, 1
  %idxprom41 = sext i32 %sub40 to i64
  %35 = load i32* %y, align 4
  %add42 = add nsw i32 %35, 1
  %idxprom43 = sext i32 %add42 to i64
  %36 = load [5 x i32]** %image1.addr, align 8
  %arrayidx44 = getelementptr inbounds [5 x i32]* %36, i64 %idxprom43
  %arrayidx45 = getelementptr inbounds [5 x i32]* %arrayidx44, i32 0, i64 %idxprom41
  %37 = load i32* %arrayidx45, align 4
  %mul46 = mul nsw i32 %33, %37
  %38 = load i32* %w7.addr, align 4
  %39 = load i32* %x, align 4
  %idxprom47 = sext i32 %39 to i64
  %40 = load i32* %y, align 4
  %add48 = add nsw i32 %40, 1
  %idxprom49 = sext i32 %add48 to i64
  %41 = load [5 x i32]** %image1.addr, align 8
  %arrayidx50 = getelementptr inbounds [5 x i32]* %41, i64 %idxprom49
  %arrayidx51 = getelementptr inbounds [5 x i32]* %arrayidx50, i32 0, i64 %idxprom47
  %42 = load i32* %arrayidx51, align 4
  %mul52 = mul nsw i32 %38, %42
  %add53 = add nsw i32 %mul46, %mul52
  %43 = load i32* %w8.addr, align 4
  %44 = load i32* %x, align 4
  %add54 = add nsw i32 %44, 1
  %idxprom55 = sext i32 %add54 to i64
  %45 = load i32* %y, align 4
  %add56 = add nsw i32 %45, 1
  %idxprom57 = sext i32 %add56 to i64
  %46 = load [5 x i32]** %image1.addr, align 8
  %arrayidx58 = getelementptr inbounds [5 x i32]* %46, i64 %idxprom57
  %arrayidx59 = getelementptr inbounds [5 x i32]* %arrayidx58, i32 0, i64 %idxprom55
  %47 = load i32* %arrayidx59, align 4
  %mul60 = mul nsw i32 %43, %47
  %add61 = add nsw i32 %add53, %mul60
  store i32 %add61, i32* %pixel_value3, align 4
  %48 = load i32* %pixel_value, align 4
  %49 = load i32* %pixel_value1, align 4
  %add62 = add nsw i32 %48, %49
  %50 = load i32* %pixel_value2, align 4
  %add63 = add nsw i32 %add62, %50
  %51 = load i32* %pixel_value3, align 4
  %add64 = add nsw i32 %add63, %51
  store i32 %add64, i32* %pixel_value, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %52 = load i32* %x, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond1

for.end:                                          ; preds = %for.cond1
  br label %for.inc65

for.inc65:                                        ; preds = %for.end
  %53 = load i32* %y, align 4
  %inc66 = add nsw i32 %53, 1
  store i32 %inc66, i32* %y, align 4
  br label %for.cond

for.end67:                                        ; preds = %for.cond
  ret void
}
