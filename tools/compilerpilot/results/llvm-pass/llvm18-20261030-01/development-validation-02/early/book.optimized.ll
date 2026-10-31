; ModuleID = '/workspace/scratch/782b5db88681/Ledger-llvm-pass/tools/compilerpilot/builds/llvm-experiment-local-02/book.frontend.ll'
source_filename = "/workspace/scratch/782b5db88681/Ledger-llvm-pass/src/book.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ledger::Config" = type <{ i64, i64, i32, [4 x i8] }>
%"class.ledger::FastBook" = type { %"struct.ledger::Config", i8, i8, %"class.ledger::detail::OrderPool", %"class.ledger::detail::IdIndex", %"class.std::vector", %"class.std::vector", %"class.std::vector.10", %"class.std::vector.10", i64, i64, i64, %"struct.ledger::Statistics" }
%"class.ledger::detail::OrderPool" = type { %"class.std::vector.0", i32, i64 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl" }
%"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl" = type { %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.ledger::detail::IdIndex" = type { %"class.std::vector.5", i64, i64 }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl" }
%"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl" = type { %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl" }
%"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl" = type { %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ledger::Statistics" = type { i64, i64, i64, i64, i64, i64 }
%"struct.ledger::detail::OrderPool::Node" = type <{ i64, i64, i32, i8, [3 x i8], i32, i32, i8, [7 x i8] }>
%"struct.ledger::FastBook::Level" = type <{ i32, i32, i64, i32, [4 x i8] }>
%"struct.ledger::detail::IdIndex::Entry" = type <{ i64, i32, [4 x i8] }>
%"struct.ledger::Command" = type <{ i64, i64, i64, i32, i8, i8, i8, i8 }>
%"class.ledger::EventBuffer" = type { %"class.std::span", i64 }
%"class.std::span" = type { ptr, %"class.std::__detail::__extent_storage" }
%"class.std::__detail::__extent_storage" = type { i64 }
%"struct.ledger::Event" = type { i64, i8, i8, i64, i64, i8, i64, i32, i32 }
%"struct.ledger::Snapshot" = type { %"class.std::vector.15", %"class.std::vector.20", %"struct.ledger::Statistics" }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl" }
%"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl" = type { %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl" }
%"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl" = type { %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ledger::LevelSnapshot" = type <{ i8, [7 x i8], i64, i64, i32, [4 x i8] }>
%"struct.ledger::RestingOrder" = type <{ i64, i8, [7 x i8], i64, i32, [4 x i8] }>

$_ZN6ledger6detail7IdIndexC2Ej = comdat any

$_ZN6ledger6detail7IdIndex5eraseEm = comdat any

$_ZN6ledger8SnapshotD2Ev = comdat any

$_ZNK6ledger6detail9OrderPool16check_invariantsEv = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

@.str = private unnamed_addr constant [78 x i8] c"prices must define a positive inclusive range and max_orders must be positive\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@.str.1 = private unnamed_addr constant [51 x i8] c"price range exceeds addressable flat-level storage\00", align 1
@_ZTISt12length_error = external constant ptr
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"order ID index exceeds addressable storage\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6ledger8FastBookC1ENS_6ConfigEbb = dso_local unnamed_addr alias void (ptr, ptr, i1, i1), ptr @_ZN6ledger8FastBookC2ENS_6ConfigEbb

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6ledger8FastBook15validate_configENS_6ConfigE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"struct.ledger::Config") align 8 %agg.result, ptr nocapture noundef readonly byval(%"struct.ledger::Config") align 8 %config) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %0 = load i64, ptr %config, align 8
  %cmp = icmp slt i64 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %config, i64 0, i32 1
  %1 = load i64, ptr %max_price, align 8
  %cmp2 = icmp slt i64 %1, %0
  %max_orders = getelementptr inbounds %"struct.ledger::Config", ptr %config, i64 0, i32 2
  %2 = load i32, ptr %max_orders, align 8
  %cmp4 = icmp eq i32 %2, 0
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp4
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %exception = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef nonnull @.str)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  tail call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #19
  unreachable

lpad:                                             ; preds = %if.then
  %3 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %exception) #18
  resume { ptr, i32 } %3

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr noundef nonnull align 8 dereferenceable(24) %config, i64 24, i1 false)
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN6ledger8FastBook11level_countENS_6ConfigE(ptr nocapture noundef readonly byval(%"struct.ledger::Config") align 8 %config) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev.exit:
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %config, i64 0, i32 1
  %0 = load i64, ptr %max_price, align 8
  %1 = load i64, ptr %config, align 8
  %sub = sub nsw i64 %0, %1
  %add = add i64 %sub, 1
  %cmp = icmp ugt i64 %add, 384307168202282325
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev.exit
  %exception = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef nonnull @.str.1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  tail call void @__cxa_throw(ptr nonnull %exception, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #19
  unreachable

lpad:                                             ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %exception) #18
  resume { ptr, i32 } %2

if.end:                                           ; preds = %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev.exit
  ret i64 %add
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6ledger8FastBookC2ENS_6ConfigEbb(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr nocapture noundef readonly byval(%"struct.ledger::Config") align 8 %config, i1 noundef zeroext %bitmap_search, i1 noundef zeroext %bitmap_fok) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %frombool = zext i1 %bitmap_search to i8
  %frombool1 = zext i1 %bitmap_fok to i8
  %agg.tmp.sroa.0.0.copyload = load i64, ptr %config, align 8
  %agg.tmp.sroa.2.0.config.sroa_idx = getelementptr inbounds i8, ptr %config, i64 8
  %agg.tmp.sroa.2.0.copyload = load i64, ptr %agg.tmp.sroa.2.0.config.sroa_idx, align 8
  %agg.tmp.sroa.3.0.config.sroa_idx = getelementptr inbounds i8, ptr %config, i64 16
  %0 = load <2 x i32>, ptr %agg.tmp.sroa.3.0.config.sroa_idx, align 8
  %cmp.i = icmp slt i64 %agg.tmp.sroa.0.0.copyload, 1
  br i1 %cmp.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %entry
  %cmp2.i = icmp slt i64 %agg.tmp.sroa.2.0.copyload, %agg.tmp.sroa.0.0.copyload
  %1 = extractelement <2 x i32> %0, i64 0
  %cmp4.i = icmp eq i32 %1, 0
  %or.cond.i = select i1 %cmp2.i, i1 true, i1 %cmp4.i
  br i1 %or.cond.i, label %if.then.i, label %_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_.exit.i.i

if.then.i:                                        ; preds = %lor.lhs.false.i, %entry
  %exception.i = tail call ptr @__cxa_allocate_exception(i64 16) #18, !noalias !5
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception.i, ptr noundef nonnull @.str)
          to label %invoke.cont.i unwind label %lpad.i, !noalias !5

invoke.cont.i:                                    ; preds = %if.then.i
  tail call void @__cxa_throw(ptr nonnull %exception.i, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #19, !noalias !5
  unreachable

common.resume:                                    ; preds = %if.then.i.i.i.i96, %ehcleanup34, %lpad.i
  %common.resume.op = phi { ptr, i32 } [ %2, %lpad.i ], [ %.pn.pn.pn.pn, %ehcleanup34 ], [ %.pn.pn.pn.pn, %if.then.i.i.i.i96 ]
  resume { ptr, i32 } %common.resume.op

lpad.i:                                           ; preds = %if.then.i
  %2 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %exception.i) #18, !noalias !5
  br label %common.resume

_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_.exit.i.i: ; preds = %lor.lhs.false.i
  store i64 %agg.tmp.sroa.0.0.copyload, ptr %this, align 8
  %agg.tmp6.sroa.5.0.this.sroa_idx = getelementptr inbounds i8, ptr %this, i64 8
  store i64 %agg.tmp.sroa.2.0.copyload, ptr %agg.tmp6.sroa.5.0.this.sroa_idx, align 8
  %agg.tmp6.sroa.6.0.this.sroa_idx = getelementptr inbounds i8, ptr %this, i64 16
  store <2 x i32> %0, ptr %agg.tmp6.sroa.6.0.this.sroa_idx, align 8
  %bitmap_search_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 1
  store i8 %frombool, ptr %bitmap_search_, align 8
  %bitmap_fok_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 2
  store i8 %frombool1, ptr %bitmap_fok_, align 1
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %pool_, i8 0, i64 24, i1 false)
  %conv.i = zext i32 %1 to i64
  %mul.i.i.i.i.i.i = mul nuw nsw i64 %conv.i, 40
  %call5.i.i.i2.i.i1.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i.i.i) #20
  store ptr %call5.i.i.i2.i.i1.i, ptr %pool_, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call5.i.i.i2.i.i1.i, i64 %conv.i
  %_M_end_of_storage.i.i.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %_M_end_of_storage.i.i.i.i, align 8
  br label %for.body.i.i.i.i.i.i

for.body.i.i.i.i.i.i:                             ; preds = %for.body.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_.exit.i.i
  %__n.addr.03.i.i.i.i.i.i = phi i64 [ %dec.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ], [ %conv.i, %_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_.exit.i.i ]
  %__cur.02.i.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ], [ %call5.i.i.i2.i.i1.i, %_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_.exit.i.i ]
  %previous.i.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %__cur.02.i.i.i.i.i.i, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %__cur.02.i.i.i.i.i.i, i8 0, i64 40, i1 false)
  store i32 -1, ptr %previous.i.i.i.i.i.i.i.i, align 8
  %next.i.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %__cur.02.i.i.i.i.i.i, i64 0, i32 6
  store i32 -1, ptr %next.i.i.i.i.i.i.i.i, align 4
  %dec.i.i.i.i.i.i = add nsw i64 %__n.addr.03.i.i.i.i.i.i, -1
  %incdec.ptr.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %__cur.02.i.i.i.i.i.i, i64 1
  %cmp.not.i.i.i.i.i.i = icmp eq i64 %dec.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %for.body.preheader.i, label %for.body.i.i.i.i.i.i, !llvm.loop !8

for.body.preheader.i:                             ; preds = %for.body.i.i.i.i.i.i
  %_M_finish.i.i5.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  store ptr %incdec.ptr.i.i.i.i.i.i, ptr %_M_finish.i.i5.i.i, align 8
  %size_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 2
  store i64 0, ptr %size_.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %cmp2.i8 = icmp ult i64 %indvars.iv.next.i, %conv.i
  %3 = trunc i64 %indvars.iv.next.i to i32
  %cond.i = select i1 %cmp2.i8, i32 %3, i32 -1
  %4 = load ptr, ptr %pool_, align 8
  %next.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %4, i64 %indvars.iv.i, i32 6
  store i32 %cond.i, ptr %next.i, align 4
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %conv.i
  br i1 %exitcond.not.i, label %_ZN6ledger6detail9OrderPoolC2Ej.exit, label %for.body.i, !llvm.loop !11

_ZN6ledger6detail9OrderPoolC2Ej.exit:             ; preds = %for.body.i
  %free_head_10.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 1
  store i32 0, ptr %free_head_10.i, align 8
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4
  %5 = load i32, ptr %agg.tmp6.sroa.6.0.this.sroa_idx, align 8
  invoke void @_ZN6ledger6detail7IdIndexC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %index_, i32 noundef %5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZN6ledger6detail9OrderPoolC2Ej.exit
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %agg.tmp9.sroa.0.0.copyload = load i64, ptr %this, align 8
  %agg.tmp9.sroa.2.0.copyload = load i64, ptr %agg.tmp6.sroa.5.0.this.sroa_idx, align 8
  %sub.i = sub nsw i64 %agg.tmp9.sroa.2.0.copyload, %agg.tmp9.sroa.0.0.copyload
  %add.i = add i64 %sub.i, 1
  %cmp.i11 = icmp ugt i64 %add.i, 384307168202282325
  br i1 %cmp.i11, label %if.then.i12, label %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

if.then.i12:                                      ; preds = %invoke.cont
  %exception.i13 = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception.i13, ptr noundef nonnull @.str.1)
          to label %invoke.cont.i15 unwind label %lpad.i14

invoke.cont.i15:                                  ; preds = %if.then.i12
  invoke void @__cxa_throw(ptr nonnull %exception.i13, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #19
          to label %.noexc unwind label %lpad11

.noexc:                                           ; preds = %invoke.cont.i15
  unreachable

lpad.i14:                                         ; preds = %if.then.i12
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %exception.i13) #18
  br label %ehcleanup33

_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %invoke.cont
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %bids_, i8 0, i64 24, i1 false)
  %cmp.not.i.i.i.i = icmp eq i64 %add.i, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont14, label %_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %mul.i.i.i.i.i = mul nuw nsw i64 %add.i, 24
  %call5.i.i.i2.i.i19 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i.i) #20
          to label %call5.i.i.i2.i.i.noexc unwind label %lpad13

call5.i.i.i2.i.i.noexc:                           ; preds = %_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_.exit.i
  store ptr %call5.i.i.i2.i.i19, ptr %bids_, align 8
  %add.ptr.i.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call5.i.i.i2.i.i19, i64 %add.i
  %_M_end_of_storage.i.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 2
  store ptr %add.ptr.i.i.i, ptr %_M_end_of_storage.i.i.i, align 8
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i, %call5.i.i.i2.i.i.noexc
  %__n.addr.03.i.i.i.i.i = phi i64 [ %dec.i.i.i.i.i, %for.body.i.i.i.i.i ], [ %add.i, %call5.i.i.i2.i.i.noexc ]
  %__cur.02.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %for.body.i.i.i.i.i ], [ %call5.i.i.i2.i.i19, %call5.i.i.i2.i.i.noexc ]
  %7 = getelementptr inbounds i8, ptr %__cur.02.i.i.i.i.i, i64 16
  store i64 0, ptr %7, align 8
  store i32 -1, ptr %__cur.02.i.i.i.i.i, align 8
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.02.i.i.i.i.i, i64 0, i32 1
  store i32 -1, ptr %tail.i.i.i.i.i.i.i, align 4
  %quantity.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.02.i.i.i.i.i, i64 0, i32 2
  store i64 0, ptr %quantity.i.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i64 %__n.addr.03.i.i.i.i.i, -1
  %incdec.ptr.i.i.i.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.02.i.i.i.i.i, i64 1
  %cmp.not.i.i.i.i.i16 = icmp eq i64 %dec.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i16, label %invoke.cont14, label %for.body.i.i.i.i.i, !llvm.loop !12

invoke.cont14:                                    ; preds = %for.body.i.i.i.i.i, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %8 = phi ptr [ null, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %call5.i.i.i2.i.i19, %for.body.i.i.i.i.i ]
  %9 = phi ptr [ null, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %incdec.ptr.i.i.i.i.i, %for.body.i.i.i.i.i ]
  %_M_finish.i.i5.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  store ptr %9, ptr %_M_finish.i.i5.i, align 8
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 24
  %cmp.i.i20 = icmp ugt i64 %sub.ptr.div.i, 384307168202282325
  br i1 %cmp.i.i20, label %if.then.i.i38, label %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i21

if.then.i.i38:                                    ; preds = %invoke.cont14
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc39 unwind label %lpad18

.noexc39:                                         ; preds = %if.then.i.i38
  unreachable

_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i21: ; preds = %invoke.cont14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %asks_, i8 0, i64 24, i1 false)
  %cmp.not.i.i.i.i22 = icmp eq ptr %9, %8
  br i1 %cmp.not.i.i.i.i22, label %invoke.cont19, label %_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_.exit.i23

_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_.exit.i23: ; preds = %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i21
  %call5.i.i.i2.i.i41 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %sub.ptr.sub.i) #20
          to label %call5.i.i.i2.i.i.noexc40 unwind label %lpad18

call5.i.i.i2.i.i.noexc40:                         ; preds = %_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_.exit.i23
  store ptr %call5.i.i.i2.i.i41, ptr %asks_, align 8
  %add.ptr.i.i.i24 = getelementptr inbounds i8, ptr %call5.i.i.i2.i.i41, i64 %sub.ptr.sub.i
  %_M_end_of_storage.i.i.i25 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 2
  store ptr %add.ptr.i.i.i24, ptr %_M_end_of_storage.i.i.i25, align 8
  br label %for.body.i.i.i.i.i26

for.body.i.i.i.i.i26:                             ; preds = %for.body.i.i.i.i.i26, %call5.i.i.i2.i.i.noexc40
  %__n.addr.03.i.i.i.i.i27 = phi i64 [ %dec.i.i.i.i.i31, %for.body.i.i.i.i.i26 ], [ %sub.ptr.div.i, %call5.i.i.i2.i.i.noexc40 ]
  %__cur.02.i.i.i.i.i28 = phi ptr [ %incdec.ptr.i.i.i.i.i32, %for.body.i.i.i.i.i26 ], [ %call5.i.i.i2.i.i41, %call5.i.i.i2.i.i.noexc40 ]
  %10 = getelementptr inbounds i8, ptr %__cur.02.i.i.i.i.i28, i64 16
  store i64 0, ptr %10, align 8
  store i32 -1, ptr %__cur.02.i.i.i.i.i28, align 8
  %tail.i.i.i.i.i.i.i29 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.02.i.i.i.i.i28, i64 0, i32 1
  store i32 -1, ptr %tail.i.i.i.i.i.i.i29, align 4
  %quantity.i.i.i.i.i.i.i30 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.02.i.i.i.i.i28, i64 0, i32 2
  store i64 0, ptr %quantity.i.i.i.i.i.i.i30, align 8
  %dec.i.i.i.i.i31 = add i64 %__n.addr.03.i.i.i.i.i27, -1
  %incdec.ptr.i.i.i.i.i32 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.02.i.i.i.i.i28, i64 1
  %cmp.not.i.i.i.i.i33 = icmp eq i64 %dec.i.i.i.i.i31, 0
  br i1 %cmp.not.i.i.i.i.i33, label %invoke.cont19, label %for.body.i.i.i.i.i26, !llvm.loop !12

invoke.cont19:                                    ; preds = %for.body.i.i.i.i.i26, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i21
  %__cur.0.lcssa.i.i.i.i.i35 = phi ptr [ null, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i21 ], [ %incdec.ptr.i.i.i.i.i32, %for.body.i.i.i.i.i26 ]
  %_M_finish.i.i5.i36 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  store ptr %__cur.0.lcssa.i.i.i.i.i35, ptr %_M_finish.i.i5.i36, align 8
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %div1 = lshr i64 %sub.ptr.div.i, 6
  %rem = and i64 %sub.ptr.div.i, 63
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i64
  %add = add nuw nsw i64 %div1, %conv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %bid_bitmap_, i8 0, i64 24, i1 false)
  %cmp.not.i.i.i.i54 = icmp eq i64 %add, 0
  br i1 %cmp.not.i.i.i.i54, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70.thread, label %if.then.i.i.i.i1.i

if.then.i.i.i.i1.i:                               ; preds = %invoke.cont19
  %mul.i.i.i.i.i55 = shl nuw nsw i64 %add, 3
  %call5.i.i.i2.i.i63 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i.i55) #20
          to label %call5.i.i.i2.i.i.noexc62 unwind label %lpad25

call5.i.i.i2.i.i.noexc62:                         ; preds = %if.then.i.i.i.i1.i
  store ptr %call5.i.i.i2.i.i63, ptr %bid_bitmap_, align 8
  %add.ptr.i.i.i56 = getelementptr inbounds i64, ptr %call5.i.i.i2.i.i63, i64 %add
  %_M_end_of_storage.i.i.i57 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7, i32 0, i32 0, i32 0, i32 2
  store ptr %add.ptr.i.i.i56, ptr %_M_end_of_storage.i.i.i57, align 8
  store i64 0, ptr %call5.i.i.i2.i.i63, align 8
  %incdec.ptr.i.i.i.i.i58 = getelementptr i64, ptr %call5.i.i.i2.i.i63, i64 1
  %cmp.i.i.i.i.i.i.i = icmp eq i64 %add, 1
  br i1 %cmp.i.i.i.i.i.i.i, label %invoke.cont26, label %if.end.i.i.i.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %call5.i.i.i2.i.i.noexc62
  %11 = add nsw i64 %mul.i.i.i.i.i55, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %incdec.ptr.i.i.i.i.i58, i8 0, i64 %11, i1 false)
  br label %invoke.cont26

invoke.cont26:                                    ; preds = %if.end.i.i.i.i.i.i.i, %call5.i.i.i2.i.i.noexc62
  %__first.addr.0.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i58, %call5.i.i.i2.i.i.noexc62 ], [ %add.ptr.i.i.i56, %if.end.i.i.i.i.i.i.i ]
  %_M_finish.i.i6.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7, i32 0, i32 0, i32 0, i32 1
  store ptr %__first.addr.0.i.i.i.i.i, ptr %_M_finish.i.i6.i, align 8
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %sub.ptr.lhs.cast.i65 = ptrtoint ptr %__first.addr.0.i.i.i.i.i to i64
  %sub.ptr.rhs.cast.i66 = ptrtoint ptr %call5.i.i.i2.i.i63 to i64
  %sub.ptr.sub.i67 = sub i64 %sub.ptr.lhs.cast.i65, %sub.ptr.rhs.cast.i66
  %cmp.i.i69 = icmp ugt i64 %sub.ptr.sub.i67, 9223372036854775800
  br i1 %cmp.i.i69, label %if.then.i.i82, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70.thread: ; preds = %invoke.cont19
  %ask_bitmap_103 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %bid_bitmap_, i8 0, i64 48, i1 false)
  br label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i81

if.then.i.i82:                                    ; preds = %invoke.cont26
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #19
          to label %.noexc83 unwind label %lpad30

.noexc83:                                         ; preds = %if.then.i.i82
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70: ; preds = %invoke.cont26
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %ask_bitmap_, i8 0, i64 24, i1 false)
  %cmp.not.i.i.i.i71 = icmp eq ptr %__first.addr.0.i.i.i.i.i, %call5.i.i.i2.i.i63
  br i1 %cmp.not.i.i.i.i71, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i81, label %if.then.i.i.i.i1.i72

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i81: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70.thread, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70
  %ask_bitmap_109115 = phi ptr [ %ask_bitmap_103, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70.thread ], [ %ask_bitmap_, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %ask_bitmap_109115, i8 0, i64 24, i1 false)
  br label %invoke.cont31

if.then.i.i.i.i1.i72:                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70
  %call5.i.i.i2.i.i85 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %sub.ptr.sub.i67) #20
          to label %call5.i.i.i2.i.i.noexc84 unwind label %lpad30

call5.i.i.i2.i.i.noexc84:                         ; preds = %if.then.i.i.i.i1.i72
  store ptr %call5.i.i.i2.i.i85, ptr %ask_bitmap_, align 8
  %add.ptr.i.i.i73 = getelementptr inbounds i8, ptr %call5.i.i.i2.i.i85, i64 %sub.ptr.sub.i67
  %_M_end_of_storage.i.i.i74 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8, i32 0, i32 0, i32 0, i32 2
  store ptr %add.ptr.i.i.i73, ptr %_M_end_of_storage.i.i.i74, align 8
  store i64 0, ptr %call5.i.i.i2.i.i85, align 8
  %incdec.ptr.i.i.i.i.i75 = getelementptr i64, ptr %call5.i.i.i2.i.i85, i64 1
  %cmp.i.i.i.i.i.i.i76 = icmp eq i64 %sub.ptr.sub.i67, 8
  br i1 %cmp.i.i.i.i.i.i.i76, label %invoke.cont31, label %if.end.i.i.i.i.i.i.i77

if.end.i.i.i.i.i.i.i77:                           ; preds = %call5.i.i.i2.i.i.noexc84
  %12 = add nsw i64 %sub.ptr.sub.i67, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %incdec.ptr.i.i.i.i.i75, i8 0, i64 %12, i1 false)
  br label %invoke.cont31

invoke.cont31:                                    ; preds = %if.end.i.i.i.i.i.i.i77, %call5.i.i.i2.i.i.noexc84, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i81
  %__first.addr.0.i.i.i.i.i79 = phi ptr [ %incdec.ptr.i.i.i.i.i75, %call5.i.i.i2.i.i.noexc84 ], [ %add.ptr.i.i.i73, %if.end.i.i.i.i.i.i.i77 ], [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i81 ]
  %_M_finish.i.i6.i80 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8, i32 0, i32 0, i32 0, i32 1
  store ptr %__first.addr.0.i.i.i.i.i79, ptr %_M_finish.i.i6.i80, align 8
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %best_bid_, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %resting_quantity_, i8 0, i64 56, i1 false)
  ret void

lpad:                                             ; preds = %_ZN6ledger6detail9OrderPoolC2Ej.exit
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup34

lpad11:                                           ; preds = %invoke.cont.i15
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup33

lpad13:                                           ; preds = %_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_.exit.i
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup33

lpad18:                                           ; preds = %_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_.exit.i23, %if.then.i.i38
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup32

lpad25:                                           ; preds = %if.then.i.i.i.i1.i
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad30:                                           ; preds = %if.then.i.i.i.i1.i72, %if.then.i.i82
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load ptr, ptr %bid_bitmap_, align 8
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %ehcleanup, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad30
  tail call void @_ZdlPv(ptr noundef nonnull %19) #21
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i.i, %lpad30, %lpad25
  %.pn = phi { ptr, i32 } [ %17, %lpad25 ], [ %18, %lpad30 ], [ %18, %if.then.i.i.i ]
  %20 = load ptr, ptr %asks_, align 8
  %tobool.not.i.i.i89 = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i89, label %ehcleanup32, label %if.then.i.i.i90

if.then.i.i.i90:                                  ; preds = %ehcleanup
  tail call void @_ZdlPv(ptr noundef nonnull %20) #21
  br label %ehcleanup32

ehcleanup32:                                      ; preds = %if.then.i.i.i90, %ehcleanup, %lpad18
  %.pn.pn = phi { ptr, i32 } [ %16, %lpad18 ], [ %.pn, %ehcleanup ], [ %.pn, %if.then.i.i.i90 ]
  %21 = load ptr, ptr %bids_, align 8
  %tobool.not.i.i.i92 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i92, label %ehcleanup33, label %if.then.i.i.i93

if.then.i.i.i93:                                  ; preds = %ehcleanup32
  tail call void @_ZdlPv(ptr noundef nonnull %21) #21
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %if.then.i.i.i93, %ehcleanup32, %lpad11, %lpad.i14, %lpad13
  %.pn.pn.pn = phi { ptr, i32 } [ %15, %lpad13 ], [ %14, %lpad11 ], [ %6, %lpad.i14 ], [ %.pn.pn, %ehcleanup32 ], [ %.pn.pn, %if.then.i.i.i93 ]
  %22 = load ptr, ptr %index_, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i.i, label %ehcleanup34, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %ehcleanup33
  tail call void @_ZdlPv(ptr noundef nonnull %22) #21
  br label %ehcleanup34

ehcleanup34:                                      ; preds = %if.then.i.i.i.i, %ehcleanup33, %lpad
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %13, %lpad ], [ %.pn.pn.pn, %ehcleanup33 ], [ %.pn.pn.pn, %if.then.i.i.i.i ]
  %23 = load ptr, ptr %pool_, align 8
  %tobool.not.i.i.i.i95 = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i.i95, label %common.resume, label %if.then.i.i.i.i96

if.then.i.i.i.i96:                                ; preds = %ehcleanup34
  tail call void @_ZdlPv(ptr noundef nonnull %23) #21
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail7IdIndexC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %max_orders) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %conv.i = zext i32 %max_orders to i64
  %mul.i = shl nuw nsw i64 %conv.i, 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %entry
  %capacity.0.i = phi i64 [ 2, %entry ], [ %shl.i, %while.cond.i ]
  %cmp.i = icmp ult i64 %capacity.0.i, %mul.i
  %shl.i = shl nuw nsw i64 %capacity.0.i, 1
  br i1 %cmp.i, label %while.cond.i, label %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev.exit.i, !llvm.loop !13

_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev.exit.i: ; preds = %while.cond.i
  %cmp1.i = icmp ugt i64 %capacity.0.i, 576460752303423487
  br i1 %cmp1.i, label %if.then.i, label %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

if.then.i:                                        ; preds = %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev.exit.i
  %exception.i = tail call ptr @__cxa_allocate_exception(i64 16) #18
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception.i, ptr noundef nonnull @.str.3)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %if.then.i
  tail call void @__cxa_throw(ptr nonnull %exception.i, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #19
  unreachable

lpad.i:                                           ; preds = %if.then.i
  %0 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %exception.i) #18
  resume { ptr, i32 } %0

_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %this, i8 0, i64 24, i1 false)
  %mul.i.i.i.i.i = shl nuw nsw i64 %capacity.0.i, 4
  %call5.i.i.i2.i.i2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i.i) #20
  store ptr %call5.i.i.i2.i.i2, ptr %this, align 8
  %add.ptr.i.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call5.i.i.i2.i.i2, i64 %capacity.0.i
  %_M_end_of_storage.i.i.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this, i64 0, i32 2
  store ptr %add.ptr.i.i.i, ptr %_M_end_of_storage.i.i.i, align 8
  br label %for.body.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.body.i.i.i.i.i, %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %__n.addr.03.i.i.i.i.i = phi i64 [ %dec.i.i.i.i.i, %for.body.i.i.i.i.i ], [ %capacity.0.i, %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %__cur.02.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %for.body.i.i.i.i.i ], [ %call5.i.i.i2.i.i2, %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %slot.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__cur.02.i.i.i.i.i, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__cur.02.i.i.i.i.i, i8 0, i64 16, i1 false)
  store i32 -1, ptr %slot.i.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i64 %__n.addr.03.i.i.i.i.i, -1
  %incdec.ptr.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__cur.02.i.i.i.i.i, i64 1
  %cmp.not.i.i.i.i.i = icmp eq i64 %dec.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %invoke.cont, label %for.body.i.i.i.i.i, !llvm.loop !14

invoke.cont:                                      ; preds = %for.body.i.i.i.i.i
  %_M_finish.i.i5.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this, i64 0, i32 1
  store ptr %incdec.ptr.i.i.i.i.i, ptr %_M_finish.i.i5.i, align 8
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i64 0, i32 1
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr.i.i.i.i.i to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call5.i.i.i2.i.i2 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 4
  %sub = add nsw i64 %sub.ptr.div.i, -1
  store i64 %sub, ptr %mask_, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i64 0, i32 2
  store i64 0, ptr %size_, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this, i64 noundef %price) local_unnamed_addr #6 align 2 {
entry:
  %0 = load i64, ptr %this, align 8
  %sub = sub nsw i64 %price, %0
  ret i64 %sub
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this, i64 noundef %value) local_unnamed_addr #6 align 2 {
entry:
  %0 = load i64, ptr %this, align 8
  %add = add nsw i64 %0, %value
  ret i64 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull readnone align 8 dereferenceable(280) %this, i8 noundef zeroext %side) local_unnamed_addr #7 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %cond-lvalue = select i1 %cmp, ptr %bids_, ptr %asks_
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull readnone align 8 dereferenceable(280) %this, i8 noundef zeroext %side) local_unnamed_addr #7 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %cond-lvalue = select i1 %cmp, ptr %bids_, ptr %asks_
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull readnone align 8 dereferenceable(280) %this, i8 noundef zeroext %side) local_unnamed_addr #7 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %cond-lvalue = select i1 %cmp, ptr %bid_bitmap_, ptr %ask_bitmap_
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull readnone align 8 dereferenceable(280) %this, i8 noundef zeroext %side) local_unnamed_addr #7 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %cond-lvalue = select i1 %cmp, ptr %bid_bitmap_, ptr %ask_bitmap_
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull readnone align 8 dereferenceable(280) %this, i8 noundef zeroext %side) local_unnamed_addr #7 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %cond-lvalue = select i1 %cmp, ptr %best_bid_, ptr %best_ask_
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook4bestENS_4SideE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this, i8 noundef zeroext %side) local_unnamed_addr #6 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %0 = load i64, ptr %best_bid_, align 8
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %1 = load i64, ptr %best_ask_, align 8
  %cond = select i1 %cmp, i64 %0, i64 %1
  ret i64 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8best_bidEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this) local_unnamed_addr #6 align 2 {
entry:
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %0 = load i64, ptr %best_bid_, align 8
  %cmp = icmp eq i64 %0, -1
  %1 = load i64, ptr %this, align 8
  %add.i = add nsw i64 %1, %0
  %cond = select i1 %cmp, i64 0, i64 %add.i
  ret i64 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8best_askEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this) local_unnamed_addr #6 align 2 {
entry:
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %0 = load i64, ptr %best_ask_, align 8
  %cmp = icmp eq i64 %0, -1
  %1 = load i64, ptr %this, align 8
  %add.i = add nsw i64 %1, %0
  %cond = select i1 %cmp, i64 0, i64 %add.i
  ret i64 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook9find_bestENS_4SideE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this, i8 noundef zeroext %side) local_unnamed_addr #8 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %cond.true, label %cond.end

cond.true:                                        ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %_M_finish.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish.i, align 8
  %1 = load ptr, ptr %bids_, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 24
  %sub = add nsw i64 %sub.ptr.div.i, -1
  br label %cond.end

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %entry ]
  %call2 = tail call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %cond) #18
  ret i64 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %starting_level) local_unnamed_addr #8 align 2 {
entry:
  %cmp.i = icmp eq i8 %side, 0
  %bids_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %bitmap_search_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 1
  %0 = load i8, ptr %bitmap_search_, align 8, !range !15, !noundef !16
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.then, label %if.end24

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then2, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %if.then
  %_M_finish.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish.i, align 8
  %2 = load ptr, ptr %asks_.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 24
  %cmp11.not10 = icmp ugt i64 %sub.ptr.div.i, %starting_level
  br i1 %cmp11.not10, label %for.body13, label %cleanup26

if.then2:                                         ; preds = %if.then
  %add = add i64 %starting_level, 1
  %bids_.i.val = load ptr, ptr %bids_.i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then2
  %i.0 = phi i64 [ %add, %if.then2 ], [ %sub, %for.body ]
  %cmp3.not = icmp eq i64 %i.0, 0
  br i1 %cmp3.not, label %cleanup26, label %for.body

for.body:                                         ; preds = %for.cond
  %sub = add i64 %i.0, -1
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %bids_.i.val, i64 %sub, i32 3
  %3 = load i32, ptr %orders, align 8
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %for.cond, label %cleanup26, !llvm.loop !17

for.body13:                                       ; preds = %for.cond9.preheader, %for.inc19
  %i8.011 = phi i64 [ %inc, %for.inc19 ], [ %starting_level, %for.cond9.preheader ]
  %orders15 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %2, i64 %i8.011, i32 3
  %4 = load i32, ptr %orders15, align 8
  %tobool16.not = icmp eq i32 %4, 0
  br i1 %tobool16.not, label %for.inc19, label %cleanup26

for.inc19:                                        ; preds = %for.body13
  %inc = add nuw i64 %i8.011, 1
  %exitcond.not = icmp eq i64 %inc, %sub.ptr.div.i
  br i1 %exitcond.not, label %cleanup26, label %for.body13, !llvm.loop !18

if.end24:                                         ; preds = %entry
  %div5.i = lshr i64 %starting_level, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end24
  %bid_bitmap_.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %conv.i = and i64 %starting_level, 63
  %5 = load ptr, ptr %bid_bitmap_.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i64, ptr %5, i64 %div5.i
  %6 = load i64, ptr %add.ptr.i.i, align 8
  %sub.i = xor i64 %conv.i, 63
  %shr.i = lshr i64 -1, %sub.i
  %and.i = and i64 %6, %shr.i
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  %add.i = or i64 %starting_level, 63
  %7 = tail call i64 @llvm.ctlz.i64(i64 %and.i, i1 true), !range !19
  %sub6.i = sub nuw nsw i64 %add.i, %7
  br label %cleanup26

for.cond.i:                                       ; preds = %if.then.i, %for.body.i
  %word.0.i = phi i64 [ %sub8.i, %for.body.i ], [ %div5.i, %if.then.i ]
  %cmp7.not.i = icmp eq i64 %word.0.i, 0
  br i1 %cmp7.not.i, label %cleanup26, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %sub8.i = add nsw i64 %word.0.i, -1
  %add.ptr.i6.i = getelementptr inbounds i64, ptr %5, i64 %sub8.i
  %8 = load i64, ptr %add.ptr.i6.i, align 8
  %tobool10.not.i = icmp eq i64 %8, 0
  br i1 %tobool10.not.i, label %for.cond.i, label %if.then11.i, !llvm.loop !20

if.then11.i:                                      ; preds = %for.body.i
  %mul13.i = shl nuw i64 %sub8.i, 6
  %add14.i = or disjoint i64 %mul13.i, 63
  %9 = tail call i64 @llvm.ctlz.i64(i64 %8, i1 true), !range !19
  %sub19.i = sub nuw nsw i64 %add14.i, %9
  br label %cleanup26

if.else.i:                                        ; preds = %if.end24
  %ask_bitmap_.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %10 = load ptr, ptr %ask_bitmap_.i.i, align 8
  %add.ptr.i9.i = getelementptr inbounds i64, ptr %10, i64 %div5.i
  %11 = load i64, ptr %add.ptr.i9.i, align 8
  %sh_prom25.i = and i64 %starting_level, 63
  %shl.i = shl nsw i64 -1, %sh_prom25.i
  %and26.i = and i64 %11, %shl.i
  %tobool27.not.i = icmp eq i64 %and26.i, 0
  br i1 %tobool27.not.i, label %for.cond36.preheader.i, label %if.then28.i

for.cond36.preheader.i:                           ; preds = %if.else.i
  %_M_finish.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %12 = load ptr, ptr %_M_finish.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %12 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 3
  br label %for.cond36.i

if.then28.i:                                      ; preds = %if.else.i
  %mul29.i = and i64 %starting_level, -64
  %13 = tail call i64 @llvm.cttz.i64(i64 %and26.i, i1 true), !range !19
  %add32.i = or disjoint i64 %13, %mul29.i
  br label %cleanup26

for.cond36.i:                                     ; preds = %for.body40.i, %for.cond36.preheader.i
  %word34.0.in.i = phi i64 [ %word34.0.i, %for.body40.i ], [ %div5.i, %for.cond36.preheader.i ]
  %word34.0.i = add nuw i64 %word34.0.in.i, 1
  %cmp38.not.not.i = icmp ult i64 %word34.0.i, %sub.ptr.div.i.i
  br i1 %cmp38.not.not.i, label %for.body40.i, label %cleanup26

for.body40.i:                                     ; preds = %for.cond36.i
  %add.ptr.i11.i = getelementptr inbounds i64, ptr %10, i64 %word34.0.i
  %14 = load i64, ptr %add.ptr.i11.i, align 8
  %tobool42.not.i = icmp eq i64 %14, 0
  br i1 %tobool42.not.i, label %for.cond36.i, label %if.then43.i, !llvm.loop !21

if.then43.i:                                      ; preds = %for.body40.i
  %mul44.i = shl i64 %word34.0.i, 6
  %15 = tail call i64 @llvm.cttz.i64(i64 %14, i1 true), !range !19
  %add48.i = or disjoint i64 %15, %mul44.i
  br label %cleanup26

cleanup26:                                        ; preds = %for.cond36.i, %for.cond.i, %for.body13, %for.inc19, %for.cond, %for.body, %for.cond9.preheader, %if.then43.i, %if.then28.i, %if.then11.i, %if.then3.i
  %retval.2 = phi i64 [ %sub19.i, %if.then11.i ], [ %sub6.i, %if.then3.i ], [ %add48.i, %if.then43.i ], [ %add32.i, %if.then28.i ], [ -1, %for.cond9.preheader ], [ -1, %for.cond ], [ %sub, %for.body ], [ %i8.011, %for.body13 ], [ -1, %for.inc19 ], [ -1, %for.cond.i ], [ -1, %for.cond36.i ]
  ret i64 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %starting_level) local_unnamed_addr #8 align 2 {
entry:
  %cmp.i = icmp eq i8 %side, 0
  %div5 = lshr i64 %starting_level, 6
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bid_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %conv = and i64 %starting_level, 63
  %0 = load ptr, ptr %bid_bitmap_.i, align 8
  %add.ptr.i = getelementptr inbounds i64, ptr %0, i64 %div5
  %1 = load i64, ptr %add.ptr.i, align 8
  %sub = xor i64 %conv, 63
  %shr = lshr i64 -1, %sub
  %and = and i64 %1, %shr
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.cond, label %if.then3

if.then3:                                         ; preds = %if.then
  %add = or i64 %starting_level, 63
  %2 = tail call i64 @llvm.ctlz.i64(i64 %and, i1 true), !range !19
  %sub6 = sub nuw nsw i64 %add, %2
  br label %cleanup58

for.cond:                                         ; preds = %if.then, %for.body
  %word.0 = phi i64 [ %sub8, %for.body ], [ %div5, %if.then ]
  %cmp7.not = icmp eq i64 %word.0, 0
  br i1 %cmp7.not, label %cleanup58, label %for.body

for.body:                                         ; preds = %for.cond
  %sub8 = add nsw i64 %word.0, -1
  %add.ptr.i6 = getelementptr inbounds i64, ptr %0, i64 %sub8
  %3 = load i64, ptr %add.ptr.i6, align 8
  %tobool10.not = icmp eq i64 %3, 0
  br i1 %tobool10.not, label %for.cond, label %if.then11, !llvm.loop !20

if.then11:                                        ; preds = %for.body
  %mul13 = shl nuw i64 %sub8, 6
  %add14 = or disjoint i64 %mul13, 63
  %4 = tail call i64 @llvm.ctlz.i64(i64 %3, i1 true), !range !19
  %sub19 = sub nuw nsw i64 %add14, %4
  br label %cleanup58

if.else:                                          ; preds = %entry
  %ask_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %5 = load ptr, ptr %ask_bitmap_.i, align 8
  %add.ptr.i9 = getelementptr inbounds i64, ptr %5, i64 %div5
  %6 = load i64, ptr %add.ptr.i9, align 8
  %sh_prom25 = and i64 %starting_level, 63
  %shl = shl nsw i64 -1, %sh_prom25
  %and26 = and i64 %6, %shl
  %tobool27.not = icmp eq i64 %and26, 0
  br i1 %tobool27.not, label %for.cond36.preheader, label %if.then28

for.cond36.preheader:                             ; preds = %if.else
  %_M_finish.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %_M_finish.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 3
  br label %for.cond36

if.then28:                                        ; preds = %if.else
  %mul29 = and i64 %starting_level, -64
  %8 = tail call i64 @llvm.cttz.i64(i64 %and26, i1 true), !range !19
  %add32 = or disjoint i64 %8, %mul29
  br label %cleanup58

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body40
  %word34.0.in = phi i64 [ %word34.0, %for.body40 ], [ %div5, %for.cond36.preheader ]
  %word34.0 = add nuw i64 %word34.0.in, 1
  %cmp38.not.not = icmp ult i64 %word34.0, %sub.ptr.div.i
  br i1 %cmp38.not.not, label %for.body40, label %cleanup58

for.body40:                                       ; preds = %for.cond36
  %add.ptr.i11 = getelementptr inbounds i64, ptr %5, i64 %word34.0
  %9 = load i64, ptr %add.ptr.i11, align 8
  %tobool42.not = icmp eq i64 %9, 0
  br i1 %tobool42.not, label %for.cond36, label %if.then43, !llvm.loop !21

if.then43:                                        ; preds = %for.body40
  %mul44 = shl i64 %word34.0, 6
  %10 = tail call i64 @llvm.cttz.i64(i64 %9, i1 true), !range !19
  %add48 = or disjoint i64 %10, %mul44
  br label %cleanup58

cleanup58:                                        ; preds = %for.cond36, %for.cond, %if.then43, %if.then28, %if.then11, %if.then3
  %retval.4 = phi i64 [ %sub19, %if.then11 ], [ %sub6, %if.then3 ], [ %add48, %if.then43 ], [ %add32, %if.then28 ], [ -1, %for.cond ], [ -1, %for.cond36 ]
  ret i64 %retval.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr nocapture noundef nonnull readnone align 8 dereferenceable(280) %this, ptr nocapture noundef nonnull readonly align 8 dereferenceable(31) %command, i64 noundef %maker_price) local_unnamed_addr #6 align 2 {
entry:
  %action = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 5
  %0 = load i8, ptr %action, align 1
  %cmp = icmp eq i8 %0, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 4
  %1 = load i8, ptr %side, align 4
  %cmp2 = icmp eq i8 %1, 0
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %2 = load i64, ptr %price, align 8
  %cmp3 = icmp sge i64 %2, %maker_price
  %cmp5 = icmp sle i64 %2, %maker_price
  %cond = select i1 %cmp2, i1 %cmp3, i1 %cmp5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cond, %lor.rhs ]
  ret i1 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook8can_fillERKNS_7CommandE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this, ptr nocapture noundef nonnull readonly align 8 dereferenceable(31) %command) local_unnamed_addr #8 align 2 {
entry:
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 4
  %0 = load i8, ptr %side, align 4
  %cmp.not = icmp eq i8 %0, 0
  %bids_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %cond-lvalue.i = select i1 %cmp.not, ptr %asks_.i, ptr %bids_.i
  %best_bid_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %1 = load i64, ptr %best_bid_.i, align 8
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %2 = load i64, ptr %best_ask_.i, align 8
  %cond.i = select i1 %cmp.not, i64 %2, i64 %1
  %cmp3 = icmp eq i64 %cond.i, -1
  br i1 %cmp3, label %cleanup74, label %if.end

if.end:                                           ; preds = %entry
  %bitmap_fok_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 2
  %3 = load i8, ptr %bitmap_fok_, align 1, !range !15, !noundef !16
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end27, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end
  %_M_finish.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %action.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 5
  %4 = load i8, ptr %action.i, align 1
  %cmp.i5 = icmp eq i8 %4, 1
  %5 = load i64, ptr %this, align 8
  %price.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %6 = load i64, ptr %price.i, align 8
  %quantity9 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %7 = load i32, ptr %quantity9, align 8
  %conv = zext i32 %7 to i64
  %bid_bitmap_.i.i38 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %8 = load ptr, ptr %bid_bitmap_.i.i38, align 8
  %9 = load ptr, ptr %_M_finish.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i64
  %ask_bitmap_.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %10 = load ptr, ptr %ask_bitmap_.i.i, align 8
  %_M_finish.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8, i32 0, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %_M_finish.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %11 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end26
  %level.0103 = phi i64 [ %cond.i, %land.rhs.lr.ph ], [ %level.1, %if.end26 ]
  %available.0102 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add, %if.end26 ]
  br i1 %cmp.i5, label %while.body, label %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit

_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit: ; preds = %land.rhs
  %add.i = add nsw i64 %5, %level.0103
  %cmp3.i = icmp sge i64 %6, %add.i
  %cmp5.i = icmp sle i64 %6, %add.i
  %cond.i6 = select i1 %cmp.not, i1 %cmp3.i, i1 %cmp5.i
  br i1 %cond.i6, label %while.body, label %cleanup74

while.body:                                       ; preds = %land.rhs, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit
  %12 = load ptr, ptr %cond-lvalue.i, align 8
  %quantity = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %12, i64 %level.0103, i32 2
  %13 = load i64, ptr %quantity, align 8
  %add = add i64 %13, %available.0102
  %cmp10.not = icmp ult i64 %add, %conv
  br i1 %cmp10.not, label %if.end12, label %cleanup74

if.end12:                                         ; preds = %while.body
  br i1 %cmp.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %sub.ptr.rhs.cast.i = ptrtoint ptr %12 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 24
  %sub = add nsw i64 %sub.ptr.div.i, -1
  %cmp16 = icmp eq i64 %level.0103, %sub
  br i1 %cmp16, label %cleanup74, label %if.else.i

if.else.i:                                        ; preds = %if.then14
  %add19 = add nuw i64 %level.0103, 1
  %div5.i = lshr i64 %add19, 6
  %add.ptr.i9.i = getelementptr inbounds i64, ptr %10, i64 %div5.i
  %14 = load i64, ptr %add.ptr.i9.i, align 8
  %sh_prom25.i = and i64 %add19, 63
  %shl.i = shl nsw i64 -1, %sh_prom25.i
  %and26.i = and i64 %14, %shl.i
  %tobool27.not.i = icmp eq i64 %and26.i, 0
  br i1 %tobool27.not.i, label %for.cond36.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.else.i
  %mul29.i = and i64 %add19, -64
  %15 = tail call i64 @llvm.cttz.i64(i64 %and26.i, i1 true), !range !19
  %add32.i = or disjoint i64 %15, %mul29.i
  br label %if.end26

for.cond36.i:                                     ; preds = %if.else.i, %for.body40.i
  %word34.0.in.i = phi i64 [ %word34.0.i, %for.body40.i ], [ %div5.i, %if.else.i ]
  %word34.0.i = add nuw i64 %word34.0.in.i, 1
  %cmp38.not.not.i = icmp ult i64 %word34.0.i, %sub.ptr.div.i.i
  br i1 %cmp38.not.not.i, label %for.body40.i, label %cleanup74

for.body40.i:                                     ; preds = %for.cond36.i
  %add.ptr.i11.i = getelementptr inbounds i64, ptr %10, i64 %word34.0.i
  %16 = load i64, ptr %add.ptr.i11.i, align 8
  %tobool42.not.i = icmp eq i64 %16, 0
  br i1 %tobool42.not.i, label %for.cond36.i, label %if.then43.i, !llvm.loop !21

if.then43.i:                                      ; preds = %for.body40.i
  %mul44.i = shl i64 %word34.0.i, 6
  %17 = tail call i64 @llvm.cttz.i64(i64 %16, i1 true), !range !19
  %add48.i = or disjoint i64 %17, %mul44.i
  br label %if.end26

if.else:                                          ; preds = %if.end12
  %cmp21 = icmp eq i64 %level.0103, 0
  br i1 %cmp21, label %cleanup74, label %if.then.i37

if.then.i37:                                      ; preds = %if.else
  %sub24 = add i64 %level.0103, -1
  %div5.i9 = lshr i64 %sub24, 6
  %conv.i39 = and i64 %sub24, 63
  %add.ptr.i.i40 = getelementptr inbounds i64, ptr %8, i64 %div5.i9
  %18 = load i64, ptr %add.ptr.i.i40, align 8
  %sub.i41 = xor i64 %conv.i39, 63
  %shr.i42 = lshr i64 -1, %sub.i41
  %and.i43 = and i64 %18, %shr.i42
  %tobool.not.i44 = icmp eq i64 %and.i43, 0
  br i1 %tobool.not.i44, label %for.cond.i48, label %if.then3.i45

if.then3.i45:                                     ; preds = %if.then.i37
  %add.i46 = or i64 %sub24, 63
  %19 = tail call i64 @llvm.ctlz.i64(i64 %and.i43, i1 true), !range !19
  %sub6.i47 = sub nuw nsw i64 %add.i46, %19
  br label %if.end26

for.cond.i48:                                     ; preds = %if.then.i37, %for.body.i51
  %word.0.i49 = phi i64 [ %sub8.i52, %for.body.i51 ], [ %div5.i9, %if.then.i37 ]
  %cmp7.not.i50 = icmp eq i64 %word.0.i49, 0
  br i1 %cmp7.not.i50, label %cleanup74, label %for.body.i51

for.body.i51:                                     ; preds = %for.cond.i48
  %sub8.i52 = add nsw i64 %word.0.i49, -1
  %add.ptr.i6.i53 = getelementptr inbounds i64, ptr %8, i64 %sub8.i52
  %20 = load i64, ptr %add.ptr.i6.i53, align 8
  %tobool10.not.i54 = icmp eq i64 %20, 0
  br i1 %tobool10.not.i54, label %for.cond.i48, label %if.then11.i55, !llvm.loop !20

if.then11.i55:                                    ; preds = %for.body.i51
  %mul13.i56 = shl nuw i64 %sub8.i52, 6
  %add14.i57 = or disjoint i64 %mul13.i56, 63
  %21 = tail call i64 @llvm.ctlz.i64(i64 %20, i1 true), !range !19
  %sub19.i58 = sub nuw nsw i64 %add14.i57, %21
  br label %if.end26

if.end26:                                         ; preds = %if.then11.i55, %if.then3.i45, %if.then43.i, %if.then28.i
  %level.1 = phi i64 [ %add48.i, %if.then43.i ], [ %add32.i, %if.then28.i ], [ %sub19.i58, %if.then11.i55 ], [ %sub6.i47, %if.then3.i45 ]
  %cmp5.not = icmp eq i64 %level.1, -1
  br i1 %cmp5.not, label %cleanup74, label %land.rhs, !llvm.loop !22

if.end27:                                         ; preds = %if.end
  br i1 %cmp.not, label %for.cond.preheader, label %if.else45

for.cond.preheader:                               ; preds = %if.end27
  %_M_finish.i60 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %22 = load ptr, ptr %_M_finish.i60, align 8
  %23 = load ptr, ptr %asks_.i, align 8
  %sub.ptr.lhs.cast.i61 = ptrtoint ptr %22 to i64
  %sub.ptr.rhs.cast.i62 = ptrtoint ptr %23 to i64
  %sub.ptr.sub.i63 = sub i64 %sub.ptr.lhs.cast.i61, %sub.ptr.rhs.cast.i62
  %sub.ptr.div.i64 = sdiv exact i64 %sub.ptr.sub.i63, 24
  %cmp31108 = icmp ult i64 %2, %sub.ptr.div.i64
  br i1 %cmp31108, label %land.rhs32.lr.ph, label %cleanup74

land.rhs32.lr.ph:                                 ; preds = %for.cond.preheader
  %action.i66 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 5
  %24 = load i8, ptr %action.i66, align 1
  %cmp.i67 = icmp eq i8 %24, 1
  %25 = load i64, ptr %this, align 8
  %price.i71 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %26 = load i64, ptr %price.i71, align 8
  %quantity39 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %27 = load i32, ptr %quantity39, align 8
  %conv40 = zext i32 %27 to i64
  br label %land.rhs32

for.cond:                                         ; preds = %for.body
  %inc = add i64 %i.0110, 1
  %exitcond.not = icmp eq i64 %inc, %sub.ptr.div.i64
  br i1 %exitcond.not, label %cleanup74, label %land.rhs32, !llvm.loop !23

land.rhs32:                                       ; preds = %land.rhs32.lr.ph, %for.cond
  %i.0110 = phi i64 [ %2, %land.rhs32.lr.ph ], [ %inc, %for.cond ]
  %available.1109 = phi i64 [ 0, %land.rhs32.lr.ph ], [ %add38, %for.cond ]
  %add.i65 = add nsw i64 %25, %i.0110
  %cmp3.i72 = icmp sge i64 %26, %add.i65
  %or.cond = select i1 %cmp.i67, i1 true, i1 %cmp3.i72
  br i1 %or.cond, label %for.body, label %cleanup74

for.body:                                         ; preds = %land.rhs32
  %quantity37 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %23, i64 %i.0110, i32 2
  %28 = load i64, ptr %quantity37, align 8
  %add38 = add i64 %28, %available.1109
  %cmp41.not = icmp ult i64 %add38, %conv40
  br i1 %cmp41.not, label %for.cond, label %cleanup74

if.else45:                                        ; preds = %if.end27
  %add47 = add nuw i64 %1, 1
  %action.i78 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 5
  %29 = load i8, ptr %action.i78, align 1
  %cmp.i79 = icmp ne i8 %29, 1
  %30 = load i64, ptr %this, align 8
  %price.i83 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %31 = load i64, ptr %price.i83, align 8
  %quantity61 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %32 = load i32, ptr %quantity61, align 8
  %conv62 = zext i32 %32 to i64
  br label %for.cond48

for.cond48:                                       ; preds = %cleanup66, %if.else45
  %available.2 = phi i64 [ 0, %if.else45 ], [ %add60, %cleanup66 ]
  %i46.0 = phi i64 [ %add47, %if.else45 ], [ %sub53, %cleanup66 ]
  %cmp49.not = icmp eq i64 %i46.0, 0
  br i1 %cmp49.not, label %cleanup74, label %for.body51

for.body51:                                       ; preds = %for.cond48
  %sub53 = add i64 %i46.0, -1
  %add.i77 = add nsw i64 %30, %sub53
  %cmp5.i85.not = icmp sgt i64 %31, %add.i77
  %or.cond114 = select i1 %cmp.i79, i1 %cmp5.i85.not, i1 false
  br i1 %or.cond114, label %cleanup74, label %cleanup66

cleanup66:                                        ; preds = %for.body51
  %33 = load ptr, ptr %cond-lvalue.i, align 8
  %quantity59 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %33, i64 %sub53, i32 2
  %34 = load i64, ptr %quantity59, align 8
  %add60 = add i64 %34, %available.2
  %cmp63.not.not = icmp ult i64 %add60, %conv62
  br i1 %cmp63.not.not, label %for.cond48, label %cleanup74, !llvm.loop !24

cleanup74:                                        ; preds = %while.body, %if.end26, %if.else, %if.then14, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit, %for.cond.i48, %for.cond36.i, %for.cond48, %cleanup66, %for.body51, %for.body, %land.rhs32, %for.cond, %for.cond.preheader, %entry
  %retval.6 = phi i1 [ false, %entry ], [ false, %for.cond.preheader ], [ true, %for.body ], [ false, %land.rhs32 ], [ false, %for.cond ], [ false, %for.cond48 ], [ true, %cleanup66 ], [ false, %for.body51 ], [ false, %for.cond36.i ], [ false, %for.cond.i48 ], [ true, %while.body ], [ false, %if.end26 ], [ false, %if.else ], [ false, %if.then14 ], [ false, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit ]
  ret i1 %retval.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN6ledger8FastBook11add_restingERKNS_7CommandEj(ptr nocapture noundef nonnull align 8 dereferenceable(280) %this, ptr nocapture noundef nonnull readonly align 8 dereferenceable(31) %command, i32 noundef %remaining) local_unnamed_addr #9 align 2 {
entry:
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %free_head_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 1
  %0 = load i32, ptr %free_head_.i, align 8
  %cmp.i = icmp eq i32 %0, -1
  br i1 %cmp.i, label %_ZN6ledger6detail9OrderPool7acquireEv.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %conv.i = zext i32 %0 to i64
  %1 = load ptr, ptr %pool_, align 8
  %add.ptr.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %conv.i
  %next.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %conv.i, i32 6
  %2 = load i32, ptr %next.i, align 4
  store i32 %2, ptr %free_head_.i, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %add.ptr.i.i, i8 0, i64 21, i1 false)
  %ref.tmp.sroa.71.0.call7.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 24
  store i32 -1, ptr %ref.tmp.sroa.71.0.call7.sroa_idx.i, align 8
  store i32 -1, ptr %next.i, align 4
  %ref.tmp.sroa.9.0.call7.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 32
  store i8 0, ptr %ref.tmp.sroa.9.0.call7.sroa_idx.i, align 8
  %3 = load ptr, ptr %pool_, align 8
  %live11.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %3, i64 %conv.i, i32 7
  store i8 1, ptr %live11.i, align 8
  %size_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 2
  %4 = load i64, ptr %size_.i, align 8
  %inc.i = add i64 %4, 1
  store i64 %inc.i, ptr %size_.i, align 8
  br label %_ZN6ledger6detail9OrderPool7acquireEv.exit

_ZN6ledger6detail9OrderPool7acquireEv.exit:       ; preds = %entry, %if.end.i
  %conv.i3.pre-phi = phi i64 [ %conv.i, %if.end.i ], [ 4294967295, %entry ]
  %5 = load ptr, ptr %pool_, align 8
  %add.ptr.i.i4 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i3.pre-phi
  %id = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 1
  %6 = load i64, ptr %id, align 8
  store i64 %6, ptr %add.ptr.i.i4, align 8
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %7 = load i64, ptr %price, align 8
  %price5 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i3.pre-phi, i32 1
  store i64 %7, ptr %price5, align 8
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i3.pre-phi, i32 2
  store i32 %remaining, ptr %quantity, align 8
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 4
  %8 = load i8, ptr %side, align 4
  %side6 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i3.pre-phi, i32 3
  store i8 %8, ptr %side6, align 4
  %cmp.i5 = icmp eq i8 %8, 0
  %bids_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %9 = load i64, ptr %price, align 8
  %10 = load i64, ptr %this, align 8
  %sub.i = sub nsw i64 %9, %10
  %bids_.i.val = load ptr, ptr %bids_.i, align 8
  %asks_.i.val = load ptr, ptr %asks_.i, align 8
  %11 = select i1 %cmp.i5, ptr %bids_.i.val, ptr %asks_.i.val
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %11, i64 %sub.i, i32 1
  %12 = load i32, ptr %tail, align 4
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i3.pre-phi, i32 5
  store i32 %12, ptr %previous, align 8
  %cmp.not = icmp eq i32 %12, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %_ZN6ledger6detail9OrderPool7acquireEv.exit
  %conv.i6 = zext i32 %12 to i64
  %13 = load ptr, ptr %pool_, align 8
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %13, i64 %conv.i6, i32 6
  store i32 %0, ptr %next, align 4
  br label %if.end

if.else:                                          ; preds = %_ZN6ledger6detail9OrderPool7acquireEv.exit
  %add.ptr.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %11, i64 %sub.i
  store i32 %0, ptr %add.ptr.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 %0, ptr %tail, align 4
  %conv = zext i32 %remaining to i64
  %quantity17 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %11, i64 %sub.i, i32 2
  %14 = load i64, ptr %quantity17, align 8
  %add = add i64 %14, %conv
  store i64 %add, ptr %quantity17, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %11, i64 %sub.i, i32 3
  %15 = load i32, ptr %orders, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %orders, align 8
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 11
  %16 = load i64, ptr %resting_quantity_, align 8
  %add19 = add i64 %16, %conv
  store i64 %add19, ptr %resting_quantity_, align 8
  %17 = load i64, ptr %price, align 8
  %18 = load i64, ptr %this, align 8
  %sub.i8 = sub nsw i64 %17, %18
  %rem = and i64 %sub.i8, 63
  %shl = shl nuw i64 1, %rem
  %19 = load i8, ptr %side, align 4
  %cmp.i9 = icmp eq i8 %19, 0
  %bid_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %ask_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %div2 = lshr i64 %sub.i8, 6
  %bid_bitmap_.i.val = load ptr, ptr %bid_bitmap_.i, align 8
  %ask_bitmap_.i.val = load ptr, ptr %ask_bitmap_.i, align 8
  %20 = select i1 %cmp.i9, ptr %bid_bitmap_.i.val, ptr %ask_bitmap_.i.val
  %add.ptr.i11 = getelementptr inbounds i64, ptr %20, i64 %div2
  %21 = load i64, ptr %add.ptr.i11, align 8
  %or = or i64 %21, %shl
  store i64 %or, ptr %add.ptr.i11, align 8
  %22 = load i8, ptr %side, align 4
  %cmp.i12 = icmp eq i8 %22, 0
  %best_bid_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %cond-lvalue.i13 = select i1 %cmp.i12, ptr %best_bid_.i, ptr %best_ask_.i
  %23 = load i64, ptr %cond-lvalue.i13, align 8
  %cmp27 = icmp eq i64 %23, -1
  br i1 %cmp27, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  br i1 %cmp.i12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %cmp30 = icmp ugt i64 %sub.i8, %23
  br i1 %cmp30, label %if.then32, label %if.end33

cond.false:                                       ; preds = %lor.lhs.false
  %cmp31 = icmp ult i64 %sub.i8, %23
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %cond.false, %cond.true, %if.end
  store i64 %sub.i8, ptr %cond-lvalue.i13, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %cond.false, %cond.true
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4
  %24 = load i64, ptr %id, align 8
  %shr.i.i = lshr i64 %24, 30
  %xor.i.i = xor i64 %shr.i.i, %24
  %mul.i.i = mul i64 %xor.i.i, -4658895280553007687
  %shr2.i.i = lshr i64 %mul.i.i, 27
  %xor3.i.i = xor i64 %shr2.i.i, %mul.i.i
  %mul4.i.i = mul i64 %xor3.i.i, -7723592293110705685
  %shr5.i.i = lshr i64 %mul4.i.i, 31
  %xor6.i.i = xor i64 %shr5.i.i, %mul4.i.i
  %mask_.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 1
  %25 = load i64, ptr %mask_.i.i, align 8
  %and.i.i = and i64 %xor6.i.i, %25
  %26 = load ptr, ptr %index_, align 8
  %add.ptr.i2.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %26, i64 %and.i.i
  %27 = load i64, ptr %add.ptr.i2.i, align 8
  %tobool.not3.i = icmp eq i64 %27, 0
  br i1 %tobool.not3.i, label %_ZN6ledger6detail7IdIndex6insertEmj.exit, label %while.body.i

while.body.i:                                     ; preds = %if.end33, %while.body.i
  %position.04.i = phi i64 [ %and.i, %while.body.i ], [ %and.i.i, %if.end33 ]
  %add.i = add i64 %position.04.i, 1
  %and.i = and i64 %add.i, %25
  %add.ptr.i.i14 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %26, i64 %and.i
  %28 = load i64, ptr %add.ptr.i.i14, align 8
  %tobool.not.i = icmp eq i64 %28, 0
  br i1 %tobool.not.i, label %_ZN6ledger6detail7IdIndex6insertEmj.exit, label %while.body.i, !llvm.loop !25

_ZN6ledger6detail7IdIndex6insertEmj.exit:         ; preds = %while.body.i, %if.end33
  %add.ptr.i.lcssa.i = phi ptr [ %add.ptr.i2.i, %if.end33 ], [ %add.ptr.i.i14, %while.body.i ]
  store i64 %24, ptr %add.ptr.i.lcssa.i, align 8
  %ref.tmp.sroa.4.0.call7.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.lcssa.i, i64 8
  store i32 %0, ptr %ref.tmp.sroa.4.0.call7.sroa_idx.i, align 8
  %size_.i15 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 2
  %29 = load i64, ptr %size_.i15, align 8
  %inc.i16 = add i64 %29, 1
  store i64 %inc.i16, ptr %size_.i15, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %slot) local_unnamed_addr #10 align 2 {
entry:
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %conv.i = zext i32 %slot to i64
  %0 = load ptr, ptr %pool_, align 8
  %add.ptr.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %0, i64 %conv.i
  %order.sroa.0.0.copyload = load i64, ptr %add.ptr.i.i, align 8
  %order.sroa.4.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 8
  %order.sroa.4.0.copyload = load i64, ptr %order.sroa.4.0.call.sroa_idx, align 8
  %order.sroa.5.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 16
  %order.sroa.5.0.copyload = load i32, ptr %order.sroa.5.0.call.sroa_idx, align 8
  %order.sroa.7.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 20
  %order.sroa.7.0.copyload = load i8, ptr %order.sroa.7.0.call.sroa_idx, align 4
  %order.sroa.126.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 24
  %order.sroa.126.0.copyload = load i32, ptr %order.sroa.126.0.call.sroa_idx, align 8
  %order.sroa.16.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 28
  %order.sroa.16.0.copyload = load i32, ptr %order.sroa.16.0.call.sroa_idx, align 4
  %1 = load i64, ptr %this, align 8
  %sub.i = sub nsw i64 %order.sroa.4.0.copyload, %1
  %cmp.i = icmp eq i8 %order.sroa.7.0.copyload, 0
  %bids_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %bids_.i.val = load ptr, ptr %bids_.i, align 8
  %asks_.i.val = load ptr, ptr %asks_.i, align 8
  %2 = select i1 %cmp.i, ptr %bids_.i.val, ptr %asks_.i.val
  %cmp.not = icmp eq i32 %order.sroa.126.0.copyload, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv.i14 = zext i32 %order.sroa.126.0.copyload to i64
  %next8 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %0, i64 %conv.i14, i32 6
  store i32 %order.sroa.16.0.copyload, ptr %next8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %add.ptr.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %2, i64 %sub.i
  store i32 %order.sroa.16.0.copyload, ptr %add.ptr.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cmp11.not = icmp eq i32 %order.sroa.16.0.copyload, -1
  br i1 %cmp11.not, label %if.else18, label %if.then12

if.then12:                                        ; preds = %if.end
  %conv.i16 = zext i32 %order.sroa.16.0.copyload to i64
  %3 = load ptr, ptr %pool_, align 8
  %previous17 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %3, i64 %conv.i16, i32 5
  store i32 %order.sroa.126.0.copyload, ptr %previous17, align 8
  br label %if.end20

if.else18:                                        ; preds = %if.end
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %2, i64 %sub.i, i32 1
  store i32 %order.sroa.126.0.copyload, ptr %tail, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then12
  %conv = zext i32 %order.sroa.5.0.copyload to i64
  %quantity21 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %2, i64 %sub.i, i32 2
  %4 = load i64, ptr %quantity21, align 8
  %sub = sub i64 %4, %conv
  store i64 %sub, ptr %quantity21, align 8
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 11
  %5 = load i64, ptr %resting_quantity_, align 8
  %sub24 = sub i64 %5, %conv
  store i64 %sub24, ptr %resting_quantity_, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %2, i64 %sub.i, i32 3
  %6 = load i32, ptr %orders, align 8
  %dec = add i32 %6, -1
  store i32 %dec, ptr %orders, align 8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then26, label %if.end39

if.then26:                                        ; preds = %if.end20
  %rem = and i64 %sub.i, 63
  %shl = shl nuw i64 1, %rem
  %not = xor i64 %shl, -1
  %bid_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %ask_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %div13 = lshr i64 %sub.i, 6
  %bid_bitmap_.i.val = load ptr, ptr %bid_bitmap_.i, align 8
  %ask_bitmap_.i.val = load ptr, ptr %ask_bitmap_.i, align 8
  %7 = select i1 %cmp.i, ptr %bid_bitmap_.i.val, ptr %ask_bitmap_.i.val
  %add.ptr.i20 = getelementptr inbounds i64, ptr %7, i64 %div13
  %8 = load i64, ptr %add.ptr.i20, align 8
  %and = and i64 %8, %not
  store i64 %and, ptr %add.ptr.i20, align 8
  %best_bid_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %cond-lvalue.i22 = select i1 %cmp.i, ptr %best_bid_.i, ptr %best_ask_.i
  %9 = load i64, ptr %cond-lvalue.i22, align 8
  %cmp32 = icmp eq i64 %9, %sub.i
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.then26
  %call35 = tail call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %order.sroa.7.0.copyload, i64 noundef %sub.i) #18
  store i64 %call35, ptr %cond-lvalue.i22, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %if.then33, %if.end20
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4
  %call40 = tail call noundef zeroext i1 @_ZN6ledger6detail7IdIndex5eraseEm(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %order.sroa.0.0.copyload) #18
  %10 = load ptr, ptr %pool_, align 8
  %add.ptr.i.i28 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %10, i64 %conv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %add.ptr.i.i28, i8 0, i64 21, i1 false)
  %ref.tmp.sroa.71.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i28, i64 24
  store i32 -1, ptr %ref.tmp.sroa.71.0.call.sroa_idx.i, align 8
  %ref.tmp.sroa.8.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i28, i64 28
  store i32 -1, ptr %ref.tmp.sroa.8.0.call.sroa_idx.i, align 4
  %ref.tmp.sroa.9.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i28, i64 32
  store i8 0, ptr %ref.tmp.sroa.9.0.call.sroa_idx.i, align 8
  %free_head_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 1
  %11 = load i32, ptr %free_head_.i, align 8
  %12 = load ptr, ptr %pool_, align 8
  %next5.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv.i, i32 6
  store i32 %11, ptr %next5.i, align 4
  store i32 %slot, ptr %free_head_.i, align 8
  %size_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 2
  %13 = load i64, ptr %size_.i, align 8
  %dec.i = add i64 %13, -1
  store i64 %dec.i, ptr %size_.i, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6ledger6detail7IdIndex5eraseEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) local_unnamed_addr #10 comdat align 2 {
entry:
  %tobool.not = icmp eq i64 %id, 0
  br i1 %tobool.not, label %return, label %if.end

if.end:                                           ; preds = %entry
  %shr.i = lshr i64 %id, 30
  %xor.i = xor i64 %shr.i, %id
  %mul.i = mul i64 %xor.i, -4658895280553007687
  %shr2.i = lshr i64 %mul.i, 27
  %xor3.i = xor i64 %shr2.i, %mul.i
  %mul4.i = mul i64 %xor3.i, -7723592293110705685
  %shr5.i = lshr i64 %mul4.i, 31
  %xor6.i = xor i64 %shr5.i, %mul4.i
  %mask_.i = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i64 0, i32 1
  %0 = load i64, ptr %mask_.i, align 8
  %and.i = and i64 %0, %xor6.i
  %1 = load ptr, ptr %this, align 8
  %add.ptr.i19 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %1, i64 %and.i
  %2 = load i64, ptr %add.ptr.i19, align 8
  %tobool4.not20 = icmp eq i64 %2, 0
  br i1 %tobool4.not20, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end, %while.body
  %3 = phi i64 [ %4, %while.body ], [ %2, %if.end ]
  %hole.021 = phi i64 [ %and16, %while.body ], [ %and.i, %if.end ]
  %cmp.not = icmp eq i64 %3, %id
  %add14 = add i64 %hole.021, 1
  %and16 = and i64 %add14, %0
  %add.ptr.i322 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %1, i64 %and16
  %4 = load i64, ptr %add.ptr.i322, align 8
  %tobool21.not23 = icmp eq i64 %4, 0
  br i1 %cmp.not, label %if.end13, label %while.body

while.body:                                       ; preds = %land.rhs
  br i1 %tobool21.not23, label %return, label %land.rhs, !llvm.loop !26

if.end13:                                         ; preds = %land.rhs
  br i1 %tobool21.not23, label %while.end42, label %while.body22

while.body22:                                     ; preds = %if.end13, %if.end38
  %5 = phi ptr [ %8, %if.end38 ], [ %1, %if.end13 ]
  %6 = phi i64 [ %9, %if.end38 ], [ %0, %if.end13 ]
  %7 = phi i64 [ %10, %if.end38 ], [ %4, %if.end13 ]
  %add.ptr.i326 = phi ptr [ %add.ptr.i3, %if.end38 ], [ %add.ptr.i322, %if.end13 ]
  %cursor.025 = phi i64 [ %and41, %if.end38 ], [ %and16, %if.end13 ]
  %hole.124 = phi i64 [ %hole.2, %if.end38 ], [ %hole.021, %if.end13 ]
  %shr.i5 = lshr i64 %7, 30
  %xor.i6 = xor i64 %shr.i5, %7
  %mul.i7 = mul i64 %xor.i6, -4658895280553007687
  %shr2.i8 = lshr i64 %mul.i7, 27
  %xor3.i9 = xor i64 %shr2.i8, %mul.i7
  %mul4.i10 = mul i64 %xor3.i9, -7723592293110705685
  %shr5.i11 = lshr i64 %mul4.i10, 31
  %xor6.i12 = xor i64 %shr5.i11, %mul4.i10
  %and.i14 = and i64 %6, %xor6.i12
  %sub = sub i64 %hole.124, %and.i14
  %and28 = and i64 %sub, %6
  %sub29 = sub i64 %cursor.025, %and.i14
  %and31 = and i64 %sub29, %6
  %cmp32 = icmp ult i64 %and28, %and31
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %while.body22
  %add.ptr.i16 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %5, i64 %hole.124
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %add.ptr.i16, ptr noundef nonnull align 8 dereferenceable(12) %add.ptr.i326, i64 12, i1 false)
  %.pre = load i64, ptr %mask_.i, align 8
  %.pre30 = load ptr, ptr %this, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %while.body22
  %8 = phi ptr [ %.pre30, %if.then33 ], [ %5, %while.body22 ]
  %9 = phi i64 [ %.pre, %if.then33 ], [ %6, %while.body22 ]
  %hole.2 = phi i64 [ %cursor.025, %if.then33 ], [ %hole.124, %while.body22 ]
  %add39 = add i64 %cursor.025, 1
  %and41 = and i64 %9, %add39
  %add.ptr.i3 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %8, i64 %and41
  %10 = load i64, ptr %add.ptr.i3, align 8
  %tobool21.not = icmp eq i64 %10, 0
  br i1 %tobool21.not, label %while.end42, label %while.body22, !llvm.loop !27

while.end42:                                      ; preds = %if.end38, %if.end13
  %hole.1.lcssa = phi i64 [ %hole.021, %if.end13 ], [ %hole.2, %if.end38 ]
  %.lcssa = phi ptr [ %1, %if.end13 ], [ %8, %if.end38 ]
  %add.ptr.i17 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %.lcssa, i64 %hole.1.lcssa
  store i64 0, ptr %add.ptr.i17, align 8
  %ref.tmp.sroa.4.0.call45.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i17, i64 8
  store i32 -1, ptr %ref.tmp.sroa.4.0.call45.sroa_idx, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i64 0, i32 2
  %11 = load i64, ptr %size_, align 8
  %dec = add i64 %11, -1
  store i64 %dec, ptr %size_, align 8
  br label %return

return:                                           ; preds = %while.body, %if.end, %while.end42, %entry
  %retval.1 = phi i1 [ false, %entry ], [ true, %while.end42 ], [ false, %if.end ], [ false, %while.body ]
  ret i1 %retval.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %slot, i64 noundef %sequence, ptr nocapture noundef nonnull align 8 dereferenceable(24) %output) local_unnamed_addr #10 align 2 {
entry:
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %conv.i = zext i32 %slot to i64
  %0 = load ptr, ptr %pool_, align 8
  %add.ptr.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %0, i64 %conv.i
  %order.sroa.5.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 16
  %order.sroa.5.0.copyload = load i32, ptr %order.sroa.5.0.call.sroa_idx, align 8
  %size_.i = getelementptr inbounds %"class.ledger::EventBuffer", ptr %output, i64 0, i32 1
  %1 = load i64, ptr %size_.i, align 8
  %_M_extent.i.i = getelementptr inbounds %"class.std::span", ptr %output, i64 0, i32 1
  %2 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i.not = icmp eq i64 %1, %2
  br i1 %cmp.i.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %order.sroa.7.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 20
  %order.sroa.7.0.copyload = load i8, ptr %order.sroa.7.0.call.sroa_idx, align 4
  %order.sroa.4.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 8
  %order.sroa.4.0.copyload = load i64, ptr %order.sroa.4.0.call.sroa_idx, align 8
  %order.sroa.0.0.copyload = load i64, ptr %add.ptr.i.i, align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr %size_.i, align 8
  %3 = load ptr, ptr %output, align 8
  %add.ptr.i.i2 = getelementptr inbounds %"struct.ledger::Event", ptr %3, i64 %1
  store i64 %sequence, ptr %add.ptr.i.i2, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i2.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i2, i64 8
  store i8 4, ptr %ref.tmp.sroa.4.0.add.ptr.i.i2.sroa_idx, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i2.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i2, i64 9
  store i8 0, ptr %ref.tmp.sroa.5.0.add.ptr.i.i2.sroa_idx, align 1
  %ref.tmp.sroa.63.0.add.ptr.i.i2.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i2, i64 16
  store i64 %order.sroa.0.0.copyload, ptr %ref.tmp.sroa.63.0.add.ptr.i.i2.sroa_idx, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i2.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i2, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i2.sroa_idx, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i2.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i2, i64 32
  store i8 %order.sroa.7.0.copyload, ptr %ref.tmp.sroa.8.0.add.ptr.i.i2.sroa_idx, align 8
  %ref.tmp.sroa.94.0.add.ptr.i.i2.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i2, i64 40
  store i64 %order.sroa.4.0.copyload, ptr %ref.tmp.sroa.94.0.add.ptr.i.i2.sroa_idx, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i2.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i2, i64 48
  store i32 %order.sroa.5.0.copyload, ptr %ref.tmp.sroa.10.0.add.ptr.i.i2.sroa_idx, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i2.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i2, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i2.sroa_idx, align 4
  br label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit:   ; preds = %entry, %if.end.i
  %conv = zext i32 %order.sroa.5.0.copyload to i64
  %cancelled = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 2
  %4 = load i64, ptr %cancelled, align 8
  %add = add i64 %4, %conv
  store i64 %add, ptr %cancelled, align 8
  tail call void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %slot) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(280) %this, ptr nocapture noundef nonnull readonly align 8 dereferenceable(31) %command, i8 noundef zeroext %reason, ptr nocapture noundef nonnull align 8 dereferenceable(24) %output) local_unnamed_addr #11 align 2 {
entry:
  %quantity7 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %size_.i = getelementptr inbounds %"class.ledger::EventBuffer", ptr %output, i64 0, i32 1
  %0 = load i64, ptr %size_.i, align 8
  %_M_extent.i.i = getelementptr inbounds %"class.std::span", ptr %output, i64 0, i32 1
  %1 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i.not = icmp eq i64 %0, %1
  br i1 %cmp.i.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %2 = load i32, ptr %quantity7, align 8
  %price6 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %3 = load i64, ptr %price6, align 8
  %side5 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 4
  %4 = load i8, ptr %side5, align 4
  %id4 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 1
  %5 = load i64, ptr %id4, align 8
  %6 = load i64, ptr %command, align 8
  %inc.i = add i64 %0, 1
  store i64 %inc.i, ptr %size_.i, align 8
  %7 = load ptr, ptr %output, align 8
  %add.ptr.i.i = getelementptr inbounds %"struct.ledger::Event", ptr %7, i64 %0
  store i64 %6, ptr %add.ptr.i.i, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 8
  store i8 6, ptr %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 9
  store i8 %reason, ptr %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx, align 1
  %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 16
  store i64 %5, ptr %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 32
  store i8 %4, ptr %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 40
  store i64 %3, ptr %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 48
  store i32 %2, ptr %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx, align 4
  br label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit:   ; preds = %entry, %if.end.i
  %8 = load i32, ptr %quantity7, align 8
  %conv = zext i32 %8 to i64
  %rejected = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 4
  %9 = load i64, ptr %rejected, align 8
  %add = add i64 %9, %conv
  store i64 %add, ptr %rejected, align 8
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6ledger8FastBook7processERKNS_7CommandERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr nocapture noundef nonnull readonly align 8 dereferenceable(31) %command, ptr nocapture noundef nonnull align 8 dereferenceable(24) %output) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %size_.i = getelementptr inbounds %"class.ledger::EventBuffer", ptr %output, i64 0, i32 1
  store i64 0, ptr %size_.i, align 8
  %_M_extent.i.i = getelementptr inbounds %"class.std::span", ptr %output, i64 0, i32 1
  %0 = load i64, ptr %_M_extent.i.i, align 8
  %max_orders = getelementptr inbounds %"struct.ledger::Config", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %max_orders, align 8
  %conv = zext i32 %1 to i64
  %mul.i = mul nuw nsw i64 %conv, 3
  %add.i = add nuw nsw i64 %mul.i, 4
  %cmp = icmp ult i64 %0, %add.i
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %action = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 5
  %2 = load i8, ptr %action, align 1
  %cmp4 = icmp ugt i8 %2, 3
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 4
  %3 = load i8, ptr %side, align 4
  %cmp6 = icmp ugt i8 %3, 1
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6
  %tif = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 6
  %4 = load i8, ptr %tif, align 2
  %cmp9 = icmp ugt i8 %4, 2
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp9
  br i1 %or.cond1, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  %quantity7.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %5 = load i32, ptr %quantity7.i, align 8
  %price6.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %6 = load i64, ptr %price6.i, align 8
  %id4.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 1
  %7 = load i64, ptr %id4.i, align 8
  %8 = load i64, ptr %command, align 8
  store i64 1, ptr %size_.i, align 8
  %9 = load ptr, ptr %output, align 8
  store i64 %8, ptr %9, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %9, i64 8
  store i8 6, ptr %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %9, i64 9
  store i8 1, ptr %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i, align 1
  %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %9, i64 16
  store i64 %7, ptr %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %9, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %9, i64 32
  store i8 %3, ptr %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %9, i64 40
  store i64 %6, ptr %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %9, i64 48
  store i32 %5, ptr %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %9, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i, align 4
  %10 = load i32, ptr %quantity7.i, align 8
  %conv.i = zext i32 %10 to i64
  %rejected.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 4
  %11 = load i64, ptr %rejected.i, align 8
  %add.i10 = add i64 %11, %conv.i
  store i64 %add.i10, ptr %rejected.i, align 8
  br label %return

if.end12:                                         ; preds = %if.end
  %id = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 1
  %12 = load i64, ptr %id, align 8
  %tobool.not = icmp eq i64 %12, 0
  br i1 %tobool.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end12
  %quantity7.i11 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %13 = load i32, ptr %quantity7.i11, align 8
  %price6.i16 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %14 = load i64, ptr %price6.i16, align 8
  %15 = load i64, ptr %command, align 8
  store i64 1, ptr %size_.i, align 8
  %16 = load ptr, ptr %output, align 8
  store i64 %15, ptr %16, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i21 = getelementptr inbounds i8, ptr %16, i64 8
  store i8 6, ptr %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i21, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i22 = getelementptr inbounds i8, ptr %16, i64 9
  store i8 2, ptr %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i22, align 1
  %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx.i23 = getelementptr inbounds i8, ptr %16, i64 16
  %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i25 = getelementptr inbounds i8, ptr %16, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx.i23, i8 0, i64 16, i1 false)
  store i8 %3, ptr %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i25, align 8
  %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx.i26 = getelementptr inbounds i8, ptr %16, i64 40
  store i64 %14, ptr %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx.i26, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i27 = getelementptr inbounds i8, ptr %16, i64 48
  store i32 %13, ptr %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i27, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i28 = getelementptr inbounds i8, ptr %16, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i28, align 4
  %17 = load i32, ptr %quantity7.i11, align 8
  %conv.i29 = zext i32 %17 to i64
  %rejected.i30 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 4
  %18 = load i64, ptr %rejected.i30, align 8
  %add.i31 = add i64 %18, %conv.i29
  store i64 %add.i31, ptr %rejected.i30, align 8
  br label %return

if.end15:                                         ; preds = %if.end12
  %cmp17 = icmp eq i8 %2, 2
  %quantity = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %19 = load i32, ptr %quantity, align 8
  %tobool18 = icmp ne i32 %19, 0
  %or.cond2 = select i1 %cmp17, i1 true, i1 %tobool18
  br i1 %or.cond2, label %if.end21, label %if.end.i.i37

if.end.i.i37:                                     ; preds = %if.end15
  %price6.i38 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %20 = load i64, ptr %price6.i38, align 8
  %21 = load i64, ptr %command, align 8
  store i64 1, ptr %size_.i, align 8
  %22 = load ptr, ptr %output, align 8
  store i64 %21, ptr %22, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i43 = getelementptr inbounds i8, ptr %22, i64 8
  store i8 6, ptr %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i43, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i44 = getelementptr inbounds i8, ptr %22, i64 9
  store i8 4, ptr %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i44, align 1
  %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx.i45 = getelementptr inbounds i8, ptr %22, i64 16
  store i64 %12, ptr %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx.i45, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx.i46 = getelementptr inbounds i8, ptr %22, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx.i46, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i47 = getelementptr inbounds i8, ptr %22, i64 32
  store i8 %3, ptr %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i47, align 8
  %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx.i48 = getelementptr inbounds i8, ptr %22, i64 40
  store i64 %20, ptr %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx.i48, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i49 = getelementptr inbounds i8, ptr %22, i64 48
  store i32 0, ptr %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i49, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i50 = getelementptr inbounds i8, ptr %22, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i50, align 4
  %23 = load i32, ptr %quantity, align 8
  %conv.i51 = zext i32 %23 to i64
  %rejected.i52 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 4
  %24 = load i64, ptr %rejected.i52, align 8
  %add.i53 = add i64 %24, %conv.i51
  store i64 %add.i53, ptr %rejected.i52, align 8
  br label %return

if.end21:                                         ; preds = %if.end15
  switch i8 %2, label %if.end.i [
    i8 3, label %land.lhs.true27
    i8 0, label %land.lhs.true27
  ]

land.lhs.true27:                                  ; preds = %if.end21, %if.end21
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %25 = load i64, ptr %price, align 8
  %26 = load i64, ptr %this, align 8
  %cmp29 = icmp slt i64 %25, %26
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %this, i64 0, i32 1
  %27 = load i64, ptr %max_price, align 8
  %cmp33 = icmp sgt i64 %25, %27
  %or.cond9 = select i1 %cmp29, i1 true, i1 %cmp33
  br i1 %or.cond9, label %if.end.i.i59, label %if.end.i

if.end.i.i59:                                     ; preds = %land.lhs.true27
  %28 = load i64, ptr %command, align 8
  store i64 1, ptr %size_.i, align 8
  %29 = load ptr, ptr %output, align 8
  store i64 %28, ptr %29, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i65 = getelementptr inbounds i8, ptr %29, i64 8
  store i8 6, ptr %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i65, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i66 = getelementptr inbounds i8, ptr %29, i64 9
  store i8 3, ptr %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i66, align 1
  %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx.i67 = getelementptr inbounds i8, ptr %29, i64 16
  store i64 %12, ptr %ref.tmp.sroa.61.0.add.ptr.i.i.sroa_idx.i67, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx.i68 = getelementptr inbounds i8, ptr %29, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx.i68, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i69 = getelementptr inbounds i8, ptr %29, i64 32
  store i8 %3, ptr %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i69, align 8
  %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx.i70 = getelementptr inbounds i8, ptr %29, i64 40
  store i64 %25, ptr %ref.tmp.sroa.92.0.add.ptr.i.i.sroa_idx.i70, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i71 = getelementptr inbounds i8, ptr %29, i64 48
  store i32 %19, ptr %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i71, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i72 = getelementptr inbounds i8, ptr %29, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i72, align 4
  %30 = load i32, ptr %quantity, align 8
  %conv.i73 = zext i32 %30 to i64
  %rejected.i74 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 4
  %31 = load i64, ptr %rejected.i74, align 8
  %add.i75 = add i64 %31, %conv.i73
  store i64 %add.i75, ptr %rejected.i74, align 8
  br label %return

if.end.i:                                         ; preds = %if.end21, %land.lhs.true27
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4
  %shr.i.i = lshr i64 %12, 30
  %xor.i.i = xor i64 %shr.i.i, %12
  %mul.i.i = mul i64 %xor.i.i, -4658895280553007687
  %shr2.i.i = lshr i64 %mul.i.i, 27
  %xor3.i.i = xor i64 %shr2.i.i, %mul.i.i
  %mul4.i.i = mul i64 %xor3.i.i, -7723592293110705685
  %shr5.i.i = lshr i64 %mul4.i.i, 31
  %xor6.i.i = xor i64 %shr5.i.i, %mul4.i.i
  %mask_.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 1
  %32 = load i64, ptr %mask_.i.i, align 8
  %and.i.i = and i64 %32, %xor6.i.i
  %33 = load ptr, ptr %index_, align 8
  %add.ptr.i5.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %33, i64 %and.i.i
  %34 = load i64, ptr %add.ptr.i5.i, align 8
  %tobool4.not6.i = icmp eq i64 %34, 0
  br i1 %tobool4.not6.i, label %_ZNK6ledger6detail7IdIndex4findEm.exit, label %while.body.i

while.body.i:                                     ; preds = %if.end.i, %if.end11.i
  %35 = phi i64 [ %37, %if.end11.i ], [ %34, %if.end.i ]
  %position.07.i = phi i64 [ %and.i, %if.end11.i ], [ %and.i.i, %if.end.i ]
  %cmp.i = icmp eq i64 %35, %12
  br i1 %cmp.i, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %while.body.i
  %slot.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %33, i64 %position.07.i, i32 1
  %36 = load i32, ptr %slot.i, align 8
  br label %_ZNK6ledger6detail7IdIndex4findEm.exit

if.end11.i:                                       ; preds = %while.body.i
  %add.i77 = add i64 %position.07.i, 1
  %and.i = and i64 %add.i77, %32
  %add.ptr.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %33, i64 %and.i
  %37 = load i64, ptr %add.ptr.i.i, align 8
  %tobool4.not.i = icmp eq i64 %37, 0
  br i1 %tobool4.not.i, label %_ZNK6ledger6detail7IdIndex4findEm.exit, label %while.body.i, !llvm.loop !28

_ZNK6ledger6detail7IdIndex4findEm.exit:           ; preds = %if.end11.i, %if.end.i, %if.then8.i
  %retval.1.i = phi i32 [ %36, %if.then8.i ], [ -1, %if.end.i ], [ -1, %if.end11.i ]
  %38 = and i8 %2, -2
  %or.cond4 = icmp eq i8 %38, 2
  %cmp45 = icmp eq i32 %retval.1.i, -1
  br i1 %or.cond4, label %if.then44, label %if.else

if.then44:                                        ; preds = %_ZNK6ledger6detail7IdIndex4findEm.exit
  br i1 %cmp45, label %if.then46, label %if.end53

if.then46:                                        ; preds = %if.then44
  %call47 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 6, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.else:                                          ; preds = %_ZNK6ledger6detail7IdIndex4findEm.exit
  br i1 %cmp45, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.else
  %call51 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end53:                                         ; preds = %if.else, %if.then44
  switch i8 %2, label %if.end67 [
    i8 2, label %if.then56
    i8 3, label %land.lhs.true60
  ]

if.then56:                                        ; preds = %if.end53
  %39 = load i64, ptr %command, align 8
  tail call void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %retval.1.i, i64 noundef %39, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

land.lhs.true60:                                  ; preds = %if.end53
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %conv.i78 = zext i32 %retval.1.i to i64
  %40 = load ptr, ptr %pool_, align 8
  %side62 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %40, i64 %conv.i78, i32 3
  %41 = load i8, ptr %side62, align 4
  %cmp64.not = icmp eq i8 %41, %3
  br i1 %cmp64.not, label %if.end78, label %if.then65

if.then65:                                        ; preds = %land.lhs.true60
  %call66 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 9, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end67:                                         ; preds = %if.end53
  %cmp69 = icmp eq i8 %2, 0
  %cmp72 = icmp eq i8 %4, 0
  %or.cond5 = select i1 %cmp69, i1 %cmp72, i1 false
  br i1 %or.cond5, label %land.lhs.true73, label %if.end78

land.lhs.true73:                                  ; preds = %if.end67
  %free_head_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 1
  %42 = load i32, ptr %free_head_.i, align 8
  %cmp.i80 = icmp eq i32 %42, -1
  br i1 %cmp.i80, label %if.then76, label %if.end90.thread

if.end90.thread:                                  ; preds = %land.lhs.true73
  %price93185 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %43 = load i64, ptr %price93185, align 8
  br label %49

if.then76:                                        ; preds = %land.lhs.true73
  %call77 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 7, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end78:                                         ; preds = %land.lhs.true60, %if.end67
  %cmp80 = icmp eq i8 %4, 2
  br i1 %cmp80, label %land.lhs.true81, label %if.end85

land.lhs.true81:                                  ; preds = %if.end78
  %call82 = tail call noundef zeroext i1 @_ZNK6ledger8FastBook8can_fillERKNS_7CommandE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command) #18
  br i1 %call82, label %if.end85, label %if.then83

if.then83:                                        ; preds = %land.lhs.true81
  %call84 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 8, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end85:                                         ; preds = %land.lhs.true81, %if.end78
  %cmp87 = icmp eq i8 %2, 3
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end85
  %44 = load i64, ptr %command, align 8
  tail call void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %retval.1.i, i64 noundef %44, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  %.pre = load i8, ptr %action, align 1
  %.pre173 = load i64, ptr %size_.i, align 8
  %.pre174 = load i64, ptr %_M_extent.i.i, align 8
  %.pre176.pre = load i32, ptr %quantity, align 8
  %45 = freeze i8 %.pre
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end85
  %.pre176 = phi i32 [ %.pre176.pre, %if.then88 ], [ %19, %if.end85 ]
  %46 = phi i64 [ %.pre174, %if.then88 ], [ %0, %if.end85 ]
  %47 = phi i64 [ %.pre173, %if.then88 ], [ 0, %if.end85 ]
  %.fr = phi i8 [ %45, %if.then88 ], [ %2, %if.end85 ]
  %cmp92 = icmp eq i8 %.fr, 1
  %price93 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %48 = load i64, ptr %price93, align 8
  %spec.select = select i1 %cmp92, i64 0, i64 %48
  br label %49

49:                                               ; preds = %if.end90, %if.end90.thread
  %price93188 = phi ptr [ %price93185, %if.end90.thread ], [ %price93, %if.end90 ]
  %50 = phi i64 [ 0, %if.end90.thread ], [ %47, %if.end90 ]
  %51 = phi i64 [ %0, %if.end90.thread ], [ %46, %if.end90 ]
  %.pre176187 = phi i32 [ %19, %if.end90.thread ], [ %.pre176, %if.end90 ]
  %52 = phi i64 [ %43, %if.end90.thread ], [ %spec.select, %if.end90 ]
  %cmp.i83.not = icmp eq i64 %50, %51
  br i1 %cmp.i83.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit, label %if.end.i84

if.end.i84:                                       ; preds = %49
  %53 = load i8, ptr %side, align 4
  %54 = load i64, ptr %id, align 8
  %55 = load i64, ptr %command, align 8
  %inc.i = add i64 %50, 1
  store i64 %inc.i, ptr %size_.i, align 8
  %56 = load ptr, ptr %output, align 8
  %add.ptr.i.i85 = getelementptr inbounds %"struct.ledger::Event", ptr %56, i64 %50
  store i64 %55, ptr %add.ptr.i.i85, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i85.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i85, i64 8
  store i8 0, ptr %ref.tmp.sroa.4.0.add.ptr.i.i85.sroa_idx, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i85.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i85, i64 9
  store i8 0, ptr %ref.tmp.sroa.5.0.add.ptr.i.i85.sroa_idx, align 1
  %ref.tmp.sroa.6160.0.add.ptr.i.i85.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i85, i64 16
  store i64 %54, ptr %ref.tmp.sroa.6160.0.add.ptr.i.i85.sroa_idx, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i85.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i85, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i85.sroa_idx, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i85.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i85, i64 32
  store i8 %53, ptr %ref.tmp.sroa.8.0.add.ptr.i.i85.sroa_idx, align 8
  %ref.tmp.sroa.9161.0.add.ptr.i.i85.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i85, i64 40
  store i64 %52, ptr %ref.tmp.sroa.9161.0.add.ptr.i.i85.sroa_idx, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i85.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i85, i64 48
  store i32 %.pre176187, ptr %ref.tmp.sroa.10.0.add.ptr.i.i85.sroa_idx, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i85.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i85, i64 52
  store i32 %.pre176187, ptr %ref.tmp.sroa.11.0.add.ptr.i.i85.sroa_idx, align 4
  %.pre175 = load i32, ptr %quantity, align 8
  br label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit:   ; preds = %49, %if.end.i84
  %57 = phi i32 [ %.pre176187, %49 ], [ %.pre175, %if.end.i84 ]
  %conv106 = zext i32 %57 to i64
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12
  %58 = load i64, ptr %statistics_, align 8
  %add = add i64 %58, %conv106
  store i64 %add, ptr %statistics_, align 8
  %59 = load i32, ptr %quantity, align 8
  %tobool112.not169 = icmp eq i32 %59, 0
  br i1 %tobool112.not169, label %return, label %land.lhs.true113.lr.ph

land.lhs.true113.lr.ph:                           ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit
  %60 = load i8, ptr %side, align 4
  %cmp110.not = icmp eq i8 %60, 0
  %best_bid_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %cond-lvalue.i = select i1 %cmp110.not, ptr %best_ask_.i, ptr %best_bid_.i
  %bids_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %cond-lvalue.i94 = select i1 %cmp110.not, ptr %asks_.i, ptr %bids_.i
  %pool_122 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 11
  %executed = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 1
  %trade_count = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 5
  br label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true113.lr.ph, %if.end197
  %remaining107.0170 = phi i32 [ %59, %land.lhs.true113.lr.ph ], [ %sub, %if.end197 ]
  %61 = load i64, ptr %cond-lvalue.i, align 8
  %cmp115.not = icmp eq i64 %61, -1
  %.pre181 = load i8, ptr %action, align 1
  br i1 %cmp115.not, label %if.then199, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true113
  %cmp.i92 = icmp eq i8 %.pre181, 1
  br i1 %cmp.i92, label %while.body, label %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit

_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit: ; preds = %land.rhs
  %62 = load i64, ptr %this, align 8
  %add.i91 = add nsw i64 %62, %61
  %63 = load i8, ptr %side, align 4
  %cmp2.i = icmp eq i8 %63, 0
  %64 = load i64, ptr %price93188, align 8
  %cmp3.i = icmp sge i64 %64, %add.i91
  %cmp5.i = icmp sle i64 %64, %add.i91
  %cond.i = select i1 %cmp2.i, i1 %cmp3.i, i1 %cmp5.i
  br i1 %cond.i, label %while.body, label %if.then199

while.body:                                       ; preds = %land.rhs, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit
  %65 = load ptr, ptr %cond-lvalue.i94, align 8
  %add.ptr.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %65, i64 %61
  %66 = load i32, ptr %add.ptr.i, align 8
  %conv.i99 = zext i32 %66 to i64
  %67 = load ptr, ptr %pool_122, align 8
  %add.ptr.i.i100 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %67, i64 %conv.i99
  %quantity124 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %67, i64 %conv.i99, i32 2
  %68 = load i32, ptr %quantity124, align 4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %68, i32 %remaining107.0170)
  %sub = sub i32 %remaining107.0170, %.sroa.speculated
  %sub127 = sub i32 %68, %.sroa.speculated
  store i32 %sub127, ptr %quantity124, align 8
  %conv128 = zext i32 %.sroa.speculated to i64
  %69 = load i64, ptr %cond-lvalue.i, align 8
  %70 = load ptr, ptr %cond-lvalue.i94, align 8
  %quantity132 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %70, i64 %69, i32 2
  %71 = load i64, ptr %quantity132, align 8
  %sub133 = sub i64 %71, %conv128
  store i64 %sub133, ptr %quantity132, align 8
  %72 = load i64, ptr %resting_quantity_, align 8
  %sub135 = sub i64 %72, %conv128
  store i64 %sub135, ptr %resting_quantity_, align 8
  %73 = load i64, ptr %executed, align 8
  %add138 = add i64 %73, %conv128
  store i64 %add138, ptr %executed, align 8
  %74 = load i64, ptr %trade_count, align 8
  %inc = add i64 %74, 1
  store i64 %inc, ptr %trade_count, align 8
  %price152 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %67, i64 %conv.i99, i32 1
  %75 = load i64, ptr %size_.i, align 8
  %76 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i113.not = icmp eq i64 %75, %76
  br i1 %cmp.i113.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit131, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit117

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit117: ; preds = %while.body
  %77 = load i64, ptr %price152, align 8
  %78 = load i8, ptr %side, align 4
  %79 = load i64, ptr %add.ptr.i.i100, align 8
  %80 = load i64, ptr %id, align 8
  %81 = load i64, ptr %command, align 8
  %inc.i115 = add i64 %75, 1
  store i64 %inc.i115, ptr %size_.i, align 8
  %82 = load ptr, ptr %output, align 8
  %add.ptr.i.i116 = getelementptr inbounds %"struct.ledger::Event", ptr %82, i64 %75
  store i64 %81, ptr %add.ptr.i.i116, align 8
  %ref.tmp140.sroa.4.0.add.ptr.i.i116.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i116, i64 8
  store i8 1, ptr %ref.tmp140.sroa.4.0.add.ptr.i.i116.sroa_idx, align 8
  %ref.tmp140.sroa.5.0.add.ptr.i.i116.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i116, i64 9
  store i8 0, ptr %ref.tmp140.sroa.5.0.add.ptr.i.i116.sroa_idx, align 1
  %ref.tmp140.sroa.6145.0.add.ptr.i.i116.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i116, i64 16
  store i64 %80, ptr %ref.tmp140.sroa.6145.0.add.ptr.i.i116.sroa_idx, align 8
  %ref.tmp140.sroa.7.0.add.ptr.i.i116.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i116, i64 24
  store i64 %79, ptr %ref.tmp140.sroa.7.0.add.ptr.i.i116.sroa_idx, align 8
  %ref.tmp140.sroa.8.0.add.ptr.i.i116.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i116, i64 32
  store i8 %78, ptr %ref.tmp140.sroa.8.0.add.ptr.i.i116.sroa_idx, align 8
  %ref.tmp140.sroa.9146.0.add.ptr.i.i116.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i116, i64 40
  store i64 %77, ptr %ref.tmp140.sroa.9146.0.add.ptr.i.i116.sroa_idx, align 8
  %ref.tmp140.sroa.10.0.add.ptr.i.i116.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i116, i64 48
  store i32 %.sroa.speculated, ptr %ref.tmp140.sroa.10.0.add.ptr.i.i116.sroa_idx, align 8
  %ref.tmp140.sroa.11.0.add.ptr.i.i116.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i116, i64 52
  store i32 %sub, ptr %ref.tmp140.sroa.11.0.add.ptr.i.i116.sroa_idx, align 4
  %.pre177 = load i64, ptr %size_.i, align 8
  %.pre178 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i120.not = icmp eq i64 %.pre177, %.pre178
  br i1 %cmp.i120.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit131, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit124

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit124: ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit117
  %83 = load i64, ptr %price152, align 8
  %side169 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %67, i64 %conv.i99, i32 3
  %84 = load i8, ptr %side169, align 4
  %85 = load i64, ptr %id, align 8
  %86 = load i64, ptr %add.ptr.i.i100, align 8
  %87 = load i32, ptr %quantity124, align 8
  %tobool161.not = icmp eq i32 %87, 0
  %cond162 = select i1 %tobool161.not, i8 3, i8 2
  %88 = load i64, ptr %command, align 8
  %inc.i122 = add i64 %.pre177, 1
  store i64 %inc.i122, ptr %size_.i, align 8
  %89 = load ptr, ptr %output, align 8
  %add.ptr.i.i123 = getelementptr inbounds %"struct.ledger::Event", ptr %89, i64 %.pre177
  store i64 %88, ptr %add.ptr.i.i123, align 8
  %ref.tmp156.sroa.4.0.add.ptr.i.i123.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i123, i64 8
  store i8 %cond162, ptr %ref.tmp156.sroa.4.0.add.ptr.i.i123.sroa_idx, align 8
  %ref.tmp156.sroa.5.0.add.ptr.i.i123.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i123, i64 9
  store i8 0, ptr %ref.tmp156.sroa.5.0.add.ptr.i.i123.sroa_idx, align 1
  %ref.tmp156.sroa.6143.0.add.ptr.i.i123.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i123, i64 16
  store i64 %86, ptr %ref.tmp156.sroa.6143.0.add.ptr.i.i123.sroa_idx, align 8
  %ref.tmp156.sroa.7.0.add.ptr.i.i123.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i123, i64 24
  store i64 %85, ptr %ref.tmp156.sroa.7.0.add.ptr.i.i123.sroa_idx, align 8
  %ref.tmp156.sroa.8.0.add.ptr.i.i123.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i123, i64 32
  store i8 %84, ptr %ref.tmp156.sroa.8.0.add.ptr.i.i123.sroa_idx, align 8
  %ref.tmp156.sroa.9144.0.add.ptr.i.i123.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i123, i64 40
  store i64 %83, ptr %ref.tmp156.sroa.9144.0.add.ptr.i.i123.sroa_idx, align 8
  %ref.tmp156.sroa.10.0.add.ptr.i.i123.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i123, i64 48
  store i32 %.sroa.speculated, ptr %ref.tmp156.sroa.10.0.add.ptr.i.i123.sroa_idx, align 8
  %ref.tmp156.sroa.11.0.add.ptr.i.i123.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i123, i64 52
  store i32 %87, ptr %ref.tmp156.sroa.11.0.add.ptr.i.i123.sroa_idx, align 4
  %.pre179 = load i64, ptr %size_.i, align 8
  %.pre180 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i127.not = icmp eq i64 %.pre179, %.pre180
  br i1 %cmp.i127.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit131, label %if.end.i128

if.end.i128:                                      ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit124
  %90 = load i64, ptr %price152, align 8
  %91 = load i8, ptr %side, align 4
  %92 = load i64, ptr %add.ptr.i.i100, align 8
  %93 = load i64, ptr %id, align 8
  %tobool180.not = icmp eq i32 %sub, 0
  %cond181 = select i1 %tobool180.not, i8 3, i8 2
  %94 = load i64, ptr %command, align 8
  %inc.i129 = add i64 %.pre179, 1
  store i64 %inc.i129, ptr %size_.i, align 8
  %95 = load ptr, ptr %output, align 8
  %add.ptr.i.i130 = getelementptr inbounds %"struct.ledger::Event", ptr %95, i64 %.pre179
  store i64 %94, ptr %add.ptr.i.i130, align 8
  %ref.tmp176.sroa.4.0.add.ptr.i.i130.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i130, i64 8
  store i8 %cond181, ptr %ref.tmp176.sroa.4.0.add.ptr.i.i130.sroa_idx, align 8
  %ref.tmp176.sroa.5.0.add.ptr.i.i130.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i130, i64 9
  store i8 0, ptr %ref.tmp176.sroa.5.0.add.ptr.i.i130.sroa_idx, align 1
  %ref.tmp176.sroa.6141.0.add.ptr.i.i130.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i130, i64 16
  store i64 %93, ptr %ref.tmp176.sroa.6141.0.add.ptr.i.i130.sroa_idx, align 8
  %ref.tmp176.sroa.7.0.add.ptr.i.i130.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i130, i64 24
  store i64 %92, ptr %ref.tmp176.sroa.7.0.add.ptr.i.i130.sroa_idx, align 8
  %ref.tmp176.sroa.8.0.add.ptr.i.i130.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i130, i64 32
  store i8 %91, ptr %ref.tmp176.sroa.8.0.add.ptr.i.i130.sroa_idx, align 8
  %ref.tmp176.sroa.9142.0.add.ptr.i.i130.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i130, i64 40
  store i64 %90, ptr %ref.tmp176.sroa.9142.0.add.ptr.i.i130.sroa_idx, align 8
  %ref.tmp176.sroa.10.0.add.ptr.i.i130.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i130, i64 48
  store i32 %.sroa.speculated, ptr %ref.tmp176.sroa.10.0.add.ptr.i.i130.sroa_idx, align 8
  %ref.tmp176.sroa.11.0.add.ptr.i.i130.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i130, i64 52
  store i32 %sub, ptr %ref.tmp176.sroa.11.0.add.ptr.i.i130.sroa_idx, align 4
  br label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit131

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit131: ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit117, %while.body, %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit124, %if.end.i128
  %96 = load i32, ptr %quantity124, align 8
  %tobool195.not = icmp eq i32 %96, 0
  br i1 %tobool195.not, label %if.then196, label %if.end197

if.then196:                                       ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit131
  tail call void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %66) #18
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit131
  %tobool112.not = icmp eq i32 %sub, 0
  br i1 %tobool112.not, label %return, label %land.lhs.true113, !llvm.loop !29

if.then199:                                       ; preds = %land.lhs.true113, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit
  %cmp201 = icmp ne i8 %.pre181, 1
  %97 = load i8, ptr %tif, align 2
  %cmp204 = icmp eq i8 %97, 0
  %or.cond6 = select i1 %cmp201, i1 %cmp204, i1 false
  br i1 %or.cond6, label %if.then205, label %if.else206

if.then205:                                       ; preds = %if.then199
  tail call void @_ZN6ledger8FastBook11add_restingERKNS_7CommandEj(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i32 noundef %remaining107.0170) #18
  br label %return

if.else206:                                       ; preds = %if.then199
  %conv207 = zext i32 %remaining107.0170 to i64
  %expired = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 3
  %98 = load i64, ptr %expired, align 8
  %add209 = add i64 %98, %conv207
  store i64 %add209, ptr %expired, align 8
  %99 = load i64, ptr %size_.i, align 8
  %100 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i134.not = icmp eq i64 %99, %100
  br i1 %cmp.i134.not, label %return, label %if.end.i135

if.end.i135:                                      ; preds = %if.else206
  %101 = load i8, ptr %side, align 4
  %102 = load i64, ptr %id, align 8
  %103 = load i64, ptr %command, align 8
  %inc.i136 = add i64 %99, 1
  store i64 %inc.i136, ptr %size_.i, align 8
  %104 = load ptr, ptr %output, align 8
  %add.ptr.i.i137 = getelementptr inbounds %"struct.ledger::Event", ptr %104, i64 %99
  store i64 %103, ptr %add.ptr.i.i137, align 8
  %ref.tmp210.sroa.4.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 8
  store i8 5, ptr %ref.tmp210.sroa.4.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp210.sroa.5.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 9
  store i8 0, ptr %ref.tmp210.sroa.5.0.add.ptr.i.i137.sroa_idx, align 1
  %ref.tmp210.sroa.6139.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 16
  store i64 %102, ptr %ref.tmp210.sroa.6139.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp210.sroa.7.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 24
  store i64 0, ptr %ref.tmp210.sroa.7.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp210.sroa.8.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 32
  store i8 %101, ptr %ref.tmp210.sroa.8.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp210.sroa.9140.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 40
  store i64 %52, ptr %ref.tmp210.sroa.9140.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp210.sroa.10.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 48
  store i32 %remaining107.0170, ptr %ref.tmp210.sroa.10.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp210.sroa.11.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 52
  store i32 0, ptr %ref.tmp210.sroa.11.0.add.ptr.i.i137.sroa_idx, align 4
  br label %return

return:                                           ; preds = %if.end197, %if.end.i135, %if.else206, %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit, %if.then205, %if.then46, %if.then50, %if.then56, %if.then65, %if.then76, %if.then83, %entry, %if.end.i.i59, %if.end.i.i37, %if.then13, %if.then10
  %retval.1 = phi i32 [ 1, %if.then10 ], [ 1, %if.end.i.i59 ], [ 1, %if.end.i.i37 ], [ 1, %if.then13 ], [ 2, %entry ], [ 1, %if.then46 ], [ 0, %if.then56 ], [ 1, %if.then65 ], [ 1, %if.then76 ], [ 1, %if.then83 ], [ 1, %if.then50 ], [ 0, %if.then205 ], [ 0, %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit ], [ 0, %if.else206 ], [ 0, %if.end.i135 ], [ 0, %if.end197 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6ledger8FastBook8snapshotEv(ptr dead_on_unwind noalias writable sret(%"struct.ledger::Snapshot") align 8 %agg.result, ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp.i12 = alloca %"struct.ledger::LevelSnapshot", align 8
  %ref.tmp10.i13 = alloca %"struct.ledger::RestingOrder", align 8
  %ref.tmp.i = alloca %"struct.ledger::LevelSnapshot", align 8
  %ref.tmp10.i = alloca %"struct.ledger::RestingOrder", align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %agg.result, i8 0, i64 96, i1 false)
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %size_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 2
  %0 = load i64, ptr %size_.i, align 8
  %cmp.i = icmp ugt i64 %0, 288230376151711743
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #19
          to label %.noexc unwind label %lpad

.noexc:                                           ; preds = %if.then.i
  unreachable

if.end.i:                                         ; preds = %entry
  %_M_end_of_storage.i.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %agg.result, i64 0, i32 2
  %cmp3.i.not = icmp eq i64 %0, 0
  br i1 %cmp3.i.not, label %invoke.cont, label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit.i: ; preds = %if.end.i
  %mul.i.i.i = shl nuw nsw i64 %0, 5
  %call5.i.i.i3 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i) #20
          to label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %lpad

_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit.i
  %_M_finish.i.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %agg.result, i64 0, i32 1
  store ptr %call5.i.i.i3, ptr %agg.result, align 8
  store ptr %call5.i.i.i3, ptr %_M_finish.i.i, align 8
  %add.ptr21.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %call5.i.i.i3, i64 %0
  store ptr %add.ptr21.i, ptr %_M_end_of_storage.i.i, align 8
  br label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit.i, %if.end.i
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12
  %stats = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %stats, ptr noundef nonnull align 8 dereferenceable(48) %statistics_, i64 48, i1 false)
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %_M_finish.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish.i, align 8
  %2 = load ptr, ptr %bids_, align 8
  %cmp.not68 = icmp eq ptr %1, %2
  br i1 %cmp.not68, label %for.cond6.preheader, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %invoke.cont
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %2 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 24
  %price.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i, i64 0, i32 2
  %quantity.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i, i64 0, i32 3
  %orders6.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i, i64 0, i32 4
  %_M_finish.i.i.i = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %_M_end_of_storage.i.i.i = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %levels.i = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1
  %side12.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i, i64 0, i32 1
  %price14.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i, i64 0, i32 3
  %quantity16.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i, i64 0, i32 4
  %_M_finish.i.i1.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %agg.result, i64 0, i32 1
  br label %for.body

for.cond6.preheader:                              ; preds = %for.inc, %invoke.cont
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %_M_finish.i7 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %3 = load ptr, ptr %_M_finish.i7, align 8
  %4 = load ptr, ptr %asks_, align 8
  %cmp874.not = icmp eq ptr %3, %4
  br i1 %cmp874.not, label %for.end14, label %for.body10.lr.ph

for.body10.lr.ph:                                 ; preds = %for.cond6.preheader
  %price.i20 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i12, i64 0, i32 2
  %quantity.i22 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i12, i64 0, i32 3
  %orders6.i24 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i12, i64 0, i32 4
  %_M_finish.i.i.i25 = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %_M_end_of_storage.i.i.i26 = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %levels.i57 = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1
  %side12.i35 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i13, i64 0, i32 1
  %price14.i36 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i13, i64 0, i32 3
  %quantity16.i37 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i13, i64 0, i32 4
  %_M_finish.i.i1.i46 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %agg.result, i64 0, i32 1
  br label %for.body10

lpad:                                             ; preds = %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit.i, %if.then.i
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.069 = phi i64 [ %sub.ptr.div.i, %for.body.lr.ph ], [ %sub, %for.inc ]
  %sub = add i64 %i.069, -1
  %6 = load ptr, ptr %bids_, align 8
  %add.ptr.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %6, i64 %sub
  %orders.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %6, i64 %sub, i32 3
  %7 = load i32, ptr %orders.i, align 8
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.inc, label %if.end.i4

if.end.i4:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp.i) #18
  store i8 0, ptr %ref.tmp.i, align 8
  %8 = load i64, ptr %this, align 8
  %add.i.i = add nsw i64 %8, %sub
  store i64 %add.i.i, ptr %price.i, align 8
  %quantity5.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %6, i64 %sub, i32 2
  %9 = load i64, ptr %quantity5.i, align 8
  store i64 %9, ptr %quantity.i, align 8
  store i32 %7, ptr %orders6.i, align 8
  %10 = load ptr, ptr %_M_finish.i.i.i, align 8
  %11 = load ptr, ptr %_M_end_of_storage.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %10, %11
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp.i, i64 32, i1 false)
  %12 = load ptr, ptr %_M_finish.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %12, i64 1
  store ptr %incdec.ptr.i.i.i, ptr %_M_finish.i.i.i, align 8
  br label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i4
  invoke void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %levels.i, ptr %10, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp.i)
          to label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i unwind label %lpad3.loopexit.split-lp

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i: ; preds = %if.else.i.i.i, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp.i) #18
  %slot.09.i = load i32, ptr %add.ptr.i.i, align 4
  %cmp.not10.i = icmp eq i32 %slot.09.i, -1
  br i1 %cmp.not10.i, label %for.inc, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i
  %.pre.i = load ptr, ptr %pool_, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i, %for.body.lr.ph.i
  %13 = phi ptr [ %.pre.i, %for.body.lr.ph.i ], [ %21, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i ]
  %slot.011.i = phi i32 [ %slot.09.i, %for.body.lr.ph.i ], [ %slot.0.i, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i ]
  %conv.i.i = zext i32 %slot.011.i to i64
  %add.ptr.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %13, i64 %conv.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp10.i) #18
  %14 = load i64, ptr %add.ptr.i.i.i, align 8
  store i64 %14, ptr %ref.tmp10.i, align 8
  %side13.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %13, i64 %conv.i.i, i32 3
  %15 = load i8, ptr %side13.i, align 4
  store i8 %15, ptr %side12.i, align 8
  %price15.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %13, i64 %conv.i.i, i32 1
  %16 = load i64, ptr %price15.i, align 8
  store i64 %16, ptr %price14.i, align 8
  %quantity17.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %13, i64 %conv.i.i, i32 2
  %17 = load i32, ptr %quantity17.i, align 8
  store i32 %17, ptr %quantity16.i, align 8
  %18 = load ptr, ptr %_M_finish.i.i1.i, align 8
  %19 = load ptr, ptr %_M_end_of_storage.i.i, align 8
  %cmp.not.i.i3.i = icmp eq ptr %18, %19
  br i1 %cmp.not.i.i3.i, label %if.else.i.i6.i, label %if.then.i.i4.i

if.then.i.i4.i:                                   ; preds = %for.body.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp10.i, i64 32, i1 false)
  %20 = load ptr, ptr %_M_finish.i.i1.i, align 8
  %incdec.ptr.i.i5.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %20, i64 1
  store ptr %incdec.ptr.i.i5.i, ptr %_M_finish.i.i1.i, align 8
  br label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i

if.else.i.i6.i:                                   ; preds = %for.body.i
  invoke void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr %18, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp10.i)
          to label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i unwind label %lpad3.loopexit

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i: ; preds = %if.else.i.i6.i, %if.then.i.i4.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp10.i) #18
  %21 = load ptr, ptr %pool_, align 8
  %next.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %21, i64 %conv.i.i, i32 6
  %slot.0.i = load i32, ptr %next.i, align 4
  %cmp.not.i = icmp eq i32 %slot.0.i, -1
  br i1 %cmp.not.i, label %for.inc, label %for.body.i, !llvm.loop !30

for.inc:                                          ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i, %for.body
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %for.cond6.preheader, label %for.body, !llvm.loop !31

lpad3.loopexit:                                   ; preds = %if.else.i.i6.i
  %lpad.loopexit65 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

lpad3.loopexit.split-lp:                          ; preds = %if.else.i.i.i
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc13
  %22 = phi ptr [ %4, %for.body10.lr.ph ], [ %39, %for.inc13 ]
  %i5.075 = phi i64 [ 0, %for.body10.lr.ph ], [ %inc, %for.inc13 ]
  %add.ptr.i.i16 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i5.075
  %orders.i17 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i5.075, i32 3
  %23 = load i32, ptr %orders.i17, align 8
  %tobool.not.i18 = icmp eq i32 %23, 0
  br i1 %tobool.not.i18, label %for.inc13, label %if.end.i19

if.end.i19:                                       ; preds = %for.body10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp.i12) #18
  store i8 1, ptr %ref.tmp.i12, align 8
  %24 = load i64, ptr %this, align 8
  %add.i.i21 = add nsw i64 %24, %i5.075
  store i64 %add.i.i21, ptr %price.i20, align 8
  %quantity5.i23 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i5.075, i32 2
  %25 = load i64, ptr %quantity5.i23, align 8
  store i64 %25, ptr %quantity.i22, align 8
  store i32 %23, ptr %orders6.i24, align 8
  %26 = load ptr, ptr %_M_finish.i.i.i25, align 8
  %27 = load ptr, ptr %_M_end_of_storage.i.i.i26, align 8
  %cmp.not.i.i.i27 = icmp eq ptr %26, %27
  br i1 %cmp.not.i.i.i27, label %if.else.i.i.i56, label %if.then.i.i.i28

if.then.i.i.i28:                                  ; preds = %if.end.i19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp.i12, i64 32, i1 false)
  %28 = load ptr, ptr %_M_finish.i.i.i25, align 8
  %incdec.ptr.i.i.i29 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %28, i64 1
  store ptr %incdec.ptr.i.i.i29, ptr %_M_finish.i.i.i25, align 8
  br label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i30

if.else.i.i.i56:                                  ; preds = %if.end.i19
  invoke void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %levels.i57, ptr %26, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp.i12)
          to label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i30 unwind label %lpad11.loopexit.split-lp

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i30: ; preds = %if.else.i.i.i56, %if.then.i.i.i28
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp.i12) #18
  %slot.09.i31 = load i32, ptr %add.ptr.i.i16, align 4
  %cmp.not10.i32 = icmp eq i32 %slot.09.i31, -1
  br i1 %cmp.not10.i32, label %for.inc13, label %for.body.lr.ph.i33

for.body.lr.ph.i33:                               ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i30
  %.pre.i38 = load ptr, ptr %pool_, align 8
  br label %for.body.i39

for.body.i39:                                     ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i51, %for.body.lr.ph.i33
  %29 = phi ptr [ %.pre.i38, %for.body.lr.ph.i33 ], [ %37, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i51 ]
  %slot.011.i40 = phi i32 [ %slot.09.i31, %for.body.lr.ph.i33 ], [ %slot.0.i53, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i51 ]
  %conv.i.i41 = zext i32 %slot.011.i40 to i64
  %add.ptr.i.i.i42 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %29, i64 %conv.i.i41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp10.i13) #18
  %30 = load i64, ptr %add.ptr.i.i.i42, align 8
  store i64 %30, ptr %ref.tmp10.i13, align 8
  %side13.i43 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %29, i64 %conv.i.i41, i32 3
  %31 = load i8, ptr %side13.i43, align 4
  store i8 %31, ptr %side12.i35, align 8
  %price15.i44 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %29, i64 %conv.i.i41, i32 1
  %32 = load i64, ptr %price15.i44, align 8
  store i64 %32, ptr %price14.i36, align 8
  %quantity17.i45 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %29, i64 %conv.i.i41, i32 2
  %33 = load i32, ptr %quantity17.i45, align 8
  store i32 %33, ptr %quantity16.i37, align 8
  %34 = load ptr, ptr %_M_finish.i.i1.i46, align 8
  %35 = load ptr, ptr %_M_end_of_storage.i.i, align 8
  %cmp.not.i.i3.i48 = icmp eq ptr %34, %35
  br i1 %cmp.not.i.i3.i48, label %if.else.i.i6.i55, label %if.then.i.i4.i49

if.then.i.i4.i49:                                 ; preds = %for.body.i39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp10.i13, i64 32, i1 false)
  %36 = load ptr, ptr %_M_finish.i.i1.i46, align 8
  %incdec.ptr.i.i5.i50 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %36, i64 1
  store ptr %incdec.ptr.i.i5.i50, ptr %_M_finish.i.i1.i46, align 8
  br label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i51

if.else.i.i6.i55:                                 ; preds = %for.body.i39
  invoke void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr %34, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp10.i13)
          to label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i51 unwind label %lpad11.loopexit

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i51: ; preds = %if.else.i.i6.i55, %if.then.i.i4.i49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp10.i13) #18
  %37 = load ptr, ptr %pool_, align 8
  %next.i52 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %37, i64 %conv.i.i41, i32 6
  %slot.0.i53 = load i32, ptr %next.i52, align 4
  %cmp.not.i54 = icmp eq i32 %slot.0.i53, -1
  br i1 %cmp.not.i54, label %for.inc13, label %for.body.i39, !llvm.loop !30

for.inc13:                                        ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i51, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i30, %for.body10
  %inc = add nuw i64 %i5.075, 1
  %38 = load ptr, ptr %_M_finish.i7, align 8
  %39 = load ptr, ptr %asks_, align 8
  %sub.ptr.lhs.cast.i8 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast.i9 = ptrtoint ptr %39 to i64
  %sub.ptr.sub.i10 = sub i64 %sub.ptr.lhs.cast.i8, %sub.ptr.rhs.cast.i9
  %sub.ptr.div.i11 = sdiv exact i64 %sub.ptr.sub.i10, 24
  %cmp8 = icmp ult i64 %inc, %sub.ptr.div.i11
  br i1 %cmp8, label %for.body10, label %for.end14, !llvm.loop !32

lpad11.loopexit:                                  ; preds = %if.else.i.i6.i55
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

lpad11.loopexit.split-lp:                         ; preds = %if.else.i.i.i56
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

for.end14:                                        ; preds = %for.inc13, %for.cond6.preheader
  ret void

ehcleanup15:                                      ; preds = %lpad11.loopexit, %lpad11.loopexit.split-lp, %lpad3.loopexit, %lpad3.loopexit.split-lp, %lpad
  %.pn.pn = phi { ptr, i32 } [ %5, %lpad ], [ %lpad.loopexit65, %lpad3.loopexit ], [ %lpad.loopexit.split-lp66, %lpad3.loopexit.split-lp ], [ %lpad.loopexit, %lpad11.loopexit ], [ %lpad.loopexit.split-lp, %lpad11.loopexit.split-lp ]
  call void @_ZN6ledger8SnapshotD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %agg.result) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger8SnapshotD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %this) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %levels = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %levels, align 8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(ptr noundef nonnull %0) #21
  br label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev.exit

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev.exit: ; preds = %entry, %if.then.i.i.i
  %1 = load ptr, ptr %this, align 8
  %tobool.not.i.i.i1 = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i1, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EED2Ev.exit, label %if.then.i.i.i2

if.then.i.i.i2:                                   ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %1) #21
  br label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EED2Ev.exit

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev.exit, %if.then.i.i.i2
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(280) %this) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp12 = alloca [2 x i8], align 1
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %call = tail call noundef zeroext i1 @_ZNK6ledger6detail9OrderPool16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_)
  br i1 %call, label %lor.lhs.false, label %return

lor.lhs.false:                                    ; preds = %entry
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4
  %0 = load ptr, ptr %index_, align 8
  %_M_finish.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish.i.i, align 8
  %cmp.i30.i = icmp eq ptr %0, %1
  br i1 %cmp.i30.i, label %cleanup18.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %mask_.i.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 1
  %2 = load i64, ptr %mask_.i.i.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %occupied.032.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %occupied.217.i, %for.inc.i ]
  %__begin2.sroa.0.031.i = phi ptr [ %0, %for.body.lr.ph.i ], [ %incdec.ptr.i.i, %for.inc.i ]
  %3 = load i64, ptr %__begin2.sroa.0.031.i, align 8
  %tobool.not.i = icmp eq i64 %3, 0
  %slot12.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__begin2.sroa.0.031.i, i64 0, i32 1
  %4 = load i32, ptr %slot12.i, align 8
  %cmp13.not.not.i = icmp eq i32 %4, -1
  br i1 %tobool.not.i, label %cleanup.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %cmp13.not.not.i, label %return, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  %shr.i.i.i = lshr i64 %3, 30
  %xor.i.i.i = xor i64 %shr.i.i.i, %3
  %mul.i.i.i = mul i64 %xor.i.i.i, -4658895280553007687
  %shr2.i.i.i = lshr i64 %mul.i.i.i, 27
  %xor3.i.i.i = xor i64 %shr2.i.i.i, %mul.i.i.i
  %mul4.i.i.i = mul i64 %xor3.i.i.i, -7723592293110705685
  %shr5.i.i.i = lshr i64 %mul4.i.i.i, 31
  %xor6.i.i.i = xor i64 %shr5.i.i.i, %mul4.i.i.i
  %and.i.i.i = and i64 %xor6.i.i.i, %2
  %add.ptr.i5.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %and.i.i.i
  %5 = load i64, ptr %add.ptr.i5.i.i, align 8
  %tobool4.not6.i.i = icmp eq i64 %5, 0
  br i1 %tobool4.not6.i.i, label %_ZNK6ledger6detail7IdIndex4findEm.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i, %if.end11.i.i
  %6 = phi i64 [ %8, %if.end11.i.i ], [ %5, %if.end.i.i ]
  %position.07.i.i = phi i64 [ %and.i.i, %if.end11.i.i ], [ %and.i.i.i, %if.end.i.i ]
  %cmp.i6.i = icmp eq i64 %6, %3
  br i1 %cmp.i6.i, label %if.then8.i.i, label %if.end11.i.i

if.then8.i.i:                                     ; preds = %while.body.i.i
  %slot.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %position.07.i.i, i32 1
  %7 = load i32, ptr %slot.i.i, align 8
  br label %_ZNK6ledger6detail7IdIndex4findEm.exit.i

if.end11.i.i:                                     ; preds = %while.body.i.i
  %add.i.i = add i64 %position.07.i.i, 1
  %and.i.i = and i64 %add.i.i, %2
  %add.ptr.i.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %and.i.i
  %8 = load i64, ptr %add.ptr.i.i.i, align 8
  %tobool4.not.i.i = icmp eq i64 %8, 0
  br i1 %tobool4.not.i.i, label %_ZNK6ledger6detail7IdIndex4findEm.exit.i, label %while.body.i.i, !llvm.loop !28

_ZNK6ledger6detail7IdIndex4findEm.exit.i:         ; preds = %if.end11.i.i, %if.then8.i.i, %if.end.i.i
  %retval.1.i.i = phi i32 [ %7, %if.then8.i.i ], [ -1, %if.end.i.i ], [ -1, %if.end11.i.i ]
  %cmp10.not.i = icmp eq i32 %retval.1.i.i, %4
  %inc.i = add i64 %occupied.032.i, 1
  br i1 %cmp10.not.i, label %for.inc.i, label %return

cleanup.i:                                        ; preds = %for.body.i
  br i1 %cmp13.not.not.i, label %for.inc.i, label %return

for.inc.i:                                        ; preds = %cleanup.i, %_ZNK6ledger6detail7IdIndex4findEm.exit.i
  %occupied.217.i = phi i64 [ %occupied.032.i, %cleanup.i ], [ %inc.i, %_ZNK6ledger6detail7IdIndex4findEm.exit.i ]
  %incdec.ptr.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__begin2.sroa.0.031.i, i64 1
  %cmp.i.i = icmp eq ptr %incdec.ptr.i.i, %1
  br i1 %cmp.i.i, label %cleanup18.i, label %for.body.i, !llvm.loop !33

cleanup18.i:                                      ; preds = %for.inc.i, %lor.lhs.false
  %occupied.0.lcssa.i = phi i64 [ 0, %lor.lhs.false ], [ %occupied.217.i, %for.inc.i ]
  %size_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 2
  %9 = load i64, ptr %size_.i, align 8
  %cmp22.i = icmp eq i64 %occupied.0.lcssa.i, %9
  br i1 %cmp22.i, label %_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit, label %return

_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit: ; preds = %cleanup18.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %0 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 4
  %div3.i = lshr i64 %sub.ptr.div.i.i, 1
  %cmp25.i.not = icmp ule i64 %occupied.0.lcssa.i, %div3.i
  %size_.i27 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 2
  %10 = load i64, ptr %size_.i27, align 8
  %cmp.not = icmp eq i64 %10, %occupied.0.lcssa.i
  %or.cond308 = select i1 %cmp25.i.not, i1 %cmp.not, i1 false
  br i1 %or.cond308, label %if.end, label %return

if.end:                                           ; preds = %_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit
  %_M_finish.i.i29 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %_M_finish.i.i29, align 8
  %12 = load ptr, ptr %pool_, align 8
  %tobool.not.i.i = icmp eq ptr %11, %12
  %.pre = ptrtoint ptr %11 to i64
  %.pre297 = ptrtoint ptr %12 to i64
  %.pre298 = sub i64 %.pre, %.pre297
  %.pre299 = sdiv exact i64 %.pre298, 40
  br i1 %tobool.not.i.i, label %invoke.cont, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  %sub.i.i.i.i = add nsw i64 %.pre299, 63
  %13 = lshr i64 %sub.i.i.i.i, 3
  %mul.i.i.i.i = and i64 %13, 2305843009213693944
  %call5.i.i.i1.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i) #20
  %div1.i.i.i = lshr i64 %sub.i.i.i.i, 6
  %add.ptr.i.i = getelementptr inbounds i64, ptr %call5.i.i.i1.i, i64 %div1.i.i.i
  %add.ptr.i.idx.i = shl nuw nsw i64 %div1.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %call5.i.i.i1.i, i8 0, i64 %add.ptr.i.idx.i, i1 false)
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.end, %if.then.i.i
  %seen.sroa.0.0 = phi ptr [ %call5.i.i.i1.i, %if.then.i.i ], [ null, %if.end ]
  %seen.sroa.30175.0 = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %if.end ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ref.tmp12) #18
  store i8 0, ptr %ref.tmp12, align 1
  %arrayinit.element = getelementptr inbounds i8, ptr %ref.tmp12, i64 1
  store i8 1, ptr %arrayinit.element, align 1
  %bids_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %bid_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %ask_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %14 = load i64, ptr %this, align 8
  %mask_.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 1
  %15 = load i64, ptr %mask_.i.i, align 8
  %best_bid_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %16 = load i64, ptr %best_bid_.i, align 8
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %17 = load i64, ptr %best_ask_.i, align 8
  %_M_finish.i.i86 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %18 = load ptr, ptr %_M_finish.i.i86, align 8
  %19 = load ptr, ptr %bids_.i, align 8
  %sub.ptr.lhs.cast.i.i87 = ptrtoint ptr %18 to i64
  %sub.ptr.rhs.cast.i.i88 = ptrtoint ptr %19 to i64
  %sub.ptr.sub.i.i89 = sub i64 %sub.ptr.lhs.cast.i.i87, %sub.ptr.rhs.cast.i.i88
  %sub.ptr.div.i.i90 = sdiv exact i64 %sub.ptr.sub.i.i89, 24
  %sub.i = add nsw i64 %sub.ptr.div.i.i90, -1
  br label %for.body

for.cond:                                         ; preds = %if.end127
  %__begin1.0.add = add nuw nsw i64 %__begin1.0.idx271, 1
  %cmp15.not = icmp eq i64 %__begin1.0.add, 2
  br i1 %cmp15.not, label %cleanup144.thread, label %for.body, !llvm.loop !34

cleanup144.thread:                                ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ref.tmp12) #18
  br i1 %cmp.i30.i, label %for.cond211.preheader, label %for.body167

for.body:                                         ; preds = %invoke.cont, %for.cond
  %order_count.0273 = phi i64 [ 0, %invoke.cont ], [ %order_count.1.lcssa, %for.cond ]
  %total_quantity.0272 = phi i64 [ 0, %invoke.cont ], [ %total_quantity.1.lcssa, %for.cond ]
  %__begin1.0.idx271 = phi i64 [ 0, %invoke.cont ], [ %__begin1.0.add, %for.cond ]
  %__begin1.0.ptr = getelementptr inbounds i8, ptr %ref.tmp12, i64 %__begin1.0.idx271
  %20 = load i8, ptr %__begin1.0.ptr, align 1
  %cmp.i = icmp eq i8 %20, 0
  %cond-lvalue.i = select i1 %cmp.i, ptr %bids_.i, ptr %asks_.i
  %cond-lvalue.i35 = select i1 %cmp.i, ptr %bid_bitmap_.i, ptr %ask_bitmap_.i
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %cond-lvalue.i, i64 0, i32 1
  %21 = load ptr, ptr %_M_finish.i, align 8
  %22 = load ptr, ptr %cond-lvalue.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %21 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %22 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 24
  %cmp20.not262.not = icmp eq ptr %21, %22
  br i1 %cmp20.not262.not, label %for.end117, label %for.body22.lr.ph

for.body22.lr.ph:                                 ; preds = %for.body
  %23 = load ptr, ptr %cond-lvalue.i35, align 8
  %umax = tail call i64 @llvm.umax.i64(i64 %sub.ptr.div.i, i64 1)
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.inc112
  %order_count.1266 = phi i64 [ %order_count.0273, %for.body22.lr.ph ], [ %add101, %for.inc112 ]
  %total_quantity.1264 = phi i64 [ %total_quantity.0272, %for.body22.lr.ph ], [ %add99, %for.inc112 ]
  %i.0263 = phi i64 [ 0, %for.body22.lr.ph ], [ %inc113, %for.inc112 ]
  %add.ptr.i36 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i.0263
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i.0263, i32 3
  %24 = load i32, ptr %orders, align 8
  %cmp24 = icmp ne i32 %24, 0
  %div21 = lshr i64 %i.0263, 6
  %add.ptr.i37 = getelementptr inbounds i64, ptr %23, i64 %div21
  %25 = load i64, ptr %add.ptr.i37, align 8
  %rem = and i64 %i.0263, 63
  %shl = shl nuw i64 1, %rem
  %and = and i64 %25, %shl
  %26 = icmp eq i64 %and, 0
  %cmp28.not = xor i1 %cmp24, %26
  br i1 %cmp28.not, label %for.cond31.preheader, label %cleanup144

for.cond31.preheader:                             ; preds = %for.body22
  %slot.0253 = load i32, ptr %add.ptr.i36, align 4
  %cmp32.not254 = icmp eq i32 %slot.0253, -1
  br i1 %cmp32.not254, label %for.end, label %for.body34.lr.ph

for.body34.lr.ph:                                 ; preds = %for.cond31.preheader
  %add.i = add nsw i64 %14, %i.0263
  br label %for.body34

for.body34:                                       ; preds = %for.body34.lr.ph, %for.inc
  %slot.0258 = phi i32 [ %slot.0253, %for.body34.lr.ph ], [ %slot.0, %for.inc ]
  %previous.0257 = phi i32 [ -1, %for.body34.lr.ph ], [ %slot.0258, %for.inc ]
  %count.0256 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc, %for.inc ]
  %quantity.0255 = phi i64 [ 0, %for.body34.lr.ph ], [ %add, %for.inc ]
  %conv35 = zext i32 %slot.0258 to i64
  %cmp38.not = icmp ugt i64 %.pre299, %conv35
  br i1 %cmp38.not, label %invoke.cont42, label %cleanup144

invoke.cont42:                                    ; preds = %for.body34
  %div.i.i.i.i.i43207208211 = lshr i32 %slot.0258, 6
  %div.i.i.i.i.i43207.zext = zext nneg i32 %div.i.i.i.i.i43207208211 to i64
  %add.ptr.i.i.i.i.i44 = getelementptr inbounds i64, ptr %seen.sroa.0.0, i64 %div.i.i.i.i.i43207.zext
  %rem.i.i.i.i.i45209210 = and i32 %slot.0258, 63
  %rem.i.i.i.i.i45209.zext = zext nneg i32 %rem.i.i.i.i.i45209210 to i64
  %shl.i.i.i = shl nuw i64 1, %rem.i.i.i.i.i45209.zext
  %27 = load i64, ptr %add.ptr.i.i.i.i.i44, align 8
  %and.i = and i64 %27, %shl.i.i.i
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end46, label %cleanup144

if.end46:                                         ; preds = %invoke.cont42
  %add.ptr.i.i49 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 7
  %28 = load i8, ptr %live, align 8, !range !15, !noundef !16
  %tobool = icmp eq i8 %28, 0
  %29 = load i64, ptr %add.ptr.i.i49, align 8
  %tobool50 = icmp eq i64 %29, 0
  %or.cond.not = select i1 %tobool, i1 true, i1 %tobool50
  %quantity52 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 2
  %30 = load i32, ptr %quantity52, align 8
  %tobool53 = icmp eq i32 %30, 0
  %or.cond10 = select i1 %or.cond.not, i1 true, i1 %tobool53
  %side55 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 3
  %31 = load i8, ptr %side55, align 4
  %cmp56 = icmp ne i8 %31, %20
  %or.cond11 = select i1 %or.cond10, i1 true, i1 %cmp56
  br i1 %or.cond11, label %cleanup144, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %if.end46
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 1
  %32 = load i64, ptr %price, align 8
  %cmp59 = icmp ne i64 %32, %add.i
  %previous61 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 5
  %33 = load i32, ptr %previous61, align 8
  %cmp62 = icmp ne i32 %33, %previous.0257
  %or.cond12 = select i1 %cmp59, i1 true, i1 %cmp62
  br i1 %or.cond12, label %cleanup144, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false57
  %shr.i.i = lshr i64 %29, 30
  %xor.i.i = xor i64 %shr.i.i, %29
  %mul.i.i = mul i64 %xor.i.i, -4658895280553007687
  %shr2.i.i = lshr i64 %mul.i.i, 27
  %xor3.i.i = xor i64 %shr2.i.i, %mul.i.i
  %mul4.i.i = mul i64 %xor3.i.i, -7723592293110705685
  %shr5.i.i = lshr i64 %mul4.i.i, 31
  %xor6.i.i = xor i64 %shr5.i.i, %mul4.i.i
  %and.i.i51 = and i64 %15, %xor6.i.i
  %add.ptr.i5.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %and.i.i51
  %34 = load i64, ptr %add.ptr.i5.i, align 8
  %tobool4.not6.i = icmp eq i64 %34, 0
  br i1 %tobool4.not6.i, label %cleanup144, label %while.body.i

while.body.i:                                     ; preds = %if.end.i, %if.end11.i
  %35 = phi i64 [ %37, %if.end11.i ], [ %34, %if.end.i ]
  %position.07.i = phi i64 [ %and.i54, %if.end11.i ], [ %and.i.i51, %if.end.i ]
  %cmp.i52 = icmp eq i64 %35, %29
  br i1 %cmp.i52, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %while.body.i
  %slot.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %position.07.i, i32 1
  %36 = load i32, ptr %slot.i, align 8
  br label %_ZNK6ledger6detail7IdIndex4findEm.exit

if.end11.i:                                       ; preds = %while.body.i
  %add.i53 = add i64 %position.07.i, 1
  %and.i54 = and i64 %add.i53, %15
  %add.ptr.i.i55 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %and.i54
  %37 = load i64, ptr %add.ptr.i.i55, align 8
  %tobool4.not.i = icmp eq i64 %37, 0
  br i1 %tobool4.not.i, label %_ZNK6ledger6detail7IdIndex4findEm.exit, label %while.body.i, !llvm.loop !28

_ZNK6ledger6detail7IdIndex4findEm.exit:           ; preds = %if.end11.i, %if.then8.i
  %retval.1.i = phi i32 [ %36, %if.then8.i ], [ -1, %if.end11.i ]
  %cmp67.not = icmp eq i32 %retval.1.i, %slot.0258
  br i1 %cmp67.not, label %for.inc, label %cleanup144

for.inc:                                          ; preds = %_ZNK6ledger6detail7IdIndex4findEm.exit
  %or.i = or i64 %27, %shl.i.i.i
  store i64 %or.i, ptr %add.ptr.i.i.i.i.i44, align 8
  %38 = load i32, ptr %quantity52, align 8
  %conv77 = zext i32 %38 to i64
  %add = add i64 %quantity.0255, %conv77
  %inc = add i32 %count.0256, 1
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 6
  %slot.0 = load i32, ptr %next, align 4
  %cmp32.not = icmp eq i32 %slot.0, -1
  br i1 %cmp32.not, label %for.end, label %for.body34, !llvm.loop !35

for.end:                                          ; preds = %for.inc, %for.cond31.preheader
  %quantity.0228 = phi i64 [ 0, %for.cond31.preheader ], [ %add, %for.inc ]
  %count.0225 = phi i32 [ 0, %for.cond31.preheader ], [ %inc, %for.inc ]
  %previous.0222 = phi i32 [ -1, %for.cond31.preheader ], [ %slot.0258, %for.inc ]
  %39 = load i32, ptr %orders, align 8
  %cmp83 = icmp ne i32 %count.0225, %39
  %quantity85 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i.0263, i32 2
  %40 = load i64, ptr %quantity85, align 8
  %cmp86 = icmp ne i64 %quantity.0228, %40
  %or.cond13 = select i1 %cmp83, i1 true, i1 %cmp86
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i.0263, i32 1
  %41 = load i32, ptr %tail, align 4
  %cmp88 = icmp ne i32 %previous.0222, %41
  %or.cond14 = select i1 %or.cond13, i1 true, i1 %cmp88
  br i1 %or.cond14, label %cleanup144, label %if.end90

if.end90:                                         ; preds = %for.end
  %tobool91.not = icmp eq i32 %count.0225, 0
  br i1 %tobool91.not, label %land.lhs.true, label %for.inc112

land.lhs.true:                                    ; preds = %if.end90
  %42 = load i32, ptr %add.ptr.i36, align 8
  %43 = and i32 %42, %previous.0222
  %or.cond15.not = icmp eq i32 %43, -1
  br i1 %or.cond15.not, label %for.inc112, label %cleanup144

for.inc112:                                       ; preds = %land.lhs.true, %if.end90
  %add99 = add i64 %quantity.0228, %total_quantity.1264
  %conv100 = zext i32 %count.0225 to i64
  %add101 = add i64 %order_count.1266, %conv100
  %inc113 = add nuw i64 %i.0263, 1
  %exitcond.not = icmp eq i64 %inc113, %umax
  br i1 %exitcond.not, label %for.end117, label %for.body22, !llvm.loop !36

for.end117:                                       ; preds = %for.inc112, %for.body
  %total_quantity.1.lcssa = phi i64 [ %total_quantity.0272, %for.body ], [ %add99, %for.inc112 ]
  %order_count.1.lcssa = phi i64 [ %order_count.0273, %for.body ], [ %add101, %for.inc112 ]
  %rem119 = and i64 %sub.ptr.div.i, 63
  %tobool120.not = icmp eq i64 %rem119, 0
  br i1 %tobool120.not, label %if.end127, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %for.end117
  %_M_finish.i.i75 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %cond-lvalue.i35, i64 0, i32 1
  %44 = load ptr, ptr %_M_finish.i.i75, align 8
  %add.ptr.i.i76 = getelementptr inbounds i64, ptr %44, i64 -1
  %45 = load i64, ptr %add.ptr.i.i76, align 8
  %shr = lshr i64 %45, %rem119
  %cmp125.not = icmp eq i64 %shr, 0
  br i1 %cmp125.not, label %if.end127, label %cleanup144

if.end127:                                        ; preds = %land.lhs.true121, %for.end117
  %cond.i = select i1 %cmp.i, i64 %16, i64 %17
  %spec.select = select i1 %cmp.i, i64 %sub.i, i64 0
  %call2.i = tail call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %20, i64 noundef %spec.select) #18
  %cmp130.not.not = icmp eq i64 %cond.i, %call2.i
  br i1 %cmp130.not.not, label %for.cond, label %cleanup144

cleanup144:                                       ; preds = %land.lhs.true121, %if.end127, %for.end, %land.lhs.true, %for.body22, %_ZNK6ledger6detail7IdIndex4findEm.exit, %if.end.i, %if.end46, %lor.lhs.false57, %invoke.cont42, %for.body34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ref.tmp12) #18
  br label %cleanup263

for.cond211.preheader:                            ; preds = %for.inc200, %cleanup144.thread
  br i1 %tobool.not.i.i, label %for.end238, label %invoke.cont225.preheader

invoke.cont225.preheader:                         ; preds = %for.cond211.preheader
  %umax295 = tail call i64 @llvm.umax.i64(i64 %.pre299, i64 1)
  br label %invoke.cont225

for.body167:                                      ; preds = %cleanup144.thread, %for.inc200
  %__begin1159.sroa.0.0275 = phi ptr [ %incdec.ptr.i, %for.inc200 ], [ %0, %cleanup144.thread ]
  %46 = load i64, ptr %__begin1159.sroa.0.0275, align 8
  %tobool171.not = icmp eq i64 %46, 0
  br i1 %tobool171.not, label %for.inc200, label %land.rhs

land.rhs:                                         ; preds = %for.body167
  %slot172 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__begin1159.sroa.0.0275, i64 0, i32 1
  %47 = load i32, ptr %slot172, align 8
  %conv173 = zext i32 %47 to i64
  %cmp176.not = icmp ugt i64 %.pre299, %conv173
  br i1 %cmp176.not, label %invoke.cont182, label %cleanup263

invoke.cont182:                                   ; preds = %land.rhs
  %div.i.i.i.i.i98203204212 = lshr i32 %47, 6
  %div.i.i.i.i.i98203.zext = zext nneg i32 %div.i.i.i.i.i98203204212 to i64
  %add.ptr.i.i.i.i.i99 = getelementptr inbounds i64, ptr %seen.sroa.0.0, i64 %div.i.i.i.i.i98203.zext
  %rem.i.i.i.i.i100205206 = and i32 %47, 63
  %rem.i.i.i.i.i100205.zext = zext nneg i32 %rem.i.i.i.i.i100205206 to i64
  %shl.i.i.i104 = shl nuw i64 1, %rem.i.i.i.i.i100205.zext
  %48 = load i64, ptr %add.ptr.i.i.i.i.i99, align 8
  %and.i108 = and i64 %48, %shl.i.i.i104
  %tobool.i109.not = icmp eq i64 %and.i108, 0
  br i1 %tobool.i109.not, label %if.then.i.i133, label %lor.rhs185

lor.rhs185:                                       ; preds = %invoke.cont182
  %add.ptr.i.i111 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv173
  %49 = load i64, ptr %add.ptr.i.i111, align 8
  %cmp191.not = icmp eq i64 %49, %46
  br i1 %cmp191.not, label %for.inc200, label %if.then.i.i133

for.inc200:                                       ; preds = %for.body167, %lor.rhs185
  %incdec.ptr.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__begin1159.sroa.0.0275, i64 1
  %cmp.i92 = icmp eq ptr %incdec.ptr.i, %1
  br i1 %cmp.i92, label %for.cond211.preheader, label %for.body167, !llvm.loop !37

for.cond211:                                      ; preds = %invoke.cont225
  %inc234 = add nuw i64 %i210.0277, 1
  %exitcond296.not = icmp eq i64 %inc234, %umax295
  br i1 %exitcond296.not, label %for.end238, label %invoke.cont225, !llvm.loop !38

invoke.cont225:                                   ; preds = %invoke.cont225.preheader, %for.cond211
  %i210.0277 = phi i64 [ %inc234, %for.cond211 ], [ 0, %invoke.cont225.preheader ]
  %conv.i117 = and i64 %i210.0277, 4294967295
  %live220 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv.i117, i32 7
  %50 = load i8, ptr %live220, align 8, !range !15, !noundef !16
  %div.i.i.i.i.i119 = sdiv i64 %i210.0277, 64
  %add.ptr.i.i.i.i.i120 = getelementptr inbounds i64, ptr %seen.sroa.0.0, i64 %div.i.i.i.i.i119
  %rem.i.i.i.i.i121 = srem i64 %i210.0277, 64
  %rem.lobit.i.i.i.i.i122 = ashr i64 %rem.i.i.i.i.i121, 63
  %storemerge.i.i.i.i.i123 = getelementptr inbounds i64, ptr %add.ptr.i.i.i.i.i120, i64 %rem.lobit.i.i.i.i.i122
  %conv4.i.i.i.i.i124 = and i64 %rem.i.i.i.i.i121, 63
  %shl.i.i.i125 = shl nuw i64 1, %conv4.i.i.i.i.i124
  %51 = load i64, ptr %storemerge.i.i.i.i.i123, align 8
  %and.i129 = and i64 %51, %shl.i.i.i125
  %tobool.i130 = icmp ne i64 %and.i129, 0
  %52 = zext i1 %tobool.i130 to i8
  %cmp229.not = icmp eq i8 %50, %52
  br i1 %cmp229.not, label %for.cond211, label %if.then.i.i133

for.end238:                                       ; preds = %for.cond211, %for.cond211.preheader
  %cmp241 = icmp ne i64 %order_count.1.lcssa, %occupied.0.lcssa.i
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 11
  %53 = load i64, ptr %resting_quantity_, align 8
  %cmp243 = icmp ne i64 %total_quantity.1.lcssa, %53
  %or.cond17 = select i1 %cmp241, i1 true, i1 %cmp243
  br i1 %or.cond17, label %cleanup263, label %if.end245

if.end245:                                        ; preds = %for.end238
  %cmp246 = icmp eq i64 %16, -1
  %cmp248 = icmp eq i64 %17, -1
  %or.cond18.not213 = select i1 %cmp246, i1 true, i1 %cmp248
  %cmp252.not = icmp ult i64 %16, %17
  %or.cond = select i1 %or.cond18.not213, i1 true, i1 %cmp252.not
  br i1 %or.cond, label %if.end254, label %cleanup263

if.end254:                                        ; preds = %if.end245
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12
  %54 = load i64, ptr %statistics_, align 8
  %executed = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 1
  %55 = load i64, ptr %executed, align 8
  %mul = shl i64 %55, 1
  %cancelled = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 2
  %56 = load i64, ptr %cancelled, align 8
  %expired = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 3
  %57 = load i64, ptr %expired, align 8
  %add257 = add i64 %56, %total_quantity.1.lcssa
  %add259 = add i64 %add257, %mul
  %add261 = add i64 %add259, %57
  %cmp262 = icmp eq i64 %54, %add261
  br label %cleanup263

cleanup263:                                       ; preds = %land.rhs, %cleanup144, %if.end245, %for.end238, %if.end254
  %retval.14 = phi i1 [ false, %cleanup144 ], [ %cmp262, %if.end254 ], [ false, %for.end238 ], [ false, %if.end245 ], [ false, %land.rhs ]
  %tobool.not.i.i132 = icmp eq ptr %seen.sroa.0.0, null
  br i1 %tobool.not.i.i132, label %return, label %if.then.i.i133

if.then.i.i133:                                   ; preds = %invoke.cont182, %lor.rhs185, %invoke.cont225, %cleanup263
  %retval.14201 = phi i1 [ %retval.14, %cleanup263 ], [ false, %invoke.cont225 ], [ false, %lor.rhs185 ], [ false, %invoke.cont182 ]
  %sub.ptr.lhs.cast.i.i134 = ptrtoint ptr %seen.sroa.30175.0 to i64
  %sub.ptr.rhs.cast.i.i135 = ptrtoint ptr %seen.sroa.0.0 to i64
  %sub.ptr.sub.i.i136 = sub i64 %sub.ptr.lhs.cast.i.i134, %sub.ptr.rhs.cast.i.i135
  %sub.ptr.div.i.i137 = ashr exact i64 %sub.ptr.sub.i.i136, 3
  %idx.neg.i.i = sub nsw i64 0, %sub.ptr.div.i.i137
  %add.ptr.i.i138 = getelementptr inbounds i64, ptr %seen.sroa.30175.0, i64 %idx.neg.i.i
  tail call void @_ZdlPv(ptr noundef %add.ptr.i.i138) #21
  br label %return

return:                                           ; preds = %_ZNK6ledger6detail7IdIndex4findEm.exit.i, %if.then.i, %cleanup.i, %cleanup18.i, %if.then.i.i133, %cleanup263, %entry, %_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit
  %retval.15 = phi i1 [ false, %_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit ], [ false, %entry ], [ %retval.14, %cleanup263 ], [ %retval.14201, %if.then.i.i133 ], [ false, %cleanup18.i ], [ false, %cleanup.i ], [ false, %if.then.i ], [ false, %_ZNK6ledger6detail7IdIndex4findEm.exit.i ]
  ret i1 %retval.15
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6ledger6detail9OrderPool16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %this) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %_M_finish.i, align 8
  %1 = load ptr, ptr %this, align 8
  %tobool.not.i.i = icmp eq ptr %0, %1
  br i1 %tobool.not.i.i, label %invoke.cont, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %sub.ptr.lhs.cast.i = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 40
  %sub.i.i.i.i = add nsw i64 %sub.ptr.div.i, 63
  %2 = lshr i64 %sub.i.i.i.i, 3
  %mul.i.i.i.i = and i64 %2, 2305843009213693944
  %call5.i.i.i1.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i) #20
  %div1.i.i.i = lshr i64 %sub.i.i.i.i, 6
  %add.ptr.i.i = getelementptr inbounds i64, ptr %call5.i.i.i1.i, i64 %div1.i.i.i
  %add.ptr.i.idx.i = shl nuw nsw i64 %div1.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %call5.i.i.i1.i, i8 0, i64 %add.ptr.i.idx.i, i1 false)
  br label %invoke.cont

invoke.cont:                                      ; preds = %if.then.i.i, %entry
  %free.sroa.0.0 = phi ptr [ null, %entry ], [ %call5.i.i.i1.i, %if.then.i.i ]
  %free.sroa.3097.0 = phi ptr [ null, %entry ], [ %add.ptr.i.i, %if.then.i.i ]
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i64 0, i32 1
  %slot.0117 = load i32, ptr %free_head_, align 8
  %cmp.not118 = icmp eq i32 %slot.0117, -1
  %.pre = ptrtoint ptr %0 to i64
  %.pre127 = ptrtoint ptr %1 to i64
  %.pre128 = sub i64 %.pre, %.pre127
  %.pre129 = sdiv exact i64 %.pre128, 40
  br i1 %cmp.not118, label %for.cond24.preheader, label %for.body

for.cond24.preheader:                             ; preds = %invoke.cont18, %invoke.cont
  %free_count.0.lcssa = phi i64 [ 0, %invoke.cont ], [ %inc, %invoke.cont18 ]
  br i1 %tobool.not.i.i, label %cleanup55, label %for.body29.preheader

for.body29.preheader:                             ; preds = %for.cond24.preheader
  %umax = tail call i64 @llvm.umax.i64(i64 %.pre129, i64 1)
  br label %for.body29

for.body:                                         ; preds = %invoke.cont, %invoke.cont18
  %slot.0120 = phi i32 [ %slot.0, %invoke.cont18 ], [ %slot.0117, %invoke.cont ]
  %free_count.0119 = phi i64 [ %inc, %invoke.cont18 ], [ 0, %invoke.cont ]
  %conv = zext i32 %slot.0120 to i64
  %cmp5.not = icmp ugt i64 %.pre129, %conv
  br i1 %cmp5.not, label %invoke.cont9, label %cleanup65

invoke.cont9:                                     ; preds = %for.body
  %div.i.i.i.i.i9107108111 = lshr i32 %slot.0120, 6
  %div.i.i.i.i.i9107.zext = zext nneg i32 %div.i.i.i.i.i9107108111 to i64
  %add.ptr.i.i.i.i.i10 = getelementptr inbounds i64, ptr %free.sroa.0.0, i64 %div.i.i.i.i.i9107.zext
  %rem.i.i.i.i.i11109110 = and i32 %slot.0120, 63
  %rem.i.i.i.i.i11109.zext = zext nneg i32 %rem.i.i.i.i.i11109110 to i64
  %shl.i.i.i = shl nuw i64 1, %rem.i.i.i.i.i11109.zext
  %3 = load i64, ptr %add.ptr.i.i.i.i.i10, align 8
  %and.i = and i64 %3, %shl.i.i.i
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.rhs, label %if.then.i.i62

lor.rhs:                                          ; preds = %invoke.cont9
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %conv, i32 7
  %4 = load i8, ptr %live, align 8, !range !15, !noundef !16
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %invoke.cont18, label %if.then.i.i62

invoke.cont18:                                    ; preds = %lor.rhs
  %or.i = or i64 %3, %shl.i.i.i
  store i64 %or.i, ptr %add.ptr.i.i.i.i.i10, align 8
  %inc = add i64 %free_count.0119, 1
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %conv, i32 6
  %slot.0 = load i32, ptr %next, align 4
  %cmp.not = icmp eq i32 %slot.0, -1
  br i1 %cmp.not, label %for.cond24.preheader, label %for.body, !llvm.loop !39

for.body29:                                       ; preds = %for.body29.preheader, %for.inc53
  %i.0123 = phi i64 [ %inc54, %for.inc53 ], [ 0, %for.body29.preheader ]
  %live_count.0122 = phi i64 [ %live_count.1, %for.inc53 ], [ 0, %for.body29.preheader ]
  %live32 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %i.0123, i32 7
  %5 = load i8, ptr %live32, align 8, !range !15, !noundef !16
  %tobool33.not = icmp eq i8 %5, 0
  %div.i.i.i.i.i44 = sdiv i64 %i.0123, 64
  %add.ptr.i.i.i.i.i45 = getelementptr inbounds i64, ptr %free.sroa.0.0, i64 %div.i.i.i.i.i44
  %rem.i.i.i.i.i46 = srem i64 %i.0123, 64
  %rem.lobit.i.i.i.i.i47 = ashr i64 %rem.i.i.i.i.i46, 63
  %storemerge.i.i.i.i.i48 = getelementptr inbounds i64, ptr %add.ptr.i.i.i.i.i45, i64 %rem.lobit.i.i.i.i.i47
  %conv4.i.i.i.i.i49 = and i64 %rem.i.i.i.i.i46, 63
  %shl.i.i.i50 = shl nuw i64 1, %conv4.i.i.i.i.i49
  %6 = load i64, ptr %storemerge.i.i.i.i.i48, align 8
  %and.i54 = and i64 %6, %shl.i.i.i50
  %tobool.i55.not = icmp eq i64 %and.i54, 0
  br i1 %tobool33.not, label %invoke.cont46, label %invoke.cont37

invoke.cont37:                                    ; preds = %for.body29
  br i1 %tobool.i55.not, label %if.end42, label %if.then.i.i62

if.end42:                                         ; preds = %invoke.cont37
  %inc43 = add i64 %live_count.0122, 1
  br label %for.inc53

invoke.cont46:                                    ; preds = %for.body29
  br i1 %tobool.i55.not, label %if.then.i.i62, label %for.inc53

for.inc53:                                        ; preds = %if.end42, %invoke.cont46
  %live_count.1 = phi i64 [ %inc43, %if.end42 ], [ %live_count.0122, %invoke.cont46 ]
  %inc54 = add nuw i64 %i.0123, 1
  %exitcond.not = icmp eq i64 %inc54, %umax
  br i1 %exitcond.not, label %cleanup55, label %for.body29, !llvm.loop !40

cleanup55:                                        ; preds = %for.inc53, %for.cond24.preheader
  %live_count.0.lcssa = phi i64 [ 0, %for.cond24.preheader ], [ %live_count.1, %for.inc53 ]
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i64 0, i32 2
  %7 = load i64, ptr %size_, align 8
  %cmp59 = icmp eq i64 %live_count.0.lcssa, %7
  br i1 %cmp59, label %land.rhs, label %cleanup65

land.rhs:                                         ; preds = %cleanup55
  %add = add i64 %live_count.0.lcssa, %free_count.0.lcssa
  %cmp62 = icmp eq i64 %add, %.pre129
  br label %cleanup65

cleanup65:                                        ; preds = %for.body, %cleanup55, %land.rhs
  %retval.3 = phi i1 [ false, %cleanup55 ], [ %cmp62, %land.rhs ], [ false, %for.body ]
  %tobool.not.i.i61 = icmp eq ptr %free.sroa.0.0, null
  br i1 %tobool.not.i.i61, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %if.then.i.i62

if.then.i.i62:                                    ; preds = %invoke.cont9, %lor.rhs, %invoke.cont37, %invoke.cont46, %cleanup65
  %retval.3105 = phi i1 [ %retval.3, %cleanup65 ], [ false, %invoke.cont46 ], [ false, %invoke.cont37 ], [ false, %lor.rhs ], [ false, %invoke.cont9 ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %free.sroa.3097.0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %free.sroa.0.0 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 3
  %idx.neg.i.i = sub nsw i64 0, %sub.ptr.div.i.i
  %add.ptr.i.i63 = getelementptr inbounds i64, ptr %free.sroa.3097.0, i64 %idx.neg.i.i
  tail call void @_ZdlPv(ptr noundef %add.ptr.i.i63) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %cleanup65, %if.then.i.i62
  %retval.3106 = phi i1 [ %retval.3, %cleanup65 ], [ %retval.3105, %if.then.i.i62 ]
  ret i1 %retval.3106
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr %__position.coerce, ptr noundef nonnull align 8 dereferenceable(28) %__args) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_finish.i.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %_M_finish.i.i, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cmp.i = icmp eq i64 %sub.ptr.sub.i.i, 9223372036854775776
  br i1 %cmp.i, label %if.then.i, label %_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %entry
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 5
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %sub.ptr.div.i.i, i64 1)
  %add.i = add nsw i64 %.sroa.speculated.i, %sub.ptr.div.i.i
  %cmp7.i = icmp ult i64 %add.i, %sub.ptr.div.i.i
  %2 = tail call i64 @llvm.umin.i64(i64 %add.i, i64 288230376151711743)
  %cond.i = select i1 %cmp7.i, i64 288230376151711743, i64 %2
  %sub.ptr.lhs.cast.i = ptrtoint ptr %__position.coerce to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 5
  %cmp.not.i = icmp eq i64 %cond.i, 0
  br i1 %cmp.not.i, label %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit, label %cond.true.i

cond.true.i:                                      ; preds = %_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc.exit
  %mul.i.i = shl nuw nsw i64 %cond.i, 5
  %call5.i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i) #20
  br label %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc.exit, %cond.true.i
  %cond.i1 = phi ptr [ %call5.i.i, %cond.true.i ], [ null, %_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc.exit ]
  %add.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %cond.i1, i64 %sub.ptr.div.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %add.ptr, ptr noundef nonnull align 8 dereferenceable(32) %__args, i64 32, i1 false)
  %cmp.not1.i.i.i = icmp eq ptr %1, %__position.coerce
  br i1 %cmp.not1.i.i.i, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit, %for.body.i.i.i
  %__first.addr.03.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit ]
  %__cur.02.i.i.i = phi ptr [ %incdec.ptr1.i.i.i, %for.body.i.i.i ], [ %cond.i1, %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %__cur.02.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %__first.addr.03.i.i.i, i64 32, i1 false), !alias.scope !41
  %incdec.ptr.i.i.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__first.addr.03.i.i.i, i64 1
  %incdec.ptr1.i.i.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__cur.02.i.i.i, i64 1
  %cmp.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %__position.coerce
  br i1 %cmp.not.i.i.i, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %for.body.i.i.i, !llvm.loop !45

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %for.body.i.i.i, %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit
  %__cur.0.lcssa.i.i.i = phi ptr [ %cond.i1, %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit ], [ %incdec.ptr1.i.i.i, %for.body.i.i.i ]
  %incdec.ptr = getelementptr %"struct.ledger::LevelSnapshot", ptr %__cur.0.lcssa.i.i.i, i64 1
  %cmp.not1.i.i.i2 = icmp eq ptr %0, %__position.coerce
  br i1 %cmp.not1.i.i.i2, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10, label %for.body.i.i.i3

for.body.i.i.i3:                                  ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %for.body.i.i.i3
  %__first.addr.03.i.i.i4 = phi ptr [ %incdec.ptr.i.i.i6, %for.body.i.i.i3 ], [ %__position.coerce, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ]
  %__cur.02.i.i.i5 = phi ptr [ %incdec.ptr1.i.i.i7, %for.body.i.i.i3 ], [ %incdec.ptr, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %__cur.02.i.i.i5, ptr noundef nonnull align 8 dereferenceable(32) %__first.addr.03.i.i.i4, i64 32, i1 false), !alias.scope !46
  %incdec.ptr.i.i.i6 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__first.addr.03.i.i.i4, i64 1
  %incdec.ptr1.i.i.i7 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__cur.02.i.i.i5, i64 1
  %cmp.not.i.i.i8 = icmp eq ptr %incdec.ptr.i.i.i6, %0
  br i1 %cmp.not.i.i.i8, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10, label %for.body.i.i.i3, !llvm.loop !45

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10: ; preds = %for.body.i.i.i3, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %__cur.0.lcssa.i.i.i9 = phi ptr [ %incdec.ptr, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %incdec.ptr1.i.i.i7, %for.body.i.i.i3 ]
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m.exit, label %if.then.i11

if.then.i11:                                      ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10
  tail call void @_ZdlPv(ptr noundef nonnull %1) #21
  br label %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10, %if.then.i11
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this, i64 0, i32 2
  store ptr %cond.i1, ptr %this, align 8
  store ptr %__cur.0.lcssa.i.i.i9, ptr %_M_finish.i.i, align 8
  %add.ptr19 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %cond.i1, i64 %cond.i
  store ptr %add.ptr19, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr %__position.coerce, ptr noundef nonnull align 8 dereferenceable(28) %__args) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_finish.i.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this, i64 0, i32 1
  %0 = load ptr, ptr %_M_finish.i.i, align 8
  %1 = load ptr, ptr %this, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %cmp.i = icmp eq i64 %sub.ptr.sub.i.i, 9223372036854775776
  br i1 %cmp.i, label %if.then.i, label %_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #19
  unreachable

_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %entry
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 5
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %sub.ptr.div.i.i, i64 1)
  %add.i = add nsw i64 %.sroa.speculated.i, %sub.ptr.div.i.i
  %cmp7.i = icmp ult i64 %add.i, %sub.ptr.div.i.i
  %2 = tail call i64 @llvm.umin.i64(i64 %add.i, i64 288230376151711743)
  %cond.i = select i1 %cmp7.i, i64 288230376151711743, i64 %2
  %sub.ptr.lhs.cast.i = ptrtoint ptr %__position.coerce to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 5
  %cmp.not.i = icmp eq i64 %cond.i, 0
  br i1 %cmp.not.i, label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit, label %cond.true.i

cond.true.i:                                      ; preds = %_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc.exit
  %mul.i.i = shl nuw nsw i64 %cond.i, 5
  %call5.i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i) #20
  br label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc.exit, %cond.true.i
  %cond.i1 = phi ptr [ %call5.i.i, %cond.true.i ], [ null, %_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc.exit ]
  %add.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %cond.i1, i64 %sub.ptr.div.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %add.ptr, ptr noundef nonnull align 8 dereferenceable(32) %__args, i64 32, i1 false)
  %cmp.not1.i.i.i = icmp eq ptr %1, %__position.coerce
  br i1 %cmp.not1.i.i.i, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit, %for.body.i.i.i
  %__first.addr.03.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit ]
  %__cur.02.i.i.i = phi ptr [ %incdec.ptr1.i.i.i, %for.body.i.i.i ], [ %cond.i1, %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %__cur.02.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %__first.addr.03.i.i.i, i64 32, i1 false), !alias.scope !50
  %incdec.ptr.i.i.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__first.addr.03.i.i.i, i64 1
  %incdec.ptr1.i.i.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__cur.02.i.i.i, i64 1
  %cmp.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %__position.coerce
  br i1 %cmp.not.i.i.i, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %for.body.i.i.i, !llvm.loop !54

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %for.body.i.i.i, %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit
  %__cur.0.lcssa.i.i.i = phi ptr [ %cond.i1, %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit ], [ %incdec.ptr1.i.i.i, %for.body.i.i.i ]
  %incdec.ptr = getelementptr %"struct.ledger::RestingOrder", ptr %__cur.0.lcssa.i.i.i, i64 1
  %cmp.not1.i.i.i2 = icmp eq ptr %0, %__position.coerce
  br i1 %cmp.not1.i.i.i2, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10, label %for.body.i.i.i3

for.body.i.i.i3:                                  ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %for.body.i.i.i3
  %__first.addr.03.i.i.i4 = phi ptr [ %incdec.ptr.i.i.i6, %for.body.i.i.i3 ], [ %__position.coerce, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ]
  %__cur.02.i.i.i5 = phi ptr [ %incdec.ptr1.i.i.i7, %for.body.i.i.i3 ], [ %incdec.ptr, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %__cur.02.i.i.i5, ptr noundef nonnull align 8 dereferenceable(32) %__first.addr.03.i.i.i4, i64 32, i1 false), !alias.scope !55
  %incdec.ptr.i.i.i6 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__first.addr.03.i.i.i4, i64 1
  %incdec.ptr1.i.i.i7 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__cur.02.i.i.i5, i64 1
  %cmp.not.i.i.i8 = icmp eq ptr %incdec.ptr.i.i.i6, %0
  br i1 %cmp.not.i.i.i8, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10, label %for.body.i.i.i3, !llvm.loop !54

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10: ; preds = %for.body.i.i.i3, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %__cur.0.lcssa.i.i.i9 = phi ptr [ %incdec.ptr, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %incdec.ptr1.i.i.i7, %for.body.i.i.i3 ]
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit, label %if.then.i11

if.then.i11:                                      ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10
  tail call void @_ZdlPv(ptr noundef nonnull %1) #21
  br label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit10, %if.then.i11
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this, i64 0, i32 2
  store ptr %cond.i1, ptr %this, align 8
  store ptr %__cur.0.lcssa.i.i.i9, ptr %_M_finish.i.i, align 8
  %add.ptr19 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %cond.i1, i64 %cond.i
  store ptr %add.ptr19, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN6ledger8FastBook15validate_configENS_6ConfigE: %agg.result"}
!7 = distinct !{!7, !"_ZN6ledger8FastBook15validate_configENS_6ConfigE"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = distinct !{!17, !9, !10}
!18 = distinct !{!18, !9, !10}
!19 = !{i64 0, i64 65}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9, !10}
!22 = distinct !{!22, !9, !10}
!23 = distinct !{!23, !9, !10}
!24 = distinct !{!24, !9, !10}
!25 = distinct !{!25, !9, !10}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9, !10}
!28 = distinct !{!28, !9, !10}
!29 = distinct !{!29, !9, !10}
!30 = distinct !{!30, !9, !10}
!31 = distinct !{!31, !9, !10}
!32 = distinct !{!32, !9, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !9, !10}
!36 = distinct !{!36, !9, !10}
!37 = distinct !{!37, !10}
!38 = distinct !{!38, !9, !10}
!39 = distinct !{!39, !9, !10}
!40 = distinct !{!40, !9, !10}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_: %__dest"}
!43 = distinct !{!43, !"_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_"}
!44 = distinct !{!44, !43, !"_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_: %__orig"}
!45 = distinct !{!45, !9, !10}
!46 = !{!47, !49}
!47 = distinct !{!47, !48, !"_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_: %__dest"}
!48 = distinct !{!48, !"_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_"}
!49 = distinct !{!49, !48, !"_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_: %__orig"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_: %__dest"}
!52 = distinct !{!52, !"_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_"}
!53 = distinct !{!53, !52, !"_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_: %__orig"}
!54 = distinct !{!54, !9, !10}
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_: %__dest"}
!57 = distinct !{!57, !"_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_"}
!58 = distinct !{!58, !57, !"_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_: %__orig"}
