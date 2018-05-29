; ModuleID = 'test.c'
source_filename = "test.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.RoutingAction = type { %struct.Switch, %struct.Set }
%struct.Switch = type { %struct.Map }
%struct.Map = type { i8*, i32 (i8*)*, void (i8*, i32)*, i32 (i8*)* }
%struct.Set = type { i8*, void (%struct.Action*)* }
%struct.Action = type { i32, [32 x i8], %union.anon }
%union.anon = type { i32, [28 x i8] }
%struct.Packet = type { i8*, i8*, i32 }
%struct.Env = type { %struct.Switch }

; Function Attrs: nounwind ssp uwtable
define void @onPacket(%struct.RoutingAction* noalias sret, %struct.Packet* byval align 8, %struct.Env* byval align 8) #0 {
  %4 = alloca %struct.RoutingAction, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Action, align 8
  %7 = alloca %struct.Action, align 8
  %8 = getelementptr inbounds %struct.RoutingAction, %struct.RoutingAction* %4, i32 0, i32 0
  %9 = getelementptr inbounds %struct.Env, %struct.Env* %2, i32 0, i32 0
  %10 = bitcast %struct.Switch* %8 to i8*
  %11 = bitcast %struct.Switch* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 32, i32 8, i1 false)
  %12 = getelementptr inbounds %struct.Env, %struct.Env* %2, i32 0, i32 0
  %13 = getelementptr inbounds %struct.Switch, %struct.Switch* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.Map, %struct.Map* %13, i32 0, i32 3
  %15 = load i32 (i8*)*, i32 (i8*)** %14, align 8
  %16 = getelementptr inbounds %struct.Packet, %struct.Packet* %1, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 %15(i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.Env, %struct.Env* %2, i32 0, i32 0
  %22 = getelementptr inbounds %struct.Switch, %struct.Switch* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.Map, %struct.Map* %22, i32 0, i32 2
  %24 = load void (i8*, i32)*, void (i8*, i32)** %23, align 8
  %25 = getelementptr inbounds %struct.Packet, %struct.Packet* %1, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds %struct.Packet, %struct.Packet* %1, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  call void %24(i8* %26, i32 %28)
  br label %29

; <label>:29:                                     ; preds = %20, %3
  %30 = getelementptr inbounds %struct.Env, %struct.Env* %2, i32 0, i32 0
  %31 = getelementptr inbounds %struct.Switch, %struct.Switch* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.Map, %struct.Map* %31, i32 0, i32 3
  %33 = load i32 (i8*)*, i32 (i8*)** %32, align 8
  %34 = getelementptr inbounds %struct.Packet, %struct.Packet* %1, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 %33(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

; <label>:38:                                     ; preds = %29
  %39 = getelementptr inbounds %struct.Env, %struct.Env* %2, i32 0, i32 0
  %40 = getelementptr inbounds %struct.Switch, %struct.Switch* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.Map, %struct.Map* %40, i32 0, i32 1
  %42 = load i32 (i8*)*, i32 (i8*)** %41, align 8
  %43 = getelementptr inbounds %struct.Packet, %struct.Packet* %1, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 %42(i8* %44)
  store i32 %45, i32* %5, align 4
  %46 = bitcast %struct.Action* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* %46, i8 0, i64 68, i32 4, i1 false)
  %47 = getelementptr inbounds %struct.Action, %struct.Action* %6, i32 0, i32 0
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.Action, %struct.Action* %6, i32 0, i32 2
  %49 = bitcast %union.anon* %48 to i32*
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %49, align 4
  %51 = getelementptr inbounds %struct.RoutingAction, %struct.RoutingAction* %4, i32 0, i32 1
  %52 = getelementptr inbounds %struct.Set, %struct.Set* %51, i32 0, i32 1
  %53 = load void (%struct.Action*)*, void (%struct.Action*)** %52, align 8
  call void %53(%struct.Action* byval align 8 %6)
  br label %61

; <label>:54:                                     ; preds = %29
  %55 = bitcast %struct.Action* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* %55, i8 0, i64 68, i32 4, i1 false)
  %56 = bitcast i8* %55 to %struct.Action*
  %57 = getelementptr %struct.Action, %struct.Action* %56, i32 0, i32 0
  store i32 1, i32* %57
  %58 = getelementptr inbounds %struct.RoutingAction, %struct.RoutingAction* %4, i32 0, i32 1
  %59 = getelementptr inbounds %struct.Set, %struct.Set* %58, i32 0, i32 1
  %60 = load void (%struct.Action*)*, void (%struct.Action*)** %59, align 8
  call void %60(%struct.Action* byval align 8 %7)
  br label %61

; <label>:61:                                     ; preds = %54, %38
  %62 = bitcast %struct.RoutingAction* %0 to i8*
  %63 = bitcast %struct.RoutingAction* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 48, i32 8, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.9.1 (tags/RELEASE_391/final)"}
