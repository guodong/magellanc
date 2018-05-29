; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.Map = type { i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"gd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"gender\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"man\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: nounwind ssp uwtable
define i32 @compar(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.Map*, align 8
  %6 = alloca %struct.Map*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.Map*
  store %struct.Map* %8, %struct.Map** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.Map*
  store %struct.Map* %10, %struct.Map** %6, align 8
  %11 = load %struct.Map*, %struct.Map** %5, align 8
  %12 = getelementptr inbounds %struct.Map, %struct.Map* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.Map*, %struct.Map** %6, align 8
  %15 = getelementptr inbounds %struct.Map, %struct.Map* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strcmp(i8* %13, i8* %16)
  ret i32 %17
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind ssp uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Map*, align 8
  %8 = alloca %struct.Map*, align 8
  %9 = alloca %struct.Map*, align 8
  %10 = alloca %struct.Map*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %13 = call i8* @malloc(i64 16)
  %14 = bitcast i8* %13 to %struct.Map*
  store %struct.Map* %14, %struct.Map** %7, align 8
  %15 = load %struct.Map*, %struct.Map** %7, align 8
  %16 = getelementptr inbounds %struct.Map, %struct.Map* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %16, align 8
  %17 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %18 = load %struct.Map*, %struct.Map** %7, align 8
  %19 = getelementptr inbounds %struct.Map, %struct.Map* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.Map*, %struct.Map** %7, align 8
  %21 = bitcast %struct.Map* %20 to i8*
  %22 = call i8* @tsearch(i8* %21, i8** %6, i32 (i8*, i8*)* @compar)
  %23 = call i8* @malloc(i64 16)
  %24 = bitcast i8* %23 to %struct.Map*
  store %struct.Map* %24, %struct.Map** %8, align 8
  %25 = load %struct.Map*, %struct.Map** %8, align 8
  %26 = getelementptr inbounds %struct.Map, %struct.Map* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %26, align 8
  %27 = call i8* @strdup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %28 = load %struct.Map*, %struct.Map** %8, align 8
  %29 = getelementptr inbounds %struct.Map, %struct.Map* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.Map*, %struct.Map** %8, align 8
  %31 = bitcast %struct.Map* %30 to i8*
  %32 = call i8* @tsearch(i8* %31, i8** %6, i32 (i8*, i8*)* @compar)
  %33 = call i8* @malloc(i64 16)
  %34 = bitcast i8* %33 to %struct.Map*
  store %struct.Map* %34, %struct.Map** %9, align 8
  %35 = load %struct.Map*, %struct.Map** %9, align 8
  %36 = getelementptr inbounds %struct.Map, %struct.Map* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %36, align 8
  %37 = call i8* @malloc(i64 16)
  %38 = bitcast i8* %37 to %struct.Map*
  store %struct.Map* %38, %struct.Map** %10, align 8
  %39 = load %struct.Map*, %struct.Map** %10, align 8
  %40 = getelementptr inbounds %struct.Map, %struct.Map* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %40, align 8
  %41 = load %struct.Map*, %struct.Map** %9, align 8
  %42 = bitcast %struct.Map* %41 to i8*
  %43 = call i8* @tfind(i8* %42, i8** %6, i32 (i8*, i8*)* @compar)
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = bitcast i8* %44 to %struct.Map**
  %46 = load %struct.Map*, %struct.Map** %45, align 8
  %47 = getelementptr inbounds %struct.Map, %struct.Map* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %48)
  %50 = load %struct.Map*, %struct.Map** %10, align 8
  %51 = bitcast %struct.Map* %50 to i8*
  %52 = call i8* @tfind(i8* %51, i8** %6, i32 (i8*, i8*)* @compar)
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = bitcast i8* %53 to %struct.Map**
  %55 = load %struct.Map*, %struct.Map** %54, align 8
  %56 = getelementptr inbounds %struct.Map, %struct.Map* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %57)
  ret i32 0
}

declare i8* @malloc(i64) #1

declare i8* @strdup(i8*) #1

declare i8* @tsearch(i8*, i8**, i32 (i8*, i8*)*) #1

declare i8* @tfind(i8*, i8**, i32 (i8*, i8*)*) #1

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.9.1 (tags/RELEASE_391/final)"}
