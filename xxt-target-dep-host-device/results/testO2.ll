
; __CLANG_OFFLOAD_BUNDLE____START__ openmp-nvptx64-nvidia-cuda
; ModuleID = '/home/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-target-dep-host-device/test.c'
source_filename = "/home/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-target-dep-host-device/test.c"
target datalayout = "e-i64:64-i128:128-v16:16-v32:32-n16:32:64"
target triple = "nvptx64-nvidia-cuda"

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3, !4, !4, !4, !4, !4, !4, !4, !4, !4, !4}
!nvvm.internalize.after.link = !{}
!nvvmir.version = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!nvvm.annotations = !{!6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8, !6, !7, !6, !8, !8, !8, !8, !9, !9, !8}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 4, !"nvvm-reflect-ftz", i32 0}
!3 = !{!"clang version 7.0.0 (http://llvm.org/git/clang.git 54d71f0ca9e6bbb7f8688abadf9d1805b9babae8) (http://llvm.org/git/llvm.git ac8c393bd50a8d2b3f62a149bf97c37659e3c4e9)"}
!4 = !{!"clang version 7.0.0 (https://github.com/llvm-mirror/clang 92341baa80c483ae339e776cfa4004b4949a69b0) (https://github.com/llvm-mirror/llvm 4965d63ae58494636eef5922eba2394f87cfac46)"}
!5 = !{i32 1, i32 4}
!6 = !{null, !"align", i32 8}
!7 = !{null, !"align", i32 8, !"align", i32 65544, !"align", i32 131080}
!8 = !{null, !"align", i32 16}
!9 = !{null, !"align", i32 16, !"align", i32 65552, !"align", i32 131088}

; __CLANG_OFFLOAD_BUNDLE____END__ openmp-nvptx64-nvidia-cuda

; __CLANG_OFFLOAD_BUNDLE____START__ host-powerpc64le-ibm-linux-gnu
; ModuleID = '/tmp/test-70fbba.bc'
source_filename = "/home/gbercea/patch-compiler/src/projects/openmp/libomptarget/omptests/t-target-dep-host-device/test.c"
target datalayout = "e-m:e-i64:64-n32:64"
target triple = "powerpc64le-ibm-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { [1 x i8*], [1 x i8*], [1 x i64] }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t, %struct..kmp_privates.t.4 }
%struct..kmp_privates.t.4 = type { [1 x i8*], [1 x i8*], [1 x i64] }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.offload_maptypes = private unnamed_addr constant [1 x i64] [i64 33]
@.offload_maptypes.5 = private unnamed_addr constant [1 x i64] [i64 34]
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 322, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@str = private unnamed_addr constant [17 x i8] c"horrible failure\00"
@str.11 = private unnamed_addr constant [8 x i8] c"success\00"

; Function Attrs: nounwind
define signext i32 @main(i32 signext %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #3
  store i32 1, i32* %a, align 4, !tbaa !3
  %1 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #3
  store i32 2, i32* %b, align 4, !tbaa !3
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @0, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %a, i32* nonnull %b) #3
  %2 = load i32, i32* %b, align 4, !tbaa !3
  %cmp = icmp eq i32 %2, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %puts2 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str.11, i64 0, i64 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %puts = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #3
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: norecurse nounwind
define internal void @.omp_outlined.(i32* noalias nocapture readonly %.global_tid., i32* noalias nocapture readnone %.bound_tid., i32* dereferenceable(4) %a, i32* dereferenceable(4) %b) #2 {
entry:
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %.dep.arr.addr6 = alloca [1 x %struct.kmp_depend_info], align 8
  %0 = load i32, i32* %.global_tid., align 4, !tbaa !3
  %1 = tail call i32 @__kmpc_single(%struct.ident_t* nonnull @0, i32 %0) #3
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %omp_if.end, label %omp_if.then

omp_if.then:                                      ; preds = %entry
  %3 = tail call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @0, i32 %0, i32 1, i64 64, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #3
  %.offload_baseptrs.sroa.0.0..sroa_idx10 = getelementptr inbounds i8, i8* %3, i64 40
  %.offload_baseptrs.sroa.0.0..sroa_cast = bitcast i8* %.offload_baseptrs.sroa.0.0..sroa_idx10 to i32**
  store i32* %a, i32** %.offload_baseptrs.sroa.0.0..sroa_cast, align 8
  %.offload_ptrs.sroa.0.0..sroa_idx9 = getelementptr inbounds i8, i8* %3, i64 48
  %.offload_ptrs.sroa.0.0..sroa_cast = bitcast i8* %.offload_ptrs.sroa.0.0..sroa_idx9 to i32**
  store i32* %a, i32** %.offload_ptrs.sroa.0.0..sroa_cast, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 56
  %5 = bitcast i8* %4 to i64*
  store i64 4, i64* %5, align 8, !tbaa !7
  %6 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, i32 0
  %7 = ptrtoint i32* %a to i64
  store i64 %7, i64* %6, align 8, !tbaa !8
  %8 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, i32 1
  store i64 4, i64* %8, align 8, !tbaa !11
  %9 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, i32 2
  store i8 3, i8* %9, align 8, !tbaa !12
  %10 = bitcast [1 x %struct.kmp_depend_info]* %.dep.arr.addr to i8*
  %11 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @0, i32 %0, i8* %3, i32 1, i8* nonnull %10, i32 0, i8* null) #3
  %12 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @0, i32 %0, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)) #3
  %13 = bitcast i8* %12 to i32***
  %14 = load i32**, i32*** %13, align 8, !tbaa !13
  store i32* %b, i32** %14, align 8
  %15 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, i32 0
  store i64 %7, i64* %15, align 8, !tbaa !8
  %16 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, i32 1
  store i64 4, i64* %16, align 8, !tbaa !11
  %17 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, i32 2
  store i8 3, i8* %17, align 8, !tbaa !12
  %18 = bitcast [1 x %struct.kmp_depend_info]* %.dep.arr.addr2 to i8*
  %19 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @0, i32 %0, i8* %12, i32 1, i8* nonnull %18, i32 0, i8* null) #3
  %20 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* nonnull @0, i32 %0, i32 1, i64 64, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..8 to i32 (i32, i8*)*)) #3
  %.offload_baseptrs3.sroa.0.0..sroa_idx8 = getelementptr inbounds i8, i8* %20, i64 40
  %.offload_baseptrs3.sroa.0.0..sroa_cast = bitcast i8* %.offload_baseptrs3.sroa.0.0..sroa_idx8 to i32**
  store i32* %a, i32** %.offload_baseptrs3.sroa.0.0..sroa_cast, align 8
  %.offload_ptrs4.sroa.0.0..sroa_idx7 = getelementptr inbounds i8, i8* %20, i64 48
  %.offload_ptrs4.sroa.0.0..sroa_cast = bitcast i8* %.offload_ptrs4.sroa.0.0..sroa_idx7 to i32**
  store i32* %a, i32** %.offload_ptrs4.sroa.0.0..sroa_cast, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 56
  %22 = bitcast i8* %21 to i64*
  store i64 4, i64* %22, align 8, !tbaa !7
  %23 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr6, i64 0, i64 0, i32 0
  store i64 %7, i64* %23, align 8, !tbaa !8
  %24 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr6, i64 0, i64 0, i32 1
  store i64 4, i64* %24, align 8, !tbaa !11
  %25 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr6, i64 0, i64 0, i32 2
  store i8 1, i8* %25, align 8, !tbaa !12
  %26 = bitcast [1 x %struct.kmp_depend_info]* %.dep.arr.addr6 to i8*
  %27 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* nonnull @0, i32 %0, i8* %20, i32 1, i8* nonnull %26, i32 0, i8* null) #3
  call void @__kmpc_end_single(%struct.ident_t* nonnull @0, i32 %0) #3
  br label %omp_if.end

omp_if.end:                                       ; preds = %entry, %omp_if.then
  call void @__kmpc_barrier(%struct.ident_t* nonnull @1, i32 %0) #3
  ret void
}

declare i32 @__kmpc_single(%struct.ident_t*, i32) local_unnamed_addr

declare void @__kmpc_end_single(%struct.ident_t*, i32) local_unnamed_addr

declare void @__tgt_target_data_begin_nowait(i64, i32, i8**, i8**, i64*, i64*) local_unnamed_addr

; Function Attrs: norecurse nounwind
define internal signext i32 @.omp_task_entry.(i32 signext, %struct.kmp_task_t_with_privates* noalias) #2 {
entry:
  %2 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 1, i32 0, i64 0
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 1, i32 1, i64 0
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %1, i64 0, i32 1, i32 2, i64 0
  tail call void @__tgt_target_data_begin_nowait(i64 -1, i32 1, i8** nonnull %2, i8** nonnull %3, i64* nonnull %4, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @.offload_maptypes, i64 0, i64 0)) #3
  ret i32 0
}

declare i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*) local_unnamed_addr

declare i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*) local_unnamed_addr

; Function Attrs: norecurse nounwind
define internal signext i32 @.omp_task_entry..3(i32 signext, %struct.kmp_task_t_with_privates.1* noalias nocapture readonly) #2 {
entry:
  %2 = bitcast %struct.kmp_task_t_with_privates.1* %1 to %struct.anon.0**
  %3 = load %struct.anon.0*, %struct.anon.0** %2, align 8, !tbaa !13
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %3, i64 0, i32 0
  %5 = load i32*, i32** %4, align 8, !tbaa !17, !alias.scope !19
  %6 = load i32, i32* %5, align 4, !tbaa !3, !noalias !19
  %inc.i = add nsw i32 %6, 1
  store i32 %inc.i, i32* %5, align 4, !tbaa !3, !noalias !19
  ret i32 0
}

declare void @__tgt_target_data_end_nowait(i64, i32, i8**, i8**, i64*, i64*) local_unnamed_addr

; Function Attrs: norecurse nounwind
define internal signext i32 @.omp_task_entry..8(i32 signext, %struct.kmp_task_t_with_privates.3* noalias) #2 {
entry:
  %2 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %1, i64 0, i32 1, i32 0, i64 0
  %3 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %1, i64 0, i32 1, i32 1, i64 0
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %1, i64 0, i32 1, i32 2, i64 0
  tail call void @__tgt_target_data_end_nowait(i64 -1, i32 1, i8** nonnull %2, i8** nonnull %3, i64* nonnull %4, i64* getelementptr inbounds ([1 x i64], [1 x i64]* @.offload_maptypes.5, i64 0, i64 0)) #3
  ret i32 0
}

declare void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #3

attributes #0 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pwr8" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+power8-vector,+vsx,-power9-vector,-qpx" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { norecurse nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="pwr8" "target-features"="+altivec,+bpermd,+crypto,+direct-move,+extdiv,+htm,+power8-vector,+vsx,-power9-vector,-qpx" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 7.0.0 (http://llvm.org/git/clang.git 54d71f0ca9e6bbb7f8688abadf9d1805b9babae8) (http://llvm.org/git/llvm.git ac8c393bd50a8d2b3f62a149bf97c37659e3c4e9)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !10, i64 0}
!9 = !{!"kmp_depend_info", !10, i64 0, !10, i64 8, !5, i64 16}
!10 = !{!"long", !5, i64 0}
!11 = !{!9, !10, i64 8}
!12 = !{!9, !5, i64 16}
!13 = !{!14, !16, i64 0}
!14 = !{!"kmp_task_t_with_privates", !15, i64 0}
!15 = !{!"kmp_task_t", !16, i64 0, !16, i64 8, !4, i64 16, !5, i64 24, !5, i64 32}
!16 = !{!"any pointer", !5, i64 0}
!17 = !{!18, !16, i64 0}
!18 = !{!"", !16, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !".omp_outlined..2: %__context"}
!21 = distinct !{!21, !".omp_outlined..2"}

; __CLANG_OFFLOAD_BUNDLE____END__ host-powerpc64le-ibm-linux-gnu
