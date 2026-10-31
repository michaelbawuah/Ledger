; Executable oracle: 4,096 deterministic 64-bit values, including signed bounds,
; in both aliasing and disjoint-store situations. Arithmetic intentionally wraps.
target triple = "x86_64-unknown-linux-gnu"

define i64 @redundant(ptr %p) {
  %a = load i64, ptr %p
  %b = load i64, ptr %p
  %c = load i64, ptr %p
  %ab = add i64 %a, %b
  %abc = add i64 %ab, %c
  ret i64 %abc
}

define i64 @disjoint(ptr noalias %p, ptr noalias %q, i64 %value) {
  %a = load i64, ptr %p
  store i64 %value, ptr %q
  %b = load i64, ptr %p
  %sum = add i64 %a, %b
  ret i64 %sum
}

define i64 @maybe_alias(ptr %p, ptr %q, i64 %value) {
  %a = load i64, ptr %p
  store i64 %value, ptr %q
  %b = load i64, ptr %p
  %sum = add i64 %a, %b
  ret i64 %sum
}

define i32 @main() {
entry:
  %p = alloca i64, align 8
  %q = alloca i64, align 8
  br label %loop
loop:
  %index = phi i64 [ 0, %entry ], [ %next_index, %next ]
  %state = phi i64 [ 20261030, %entry ], [ %new_state, %next ]
  %mul = mul i64 %state, 6364136223846793005
  %new_state = add i64 %mul, 1442695040888963407
  %is_zero = icmp eq i64 %index, 0
  %is_one = icmp eq i64 %index, 1
  %is_neg_one = icmp eq i64 %index, 2
  %is_min = icmp eq i64 %index, 3
  %is_max = icmp eq i64 %index, 4
  %v0 = select i1 %is_zero, i64 0, i64 %new_state
  %v1 = select i1 %is_one, i64 1, i64 %v0
  %v2 = select i1 %is_neg_one, i64 -1, i64 %v1
  %v3 = select i1 %is_min, i64 -9223372036854775808, i64 %v2
  %value = select i1 %is_max, i64 9223372036854775807, i64 %v3
  %other = xor i64 %value, 6148914691236517205
  %twice = add i64 %value, %value
  %thrice = add i64 %twice, %value
  %mixed = add i64 %value, %other

  store i64 %value, ptr %p
  %r0 = call i64 @redundant(ptr %p)
  %ok0 = icmp eq i64 %r0, %thrice

  store i64 %value, ptr %p
  %r1 = call i64 @disjoint(ptr %p, ptr %q, i64 %other)
  %ok1 = icmp eq i64 %r1, %twice

  store i64 %value, ptr %p
  %r2 = call i64 @maybe_alias(ptr %p, ptr %q, i64 %other)
  %ok2 = icmp eq i64 %r2, %twice

  store i64 %value, ptr %p
  %r3 = call i64 @maybe_alias(ptr %p, ptr %p, i64 %other)
  %ok3 = icmp eq i64 %r3, %mixed

  %ok01 = and i1 %ok0, %ok1
  %ok23 = and i1 %ok2, %ok3
  %ok = and i1 %ok01, %ok23
  br i1 %ok, label %next, label %fail
next:
  %next_index = add i64 %index, 1
  %done = icmp eq i64 %next_index, 4096
  br i1 %done, label %pass, label %loop
pass:
  ret i32 0
fail:
  ret i32 1
}
