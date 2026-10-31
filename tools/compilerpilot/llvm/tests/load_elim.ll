; This is intentionally unoptimized IR: the plugin alone performs the checked
; rewrites. FileCheck's label scopes also ensure protected reads remain present.
target triple = "x86_64-unknown-linux-gnu"

declare void @touch(ptr)
declare void @observe(ptr) memory(read)
declare void @pure() memory(none)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture)

; CHECK-LABEL: define i32 @adjacent(
; CHECK: %a = load i32, ptr %p
; CHECK-NOT: load
; CHECK: %sum = add i32 %a, %a
define i32 @adjacent(ptr %p) {
  %a = load i32, ptr %p
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @three_reads(
; CHECK: %a = load i32, ptr %p
; CHECK-NOT: load
; CHECK: %sum = add i32 %a, %a
; CHECK: %sum2 = add i32 %sum, %a
define i32 @three_reads(ptr %p) {
  %a = load i32, ptr %p
  %b = load i32, ptr %p
  %c = load i32, ptr %p
  %sum = add i32 %a, %b
  %sum2 = add i32 %sum, %c
  ret i32 %sum2
}

; CHECK-LABEL: define i32 @noalias_store(
; CHECK: %a = load i32, ptr %p
; CHECK: store i32 %value, ptr %q
; CHECK-NOT: load
; CHECK: %sum = add i32 %a, %a
define i32 @noalias_store(ptr noalias %p, ptr noalias %q, i32 %value) {
  %a = load i32, ptr %p
  store i32 %value, ptr %q
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @mayalias_store(
; CHECK: %a = load i32, ptr %p
; CHECK: store i32 %value, ptr %q
; CHECK: %b = load i32, ptr %p
define i32 @mayalias_store(ptr %p, ptr %q, i32 %value) {
  %a = load i32, ptr %p
  store i32 %value, ptr %q
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @samepointer_store(
; CHECK: %a = load i32, ptr %p
; CHECK: store i32 %value, ptr %p
; CHECK: %b = load i32, ptr %p
define i32 @samepointer_store(ptr %p, i32 %value) {
  %a = load i32, ptr %p
  store i32 %value, ptr %p
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @call_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: call void @touch(ptr %q)
; CHECK: %b = load i32, ptr %p
define i32 @call_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  call void @touch(ptr %q)
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @readonly_call_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: call void @observe(ptr %q)
; CHECK: %b = load i32, ptr %p
define i32 @readonly_call_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  call void @observe(ptr %q)
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @readnone_call_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: call void @pure()
; CHECK: %b = load i32, ptr %p
define i32 @readnone_call_barrier(ptr %p) {
  %a = load i32, ptr %p
  call void @pure()
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @volatile_load_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: load volatile i32, ptr %q
; CHECK: %b = load i32, ptr %p
define i32 @volatile_load_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  %v = load volatile i32, ptr %q
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @volatile_store_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: store volatile i32 3, ptr %q
; CHECK: %b = load i32, ptr %p
define i32 @volatile_store_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  store volatile i32 3, ptr %q
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @atomic_load_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: load atomic i32, ptr %q monotonic
; CHECK: %b = load i32, ptr %p
define i32 @atomic_load_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  %v = load atomic i32, ptr %q monotonic, align 4
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @atomic_store_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: store atomic i32 3, ptr %q monotonic
; CHECK: %b = load i32, ptr %p
define i32 @atomic_store_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  store atomic i32 3, ptr %q monotonic, align 4
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @fence_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: fence acquire
; CHECK: %b = load i32, ptr %p
define i32 @fence_barrier(ptr %p) {
  %a = load i32, ptr %p
  fence acquire
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @rmw_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: atomicrmw add ptr %q, i32 1 monotonic
; CHECK: %b = load i32, ptr %p
define i32 @rmw_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  %v = atomicrmw add ptr %q, i32 1 monotonic
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @cmpxchg_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: cmpxchg ptr %q, i32 0, i32 1 monotonic monotonic
; CHECK: %b = load i32, ptr %p
define i32 @cmpxchg_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  %v = cmpxchg ptr %q, i32 0, i32 1 monotonic monotonic
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @lifetime_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: call void @llvm.lifetime.start.p0(i64 4, ptr %q)
; CHECK: %b = load i32, ptr %p
define i32 @lifetime_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  call void @llvm.lifetime.start.p0(i64 4, ptr %q)
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @cross_block(
; CHECK: %a = load i32, ptr %p
; CHECK: next:
; CHECK: %b = load i32, ptr %p
define i32 @cross_block(ptr %p) {
  %a = load i32, ptr %p
  br label %next
next:
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @different_pointer(
; CHECK: %a = load i32, ptr %p
; CHECK: %b = load i32, ptr %q
define i32 @different_pointer(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  %b = load i32, ptr %q
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @different_type(
; CHECK: %a = load i32, ptr %p
; CHECK: %b = load i16, ptr %p
define i32 @different_type(ptr %p) {
  %a = load i32, ptr %p
  %b = load i16, ptr %p
  %wide = zext i16 %b to i32
  %sum = add i32 %a, %wide
  ret i32 %sum
}

; CHECK-LABEL: define float @float_untouched(
; CHECK: %a = load float, ptr %p
; CHECK: %b = load float, ptr %p
define float @float_untouched(ptr %p) {
  %a = load float, ptr %p
  %b = load float, ptr %p
  %sum = fadd float %a, %b
  ret float %sum
}

; CHECK-LABEL: define <2 x i32> @vector_untouched(
; CHECK: %a = load <2 x i32>, ptr %p
; CHECK: %b = load <2 x i32>, ptr %p
define <2 x i32> @vector_untouched(ptr %p) {
  %a = load <2 x i32>, ptr %p
  %b = load <2 x i32>, ptr %p
  %sum = add <2 x i32> %a, %b
  ret <2 x i32> %sum
}

; CHECK-LABEL: define i32 @range_metadata(
; CHECK: %a = load i32, ptr %p, align 4, !range
; CHECK: %b = load i32, ptr %p
define i32 @range_metadata(ptr %p) {
  %a = load i32, ptr %p, !range !0
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @invariant_group_metadata(
; CHECK: %a = load i32, ptr %p, align 4, !invariant.group
; CHECK: %b = load i32, ptr %p, align 4, !invariant.group
define i32 @invariant_group_metadata(ptr %p) {
  %a = load i32, ptr %p, !invariant.group !1
  %b = load i32, ptr %p, !invariant.group !1
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @metadata_on_later_load(
; CHECK: %a = load i32, ptr %p
; CHECK: %b = load i32, ptr %p, align 4, !range
define i32 @metadata_on_later_load(ptr %p) {
  %a = load i32, ptr %p
  %b = load i32, ptr %p, !range !0
  %sum = add i32 %a, %b
  ret i32 %sum
}

; CHECK-LABEL: define i32 @metadata_load_barrier(
; CHECK: %a = load i32, ptr %p
; CHECK: %marked = load i32, ptr %q, align 4, !range
; CHECK: %b = load i32, ptr %p
define i32 @metadata_load_barrier(ptr %p, ptr %q) {
  %a = load i32, ptr %p
  %marked = load i32, ptr %q, !range !0
  %b = load i32, ptr %p
  %sum = add i32 %a, %b
  ret i32 %sum
}

!0 = !{i32 0, i32 100}
!1 = !{}
