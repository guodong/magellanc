; ModuleID = 'mac-learning-single-switch.cpp'
source_filename = "mac-learning-single-switch.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.12.0"

%struct.Packet = type <{ %"class.std::__1::basic_string", %"class.std::__1::basic_string", i32, [4 x i8] }>
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"class.std::__1::__libcpp_compressed_pair_imp" }
%"class.std::__1::__libcpp_compressed_pair_imp" = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" }
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__long" = type { i64, i64, i8* }
%struct.Switch = type { %"class.std::__1::map" }
%"class.std::__1::map" = type { %"class.std::__1::__tree" }
%"class.std::__1::__tree" = type { %"class.std::__1::__tree_end_node"*, %"class.std::__1::__compressed_pair.1", %"class.std::__1::__compressed_pair.5" }
%"class.std::__1::__tree_end_node" = type { %"class.std::__1::__tree_node_base"* }
%"class.std::__1::__tree_node_base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8, [7 x i8] }>
%"class.std::__1::__compressed_pair.1" = type { %"class.std::__1::__libcpp_compressed_pair_imp.2" }
%"class.std::__1::__libcpp_compressed_pair_imp.2" = type { %"class.std::__1::__tree_end_node" }
%"class.std::__1::__compressed_pair.5" = type { %"class.std::__1::__libcpp_compressed_pair_imp.6" }
%"class.std::__1::__libcpp_compressed_pair_imp.6" = type { i64 }
%"class.std::__1::__tree_node" = type { %"class.std::__1::__tree_node_base.base", [7 x i8], %"struct.std::__1::__value_type" }
%"class.std::__1::__tree_node_base.base" = type <{ %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_end_node"*, i8 }>
%"struct.std::__1::__value_type" = type { %"struct.std::__1::pair" }
%"struct.std::__1::pair" = type <{ %"class.std::__1::basic_string", i32, [4 x i8] }>
%"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short" = type { %union.anon.0, [23 x i8] }
%union.anon.0 = type { i8 }

; Function Attrs: ssp uwtable
define i32 @onPacket(%struct.Packet*, %struct.Switch*) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Switch, %struct.Switch* %1, i64 0, i32 0
  %4 = getelementptr inbounds %struct.Packet, %struct.Packet* %0, i64 0, i32 0
  %5 = tail call dereferenceable(4) i32* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEiNS_4lessIS6_EENS4_INS_4pairIKS6_iEEEEEixERSA_(%"class.std::__1::map"* %3, %"class.std::__1::basic_string"* dereferenceable(24) %4)
  %6 = load i32, i32* %5, align 4, !tbaa !2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.Packet, %struct.Packet* %0, i64 0, i32 2
  %10 = load i32, i32* %9, align 8, !tbaa !6
  %11 = tail call dereferenceable(4) i32* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEiNS_4lessIS6_EENS4_INS_4pairIKS6_iEEEEEixERSA_(%"class.std::__1::map"* %3, %"class.std::__1::basic_string"* dereferenceable(24) %4)
  store i32 %10, i32* %11, align 4, !tbaa !2
  br label %12

; <label>:12:                                     ; preds = %2, %8
  ret i32 undef
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: ssp uwtable
define linkonce_odr dereferenceable(4) i32* @_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEiNS_4lessIS6_EENS4_INS_4pairIKS6_iEEEEEixERSA_(%"class.std::__1::map"*, %"class.std::__1::basic_string"* dereferenceable(24)) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %"class.std::__1::__tree_node_base"*, align 8
  %4 = bitcast %"class.std::__1::__tree_node_base"** %3 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #7
  %5 = call dereferenceable(8) %"class.std::__1::__tree_node_base"** @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEiNS_4lessIS6_EENS4_INS_4pairIKS6_iEEEEE16__find_equal_keyERPNS_16__tree_node_baseIPvEERSA_(%"class.std::__1::map"* %0, %"class.std::__1::__tree_node_base"** nonnull dereferenceable(8) %3, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %1) #7
  %6 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %5, align 8, !tbaa !10
  %7 = bitcast %"class.std::__1::__tree_node_base"* %6 to %"class.std::__1::__tree_node"*
  %8 = icmp eq %"class.std::__1::__tree_node_base"* %6, null
  br i1 %8, label %9, label %41

; <label>:9:                                      ; preds = %2
  %10 = call i8* @_Znwm(i64 64) #8, !noalias !12
  %11 = getelementptr inbounds i8, i8* %10, i64 32
  %12 = bitcast i8* %11 to %"class.std::__1::basic_string"*
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(%"class.std::__1::basic_string"* %12, %"class.std::__1::basic_string"* nonnull dereferenceable(24) %1)
          to label %15 unwind label %13, !noalias !12

; <label>:13:                                     ; preds = %9
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %10) #9, !noalias !12
  resume { i8*, i32 } %14

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds i8, i8* %10, i64 56
  %17 = bitcast i8* %16 to i32*
  store i32 0, i32* %17, align 4, !tbaa !2, !noalias !12
  %18 = bitcast %"class.std::__1::__tree_node_base"** %3 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !10
  %20 = bitcast i8* %10 to %"class.std::__1::__tree_node"*
  %21 = bitcast i8* %10 to %"class.std::__1::__tree_node_base"*
  %22 = getelementptr inbounds i8, i8* %10, i64 16
  call void @llvm.memset.p0i8.i64(i8* nonnull %10, i8 0, i64 16, i32 8, i1 false) #7
  %23 = bitcast i8* %22 to i64*
  store i64 %19, i64* %23, align 8, !tbaa !15
  %24 = bitcast %"class.std::__1::__tree_node_base"** %5 to i8**
  store i8* %10, i8** %24, align 8, !tbaa !10
  %25 = getelementptr inbounds %"class.std::__1::map", %"class.std::__1::map"* %0, i64 0, i32 0, i32 0
  %26 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %25, align 8, !tbaa !10
  %27 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %26, i64 0, i32 0
  %28 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %27, align 8, !tbaa !18
  %29 = icmp eq %"class.std::__1::__tree_node_base"* %28, null
  br i1 %29, label %34, label %30

; <label>:30:                                     ; preds = %15
  %31 = ptrtoint %"class.std::__1::__tree_node_base"* %28 to i64
  %32 = bitcast %"class.std::__1::map"* %0 to i64*
  store i64 %31, i64* %32, align 8, !tbaa !10
  %33 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %5, align 8, !tbaa !10
  br label %34

; <label>:34:                                     ; preds = %15, %30
  %35 = phi %"class.std::__1::__tree_node_base"* [ %21, %15 ], [ %33, %30 ]
  %36 = getelementptr inbounds %"class.std::__1::map", %"class.std::__1::map"* %0, i64 0, i32 0, i32 1, i32 0, i32 0, i32 0
  %37 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %36, align 8, !tbaa !18
  call void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(%"class.std::__1::__tree_node_base"* %37, %"class.std::__1::__tree_node_base"* %35) #7
  %38 = getelementptr inbounds %"class.std::__1::map", %"class.std::__1::map"* %0, i64 0, i32 0, i32 2, i32 0, i32 0
  %39 = load i64, i64* %38, align 8, !tbaa !20
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8, !tbaa !20
  br label %41

; <label>:41:                                     ; preds = %34, %2
  %42 = phi %"class.std::__1::__tree_node"* [ %20, %34 ], [ %7, %2 ]
  %43 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %42, i64 0, i32 2, i32 0, i32 1
  call void @llvm.lifetime.end(i64 8, i8* %4) #7
  ret i32* %43
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind ssp uwtable
define linkonce_odr dereferenceable(8) %"class.std::__1::__tree_node_base"** @_ZNKSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEiNS_4lessIS6_EENS4_INS_4pairIKS6_iEEEEE16__find_equal_keyERPNS_16__tree_node_baseIPvEERSA_(%"class.std::__1::map"*, %"class.std::__1::__tree_node_base"** dereferenceable(8), %"class.std::__1::basic_string"* dereferenceable(24)) local_unnamed_addr #2 align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::__1::map", %"class.std::__1::map"* %0, i64 0, i32 0, i32 1, i32 0, i32 0
  %5 = bitcast %"class.std::__1::__tree_end_node"* %4 to %"class.std::__1::__tree_node"**
  %6 = load %"class.std::__1::__tree_node"*, %"class.std::__1::__tree_node"** %5, align 8, !tbaa !18
  %7 = icmp eq %"class.std::__1::__tree_node"* %6, null
  br i1 %7, label %82, label %8

; <label>:8:                                      ; preds = %3
  %9 = bitcast %"class.std::__1::basic_string"* %2 to i8*
  %10 = load i8, i8* %9, align 8
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = zext i8 %10 to i64
  %16 = lshr i64 %15, 1
  %17 = select i1 %12, i64 %16, i64 %14
  %18 = bitcast %"class.std::__1::basic_string"* %2 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %19 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %18, i64 0, i32 1, i64 0
  %20 = getelementptr inbounds %"class.std::__1::basic_string", %"class.std::__1::basic_string"* %2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = select i1 %12, i8* %19, i8* %21
  br label %23

; <label>:23:                                     ; preds = %75, %8
  %24 = phi %"class.std::__1::__tree_node"* [ %6, %8 ], [ %77, %75 ]
  %25 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %24, i64 0, i32 2, i32 0, i32 0
  %26 = bitcast %"class.std::__1::basic_string"* %25 to i8*
  %27 = load i8, i8* %26, align 8, !tbaa !22
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %24, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = zext i8 %27 to i64
  %33 = lshr i64 %32, 1
  %34 = select i1 %29, i64 %33, i64 %31
  %35 = icmp ult i64 %34, %17
  %36 = select i1 %35, i64 %34, i64 %17
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %46, label %38

; <label>:38:                                     ; preds = %23
  %39 = bitcast %"class.std::__1::basic_string"* %25 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %40 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %39, i64 0, i32 1, i64 0
  %41 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %24, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = select i1 %29, i8* %40, i8* %42
  %44 = tail call i32 @memcmp(i8* %22, i8* %43, i64 %36) #7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %38, %23
  %47 = icmp ult i64 %17, %34
  br i1 %47, label %50, label %56

; <label>:48:                                     ; preds = %38
  %49 = icmp slt i32 %44, 0
  br i1 %49, label %50, label %56

; <label>:50:                                     ; preds = %46, %48
  %51 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %24, i64 0, i32 0, i32 0, i32 0
  %52 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %51, align 8, !tbaa !18
  %53 = icmp eq %"class.std::__1::__tree_node_base"* %52, null
  br i1 %53, label %54, label %75

; <label>:54:                                     ; preds = %50
  %55 = bitcast %"class.std::__1::__tree_node_base"** %1 to %"class.std::__1::__tree_node"**
  store %"class.std::__1::__tree_node"* %24, %"class.std::__1::__tree_node"** %55, align 8, !tbaa !10
  br label %85

; <label>:56:                                     ; preds = %46, %48
  %57 = icmp ult i64 %17, %34
  %58 = select i1 %57, i64 %17, i64 %34
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %68, label %60

; <label>:60:                                     ; preds = %56
  %61 = bitcast %"class.std::__1::basic_string"* %25 to %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"*
  %62 = getelementptr inbounds %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short", %"struct.std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__short"* %61, i64 0, i32 1, i64 0
  %63 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %24, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = select i1 %29, i8* %62, i8* %64
  %66 = tail call i32 @memcmp(i8* %65, i8* %22, i64 %58) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %60, %56
  br i1 %35, label %71, label %80

; <label>:69:                                     ; preds = %60
  %70 = icmp slt i32 %66, 0
  br i1 %70, label %71, label %80

; <label>:71:                                     ; preds = %68, %69
  %72 = getelementptr inbounds %"class.std::__1::__tree_node", %"class.std::__1::__tree_node"* %24, i64 0, i32 0, i32 1
  %73 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %72, align 8, !tbaa !23
  %74 = icmp eq %"class.std::__1::__tree_node_base"* %73, null
  br i1 %74, label %78, label %75

; <label>:75:                                     ; preds = %71, %50
  %76 = phi %"class.std::__1::__tree_node_base"* [ %52, %50 ], [ %73, %71 ]
  %77 = bitcast %"class.std::__1::__tree_node_base"* %76 to %"class.std::__1::__tree_node"*
  br label %23

; <label>:78:                                     ; preds = %71
  %79 = bitcast %"class.std::__1::__tree_node_base"** %1 to %"class.std::__1::__tree_node"**
  store %"class.std::__1::__tree_node"* %24, %"class.std::__1::__tree_node"** %79, align 8, !tbaa !10
  br label %85

; <label>:80:                                     ; preds = %68, %69
  %81 = bitcast %"class.std::__1::__tree_node_base"** %1 to %"class.std::__1::__tree_node"**
  store %"class.std::__1::__tree_node"* %24, %"class.std::__1::__tree_node"** %81, align 8, !tbaa !10
  br label %85

; <label>:82:                                     ; preds = %3
  %83 = bitcast %"class.std::__1::__tree_node_base"** %1 to %"class.std::__1::__tree_end_node"**
  store %"class.std::__1::__tree_end_node"* %4, %"class.std::__1::__tree_end_node"** %83, align 8, !tbaa !10
  %84 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %4, i64 0, i32 0
  br label %85

; <label>:85:                                     ; preds = %82, %80, %78, %54
  %86 = phi %"class.std::__1::__tree_node_base"** [ %51, %54 ], [ %72, %78 ], [ %1, %80 ], [ %84, %82 ]
  ret %"class.std::__1::__tree_node_base"** %86
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #3

; Function Attrs: nobuiltin
declare noalias nonnull i8* @_Znwm(i64) local_unnamed_addr #4

declare void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_(%"class.std::__1::basic_string"*, %"class.std::__1::basic_string"* dereferenceable(24)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8*) local_unnamed_addr #6

; Function Attrs: nounwind ssp uwtable
define linkonce_odr void @_ZNSt3__127__tree_balance_after_insertIPNS_16__tree_node_baseIPvEEEEvT_S5_(%"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"*) local_unnamed_addr #2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = icmp eq %"class.std::__1::__tree_node_base"* %1, %0
  %4 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %1, i64 0, i32 3
  %5 = zext i1 %3 to i8
  store i8 %5, i8* %4, align 8, !tbaa !24
  br i1 %3, label %169, label %6

; <label>:6:                                      ; preds = %2
  br label %7

; <label>:7:                                      ; preds = %6, %35
  %8 = phi %"class.std::__1::__tree_node_base"* [ %21, %35 ], [ %1, %6 ]
  %9 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %8, i64 0, i32 2
  %10 = bitcast %"class.std::__1::__tree_end_node"** %9 to %"class.std::__1::__tree_node_base"**
  %11 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i64 0, i32 3
  %13 = load i8, i8* %12, align 8, !tbaa !24, !range !25
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %168

; <label>:15:                                     ; preds = %7
  %16 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i64 0, i32 2
  %17 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %16, align 8, !tbaa !15
  %18 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %17, i64 0, i32 0
  %19 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %18, align 8, !tbaa !18
  %20 = icmp eq %"class.std::__1::__tree_node_base"* %19, %11
  %21 = bitcast %"class.std::__1::__tree_end_node"* %17 to %"class.std::__1::__tree_node_base"*
  br i1 %20, label %22, label %97

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %17, i64 1, i32 0
  %24 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %23, align 8, !tbaa !23
  %25 = icmp eq %"class.std::__1::__tree_node_base"* %24, null
  br i1 %25, label %37, label %26

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %24, i64 0, i32 3
  %28 = load i8, i8* %27, align 8, !tbaa !24, !range !25
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %26
  store i8 1, i8* %12, align 8, !tbaa !24
  %31 = icmp eq %"class.std::__1::__tree_node_base"* %21, %0
  %32 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %17, i64 3
  %33 = bitcast %"class.std::__1::__tree_end_node"* %32 to i8*
  %34 = zext i1 %31 to i8
  store i8 %34, i8* %33, align 8, !tbaa !24
  store i8 1, i8* %27, align 8, !tbaa !24
  br label %35

; <label>:35:                                     ; preds = %30, %103
  %36 = icmp eq %"class.std::__1::__tree_node_base"* %21, %0
  br i1 %36, label %168, label %7

; <label>:37:                                     ; preds = %26, %22
  %38 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i64 0, i32 0, i32 0
  %39 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %38, align 8, !tbaa !18
  %40 = icmp eq %"class.std::__1::__tree_node_base"* %39, %8
  br i1 %40, label %69, label %41

; <label>:41:                                     ; preds = %37
  %42 = ptrtoint %"class.std::__1::__tree_end_node"* %17 to i64
  %43 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i64 0, i32 1
  %44 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %43, align 8, !tbaa !23
  %45 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %44, i64 0, i32 0, i32 0
  %46 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %45, align 8, !tbaa !18
  store %"class.std::__1::__tree_node_base"* %46, %"class.std::__1::__tree_node_base"** %43, align 8, !tbaa !23
  %47 = icmp eq %"class.std::__1::__tree_node_base"* %46, null
  br i1 %47, label %53, label %48

; <label>:48:                                     ; preds = %41
  %49 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i64 0, i32 0
  %50 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %46, i64 0, i32 2
  store %"class.std::__1::__tree_end_node"* %49, %"class.std::__1::__tree_end_node"** %50, align 8, !tbaa !15
  %51 = bitcast %"class.std::__1::__tree_end_node"** %16 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !15
  br label %53

; <label>:53:                                     ; preds = %41, %48
  %54 = phi i64 [ %52, %48 ], [ %42, %41 ]
  %55 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %44, i64 0, i32 2
  %56 = bitcast %"class.std::__1::__tree_end_node"** %55 to i64*
  store i64 %54, i64* %56, align 8, !tbaa !15
  %57 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %16, align 8, !tbaa !15
  %58 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %57, i64 0, i32 0
  %59 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %58, align 8, !tbaa !18
  %60 = icmp eq %"class.std::__1::__tree_node_base"* %59, %11
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %53
  store %"class.std::__1::__tree_node_base"* %44, %"class.std::__1::__tree_node_base"** %58, align 8, !tbaa !18
  br label %64

; <label>:62:                                     ; preds = %53
  %63 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %57, i64 1, i32 0
  store %"class.std::__1::__tree_node_base"* %44, %"class.std::__1::__tree_node_base"** %63, align 8, !tbaa !23
  br label %64

; <label>:64:                                     ; preds = %61, %62
  store %"class.std::__1::__tree_node_base"* %11, %"class.std::__1::__tree_node_base"** %45, align 8, !tbaa !18
  %65 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %44, i64 0, i32 0
  store %"class.std::__1::__tree_end_node"* %65, %"class.std::__1::__tree_end_node"** %16, align 8, !tbaa !15
  %66 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %44, i64 0, i32 2
  %67 = bitcast %"class.std::__1::__tree_end_node"** %66 to %"class.std::__1::__tree_node_base"**
  %68 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %67, align 8, !tbaa !15
  br label %69

; <label>:69:                                     ; preds = %64, %37
  %70 = phi %"class.std::__1::__tree_node_base"* [ %21, %37 ], [ %68, %64 ]
  %71 = phi %"class.std::__1::__tree_node_base"* [ %11, %37 ], [ %44, %64 ]
  %72 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %71, i64 0, i32 3
  store i8 1, i8* %72, align 8, !tbaa !24
  %73 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %70, i64 0, i32 3
  store i8 0, i8* %73, align 8, !tbaa !24
  %74 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %70, i64 0, i32 0, i32 0
  %75 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %74, align 8, !tbaa !18
  %76 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %75, i64 0, i32 1
  %77 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %76, align 8, !tbaa !23
  store %"class.std::__1::__tree_node_base"* %77, %"class.std::__1::__tree_node_base"** %74, align 8, !tbaa !18
  %78 = icmp eq %"class.std::__1::__tree_node_base"* %77, null
  br i1 %78, label %82, label %79

; <label>:79:                                     ; preds = %69
  %80 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %70, i64 0, i32 0
  %81 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %77, i64 0, i32 2
  store %"class.std::__1::__tree_end_node"* %80, %"class.std::__1::__tree_end_node"** %81, align 8, !tbaa !15
  br label %82

; <label>:82:                                     ; preds = %79, %69
  %83 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %70, i64 0, i32 2
  %84 = bitcast %"class.std::__1::__tree_end_node"** %83 to i64*
  %85 = load i64, i64* %84, align 8, !tbaa !15
  %86 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %75, i64 0, i32 2
  %87 = bitcast %"class.std::__1::__tree_end_node"** %86 to i64*
  store i64 %85, i64* %87, align 8, !tbaa !15
  %88 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %83, align 8, !tbaa !15
  %89 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %88, i64 0, i32 0
  %90 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %89, align 8, !tbaa !18
  %91 = icmp eq %"class.std::__1::__tree_node_base"* %90, %70
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %82
  store %"class.std::__1::__tree_node_base"* %75, %"class.std::__1::__tree_node_base"** %89, align 8, !tbaa !18
  br label %95

; <label>:93:                                     ; preds = %82
  %94 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %88, i64 1, i32 0
  store %"class.std::__1::__tree_node_base"* %75, %"class.std::__1::__tree_node_base"** %94, align 8, !tbaa !23
  br label %95

; <label>:95:                                     ; preds = %93, %92
  store %"class.std::__1::__tree_node_base"* %70, %"class.std::__1::__tree_node_base"** %76, align 8, !tbaa !23
  %96 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %75, i64 0, i32 0
  store %"class.std::__1::__tree_end_node"* %96, %"class.std::__1::__tree_end_node"** %83, align 8, !tbaa !15
  br label %169

; <label>:97:                                     ; preds = %15
  %98 = icmp eq %"class.std::__1::__tree_node_base"* %19, null
  br i1 %98, label %108, label %99

; <label>:99:                                     ; preds = %97
  %100 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %19, i64 0, i32 3
  %101 = load i8, i8* %100, align 8, !tbaa !24, !range !25
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %108

; <label>:103:                                    ; preds = %99
  store i8 1, i8* %12, align 8, !tbaa !24
  %104 = icmp eq %"class.std::__1::__tree_node_base"* %21, %0
  %105 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %17, i64 3
  %106 = bitcast %"class.std::__1::__tree_end_node"* %105 to i8*
  %107 = zext i1 %104 to i8
  store i8 %107, i8* %106, align 8, !tbaa !24
  store i8 1, i8* %100, align 8, !tbaa !24
  br label %35

; <label>:108:                                    ; preds = %99, %97
  %109 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i64 0, i32 0, i32 0
  %110 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %109, align 8, !tbaa !18
  %111 = icmp eq %"class.std::__1::__tree_node_base"* %110, %8
  br i1 %111, label %112, label %140

; <label>:112:                                    ; preds = %108
  %113 = ptrtoint %"class.std::__1::__tree_end_node"* %17 to i64
  %114 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i64 0, i32 0, i32 0
  %115 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %114, align 8, !tbaa !18
  %116 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %115, i64 0, i32 1
  %117 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %116, align 8, !tbaa !23
  store %"class.std::__1::__tree_node_base"* %117, %"class.std::__1::__tree_node_base"** %114, align 8, !tbaa !18
  %118 = icmp eq %"class.std::__1::__tree_node_base"* %117, null
  br i1 %118, label %124, label %119

; <label>:119:                                    ; preds = %112
  %120 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %11, i64 0, i32 0
  %121 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %117, i64 0, i32 2
  store %"class.std::__1::__tree_end_node"* %120, %"class.std::__1::__tree_end_node"** %121, align 8, !tbaa !15
  %122 = bitcast %"class.std::__1::__tree_end_node"** %16 to i64*
  %123 = load i64, i64* %122, align 8, !tbaa !15
  br label %124

; <label>:124:                                    ; preds = %112, %119
  %125 = phi i64 [ %123, %119 ], [ %113, %112 ]
  %126 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %115, i64 0, i32 2
  %127 = bitcast %"class.std::__1::__tree_end_node"** %126 to i64*
  store i64 %125, i64* %127, align 8, !tbaa !15
  %128 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %16, align 8, !tbaa !15
  %129 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %128, i64 0, i32 0
  %130 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %129, align 8, !tbaa !18
  %131 = icmp eq %"class.std::__1::__tree_node_base"* %130, %11
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %124
  store %"class.std::__1::__tree_node_base"* %115, %"class.std::__1::__tree_node_base"** %129, align 8, !tbaa !18
  br label %135

; <label>:133:                                    ; preds = %124
  %134 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %128, i64 1, i32 0
  store %"class.std::__1::__tree_node_base"* %115, %"class.std::__1::__tree_node_base"** %134, align 8, !tbaa !23
  br label %135

; <label>:135:                                    ; preds = %132, %133
  store %"class.std::__1::__tree_node_base"* %11, %"class.std::__1::__tree_node_base"** %116, align 8, !tbaa !23
  %136 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %115, i64 0, i32 0
  store %"class.std::__1::__tree_end_node"* %136, %"class.std::__1::__tree_end_node"** %16, align 8, !tbaa !15
  %137 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %115, i64 0, i32 2
  %138 = bitcast %"class.std::__1::__tree_end_node"** %137 to %"class.std::__1::__tree_node_base"**
  %139 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %138, align 8, !tbaa !15
  br label %140

; <label>:140:                                    ; preds = %135, %108
  %141 = phi %"class.std::__1::__tree_node_base"* [ %139, %135 ], [ %21, %108 ]
  %142 = phi %"class.std::__1::__tree_node_base"* [ %115, %135 ], [ %11, %108 ]
  %143 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %142, i64 0, i32 3
  store i8 1, i8* %143, align 8, !tbaa !24
  %144 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %141, i64 0, i32 3
  store i8 0, i8* %144, align 8, !tbaa !24
  %145 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %141, i64 0, i32 1
  %146 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %145, align 8, !tbaa !23
  %147 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %146, i64 0, i32 0, i32 0
  %148 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %147, align 8, !tbaa !18
  store %"class.std::__1::__tree_node_base"* %148, %"class.std::__1::__tree_node_base"** %145, align 8, !tbaa !23
  %149 = icmp eq %"class.std::__1::__tree_node_base"* %148, null
  br i1 %149, label %153, label %150

; <label>:150:                                    ; preds = %140
  %151 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %141, i64 0, i32 0
  %152 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %148, i64 0, i32 2
  store %"class.std::__1::__tree_end_node"* %151, %"class.std::__1::__tree_end_node"** %152, align 8, !tbaa !15
  br label %153

; <label>:153:                                    ; preds = %150, %140
  %154 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %141, i64 0, i32 2
  %155 = bitcast %"class.std::__1::__tree_end_node"** %154 to i64*
  %156 = load i64, i64* %155, align 8, !tbaa !15
  %157 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %146, i64 0, i32 2
  %158 = bitcast %"class.std::__1::__tree_end_node"** %157 to i64*
  store i64 %156, i64* %158, align 8, !tbaa !15
  %159 = load %"class.std::__1::__tree_end_node"*, %"class.std::__1::__tree_end_node"** %154, align 8, !tbaa !15
  %160 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %159, i64 0, i32 0
  %161 = load %"class.std::__1::__tree_node_base"*, %"class.std::__1::__tree_node_base"** %160, align 8, !tbaa !18
  %162 = icmp eq %"class.std::__1::__tree_node_base"* %161, %141
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %153
  store %"class.std::__1::__tree_node_base"* %146, %"class.std::__1::__tree_node_base"** %160, align 8, !tbaa !18
  br label %166

; <label>:164:                                    ; preds = %153
  %165 = getelementptr inbounds %"class.std::__1::__tree_end_node", %"class.std::__1::__tree_end_node"* %159, i64 1, i32 0
  store %"class.std::__1::__tree_node_base"* %146, %"class.std::__1::__tree_node_base"** %165, align 8, !tbaa !23
  br label %166

; <label>:166:                                    ; preds = %164, %163
  store %"class.std::__1::__tree_node_base"* %141, %"class.std::__1::__tree_node_base"** %147, align 8, !tbaa !18
  %167 = getelementptr inbounds %"class.std::__1::__tree_node_base", %"class.std::__1::__tree_node_base"* %146, i64 0, i32 0
  store %"class.std::__1::__tree_end_node"* %167, %"class.std::__1::__tree_end_node"** %154, align 8, !tbaa !15
  br label %169

; <label>:168:                                    ; preds = %35, %7
  br label %169

; <label>:169:                                    ; preds = %168, %2, %166, %95
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

attributes #0 = { ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind ssp uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+cx16,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { builtin }
attributes #9 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.9.1 (tags/RELEASE_391/final)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !3, i64 48}
!7 = !{!"_ZTS6Packet", !8, i64 0, !8, i64 24, !3, i64 48}
!8 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !9, i64 0}
!9 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEiNS_4lessIS6_EENS4_INS_4pairIKS6_iEEEEE25__construct_node_with_keyERSA_: argument 0"}
!14 = distinct !{!14, !"_ZNSt3__13mapINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEiNS_4lessIS6_EENS4_INS_4pairIKS6_iEEEEE25__construct_node_with_keyERSA_"}
!15 = !{!16, !11, i64 16}
!16 = !{!"_ZTSNSt3__116__tree_node_baseIPvEE", !11, i64 8, !11, i64 16, !17, i64 24}
!17 = !{!"bool", !4, i64 0}
!18 = !{!19, !11, i64 0}
!19 = !{!"_ZTSNSt3__115__tree_end_nodeIPNS_16__tree_node_baseIPvEEEE", !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !4, i64 0}
!22 = !{!4, !4, i64 0}
!23 = !{!16, !11, i64 8}
!24 = !{!16, !17, i64 24}
!25 = !{i8 0, i8 2}
