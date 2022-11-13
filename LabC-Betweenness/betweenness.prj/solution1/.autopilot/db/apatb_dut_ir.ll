; ModuleID = '/home/yhp/Documents/Class/111-1_HLS/LabC/ccc/problems/betweenness/betweenness.prj/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_dut_ir(i32 %numVert, i32 %numEdge, i32* noalias nocapture nonnull readonly %offset, i32* noalias nocapture nonnull readonly %column, float* noalias nocapture nonnull %btwn, i32* noalias nocapture nonnull readonly %tmp0, i32* noalias nocapture nonnull readonly %tmp1, i32* noalias nocapture nonnull readonly %tmp2, i32* noalias nocapture nonnull readonly %tmp3) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 400000)
  %offset_copy = bitcast i8* %malloccall to [100000 x i32]*
  %malloccall1 = tail call i8* @malloc(i64 400000)
  %column_copy = bitcast i8* %malloccall1 to [100000 x i32]*
  %malloccall2 = tail call i8* @malloc(i64 400000)
  %btwn_copy = bitcast i8* %malloccall2 to [100000 x float]*
  %malloccall3 = tail call i8* @malloc(i64 400000)
  %tmp0_copy = bitcast i8* %malloccall3 to [100000 x i32]*
  %malloccall4 = tail call i8* @malloc(i64 400000)
  %tmp1_copy = bitcast i8* %malloccall4 to [100000 x i32]*
  %malloccall5 = tail call i8* @malloc(i64 400000)
  %tmp2_copy = bitcast i8* %malloccall5 to [100000 x i32]*
  %malloccall6 = tail call i8* @malloc(i64 400000)
  %tmp3_copy = bitcast i8* %malloccall6 to [100000 x i32]*
  %0 = bitcast i32* %offset to [100000 x i32]*
  %1 = bitcast i32* %column to [100000 x i32]*
  %2 = bitcast float* %btwn to [100000 x float]*
  %3 = bitcast i32* %tmp0 to [100000 x i32]*
  %4 = bitcast i32* %tmp1 to [100000 x i32]*
  %5 = bitcast i32* %tmp2 to [100000 x i32]*
  %6 = bitcast i32* %tmp3 to [100000 x i32]*
  call fastcc void @copy_in([100000 x i32]* nonnull %0, [100000 x i32]* %offset_copy, [100000 x i32]* nonnull %1, [100000 x i32]* %column_copy, [100000 x float]* nonnull %2, [100000 x float]* %btwn_copy, [100000 x i32]* nonnull %3, [100000 x i32]* %tmp0_copy, [100000 x i32]* nonnull %4, [100000 x i32]* %tmp1_copy, [100000 x i32]* nonnull %5, [100000 x i32]* %tmp2_copy, [100000 x i32]* nonnull %6, [100000 x i32]* %tmp3_copy)
  %7 = getelementptr inbounds [100000 x i32], [100000 x i32]* %offset_copy, i32 0, i32 0
  %8 = getelementptr inbounds [100000 x i32], [100000 x i32]* %column_copy, i32 0, i32 0
  %9 = getelementptr inbounds [100000 x float], [100000 x float]* %btwn_copy, i32 0, i32 0
  %10 = getelementptr inbounds [100000 x i32], [100000 x i32]* %tmp0_copy, i32 0, i32 0
  %11 = getelementptr inbounds [100000 x i32], [100000 x i32]* %tmp1_copy, i32 0, i32 0
  %12 = getelementptr inbounds [100000 x i32], [100000 x i32]* %tmp2_copy, i32 0, i32 0
  %13 = getelementptr inbounds [100000 x i32], [100000 x i32]* %tmp3_copy, i32 0, i32 0
  call void @apatb_dut_hw(i32 %numVert, i32 %numEdge, i32* %7, i32* %8, float* %9, i32* %10, i32* %11, i32* %12, i32* %13)
  call void @copy_back([100000 x i32]* %0, [100000 x i32]* %offset_copy, [100000 x i32]* %1, [100000 x i32]* %column_copy, [100000 x float]* %2, [100000 x float]* %btwn_copy, [100000 x i32]* %3, [100000 x i32]* %tmp0_copy, [100000 x i32]* %4, [100000 x i32]* %tmp1_copy, [100000 x i32]* %5, [100000 x i32]* %tmp2_copy, [100000 x i32]* %6, [100000 x i32]* %tmp3_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  tail call void @free(i8* %malloccall4)
  tail call void @free(i8* %malloccall5)
  tail call void @free(i8* %malloccall6)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x float]* noalias readonly, [100000 x float]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %1, [100000 x i32]* %0)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %3, [100000 x i32]* %2)
  call fastcc void @onebyonecpy_hls.p0a100000f32([100000 x float]* %5, [100000 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %7, [100000 x i32]* %6)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %9, [100000 x i32]* %8)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %11, [100000 x i32]* %10)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %13, [100000 x i32]* %12)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* noalias, [100000 x i32]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [100000 x i32]* %0, null
  %3 = icmp eq [100000 x i32]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100000 x i32], [100000 x i32]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [100000 x i32], [100000 x i32]* %1, i64 0, i64 %for.loop.idx1
  %5 = load i32, i32* %src.addr, align 4
  store i32 %5, i32* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 100000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a100000f32([100000 x float]* noalias, [100000 x float]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [100000 x float]* %0, null
  %3 = icmp eq [100000 x float]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [100000 x float], [100000 x float]* %0, i64 0, i64 %for.loop.idx1
  %src.addr = getelementptr [100000 x float], [100000 x float]* %1, i64 0, i64 %for.loop.idx1
  %5 = load float, float* %src.addr, align 4
  store float %5, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 100000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x float]* noalias, [100000 x float]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %0, [100000 x i32]* %1)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %2, [100000 x i32]* %3)
  call fastcc void @onebyonecpy_hls.p0a100000f32([100000 x float]* %4, [100000 x float]* %5)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %6, [100000 x i32]* %7)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %8, [100000 x i32]* %9)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %10, [100000 x i32]* %11)
  call fastcc void @onebyonecpy_hls.p0a100000i32([100000 x i32]* %12, [100000 x i32]* %13)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_dut_hw(i32, i32, i32*, i32*, float*, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x float]* noalias, [100000 x float]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly, [100000 x i32]* noalias, [100000 x i32]* noalias readonly) unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0a100000f32([100000 x float]* %4, [100000 x float]* %5)
  ret void
}

define void @dut_hw_stub_wrapper(i32, i32, i32*, i32*, float*, i32*, i32*, i32*, i32*) #4 {
entry:
  %9 = bitcast i32* %2 to [100000 x i32]*
  %10 = bitcast i32* %3 to [100000 x i32]*
  %11 = bitcast float* %4 to [100000 x float]*
  %12 = bitcast i32* %5 to [100000 x i32]*
  %13 = bitcast i32* %6 to [100000 x i32]*
  %14 = bitcast i32* %7 to [100000 x i32]*
  %15 = bitcast i32* %8 to [100000 x i32]*
  call void @copy_out([100000 x i32]* null, [100000 x i32]* %9, [100000 x i32]* null, [100000 x i32]* %10, [100000 x float]* null, [100000 x float]* %11, [100000 x i32]* null, [100000 x i32]* %12, [100000 x i32]* null, [100000 x i32]* %13, [100000 x i32]* null, [100000 x i32]* %14, [100000 x i32]* null, [100000 x i32]* %15)
  %16 = bitcast [100000 x i32]* %9 to i32*
  %17 = bitcast [100000 x i32]* %10 to i32*
  %18 = bitcast [100000 x float]* %11 to float*
  %19 = bitcast [100000 x i32]* %12 to i32*
  %20 = bitcast [100000 x i32]* %13 to i32*
  %21 = bitcast [100000 x i32]* %14 to i32*
  %22 = bitcast [100000 x i32]* %15 to i32*
  call void @dut_hw_stub(i32 %0, i32 %1, i32* %16, i32* %17, float* %18, i32* %19, i32* %20, i32* %21, i32* %22)
  call void @copy_in([100000 x i32]* null, [100000 x i32]* %9, [100000 x i32]* null, [100000 x i32]* %10, [100000 x float]* null, [100000 x float]* %11, [100000 x i32]* null, [100000 x i32]* %12, [100000 x i32]* null, [100000 x i32]* %13, [100000 x i32]* null, [100000 x i32]* %14, [100000 x i32]* null, [100000 x i32]* %15)
  ret void
}

declare void @dut_hw_stub(i32, i32, i32*, i32*, float*, i32*, i32*, i32*, i32*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
