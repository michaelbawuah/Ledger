; ModuleID = '/workspace/scratch/782b5db88681/Ledger-llvm-pass/tools/compilerpilot/builds/llvm-experiment-local-01/book.frontend.ll'
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

$_ZNK6ledger6detail7IdIndex4findEm = comdat any

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
  %call5.i.i.i2.i.i8.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i.i.i) #20
  store ptr %call5.i.i.i2.i.i8.i, ptr %pool_, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call5.i.i.i2.i.i8.i, i64 %conv.i
  %_M_end_of_storage.i.i.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %_M_end_of_storage.i.i.i.i, align 8
  br label %for.body.i.i.i.i.i.i

for.body.i.i.i.i.i.i:                             ; preds = %for.body.i.i.i.i.i.i, %_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_.exit.i.i
  %__cur.06.i.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ], [ %call5.i.i.i2.i.i8.i, %_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_.exit.i.i ]
  %__n.addr.05.i.i.i.i.i.i = phi i64 [ %dec.i.i.i.i.i.i, %for.body.i.i.i.i.i.i ], [ %conv.i, %_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_.exit.i.i ]
  %previous.i.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %__cur.06.i.i.i.i.i.i, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %__cur.06.i.i.i.i.i.i, i8 0, i64 40, i1 false)
  store i32 -1, ptr %previous.i.i.i.i.i.i.i.i, align 8
  %next.i.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %__cur.06.i.i.i.i.i.i, i64 0, i32 6
  store i32 -1, ptr %next.i.i.i.i.i.i.i.i, align 4
  %dec.i.i.i.i.i.i = add nsw i64 %__n.addr.05.i.i.i.i.i.i, -1
  %incdec.ptr.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %__cur.06.i.i.i.i.i.i, i64 1
  %cmp.not.i.i.i.i.i.i = icmp eq i64 %dec.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %for.body.preheader.i, label %for.body.i.i.i.i.i.i, !llvm.loop !8

for.body.preheader.i:                             ; preds = %for.body.i.i.i.i.i.i
  %_M_finish.i.i7.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  store ptr %incdec.ptr.i.i.i.i.i.i, ptr %_M_finish.i.i7.i.i, align 8
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
  %free_head_16.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 1
  store i32 0, ptr %free_head_16.i, align 8
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
  %__cur.06.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %for.body.i.i.i.i.i ], [ %call5.i.i.i2.i.i19, %call5.i.i.i2.i.i.noexc ]
  %__n.addr.05.i.i.i.i.i = phi i64 [ %dec.i.i.i.i.i, %for.body.i.i.i.i.i ], [ %add.i, %call5.i.i.i2.i.i.noexc ]
  %7 = getelementptr inbounds i8, ptr %__cur.06.i.i.i.i.i, i64 16
  store i64 0, ptr %7, align 8
  store i32 -1, ptr %__cur.06.i.i.i.i.i, align 8
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.06.i.i.i.i.i, i64 0, i32 1
  store i32 -1, ptr %tail.i.i.i.i.i.i.i, align 4
  %quantity.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.06.i.i.i.i.i, i64 0, i32 2
  store i64 0, ptr %quantity.i.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i64 %__n.addr.05.i.i.i.i.i, -1
  %incdec.ptr.i.i.i.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.06.i.i.i.i.i, i64 1
  %cmp.not.i.i.i.i.i16 = icmp eq i64 %dec.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i16, label %invoke.cont14, label %for.body.i.i.i.i.i, !llvm.loop !12

invoke.cont14:                                    ; preds = %for.body.i.i.i.i.i, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %8 = phi ptr [ null, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %call5.i.i.i2.i.i19, %for.body.i.i.i.i.i ]
  %9 = phi ptr [ null, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %incdec.ptr.i.i.i.i.i, %for.body.i.i.i.i.i ]
  %_M_finish.i.i7.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  store ptr %9, ptr %_M_finish.i.i7.i, align 8
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
  %__cur.06.i.i.i.i.i27 = phi ptr [ %incdec.ptr.i.i.i.i.i32, %for.body.i.i.i.i.i26 ], [ %call5.i.i.i2.i.i41, %call5.i.i.i2.i.i.noexc40 ]
  %__n.addr.05.i.i.i.i.i28 = phi i64 [ %dec.i.i.i.i.i31, %for.body.i.i.i.i.i26 ], [ %sub.ptr.div.i, %call5.i.i.i2.i.i.noexc40 ]
  %10 = getelementptr inbounds i8, ptr %__cur.06.i.i.i.i.i27, i64 16
  store i64 0, ptr %10, align 8
  store i32 -1, ptr %__cur.06.i.i.i.i.i27, align 8
  %tail.i.i.i.i.i.i.i29 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.06.i.i.i.i.i27, i64 0, i32 1
  store i32 -1, ptr %tail.i.i.i.i.i.i.i29, align 4
  %quantity.i.i.i.i.i.i.i30 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.06.i.i.i.i.i27, i64 0, i32 2
  store i64 0, ptr %quantity.i.i.i.i.i.i.i30, align 8
  %dec.i.i.i.i.i31 = add i64 %__n.addr.05.i.i.i.i.i28, -1
  %incdec.ptr.i.i.i.i.i32 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.06.i.i.i.i.i27, i64 1
  %cmp.not.i.i.i.i.i33 = icmp eq i64 %dec.i.i.i.i.i31, 0
  br i1 %cmp.not.i.i.i.i.i33, label %invoke.cont19, label %for.body.i.i.i.i.i26, !llvm.loop !12

invoke.cont19:                                    ; preds = %for.body.i.i.i.i.i26, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i21
  %__cur.0.lcssa.i.i.i.i.i35 = phi ptr [ null, %_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i21 ], [ %incdec.ptr.i.i.i.i.i32, %for.body.i.i.i.i.i26 ]
  %_M_finish.i.i7.i36 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  store ptr %__cur.0.lcssa.i.i.i.i.i35, ptr %_M_finish.i.i7.i36, align 8
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %div1 = lshr i64 %sub.ptr.div.i, 6
  %rem = and i64 %sub.ptr.div.i, 63
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i64
  %add = add nuw nsw i64 %div1, %conv
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %bid_bitmap_, i8 0, i64 24, i1 false)
  %cmp.not.i.i.i.i54 = icmp eq i64 %add, 0
  br i1 %cmp.not.i.i.i.i54, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70.thread, label %if.then.i.i.i.i3.i

if.then.i.i.i.i3.i:                               ; preds = %invoke.cont19
  %mul.i.i.i.i.i55 = shl nuw nsw i64 %add, 3
  %call5.i.i.i2.i.i63 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i.i.i55) #20
          to label %call5.i.i.i2.i.i.noexc62 unwind label %lpad25

call5.i.i.i2.i.i.noexc62:                         ; preds = %if.then.i.i.i.i3.i
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
  %_M_finish.i.i8.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7, i32 0, i32 0, i32 0, i32 1
  store ptr %__first.addr.0.i.i.i.i.i, ptr %_M_finish.i.i8.i, align 8
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
  br i1 %cmp.not.i.i.i.i71, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i81, label %if.then.i.i.i.i3.i72

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i81: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70.thread, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70
  %ask_bitmap_109115 = phi ptr [ %ask_bitmap_103, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70.thread ], [ %ask_bitmap_, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %ask_bitmap_109115, i8 0, i64 24, i1 false)
  br label %invoke.cont31

if.then.i.i.i.i3.i72:                             ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i70
  %call5.i.i.i2.i.i85 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %sub.ptr.sub.i67) #20
          to label %call5.i.i.i2.i.i.noexc84 unwind label %lpad30

call5.i.i.i2.i.i.noexc84:                         ; preds = %if.then.i.i.i.i3.i72
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
  %_M_finish.i.i8.i80 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8, i32 0, i32 0, i32 0, i32 1
  store ptr %__first.addr.0.i.i.i.i.i79, ptr %_M_finish.i.i8.i80, align 8
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

lpad25:                                           ; preds = %if.then.i.i.i.i3.i
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup

lpad30:                                           ; preds = %if.then.i.i.i.i3.i72, %if.then.i.i82
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
  %__cur.06.i.i.i.i.i = phi ptr [ %incdec.ptr.i.i.i.i.i, %for.body.i.i.i.i.i ], [ %call5.i.i.i2.i.i2, %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %__n.addr.05.i.i.i.i.i = phi i64 [ %dec.i.i.i.i.i, %for.body.i.i.i.i.i ], [ %capacity.0.i, %_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i ]
  %slot.i.i.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__cur.06.i.i.i.i.i, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %__cur.06.i.i.i.i.i, i8 0, i64 16, i1 false)
  store i32 -1, ptr %slot.i.i.i.i.i.i.i, align 8
  %dec.i.i.i.i.i = add i64 %__n.addr.05.i.i.i.i.i, -1
  %incdec.ptr.i.i.i.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__cur.06.i.i.i.i.i, i64 1
  %cmp.not.i.i.i.i.i = icmp eq i64 %dec.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %invoke.cont, label %for.body.i.i.i.i.i, !llvm.loop !14

invoke.cont:                                      ; preds = %for.body.i.i.i.i.i
  %_M_finish.i.i7.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this, i64 0, i32 1
  store ptr %incdec.ptr.i.i.i.i.i, ptr %_M_finish.i.i7.i, align 8
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
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %best_bid_.val = load i64, ptr %best_bid_, align 8
  %best_ask_.val = load i64, ptr %best_ask_, align 8
  %cond = select i1 %cmp, i64 %best_bid_.val, i64 %best_ask_.val
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
  %cmp11.not23 = icmp ugt i64 %sub.ptr.div.i, %starting_level
  br i1 %cmp11.not23, label %for.body13, label %cleanup26

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
  %i8.024 = phi i64 [ %inc, %for.inc19 ], [ %starting_level, %for.cond9.preheader ]
  %orders15 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %2, i64 %i8.024, i32 3
  %4 = load i32, ptr %orders15, align 8
  %tobool16.not = icmp eq i32 %4, 0
  br i1 %tobool16.not, label %for.inc19, label %cleanup26

for.inc19:                                        ; preds = %for.body13
  %inc = add nuw i64 %i8.024, 1
  %exitcond.not = icmp eq i64 %inc, %sub.ptr.div.i
  br i1 %exitcond.not, label %cleanup26, label %for.body13, !llvm.loop !18

if.end24:                                         ; preds = %entry
  %div32.i = lshr i64 %starting_level, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end24
  %bid_bitmap_.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %conv.i = and i64 %starting_level, 63
  %5 = load ptr, ptr %bid_bitmap_.i.i, align 8
  %add.ptr.i.i = getelementptr inbounds i64, ptr %5, i64 %div32.i
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
  %word.0.i = phi i64 [ %sub8.i, %for.body.i ], [ %div32.i, %if.then.i ]
  %cmp7.not.i = icmp eq i64 %word.0.i, 0
  br i1 %cmp7.not.i, label %cleanup26, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %sub8.i = add nsw i64 %word.0.i, -1
  %add.ptr.i33.i = getelementptr inbounds i64, ptr %5, i64 %sub8.i
  %8 = load i64, ptr %add.ptr.i33.i, align 8
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
  %add.ptr.i36.i = getelementptr inbounds i64, ptr %10, i64 %div32.i
  %11 = load i64, ptr %add.ptr.i36.i, align 8
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
  %word34.0.in.i = phi i64 [ %word34.0.i, %for.body40.i ], [ %div32.i, %for.cond36.preheader.i ]
  %word34.0.i = add nuw i64 %word34.0.in.i, 1
  %cmp38.not.not.i = icmp ult i64 %word34.0.i, %sub.ptr.div.i.i
  br i1 %cmp38.not.not.i, label %for.body40.i, label %cleanup26

for.body40.i:                                     ; preds = %for.cond36.i
  %add.ptr.i38.i = getelementptr inbounds i64, ptr %10, i64 %word34.0.i
  %14 = load i64, ptr %add.ptr.i38.i, align 8
  %tobool42.not.i = icmp eq i64 %14, 0
  br i1 %tobool42.not.i, label %for.cond36.i, label %if.then43.i, !llvm.loop !21

if.then43.i:                                      ; preds = %for.body40.i
  %mul44.i = shl i64 %word34.0.i, 6
  %15 = tail call i64 @llvm.cttz.i64(i64 %14, i1 true), !range !19
  %add48.i = or disjoint i64 %15, %mul44.i
  br label %cleanup26

cleanup26:                                        ; preds = %for.cond36.i, %for.cond.i, %for.body13, %for.inc19, %for.cond, %for.body, %for.cond9.preheader, %if.then43.i, %if.then28.i, %if.then11.i, %if.then3.i
  %retval.2 = phi i64 [ %sub19.i, %if.then11.i ], [ %sub6.i, %if.then3.i ], [ %add48.i, %if.then43.i ], [ %add32.i, %if.then28.i ], [ -1, %for.cond9.preheader ], [ -1, %for.cond ], [ %sub, %for.body ], [ %i8.024, %for.body13 ], [ -1, %for.inc19 ], [ -1, %for.cond.i ], [ -1, %for.cond36.i ]
  ret i64 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %starting_level) local_unnamed_addr #8 align 2 {
entry:
  %cmp.i = icmp eq i8 %side, 0
  %div32 = lshr i64 %starting_level, 6
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bid_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %conv = and i64 %starting_level, 63
  %0 = load ptr, ptr %bid_bitmap_.i, align 8
  %add.ptr.i = getelementptr inbounds i64, ptr %0, i64 %div32
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
  %word.0 = phi i64 [ %sub8, %for.body ], [ %div32, %if.then ]
  %cmp7.not = icmp eq i64 %word.0, 0
  br i1 %cmp7.not, label %cleanup58, label %for.body

for.body:                                         ; preds = %for.cond
  %sub8 = add nsw i64 %word.0, -1
  %add.ptr.i33 = getelementptr inbounds i64, ptr %0, i64 %sub8
  %3 = load i64, ptr %add.ptr.i33, align 8
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
  %add.ptr.i36 = getelementptr inbounds i64, ptr %5, i64 %div32
  %6 = load i64, ptr %add.ptr.i36, align 8
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
  %word34.0.in = phi i64 [ %word34.0, %for.body40 ], [ %div32, %for.cond36.preheader ]
  %word34.0 = add nuw i64 %word34.0.in, 1
  %cmp38.not.not = icmp ult i64 %word34.0, %sub.ptr.div.i
  br i1 %cmp38.not.not, label %for.body40, label %cleanup58

for.body40:                                       ; preds = %for.cond36
  %add.ptr.i38 = getelementptr inbounds i64, ptr %5, i64 %word34.0
  %9 = load i64, ptr %add.ptr.i38, align 8
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
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.rhs
  %cmp3 = icmp sge i64 %2, %maker_price
  br label %lor.end

cond.false:                                       ; preds = %lor.rhs
  %cmp5 = icmp sle i64 %2, %maker_price
  br label %lor.end

lor.end:                                          ; preds = %cond.true, %cond.false, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp3, %cond.true ], [ %cmp5, %cond.false ]
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
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %best_bid_.val.i = load i64, ptr %best_bid_.i, align 8
  %best_ask_.val.i = load i64, ptr %best_ask_.i, align 8
  %cond.i = select i1 %cmp.not, i64 %best_ask_.val.i, i64 %best_bid_.val.i
  %cmp3 = icmp eq i64 %cond.i, -1
  br i1 %cmp3, label %cleanup74, label %if.end

if.end:                                           ; preds = %entry
  %bitmap_fok_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 2
  %1 = load i8, ptr %bitmap_fok_, align 1, !range !15, !noundef !16
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end27, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %if.end
  %2 = load i64, ptr %this, align 8
  %action.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 5
  %3 = load i8, ptr %action.i, align 1
  %cmp.i43 = icmp eq i8 %3, 1
  %price.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %4 = load i64, ptr %price.i, align 8
  %5 = load ptr, ptr %bids_.i, align 8
  %quantity9131 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %6 = load i32, ptr %quantity9131, align 8
  %conv132 = zext i32 %6 to i64
  %7 = load ptr, ptr %asks_.i, align 8
  %bid_bitmap_.i.i75 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %8 = load ptr, ptr %bid_bitmap_.i.i75, align 8
  %_M_finish.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
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
  %level.0162 = phi i64 [ %cond.i, %land.rhs.lr.ph ], [ %level.1, %if.end26 ]
  %available.0161 = phi i64 [ 0, %land.rhs.lr.ph ], [ %add134136, %if.end26 ]
  %add.i = add nsw i64 %2, %level.0162
  br i1 %cmp.i43, label %while.body, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.rhs
  br i1 %cmp.not, label %cond.true.i, label %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit

cond.true.i:                                      ; preds = %lor.rhs.i
  %cmp3.i.not = icmp slt i64 %4, %add.i
  br i1 %cmp3.i.not, label %cleanup74, label %while.body.thread138

_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit: ; preds = %lor.rhs.i
  %cmp5.i.not = icmp sgt i64 %4, %add.i
  br i1 %cmp5.i.not, label %cleanup74, label %while.body.thread

while.body:                                       ; preds = %land.rhs
  %12 = load ptr, ptr %cond-lvalue.i, align 8
  %quantity = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %12, i64 %level.0162, i32 2
  %13 = load i64, ptr %quantity, align 8
  %add = add i64 %13, %available.0161
  %cmp10.not = icmp ult i64 %add, %conv132
  br i1 %cmp10.not, label %if.end12, label %cleanup74

while.body.thread138:                             ; preds = %cond.true.i
  %quantity140 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %7, i64 %level.0162, i32 2
  %14 = load i64, ptr %quantity140, align 8
  %add141 = add i64 %14, %available.0161
  %cmp10.not144 = icmp ult i64 %add141, %conv132
  br i1 %cmp10.not144, label %if.then14, label %cleanup74

while.body.thread:                                ; preds = %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit
  %quantity129 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %5, i64 %level.0162, i32 2
  %15 = load i64, ptr %quantity129, align 8
  %add130 = add i64 %15, %available.0161
  %cmp10.not133 = icmp ult i64 %add130, %conv132
  br i1 %cmp10.not133, label %if.else, label %cleanup74

if.end12:                                         ; preds = %while.body
  br i1 %cmp.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %while.body.thread138, %if.end12
  %16 = phi ptr [ %12, %if.end12 ], [ %7, %while.body.thread138 ]
  %add134147 = phi i64 [ %add, %if.end12 ], [ %add141, %while.body.thread138 ]
  %sub.ptr.rhs.cast.i = ptrtoint ptr %16 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 24
  %sub = add nsw i64 %sub.ptr.div.i, -1
  %cmp16 = icmp eq i64 %level.0162, %sub
  br i1 %cmp16, label %cleanup74, label %if.else.i

if.else.i:                                        ; preds = %if.then14
  %add19 = add nuw i64 %level.0162, 1
  %div32.i = lshr i64 %add19, 6
  %add.ptr.i36.i = getelementptr inbounds i64, ptr %10, i64 %div32.i
  %17 = load i64, ptr %add.ptr.i36.i, align 8
  %sh_prom25.i = and i64 %add19, 63
  %shl.i = shl nsw i64 -1, %sh_prom25.i
  %and26.i = and i64 %17, %shl.i
  %tobool27.not.i = icmp eq i64 %and26.i, 0
  br i1 %tobool27.not.i, label %for.cond36.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.else.i
  %mul29.i = and i64 %add19, -64
  %18 = tail call i64 @llvm.cttz.i64(i64 %and26.i, i1 true), !range !19
  %add32.i = or disjoint i64 %18, %mul29.i
  br label %if.end26

for.cond36.i:                                     ; preds = %if.else.i, %for.body40.i
  %word34.0.in.i = phi i64 [ %word34.0.i, %for.body40.i ], [ %div32.i, %if.else.i ]
  %word34.0.i = add nuw i64 %word34.0.in.i, 1
  %cmp38.not.not.i = icmp ult i64 %word34.0.i, %sub.ptr.div.i.i
  br i1 %cmp38.not.not.i, label %for.body40.i, label %cleanup74

for.body40.i:                                     ; preds = %for.cond36.i
  %add.ptr.i38.i = getelementptr inbounds i64, ptr %10, i64 %word34.0.i
  %19 = load i64, ptr %add.ptr.i38.i, align 8
  %tobool42.not.i = icmp eq i64 %19, 0
  br i1 %tobool42.not.i, label %for.cond36.i, label %if.then43.i, !llvm.loop !21

if.then43.i:                                      ; preds = %for.body40.i
  %mul44.i = shl i64 %word34.0.i, 6
  %20 = tail call i64 @llvm.cttz.i64(i64 %19, i1 true), !range !19
  %add48.i = or disjoint i64 %20, %mul44.i
  br label %if.end26

if.else:                                          ; preds = %while.body.thread, %if.end12
  %add134137 = phi i64 [ %add, %if.end12 ], [ %add130, %while.body.thread ]
  %cmp21 = icmp eq i64 %level.0162, 0
  br i1 %cmp21, label %cleanup74, label %if.then.i74

if.then.i74:                                      ; preds = %if.else
  %sub24 = add i64 %level.0162, -1
  %div32.i46 = lshr i64 %sub24, 6
  %conv.i76 = and i64 %sub24, 63
  %add.ptr.i.i77 = getelementptr inbounds i64, ptr %8, i64 %div32.i46
  %21 = load i64, ptr %add.ptr.i.i77, align 8
  %sub.i78 = xor i64 %conv.i76, 63
  %shr.i79 = lshr i64 -1, %sub.i78
  %and.i80 = and i64 %21, %shr.i79
  %tobool.not.i81 = icmp eq i64 %and.i80, 0
  br i1 %tobool.not.i81, label %for.cond.i85, label %if.then3.i82

if.then3.i82:                                     ; preds = %if.then.i74
  %add.i83 = or i64 %sub24, 63
  %22 = tail call i64 @llvm.ctlz.i64(i64 %and.i80, i1 true), !range !19
  %sub6.i84 = sub nuw nsw i64 %add.i83, %22
  br label %if.end26

for.cond.i85:                                     ; preds = %if.then.i74, %for.body.i88
  %word.0.i86 = phi i64 [ %sub8.i89, %for.body.i88 ], [ %div32.i46, %if.then.i74 ]
  %cmp7.not.i87 = icmp eq i64 %word.0.i86, 0
  br i1 %cmp7.not.i87, label %cleanup74, label %for.body.i88

for.body.i88:                                     ; preds = %for.cond.i85
  %sub8.i89 = add nsw i64 %word.0.i86, -1
  %add.ptr.i33.i90 = getelementptr inbounds i64, ptr %8, i64 %sub8.i89
  %23 = load i64, ptr %add.ptr.i33.i90, align 8
  %tobool10.not.i91 = icmp eq i64 %23, 0
  br i1 %tobool10.not.i91, label %for.cond.i85, label %if.then11.i92, !llvm.loop !20

if.then11.i92:                                    ; preds = %for.body.i88
  %mul13.i93 = shl nuw i64 %sub8.i89, 6
  %add14.i94 = or disjoint i64 %mul13.i93, 63
  %24 = tail call i64 @llvm.ctlz.i64(i64 %23, i1 true), !range !19
  %sub19.i95 = sub nuw nsw i64 %add14.i94, %24
  br label %if.end26

if.end26:                                         ; preds = %if.then11.i92, %if.then3.i82, %if.then43.i, %if.then28.i
  %add134136 = phi i64 [ %add134147, %if.then28.i ], [ %add134147, %if.then43.i ], [ %add134137, %if.then3.i82 ], [ %add134137, %if.then11.i92 ]
  %level.1 = phi i64 [ %add32.i, %if.then28.i ], [ %add48.i, %if.then43.i ], [ %sub6.i84, %if.then3.i82 ], [ %sub19.i95, %if.then11.i92 ]
  %cmp5.not = icmp eq i64 %level.1, -1
  br i1 %cmp5.not, label %cleanup74, label %land.rhs, !llvm.loop !22

if.end27:                                         ; preds = %if.end
  br i1 %cmp.not, label %for.cond.preheader, label %if.else45

for.cond.preheader:                               ; preds = %if.end27
  %_M_finish.i97 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %25 = load ptr, ptr %_M_finish.i97, align 8
  %26 = load ptr, ptr %asks_.i, align 8
  %sub.ptr.lhs.cast.i98 = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast.i99 = ptrtoint ptr %26 to i64
  %sub.ptr.sub.i100 = sub i64 %sub.ptr.lhs.cast.i98, %sub.ptr.rhs.cast.i99
  %sub.ptr.div.i101 = sdiv exact i64 %sub.ptr.sub.i100, 24
  %cmp31170 = icmp ult i64 %best_ask_.val.i, %sub.ptr.div.i101
  br i1 %cmp31170, label %land.rhs32.lr.ph, label %cleanup74

land.rhs32.lr.ph:                                 ; preds = %for.cond.preheader
  %27 = load i64, ptr %this, align 8
  %action.i103 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 5
  %28 = load i8, ptr %action.i103, align 1
  %cmp.i104 = icmp ne i8 %28, 1
  %price.i108 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %29 = load i64, ptr %price.i108, align 8
  %quantity39 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %30 = load i32, ptr %quantity39, align 8
  %conv40 = zext i32 %30 to i64
  br label %land.rhs32

for.cond:                                         ; preds = %for.body
  %inc = add i64 %i.0172, 1
  %exitcond.not = icmp eq i64 %inc, %sub.ptr.div.i101
  br i1 %exitcond.not, label %cleanup74, label %land.rhs32, !llvm.loop !23

land.rhs32:                                       ; preds = %land.rhs32.lr.ph, %for.cond
  %i.0172 = phi i64 [ %best_ask_.val.i, %land.rhs32.lr.ph ], [ %inc, %for.cond ]
  %available.1171 = phi i64 [ 0, %land.rhs32.lr.ph ], [ %add38, %for.cond ]
  %add.i102 = add nsw i64 %27, %i.0172
  %cmp3.i112.not = icmp slt i64 %29, %add.i102
  %or.cond176 = select i1 %cmp.i104, i1 %cmp3.i112.not, i1 false
  br i1 %or.cond176, label %cleanup74, label %for.body

for.body:                                         ; preds = %land.rhs32
  %quantity37 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %26, i64 %i.0172, i32 2
  %31 = load i64, ptr %quantity37, align 8
  %add38 = add i64 %31, %available.1171
  %cmp41.not = icmp ult i64 %add38, %conv40
  br i1 %cmp41.not, label %for.cond, label %cleanup74

if.else45:                                        ; preds = %if.end27
  %add47 = add nuw i64 %best_bid_.val.i, 1
  %32 = load i64, ptr %this, align 8
  %action.i116 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 5
  %33 = load i8, ptr %action.i116, align 1
  %cmp.i117 = icmp eq i8 %33, 1
  %price.i121 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %34 = load i64, ptr %price.i121, align 8
  %quantity61 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %35 = load i32, ptr %quantity61, align 8
  %conv62 = zext i32 %35 to i64
  br label %for.cond48

for.cond48:                                       ; preds = %cleanup66, %if.else45
  %available.2 = phi i64 [ 0, %if.else45 ], [ %add60, %cleanup66 ]
  %i46.0 = phi i64 [ %add47, %if.else45 ], [ %sub53, %cleanup66 ]
  %cmp49.not = icmp eq i64 %i46.0, 0
  br i1 %cmp49.not, label %cleanup74, label %for.body51

for.body51:                                       ; preds = %for.cond48
  %sub53 = add i64 %i46.0, -1
  %add.i115 = add nsw i64 %32, %sub53
  %cmp5.i123 = icmp sle i64 %34, %add.i115
  %or.cond = select i1 %cmp.i117, i1 true, i1 %cmp5.i123
  br i1 %or.cond, label %cleanup66, label %cleanup74

cleanup66:                                        ; preds = %for.body51
  %36 = load ptr, ptr %cond-lvalue.i, align 8
  %quantity59 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %36, i64 %sub53, i32 2
  %37 = load i64, ptr %quantity59, align 8
  %add60 = add i64 %37, %available.2
  %cmp63.not = icmp ult i64 %add60, %conv62
  br i1 %cmp63.not, label %for.cond48, label %cleanup74, !llvm.loop !24

cleanup74:                                        ; preds = %while.body, %if.end26, %if.else, %if.then14, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit, %cond.true.i, %while.body.thread, %while.body.thread138, %for.cond.i85, %for.cond36.i, %for.body51, %for.cond48, %cleanup66, %for.body, %land.rhs32, %for.cond, %for.cond.preheader, %entry
  %retval.6 = phi i1 [ false, %entry ], [ false, %for.cond.preheader ], [ true, %for.body ], [ false, %land.rhs32 ], [ false, %for.cond ], [ false, %for.body51 ], [ false, %for.cond48 ], [ true, %cleanup66 ], [ false, %for.cond36.i ], [ false, %for.cond.i85 ], [ true, %while.body ], [ false, %if.end26 ], [ false, %if.else ], [ false, %if.then14 ], [ false, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit ], [ false, %cond.true.i ], [ true, %while.body.thread ], [ true, %while.body.thread138 ]
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
  %conv.i35.pre-phi = phi i64 [ %conv.i, %if.end.i ], [ 4294967295, %entry ]
  %5 = load ptr, ptr %pool_, align 8
  %add.ptr.i.i36 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i35.pre-phi
  %id = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 1
  %6 = load i64, ptr %id, align 8
  store i64 %6, ptr %add.ptr.i.i36, align 8
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %7 = load i64, ptr %price, align 8
  %price5 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i35.pre-phi, i32 1
  store i64 %7, ptr %price5, align 8
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i35.pre-phi, i32 2
  store i32 %remaining, ptr %quantity, align 8
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 4
  %8 = load i8, ptr %side, align 4
  %side6 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i35.pre-phi, i32 3
  store i8 %8, ptr %side6, align 4
  %cmp.i37 = icmp eq i8 %8, 0
  %bids_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %9 = load i64, ptr %price, align 8
  %10 = load i64, ptr %this, align 8
  %sub.i = sub nsw i64 %9, %10
  %bids_.i.val = load ptr, ptr %bids_.i, align 8
  %asks_.i.val = load ptr, ptr %asks_.i, align 8
  %11 = select i1 %cmp.i37, ptr %bids_.i.val, ptr %asks_.i.val
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %11, i64 %sub.i, i32 1
  %12 = load i32, ptr %tail, align 4
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %5, i64 %conv.i35.pre-phi, i32 5
  store i32 %12, ptr %previous, align 8
  %cmp.not = icmp eq i32 %12, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %_ZN6ledger6detail9OrderPool7acquireEv.exit
  %conv.i38 = zext i32 %12 to i64
  %13 = load ptr, ptr %pool_, align 8
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %13, i64 %conv.i38, i32 6
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
  %sub.i40 = sub nsw i64 %17, %18
  %rem = and i64 %sub.i40, 63
  %shl = shl nuw i64 1, %rem
  %19 = load i8, ptr %side, align 4
  %cmp.i41 = icmp eq i8 %19, 0
  %bid_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 7
  %ask_bitmap_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 8
  %div34 = lshr i64 %sub.i40, 6
  %bid_bitmap_.i.val = load ptr, ptr %bid_bitmap_.i, align 8
  %ask_bitmap_.i.val = load ptr, ptr %ask_bitmap_.i, align 8
  %20 = select i1 %cmp.i41, ptr %bid_bitmap_.i.val, ptr %ask_bitmap_.i.val
  %add.ptr.i43 = getelementptr inbounds i64, ptr %20, i64 %div34
  %21 = load i64, ptr %add.ptr.i43, align 8
  %or = or i64 %21, %shl
  store i64 %or, ptr %add.ptr.i43, align 8
  %22 = load i8, ptr %side, align 4
  %cmp.i44 = icmp eq i8 %22, 0
  %best_bid_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %cond-lvalue.i45 = select i1 %cmp.i44, ptr %best_bid_.i, ptr %best_ask_.i
  %23 = load i64, ptr %cond-lvalue.i45, align 8
  %cmp27 = icmp eq i64 %23, -1
  br i1 %cmp27, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  br i1 %cmp.i44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %cmp30 = icmp ugt i64 %sub.i40, %23
  br i1 %cmp30, label %if.then32, label %if.end33

cond.false:                                       ; preds = %lor.lhs.false
  %cmp31 = icmp ult i64 %sub.i40, %23
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %cond.false, %cond.true, %if.end
  store i64 %sub.i40, ptr %cond-lvalue.i45, align 8
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
  %add.ptr.i5.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %26, i64 %and.i.i
  %27 = load i64, ptr %add.ptr.i5.i, align 8
  %tobool.not6.i = icmp eq i64 %27, 0
  br i1 %tobool.not6.i, label %_ZN6ledger6detail7IdIndex6insertEmj.exit, label %while.body.i

while.body.i:                                     ; preds = %if.end33, %while.body.i
  %position.07.i = phi i64 [ %and.i, %while.body.i ], [ %and.i.i, %if.end33 ]
  %add.i = add i64 %position.07.i, 1
  %and.i = and i64 %add.i, %25
  %add.ptr.i.i46 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %26, i64 %and.i
  %28 = load i64, ptr %add.ptr.i.i46, align 8
  %tobool.not.i = icmp eq i64 %28, 0
  br i1 %tobool.not.i, label %_ZN6ledger6detail7IdIndex6insertEmj.exit, label %while.body.i, !llvm.loop !25

_ZN6ledger6detail7IdIndex6insertEmj.exit:         ; preds = %while.body.i, %if.end33
  %add.ptr.i.lcssa.i = phi ptr [ %add.ptr.i5.i, %if.end33 ], [ %add.ptr.i.i46, %while.body.i ]
  store i64 %24, ptr %add.ptr.i.lcssa.i, align 8
  %ref.tmp.sroa.4.0.call7.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.lcssa.i, i64 8
  store i32 %0, ptr %ref.tmp.sroa.4.0.call7.sroa_idx.i, align 8
  %size_.i47 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 2
  %29 = load i64, ptr %size_.i47, align 8
  %inc.i48 = add i64 %29, 1
  store i64 %inc.i48, ptr %size_.i47, align 8
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
  %order.sroa.1214.0.call.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 24
  %order.sroa.1214.0.copyload = load i32, ptr %order.sroa.1214.0.call.sroa_idx, align 8
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
  %cmp.not = icmp eq i32 %order.sroa.1214.0.copyload, -1
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %conv.i23 = zext i32 %order.sroa.1214.0.copyload to i64
  %next8 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %0, i64 %conv.i23, i32 6
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
  %conv.i25 = zext i32 %order.sroa.16.0.copyload to i64
  %3 = load ptr, ptr %pool_, align 8
  %previous17 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %3, i64 %conv.i25, i32 5
  store i32 %order.sroa.1214.0.copyload, ptr %previous17, align 8
  br label %if.end20

if.else18:                                        ; preds = %if.end
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %2, i64 %sub.i, i32 1
  store i32 %order.sroa.1214.0.copyload, ptr %tail, align 4
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
  %div22 = lshr i64 %sub.i, 6
  %bid_bitmap_.i.val = load ptr, ptr %bid_bitmap_.i, align 8
  %ask_bitmap_.i.val = load ptr, ptr %ask_bitmap_.i, align 8
  %7 = select i1 %cmp.i, ptr %bid_bitmap_.i.val, ptr %ask_bitmap_.i.val
  %add.ptr.i29 = getelementptr inbounds i64, ptr %7, i64 %div22
  %8 = load i64, ptr %add.ptr.i29, align 8
  %and = and i64 %8, %not
  store i64 %and, ptr %add.ptr.i29, align 8
  %best_bid_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %cond-lvalue.i31 = select i1 %cmp.i, ptr %best_bid_.i, ptr %best_ask_.i
  %9 = load i64, ptr %cond-lvalue.i31, align 8
  %cmp32 = icmp eq i64 %9, %sub.i
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.then26
  %call35 = tail call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %order.sroa.7.0.copyload, i64 noundef %sub.i) #18
  store i64 %call35, ptr %cond-lvalue.i31, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then26, %if.then33, %if.end20
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4
  %call40 = tail call noundef zeroext i1 @_ZN6ledger6detail7IdIndex5eraseEm(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %order.sroa.0.0.copyload) #18
  %10 = load ptr, ptr %pool_, align 8
  %add.ptr.i.i37 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %10, i64 %conv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(21) %add.ptr.i.i37, i8 0, i64 21, i1 false)
  %ref.tmp.sroa.71.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i37, i64 24
  store i32 -1, ptr %ref.tmp.sroa.71.0.call.sroa_idx.i, align 8
  %ref.tmp.sroa.8.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i37, i64 28
  store i32 -1, ptr %ref.tmp.sroa.8.0.call.sroa_idx.i, align 4
  %ref.tmp.sroa.9.0.call.sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i37, i64 32
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
  %add.ptr.i35 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %1, i64 %and.i
  %2 = load i64, ptr %add.ptr.i35, align 8
  %tobool4.not36 = icmp eq i64 %2, 0
  br i1 %tobool4.not36, label %return, label %land.rhs

land.rhs:                                         ; preds = %if.end, %while.body
  %3 = phi i64 [ %4, %while.body ], [ %2, %if.end ]
  %hole.037 = phi i64 [ %and16, %while.body ], [ %and.i, %if.end ]
  %cmp.not = icmp eq i64 %3, %id
  %add14 = add i64 %hole.037, 1
  %and16 = and i64 %add14, %0
  %add.ptr.i1838 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %1, i64 %and16
  %4 = load i64, ptr %add.ptr.i1838, align 8
  %tobool21.not39 = icmp eq i64 %4, 0
  br i1 %cmp.not, label %if.end13, label %while.body

while.body:                                       ; preds = %land.rhs
  br i1 %tobool21.not39, label %return, label %land.rhs, !llvm.loop !26

if.end13:                                         ; preds = %land.rhs
  br i1 %tobool21.not39, label %while.end42, label %while.body22

while.body22:                                     ; preds = %if.end13, %if.end38
  %5 = phi ptr [ %8, %if.end38 ], [ %1, %if.end13 ]
  %6 = phi i64 [ %9, %if.end38 ], [ %0, %if.end13 ]
  %7 = phi i64 [ %10, %if.end38 ], [ %4, %if.end13 ]
  %add.ptr.i1842 = phi ptr [ %add.ptr.i18, %if.end38 ], [ %add.ptr.i1838, %if.end13 ]
  %hole.141 = phi i64 [ %hole.2, %if.end38 ], [ %hole.037, %if.end13 ]
  %cursor.040 = phi i64 [ %and41, %if.end38 ], [ %and16, %if.end13 ]
  %shr.i20 = lshr i64 %7, 30
  %xor.i21 = xor i64 %shr.i20, %7
  %mul.i22 = mul i64 %xor.i21, -4658895280553007687
  %shr2.i23 = lshr i64 %mul.i22, 27
  %xor3.i24 = xor i64 %shr2.i23, %mul.i22
  %mul4.i25 = mul i64 %xor3.i24, -7723592293110705685
  %shr5.i26 = lshr i64 %mul4.i25, 31
  %xor6.i27 = xor i64 %shr5.i26, %mul4.i25
  %and.i29 = and i64 %6, %xor6.i27
  %sub = sub i64 %hole.141, %and.i29
  %and28 = and i64 %sub, %6
  %sub29 = sub i64 %cursor.040, %and.i29
  %and31 = and i64 %sub29, %6
  %cmp32 = icmp ult i64 %and28, %and31
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %while.body22
  %add.ptr.i31 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %5, i64 %hole.141
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %add.ptr.i31, ptr noundef nonnull align 8 dereferenceable(12) %add.ptr.i1842, i64 12, i1 false)
  %.pre = load i64, ptr %mask_.i, align 8
  %.pre46 = load ptr, ptr %this, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %while.body22
  %8 = phi ptr [ %.pre46, %if.then33 ], [ %5, %while.body22 ]
  %9 = phi i64 [ %.pre, %if.then33 ], [ %6, %while.body22 ]
  %hole.2 = phi i64 [ %cursor.040, %if.then33 ], [ %hole.141, %while.body22 ]
  %add39 = add i64 %cursor.040, 1
  %and41 = and i64 %9, %add39
  %add.ptr.i18 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %8, i64 %and41
  %10 = load i64, ptr %add.ptr.i18, align 8
  %tobool21.not = icmp eq i64 %10, 0
  br i1 %tobool21.not, label %while.end42, label %while.body22, !llvm.loop !27

while.end42:                                      ; preds = %if.end38, %if.end13
  %hole.1.lcssa = phi i64 [ %hole.037, %if.end13 ], [ %hole.2, %if.end38 ]
  %.lcssa = phi ptr [ %1, %if.end13 ], [ %8, %if.end38 ]
  %add.ptr.i32 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %.lcssa, i64 %hole.1.lcssa
  store i64 0, ptr %add.ptr.i32, align 8
  %ref.tmp.sroa.4.0.call45.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i32, i64 8
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
  %add.ptr.i.i3 = getelementptr inbounds %"struct.ledger::Event", ptr %3, i64 %1
  store i64 %sequence, ptr %add.ptr.i.i3, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i3.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i3, i64 8
  store i8 4, ptr %ref.tmp.sroa.4.0.add.ptr.i.i3.sroa_idx, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i3.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i3, i64 9
  store i8 0, ptr %ref.tmp.sroa.5.0.add.ptr.i.i3.sroa_idx, align 1
  %ref.tmp.sroa.64.0.add.ptr.i.i3.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i3, i64 16
  store i64 %order.sroa.0.0.copyload, ptr %ref.tmp.sroa.64.0.add.ptr.i.i3.sroa_idx, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i3.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i3, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i3.sroa_idx, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i3.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i3, i64 32
  store i8 %order.sroa.7.0.copyload, ptr %ref.tmp.sroa.8.0.add.ptr.i.i3.sroa_idx, align 8
  %ref.tmp.sroa.95.0.add.ptr.i.i3.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i3, i64 40
  store i64 %order.sroa.4.0.copyload, ptr %ref.tmp.sroa.95.0.add.ptr.i.i3.sroa_idx, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i3.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i3, i64 48
  store i32 %order.sroa.5.0.copyload, ptr %ref.tmp.sroa.10.0.add.ptr.i.i3.sroa_idx, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i3.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i3, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i3.sroa_idx, align 4
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
  %ref.tmp.sroa.66.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 16
  store i64 %5, ptr %ref.tmp.sroa.66.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 32
  store i8 %4, ptr %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx, align 8
  %ref.tmp.sroa.97.0.add.ptr.i.i.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i, i64 40
  store i64 %3, ptr %ref.tmp.sroa.97.0.add.ptr.i.i.sroa_idx, align 8
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
  %side5.i.phi.trans.insert = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 4
  %.pre232 = load i8, ptr %side5.i.phi.trans.insert, align 4
  %cmp6 = icmp ugt i8 %.pre232, 1
  %or.cond242 = select i1 %cmp4, i1 true, i1 %cmp6
  br i1 %or.cond242, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %if.end
  %tif = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 6
  %3 = load i8, ptr %tif, align 2
  %cmp9 = icmp ugt i8 %3, 2
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end, %lor.lhs.false7
  %quantity7.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %4 = load i32, ptr %quantity7.i, align 8
  %price6.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %5 = load i64, ptr %price6.i, align 8
  %id4.i = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 1
  %6 = load i64, ptr %id4.i, align 8
  %7 = load i64, ptr %command, align 8
  store i64 1, ptr %size_.i, align 8
  %8 = load ptr, ptr %output, align 8
  store i64 %7, ptr %8, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %8, i64 8
  store i8 6, ptr %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %8, i64 9
  store i8 1, ptr %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i, align 1
  %ref.tmp.sroa.66.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %8, i64 16
  store i64 %6, ptr %ref.tmp.sroa.66.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %8, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %8, i64 32
  store i8 %.pre232, ptr %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.97.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %8, i64 40
  store i64 %5, ptr %ref.tmp.sroa.97.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %8, i64 48
  store i32 %4, ptr %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i = getelementptr inbounds i8, ptr %8, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i, align 4
  %9 = load i32, ptr %quantity7.i, align 8
  %conv.i = zext i32 %9 to i64
  %rejected.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 4
  %10 = load i64, ptr %rejected.i, align 8
  %add.i110 = add i64 %10, %conv.i
  store i64 %add.i110, ptr %rejected.i, align 8
  br label %return

if.end12:                                         ; preds = %lor.lhs.false7
  %id = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 1
  %11 = load i64, ptr %id, align 8
  %tobool.not = icmp eq i64 %11, 0
  br i1 %tobool.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end12
  %quantity7.i111 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %12 = load i32, ptr %quantity7.i111, align 8
  %price6.i116 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %13 = load i64, ptr %price6.i116, align 8
  %14 = load i64, ptr %command, align 8
  store i64 1, ptr %size_.i, align 8
  %15 = load ptr, ptr %output, align 8
  store i64 %14, ptr %15, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i121 = getelementptr inbounds i8, ptr %15, i64 8
  store i8 6, ptr %ref.tmp.sroa.4.0.add.ptr.i.i.sroa_idx.i121, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i122 = getelementptr inbounds i8, ptr %15, i64 9
  store i8 2, ptr %ref.tmp.sroa.5.0.add.ptr.i.i.sroa_idx.i122, align 1
  %ref.tmp.sroa.66.0.add.ptr.i.i.sroa_idx.i123 = getelementptr inbounds i8, ptr %15, i64 16
  %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i125 = getelementptr inbounds i8, ptr %15, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp.sroa.66.0.add.ptr.i.i.sroa_idx.i123, i8 0, i64 16, i1 false)
  store i8 %.pre232, ptr %ref.tmp.sroa.8.0.add.ptr.i.i.sroa_idx.i125, align 8
  %ref.tmp.sroa.97.0.add.ptr.i.i.sroa_idx.i126 = getelementptr inbounds i8, ptr %15, i64 40
  store i64 %13, ptr %ref.tmp.sroa.97.0.add.ptr.i.i.sroa_idx.i126, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i127 = getelementptr inbounds i8, ptr %15, i64 48
  store i32 %12, ptr %ref.tmp.sroa.10.0.add.ptr.i.i.sroa_idx.i127, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i128 = getelementptr inbounds i8, ptr %15, i64 52
  store i32 0, ptr %ref.tmp.sroa.11.0.add.ptr.i.i.sroa_idx.i128, align 4
  %16 = load i32, ptr %quantity7.i111, align 8
  %conv.i129 = zext i32 %16 to i64
  %rejected.i130 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 4
  %17 = load i64, ptr %rejected.i130, align 8
  %add.i131 = add i64 %17, %conv.i129
  store i64 %add.i131, ptr %rejected.i130, align 8
  br label %return

if.end15:                                         ; preds = %if.end12
  %cmp17.not = icmp ne i8 %2, 2
  %quantity = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 3
  %18 = load i32, ptr %quantity, align 8
  %tobool18.not = icmp eq i32 %18, 0
  %or.cond = select i1 %cmp17.not, i1 %tobool18.not, i1 false
  br i1 %or.cond, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.end15
  %call20 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end21:                                         ; preds = %if.end15
  switch i8 %2, label %if.end36 [
    i8 0, label %land.lhs.true27
    i8 3, label %land.lhs.true27
  ]

land.lhs.true27:                                  ; preds = %if.end21, %if.end21
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %19 = load i64, ptr %price, align 8
  %20 = load i64, ptr %this, align 8
  %cmp29 = icmp slt i64 %19, %20
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %this, i64 0, i32 1
  %21 = load i64, ptr %max_price, align 8
  %cmp33 = icmp sgt i64 %19, %21
  %or.cond107 = select i1 %cmp29, i1 true, i1 %cmp33
  br i1 %or.cond107, label %if.then34, label %if.end36

if.then34:                                        ; preds = %land.lhs.true27
  %call35 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end36:                                         ; preds = %land.lhs.true27, %if.end21
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4
  %call38 = tail call noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %11) #18
  %22 = load i8, ptr %action, align 1
  %23 = and i8 %22, -2
  %switch = icmp eq i8 %23, 2
  %cmp45 = icmp eq i32 %call38, -1
  br i1 %switch, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end36
  br i1 %cmp45, label %if.then46, label %if.end53

if.then46:                                        ; preds = %if.then44
  %call47 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 6, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.else:                                          ; preds = %if.end36
  br i1 %cmp45, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.else
  %call51 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end53:                                         ; preds = %if.else, %if.then44
  switch i8 %22, label %if.end67 [
    i8 2, label %if.then56
    i8 3, label %land.lhs.true60
  ]

if.then56:                                        ; preds = %if.end53
  %24 = load i64, ptr %command, align 8
  tail call void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %call38, i64 noundef %24, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

land.lhs.true60:                                  ; preds = %if.end53
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %conv.i133 = zext i32 %call38 to i64
  %25 = load ptr, ptr %pool_, align 8
  %side62 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %25, i64 %conv.i133, i32 3
  %26 = load i8, ptr %side62, align 4
  %27 = load i8, ptr %side5.i.phi.trans.insert, align 4
  %cmp64.not = icmp eq i8 %26, %27
  br i1 %cmp64.not, label %if.end67.thread, label %if.then65

if.end67.thread:                                  ; preds = %land.lhs.true60
  %28 = load i8, ptr %tif, align 2
  br label %if.end78

if.then65:                                        ; preds = %land.lhs.true60
  %call66 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 9, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end67:                                         ; preds = %if.end53
  %cmp69 = icmp eq i8 %22, 0
  %29 = load i8, ptr %tif, align 2
  %cmp72 = icmp eq i8 %29, 0
  %or.cond108 = select i1 %cmp69, i1 %cmp72, i1 false
  br i1 %or.cond108, label %land.lhs.true73, label %if.end78

land.lhs.true73:                                  ; preds = %if.end67
  %free_head_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 1
  %30 = load i32, ptr %free_head_.i, align 8
  %cmp.i = icmp eq i32 %30, -1
  br i1 %cmp.i, label %if.then76, label %if.end90.thread

if.end90.thread:                                  ; preds = %land.lhs.true73
  %price93234 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %31 = load i64, ptr %price93234, align 8
  br label %36

if.then76:                                        ; preds = %land.lhs.true73
  %call77 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 7, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end78:                                         ; preds = %if.end67.thread, %if.end67
  %32 = phi i8 [ %28, %if.end67.thread ], [ %29, %if.end67 ]
  %cmp80 = icmp eq i8 %32, 2
  br i1 %cmp80, label %land.lhs.true81, label %if.end85

land.lhs.true81:                                  ; preds = %if.end78
  %call82 = tail call noundef zeroext i1 @_ZNK6ledger8FastBook8can_fillERKNS_7CommandE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command) #18
  br i1 %call82, label %if.end85, label %if.then83

if.then83:                                        ; preds = %land.lhs.true81
  %call84 = tail call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 8, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  br label %return

if.end85:                                         ; preds = %land.lhs.true81, %if.end78
  %cmp87 = icmp eq i8 %22, 3
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end85
  %33 = load i64, ptr %command, align 8
  tail call void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %call38, i64 noundef %33, ptr noundef nonnull align 8 dereferenceable(24) %output) #18
  %.pre = load i8, ptr %action, align 1
  %34 = freeze i8 %.pre
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end85
  %.fr = phi i8 [ %34, %if.then88 ], [ %22, %if.end85 ]
  %cmp92 = icmp eq i8 %.fr, 1
  %price93 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i64 0, i32 2
  %35 = load i64, ptr %price93, align 8
  %spec.select = select i1 %cmp92, i64 0, i64 %35
  br label %36

36:                                               ; preds = %if.end90, %if.end90.thread
  %price93236 = phi ptr [ %price93234, %if.end90.thread ], [ %price93, %if.end90 ]
  %37 = phi i64 [ %31, %if.end90.thread ], [ %spec.select, %if.end90 ]
  %38 = load i64, ptr %size_.i, align 8
  %39 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i136.not = icmp eq i64 %38, %39
  br i1 %cmp.i136.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit, label %if.end.i

if.end.i:                                         ; preds = %36
  %40 = load i32, ptr %quantity, align 8
  %41 = load i8, ptr %side5.i.phi.trans.insert, align 4
  %42 = load i64, ptr %id, align 8
  %43 = load i64, ptr %command, align 8
  %inc.i = add i64 %38, 1
  store i64 %inc.i, ptr %size_.i, align 8
  %44 = load ptr, ptr %output, align 8
  %add.ptr.i.i137 = getelementptr inbounds %"struct.ledger::Event", ptr %44, i64 %38
  store i64 %43, ptr %add.ptr.i.i137, align 8
  %ref.tmp.sroa.4.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 8
  store i8 0, ptr %ref.tmp.sroa.4.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp.sroa.5.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 9
  store i8 0, ptr %ref.tmp.sroa.5.0.add.ptr.i.i137.sroa_idx, align 1
  %ref.tmp.sroa.6216.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 16
  store i64 %42, ptr %ref.tmp.sroa.6216.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp.sroa.7.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 24
  store i64 0, ptr %ref.tmp.sroa.7.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp.sroa.8.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 32
  store i8 %41, ptr %ref.tmp.sroa.8.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp.sroa.9217.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 40
  store i64 %37, ptr %ref.tmp.sroa.9217.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp.sroa.10.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 48
  store i32 %40, ptr %ref.tmp.sroa.10.0.add.ptr.i.i137.sroa_idx, align 8
  %ref.tmp.sroa.11.0.add.ptr.i.i137.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i137, i64 52
  store i32 %40, ptr %ref.tmp.sroa.11.0.add.ptr.i.i137.sroa_idx, align 4
  br label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit:   ; preds = %36, %if.end.i
  %45 = load i32, ptr %quantity, align 8
  %conv106 = zext i32 %45 to i64
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12
  %46 = load i64, ptr %statistics_, align 8
  %add = add i64 %46, %conv106
  store i64 %add, ptr %statistics_, align 8
  %47 = load i32, ptr %quantity, align 8
  %tobool112.not224 = icmp eq i32 %47, 0
  br i1 %tobool112.not224, label %return, label %land.lhs.true113.lr.ph

land.lhs.true113.lr.ph:                           ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit
  %48 = load i8, ptr %side5.i.phi.trans.insert, align 4
  %cmp110.not = icmp eq i8 %48, 0
  %best_bid_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 9
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %cond-lvalue.i = select i1 %cmp110.not, ptr %best_ask_.i, ptr %best_bid_.i
  %bids_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5
  %asks_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %cond-lvalue.i146 = select i1 %cmp110.not, ptr %asks_.i, ptr %bids_.i
  %pool_122 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 11
  %executed = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 1
  %trade_count = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 5
  br label %land.lhs.true113

land.lhs.true113:                                 ; preds = %land.lhs.true113.lr.ph, %if.end197
  %remaining107.0225 = phi i32 [ %47, %land.lhs.true113.lr.ph ], [ %sub, %if.end197 ]
  %49 = load i64, ptr %cond-lvalue.i, align 8
  %cmp115.not = icmp eq i64 %49, -1
  %.pre231 = load i8, ptr %action, align 1
  br i1 %cmp115.not, label %if.then199, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true113
  %50 = load i64, ptr %this, align 8
  %add.i143 = add nsw i64 %50, %49
  %cmp.i144 = icmp eq i8 %.pre231, 1
  br i1 %cmp.i144, label %while.body, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.rhs
  %51 = load i8, ptr %side5.i.phi.trans.insert, align 4
  %cmp2.i = icmp eq i8 %51, 0
  %52 = load i64, ptr %price93236, align 8
  br i1 %cmp2.i, label %cond.true.i, label %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit

cond.true.i:                                      ; preds = %lor.rhs.i
  %cmp3.i.not = icmp slt i64 %52, %add.i143
  br i1 %cmp3.i.not, label %if.then199, label %while.body

_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit: ; preds = %lor.rhs.i
  %cmp5.i.not = icmp sgt i64 %52, %add.i143
  br i1 %cmp5.i.not, label %if.then199, label %while.body

while.body:                                       ; preds = %land.rhs, %cond.true.i, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit
  %53 = load ptr, ptr %cond-lvalue.i146, align 8
  %add.ptr.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %53, i64 %49
  %54 = load i32, ptr %add.ptr.i, align 8
  %conv.i151 = zext i32 %54 to i64
  %55 = load ptr, ptr %pool_122, align 8
  %add.ptr.i.i152 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %55, i64 %conv.i151
  %quantity124 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %55, i64 %conv.i151, i32 2
  %56 = load i32, ptr %quantity124, align 4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %56, i32 %remaining107.0225)
  %sub = sub i32 %remaining107.0225, %.sroa.speculated
  %sub127 = sub i32 %56, %.sroa.speculated
  store i32 %sub127, ptr %quantity124, align 8
  %conv128 = zext i32 %.sroa.speculated to i64
  %57 = load i64, ptr %cond-lvalue.i, align 8
  %58 = load ptr, ptr %cond-lvalue.i146, align 8
  %quantity132 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %58, i64 %57, i32 2
  %59 = load i64, ptr %quantity132, align 8
  %sub133 = sub i64 %59, %conv128
  store i64 %sub133, ptr %quantity132, align 8
  %60 = load i64, ptr %resting_quantity_, align 8
  %sub135 = sub i64 %60, %conv128
  store i64 %sub135, ptr %resting_quantity_, align 8
  %61 = load i64, ptr %executed, align 8
  %add138 = add i64 %61, %conv128
  store i64 %add138, ptr %executed, align 8
  %62 = load i64, ptr %trade_count, align 8
  %inc = add i64 %62, 1
  store i64 %inc, ptr %trade_count, align 8
  %price152 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %55, i64 %conv.i151, i32 1
  %63 = load i64, ptr %size_.i, align 8
  %64 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i165.not = icmp eq i64 %63, %64
  br i1 %cmp.i165.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit183, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit169

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit169: ; preds = %while.body
  %65 = load i64, ptr %price152, align 8
  %66 = load i8, ptr %side5.i.phi.trans.insert, align 4
  %67 = load i64, ptr %add.ptr.i.i152, align 8
  %68 = load i64, ptr %id, align 8
  %69 = load i64, ptr %command, align 8
  %inc.i167 = add i64 %63, 1
  store i64 %inc.i167, ptr %size_.i, align 8
  %70 = load ptr, ptr %output, align 8
  %add.ptr.i.i168 = getelementptr inbounds %"struct.ledger::Event", ptr %70, i64 %63
  store i64 %69, ptr %add.ptr.i.i168, align 8
  %ref.tmp140.sroa.4.0.add.ptr.i.i168.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i168, i64 8
  store i8 1, ptr %ref.tmp140.sroa.4.0.add.ptr.i.i168.sroa_idx, align 8
  %ref.tmp140.sroa.5.0.add.ptr.i.i168.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i168, i64 9
  store i8 0, ptr %ref.tmp140.sroa.5.0.add.ptr.i.i168.sroa_idx, align 1
  %ref.tmp140.sroa.6197.0.add.ptr.i.i168.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i168, i64 16
  store i64 %68, ptr %ref.tmp140.sroa.6197.0.add.ptr.i.i168.sroa_idx, align 8
  %ref.tmp140.sroa.7.0.add.ptr.i.i168.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i168, i64 24
  store i64 %67, ptr %ref.tmp140.sroa.7.0.add.ptr.i.i168.sroa_idx, align 8
  %ref.tmp140.sroa.8.0.add.ptr.i.i168.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i168, i64 32
  store i8 %66, ptr %ref.tmp140.sroa.8.0.add.ptr.i.i168.sroa_idx, align 8
  %ref.tmp140.sroa.9198.0.add.ptr.i.i168.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i168, i64 40
  store i64 %65, ptr %ref.tmp140.sroa.9198.0.add.ptr.i.i168.sroa_idx, align 8
  %ref.tmp140.sroa.10.0.add.ptr.i.i168.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i168, i64 48
  store i32 %.sroa.speculated, ptr %ref.tmp140.sroa.10.0.add.ptr.i.i168.sroa_idx, align 8
  %ref.tmp140.sroa.11.0.add.ptr.i.i168.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i168, i64 52
  store i32 %sub, ptr %ref.tmp140.sroa.11.0.add.ptr.i.i168.sroa_idx, align 4
  %.pre227 = load i64, ptr %size_.i, align 8
  %.pre228 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i172.not = icmp eq i64 %.pre227, %.pre228
  br i1 %cmp.i172.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit183, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit176

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit176: ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit169
  %71 = load i64, ptr %price152, align 8
  %side169 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %55, i64 %conv.i151, i32 3
  %72 = load i8, ptr %side169, align 4
  %73 = load i64, ptr %id, align 8
  %74 = load i64, ptr %add.ptr.i.i152, align 8
  %75 = load i32, ptr %quantity124, align 8
  %tobool161.not = icmp eq i32 %75, 0
  %cond162 = select i1 %tobool161.not, i8 3, i8 2
  %76 = load i64, ptr %command, align 8
  %inc.i174 = add i64 %.pre227, 1
  store i64 %inc.i174, ptr %size_.i, align 8
  %77 = load ptr, ptr %output, align 8
  %add.ptr.i.i175 = getelementptr inbounds %"struct.ledger::Event", ptr %77, i64 %.pre227
  store i64 %76, ptr %add.ptr.i.i175, align 8
  %ref.tmp156.sroa.4.0.add.ptr.i.i175.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i175, i64 8
  store i8 %cond162, ptr %ref.tmp156.sroa.4.0.add.ptr.i.i175.sroa_idx, align 8
  %ref.tmp156.sroa.5.0.add.ptr.i.i175.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i175, i64 9
  store i8 0, ptr %ref.tmp156.sroa.5.0.add.ptr.i.i175.sroa_idx, align 1
  %ref.tmp156.sroa.6195.0.add.ptr.i.i175.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i175, i64 16
  store i64 %74, ptr %ref.tmp156.sroa.6195.0.add.ptr.i.i175.sroa_idx, align 8
  %ref.tmp156.sroa.7.0.add.ptr.i.i175.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i175, i64 24
  store i64 %73, ptr %ref.tmp156.sroa.7.0.add.ptr.i.i175.sroa_idx, align 8
  %ref.tmp156.sroa.8.0.add.ptr.i.i175.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i175, i64 32
  store i8 %72, ptr %ref.tmp156.sroa.8.0.add.ptr.i.i175.sroa_idx, align 8
  %ref.tmp156.sroa.9196.0.add.ptr.i.i175.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i175, i64 40
  store i64 %71, ptr %ref.tmp156.sroa.9196.0.add.ptr.i.i175.sroa_idx, align 8
  %ref.tmp156.sroa.10.0.add.ptr.i.i175.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i175, i64 48
  store i32 %.sroa.speculated, ptr %ref.tmp156.sroa.10.0.add.ptr.i.i175.sroa_idx, align 8
  %ref.tmp156.sroa.11.0.add.ptr.i.i175.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i175, i64 52
  store i32 %75, ptr %ref.tmp156.sroa.11.0.add.ptr.i.i175.sroa_idx, align 4
  %.pre229 = load i64, ptr %size_.i, align 8
  %.pre230 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i179.not = icmp eq i64 %.pre229, %.pre230
  br i1 %cmp.i179.not, label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit183, label %if.end.i180

if.end.i180:                                      ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit176
  %78 = load i64, ptr %price152, align 8
  %79 = load i8, ptr %side5.i.phi.trans.insert, align 4
  %80 = load i64, ptr %add.ptr.i.i152, align 8
  %81 = load i64, ptr %id, align 8
  %tobool180.not = icmp eq i32 %sub, 0
  %cond181 = select i1 %tobool180.not, i8 3, i8 2
  %82 = load i64, ptr %command, align 8
  %inc.i181 = add i64 %.pre229, 1
  store i64 %inc.i181, ptr %size_.i, align 8
  %83 = load ptr, ptr %output, align 8
  %add.ptr.i.i182 = getelementptr inbounds %"struct.ledger::Event", ptr %83, i64 %.pre229
  store i64 %82, ptr %add.ptr.i.i182, align 8
  %ref.tmp176.sroa.4.0.add.ptr.i.i182.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i182, i64 8
  store i8 %cond181, ptr %ref.tmp176.sroa.4.0.add.ptr.i.i182.sroa_idx, align 8
  %ref.tmp176.sroa.5.0.add.ptr.i.i182.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i182, i64 9
  store i8 0, ptr %ref.tmp176.sroa.5.0.add.ptr.i.i182.sroa_idx, align 1
  %ref.tmp176.sroa.6193.0.add.ptr.i.i182.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i182, i64 16
  store i64 %81, ptr %ref.tmp176.sroa.6193.0.add.ptr.i.i182.sroa_idx, align 8
  %ref.tmp176.sroa.7.0.add.ptr.i.i182.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i182, i64 24
  store i64 %80, ptr %ref.tmp176.sroa.7.0.add.ptr.i.i182.sroa_idx, align 8
  %ref.tmp176.sroa.8.0.add.ptr.i.i182.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i182, i64 32
  store i8 %79, ptr %ref.tmp176.sroa.8.0.add.ptr.i.i182.sroa_idx, align 8
  %ref.tmp176.sroa.9194.0.add.ptr.i.i182.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i182, i64 40
  store i64 %78, ptr %ref.tmp176.sroa.9194.0.add.ptr.i.i182.sroa_idx, align 8
  %ref.tmp176.sroa.10.0.add.ptr.i.i182.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i182, i64 48
  store i32 %.sroa.speculated, ptr %ref.tmp176.sroa.10.0.add.ptr.i.i182.sroa_idx, align 8
  %ref.tmp176.sroa.11.0.add.ptr.i.i182.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i182, i64 52
  store i32 %sub, ptr %ref.tmp176.sroa.11.0.add.ptr.i.i182.sroa_idx, align 4
  br label %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit183

_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit183: ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit169, %while.body, %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit176, %if.end.i180
  %84 = load i32, ptr %quantity124, align 8
  %tobool195.not = icmp eq i32 %84, 0
  br i1 %tobool195.not, label %if.then196, label %if.end197

if.then196:                                       ; preds = %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit183
  tail call void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %54) #18
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit183
  %tobool112.not = icmp eq i32 %sub, 0
  br i1 %tobool112.not, label %return, label %land.lhs.true113, !llvm.loop !28

if.then199:                                       ; preds = %cond.true.i, %land.lhs.true113, %_ZNK6ledger8FastBook7crossesERKNS_7CommandEl.exit
  %cmp201.not = icmp ne i8 %.pre231, 1
  %85 = load i8, ptr %tif, align 2
  %cmp204 = icmp eq i8 %85, 0
  %or.cond109 = select i1 %cmp201.not, i1 %cmp204, i1 false
  br i1 %or.cond109, label %if.then205, label %if.else206

if.then205:                                       ; preds = %if.then199
  tail call void @_ZN6ledger8FastBook11add_restingERKNS_7CommandEj(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i32 noundef %remaining107.0225) #18
  br label %return

if.else206:                                       ; preds = %if.then199
  %conv207 = zext i32 %remaining107.0225 to i64
  %expired = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 3
  %86 = load i64, ptr %expired, align 8
  %add209 = add i64 %86, %conv207
  store i64 %add209, ptr %expired, align 8
  %87 = load i64, ptr %size_.i, align 8
  %88 = load i64, ptr %_M_extent.i.i, align 8
  %cmp.i186.not = icmp eq i64 %87, %88
  br i1 %cmp.i186.not, label %return, label %if.end.i187

if.end.i187:                                      ; preds = %if.else206
  %89 = load i8, ptr %side5.i.phi.trans.insert, align 4
  %90 = load i64, ptr %id, align 8
  %91 = load i64, ptr %command, align 8
  %inc.i188 = add i64 %87, 1
  store i64 %inc.i188, ptr %size_.i, align 8
  %92 = load ptr, ptr %output, align 8
  %add.ptr.i.i189 = getelementptr inbounds %"struct.ledger::Event", ptr %92, i64 %87
  store i64 %91, ptr %add.ptr.i.i189, align 8
  %ref.tmp210.sroa.4.0.add.ptr.i.i189.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i189, i64 8
  store i8 5, ptr %ref.tmp210.sroa.4.0.add.ptr.i.i189.sroa_idx, align 8
  %ref.tmp210.sroa.5.0.add.ptr.i.i189.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i189, i64 9
  store i8 0, ptr %ref.tmp210.sroa.5.0.add.ptr.i.i189.sroa_idx, align 1
  %ref.tmp210.sroa.6191.0.add.ptr.i.i189.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i189, i64 16
  store i64 %90, ptr %ref.tmp210.sroa.6191.0.add.ptr.i.i189.sroa_idx, align 8
  %ref.tmp210.sroa.7.0.add.ptr.i.i189.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i189, i64 24
  store i64 0, ptr %ref.tmp210.sroa.7.0.add.ptr.i.i189.sroa_idx, align 8
  %ref.tmp210.sroa.8.0.add.ptr.i.i189.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i189, i64 32
  store i8 %89, ptr %ref.tmp210.sroa.8.0.add.ptr.i.i189.sroa_idx, align 8
  %ref.tmp210.sroa.9192.0.add.ptr.i.i189.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i189, i64 40
  store i64 %37, ptr %ref.tmp210.sroa.9192.0.add.ptr.i.i189.sroa_idx, align 8
  %ref.tmp210.sroa.10.0.add.ptr.i.i189.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i189, i64 48
  store i32 %remaining107.0225, ptr %ref.tmp210.sroa.10.0.add.ptr.i.i189.sroa_idx, align 8
  %ref.tmp210.sroa.11.0.add.ptr.i.i189.sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i.i189, i64 52
  store i32 0, ptr %ref.tmp210.sroa.11.0.add.ptr.i.i189.sroa_idx, align 4
  br label %return

return:                                           ; preds = %if.end197, %if.end.i187, %if.else206, %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit, %if.then205, %if.then46, %if.then50, %if.then56, %if.then65, %if.then76, %if.then83, %entry, %if.then34, %if.then19, %if.then13, %if.then10
  %retval.1 = phi i32 [ 1, %if.then10 ], [ 1, %if.then34 ], [ 1, %if.then19 ], [ 1, %if.then13 ], [ 2, %entry ], [ 1, %if.then46 ], [ 0, %if.then56 ], [ 1, %if.then65 ], [ 1, %if.then76 ], [ 1, %if.then83 ], [ 1, %if.then50 ], [ 0, %if.then205 ], [ 0, %_ZN6ledger11EventBuffer4pushERKNS_5EventE.exit ], [ 0, %if.else206 ], [ 0, %if.end.i187 ], [ 0, %if.end197 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) local_unnamed_addr #10 comdat align 2 {
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
  %add.ptr.i10 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %1, i64 %and.i
  %2 = load i64, ptr %add.ptr.i10, align 8
  %tobool4.not11 = icmp eq i64 %2, 0
  br i1 %tobool4.not11, label %return, label %while.body

while.body:                                       ; preds = %if.end, %if.end11
  %3 = phi i64 [ %5, %if.end11 ], [ %2, %if.end ]
  %position.012 = phi i64 [ %and, %if.end11 ], [ %and.i, %if.end ]
  %cmp = icmp eq i64 %3, %id
  br i1 %cmp, label %if.then8, label %if.end11

if.then8:                                         ; preds = %while.body
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %1, i64 %position.012, i32 1
  %4 = load i32, ptr %slot, align 8
  br label %return

if.end11:                                         ; preds = %while.body
  %add = add i64 %position.012, 1
  %and = and i64 %add, %0
  %add.ptr.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %1, i64 %and
  %5 = load i64, ptr %add.ptr.i, align 8
  %tobool4.not = icmp eq i64 %5, 0
  br i1 %tobool4.not, label %return, label %while.body, !llvm.loop !29

return:                                           ; preds = %if.end11, %if.end, %if.then8, %entry
  %retval.1 = phi i32 [ -1, %entry ], [ %4, %if.then8 ], [ -1, %if.end ], [ -1, %if.end11 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6ledger8FastBook8snapshotEv(ptr dead_on_unwind noalias writable sret(%"struct.ledger::Snapshot") align 8 %agg.result, ptr nocapture noundef nonnull readonly align 8 dereferenceable(280) %this) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp.i16 = alloca %"struct.ledger::LevelSnapshot", align 8
  %ref.tmp10.i17 = alloca %"struct.ledger::RestingOrder", align 8
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
  %call5.i.i.i7 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %mul.i.i.i) #20
          to label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %lpad

_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit.i
  %_M_finish.i.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %agg.result, i64 0, i32 1
  store ptr %call5.i.i.i7, ptr %agg.result, align 8
  store ptr %call5.i.i.i7, ptr %_M_finish.i.i, align 8
  %add.ptr21.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %call5.i.i.i7, i64 %0
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
  %cmp.not72 = icmp eq ptr %1, %2
  br i1 %cmp.not72, label %for.cond6.preheader, label %for.body.lr.ph

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
  %_M_finish.i.i11.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %agg.result, i64 0, i32 1
  br label %for.body

for.cond6.preheader:                              ; preds = %for.inc, %invoke.cont
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6
  %_M_finish.i11 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %3 = load ptr, ptr %_M_finish.i11, align 8
  %4 = load ptr, ptr %asks_, align 8
  %cmp878.not = icmp eq ptr %3, %4
  br i1 %cmp878.not, label %for.cond.cleanup9, label %for.body10.lr.ph

for.body10.lr.ph:                                 ; preds = %for.cond6.preheader
  %price.i24 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i16, i64 0, i32 2
  %quantity.i26 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i16, i64 0, i32 3
  %orders6.i28 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp.i16, i64 0, i32 4
  %_M_finish.i.i.i29 = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %_M_end_of_storage.i.i.i30 = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1, i32 0, i32 0, i32 0, i32 2
  %levels.i61 = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i64 0, i32 1
  %side12.i39 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i17, i64 0, i32 1
  %price14.i40 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i17, i64 0, i32 3
  %quantity16.i41 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10.i17, i64 0, i32 4
  %_M_finish.i.i11.i50 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %agg.result, i64 0, i32 1
  br label %for.body10

lpad:                                             ; preds = %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit.i, %if.then.i
  %5 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %i.073 = phi i64 [ %sub.ptr.div.i, %for.body.lr.ph ], [ %sub, %for.inc ]
  %sub = add i64 %i.073, -1
  %6 = load ptr, ptr %bids_, align 8
  %add.ptr.i.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %6, i64 %sub
  %orders.i = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %6, i64 %sub, i32 3
  %7 = load i32, ptr %orders.i, align 8
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %for.inc, label %if.end.i8

if.end.i8:                                        ; preds = %for.body
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

if.then.i.i.i:                                    ; preds = %if.end.i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp.i, i64 32, i1 false)
  %12 = load ptr, ptr %_M_finish.i.i.i, align 8
  %incdec.ptr.i.i.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %12, i64 1
  store ptr %incdec.ptr.i.i.i, ptr %_M_finish.i.i.i, align 8
  br label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i8
  invoke void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %levels.i, ptr %10, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp.i)
          to label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i unwind label %lpad3.loopexit.split-lp

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i: ; preds = %if.else.i.i.i, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp.i) #18
  %slot.019.i = load i32, ptr %add.ptr.i.i, align 4
  %cmp.not20.i = icmp eq i32 %slot.019.i, -1
  br i1 %cmp.not20.i, label %for.inc, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i
  %.pre.i = load ptr, ptr %pool_, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i, %for.body.lr.ph.i
  %13 = phi ptr [ %.pre.i, %for.body.lr.ph.i ], [ %21, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i ]
  %slot.021.i = phi i32 [ %slot.019.i, %for.body.lr.ph.i ], [ %slot.0.i, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i ]
  %conv.i.i = zext i32 %slot.021.i to i64
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
  %18 = load ptr, ptr %_M_finish.i.i11.i, align 8
  %19 = load ptr, ptr %_M_end_of_storage.i.i, align 8
  %cmp.not.i.i13.i = icmp eq ptr %18, %19
  br i1 %cmp.not.i.i13.i, label %if.else.i.i16.i, label %if.then.i.i14.i

if.then.i.i14.i:                                  ; preds = %for.body.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp10.i, i64 32, i1 false)
  %20 = load ptr, ptr %_M_finish.i.i11.i, align 8
  %incdec.ptr.i.i15.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %20, i64 1
  store ptr %incdec.ptr.i.i15.i, ptr %_M_finish.i.i11.i, align 8
  br label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i

if.else.i.i16.i:                                  ; preds = %for.body.i
  invoke void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr %18, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp10.i)
          to label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i unwind label %lpad3.loopexit

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i: ; preds = %if.else.i.i16.i, %if.then.i.i14.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp10.i) #18
  %21 = load ptr, ptr %pool_, align 8
  %next.i = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %21, i64 %conv.i.i, i32 6
  %slot.0.i = load i32, ptr %next.i, align 4
  %cmp.not.i = icmp eq i32 %slot.0.i, -1
  br i1 %cmp.not.i, label %for.inc, label %for.body.i, !llvm.loop !30

for.inc:                                          ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i, %for.body
  %cmp.not = icmp eq i64 %sub, 0
  br i1 %cmp.not, label %for.cond6.preheader, label %for.body, !llvm.loop !31

lpad3.loopexit:                                   ; preds = %if.else.i.i16.i
  %lpad.loopexit69 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

lpad3.loopexit.split-lp:                          ; preds = %if.else.i.i.i
  %lpad.loopexit.split-lp70 = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

for.cond.cleanup9:                                ; preds = %for.inc13, %for.cond6.preheader
  ret void

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc13
  %22 = phi ptr [ %4, %for.body10.lr.ph ], [ %39, %for.inc13 ]
  %i5.079 = phi i64 [ 0, %for.body10.lr.ph ], [ %inc, %for.inc13 ]
  %add.ptr.i.i20 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i5.079
  %orders.i21 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i5.079, i32 3
  %23 = load i32, ptr %orders.i21, align 8
  %tobool.not.i22 = icmp eq i32 %23, 0
  br i1 %tobool.not.i22, label %for.inc13, label %if.end.i23

if.end.i23:                                       ; preds = %for.body10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp.i16) #18
  store i8 1, ptr %ref.tmp.i16, align 8
  %24 = load i64, ptr %this, align 8
  %add.i.i25 = add nsw i64 %24, %i5.079
  store i64 %add.i.i25, ptr %price.i24, align 8
  %quantity5.i27 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %22, i64 %i5.079, i32 2
  %25 = load i64, ptr %quantity5.i27, align 8
  store i64 %25, ptr %quantity.i26, align 8
  store i32 %23, ptr %orders6.i28, align 8
  %26 = load ptr, ptr %_M_finish.i.i.i29, align 8
  %27 = load ptr, ptr %_M_end_of_storage.i.i.i30, align 8
  %cmp.not.i.i.i31 = icmp eq ptr %26, %27
  br i1 %cmp.not.i.i.i31, label %if.else.i.i.i60, label %if.then.i.i.i32

if.then.i.i.i32:                                  ; preds = %if.end.i23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp.i16, i64 32, i1 false)
  %28 = load ptr, ptr %_M_finish.i.i.i29, align 8
  %incdec.ptr.i.i.i33 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %28, i64 1
  store ptr %incdec.ptr.i.i.i33, ptr %_M_finish.i.i.i29, align 8
  br label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i34

if.else.i.i.i60:                                  ; preds = %if.end.i23
  invoke void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %levels.i61, ptr %26, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp.i16)
          to label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i34 unwind label %lpad11.loopexit.split-lp

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i34: ; preds = %if.else.i.i.i60, %if.then.i.i.i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp.i16) #18
  %slot.019.i35 = load i32, ptr %add.ptr.i.i20, align 4
  %cmp.not20.i36 = icmp eq i32 %slot.019.i35, -1
  br i1 %cmp.not20.i36, label %for.inc13, label %for.body.lr.ph.i37

for.body.lr.ph.i37:                               ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i34
  %.pre.i42 = load ptr, ptr %pool_, align 8
  br label %for.body.i43

for.body.i43:                                     ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i55, %for.body.lr.ph.i37
  %29 = phi ptr [ %.pre.i42, %for.body.lr.ph.i37 ], [ %37, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i55 ]
  %slot.021.i44 = phi i32 [ %slot.019.i35, %for.body.lr.ph.i37 ], [ %slot.0.i57, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i55 ]
  %conv.i.i45 = zext i32 %slot.021.i44 to i64
  %add.ptr.i.i.i46 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %29, i64 %conv.i.i45
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ref.tmp10.i17) #18
  %30 = load i64, ptr %add.ptr.i.i.i46, align 8
  store i64 %30, ptr %ref.tmp10.i17, align 8
  %side13.i47 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %29, i64 %conv.i.i45, i32 3
  %31 = load i8, ptr %side13.i47, align 4
  store i8 %31, ptr %side12.i39, align 8
  %price15.i48 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %29, i64 %conv.i.i45, i32 1
  %32 = load i64, ptr %price15.i48, align 8
  store i64 %32, ptr %price14.i40, align 8
  %quantity17.i49 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %29, i64 %conv.i.i45, i32 2
  %33 = load i32, ptr %quantity17.i49, align 8
  store i32 %33, ptr %quantity16.i41, align 8
  %34 = load ptr, ptr %_M_finish.i.i11.i50, align 8
  %35 = load ptr, ptr %_M_end_of_storage.i.i, align 8
  %cmp.not.i.i13.i52 = icmp eq ptr %34, %35
  br i1 %cmp.not.i.i13.i52, label %if.else.i.i16.i59, label %if.then.i.i14.i53

if.then.i.i14.i53:                                ; preds = %for.body.i43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %ref.tmp10.i17, i64 32, i1 false)
  %36 = load ptr, ptr %_M_finish.i.i11.i50, align 8
  %incdec.ptr.i.i15.i54 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %36, i64 1
  store ptr %incdec.ptr.i.i15.i54, ptr %_M_finish.i.i11.i50, align 8
  br label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i55

if.else.i.i16.i59:                                ; preds = %for.body.i43
  invoke void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %agg.result, ptr %34, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp10.i17)
          to label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i55 unwind label %lpad11.loopexit

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i55: ; preds = %if.else.i.i16.i59, %if.then.i.i14.i53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ref.tmp10.i17) #18
  %37 = load ptr, ptr %pool_, align 8
  %next.i56 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %37, i64 %conv.i.i45, i32 6
  %slot.0.i57 = load i32, ptr %next.i56, align 4
  %cmp.not.i58 = icmp eq i32 %slot.0.i57, -1
  br i1 %cmp.not.i58, label %for.inc13, label %for.body.i43, !llvm.loop !30

for.inc13:                                        ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_.exit.i55, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_.exit.i34, %for.body10
  %inc = add nuw i64 %i5.079, 1
  %38 = load ptr, ptr %_M_finish.i11, align 8
  %39 = load ptr, ptr %asks_, align 8
  %sub.ptr.lhs.cast.i12 = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast.i13 = ptrtoint ptr %39 to i64
  %sub.ptr.sub.i14 = sub i64 %sub.ptr.lhs.cast.i12, %sub.ptr.rhs.cast.i13
  %sub.ptr.div.i15 = sdiv exact i64 %sub.ptr.sub.i14, 24
  %cmp8 = icmp ult i64 %inc, %sub.ptr.div.i15
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9, !llvm.loop !32

lpad11.loopexit:                                  ; preds = %if.else.i.i16.i59
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

lpad11.loopexit.split-lp:                         ; preds = %if.else.i.i.i60
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %ehcleanup15

ehcleanup15:                                      ; preds = %lpad11.loopexit, %lpad11.loopexit.split-lp, %lpad3.loopexit, %lpad3.loopexit.split-lp, %lpad
  %.pn.pn = phi { ptr, i32 } [ %5, %lpad ], [ %lpad.loopexit69, %lpad3.loopexit ], [ %lpad.loopexit.split-lp70, %lpad3.loopexit.split-lp ], [ %lpad.loopexit, %lpad11.loopexit ], [ %lpad.loopexit.split-lp, %lpad11.loopexit.split-lp ]
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
  %cmp.i27.i = icmp eq ptr %0, %1
  br i1 %cmp.i27.i, label %cleanup18.i, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %lor.lhs.false
  %mask_.i.i.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 1
  %2 = load i64, ptr %mask_.i.i.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %for.body.lr.ph.i
  %occupied.029.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %occupied.219.i, %for.inc.i ]
  %__begin2.sroa.0.028.i = phi ptr [ %0, %for.body.lr.ph.i ], [ %incdec.ptr.i.i, %for.inc.i ]
  %3 = load i64, ptr %__begin2.sroa.0.028.i, align 8
  %tobool.not.i = icmp eq i64 %3, 0
  %slot12.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__begin2.sroa.0.028.i, i64 0, i32 1
  %4 = load i32, ptr %slot12.i, align 8
  %cmp13.not.i = icmp eq i32 %4, -1
  br i1 %tobool.not.i, label %cleanup.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  br i1 %cmp13.not.i, label %return, label %if.end.i.i

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
  %add.ptr.i10.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %and.i.i.i
  %5 = load i64, ptr %add.ptr.i10.i.i, align 8
  %tobool4.not11.i.i = icmp eq i64 %5, 0
  br i1 %tobool4.not11.i.i, label %_ZNK6ledger6detail7IdIndex4findEm.exit.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i, %if.end11.i.i
  %6 = phi i64 [ %8, %if.end11.i.i ], [ %5, %if.end.i.i ]
  %position.012.i.i = phi i64 [ %and.i.i, %if.end11.i.i ], [ %and.i.i.i, %if.end.i.i ]
  %cmp.i13.i = icmp eq i64 %6, %3
  br i1 %cmp.i13.i, label %if.then8.i.i, label %if.end11.i.i

if.then8.i.i:                                     ; preds = %while.body.i.i
  %slot.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %position.012.i.i, i32 1
  %7 = load i32, ptr %slot.i.i, align 8
  br label %_ZNK6ledger6detail7IdIndex4findEm.exit.i

if.end11.i.i:                                     ; preds = %while.body.i.i
  %add.i.i = add i64 %position.012.i.i, 1
  %and.i.i = and i64 %add.i.i, %2
  %add.ptr.i.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %and.i.i
  %8 = load i64, ptr %add.ptr.i.i.i, align 8
  %tobool4.not.i.i = icmp eq i64 %8, 0
  br i1 %tobool4.not.i.i, label %_ZNK6ledger6detail7IdIndex4findEm.exit.i, label %while.body.i.i, !llvm.loop !29

_ZNK6ledger6detail7IdIndex4findEm.exit.i:         ; preds = %if.end11.i.i, %if.then8.i.i, %if.end.i.i
  %retval.1.i.i = phi i32 [ %7, %if.then8.i.i ], [ -1, %if.end.i.i ], [ -1, %if.end11.i.i ]
  %cmp10.not.i = icmp eq i32 %retval.1.i.i, %4
  %inc.i = add i64 %occupied.029.i, 1
  br i1 %cmp10.not.i, label %for.inc.i, label %return

cleanup.i:                                        ; preds = %for.body.i
  br i1 %cmp13.not.i, label %for.inc.i, label %return

for.inc.i:                                        ; preds = %cleanup.i, %_ZNK6ledger6detail7IdIndex4findEm.exit.i
  %occupied.219.i = phi i64 [ %inc.i, %_ZNK6ledger6detail7IdIndex4findEm.exit.i ], [ %occupied.029.i, %cleanup.i ]
  %incdec.ptr.i.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__begin2.sroa.0.028.i, i64 1
  %cmp.i.i = icmp eq ptr %incdec.ptr.i.i, %1
  br i1 %cmp.i.i, label %cleanup18.i, label %for.body.i, !llvm.loop !33

cleanup18.i:                                      ; preds = %for.inc.i, %lor.lhs.false
  %occupied.0.lcssa.i = phi i64 [ 0, %lor.lhs.false ], [ %occupied.219.i, %for.inc.i ]
  %size_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 4, i32 2
  %9 = load i64, ptr %size_.i, align 8
  %cmp22.i = icmp eq i64 %occupied.0.lcssa.i, %9
  br i1 %cmp22.i, label %_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit, label %return

_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit: ; preds = %cleanup18.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %0 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 4
  %div10.i = lshr i64 %sub.ptr.div.i.i, 1
  %cmp25.i.not = icmp ule i64 %occupied.0.lcssa.i, %div10.i
  %size_.i83 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 2
  %10 = load i64, ptr %size_.i83, align 8
  %cmp.not = icmp eq i64 %10, %occupied.0.lcssa.i
  %or.cond357 = select i1 %cmp25.i.not, i1 %cmp.not, i1 false
  br i1 %or.cond357, label %if.end, label %return

if.end:                                           ; preds = %_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit
  %_M_finish.i.i85 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %_M_finish.i.i85, align 8
  %12 = load ptr, ptr %pool_, align 8
  %tobool.not.i.i = icmp eq ptr %11, %12
  %.pre = ptrtoint ptr %11 to i64
  %.pre346 = ptrtoint ptr %12 to i64
  %.pre347 = sub i64 %.pre, %.pre346
  %.pre348 = sdiv exact i64 %.pre347, 40
  br i1 %tobool.not.i.i, label %invoke.cont, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  %sub.i.i.i.i = add nsw i64 %.pre348, 63
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
  %seen.sroa.30231.0 = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ null, %if.end ]
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
  %best_ask_.i = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 10
  %best_bid_.val.i = load i64, ptr %best_bid_.i, align 8
  %best_ask_.val.i = load i64, ptr %best_ask_.i, align 8
  %_M_finish.i.i142 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 5, i32 0, i32 0, i32 0, i32 1
  %16 = load ptr, ptr %_M_finish.i.i142, align 8
  %17 = load ptr, ptr %bids_.i, align 8
  %sub.ptr.lhs.cast.i.i143 = ptrtoint ptr %16 to i64
  %sub.ptr.rhs.cast.i.i144 = ptrtoint ptr %17 to i64
  %sub.ptr.sub.i.i145 = sub i64 %sub.ptr.lhs.cast.i.i143, %sub.ptr.rhs.cast.i.i144
  %sub.ptr.div.i.i146 = sdiv exact i64 %sub.ptr.sub.i.i145, 24
  %sub.i = add nsw i64 %sub.ptr.div.i.i146, -1
  br label %for.body

for.cond:                                         ; preds = %if.end127
  %__begin1.0.add = add nuw nsw i64 %__begin1.0.idx320, 1
  %cmp15.not = icmp eq i64 %__begin1.0.add, 2
  br i1 %cmp15.not, label %for.end155, label %for.body, !llvm.loop !34

for.body:                                         ; preds = %invoke.cont, %for.cond
  %order_count.0322 = phi i64 [ 0, %invoke.cont ], [ %order_count.1.lcssa, %for.cond ]
  %total_quantity.0321 = phi i64 [ 0, %invoke.cont ], [ %total_quantity.1.lcssa, %for.cond ]
  %__begin1.0.idx320 = phi i64 [ 0, %invoke.cont ], [ %__begin1.0.add, %for.cond ]
  %__begin1.0.ptr = getelementptr inbounds i8, ptr %ref.tmp12, i64 %__begin1.0.idx320
  %18 = load i8, ptr %__begin1.0.ptr, align 1
  %cmp.i = icmp eq i8 %18, 0
  %cond-lvalue.i = select i1 %cmp.i, ptr %bids_.i, ptr %asks_.i
  %cond-lvalue.i91 = select i1 %cmp.i, ptr %bid_bitmap_.i, ptr %ask_bitmap_.i
  %_M_finish.i = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %cond-lvalue.i, i64 0, i32 1
  %19 = load ptr, ptr %_M_finish.i, align 8
  %20 = load ptr, ptr %cond-lvalue.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 24
  %cmp20313.not = icmp eq ptr %19, %20
  br i1 %cmp20313.not, label %for.end117, label %for.body22.lr.ph

for.body22.lr.ph:                                 ; preds = %for.body
  %21 = load ptr, ptr %cond-lvalue.i91, align 8
  %umax = tail call i64 @llvm.umax.i64(i64 %sub.ptr.div.i, i64 1)
  br label %for.body22

for.body22:                                       ; preds = %for.body22.lr.ph, %for.inc112
  %order_count.1316 = phi i64 [ %order_count.0322, %for.body22.lr.ph ], [ %add101, %for.inc112 ]
  %i.0315 = phi i64 [ 0, %for.body22.lr.ph ], [ %inc113, %for.inc112 ]
  %total_quantity.1314 = phi i64 [ %total_quantity.0321, %for.body22.lr.ph ], [ %add99, %for.inc112 ]
  %add.ptr.i92 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %20, i64 %i.0315
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %20, i64 %i.0315, i32 3
  %22 = load i32, ptr %orders, align 8
  %cmp24 = icmp ne i32 %22, 0
  %div73 = lshr i64 %i.0315, 6
  %add.ptr.i93 = getelementptr inbounds i64, ptr %21, i64 %div73
  %23 = load i64, ptr %add.ptr.i93, align 8
  %rem = and i64 %i.0315, 63
  %shl = shl nuw i64 1, %rem
  %and = and i64 %23, %shl
  %24 = icmp eq i64 %and, 0
  %cmp28.not = xor i1 %cmp24, %24
  br i1 %cmp28.not, label %for.cond31.preheader, label %cleanup144

for.cond31.preheader:                             ; preds = %for.body22
  %slot.0304 = load i32, ptr %add.ptr.i92, align 4
  %cmp32.not305 = icmp eq i32 %slot.0304, -1
  br i1 %cmp32.not305, label %for.end, label %for.body34.lr.ph

for.body34.lr.ph:                                 ; preds = %for.cond31.preheader
  %add.i = add nsw i64 %14, %i.0315
  br label %for.body34

for.body34:                                       ; preds = %for.body34.lr.ph, %for.inc
  %slot.0309 = phi i32 [ %slot.0304, %for.body34.lr.ph ], [ %slot.0, %for.inc ]
  %previous.0308 = phi i32 [ -1, %for.body34.lr.ph ], [ %slot.0309, %for.inc ]
  %count.0307 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc, %for.inc ]
  %quantity.0306 = phi i64 [ 0, %for.body34.lr.ph ], [ %add, %for.inc ]
  %conv35 = zext i32 %slot.0309 to i64
  %cmp38.not = icmp ugt i64 %.pre348, %conv35
  br i1 %cmp38.not, label %invoke.cont42, label %cleanup144

invoke.cont42:                                    ; preds = %for.body34
  %div.i.i.i.i.i99269270273 = lshr i32 %slot.0309, 6
  %div.i.i.i.i.i99269.zext = zext nneg i32 %div.i.i.i.i.i99269270273 to i64
  %add.ptr.i.i.i.i.i100 = getelementptr inbounds i64, ptr %seen.sroa.0.0, i64 %div.i.i.i.i.i99269.zext
  %rem.i.i.i.i.i101271272 = and i32 %slot.0309, 63
  %rem.i.i.i.i.i101271.zext = zext nneg i32 %rem.i.i.i.i.i101271272 to i64
  %shl.i.i.i = shl nuw i64 1, %rem.i.i.i.i.i101271.zext
  %25 = load i64, ptr %add.ptr.i.i.i.i.i100, align 8
  %and.i = and i64 %25, %shl.i.i.i
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end46, label %cleanup144

if.end46:                                         ; preds = %invoke.cont42
  %add.ptr.i.i105 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 7
  %26 = load i8, ptr %live, align 8, !range !15, !noundef !16
  %tobool.not = icmp eq i8 %26, 0
  %27 = load i64, ptr %add.ptr.i.i105, align 8
  %tobool50.not = icmp eq i64 %27, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool50.not
  br i1 %or.cond, label %cleanup144, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %if.end46
  %quantity52 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 2
  %28 = load i32, ptr %quantity52, align 8
  %tobool53.not = icmp ne i32 %28, 0
  %side55 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 3
  %29 = load i8, ptr %side55, align 4
  %cmp56.not = icmp eq i8 %29, %18
  %or.cond78 = select i1 %tobool53.not, i1 %cmp56.not, i1 false
  br i1 %or.cond78, label %lor.lhs.false57, label %cleanup144

lor.lhs.false57:                                  ; preds = %lor.lhs.false51
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 1
  %30 = load i64, ptr %price, align 8
  %cmp59.not = icmp eq i64 %30, %add.i
  %previous61 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 5
  %31 = load i32, ptr %previous61, align 8
  %cmp62.not = icmp eq i32 %31, %previous.0308
  %or.cond79 = select i1 %cmp59.not, i1 %cmp62.not, i1 false
  br i1 %or.cond79, label %if.end.i, label %cleanup144

if.end.i:                                         ; preds = %lor.lhs.false57
  %shr.i.i = lshr i64 %27, 30
  %xor.i.i = xor i64 %shr.i.i, %27
  %mul.i.i = mul i64 %xor.i.i, -4658895280553007687
  %shr2.i.i = lshr i64 %mul.i.i, 27
  %xor3.i.i = xor i64 %shr2.i.i, %mul.i.i
  %mul4.i.i = mul i64 %xor3.i.i, -7723592293110705685
  %shr5.i.i = lshr i64 %mul4.i.i, 31
  %xor6.i.i = xor i64 %shr5.i.i, %mul4.i.i
  %and.i.i107 = and i64 %15, %xor6.i.i
  %add.ptr.i10.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %and.i.i107
  %32 = load i64, ptr %add.ptr.i10.i, align 8
  %tobool4.not11.i = icmp eq i64 %32, 0
  br i1 %tobool4.not11.i, label %cleanup144, label %while.body.i

while.body.i:                                     ; preds = %if.end.i, %if.end11.i
  %33 = phi i64 [ %35, %if.end11.i ], [ %32, %if.end.i ]
  %position.012.i = phi i64 [ %and.i110, %if.end11.i ], [ %and.i.i107, %if.end.i ]
  %cmp.i108 = icmp eq i64 %33, %27
  br i1 %cmp.i108, label %if.then8.i, label %if.end11.i

if.then8.i:                                       ; preds = %while.body.i
  %slot.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %position.012.i, i32 1
  %34 = load i32, ptr %slot.i, align 8
  br label %_ZNK6ledger6detail7IdIndex4findEm.exit

if.end11.i:                                       ; preds = %while.body.i
  %add.i109 = add i64 %position.012.i, 1
  %and.i110 = and i64 %add.i109, %15
  %add.ptr.i.i111 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %and.i110
  %35 = load i64, ptr %add.ptr.i.i111, align 8
  %tobool4.not.i = icmp eq i64 %35, 0
  br i1 %tobool4.not.i, label %_ZNK6ledger6detail7IdIndex4findEm.exit, label %while.body.i, !llvm.loop !29

_ZNK6ledger6detail7IdIndex4findEm.exit:           ; preds = %if.end11.i, %if.then8.i
  %retval.1.i = phi i32 [ %34, %if.then8.i ], [ -1, %if.end11.i ]
  %cmp67.not = icmp eq i32 %retval.1.i, %slot.0309
  br i1 %cmp67.not, label %for.inc, label %cleanup144

for.inc:                                          ; preds = %_ZNK6ledger6detail7IdIndex4findEm.exit
  %or.i = or i64 %25, %shl.i.i.i
  store i64 %or.i, ptr %add.ptr.i.i.i.i.i100, align 8
  %36 = load i32, ptr %quantity52, align 8
  %conv77 = zext i32 %36 to i64
  %add = add i64 %quantity.0306, %conv77
  %inc = add i32 %count.0307, 1
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv35, i32 6
  %slot.0 = load i32, ptr %next, align 4
  %cmp32.not = icmp eq i32 %slot.0, -1
  br i1 %cmp32.not, label %for.end, label %for.body34, !llvm.loop !35

for.end:                                          ; preds = %for.inc, %for.cond31.preheader
  %quantity.0290 = phi i64 [ 0, %for.cond31.preheader ], [ %add, %for.inc ]
  %count.0287 = phi i32 [ 0, %for.cond31.preheader ], [ %inc, %for.inc ]
  %previous.0284 = phi i32 [ -1, %for.cond31.preheader ], [ %slot.0309, %for.inc ]
  %37 = load i32, ptr %orders, align 8
  %cmp83.not = icmp eq i32 %count.0287, %37
  %quantity85 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %20, i64 %i.0315, i32 2
  %38 = load i64, ptr %quantity85, align 8
  %cmp86.not = icmp eq i64 %quantity.0290, %38
  %or.cond80 = select i1 %cmp83.not, i1 %cmp86.not, i1 false
  br i1 %or.cond80, label %lor.lhs.false87, label %cleanup144

lor.lhs.false87:                                  ; preds = %for.end
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %20, i64 %i.0315, i32 1
  %39 = load i32, ptr %tail, align 4
  %cmp88.not = icmp eq i32 %previous.0284, %39
  br i1 %cmp88.not, label %if.end90, label %cleanup144

if.end90:                                         ; preds = %lor.lhs.false87
  %tobool91.not = icmp eq i32 %count.0287, 0
  br i1 %tobool91.not, label %land.lhs.true, label %for.inc112

land.lhs.true:                                    ; preds = %if.end90
  %40 = load i32, ptr %add.ptr.i92, align 8
  %41 = and i32 %40, %previous.0284
  %or.cond81 = icmp eq i32 %41, -1
  br i1 %or.cond81, label %for.inc112, label %cleanup144

for.inc112:                                       ; preds = %land.lhs.true, %if.end90
  %add99 = add i64 %quantity.0290, %total_quantity.1314
  %conv100 = zext i32 %count.0287 to i64
  %add101 = add i64 %order_count.1316, %conv100
  %inc113 = add nuw i64 %i.0315, 1
  %exitcond.not = icmp eq i64 %inc113, %umax
  br i1 %exitcond.not, label %for.end117, label %for.body22, !llvm.loop !36

for.end117:                                       ; preds = %for.inc112, %for.body
  %total_quantity.1.lcssa = phi i64 [ %total_quantity.0321, %for.body ], [ %add99, %for.inc112 ]
  %order_count.1.lcssa = phi i64 [ %order_count.0322, %for.body ], [ %add101, %for.inc112 ]
  %rem119 = and i64 %sub.ptr.div.i, 63
  %tobool120.not = icmp eq i64 %rem119, 0
  br i1 %tobool120.not, label %if.end127, label %land.lhs.true121

land.lhs.true121:                                 ; preds = %for.end117
  %_M_finish.i.i131 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %cond-lvalue.i91, i64 0, i32 1
  %42 = load ptr, ptr %_M_finish.i.i131, align 8
  %add.ptr.i.i132 = getelementptr inbounds i64, ptr %42, i64 -1
  %43 = load i64, ptr %add.ptr.i.i132, align 8
  %shr = lshr i64 %43, %rem119
  %cmp125.not = icmp eq i64 %shr, 0
  br i1 %cmp125.not, label %if.end127, label %cleanup144

if.end127:                                        ; preds = %land.lhs.true121, %for.end117
  %cond.i = select i1 %cmp.i, i64 %best_bid_.val.i, i64 %best_ask_.val.i
  %spec.select = select i1 %cmp.i, i64 %sub.i, i64 0
  %call2.i = tail call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %18, i64 noundef %spec.select) #18
  %cmp130.not = icmp eq i64 %cond.i, %call2.i
  br i1 %cmp130.not, label %for.cond, label %cleanup144

cleanup144:                                       ; preds = %land.lhs.true121, %if.end127, %for.body22, %lor.lhs.false87, %for.end, %land.lhs.true, %_ZNK6ledger6detail7IdIndex4findEm.exit, %if.end.i, %if.end46, %lor.lhs.false51, %lor.lhs.false57, %invoke.cont42, %for.body34
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ref.tmp12) #18
  br label %cleanup263

for.end155:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ref.tmp12) #18
  br i1 %cmp.i27.i, label %for.cond211.preheader, label %for.body167

for.cond211.preheader:                            ; preds = %if.end195, %for.end155
  br i1 %tobool.not.i.i, label %for.end238, label %invoke.cont225.preheader

invoke.cont225.preheader:                         ; preds = %for.cond211.preheader
  %umax344 = tail call i64 @llvm.umax.i64(i64 %.pre348, i64 1)
  br label %invoke.cont225

for.body167:                                      ; preds = %for.end155, %if.end195
  %__begin1159.sroa.0.0324 = phi ptr [ %incdec.ptr.i, %if.end195 ], [ %0, %for.end155 ]
  %44 = load i64, ptr %__begin1159.sroa.0.0324, align 8
  %tobool171.not = icmp eq i64 %44, 0
  br i1 %tobool171.not, label %if.end195, label %land.rhs

land.rhs:                                         ; preds = %for.body167
  %slot172 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__begin1159.sroa.0.0324, i64 0, i32 1
  %45 = load i32, ptr %slot172, align 8
  %conv173 = zext i32 %45 to i64
  %cmp176.not = icmp ugt i64 %.pre348, %conv173
  br i1 %cmp176.not, label %invoke.cont182, label %cleanup263

invoke.cont182:                                   ; preds = %land.rhs
  %div.i.i.i.i.i154265266274 = lshr i32 %45, 6
  %div.i.i.i.i.i154265.zext = zext nneg i32 %div.i.i.i.i.i154265266274 to i64
  %add.ptr.i.i.i.i.i155 = getelementptr inbounds i64, ptr %seen.sroa.0.0, i64 %div.i.i.i.i.i154265.zext
  %rem.i.i.i.i.i156267268 = and i32 %45, 63
  %rem.i.i.i.i.i156267.zext = zext nneg i32 %rem.i.i.i.i.i156267268 to i64
  %shl.i.i.i160 = shl nuw i64 1, %rem.i.i.i.i.i156267.zext
  %46 = load i64, ptr %add.ptr.i.i.i.i.i155, align 8
  %and.i164 = and i64 %46, %shl.i.i.i160
  %tobool.i165.not = icmp eq i64 %and.i164, 0
  br i1 %tobool.i165.not, label %if.then.i.i189, label %lor.rhs185

lor.rhs185:                                       ; preds = %invoke.cont182
  %add.ptr.i.i167 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv173
  %47 = load i64, ptr %add.ptr.i.i167, align 8
  %cmp191.not = icmp eq i64 %47, %44
  br i1 %cmp191.not, label %if.end195, label %if.then.i.i189

if.end195:                                        ; preds = %for.body167, %lor.rhs185
  %incdec.ptr.i = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__begin1159.sroa.0.0324, i64 1
  %cmp.i148 = icmp eq ptr %incdec.ptr.i, %1
  br i1 %cmp.i148, label %for.cond211.preheader, label %for.body167, !llvm.loop !37

for.cond211:                                      ; preds = %invoke.cont225
  %inc234 = add nuw i64 %i210.0326, 1
  %exitcond345.not = icmp eq i64 %inc234, %umax344
  br i1 %exitcond345.not, label %for.end238, label %invoke.cont225, !llvm.loop !38

invoke.cont225:                                   ; preds = %invoke.cont225.preheader, %for.cond211
  %i210.0326 = phi i64 [ %inc234, %for.cond211 ], [ 0, %invoke.cont225.preheader ]
  %conv.i173 = and i64 %i210.0326, 4294967295
  %live220 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %12, i64 %conv.i173, i32 7
  %48 = load i8, ptr %live220, align 8, !range !15, !noundef !16
  %div.i.i.i.i.i175 = sdiv i64 %i210.0326, 64
  %add.ptr.i.i.i.i.i176 = getelementptr inbounds i64, ptr %seen.sroa.0.0, i64 %div.i.i.i.i.i175
  %rem.i.i.i.i.i177 = srem i64 %i210.0326, 64
  %rem.lobit.i.i.i.i.i178 = ashr i64 %rem.i.i.i.i.i177, 63
  %storemerge.i.i.i.i.i179 = getelementptr inbounds i64, ptr %add.ptr.i.i.i.i.i176, i64 %rem.lobit.i.i.i.i.i178
  %conv4.i.i.i.i.i180 = and i64 %rem.i.i.i.i.i177, 63
  %shl.i.i.i181 = shl nuw i64 1, %conv4.i.i.i.i.i180
  %49 = load i64, ptr %storemerge.i.i.i.i.i179, align 8
  %and.i185 = and i64 %49, %shl.i.i.i181
  %tobool.i186 = icmp ne i64 %and.i185, 0
  %50 = zext i1 %tobool.i186 to i8
  %cmp229.not = icmp eq i8 %48, %50
  br i1 %cmp229.not, label %for.cond211, label %if.then.i.i189

for.end238:                                       ; preds = %for.cond211, %for.cond211.preheader
  %cmp241.not = icmp eq i64 %order_count.1.lcssa, %occupied.0.lcssa.i
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 11
  %51 = load i64, ptr %resting_quantity_, align 8
  %cmp243.not = icmp eq i64 %total_quantity.1.lcssa, %51
  %or.cond358 = select i1 %cmp241.not, i1 %cmp243.not, i1 false
  br i1 %or.cond358, label %if.end245, label %cleanup263

if.end245:                                        ; preds = %for.end238
  %cmp246.not = icmp eq i64 %best_bid_.val.i, -1
  %cmp252.not = icmp ult i64 %best_bid_.val.i, %best_ask_.val.i
  %or.cond275 = select i1 %cmp246.not, i1 true, i1 %cmp252.not
  br i1 %or.cond275, label %if.end254, label %cleanup263

if.end254:                                        ; preds = %if.end245
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12
  %52 = load i64, ptr %statistics_, align 8
  %executed = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 1
  %53 = load i64, ptr %executed, align 8
  %mul = shl i64 %53, 1
  %cancelled = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 2
  %54 = load i64, ptr %cancelled, align 8
  %expired = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i64 0, i32 12, i32 3
  %55 = load i64, ptr %expired, align 8
  %add257 = add i64 %54, %total_quantity.1.lcssa
  %add259 = add i64 %add257, %mul
  %add261 = add i64 %add259, %55
  %cmp262 = icmp eq i64 %52, %add261
  br label %cleanup263

cleanup263:                                       ; preds = %land.rhs, %if.end245, %cleanup144, %for.end238, %if.end254
  %retval.14 = phi i1 [ %cmp262, %if.end254 ], [ false, %cleanup144 ], [ false, %for.end238 ], [ false, %if.end245 ], [ false, %land.rhs ]
  %tobool.not.i.i188 = icmp eq ptr %seen.sroa.0.0, null
  br i1 %tobool.not.i.i188, label %return, label %if.then.i.i189

if.then.i.i189:                                   ; preds = %invoke.cont182, %lor.rhs185, %invoke.cont225, %cleanup263
  %retval.14263 = phi i1 [ %retval.14, %cleanup263 ], [ false, %invoke.cont225 ], [ false, %lor.rhs185 ], [ false, %invoke.cont182 ]
  %sub.ptr.lhs.cast.i.i190 = ptrtoint ptr %seen.sroa.30231.0 to i64
  %sub.ptr.rhs.cast.i.i191 = ptrtoint ptr %seen.sroa.0.0 to i64
  %sub.ptr.sub.i.i192 = sub i64 %sub.ptr.lhs.cast.i.i190, %sub.ptr.rhs.cast.i.i191
  %sub.ptr.div.i.i193 = ashr exact i64 %sub.ptr.sub.i.i192, 3
  %idx.neg.i.i = sub nsw i64 0, %sub.ptr.div.i.i193
  %add.ptr.i.i194 = getelementptr inbounds i64, ptr %seen.sroa.30231.0, i64 %idx.neg.i.i
  tail call void @_ZdlPv(ptr noundef %add.ptr.i.i194) #21
  br label %return

return:                                           ; preds = %_ZNK6ledger6detail7IdIndex4findEm.exit.i, %if.then.i, %cleanup.i, %cleanup18.i, %if.then.i.i189, %cleanup263, %entry, %_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit
  %retval.15 = phi i1 [ false, %_ZNK6ledger6detail7IdIndex16check_invariantsEv.exit ], [ false, %entry ], [ %retval.14, %cleanup263 ], [ %retval.14263, %if.then.i.i189 ], [ false, %cleanup18.i ], [ false, %cleanup.i ], [ false, %if.then.i ], [ false, %_ZNK6ledger6detail7IdIndex4findEm.exit.i ]
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
  %free.sroa.30113.0 = phi ptr [ null, %entry ], [ %add.ptr.i.i, %if.then.i.i ]
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i64 0, i32 1
  %slot.0130 = load i32, ptr %free_head_, align 8
  %cmp.not131 = icmp eq i32 %slot.0130, -1
  %.pre = ptrtoint ptr %0 to i64
  %.pre140 = ptrtoint ptr %1 to i64
  %.pre141 = sub i64 %.pre, %.pre140
  %.pre142 = sdiv exact i64 %.pre141, 40
  br i1 %cmp.not131, label %for.cond24.preheader, label %for.body

for.cond24.preheader:                             ; preds = %invoke.cont18, %invoke.cont
  %free_count.0.lcssa = phi i64 [ 0, %invoke.cont ], [ %inc, %invoke.cont18 ]
  br i1 %tobool.not.i.i, label %for.end58, label %for.body29.preheader

for.body29.preheader:                             ; preds = %for.cond24.preheader
  %umax = tail call i64 @llvm.umax.i64(i64 %.pre142, i64 1)
  br label %for.body29

for.body:                                         ; preds = %invoke.cont, %invoke.cont18
  %slot.0133 = phi i32 [ %slot.0, %invoke.cont18 ], [ %slot.0130, %invoke.cont ]
  %free_count.0132 = phi i64 [ %inc, %invoke.cont18 ], [ 0, %invoke.cont ]
  %conv = zext i32 %slot.0133 to i64
  %cmp5.not = icmp ugt i64 %.pre142, %conv
  br i1 %cmp5.not, label %invoke.cont9, label %cleanup65

invoke.cont9:                                     ; preds = %for.body
  %div.i.i.i.i.i25120121124 = lshr i32 %slot.0133, 6
  %div.i.i.i.i.i25120.zext = zext nneg i32 %div.i.i.i.i.i25120121124 to i64
  %add.ptr.i.i.i.i.i26 = getelementptr inbounds i64, ptr %free.sroa.0.0, i64 %div.i.i.i.i.i25120.zext
  %rem.i.i.i.i.i27122123 = and i32 %slot.0133, 63
  %rem.i.i.i.i.i27122.zext = zext nneg i32 %rem.i.i.i.i.i27122123 to i64
  %shl.i.i.i = shl nuw i64 1, %rem.i.i.i.i.i27122.zext
  %3 = load i64, ptr %add.ptr.i.i.i.i.i26, align 8
  %and.i = and i64 %3, %shl.i.i.i
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %lor.rhs, label %if.then.i.i78

lor.rhs:                                          ; preds = %invoke.cont9
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %conv, i32 7
  %4 = load i8, ptr %live, align 8, !range !15, !noundef !16
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %invoke.cont18, label %if.then.i.i78

invoke.cont18:                                    ; preds = %lor.rhs
  %or.i = or i64 %3, %shl.i.i.i
  store i64 %or.i, ptr %add.ptr.i.i.i.i.i26, align 8
  %inc = add i64 %free_count.0132, 1
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %conv, i32 6
  %slot.0 = load i32, ptr %next, align 4
  %cmp.not = icmp eq i32 %slot.0, -1
  br i1 %cmp.not, label %for.cond24.preheader, label %for.body, !llvm.loop !39

for.body29:                                       ; preds = %for.body29.preheader, %for.inc53
  %i.0136 = phi i64 [ %inc54, %for.inc53 ], [ 0, %for.body29.preheader ]
  %live_count.0135 = phi i64 [ %live_count.1, %for.inc53 ], [ 0, %for.body29.preheader ]
  %live32 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %i.0136, i32 7
  %5 = load i8, ptr %live32, align 8, !range !15, !noundef !16
  %tobool33.not = icmp eq i8 %5, 0
  %div.i.i.i.i.i60 = sdiv i64 %i.0136, 64
  %add.ptr.i.i.i.i.i61 = getelementptr inbounds i64, ptr %free.sroa.0.0, i64 %div.i.i.i.i.i60
  %rem.i.i.i.i.i62 = srem i64 %i.0136, 64
  %rem.lobit.i.i.i.i.i63 = ashr i64 %rem.i.i.i.i.i62, 63
  %storemerge.i.i.i.i.i64 = getelementptr inbounds i64, ptr %add.ptr.i.i.i.i.i61, i64 %rem.lobit.i.i.i.i.i63
  %conv4.i.i.i.i.i65 = and i64 %rem.i.i.i.i.i62, 63
  %shl.i.i.i66 = shl nuw i64 1, %conv4.i.i.i.i.i65
  %6 = load i64, ptr %storemerge.i.i.i.i.i64, align 8
  %and.i70 = and i64 %6, %shl.i.i.i66
  %tobool.i71.not = icmp eq i64 %and.i70, 0
  br i1 %tobool33.not, label %invoke.cont46, label %invoke.cont37

invoke.cont37:                                    ; preds = %for.body29
  br i1 %tobool.i71.not, label %if.end42, label %if.then.i.i78

if.end42:                                         ; preds = %invoke.cont37
  %inc43 = add i64 %live_count.0135, 1
  br label %for.inc53

invoke.cont46:                                    ; preds = %for.body29
  br i1 %tobool.i71.not, label %if.then.i.i78, label %for.inc53

for.inc53:                                        ; preds = %if.end42, %invoke.cont46
  %live_count.1 = phi i64 [ %inc43, %if.end42 ], [ %live_count.0135, %invoke.cont46 ]
  %inc54 = add nuw i64 %i.0136, 1
  %exitcond.not = icmp eq i64 %inc54, %umax
  br i1 %exitcond.not, label %for.end58, label %for.body29, !llvm.loop !40

for.end58:                                        ; preds = %for.inc53, %for.cond24.preheader
  %live_count.0.lcssa = phi i64 [ 0, %for.cond24.preheader ], [ %live_count.1, %for.inc53 ]
  %size_.old = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i64 0, i32 2
  %.old = load i64, ptr %size_.old, align 8
  %cmp59.old = icmp eq i64 %live_count.0.lcssa, %.old
  br i1 %cmp59.old, label %land.rhs, label %cleanup65

land.rhs:                                         ; preds = %for.end58
  %add = add i64 %live_count.0.lcssa, %free_count.0.lcssa
  %cmp62 = icmp eq i64 %add, %.pre142
  br label %cleanup65

cleanup65:                                        ; preds = %for.body, %land.rhs, %for.end58
  %retval.3 = phi i1 [ false, %for.end58 ], [ %cmp62, %land.rhs ], [ false, %for.body ]
  %tobool.not.i.i77 = icmp eq ptr %free.sroa.0.0, null
  br i1 %tobool.not.i.i77, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %if.then.i.i78

if.then.i.i78:                                    ; preds = %invoke.cont9, %lor.rhs, %invoke.cont37, %invoke.cont46, %cleanup65
  %retval.3118 = phi i1 [ %retval.3, %cleanup65 ], [ false, %invoke.cont46 ], [ false, %invoke.cont37 ], [ false, %lor.rhs ], [ false, %invoke.cont9 ]
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %free.sroa.30113.0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %free.sroa.0.0 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 3
  %idx.neg.i.i = sub nsw i64 0, %sub.ptr.div.i.i
  %add.ptr.i.i79 = getelementptr inbounds i64, ptr %free.sroa.30113.0, i64 %idx.neg.i.i
  tail call void @_ZdlPv(ptr noundef %add.ptr.i.i79) #21
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %cleanup65, %if.then.i.i78
  %retval.3119 = phi i1 [ %retval.3, %cleanup65 ], [ %retval.3118, %if.then.i.i78 ]
  ret i1 %retval.3119
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
  %cond.i10 = phi ptr [ %call5.i.i, %cond.true.i ], [ null, %_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc.exit ]
  %add.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %cond.i10, i64 %sub.ptr.div.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %add.ptr, ptr noundef nonnull align 8 dereferenceable(32) %__args, i64 32, i1 false)
  %cmp.not5.i.i.i = icmp eq ptr %1, %__position.coerce
  br i1 %cmp.not5.i.i.i, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit, %for.body.i.i.i
  %__cur.07.i.i.i = phi ptr [ %incdec.ptr1.i.i.i, %for.body.i.i.i ], [ %cond.i10, %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit ]
  %__first.addr.06.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %__cur.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %__first.addr.06.i.i.i, i64 32, i1 false), !alias.scope !41
  %incdec.ptr.i.i.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__first.addr.06.i.i.i, i64 1
  %incdec.ptr1.i.i.i = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__cur.07.i.i.i, i64 1
  %cmp.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %__position.coerce
  br i1 %cmp.not.i.i.i, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %for.body.i.i.i, !llvm.loop !45

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %for.body.i.i.i, %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit
  %__cur.0.lcssa.i.i.i = phi ptr [ %cond.i10, %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm.exit ], [ %incdec.ptr1.i.i.i, %for.body.i.i.i ]
  %incdec.ptr = getelementptr %"struct.ledger::LevelSnapshot", ptr %__cur.0.lcssa.i.i.i, i64 1
  %cmp.not5.i.i.i11 = icmp eq ptr %0, %__position.coerce
  br i1 %cmp.not5.i.i.i11, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19, label %for.body.i.i.i12

for.body.i.i.i12:                                 ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %for.body.i.i.i12
  %__cur.07.i.i.i13 = phi ptr [ %incdec.ptr1.i.i.i16, %for.body.i.i.i12 ], [ %incdec.ptr, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ]
  %__first.addr.06.i.i.i14 = phi ptr [ %incdec.ptr.i.i.i15, %for.body.i.i.i12 ], [ %__position.coerce, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %__cur.07.i.i.i13, ptr noundef nonnull align 8 dereferenceable(32) %__first.addr.06.i.i.i14, i64 32, i1 false), !alias.scope !46
  %incdec.ptr.i.i.i15 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__first.addr.06.i.i.i14, i64 1
  %incdec.ptr1.i.i.i16 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__cur.07.i.i.i13, i64 1
  %cmp.not.i.i.i17 = icmp eq ptr %incdec.ptr.i.i.i15, %0
  br i1 %cmp.not.i.i.i17, label %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19, label %for.body.i.i.i12, !llvm.loop !45

_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19: ; preds = %for.body.i.i.i12, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %__cur.0.lcssa.i.i.i18 = phi ptr [ %incdec.ptr, %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %incdec.ptr1.i.i.i16, %for.body.i.i.i12 ]
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m.exit, label %if.then.i20

if.then.i20:                                      ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19
  tail call void @_ZdlPv(ptr noundef nonnull %1) #21
  br label %_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19, %if.then.i20
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this, i64 0, i32 2
  store ptr %cond.i10, ptr %this, align 8
  store ptr %__cur.0.lcssa.i.i.i18, ptr %_M_finish.i.i, align 8
  %add.ptr19 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %cond.i10, i64 %cond.i
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
  %cond.i10 = phi ptr [ %call5.i.i, %cond.true.i ], [ null, %_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc.exit ]
  %add.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %cond.i10, i64 %sub.ptr.div.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %add.ptr, ptr noundef nonnull align 8 dereferenceable(32) %__args, i64 32, i1 false)
  %cmp.not5.i.i.i = icmp eq ptr %1, %__position.coerce
  br i1 %cmp.not5.i.i.i, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit, %for.body.i.i.i
  %__cur.07.i.i.i = phi ptr [ %incdec.ptr1.i.i.i, %for.body.i.i.i ], [ %cond.i10, %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit ]
  %__first.addr.06.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.body.i.i.i ], [ %1, %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %__cur.07.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %__first.addr.06.i.i.i, i64 32, i1 false), !alias.scope !50
  %incdec.ptr.i.i.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__first.addr.06.i.i.i, i64 1
  %incdec.ptr1.i.i.i = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__cur.07.i.i.i, i64 1
  %cmp.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, %__position.coerce
  br i1 %cmp.not.i.i.i, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %for.body.i.i.i, !llvm.loop !54

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %for.body.i.i.i, %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit
  %__cur.0.lcssa.i.i.i = phi ptr [ %cond.i10, %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm.exit ], [ %incdec.ptr1.i.i.i, %for.body.i.i.i ]
  %incdec.ptr = getelementptr %"struct.ledger::RestingOrder", ptr %__cur.0.lcssa.i.i.i, i64 1
  %cmp.not5.i.i.i11 = icmp eq ptr %0, %__position.coerce
  br i1 %cmp.not5.i.i.i11, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19, label %for.body.i.i.i12

for.body.i.i.i12:                                 ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %for.body.i.i.i12
  %__cur.07.i.i.i13 = phi ptr [ %incdec.ptr1.i.i.i16, %for.body.i.i.i12 ], [ %incdec.ptr, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ]
  %__first.addr.06.i.i.i14 = phi ptr [ %incdec.ptr.i.i.i15, %for.body.i.i.i12 ], [ %__position.coerce, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %__cur.07.i.i.i13, ptr noundef nonnull align 8 dereferenceable(32) %__first.addr.06.i.i.i14, i64 32, i1 false), !alias.scope !55
  %incdec.ptr.i.i.i15 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__first.addr.06.i.i.i14, i64 1
  %incdec.ptr1.i.i.i16 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__cur.07.i.i.i13, i64 1
  %cmp.not.i.i.i17 = icmp eq ptr %incdec.ptr.i.i.i15, %0
  br i1 %cmp.not.i.i.i17, label %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19, label %for.body.i.i.i12, !llvm.loop !54

_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19: ; preds = %for.body.i.i.i12, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %__cur.0.lcssa.i.i.i18 = phi ptr [ %incdec.ptr, %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %incdec.ptr1.i.i.i16, %for.body.i.i.i12 ]
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit, label %if.then.i20

if.then.i20:                                      ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19
  tail call void @_ZdlPv(ptr noundef nonnull %1) #21
  br label %_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit19, %if.then.i20
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this, i64 0, i32 2
  store ptr %cond.i10, ptr %this, align 8
  store ptr %__cur.0.lcssa.i.i.i18, ptr %_M_finish.i.i, align 8
  %add.ptr19 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %cond.i10, i64 %cond.i
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
