; ModuleID = '/workspace/scratch/782b5db88681/Ledger-llvm-pass/tools/compilerpilot/results/llvm-pass/llvm18-20261030-01/ir-inspection/before-custom.ll'
source_filename = "/workspace/scratch/782b5db88681/Ledger-llvm-pass/src/book.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.ledger::Config" = type <{ i64, i64, i32, [4 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl" }
%"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl" = type { %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.std::allocator.12" = type { i8 }
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
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.ledger::Statistics" = type { i64, i64, i64, i64, i64, i64 }
%"class.std::allocator.2" = type { i8 }
%"struct.ledger::detail::OrderPool::Node" = type <{ i64, i64, i32, i8, [3 x i8], i32, i32, i8, [7 x i8] }>
%"class.std::allocator.7" = type { i8 }
%"struct.ledger::FastBook::Level" = type <{ i32, i32, i64, i32, [4 x i8] }>
%"struct.ledger::Command" = type <{ i64, i64, i64, i32, i8, i8, i8, i8 }>
%"struct.ledger::detail::IdIndex::Entry" = type <{ i64, i32, [4 x i8] }>
%"struct.ledger::Event" = type { i64, i8, i8, i64, i64, i8, i64, i32, i32 }
%"class.ledger::EventBuffer" = type { %"class.std::span", i64 }
%"class.std::span" = type { ptr, %"class.std::__detail::__extent_storage" }
%"class.std::__detail::__extent_storage" = type { i64 }
%"struct.ledger::Snapshot" = type { %"class.std::vector.15", %"class.std::vector.20", %"struct.ledger::Statistics" }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl" }
%"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl" = type { %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl" }
%"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl" = type { %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.anon = type { ptr, ptr }
%"struct.ledger::RestingOrder" = type <{ i64, i8, [7 x i8], i64, i32, [4 x i8] }>
%"struct.ledger::LevelSnapshot" = type <{ i8, [7 x i8], i64, i64, i32, [4 x i8] }>
%"class.std::vector.25" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"class.std::allocator.26" = type { i8 }
%"class.std::initializer_list" = type { ptr, i64 }
%"struct.std::_Bit_reference" = type { ptr, i64 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.31" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.29" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.30" = type { ptr }
%"struct.std::_Bit_iterator_base" = type <{ ptr, i32, [4 x i8] }>

$_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2Ev = comdat any

$_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE8max_sizeEv = comdat any

$_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev = comdat any

$_ZN6ledger6detail9OrderPoolC2Ej = comdat any

$_ZN6ledger6detail7IdIndexC2Ej = comdat any

$_ZNSaIN6ledger8FastBook5LevelEEC2Ev = comdat any

$_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSaIN6ledger8FastBook5LevelEED2Ev = comdat any

$_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv = comdat any

$_ZNSaImEC2Ev = comdat any

$_ZNSt6vectorImSaImEEC2EmRKS0_ = comdat any

$_ZNKSt6vectorImSaImEE4sizeEv = comdat any

$_ZNSt6vectorImSaImEED2Ev = comdat any

$_ZN6ledger6detail7IdIndexD2Ev = comdat any

$_ZN6ledger6detail9OrderPoolD2Ev = comdat any

$_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm = comdat any

$_ZNKSt6vectorImSaImEEixEm = comdat any

$_ZSt11countl_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_ = comdat any

$_ZSt11countr_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_ = comdat any

$_ZN6ledger6detail9OrderPool7acquireEv = comdat any

$_ZN6ledger6detail9OrderPoolixEj = comdat any

$_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm = comdat any

$_ZNSt6vectorImSaImEEixEm = comdat any

$_ZN6ledger6detail7IdIndex6insertEmj = comdat any

$_ZN6ledger6detail7IdIndex5eraseEm = comdat any

$_ZN6ledger6detail9OrderPool7releaseEj = comdat any

$_ZN6ledger11EventBuffer4pushERKNS_5EventE = comdat any

$_ZN6ledger11EventBuffer5clearEv = comdat any

$_ZNK6ledger11EventBuffer8capacityEv = comdat any

$_ZN6ledger23required_event_capacityEm = comdat any

$_ZNK6ledger6detail7IdIndex4findEm = comdat any

$_ZNK6ledger6detail9OrderPool4fullEv = comdat any

$_ZSt3minIjERKT_S2_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZN6ledger8SnapshotC2Ev = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE7reserveEm = comdat any

$_ZNK6ledger6detail9OrderPool4sizeEv = comdat any

$_ZN6ledger8SnapshotD2Ev = comdat any

$_ZNK6ledger6detail9OrderPool16check_invariantsEv = comdat any

$_ZNK6ledger6detail7IdIndex16check_invariantsEv = comdat any

$_ZNK6ledger6detail7IdIndex4sizeEv = comdat any

$_ZNK6ledger6detail9OrderPool8capacityEv = comdat any

$_ZNSaIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

$_ZNSaIbED2Ev = comdat any

$_ZNKSt16initializer_listIN6ledger4SideEE5beginEv = comdat any

$_ZNKSt16initializer_listIN6ledger4SideEE3endEv = comdat any

$_ZNSt6vectorIbSaIbEEixEm = comdat any

$_ZNKSt14_Bit_referencecvbEv = comdat any

$_ZNK6ledger6detail9OrderPoolixEj = comdat any

$_ZNSt14_Bit_referenceaSEb = comdat any

$_ZNKSt6vectorImSaImEE4backEv = comdat any

$_ZNK6ledger6detail7IdIndex7entriesEv = comdat any

$_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE5beginEv = comdat any

$_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE3endEv = comdat any

$_ZN9__gnu_cxxeqIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_QrqXeqcldtfp_4baseEcldtfp0_4baseERSt14convertible_toIbEE = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEppEv = comdat any

$_ZNSt13_Bvector_baseISaIbEED2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS8_10value_typeEE6rebindIT_E5otherEE = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2Ev = comdat any

$_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE11_S_max_sizeERKS3_ = comdat any

$_ZNKSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8max_sizeERKS3_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZSt8_DestroyIPN6ledger8FastBook5LevelES2_EvT_S4_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EED2Ev = comdat any

$_ZSt8_DestroyIPN6ledger8FastBook5LevelEEvT_S4_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger8FastBook5LevelEEEvT_S6_ = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE13_M_deallocateEPS2_m = comdat any

$_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE10deallocateERS3_PS2_m = comdat any

$_ZNSaIN6ledger8FastBook5LevelEE10deallocateEPS1_m = comdat any

$_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE10deallocateEPS2_m = comdat any

$_ZNSaIN6ledger6detail9OrderPool4NodeEEC2Ev = comdat any

$_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_ = comdat any

$_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev = comdat any

$_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm = comdat any

$_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2Ev = comdat any

$_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE17_S_check_init_lenEmRKS4_ = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_ = comdat any

$_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev = comdat any

$_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE11_S_max_sizeERKS4_ = comdat any

$_ZNSaIN6ledger6detail9OrderPool4NodeEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8max_sizeERKS4_ = comdat any

$_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE12_Vector_implC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8allocateERS4_m = comdat any

$_ZNSaIN6ledger6detail9OrderPool4NodeEE8allocateEm = comdat any

$_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE11_M_max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6ledger6detail9OrderPool4NodeEmS3_ET_S5_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPN6ledger6detail9OrderPool4NodeEmET_S5_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail9OrderPool4NodeEmEET_S7_T0_ = comdat any

$_ZSt10_ConstructIN6ledger6detail9OrderPool4NodeEJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeEEvT_S5_ = comdat any

$_ZN6ledger6detail9OrderPool4NodeC2Ev = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail9OrderPool4NodeEEEvT_S7_ = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE10deallocateERS4_PS3_m = comdat any

$_ZNSaIN6ledger6detail9OrderPool4NodeEE10deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE10deallocateEPS3_m = comdat any

$_ZN6ledger6detail7IdIndex14table_capacityEj = comdat any

$_ZNSaIN6ledger6detail7IdIndex5EntryEEC2Ev = comdat any

$_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_ = comdat any

$_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev = comdat any

$_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE4sizeEv = comdat any

$_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2Ev = comdat any

$_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE8max_sizeEv = comdat any

$_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS9_10value_typeEE6rebindIT_E5otherEE = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2Ev = comdat any

$_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE11_S_max_sizeERKS4_ = comdat any

$_ZNKSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8max_sizeERKS4_ = comdat any

$_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryES3_EvT_S5_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev = comdat any

$_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryEEvT_S5_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail7IdIndex5EntryEEEvT_S7_ = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE13_M_deallocateEPS3_m = comdat any

$_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE10deallocateERS4_PS3_m = comdat any

$_ZNSaIN6ledger6detail7IdIndex5EntryEE10deallocateEPS2_m = comdat any

$_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE10deallocateEPS3_m = comdat any

$_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_ = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_ = comdat any

$_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE21_M_default_initializeEm = comdat any

$_ZNSaIN6ledger6detail7IdIndex5EntryEEC2ERKS3_ = comdat any

$_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2ERKS4_ = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8allocateERS4_m = comdat any

$_ZNSaIN6ledger6detail7IdIndex5EntryEE8allocateEm = comdat any

$_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE11_M_max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6ledger6detail7IdIndex5EntryEmS3_ET_S5_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPN6ledger6detail7IdIndex5EntryEmET_S5_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail7IdIndex5EntryEmEET_S7_T0_ = comdat any

$_ZSt10_ConstructIN6ledger6detail7IdIndex5EntryEJEEvPT_DpOT0_ = comdat any

$_ZN6ledger6detail7IdIndex5EntryC2Ev = comdat any

$_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_ = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_ = comdat any

$_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE21_M_default_initializeEm = comdat any

$_ZNSaIN6ledger8FastBook5LevelEEC2ERKS2_ = comdat any

$_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2ERKS3_ = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8allocateERS3_m = comdat any

$_ZNSaIN6ledger8FastBook5LevelEE8allocateEm = comdat any

$_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6ledger8FastBook5LevelEE11_M_max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPN6ledger8FastBook5LevelEmS2_ET_S4_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPN6ledger8FastBook5LevelEmET_S4_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger8FastBook5LevelEmEET_S6_T0_ = comdat any

$_ZSt10_ConstructIN6ledger8FastBook5LevelEJEEvPT_DpOT0_ = comdat any

$_ZN6ledger8FastBook5LevelC2Ev = comdat any

$_ZNSt15__new_allocatorImEC2Ev = comdat any

$_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseImSaImEEC2EmRKS0_ = comdat any

$_ZNSt6vectorImSaImEE21_M_default_initializeEm = comdat any

$_ZNSt12_Vector_baseImSaImEED2Ev = comdat any

$_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_ = comdat any

$_ZNSaImEC2ERKS_ = comdat any

$_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_ = comdat any

$_ZNSt15__new_allocatorImEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt12_Vector_baseImSaImEE11_M_allocateEm = comdat any

$_ZNSt16allocator_traitsISaImEE8allocateERS0_m = comdat any

$_ZNSaImE8allocateEm = comdat any

$_ZNSt15__new_allocatorImE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorImE11_M_max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt25__uninitialized_default_nIPmmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPmmEET_S3_T0_ = comdat any

$_ZSt10_ConstructImJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPmmmET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPmmmET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPmENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPmmEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm = comdat any

$_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm = comdat any

$_ZNSaImE10deallocateEPmm = comdat any

$_ZNSt15__new_allocatorImE10deallocateEPmm = comdat any

$_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPmEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_ = comdat any

$_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev = comdat any

$_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeES3_EvT_S5_RSaIT0_E = comdat any

$_ZSt13__countl_zeroImEiT_ = comdat any

$_ZSt13__countr_zeroImEiT_ = comdat any

$_ZNK6ledger6detail7IdIndex6bucketEm = comdat any

$_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm = comdat any

$_ZNKSt4spanIN6ledger5EventELm18446744073709551615EE4sizeEv = comdat any

$_ZNKSt4spanIN6ledger5EventELm18446744073709551615EEixEm = comdat any

$_ZNKSt8__detail16__extent_storageILm18446744073709551615EE9_M_extentEv = comdat any

$_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EEC2Ev = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EEC2Ev = comdat any

$_ZN6ledger10StatisticsC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE = comdat any

$_ZNSaIN6ledger12RestingOrderEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6ledger12RestingOrderEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE = comdat any

$_ZNSaIN6ledger13LevelSnapshotEEC2Ev = comdat any

$_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEEC2Ev = comdat any

$_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8capacityEv = comdat any

$_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv = comdat any

$_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8max_sizeERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8allocateERS2_m = comdat any

$_ZNSaIN6ledger12RestingOrderEE8allocateEm = comdat any

$_ZNSt15__new_allocatorIN6ledger12RestingOrderEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6ledger12RestingOrderEE11_M_max_sizeEv = comdat any

$_ZSt12__relocate_aIPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_ = comdat any

$_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZSt12construct_atIN6ledger12RestingOrderEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_ = comdat any

$_ZSt10destroy_atIN6ledger12RestingOrderEEvPT_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE10deallocateERS2_PS1_m = comdat any

$_ZNSaIN6ledger12RestingOrderEE10deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorIN6ledger12RestingOrderEE10deallocateEPS1_m = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_ = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_ = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE3endEv = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4backEv = comdat any

$_ZSt12construct_atIN6ledger13LevelSnapshotEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_ = comdat any

$_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE5beginEv = comdat any

$_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m = comdat any

$_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv = comdat any

$_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNKSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8max_sizeERKS2_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8allocateERS2_m = comdat any

$_ZNSaIN6ledger13LevelSnapshotEE8allocateEm = comdat any

$_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIN6ledger13LevelSnapshotEE11_M_max_sizeEv = comdat any

$_ZSt12__relocate_aIPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt14__relocate_a_1IPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_ = comdat any

$_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_ = comdat any

$_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZSt10destroy_atIN6ledger13LevelSnapshotEEvPT_ = comdat any

$_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE10deallocateERS2_PS1_m = comdat any

$_ZNSaIN6ledger13LevelSnapshotEE10deallocateEPS0_m = comdat any

$_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE10deallocateEPS1_m = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_ = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE3endEv = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE4backEv = comdat any

$_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_ = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE5beginEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEdeEv = comdat any

$_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev = comdat any

$_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPN6ledger13LevelSnapshotES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPN6ledger13LevelSnapshotEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger13LevelSnapshotEEEvT_S5_ = comdat any

$_ZNSaIN6ledger13LevelSnapshotEED2Ev = comdat any

$_ZSt8_DestroyIPN6ledger12RestingOrderES1_EvT_S3_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EED2Ev = comdat any

$_ZSt8_DestroyIPN6ledger12RestingOrderEEvT_S3_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger12RestingOrderEEEvT_S5_ = comdat any

$_ZNSaIN6ledger12RestingOrderEED2Ev = comdat any

$_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv = comdat any

$_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm = comdat any

$_ZNSt15__new_allocatorIbEC2Ev = comdat any

$_ZNSt13_Bvector_baseISaIbEEC2ERKS0_ = comdat any

$_ZNSt6vectorIbSaIbEE13_M_initializeEm = comdat any

$_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb = comdat any

$_ZNSaImEC2IbEERKSaIT_E = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE = comdat any

$_ZNSt13_Bit_iteratorC2Ev = comdat any

$_ZNSt18_Bit_iterator_baseC2EPmj = comdat any

$_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm = comdat any

$_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm = comdat any

$_ZNSt13_Bit_iteratorC2EPmj = comdat any

$_ZStplRKSt13_Bit_iteratorl = comdat any

$_ZNSt13_Bit_iteratorpLEl = comdat any

$_ZNSt18_Bit_iterator_base7_M_incrEl = comdat any

$_ZNKSt18_Bit_iterator_base20_M_assume_normalizedEv = comdat any

$_ZSt16__fill_bvector_nPmmb = comdat any

$_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv = comdat any

$_ZNSaImED2Ev = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev = comdat any

$_ZNKSt16initializer_listIN6ledger4SideEE4sizeEv = comdat any

$_ZNSt6vectorIbSaIbEE5beginEv = comdat any

$_ZNKSt13_Bit_iteratorixEl = comdat any

$_ZNKSt13_Bit_iteratordeEv = comdat any

$_ZNSt14_Bit_referenceC2EPmm = comdat any

$_ZNKSt6vectorImSaImEE3endEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEC2ERKS6_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEE4baseEv = comdat any

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
define dso_local void @_ZN6ledger8FastBook15validate_configENS_6ConfigE(ptr dead_on_unwind noalias writable sret(%"struct.ledger::Config") align 8 %agg.result, ptr noundef byval(%"struct.ledger::Config") align 8 %config) #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config, i32 0, i32 0
  %0 = load i64, ptr %min_price, align 8
  %cmp = icmp sle i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %config, i32 0, i32 1
  %1 = load i64, ptr %max_price, align 8
  %min_price1 = getelementptr inbounds %"struct.ledger::Config", ptr %config, i32 0, i32 0
  %2 = load i64, ptr %min_price1, align 8
  %cmp2 = icmp slt i64 %1, %2
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %max_orders = getelementptr inbounds %"struct.ledger::Config", ptr %config, i32 0, i32 2
  %3 = load i32, ptr %max_orders, align 8
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %exception = call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef @.str)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt16invalid_argument, ptr @_ZNSt16invalid_argumentD1Ev) #18
  unreachable

lpad:                                             ; preds = %if.then
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  call void @__cxa_free_exception(ptr %exception) #17
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.result, ptr align 8 %config, i64 24, i1 false)
  ret void

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %5, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %6, 1
  resume { ptr, i32 } %lpad.val5
}

declare ptr @__cxa_allocate_exception(i64)

declare void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr)

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN6ledger8FastBook11level_countENS_6ConfigE(ptr noundef byval(%"struct.ledger::Config") align 8 %config) #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::vector", align 8
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %config, i32 0, i32 1
  %0 = load i64, ptr %max_price, align 8
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config, i32 0, i32 0
  %1 = load i64, ptr %min_price, align 8
  %sub = sub nsw i64 %0, %1
  %add = add i64 %sub, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr %ref.tmp) #17
  call void @llvm.memset.p0.i64(ptr align 8 %ref.tmp, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %cmp = icmp ugt i64 %add, %call
  call void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception = call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef @.str.1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt12length_error, ptr @_ZNSt12length_errorD1Ev) #18
  unreachable

lpad:                                             ; preds = %if.then
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  call void @__cxa_free_exception(ptr %exception) #17
  br label %eh.resume

if.end:                                           ; preds = %entry
  ret i64 %add

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %3, 0
  %lpad.val1 = insertvalue { ptr, i32 } %lpad.val, i32 %4, 1
  resume { ptr, i32 } %lpad.val1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  invoke void @_ZSt8_DestroyIPN6ledger8FastBook5LevelES2_EvT_S4_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #19
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6ledger8FastBookC2ENS_6ConfigEbb(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef byval(%"struct.ledger::Config") align 8 %config, i1 noundef zeroext %bitmap_search, i1 noundef zeroext %bitmap_fok) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %agg.tmp = alloca %"struct.ledger::Config", align 8
  %agg.tmp9 = alloca %"struct.ledger::Config", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %ref.tmp17 = alloca %"class.std::allocator", align 1
  %ref.tmp24 = alloca %"class.std::allocator.12", align 1
  %ref.tmp29 = alloca %"class.std::allocator.12", align 1
  %frombool = zext i1 %bitmap_search to i8
  %frombool1 = zext i1 %bitmap_fok to i8
  %config_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp, ptr align 8 %config, i64 24, i1 false)
  call void @_ZN6ledger8FastBook15validate_configENS_6ConfigE(ptr dead_on_unwind writable sret(%"struct.ledger::Config") align 8 %config_, ptr noundef byval(%"struct.ledger::Config") align 8 %agg.tmp)
  %bitmap_search_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 1
  %tobool = trunc i8 %frombool to i1
  %frombool3 = zext i1 %tobool to i8
  store i8 %frombool3, ptr %bitmap_search_, align 8
  %bitmap_fok_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 2
  %tobool4 = trunc i8 %frombool1 to i1
  %frombool5 = zext i1 %tobool4 to i8
  store i8 %frombool5, ptr %bitmap_fok_, align 1
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %config_6 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  %max_orders = getelementptr inbounds %"struct.ledger::Config", ptr %config_6, i32 0, i32 2
  %0 = load i32, ptr %max_orders, align 8
  call void @_ZN6ledger6detail9OrderPoolC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %0)
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 4
  %config_7 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  %max_orders8 = getelementptr inbounds %"struct.ledger::Config", ptr %config_7, i32 0, i32 2
  %1 = load i32, ptr %max_orders8, align 8
  invoke void @_ZN6ledger6detail7IdIndexC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %index_, i32 noundef %1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 5
  %config_10 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %agg.tmp9, ptr align 8 %config_10, i64 24, i1 false)
  %call = invoke noundef i64 @_ZN6ledger8FastBook11level_countENS_6ConfigE(ptr noundef byval(%"struct.ledger::Config") align 8 %agg.tmp9)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %invoke.cont
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  invoke void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %bids_, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont14 unwind label %lpad13

invoke.cont14:                                    ; preds = %invoke.cont12
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 6
  %bids_15 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 5
  %call16 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_15) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp17) #17
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp17) #17
  invoke void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %asks_, i64 noundef %call16, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp17)
          to label %invoke.cont19 unwind label %lpad18

invoke.cont19:                                    ; preds = %invoke.cont14
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp17) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp17) #17
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 7
  %bids_20 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 5
  %call21 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_20) #17
  %div = udiv i64 %call21, 64
  %bids_22 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 5
  %call23 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_22) #17
  %rem = urem i64 %call23, 64
  %cmp = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp to i64
  %add = add i64 %div, %conv
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp24) #17
  call void @_ZNSaImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp24) #17
  invoke void @_ZNSt6vectorImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %bid_bitmap_, i64 noundef %add, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp24)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont19
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp24) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp24) #17
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 8
  %bid_bitmap_27 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 7
  %call28 = call noundef i64 @_ZNKSt6vectorImSaImEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bid_bitmap_27) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp29) #17
  call void @_ZNSaImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp29) #17
  invoke void @_ZNSt6vectorImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %ask_bitmap_, i64 noundef %call28, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp29)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %invoke.cont26
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp29) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp29) #17
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 9
  store i64 -1, ptr %best_bid_, align 8
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 10
  store i64 -1, ptr %best_ask_, align 8
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 11
  store i64 0, ptr %resting_quantity_, align 8
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %submitted = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 0
  store i64 0, ptr %submitted, align 8
  %executed = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 1
  store i64 0, ptr %executed, align 8
  %cancelled = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 2
  store i64 0, ptr %cancelled, align 8
  %expired = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 3
  store i64 0, ptr %expired, align 8
  %rejected = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 4
  store i64 0, ptr %rejected, align 8
  %trade_count = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 5
  store i64 0, ptr %trade_count, align 8
  ret void

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  br label %ehcleanup34

lpad11:                                           ; preds = %invoke.cont
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  br label %ehcleanup33

lpad13:                                           ; preds = %invoke.cont12
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %ehcleanup33

lpad18:                                           ; preds = %invoke.cont14
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp17) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp17) #17
  br label %ehcleanup32

lpad25:                                           ; preds = %invoke.cont19
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp24) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp24) #17
  br label %ehcleanup

lpad30:                                           ; preds = %invoke.cont26
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = extractvalue { ptr, i32 } %17, 1
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp29) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp29) #17
  call void @_ZNSt6vectorImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %bid_bitmap_) #17
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad30, %lpad25
  %exn.slot.0 = phi ptr [ %18, %lpad30 ], [ %15, %lpad25 ]
  %ehselector.slot.0 = phi i32 [ %19, %lpad30 ], [ %16, %lpad25 ]
  call void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %asks_) #17
  br label %ehcleanup32

ehcleanup32:                                      ; preds = %ehcleanup, %lpad18
  %exn.slot.1 = phi ptr [ %exn.slot.0, %ehcleanup ], [ %12, %lpad18 ]
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %13, %lpad18 ]
  call void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %bids_) #17
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %ehcleanup32, %lpad13, %lpad11
  %exn.slot.2 = phi ptr [ %exn.slot.1, %ehcleanup32 ], [ %9, %lpad13 ], [ %6, %lpad11 ]
  %ehselector.slot.2 = phi i32 [ %ehselector.slot.1, %ehcleanup32 ], [ %10, %lpad13 ], [ %7, %lpad11 ]
  call void @_ZN6ledger6detail7IdIndexD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %index_) #17
  br label %ehcleanup34

ehcleanup34:                                      ; preds = %ehcleanup33, %lpad
  %exn.slot.3 = phi ptr [ %exn.slot.2, %ehcleanup33 ], [ %3, %lpad ]
  %ehselector.slot.3 = phi i32 [ %ehselector.slot.2, %ehcleanup33 ], [ %4, %lpad ]
  call void @_ZN6ledger6detail9OrderPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %pool_) #17
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup34
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn.slot.3, 0
  %lpad.val35 = insertvalue { ptr, i32 } %lpad.val, i32 %ehselector.slot.3, 1
  resume { ptr, i32 } %lpad.val35
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail9OrderPoolC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %capacity) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::allocator.2", align 1
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv = zext i32 %capacity to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  invoke void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  store i32 -1, ptr %free_head_, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 2
  store i64 0, ptr %size_, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %i.0 = phi i32 [ 0, %invoke.cont ], [ %inc, %for.inc ]
  %cmp = icmp ult i32 %i.0, %capacity
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %eh.resume

for.body:                                         ; preds = %for.cond
  %add = add i32 %i.0, 1
  %cmp2 = icmp ult i32 %add, %capacity
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %add3 = add i32 %i.0, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add3, %cond.true ], [ -1, %cond.false ]
  %nodes_4 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv5 = zext i32 %i.0 to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_4, i64 noundef %conv5) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call, i32 0, i32 6
  store i32 %cond, ptr %next, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %inc = add i32 %i.0, 1
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond.cleanup
  %tobool = icmp ne i32 %capacity, 0
  %3 = zext i1 %tobool to i64
  %cond6 = select i1 %tobool, i32 0, i32 -1
  %free_head_7 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  store i32 %cond6, ptr %free_head_7, align 8
  ret void

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val8 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail7IdIndexC2Ej(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %max_orders) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::allocator.7", align 1
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call = call noundef i64 @_ZN6ledger6detail7IdIndex14table_capacityEj(i32 noundef %max_orders)
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  invoke void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %entries_, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %entries_2 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call3 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %entries_2) #17
  %sub = sub i64 %call3, 1
  store i64 %sub, ptr %mask_, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 2
  store i64 0, ptr %size_, align 8
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val4 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val4
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = call noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  invoke void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  ret i64 %sub.ptr.div
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = call noundef i64 @_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  call void @_ZNSt12_Vector_baseImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  invoke void @_ZNSt6vectorImSaImEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSt12_Vector_baseImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorImSaImEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  invoke void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail7IdIndexD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) unnamed_addr #8 comdat align 2 {
entry:
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  call void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %entries_) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail9OrderPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) unnamed_addr #8 comdat align 2 {
entry:
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  call void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %nodes_) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %price) #6 align 2 {
entry:
  %config_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config_, i32 0, i32 0
  %0 = load i64, ptr %min_price, align 8
  %sub = sub nsw i64 %price, %0
  ret i64 %sub
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %value) #6 align 2 {
entry:
  %config_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config_, i32 0, i32 0
  %0 = load i64, ptr %min_price, align 8
  %add = add nsw i64 %0, %value
  ret i64 %add
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %bids_, %cond.true ], [ %asks_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 5
  br label %cond.end

cond.false:                                       ; preds = %entry
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %bids_, %cond.true ], [ %asks_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %bid_bitmap_, %cond.true ], [ %ask_bitmap_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bid_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %ask_bitmap_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %bid_bitmap_, %cond.true ], [ %ask_bitmap_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 9
  br label %cond.end

cond.false:                                       ; preds = %entry
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond-lvalue = phi ptr [ %best_bid_, %cond.true ], [ %best_ask_, %cond.false ]
  ret ptr %cond-lvalue
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 9
  %0 = load i64, ptr %best_bid_, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 10
  %1 = load i64, ptr %best_ask_, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %0, %cond.true ], [ %1, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8best_bidEv(ptr noundef nonnull align 8 dereferenceable(280) %this) #6 align 2 {
entry:
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 9
  %0 = load i64, ptr %best_bid_, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %best_bid_2 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 9
  %1 = load i64, ptr %best_bid_2, align 8
  %call = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %1) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook8best_askEv(ptr noundef nonnull align 8 dereferenceable(280) %this) #6 align 2 {
entry:
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 10
  %0 = load i64, ptr %best_ask_, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %best_ask_2 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 10
  %1 = load i64, ptr %best_ask_2, align 8
  %call = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %1) #17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %call, %cond.false ]
  ret i64 %cond
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook9find_bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #6 align 2 {
entry:
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 5
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_) #17
  %sub = sub i64 %call, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ]
  %call2 = call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %cond) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %starting_level) #6 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #17
  %bitmap_search_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 1
  %0 = load i8, ptr %bitmap_search_, align 8, !range !8, !noundef !9
  %tobool = trunc i8 %0 to i1
  br i1 %tobool, label %if.end24, label %if.then

if.then:                                          ; preds = %entry
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %add = add i64 %starting_level, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %i.0 = phi i64 [ %add, %if.then2 ], [ %dec, %for.inc ]
  %cmp3 = icmp ne i64 %i.0, 0
  br i1 %cmp3, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %sub = sub i64 %i.0, 1
  %call4 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %sub) #17
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call4, i32 0, i32 3
  %1 = load i32, ptr %orders, align 8
  %tobool5 = icmp ne i32 %1, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %for.body
  %sub7 = sub i64 %i.0, 1
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %dec = add i64 %i.0, -1
  br label %for.cond, !llvm.loop !10

cleanup:                                          ; preds = %if.then6, %for.cond.cleanup
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then6 ], [ 2, %for.cond.cleanup ]
  %retval.0 = phi i64 [ %sub7, %if.then6 ], [ undef, %for.cond.cleanup ]
  switch i32 %cleanup.dest.slot.0, label %cleanup26 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  br label %if.end23

if.else:                                          ; preds = %if.then
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %if.else
  %i8.0 = phi i64 [ %starting_level, %if.else ], [ %inc, %for.inc19 ]
  %call10 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %call) #17
  %cmp11 = icmp ult i64 %i8.0, %call10
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond9
  br label %cleanup20

for.body13:                                       ; preds = %for.cond9
  %call14 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %i8.0) #17
  %orders15 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call14, i32 0, i32 3
  %2 = load i32, ptr %orders15, align 8
  %tobool16 = icmp ne i32 %2, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body13
  br label %cleanup20

if.end18:                                         ; preds = %for.body13
  br label %for.inc19

for.inc19:                                        ; preds = %if.end18
  %inc = add i64 %i8.0, 1
  br label %for.cond9, !llvm.loop !11

cleanup20:                                        ; preds = %if.then17, %for.cond.cleanup12
  %cleanup.dest.slot.1 = phi i32 [ 1, %if.then17 ], [ 5, %for.cond.cleanup12 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup26 [
    i32 5, label %for.end22
  ]

for.end22:                                        ; preds = %cleanup20
  br label %if.end23

if.end23:                                         ; preds = %for.end22, %for.end
  br label %cleanup26

if.end24:                                         ; preds = %entry
  %call25 = call noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %starting_level) #17
  br label %cleanup26

cleanup26:                                        ; preds = %if.end24, %if.end23, %cleanup20, %cleanup
  %retval.2 = phi i64 [ %call25, %if.end24 ], [ %retval.0, %cleanup ], [ -1, %if.end23 ], [ %i8.0, %cleanup20 ]
  ret i64 %retval.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %0, i64 %__n
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side, i64 noundef %starting_level) #6 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %side) #17
  %div = udiv i64 %starting_level, 64
  %rem = urem i64 %starting_level, 64
  %conv = trunc i64 %rem to i32
  %cmp = icmp eq i8 %side, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %div) #17
  %0 = load i64, ptr %call2, align 8
  %sub = sub i32 63, %conv
  %sh_prom = zext i32 %sub to i64
  %shr = lshr i64 -1, %sh_prom
  %and = and i64 %0, %shr
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %mul = mul i64 %div, 64
  %add = add i64 %mul, 63
  %call4 = call noundef i32 @_ZSt11countl_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %and) #17
  %conv5 = sext i32 %call4 to i64
  %sub6 = sub i64 %add, %conv5
  br label %cleanup21

if.end:                                           ; preds = %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %word.0 = phi i64 [ %div, %if.end ], [ %dec, %for.inc ]
  %cmp7 = icmp ne i64 %word.0, 0
  br i1 %cmp7, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %sub8 = sub i64 %word.0, 1
  %call9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %sub8) #17
  %1 = load i64, ptr %call9, align 8
  %tobool10 = icmp ne i64 %1, 0
  br i1 %tobool10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %for.body
  %sub12 = sub i64 %word.0, 1
  %mul13 = mul i64 %sub12, 64
  %add14 = add i64 %mul13, 63
  %sub15 = sub i64 %word.0, 1
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %sub15) #17
  %2 = load i64, ptr %call16, align 8
  %call17 = call noundef i32 @_ZSt11countl_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %2) #17
  %conv18 = sext i32 %call17 to i64
  %sub19 = sub i64 %add14, %conv18
  br label %cleanup

if.end20:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end20
  %dec = add i64 %word.0, -1
  br label %for.cond, !llvm.loop !12

cleanup:                                          ; preds = %if.then11, %for.cond.cleanup
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then11 ], [ 2, %for.cond.cleanup ]
  %retval.0 = phi i64 [ %sub19, %if.then11 ], [ undef, %for.cond.cleanup ]
  switch i32 %cleanup.dest.slot.0, label %cleanup21 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup
  br label %cleanup21

cleanup21:                                        ; preds = %for.end, %cleanup, %if.then3
  %cleanup.dest.slot.1 = phi i32 [ 1, %if.then3 ], [ %cleanup.dest.slot.0, %cleanup ], [ 0, %for.end ]
  %retval.1 = phi i64 [ %sub6, %if.then3 ], [ %retval.0, %cleanup ], [ %retval.0, %for.end ]
  switch i32 %cleanup.dest.slot.1, label %cleanup58 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup21
  br label %if.end57

if.else:                                          ; preds = %entry
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %div) #17
  %3 = load i64, ptr %call24, align 8
  %sh_prom25 = zext i32 %conv to i64
  %shl = shl i64 -1, %sh_prom25
  %and26 = and i64 %3, %shl
  %tobool27 = icmp ne i64 %and26, 0
  br i1 %tobool27, label %if.then28, label %if.end33

if.then28:                                        ; preds = %if.else
  %mul29 = mul i64 %div, 64
  %call30 = call noundef i32 @_ZSt11countr_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %and26) #17
  %conv31 = sext i32 %call30 to i64
  %add32 = add i64 %mul29, %conv31
  br label %cleanup54

if.end33:                                         ; preds = %if.else
  %add35 = add i64 %div, 1
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc50, %if.end33
  %word34.0 = phi i64 [ %add35, %if.end33 ], [ %inc, %for.inc50 ]
  %call37 = call noundef i64 @_ZNKSt6vectorImSaImEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %call) #17
  %cmp38 = icmp ult i64 %word34.0, %call37
  br i1 %cmp38, label %for.body40, label %for.cond.cleanup39

for.cond.cleanup39:                               ; preds = %for.cond36
  br label %cleanup51

for.body40:                                       ; preds = %for.cond36
  %call41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %word34.0) #17
  %4 = load i64, ptr %call41, align 8
  %tobool42 = icmp ne i64 %4, 0
  br i1 %tobool42, label %if.then43, label %if.end49

if.then43:                                        ; preds = %for.body40
  %mul44 = mul i64 %word34.0, 64
  %call45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %word34.0) #17
  %5 = load i64, ptr %call45, align 8
  %call46 = call noundef i32 @_ZSt11countr_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %5) #17
  %conv47 = sext i32 %call46 to i64
  %add48 = add i64 %mul44, %conv47
  br label %cleanup51

if.end49:                                         ; preds = %for.body40
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %inc = add i64 %word34.0, 1
  br label %for.cond36, !llvm.loop !13

cleanup51:                                        ; preds = %if.then43, %for.cond.cleanup39
  %cleanup.dest.slot.2 = phi i32 [ 1, %if.then43 ], [ 5, %for.cond.cleanup39 ]
  %retval.2 = phi i64 [ %add48, %if.then43 ], [ undef, %for.cond.cleanup39 ]
  switch i32 %cleanup.dest.slot.2, label %cleanup54 [
    i32 5, label %for.end53
  ]

for.end53:                                        ; preds = %cleanup51
  br label %cleanup54

cleanup54:                                        ; preds = %for.end53, %cleanup51, %if.then28
  %cleanup.dest.slot.3 = phi i32 [ 1, %if.then28 ], [ %cleanup.dest.slot.2, %cleanup51 ], [ 0, %for.end53 ]
  %retval.3 = phi i64 [ %add32, %if.then28 ], [ %retval.2, %cleanup51 ], [ %retval.2, %for.end53 ]
  switch i32 %cleanup.dest.slot.3, label %cleanup58 [
    i32 0, label %cleanup.cont56
  ]

cleanup.cont56:                                   ; preds = %cleanup54
  br label %if.end57

if.end57:                                         ; preds = %cleanup.cont56, %cleanup.cont
  br label %cleanup58

cleanup58:                                        ; preds = %if.end57, %cleanup54, %cleanup21
  %retval.4 = phi i64 [ %retval.1, %cleanup21 ], [ -1, %if.end57 ], [ %retval.3, %cleanup54 ]
  ret i64 %retval.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 %__n
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11countl_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %__x) #6 comdat {
entry:
  %call = call noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %__x) #17
  ret i32 %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11countr_zeroImENSt9enable_ifIXsr21__is_unsigned_integerIT_EE5valueEiE4typeES1_(i64 noundef %__x) #6 comdat {
entry:
  %call = call noundef i32 @_ZSt13__countr_zeroImEiT_(i64 noundef %__x) #17
  ret i32 %call
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i64 noundef %maker_price) #6 align 2 {
entry:
  %action = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %0 = load i8, ptr %action, align 1
  %cmp = icmp eq i8 %0, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %1 = load i8, ptr %side, align 4
  %cmp2 = icmp eq i8 %1, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.rhs
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %2 = load i64, ptr %price, align 8
  %cmp3 = icmp sge i64 %2, %maker_price
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  %price4 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %3 = load i64, ptr %price4, align 8
  %cmp5 = icmp sle i64 %3, %maker_price
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i1 [ %cmp3, %cond.true ], [ %cmp5, %cond.false ]
  br label %lor.end

lor.end:                                          ; preds = %cond.end, %entry
  %4 = phi i1 [ true, %entry ], [ %cond, %cond.end ]
  ret i1 %4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook8can_fillERKNS_7CommandE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command) #6 align 2 {
entry:
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %0 = load i8, ptr %side, align 4
  %cmp = icmp eq i8 %0, 0
  %1 = zext i1 %cmp to i64
  %cond = select i1 %cmp, i8 1, i8 0
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond) #17
  %call2 = call noundef i64 @_ZNK6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond) #17
  %cmp3 = icmp eq i64 %call2, -1
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup74

if.end:                                           ; preds = %entry
  %bitmap_fok_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 2
  %2 = load i8, ptr %bitmap_fok_, align 1, !range !8, !noundef !9
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %if.then4, label %if.end27

if.then4:                                         ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.then4
  %available.0 = phi i64 [ 0, %if.then4 ], [ %add, %if.end26 ]
  %level.0 = phi i64 [ %call2, %if.then4 ], [ %level.1, %if.end26 ]
  %cmp5 = icmp ne i64 %level.0, -1
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call6 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %level.0) #17
  %call7 = call noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i64 noundef %call6) #17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %call7, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call8 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %level.0) #17
  %quantity = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call8, i32 0, i32 2
  %4 = load i64, ptr %quantity, align 8
  %add = add i64 %available.0, %4
  %quantity9 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %5 = load i32, ptr %quantity9, align 8
  %conv = zext i32 %5 to i64
  %cmp10 = icmp uge i64 %add, %conv
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %while.body
  br label %cleanup

if.end12:                                         ; preds = %while.body
  %cmp13 = icmp eq i8 %cond, 1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  %call15 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %call) #17
  %sub = sub i64 %call15, 1
  %cmp16 = icmp eq i64 %level.0, %sub
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then14
  br label %while.end

if.end18:                                         ; preds = %if.then14
  %add19 = add i64 %level.0, 1
  %call20 = call noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond, i64 noundef %add19) #17
  br label %if.end26

if.else:                                          ; preds = %if.end12
  %cmp21 = icmp eq i64 %level.0, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.else
  br label %while.end

if.end23:                                         ; preds = %if.else
  %sub24 = sub i64 %level.0, 1
  %call25 = call noundef i64 @_ZNK6ledger8FastBook16find_next_bitmapENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond, i64 noundef %sub24) #17
  br label %if.end26

if.end26:                                         ; preds = %if.end23, %if.end18
  %level.1 = phi i64 [ %call20, %if.end18 ], [ %call25, %if.end23 ]
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %if.then22, %if.then17, %land.end
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then11
  %retval.0 = phi i1 [ true, %if.then11 ], [ false, %while.end ]
  br label %cleanup73

if.end27:                                         ; preds = %if.end
  %cmp28 = icmp eq i8 %cond, 1
  br i1 %cmp28, label %if.then29, label %if.else45

if.then29:                                        ; preds = %if.end27
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then29
  %available.1 = phi i64 [ 0, %if.then29 ], [ %add38, %for.inc ]
  %i.0 = phi i64 [ %call2, %if.then29 ], [ %inc, %for.inc ]
  %call30 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %call) #17
  %cmp31 = icmp ult i64 %i.0, %call30
  br i1 %cmp31, label %land.rhs32, label %land.end35

land.rhs32:                                       ; preds = %for.cond
  %call33 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %i.0) #17
  %call34 = call noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i64 noundef %call33) #17
  br label %land.end35

land.end35:                                       ; preds = %land.rhs32, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %call34, %land.rhs32 ]
  br i1 %6, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %land.end35
  br label %cleanup44

for.body:                                         ; preds = %land.end35
  %call36 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %i.0) #17
  %quantity37 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call36, i32 0, i32 2
  %7 = load i64, ptr %quantity37, align 8
  %add38 = add i64 %available.1, %7
  %quantity39 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %8 = load i32, ptr %quantity39, align 8
  %conv40 = zext i32 %8 to i64
  %cmp41 = icmp uge i64 %add38, %conv40
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %for.body
  br label %cleanup44

if.end43:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end43
  %inc = add i64 %i.0, 1
  br label %for.cond, !llvm.loop !15

cleanup44:                                        ; preds = %if.then42, %for.cond.cleanup
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then42 ], [ 4, %for.cond.cleanup ]
  switch i32 %cleanup.dest.slot.0, label %cleanup73 [
    i32 4, label %for.end
  ]

for.end:                                          ; preds = %cleanup44
  br label %if.end72

if.else45:                                        ; preds = %if.end27
  %add47 = add i64 %call2, 1
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc68, %if.else45
  %available.2 = phi i64 [ 0, %if.else45 ], [ %available.3, %for.inc68 ]
  %i46.0 = phi i64 [ %add47, %if.else45 ], [ %dec, %for.inc68 ]
  %retval.2 = phi i1 [ undef, %if.else45 ], [ %retval.3, %for.inc68 ]
  %cmp49 = icmp ne i64 %i46.0, 0
  br i1 %cmp49, label %for.body51, label %for.cond.cleanup50

for.cond.cleanup50:                               ; preds = %for.cond48
  br label %cleanup69

for.body51:                                       ; preds = %for.cond48
  %sub53 = sub i64 %i46.0, 1
  %call54 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %sub53) #17
  %call55 = call noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i64 noundef %call54) #17
  br i1 %call55, label %if.end57, label %if.then56

if.then56:                                        ; preds = %for.body51
  br label %cleanup66

if.end57:                                         ; preds = %for.body51
  %call58 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %sub53) #17
  %quantity59 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call58, i32 0, i32 2
  %9 = load i64, ptr %quantity59, align 8
  %add60 = add i64 %available.2, %9
  %quantity61 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %10 = load i32, ptr %quantity61, align 8
  %conv62 = zext i32 %10 to i64
  %cmp63 = icmp uge i64 %add60, %conv62
  br i1 %cmp63, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end57
  br label %cleanup66

if.end65:                                         ; preds = %if.end57
  br label %cleanup66

cleanup66:                                        ; preds = %if.end65, %if.then64, %if.then56
  %cleanup.dest.slot.1 = phi i32 [ 1, %if.then64 ], [ 0, %if.end65 ], [ 7, %if.then56 ]
  %available.3 = phi i64 [ %add60, %if.then64 ], [ %add60, %if.end65 ], [ %available.2, %if.then56 ]
  %retval.3 = phi i1 [ true, %if.then64 ], [ %retval.2, %if.end65 ], [ %retval.2, %if.then56 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup69 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup66
  br label %for.inc68

for.inc68:                                        ; preds = %cleanup.cont
  %dec = add i64 %i46.0, -1
  br label %for.cond48, !llvm.loop !16

cleanup69:                                        ; preds = %cleanup66, %for.cond.cleanup50
  %cleanup.dest.slot.2 = phi i32 [ %cleanup.dest.slot.1, %cleanup66 ], [ 7, %for.cond.cleanup50 ]
  %retval.4 = phi i1 [ %retval.3, %cleanup66 ], [ %retval.2, %for.cond.cleanup50 ]
  switch i32 %cleanup.dest.slot.2, label %cleanup73 [
    i32 7, label %for.end71
  ]

for.end71:                                        ; preds = %cleanup69
  br label %if.end72

if.end72:                                         ; preds = %for.end71, %for.end
  br label %cleanup73

cleanup73:                                        ; preds = %if.end72, %cleanup69, %cleanup44, %cleanup
  %retval.5 = phi i1 [ %retval.0, %cleanup ], [ true, %cleanup44 ], [ false, %if.end72 ], [ %retval.4, %cleanup69 ]
  br label %cleanup74

cleanup74:                                        ; preds = %cleanup73, %if.then
  %retval.6 = phi i1 [ false, %if.then ], [ %retval.5, %cleanup73 ]
  ret i1 %retval.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ledger8FastBook11add_restingERKNS_7CommandEj(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i32 noundef %remaining) #6 align 2 {
entry:
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call = call noundef i32 @_ZN6ledger6detail9OrderPool7acquireEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_) #17
  %pool_2 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call3 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_2, i32 noundef %call) #17
  %id = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %0 = load i64, ptr %id, align 8
  %id4 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call3, i32 0, i32 0
  store i64 %0, ptr %id4, align 8
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %1 = load i64, ptr %price, align 8
  %price5 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call3, i32 0, i32 1
  store i64 %1, ptr %price5, align 8
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call3, i32 0, i32 2
  store i32 %remaining, ptr %quantity, align 8
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %2 = load i8, ptr %side, align 4
  %side6 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call3, i32 0, i32 3
  store i8 %2, ptr %side6, align 4
  %side7 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %3 = load i8, ptr %side7, align 4
  %call8 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %3) #17
  %price9 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %4 = load i64, ptr %price9, align 8
  %call10 = call noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %4) #17
  %call11 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call8, i64 noundef %call10) #17
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call11, i32 0, i32 1
  %5 = load i32, ptr %tail, align 4
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call3, i32 0, i32 5
  store i32 %5, ptr %previous, align 8
  %tail12 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call11, i32 0, i32 1
  %6 = load i32, ptr %tail12, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pool_13 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %tail14 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call11, i32 0, i32 1
  %7 = load i32, ptr %tail14, align 4
  %call15 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_13, i32 noundef %7) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call15, i32 0, i32 6
  store i32 %call, ptr %next, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call11, i32 0, i32 0
  store i32 %call, ptr %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tail16 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call11, i32 0, i32 1
  store i32 %call, ptr %tail16, align 4
  %conv = zext i32 %remaining to i64
  %quantity17 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call11, i32 0, i32 2
  %8 = load i64, ptr %quantity17, align 8
  %add = add i64 %8, %conv
  store i64 %add, ptr %quantity17, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call11, i32 0, i32 3
  %9 = load i32, ptr %orders, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %orders, align 8
  %conv18 = zext i32 %remaining to i64
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 11
  %10 = load i64, ptr %resting_quantity_, align 8
  %add19 = add i64 %10, %conv18
  store i64 %add19, ptr %resting_quantity_, align 8
  %price20 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %11 = load i64, ptr %price20, align 8
  %call21 = call noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %11) #17
  %rem = urem i64 %call21, 64
  %shl = shl i64 1, %rem
  %side22 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %12 = load i8, ptr %side22, align 4
  %call23 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %12) #17
  %div = udiv i64 %call21, 64
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call23, i64 noundef %div) #17
  %13 = load i64, ptr %call24, align 8
  %or = or i64 %13, %shl
  store i64 %or, ptr %call24, align 8
  %side25 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %14 = load i8, ptr %side25, align 4
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %14) #17
  %15 = load i64, ptr %call26, align 8
  %cmp27 = icmp eq i64 %15, -1
  br i1 %cmp27, label %if.then32, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %side28 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %16 = load i8, ptr %side28, align 4
  %cmp29 = icmp eq i8 %16, 0
  br i1 %cmp29, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %17 = load i64, ptr %call26, align 8
  %cmp30 = icmp ugt i64 %call21, %17
  br i1 %cmp30, label %if.then32, label %if.end33

cond.false:                                       ; preds = %lor.lhs.false
  %18 = load i64, ptr %call26, align 8
  %cmp31 = icmp ult i64 %call21, %18
  br i1 %cmp31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %cond.false, %cond.true, %if.end
  store i64 %call21, ptr %call26, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %cond.false, %cond.true
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 4
  %id34 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %19 = load i64, ptr %id34, align 8
  call void @_ZN6ledger6detail7IdIndex6insertEmj(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %19, i32 noundef %call) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZN6ledger6detail9OrderPool7acquireEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"struct.ledger::detail::OrderPool::Node", align 8
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  %0 = load i32, ptr %free_head_, align 8
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %free_head_2 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  %1 = load i32, ptr %free_head_2, align 8
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv = zext i32 %1 to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call, i32 0, i32 6
  %2 = load i32, ptr %next, align 4
  %free_head_3 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  store i32 %2, ptr %free_head_3, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %ref.tmp) #17
  %id = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 0
  store i64 0, ptr %id, align 8
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 1
  store i64 0, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 2
  store i32 0, ptr %quantity, align 8
  %side = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 3
  store i8 0, ptr %side, align 4
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 5
  store i32 -1, ptr %previous, align 8
  %next4 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 6
  store i32 -1, ptr %next4, align 4
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 7
  store i8 0, ptr %live, align 8
  %nodes_5 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv6 = zext i32 %1 to i64
  %call7 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_5, i64 noundef %conv6) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call7, ptr align 8 %ref.tmp, i64 33, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr %ref.tmp) #17
  %nodes_8 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv9 = zext i32 %1 to i64
  %call10 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_8, i64 noundef %conv9) #17
  %live11 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call10, i32 0, i32 7
  store i8 1, ptr %live11, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 2
  %3 = load i64, ptr %size_, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %size_, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ %1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %slot) #6 comdat align 2 {
entry:
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv = zext i32 %slot to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %0, i64 %__n
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 %__n
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail7IdIndex6insertEmj(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id, i32 noundef %slot) #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"struct.ledger::detail::IdIndex::Entry", align 8
  %call = call noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %position.0 = phi i64 [ %call, %entry ], [ %and, %while.body ]
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call2 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_, i64 noundef %position.0) #17
  %id3 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call2, i32 0, i32 0
  %0 = load i64, ptr %id3, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %add = add i64 %position.0, 1
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %1 = load i64, ptr %mask_, align 8
  %and = and i64 %add, %1
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %id4 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %ref.tmp, i32 0, i32 0
  store i64 %id, ptr %id4, align 8
  %slot5 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %ref.tmp, i32 0, i32 1
  store i32 %slot, ptr %slot5, align 8
  %entries_6 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call7 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_6, i64 noundef %position.0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call7, ptr align 8 %ref.tmp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 2
  %2 = load i64, ptr %size_, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %size_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %slot) #6 align 2 {
entry:
  %order = alloca %"struct.ledger::detail::OrderPool::Node", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %order) #17
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %slot) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %order, ptr align 8 %call, i64 40, i1 false)
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 1
  %0 = load i64, ptr %price, align 8
  %call2 = call noundef i64 @_ZNK6ledger8FastBook6offsetEl(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %0) #17
  %side = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %1 = load i8, ptr %side, align 4
  %call3 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %1) #17
  %call4 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call3, i64 noundef %call2) #17
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 5
  %2 = load i32, ptr %previous, align 8
  %cmp = icmp ne i32 %2, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 6
  %3 = load i32, ptr %next, align 4
  %pool_5 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %previous6 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 5
  %4 = load i32, ptr %previous6, align 8
  %call7 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_5, i32 noundef %4) #17
  %next8 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call7, i32 0, i32 6
  store i32 %3, ptr %next8, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %next9 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 6
  %5 = load i32, ptr %next9, align 4
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call4, i32 0, i32 0
  store i32 %5, ptr %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %next10 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 6
  %6 = load i32, ptr %next10, align 4
  %cmp11 = icmp ne i32 %6, -1
  br i1 %cmp11, label %if.then12, label %if.else18

if.then12:                                        ; preds = %if.end
  %previous13 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 5
  %7 = load i32, ptr %previous13, align 8
  %pool_14 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %next15 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 6
  %8 = load i32, ptr %next15, align 4
  %call16 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_14, i32 noundef %8) #17
  %previous17 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call16, i32 0, i32 5
  store i32 %7, ptr %previous17, align 8
  br label %if.end20

if.else18:                                        ; preds = %if.end
  %previous19 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 5
  %9 = load i32, ptr %previous19, align 8
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call4, i32 0, i32 1
  store i32 %9, ptr %tail, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then12
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 2
  %10 = load i32, ptr %quantity, align 8
  %conv = zext i32 %10 to i64
  %quantity21 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call4, i32 0, i32 2
  %11 = load i64, ptr %quantity21, align 8
  %sub = sub i64 %11, %conv
  store i64 %sub, ptr %quantity21, align 8
  %quantity22 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 2
  %12 = load i32, ptr %quantity22, align 8
  %conv23 = zext i32 %12 to i64
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 11
  %13 = load i64, ptr %resting_quantity_, align 8
  %sub24 = sub i64 %13, %conv23
  store i64 %sub24, ptr %resting_quantity_, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call4, i32 0, i32 3
  %14 = load i32, ptr %orders, align 8
  %dec = add i32 %14, -1
  store i32 %dec, ptr %orders, align 8
  %orders25 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call4, i32 0, i32 3
  %15 = load i32, ptr %orders25, align 8
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.end39, label %if.then26

if.then26:                                        ; preds = %if.end20
  %rem = urem i64 %call2, 64
  %shl = shl i64 1, %rem
  %not = xor i64 %shl, -1
  %side27 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %16 = load i8, ptr %side27, align 4
  %call28 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %16) #17
  %div = udiv i64 %call2, 64
  %call29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call28, i64 noundef %div) #17
  %17 = load i64, ptr %call29, align 8
  %and = and i64 %17, %not
  store i64 %and, ptr %call29, align 8
  %side30 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %18 = load i8, ptr %side30, align 4
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %18) #17
  %19 = load i64, ptr %call31, align 8
  %cmp32 = icmp eq i64 %19, %call2
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.then26
  %side34 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %20 = load i8, ptr %side34, align 4
  %call35 = call noundef i64 @_ZNK6ledger8FastBook9find_nextENS_4SideEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %20, i64 noundef %call2) #17
  %side36 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %21 = load i8, ptr %side36, align 4
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %21) #17
  store i64 %call35, ptr %call37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.then26
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end20
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 4
  %id = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 0
  %22 = load i64, ptr %id, align 8
  %call40 = call noundef zeroext i1 @_ZN6ledger6detail7IdIndex5eraseEm(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %22) #17
  %pool_41 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  call void @_ZN6ledger6detail9OrderPool7releaseEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_41, i32 noundef %slot) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr %order) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6ledger6detail7IdIndex5eraseEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"struct.ledger::detail::IdIndex::Entry", align 8
  %tobool = icmp ne i64 %id, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %hole.0 = phi i64 [ %call, %if.end ], [ %and, %while.body ]
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call2 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_, i64 noundef %hole.0) #17
  %id3 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call2, i32 0, i32 0
  %0 = load i64, ptr %id3, align 8
  %tobool4 = icmp ne i64 %0, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %entries_5 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call6 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_5, i64 noundef %hole.0) #17
  %id7 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 0
  %1 = load i64, ptr %id7, align 8
  %cmp = icmp ne i64 %1, %id
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %add = add i64 %hole.0, 1
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %3 = load i64, ptr %mask_, align 8
  %and = and i64 %add, %3
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %land.end
  %entries_8 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call9 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_8, i64 noundef %hole.0) #17
  %id10 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call9, i32 0, i32 0
  %4 = load i64, ptr %id10, align 8
  %tobool11 = icmp ne i64 %4, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %while.end
  br label %cleanup

if.end13:                                         ; preds = %while.end
  %add14 = add i64 %hole.0, 1
  %mask_15 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %5 = load i64, ptr %mask_15, align 8
  %and16 = and i64 %add14, %5
  br label %while.cond17

while.cond17:                                     ; preds = %if.end38, %if.end13
  %hole.1 = phi i64 [ %hole.0, %if.end13 ], [ %hole.2, %if.end38 ]
  %cursor.0 = phi i64 [ %and16, %if.end13 ], [ %and41, %if.end38 ]
  %entries_18 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call19 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_18, i64 noundef %cursor.0) #17
  %id20 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call19, i32 0, i32 0
  %6 = load i64, ptr %id20, align 8
  %tobool21 = icmp ne i64 %6, 0
  br i1 %tobool21, label %while.body22, label %while.end42

while.body22:                                     ; preds = %while.cond17
  %entries_23 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call24 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_23, i64 noundef %cursor.0) #17
  %id25 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call24, i32 0, i32 0
  %7 = load i64, ptr %id25, align 8
  %call26 = call noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %7) #17
  %sub = sub i64 %hole.1, %call26
  %mask_27 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %8 = load i64, ptr %mask_27, align 8
  %and28 = and i64 %sub, %8
  %sub29 = sub i64 %cursor.0, %call26
  %mask_30 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %9 = load i64, ptr %mask_30, align 8
  %and31 = and i64 %sub29, %9
  %cmp32 = icmp ult i64 %and28, %and31
  br i1 %cmp32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %while.body22
  %entries_34 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call35 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_34, i64 noundef %cursor.0) #17
  %entries_36 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call37 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_36, i64 noundef %hole.1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call37, ptr align 8 %call35, i64 12, i1 false)
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %while.body22
  %hole.2 = phi i64 [ %cursor.0, %if.then33 ], [ %hole.1, %while.body22 ]
  %add39 = add i64 %cursor.0, 1
  %mask_40 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %10 = load i64, ptr %mask_40, align 8
  %and41 = and i64 %add39, %10
  br label %while.cond17, !llvm.loop !19

while.end42:                                      ; preds = %while.cond17
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %id43 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %ref.tmp, i32 0, i32 0
  store i64 0, ptr %id43, align 8
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %ref.tmp, i32 0, i32 1
  store i32 -1, ptr %slot, align 8
  %entries_44 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call45 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_44, i64 noundef %hole.1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call45, ptr align 8 %ref.tmp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 2
  %11 = load i64, ptr %size_, align 8
  %dec = add i64 %11, -1
  store i64 %dec, ptr %size_, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end42, %if.then12
  %retval.0 = phi i1 [ true, %while.end42 ], [ false, %if.then12 ]
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %retval.1 = phi i1 [ %retval.0, %cleanup ], [ false, %if.then ]
  ret i1 %retval.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail9OrderPool7releaseEj(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %slot) #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"struct.ledger::detail::OrderPool::Node", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %ref.tmp) #17
  %id = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 0
  store i64 0, ptr %id, align 8
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 1
  store i64 0, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 2
  store i32 0, ptr %quantity, align 8
  %side = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 3
  store i8 0, ptr %side, align 4
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 5
  store i32 -1, ptr %previous, align 8
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 6
  store i32 -1, ptr %next, align 4
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %ref.tmp, i32 0, i32 7
  store i8 0, ptr %live, align 8
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv = zext i32 %slot to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call, ptr align 8 %ref.tmp, i64 33, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr %ref.tmp) #17
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  %0 = load i32, ptr %free_head_, align 8
  %nodes_2 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv3 = zext i32 %slot to i64
  %call4 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_2, i64 noundef %conv3) #17
  %next5 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call4, i32 0, i32 6
  store i32 %0, ptr %next5, align 4
  %free_head_6 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  store i32 %slot, ptr %free_head_6, align 8
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 2
  %1 = load i64, ptr %size_, align 8
  %dec = add i64 %1, -1
  store i64 %dec, ptr %size_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %slot, i64 noundef %sequence, ptr noundef nonnull align 8 dereferenceable(24) %output) #6 align 2 {
entry:
  %order = alloca %"struct.ledger::detail::OrderPool::Node", align 8
  %ref.tmp = alloca %"struct.ledger::Event", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %order) #17
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %slot) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %order, ptr align 8 %call, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp) #17
  %sequence2 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 0
  store i64 %sequence, ptr %sequence2, align 8
  %type = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 1
  store i8 4, ptr %type, align 8
  %reason = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 2
  store i8 0, ptr %reason, align 1
  %id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 3
  %id3 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 0
  %0 = load i64, ptr %id3, align 8
  store i64 %0, ptr %id, align 8
  %contra_id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 4
  store i64 0, ptr %contra_id, align 8
  %side = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 5
  %side4 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 3
  %1 = load i8, ptr %side4, align 4
  store i8 %1, ptr %side, align 8
  %price = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 6
  %price5 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 1
  %2 = load i64, ptr %price5, align 8
  store i64 %2, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 7
  %quantity6 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 2
  %3 = load i32, ptr %quantity6, align 8
  store i32 %3, ptr %quantity, align 8
  %remaining = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 8
  store i32 0, ptr %remaining, align 4
  %call7 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %output, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp) #17
  %quantity8 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %order, i32 0, i32 2
  %4 = load i32, ptr %quantity8, align 8
  %conv = zext i32 %4 to i64
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %cancelled = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 2
  %5 = load i64, ptr %cancelled, align 8
  %add = add i64 %5, %conv
  store i64 %add, ptr %cancelled, align 8
  call void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %slot) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr %order) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(56) %event) #6 comdat align 2 {
entry:
  %size_ = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this, i32 0, i32 1
  %0 = load i64, ptr %size_, align 8
  %storage_ = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %storage_) #17
  %cmp = icmp eq i64 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %storage_2 = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this, i32 0, i32 0
  %size_3 = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this, i32 0, i32 1
  %1 = load i64, ptr %size_3, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %size_3, align 8
  %call4 = call noundef nonnull align 8 dereferenceable(56) ptr @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EEixEm(ptr noundef nonnull align 8 dereferenceable(16) %storage_2, i64 noundef %1) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %call4, ptr align 8 %event, i64 56, i1 false)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext %reason, ptr noundef nonnull align 8 dereferenceable(24) %output) #6 align 2 {
entry:
  %ref.tmp = alloca %"struct.ledger::Event", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp) #17
  %sequence = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 0
  %sequence2 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 0
  %0 = load i64, ptr %sequence2, align 8
  store i64 %0, ptr %sequence, align 8
  %type = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 1
  store i8 6, ptr %type, align 8
  %reason3 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 2
  store i8 %reason, ptr %reason3, align 1
  %id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 3
  %id4 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %1 = load i64, ptr %id4, align 8
  store i64 %1, ptr %id, align 8
  %contra_id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 4
  store i64 0, ptr %contra_id, align 8
  %side = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 5
  %side5 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %2 = load i8, ptr %side5, align 4
  store i8 %2, ptr %side, align 8
  %price = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 6
  %price6 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %3 = load i64, ptr %price6, align 8
  store i64 %3, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 7
  %quantity7 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %4 = load i32, ptr %quantity7, align 8
  store i32 %4, ptr %quantity, align 8
  %remaining = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 8
  store i32 0, ptr %remaining, align 4
  %call = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %output, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp) #17
  %quantity8 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %5 = load i32, ptr %quantity8, align 8
  %conv = zext i32 %5 to i64
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %rejected = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 4
  %6 = load i64, ptr %rejected, align 8
  %add = add i64 %6, %conv
  store i64 %add, ptr %rejected, align 8
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6ledger8FastBook7processERKNS_7CommandERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, ptr noundef nonnull align 8 dereferenceable(24) %output) #6 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"struct.ledger::Event", align 8
  %remaining107 = alloca i32, align 4
  %ref.tmp140 = alloca %"struct.ledger::Event", align 8
  %ref.tmp156 = alloca %"struct.ledger::Event", align 8
  %ref.tmp176 = alloca %"struct.ledger::Event", align 8
  %ref.tmp210 = alloca %"struct.ledger::Event", align 8
  call void @_ZN6ledger11EventBuffer5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  %call = call noundef i64 @_ZNK6ledger11EventBuffer8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  %config_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  %max_orders = getelementptr inbounds %"struct.ledger::Config", ptr %config_, i32 0, i32 2
  %0 = load i32, ptr %max_orders, align 8
  %conv = zext i32 %0 to i64
  %call2 = call noundef i64 @_ZN6ledger23required_event_capacityEm(i64 noundef %conv) #17
  %cmp = icmp ult i64 %call, %call2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %action = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %1 = load i8, ptr %action, align 1
  %conv3 = zext i8 %1 to i32
  %cmp4 = icmp ugt i32 %conv3, 3
  br i1 %cmp4, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %side = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %2 = load i8, ptr %side, align 4
  %conv5 = zext i8 %2 to i32
  %cmp6 = icmp ugt i32 %conv5, 1
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %tif = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 6
  %3 = load i8, ptr %tif, align 2
  %conv8 = zext i8 %3 to i32
  %cmp9 = icmp ugt i32 %conv8, 2
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false, %if.end
  %call11 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 1, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %return

if.end12:                                         ; preds = %lor.lhs.false7
  %id = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %4 = load i64, ptr %id, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %if.end15, label %if.then13

if.then13:                                        ; preds = %if.end12
  %call14 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 2, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %return

if.end15:                                         ; preds = %if.end12
  %action16 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %5 = load i8, ptr %action16, align 1
  %cmp17 = icmp ne i8 %5, 2
  br i1 %cmp17, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %if.end15
  %quantity = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %6 = load i32, ptr %quantity, align 8
  %tobool18 = icmp ne i32 %6, 0
  br i1 %tobool18, label %if.end21, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  %call20 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 4, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %return

if.end21:                                         ; preds = %land.lhs.true, %if.end15
  %action22 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %7 = load i8, ptr %action22, align 1
  %cmp23 = icmp eq i8 %7, 0
  br i1 %cmp23, label %land.lhs.true27, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %if.end21
  %action25 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %8 = load i8, ptr %action25, align 1
  %cmp26 = icmp eq i8 %8, 3
  br i1 %cmp26, label %land.lhs.true27, label %if.end36

land.lhs.true27:                                  ; preds = %lor.lhs.false24, %if.end21
  %price = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %9 = load i64, ptr %price, align 8
  %config_28 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  %min_price = getelementptr inbounds %"struct.ledger::Config", ptr %config_28, i32 0, i32 0
  %10 = load i64, ptr %min_price, align 8
  %cmp29 = icmp slt i64 %9, %10
  br i1 %cmp29, label %if.then34, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true27
  %price31 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %11 = load i64, ptr %price31, align 8
  %config_32 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 0
  %max_price = getelementptr inbounds %"struct.ledger::Config", ptr %config_32, i32 0, i32 1
  %12 = load i64, ptr %max_price, align 8
  %cmp33 = icmp sgt i64 %11, %12
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %lor.lhs.false30, %land.lhs.true27
  %call35 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 3, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %return

if.end36:                                         ; preds = %lor.lhs.false30, %lor.lhs.false24
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 4
  %id37 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %13 = load i64, ptr %id37, align 8
  %call38 = call noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %index_, i64 noundef %13) #17
  %action39 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %14 = load i8, ptr %action39, align 1
  %cmp40 = icmp eq i8 %14, 2
  br i1 %cmp40, label %if.then44, label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %if.end36
  %action42 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %15 = load i8, ptr %action42, align 1
  %cmp43 = icmp eq i8 %15, 3
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %lor.lhs.false41, %if.end36
  %cmp45 = icmp eq i32 %call38, -1
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %if.then44
  %call47 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 6, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %cleanup

if.end48:                                         ; preds = %if.then44
  br label %if.end53

if.else:                                          ; preds = %lor.lhs.false41
  %cmp49 = icmp ne i32 %call38, -1
  br i1 %cmp49, label %if.then50, label %if.end52

if.then50:                                        ; preds = %if.else
  %call51 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 5, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %cleanup

if.end52:                                         ; preds = %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end48
  %action54 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %16 = load i8, ptr %action54, align 1
  %cmp55 = icmp eq i8 %16, 2
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end53
  %sequence = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 0
  %17 = load i64, ptr %sequence, align 8
  call void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %call38, i64 noundef %17, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %cleanup

if.end57:                                         ; preds = %if.end53
  %action58 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %18 = load i8, ptr %action58, align 1
  %cmp59 = icmp eq i8 %18, 3
  br i1 %cmp59, label %land.lhs.true60, label %if.end67

land.lhs.true60:                                  ; preds = %if.end57
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call61 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %call38) #17
  %side62 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call61, i32 0, i32 3
  %19 = load i8, ptr %side62, align 4
  %side63 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %20 = load i8, ptr %side63, align 4
  %cmp64 = icmp ne i8 %19, %20
  br i1 %cmp64, label %if.then65, label %if.end67

if.then65:                                        ; preds = %land.lhs.true60
  %call66 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 9, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %cleanup

if.end67:                                         ; preds = %land.lhs.true60, %if.end57
  %action68 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %21 = load i8, ptr %action68, align 1
  %cmp69 = icmp eq i8 %21, 0
  br i1 %cmp69, label %land.lhs.true70, label %if.end78

land.lhs.true70:                                  ; preds = %if.end67
  %tif71 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 6
  %22 = load i8, ptr %tif71, align 2
  %cmp72 = icmp eq i8 %22, 0
  br i1 %cmp72, label %land.lhs.true73, label %if.end78

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %pool_74 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call75 = call noundef zeroext i1 @_ZNK6ledger6detail9OrderPool4fullEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_74) #17
  br i1 %call75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %land.lhs.true73
  %call77 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 7, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %cleanup

if.end78:                                         ; preds = %land.lhs.true73, %land.lhs.true70, %if.end67
  %tif79 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 6
  %23 = load i8, ptr %tif79, align 2
  %cmp80 = icmp eq i8 %23, 2
  br i1 %cmp80, label %land.lhs.true81, label %if.end85

land.lhs.true81:                                  ; preds = %if.end78
  %call82 = call noundef zeroext i1 @_ZNK6ledger8FastBook8can_fillERKNS_7CommandE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command) #17
  br i1 %call82, label %if.end85, label %if.then83

if.then83:                                        ; preds = %land.lhs.true81
  %call84 = call noundef i32 @_ZN6ledger8FastBook6rejectERKNS_7CommandENS_12RejectReasonERNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i8 noundef zeroext 8, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %cleanup

if.end85:                                         ; preds = %land.lhs.true81, %if.end78
  %action86 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %24 = load i8, ptr %action86, align 1
  %cmp87 = icmp eq i8 %24, 3
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %if.end85
  %sequence89 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 0
  %25 = load i64, ptr %sequence89, align 8
  call void @_ZN6ledger8FastBook6cancelEjmRNS_11EventBufferE(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %call38, i64 noundef %25, ptr noundef nonnull align 8 dereferenceable(24) %output) #17
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %if.end85
  %action91 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %26 = load i8, ptr %action91, align 1
  %cmp92 = icmp eq i8 %26, 1
  br i1 %cmp92, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end90
  br label %cond.end

cond.false:                                       ; preds = %if.end90
  %price93 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 2
  %27 = load i64, ptr %price93, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %27, %cond.false ]
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp) #17
  %sequence94 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 0
  %sequence95 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 0
  %28 = load i64, ptr %sequence95, align 8
  store i64 %28, ptr %sequence94, align 8
  %type = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 1
  store i8 0, ptr %type, align 8
  %reason = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 2
  store i8 0, ptr %reason, align 1
  %id96 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 3
  %id97 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %29 = load i64, ptr %id97, align 8
  store i64 %29, ptr %id96, align 8
  %contra_id = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 4
  store i64 0, ptr %contra_id, align 8
  %side98 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 5
  %side99 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %30 = load i8, ptr %side99, align 4
  store i8 %30, ptr %side98, align 8
  %price100 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 6
  store i64 %cond, ptr %price100, align 8
  %quantity101 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 7
  %quantity102 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %31 = load i32, ptr %quantity102, align 8
  store i32 %31, ptr %quantity101, align 8
  %remaining = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp, i32 0, i32 8
  %quantity103 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %32 = load i32, ptr %quantity103, align 8
  store i32 %32, ptr %remaining, align 4
  %call104 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %output, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp) #17
  %quantity105 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %33 = load i32, ptr %quantity105, align 8
  %conv106 = zext i32 %33 to i64
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %submitted = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 0
  %34 = load i64, ptr %submitted, align 8
  %add = add i64 %34, %conv106
  store i64 %add, ptr %submitted, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %remaining107) #17
  %quantity108 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 3
  %35 = load i32, ptr %quantity108, align 8
  store i32 %35, ptr %remaining107, align 4
  %side109 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %36 = load i8, ptr %side109, align 4
  %cmp110 = icmp eq i8 %36, 0
  %37 = zext i1 %cmp110 to i64
  %cond111 = select i1 %cmp110, i8 1, i8 0
  br label %while.cond

while.cond:                                       ; preds = %if.end197, %cond.end
  %38 = load i32, ptr %remaining107, align 4
  %tobool112 = icmp ne i32 %38, 0
  br i1 %tobool112, label %land.lhs.true113, label %land.end

land.lhs.true113:                                 ; preds = %while.cond
  %call114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond111) #17
  %39 = load i64, ptr %call114, align 8
  %cmp115 = icmp ne i64 %39, -1
  br i1 %cmp115, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true113
  %call116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond111) #17
  %40 = load i64, ptr %call116, align 8
  %call117 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %40) #17
  %call118 = call noundef zeroext i1 @_ZNK6ledger8FastBook7crossesERKNS_7CommandEl(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i64 noundef %call117) #17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true113, %while.cond
  %41 = phi i1 [ false, %land.lhs.true113 ], [ false, %while.cond ], [ %call118, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call119 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond111) #17
  %call120 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond111) #17
  %42 = load i64, ptr %call120, align 8
  %call121 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call119, i64 noundef %42) #17
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call121, i32 0, i32 0
  %43 = load i32, ptr %head, align 8
  %pool_122 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call123 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZN6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_122, i32 noundef %43) #17
  %quantity124 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 2
  %call125 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %remaining107, ptr noundef nonnull align 4 dereferenceable(4) %quantity124)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %while.body
  %44 = load i32, ptr %call125, align 4
  %45 = load i32, ptr %remaining107, align 4
  %sub = sub i32 %45, %44
  store i32 %sub, ptr %remaining107, align 4
  %quantity126 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 2
  %46 = load i32, ptr %quantity126, align 8
  %sub127 = sub i32 %46, %44
  store i32 %sub127, ptr %quantity126, align 8
  %conv128 = zext i32 %44 to i64
  %call129 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond111) #17
  %call130 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %cond111) #17
  %47 = load i64, ptr %call130, align 8
  %call131 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call129, i64 noundef %47) #17
  %quantity132 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call131, i32 0, i32 2
  %48 = load i64, ptr %quantity132, align 8
  %sub133 = sub i64 %48, %conv128
  store i64 %sub133, ptr %quantity132, align 8
  %conv134 = zext i32 %44 to i64
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 11
  %49 = load i64, ptr %resting_quantity_, align 8
  %sub135 = sub i64 %49, %conv134
  store i64 %sub135, ptr %resting_quantity_, align 8
  %conv136 = zext i32 %44 to i64
  %statistics_137 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %executed = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_137, i32 0, i32 1
  %50 = load i64, ptr %executed, align 8
  %add138 = add i64 %50, %conv136
  store i64 %add138, ptr %executed, align 8
  %statistics_139 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %trade_count = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_139, i32 0, i32 5
  %51 = load i64, ptr %trade_count, align 8
  %inc = add i64 %51, 1
  store i64 %inc, ptr %trade_count, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp140) #17
  %sequence141 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 0
  %sequence142 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 0
  %52 = load i64, ptr %sequence142, align 8
  store i64 %52, ptr %sequence141, align 8
  %type143 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 1
  store i8 1, ptr %type143, align 8
  %reason144 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 2
  store i8 0, ptr %reason144, align 1
  %id145 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 3
  %id146 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %53 = load i64, ptr %id146, align 8
  store i64 %53, ptr %id145, align 8
  %contra_id147 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 4
  %id148 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 0
  %54 = load i64, ptr %id148, align 8
  store i64 %54, ptr %contra_id147, align 8
  %side149 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 5
  %side150 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %55 = load i8, ptr %side150, align 4
  store i8 %55, ptr %side149, align 8
  %price151 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 6
  %price152 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 1
  %56 = load i64, ptr %price152, align 8
  store i64 %56, ptr %price151, align 8
  %quantity153 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 7
  store i32 %44, ptr %quantity153, align 8
  %remaining154 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp140, i32 0, i32 8
  %57 = load i32, ptr %remaining107, align 4
  store i32 %57, ptr %remaining154, align 4
  %call155 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %output, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp140) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp140) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp156) #17
  %sequence157 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 0
  %sequence158 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 0
  %58 = load i64, ptr %sequence158, align 8
  store i64 %58, ptr %sequence157, align 8
  %type159 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 1
  %quantity160 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 2
  %59 = load i32, ptr %quantity160, align 8
  %tobool161 = icmp ne i32 %59, 0
  %60 = zext i1 %tobool161 to i64
  %cond162 = select i1 %tobool161, i8 2, i8 3
  store i8 %cond162, ptr %type159, align 8
  %reason163 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 2
  store i8 0, ptr %reason163, align 1
  %id164 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 3
  %id165 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 0
  %61 = load i64, ptr %id165, align 8
  store i64 %61, ptr %id164, align 8
  %contra_id166 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 4
  %id167 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %62 = load i64, ptr %id167, align 8
  store i64 %62, ptr %contra_id166, align 8
  %side168 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 5
  %side169 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 3
  %63 = load i8, ptr %side169, align 4
  store i8 %63, ptr %side168, align 8
  %price170 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 6
  %price171 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 1
  %64 = load i64, ptr %price171, align 8
  store i64 %64, ptr %price170, align 8
  %quantity172 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 7
  store i32 %44, ptr %quantity172, align 8
  %remaining173 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp156, i32 0, i32 8
  %quantity174 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 2
  %65 = load i32, ptr %quantity174, align 8
  store i32 %65, ptr %remaining173, align 4
  %call175 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %output, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp156) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp156) #17
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp176) #17
  %sequence177 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 0
  %sequence178 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 0
  %66 = load i64, ptr %sequence178, align 8
  store i64 %66, ptr %sequence177, align 8
  %type179 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 1
  %67 = load i32, ptr %remaining107, align 4
  %tobool180 = icmp ne i32 %67, 0
  %68 = zext i1 %tobool180 to i64
  %cond181 = select i1 %tobool180, i8 2, i8 3
  store i8 %cond181, ptr %type179, align 8
  %reason182 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 2
  store i8 0, ptr %reason182, align 1
  %id183 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 3
  %id184 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %69 = load i64, ptr %id184, align 8
  store i64 %69, ptr %id183, align 8
  %contra_id185 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 4
  %id186 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 0
  %70 = load i64, ptr %id186, align 8
  store i64 %70, ptr %contra_id185, align 8
  %side187 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 5
  %side188 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %71 = load i8, ptr %side188, align 4
  store i8 %71, ptr %side187, align 8
  %price189 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 6
  %price190 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 1
  %72 = load i64, ptr %price190, align 8
  store i64 %72, ptr %price189, align 8
  %quantity191 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 7
  store i32 %44, ptr %quantity191, align 8
  %remaining192 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp176, i32 0, i32 8
  store i32 %67, ptr %remaining192, align 4
  %call193 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %output, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp176) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp176) #17
  %quantity194 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call123, i32 0, i32 2
  %73 = load i32, ptr %quantity194, align 8
  %tobool195 = icmp ne i32 %73, 0
  br i1 %tobool195, label %if.end197, label %if.then196

if.then196:                                       ; preds = %invoke.cont
  call void @_ZN6ledger8FastBook6unlinkEj(ptr noundef nonnull align 8 dereferenceable(280) %this, i32 noundef %43) #17
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %invoke.cont
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %land.end
  %74 = load i32, ptr %remaining107, align 4
  %tobool198 = icmp ne i32 %74, 0
  br i1 %tobool198, label %if.then199, label %if.end225

if.then199:                                       ; preds = %while.end
  %action200 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 5
  %75 = load i8, ptr %action200, align 1
  %cmp201 = icmp ne i8 %75, 1
  br i1 %cmp201, label %land.lhs.true202, label %if.else206

land.lhs.true202:                                 ; preds = %if.then199
  %tif203 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 6
  %76 = load i8, ptr %tif203, align 2
  %cmp204 = icmp eq i8 %76, 0
  br i1 %cmp204, label %if.then205, label %if.else206

if.then205:                                       ; preds = %land.lhs.true202
  %77 = load i32, ptr %remaining107, align 4
  call void @_ZN6ledger8FastBook11add_restingERKNS_7CommandEj(ptr noundef nonnull align 8 dereferenceable(280) %this, ptr noundef nonnull align 8 dereferenceable(31) %command, i32 noundef %77) #17
  br label %if.end224

if.else206:                                       ; preds = %land.lhs.true202, %if.then199
  %78 = load i32, ptr %remaining107, align 4
  %conv207 = zext i32 %78 to i64
  %statistics_208 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %expired = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_208, i32 0, i32 3
  %79 = load i64, ptr %expired, align 8
  %add209 = add i64 %79, %conv207
  store i64 %add209, ptr %expired, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr %ref.tmp210) #17
  %sequence211 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 0
  %sequence212 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 0
  %80 = load i64, ptr %sequence212, align 8
  store i64 %80, ptr %sequence211, align 8
  %type213 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 1
  store i8 5, ptr %type213, align 8
  %reason214 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 2
  store i8 0, ptr %reason214, align 1
  %id215 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 3
  %id216 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 1
  %81 = load i64, ptr %id216, align 8
  store i64 %81, ptr %id215, align 8
  %contra_id217 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 4
  store i64 0, ptr %contra_id217, align 8
  %side218 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 5
  %side219 = getelementptr inbounds %"struct.ledger::Command", ptr %command, i32 0, i32 4
  %82 = load i8, ptr %side219, align 4
  store i8 %82, ptr %side218, align 8
  %price220 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 6
  store i64 %cond, ptr %price220, align 8
  %quantity221 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 7
  %83 = load i32, ptr %remaining107, align 4
  store i32 %83, ptr %quantity221, align 8
  %remaining222 = getelementptr inbounds %"struct.ledger::Event", ptr %ref.tmp210, i32 0, i32 8
  store i32 0, ptr %remaining222, align 4
  %call223 = call noundef zeroext i1 @_ZN6ledger11EventBuffer4pushERKNS_5EventE(ptr noundef nonnull align 8 dereferenceable(24) %output, ptr noundef nonnull align 8 dereferenceable(56) %ref.tmp210) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr %ref.tmp210) #17
  br label %if.end224

if.end224:                                        ; preds = %if.else206, %if.then205
  br label %if.end225

if.end225:                                        ; preds = %if.end224, %while.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %remaining107) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end225, %if.then83, %if.then76, %if.then65, %if.then56, %if.then50, %if.then46
  %retval.0 = phi i32 [ %call47, %if.then46 ], [ 0, %if.then56 ], [ %call66, %if.then65 ], [ %call77, %if.then76 ], [ 0, %if.end225 ], [ %call84, %if.then83 ], [ %call51, %if.then50 ]
  br label %return

return:                                           ; preds = %cleanup, %if.then34, %if.then19, %if.then13, %if.then10, %if.then
  %retval.1 = phi i32 [ 2, %if.then ], [ %call11, %if.then10 ], [ %call35, %if.then34 ], [ %retval.0, %cleanup ], [ %call20, %if.then19 ], [ %call14, %if.then13 ]
  ret i32 %retval.1

terminate.lpad:                                   ; preds = %while.body
  %84 = landingpad { ptr, i32 }
          catch ptr null
  %85 = extractvalue { ptr, i32 } %84, 0
  call void @__clang_call_terminate(ptr %85) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger11EventBuffer5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %size_ = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this, i32 0, i32 1
  store i64 0, ptr %size_, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger11EventBuffer8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %storage_ = getelementptr inbounds %"class.ledger::EventBuffer", ptr %this, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %storage_) #17
  ret i64 %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN6ledger23required_event_capacityEm(i64 noundef %max_orders) #6 comdat {
entry:
  %mul = mul i64 3, %max_orders
  %add = add i64 %mul, 4
  ret i64 %add
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #6 comdat align 2 {
entry:
  %tobool = icmp ne i64 %id, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #17
  br label %while.cond

while.cond:                                       ; preds = %if.end11, %if.end
  %position.0 = phi i64 [ %call, %if.end ], [ %and, %if.end11 ]
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call2 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_, i64 noundef %position.0) #17
  %id3 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call2, i32 0, i32 0
  %0 = load i64, ptr %id3, align 8
  %tobool4 = icmp ne i64 %0, 0
  br i1 %tobool4, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %entries_5 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call6 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_5, i64 noundef %position.0) #17
  %id7 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 0
  %1 = load i64, ptr %id7, align 8
  %cmp = icmp eq i64 %1, %id
  br i1 %cmp, label %if.then8, label %if.end11

if.then8:                                         ; preds = %while.body
  %entries_9 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call10 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %entries_9, i64 noundef %position.0) #17
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call10, i32 0, i32 1
  %2 = load i32, ptr %slot, align 8
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %add = add i64 %position.0, 1
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %3 = load i64, ptr %mask_, align 8
  %and = and i64 %add, %3
  br label %while.cond, !llvm.loop !21

while.end:                                        ; preds = %while.cond
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then8
  %retval.0 = phi i32 [ %2, %if.then8 ], [ -1, %while.end ]
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -1, %if.then ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6ledger6detail9OrderPool4fullEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  %0 = load i32, ptr %free_head_, align 8
  %cmp = icmp eq i32 %0, -1
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIjERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %__a, ptr noundef nonnull align 4 dereferenceable(4) %__b) #8 comdat {
entry:
  %0 = load i32, ptr %__b, align 4
  %1 = load i32, ptr %__a, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %__b, %if.then ], [ %__a, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) #9 comdat {
  %2 = call ptr @__cxa_begin_catch(ptr %0) #17
  call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr)

declare void @_ZSt9terminatev()

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK6ledger8FastBook8snapshotEv(ptr dead_on_unwind noalias writable sret(%"struct.ledger::Snapshot") align 8 %agg.result, ptr noundef nonnull align 8 dereferenceable(280) %this) #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %append = alloca %class.anon, align 8
  call void @_ZN6ledger8SnapshotC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %agg.result) #17
  %orders = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i32 0, i32 0
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call = call noundef i64 @_ZNK6ledger6detail9OrderPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_) #17
  invoke void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %orders, i64 noundef %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %stats = getelementptr inbounds %"struct.ledger::Snapshot", ptr %agg.result, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %stats, ptr align 8 %statistics_, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %append) #17
  %0 = getelementptr inbounds %class.anon, ptr %append, i32 0, i32 0
  store ptr %this, ptr %0, align 8
  %1 = getelementptr inbounds %class.anon, ptr %append, i32 0, i32 1
  store ptr %agg.result, ptr %1, align 8
  %bids_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 5
  %call2 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %bids_) #17
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %i.0 = phi i64 [ %call2, %invoke.cont ], [ %dec, %for.inc ]
  %cmp = icmp ne i64 %i.0, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

lpad:                                             ; preds = %entry
  %2 = landingpad { ptr, i32 }
          cleanup
  %3 = extractvalue { ptr, i32 } %2, 0
  %4 = extractvalue { ptr, i32 } %2, 1
  br label %ehcleanup15

for.body:                                         ; preds = %for.cond
  %sub = sub i64 %i.0, 1
  invoke void @"_ZZNK6ledger8FastBook8snapshotEvENK3$_0clENS_4SideEm"(ptr noundef nonnull align 8 dereferenceable(16) %append, i8 noundef zeroext 0, i64 noundef %sub)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont4
  %dec = add i64 %i.0, -1
  br label %for.cond, !llvm.loop !22

lpad3:                                            ; preds = %for.body
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  br label %ehcleanup

for.end:                                          ; preds = %for.cond.cleanup
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc13, %for.end
  %i5.0 = phi i64 [ 0, %for.end ], [ %inc, %for.inc13 ]
  %asks_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 6
  %call7 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %asks_) #17
  %cmp8 = icmp ult i64 %i5.0, %call7
  br i1 %cmp8, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond6
  br label %for.end14

for.body10:                                       ; preds = %for.cond6
  invoke void @"_ZZNK6ledger8FastBook8snapshotEvENK3$_0clENS_4SideEm"(ptr noundef nonnull align 8 dereferenceable(16) %append, i8 noundef zeroext 1, i64 noundef %i5.0)
          to label %invoke.cont12 unwind label %lpad11

invoke.cont12:                                    ; preds = %for.body10
  br label %for.inc13

for.inc13:                                        ; preds = %invoke.cont12
  %inc = add i64 %i5.0, 1
  br label %for.cond6, !llvm.loop !23

lpad11:                                           ; preds = %for.body10
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  br label %ehcleanup

for.end14:                                        ; preds = %for.cond.cleanup9
  call void @llvm.lifetime.end.p0(i64 16, ptr %append) #17
  br i1 true, label %nrvo.skipdtor, label %nrvo.unused

ehcleanup:                                        ; preds = %lpad11, %lpad3
  %ehselector.slot.0 = phi i32 [ %7, %lpad3 ], [ %10, %lpad11 ]
  %exn.slot.0 = phi ptr [ %6, %lpad3 ], [ %9, %lpad11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %append) #17
  br label %ehcleanup15

nrvo.unused:                                      ; preds = %for.end14
  call void @_ZN6ledger8SnapshotD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %agg.result) #17
  br label %nrvo.skipdtor

nrvo.skipdtor:                                    ; preds = %nrvo.unused, %for.end14
  ret void

ehcleanup15:                                      ; preds = %ehcleanup, %lpad
  %ehselector.slot.1 = phi i32 [ %ehselector.slot.0, %ehcleanup ], [ %4, %lpad ]
  %exn.slot.1 = phi ptr [ %exn.slot.0, %ehcleanup ], [ %3, %lpad ]
  call void @_ZN6ledger8SnapshotD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %agg.result) #17
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup15
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn.slot.1, 0
  %lpad.val16 = insertvalue { ptr, i32 } %lpad.val, i32 %ehselector.slot.1, 1
  resume { ptr, i32 } %lpad.val16
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger8SnapshotC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %this) unnamed_addr #8 comdat align 2 {
entry:
  %orders = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this, i32 0, i32 0
  call void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %orders) #17
  %levels = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this, i32 0, i32 1
  call void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %levels) #17
  %stats = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this, i32 0, i32 2
  call void @_ZN6ledger10StatisticsC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %stats) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %cmp = icmp ugt i64 %__n, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.4) #18
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %cmp3 = icmp ult i64 %call2, %__n
  br i1 %cmp3, label %if.then4, label %if.end24

if.then4:                                         ; preds = %if.end
  %call5 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call6 = call noundef ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call8 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call9 = call noundef ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %1, ptr noundef %call6, ptr noundef nonnull align 1 dereferenceable(1) %call8) #17
  %_M_impl10 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start11 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl10, i32 0, i32 0
  %2 = load ptr, ptr %_M_start11, align 8
  %_M_impl12 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl12, i32 0, i32 2
  %3 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl13 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start14 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl13, i32 0, i32 0
  %4 = load ptr, ptr %_M_start14, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %2, i64 noundef %sub.ptr.div)
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl15, i32 0, i32 0
  store ptr %call6, ptr %_M_start16, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %call6, i64 %call5
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl17, i32 0, i32 1
  store ptr %add.ptr, ptr %_M_finish18, align 8
  %_M_impl19 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start20 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl19, i32 0, i32 0
  %5 = load ptr, ptr %_M_start20, align 8
  %add.ptr21 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %5, i64 %__n
  %_M_impl22 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_end_of_storage23 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl22, i32 0, i32 2
  store ptr %add.ptr21, ptr %_M_end_of_storage23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then4, %if.end
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger6detail9OrderPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %size_, align 8
  ret i64 %0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZNK6ledger8FastBook8snapshotEvENK3$_0clENS_4SideEm"(ptr noundef nonnull align 8 dereferenceable(16) %this, i8 noundef zeroext %side, i64 noundef %price_index) #10 align 2 {
entry:
  %ref.tmp = alloca %"struct.ledger::LevelSnapshot", align 8
  %ref.tmp10 = alloca %"struct.ledger::RestingOrder", align 8
  %0 = getelementptr inbounds %class.anon, ptr %this, i32 0, i32 0
  %1 = load ptr, ptr %0, align 8
  %call = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %1, i8 noundef zeroext %side) #17
  %call2 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call, i64 noundef %price_index) #17
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call2, i32 0, i32 3
  %2 = load i32, ptr %orders, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %class.anon, ptr %this, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %levels = getelementptr inbounds %"struct.ledger::Snapshot", ptr %4, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr %ref.tmp) #17
  %side3 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp, i32 0, i32 0
  store i8 %side, ptr %side3, align 8
  %price = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp, i32 0, i32 2
  %call4 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %1, i64 noundef %price_index) #17
  store i64 %call4, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp, i32 0, i32 3
  %quantity5 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call2, i32 0, i32 2
  %5 = load i64, ptr %quantity5, align 8
  store i64 %5, ptr %quantity, align 8
  %orders6 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %ref.tmp, i32 0, i32 4
  %orders7 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call2, i32 0, i32 3
  %6 = load i32, ptr %orders7, align 8
  store i32 %6, ptr %orders6, align 8
  call void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %levels, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp)
  call void @llvm.lifetime.end.p0(i64 32, ptr %ref.tmp) #17
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call2, i32 0, i32 0
  %7 = load i32, ptr %head, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %slot.0 = phi i32 [ %7, %if.end ], [ %14, %for.inc ]
  %cmp = icmp ne i32 %slot.0, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %1, i32 0, i32 3
  %call8 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_, i32 noundef %slot.0) #17
  %8 = getelementptr inbounds %class.anon, ptr %this, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %orders9 = getelementptr inbounds %"struct.ledger::Snapshot", ptr %9, i32 0, i32 0
  call void @llvm.lifetime.start.p0(i64 32, ptr %ref.tmp10) #17
  %id = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10, i32 0, i32 0
  %id11 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call8, i32 0, i32 0
  %10 = load i64, ptr %id11, align 8
  store i64 %10, ptr %id, align 8
  %side12 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10, i32 0, i32 1
  %side13 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call8, i32 0, i32 3
  %11 = load i8, ptr %side13, align 4
  store i8 %11, ptr %side12, align 8
  %price14 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10, i32 0, i32 3
  %price15 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call8, i32 0, i32 1
  %12 = load i64, ptr %price15, align 8
  store i64 %12, ptr %price14, align 8
  %quantity16 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %ref.tmp10, i32 0, i32 4
  %quantity17 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call8, i32 0, i32 2
  %13 = load i32, ptr %quantity17, align 8
  store i32 %13, ptr %quantity16, align 8
  call void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %orders9, ptr noundef nonnull align 8 dereferenceable(28) %ref.tmp10)
  call void @llvm.lifetime.end.p0(i64 32, ptr %ref.tmp10) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %pool_18 = getelementptr inbounds %"class.ledger::FastBook", ptr %1, i32 0, i32 3
  %call19 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_18, i32 noundef %slot.0) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call19, i32 0, i32 6
  %14 = load i32, ptr %next, align 4
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond.cleanup
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %cleanup.dest.slot.0 = phi i32 [ 0, %for.end ], [ 1, %if.then ]
  switch i32 %cleanup.dest.slot.0, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger8SnapshotD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %this) unnamed_addr #8 comdat align 2 {
entry:
  %levels = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this, i32 0, i32 1
  call void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %levels) #17
  %orders = getelementptr inbounds %"struct.ledger::Snapshot", ptr %this, i32 0, i32 0
  call void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %orders) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK6ledger8FastBook16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(280) %this) #0 align 2 personality ptr @__gxx_personality_v0 {
entry:
  %seen = alloca %"class.std::vector.25", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp10 = alloca %"class.std::allocator.26", align 1
  %ref.tmp11 = alloca %"class.std::initializer_list", align 8
  %ref.tmp12 = alloca [2 x i8], align 1
  %ref.tmp39 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp70 = alloca %"struct.std::_Bit_reference", align 8
  %__begin1159 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end1161 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %ref.tmp178 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp223 = alloca %"struct.std::_Bit_reference", align 8
  %pool_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call = call noundef zeroext i1 @_ZNK6ledger6detail9OrderPool16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_)
  br i1 %call, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %index_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 4
  %call2 = call noundef zeroext i1 @_ZNK6ledger6detail7IdIndex16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %index_) #17
  br i1 %call2, label %lor.lhs.false3, label %if.then

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %pool_4 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call5 = call noundef i64 @_ZNK6ledger6detail9OrderPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_4) #17
  %index_6 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 4
  %call7 = call noundef i64 @_ZNK6ledger6detail7IdIndex4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %index_6) #17
  %cmp = icmp ne i64 %call5, %call7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false3
  call void @llvm.lifetime.start.p0(i64 40, ptr %seen) #17
  %pool_8 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call9 = call noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_8) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  store i8 0, ptr %ref.tmp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp10) #17
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp10) #17
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %call9, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp10)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  call void @_ZNSaIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp11) #17
  call void @llvm.lifetime.start.p0(i64 2, ptr %ref.tmp12) #17
  %arrayinit.begin = getelementptr inbounds [2 x i8], ptr %ref.tmp12, i64 0, i64 0
  store i8 0, ptr %arrayinit.begin, align 1
  %arrayinit.element = getelementptr inbounds i8, ptr %arrayinit.begin, i64 1
  store i8 1, ptr %arrayinit.element, align 1
  %_M_array = getelementptr inbounds %"class.std::initializer_list", ptr %ref.tmp11, i32 0, i32 0
  %arraystart = getelementptr inbounds [2 x i8], ptr %ref.tmp12, i64 0, i64 0
  store ptr %arraystart, ptr %_M_array, align 8
  %_M_len = getelementptr inbounds %"class.std::initializer_list", ptr %ref.tmp11, i32 0, i32 1
  store i64 2, ptr %_M_len, align 8
  %call13 = call noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE5beginEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp11) #17
  %call14 = call noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE3endEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp11) #17
  br label %for.cond

for.cond:                                         ; preds = %for.inc143, %invoke.cont
  %__begin1.0 = phi ptr [ %call13, %invoke.cont ], [ %incdec.ptr, %for.inc143 ]
  %total_quantity.0 = phi i64 [ 0, %invoke.cont ], [ %total_quantity.4, %for.inc143 ]
  %order_count.0 = phi i64 [ 0, %invoke.cont ], [ %order_count.4, %for.inc143 ]
  %retval.0 = phi i1 [ undef, %invoke.cont ], [ %retval.8, %for.inc143 ]
  %cmp15 = icmp ne ptr %__begin1.0, %call14
  br i1 %cmp15, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %cleanup144

lpad:                                             ; preds = %if.end
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSaIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp10) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %ehcleanup270

for.body:                                         ; preds = %for.cond
  %3 = load i8, ptr %__begin1.0, align 1
  %call16 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6levelsENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %3) #17
  %call17 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger8FastBook6bitmapENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %3) #17
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc112, %for.body
  %i.0 = phi i64 [ 0, %for.body ], [ %inc113, %for.inc112 ]
  %total_quantity.1 = phi i64 [ %total_quantity.0, %for.body ], [ %total_quantity.3, %for.inc112 ]
  %order_count.1 = phi i64 [ %order_count.0, %for.body ], [ %order_count.3, %for.inc112 ]
  %retval.1 = phi i1 [ %retval.0, %for.body ], [ %retval.6, %for.inc112 ]
  %call19 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %call16) #17
  %cmp20 = icmp ult i64 %i.0, %call19
  br i1 %cmp20, label %for.body22, label %for.cond.cleanup21

for.cond.cleanup21:                               ; preds = %for.cond18
  br label %cleanup114

for.body22:                                       ; preds = %for.cond18
  %call23 = call noundef nonnull align 8 dereferenceable(20) ptr @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call16, i64 noundef %i.0) #17
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call23, i32 0, i32 3
  %4 = load i32, ptr %orders, align 8
  %cmp24 = icmp ne i32 %4, 0
  %conv = zext i1 %cmp24 to i32
  %div = udiv i64 %i.0, 64
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %call17, i64 noundef %div) #17
  %5 = load i64, ptr %call25, align 8
  %rem = urem i64 %i.0, 64
  %shl = shl i64 1, %rem
  %and = and i64 %5, %shl
  %cmp26 = icmp ne i64 %and, 0
  %conv27 = zext i1 %cmp26 to i32
  %cmp28 = icmp ne i32 %conv, %conv27
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body22
  br label %cleanup108

if.end30:                                         ; preds = %for.body22
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call23, i32 0, i32 0
  %6 = load i32, ptr %head, align 8
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc, %if.end30
  %quantity.0 = phi i64 [ 0, %if.end30 ], [ %quantity.1, %for.inc ]
  %count.0 = phi i32 [ 0, %if.end30 ], [ %count.1, %for.inc ]
  %previous.0 = phi i32 [ -1, %if.end30 ], [ %previous.1, %for.inc ]
  %slot.0 = phi i32 [ %6, %if.end30 ], [ %27, %for.inc ]
  %retval.2 = phi i1 [ %retval.1, %if.end30 ], [ %retval.3, %for.inc ]
  %cmp32 = icmp ne i32 %slot.0, -1
  br i1 %cmp32, label %for.body34, label %for.cond.cleanup33

for.cond.cleanup33:                               ; preds = %for.cond31
  br label %cleanup80

for.body34:                                       ; preds = %for.cond31
  %conv35 = zext i32 %slot.0 to i64
  %pool_36 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call37 = call noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_36) #17
  %cmp38 = icmp uge i64 %conv35, %call37
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp39) #17
  br i1 %cmp38, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.body34
  %conv40 = zext i32 %slot.0 to i64
  %call43 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %conv40)
          to label %invoke.cont42 unwind label %lpad41

invoke.cont42:                                    ; preds = %lor.rhs
  %7 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp39, i32 0, i32 0
  %8 = extractvalue { ptr, i64 } %call43, 0
  store ptr %8, ptr %7, align 8
  %9 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp39, i32 0, i32 1
  %10 = extractvalue { ptr, i64 } %call43, 1
  store i64 %10, ptr %9, align 8
  %call44 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp39) #17
  br label %lor.end

lor.end:                                          ; preds = %invoke.cont42, %for.body34
  %11 = phi i1 [ true, %for.body34 ], [ %call44, %invoke.cont42 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp39) #17
  br i1 %11, label %if.then45, label %if.end46

if.then45:                                        ; preds = %lor.end
  br label %cleanup80

lpad41:                                           ; preds = %lor.rhs
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp39) #17
  br label %ehcleanup

if.end46:                                         ; preds = %lor.end
  %pool_47 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call48 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_47, i32 noundef %slot.0) #17
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call48, i32 0, i32 7
  %15 = load i8, ptr %live, align 8, !range !8, !noundef !9
  %tobool = trunc i8 %15 to i1
  br i1 %tobool, label %lor.lhs.false49, label %if.then68

lor.lhs.false49:                                  ; preds = %if.end46
  %id = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call48, i32 0, i32 0
  %16 = load i64, ptr %id, align 8
  %tobool50 = icmp ne i64 %16, 0
  br i1 %tobool50, label %lor.lhs.false51, label %if.then68

lor.lhs.false51:                                  ; preds = %lor.lhs.false49
  %quantity52 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call48, i32 0, i32 2
  %17 = load i32, ptr %quantity52, align 8
  %tobool53 = icmp ne i32 %17, 0
  br i1 %tobool53, label %lor.lhs.false54, label %if.then68

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %side55 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call48, i32 0, i32 3
  %18 = load i8, ptr %side55, align 4
  %cmp56 = icmp ne i8 %18, %3
  br i1 %cmp56, label %if.then68, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false54
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call48, i32 0, i32 1
  %19 = load i64, ptr %price, align 8
  %call58 = call noundef i64 @_ZNK6ledger8FastBook8price_atEm(ptr noundef nonnull align 8 dereferenceable(280) %this, i64 noundef %i.0) #17
  %cmp59 = icmp ne i64 %19, %call58
  br i1 %cmp59, label %if.then68, label %lor.lhs.false60

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  %previous61 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call48, i32 0, i32 5
  %20 = load i32, ptr %previous61, align 8
  %cmp62 = icmp ne i32 %20, %previous.0
  br i1 %cmp62, label %if.then68, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %lor.lhs.false60
  %index_64 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 4
  %id65 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call48, i32 0, i32 0
  %21 = load i64, ptr %id65, align 8
  %call66 = call noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %index_64, i64 noundef %21) #17
  %cmp67 = icmp ne i32 %call66, %slot.0
  br i1 %cmp67, label %if.then68, label %if.end69

if.then68:                                        ; preds = %lor.lhs.false63, %lor.lhs.false60, %lor.lhs.false57, %lor.lhs.false54, %lor.lhs.false51, %lor.lhs.false49, %if.end46
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false63
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp70) #17
  %conv71 = zext i32 %slot.0 to i64
  %call74 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %conv71)
          to label %invoke.cont73 unwind label %lpad72

invoke.cont73:                                    ; preds = %if.end69
  %22 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp70, i32 0, i32 0
  %23 = extractvalue { ptr, i64 } %call74, 0
  store ptr %23, ptr %22, align 8
  %24 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp70, i32 0, i32 1
  %25 = extractvalue { ptr, i64 } %call74, 1
  store i64 %25, ptr %24, align 8
  %call75 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp70, i1 noundef zeroext true) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp70) #17
  %quantity76 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call48, i32 0, i32 2
  %26 = load i32, ptr %quantity76, align 8
  %conv77 = zext i32 %26 to i64
  %add = add i64 %quantity.0, %conv77
  %inc = add i32 %count.0, 1
  br label %cleanup

cleanup:                                          ; preds = %invoke.cont73, %if.then68
  %quantity.1 = phi i64 [ %quantity.0, %if.then68 ], [ %add, %invoke.cont73 ]
  %count.1 = phi i32 [ %count.0, %if.then68 ], [ %inc, %invoke.cont73 ]
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then68 ], [ 0, %invoke.cont73 ]
  %previous.1 = phi i32 [ %previous.0, %if.then68 ], [ %slot.0, %invoke.cont73 ]
  %retval.3 = phi i1 [ false, %if.then68 ], [ %retval.2, %invoke.cont73 ]
  switch i32 %cleanup.dest.slot.0, label %cleanup80 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %pool_78 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call79 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_78, i32 noundef %slot.0) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call79, i32 0, i32 6
  %27 = load i32, ptr %next, align 4
  br label %for.cond31, !llvm.loop !25

lpad72:                                           ; preds = %if.end69
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = extractvalue { ptr, i32 } %28, 0
  %30 = extractvalue { ptr, i32 } %28, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp70) #17
  br label %ehcleanup

cleanup80:                                        ; preds = %cleanup, %if.then45, %for.cond.cleanup33
  %quantity.2 = phi i64 [ %quantity.0, %if.then45 ], [ %quantity.1, %cleanup ], [ %quantity.0, %for.cond.cleanup33 ]
  %count.2 = phi i32 [ %count.0, %if.then45 ], [ %count.1, %cleanup ], [ %count.0, %for.cond.cleanup33 ]
  %cleanup.dest.slot.1 = phi i32 [ 1, %if.then45 ], [ %cleanup.dest.slot.0, %cleanup ], [ 7, %for.cond.cleanup33 ]
  %previous.2 = phi i32 [ %previous.0, %if.then45 ], [ %previous.1, %cleanup ], [ %previous.0, %for.cond.cleanup33 ]
  %retval.4 = phi i1 [ false, %if.then45 ], [ %retval.3, %cleanup ], [ %retval.2, %for.cond.cleanup33 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup102 [
    i32 7, label %for.end
  ]

ehcleanup:                                        ; preds = %lpad72, %lpad41
  %ehselector.slot.0 = phi i32 [ %30, %lpad72 ], [ %14, %lpad41 ]
  %exn.slot.0 = phi ptr [ %29, %lpad72 ], [ %13, %lpad41 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr %ref.tmp12) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp11) #17
  br label %ehcleanup264

for.end:                                          ; preds = %cleanup80
  %orders82 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call23, i32 0, i32 3
  %31 = load i32, ptr %orders82, align 8
  %cmp83 = icmp ne i32 %count.2, %31
  br i1 %cmp83, label %if.then89, label %lor.lhs.false84

lor.lhs.false84:                                  ; preds = %for.end
  %quantity85 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call23, i32 0, i32 2
  %32 = load i64, ptr %quantity85, align 8
  %cmp86 = icmp ne i64 %quantity.2, %32
  br i1 %cmp86, label %if.then89, label %lor.lhs.false87

lor.lhs.false87:                                  ; preds = %lor.lhs.false84
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call23, i32 0, i32 1
  %33 = load i32, ptr %tail, align 4
  %cmp88 = icmp ne i32 %previous.2, %33
  br i1 %cmp88, label %if.then89, label %if.end90

if.then89:                                        ; preds = %lor.lhs.false87, %lor.lhs.false84, %for.end
  br label %cleanup102

if.end90:                                         ; preds = %lor.lhs.false87
  %tobool91 = icmp ne i32 %count.2, 0
  br i1 %tobool91, label %if.end98, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end90
  %head92 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call23, i32 0, i32 0
  %34 = load i32, ptr %head92, align 8
  %cmp93 = icmp ne i32 %34, -1
  br i1 %cmp93, label %if.then97, label %lor.lhs.false94

lor.lhs.false94:                                  ; preds = %land.lhs.true
  %tail95 = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %call23, i32 0, i32 1
  %35 = load i32, ptr %tail95, align 4
  %cmp96 = icmp ne i32 %35, -1
  br i1 %cmp96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %lor.lhs.false94, %land.lhs.true
  br label %cleanup102

if.end98:                                         ; preds = %lor.lhs.false94, %if.end90
  %add99 = add i64 %total_quantity.1, %quantity.2
  %conv100 = zext i32 %count.2 to i64
  %add101 = add i64 %order_count.1, %conv100
  br label %cleanup102

cleanup102:                                       ; preds = %if.end98, %if.then97, %if.then89, %cleanup80
  %cleanup.dest.slot.2 = phi i32 [ %cleanup.dest.slot.1, %cleanup80 ], [ 1, %if.then89 ], [ 0, %if.end98 ], [ 1, %if.then97 ]
  %total_quantity.2 = phi i64 [ %total_quantity.1, %cleanup80 ], [ %total_quantity.1, %if.then89 ], [ %add99, %if.end98 ], [ %total_quantity.1, %if.then97 ]
  %order_count.2 = phi i64 [ %order_count.1, %cleanup80 ], [ %order_count.1, %if.then89 ], [ %add101, %if.end98 ], [ %order_count.1, %if.then97 ]
  %retval.5 = phi i1 [ %retval.4, %cleanup80 ], [ false, %if.then89 ], [ %retval.4, %if.end98 ], [ false, %if.then97 ]
  br label %cleanup108

cleanup108:                                       ; preds = %cleanup102, %if.then29
  %cleanup.dest.slot.3 = phi i32 [ 1, %if.then29 ], [ %cleanup.dest.slot.2, %cleanup102 ]
  %total_quantity.3 = phi i64 [ %total_quantity.1, %if.then29 ], [ %total_quantity.2, %cleanup102 ]
  %order_count.3 = phi i64 [ %order_count.1, %if.then29 ], [ %order_count.2, %cleanup102 ]
  %retval.6 = phi i1 [ false, %if.then29 ], [ %retval.5, %cleanup102 ]
  switch i32 %cleanup.dest.slot.3, label %cleanup114 [
    i32 0, label %cleanup.cont110
  ]

cleanup.cont110:                                  ; preds = %cleanup108
  br label %for.inc112

for.inc112:                                       ; preds = %cleanup.cont110
  %inc113 = add i64 %i.0, 1
  br label %for.cond18, !llvm.loop !26

cleanup114:                                       ; preds = %cleanup108, %for.cond.cleanup21
  %cleanup.dest.slot.4 = phi i32 [ %cleanup.dest.slot.3, %cleanup108 ], [ 4, %for.cond.cleanup21 ]
  %total_quantity.4 = phi i64 [ %total_quantity.3, %cleanup108 ], [ %total_quantity.1, %for.cond.cleanup21 ]
  %order_count.4 = phi i64 [ %order_count.3, %cleanup108 ], [ %order_count.1, %for.cond.cleanup21 ]
  %retval.7 = phi i1 [ %retval.6, %cleanup108 ], [ %retval.1, %for.cond.cleanup21 ]
  switch i32 %cleanup.dest.slot.4, label %cleanup133 [
    i32 4, label %for.end117
  ]

for.end117:                                       ; preds = %cleanup114
  %call118 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %call16) #17
  %rem119 = urem i64 %call118, 64
  %tobool120 = icmp ne i64 %rem119, 0
  br i1 %tobool120, label %land.lhs.true121, label %if.end127

land.lhs.true121:                                 ; preds = %for.end117
  %call122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %call17) #17
  %36 = load i64, ptr %call122, align 8
  %call123 = call noundef i64 @_ZNKSt6vectorIN6ledger8FastBook5LevelESaIS2_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %call16) #17
  %rem124 = urem i64 %call123, 64
  %shr = lshr i64 %36, %rem124
  %cmp125 = icmp ne i64 %shr, 0
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %land.lhs.true121
  br label %cleanup133

if.end127:                                        ; preds = %land.lhs.true121, %for.end117
  %call128 = call noundef i64 @_ZNK6ledger8FastBook4bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %3) #17
  %call129 = call noundef i64 @_ZNK6ledger8FastBook9find_bestENS_4SideE(ptr noundef nonnull align 8 dereferenceable(280) %this, i8 noundef zeroext %3) #17
  %cmp130 = icmp ne i64 %call128, %call129
  br i1 %cmp130, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.end127
  br label %cleanup133

if.end132:                                        ; preds = %if.end127
  br label %cleanup133

cleanup133:                                       ; preds = %if.end132, %if.then131, %if.then126, %cleanup114
  %cleanup.dest.slot.5 = phi i32 [ %cleanup.dest.slot.4, %cleanup114 ], [ 1, %if.then126 ], [ 1, %if.then131 ], [ 0, %if.end132 ]
  %retval.8 = phi i1 [ %retval.7, %cleanup114 ], [ false, %if.then126 ], [ false, %if.then131 ], [ %retval.7, %if.end132 ]
  switch i32 %cleanup.dest.slot.5, label %cleanup139 [
    i32 0, label %cleanup.cont137
  ]

cleanup.cont137:                                  ; preds = %cleanup133
  br label %cleanup139

cleanup139:                                       ; preds = %cleanup.cont137, %cleanup133
  %cleanup.dest.slot.6 = phi i32 [ %cleanup.dest.slot.5, %cleanup133 ], [ 0, %cleanup.cont137 ]
  switch i32 %cleanup.dest.slot.6, label %cleanup144 [
    i32 0, label %cleanup.cont141
  ]

cleanup.cont141:                                  ; preds = %cleanup139
  br label %for.inc143

for.inc143:                                       ; preds = %cleanup.cont141
  %incdec.ptr = getelementptr inbounds i8, ptr %__begin1.0, i32 1
  br label %for.cond, !llvm.loop !27

cleanup144:                                       ; preds = %cleanup139, %for.cond.cleanup
  %cleanup.dest.slot.7 = phi i32 [ %cleanup.dest.slot.6, %cleanup139 ], [ 2, %for.cond.cleanup ]
  %total_quantity.5 = phi i64 [ %total_quantity.4, %cleanup139 ], [ %total_quantity.0, %for.cond.cleanup ]
  %order_count.5 = phi i64 [ %order_count.4, %cleanup139 ], [ %order_count.0, %for.cond.cleanup ]
  %retval.9 = phi i1 [ %retval.8, %cleanup139 ], [ %retval.0, %for.cond.cleanup ]
  call void @llvm.lifetime.end.p0(i64 2, ptr %ref.tmp12) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp11) #17
  switch i32 %cleanup.dest.slot.7, label %cleanup263 [
    i32 2, label %for.end155
  ]

for.end155:                                       ; preds = %cleanup144
  %index_157 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 4
  %call158 = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger6detail7IdIndex7entriesEv(ptr noundef nonnull align 8 dereferenceable(40) %index_157) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__begin1159) #17
  %call160 = call ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %call158) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %__begin1159, i32 0, i32 0
  store ptr %call160, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__end1161) #17
  %call162 = call ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %call158) #17
  %coerce.dive163 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %__end1161, i32 0, i32 0
  store ptr %call162, ptr %coerce.dive163, align 8
  br label %for.cond164

for.cond164:                                      ; preds = %for.inc200, %for.end155
  %retval.10 = phi i1 [ %retval.9, %for.end155 ], [ %retval.11, %for.inc200 ]
  %call165 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_QrqXeqcldtfp_4baseEcldtfp0_4baseERSt14convertible_toIbEE(ptr noundef nonnull align 8 dereferenceable(8) %__begin1159, ptr noundef nonnull align 8 dereferenceable(8) %__end1161) #17
  %lnot = xor i1 %call165, true
  br i1 %lnot, label %for.body167, label %for.cond.cleanup166

for.cond.cleanup166:                              ; preds = %for.cond164
  br label %cleanup202

for.body167:                                      ; preds = %for.cond164
  %call169 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %__begin1159) #17
  %id170 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call169, i32 0, i32 0
  %37 = load i64, ptr %id170, align 8
  %tobool171 = icmp ne i64 %37, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp178) #17
  br i1 %tobool171, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.body167
  %slot172 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call169, i32 0, i32 1
  %38 = load i32, ptr %slot172, align 8
  %conv173 = zext i32 %38 to i64
  %pool_174 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call175 = call noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_174) #17
  %cmp176 = icmp uge i64 %conv173, %call175
  br i1 %cmp176, label %lor.end192, label %lor.lhs.false177

lor.lhs.false177:                                 ; preds = %land.rhs
  %slot179 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call169, i32 0, i32 1
  %39 = load i32, ptr %slot179, align 8
  %conv180 = zext i32 %39 to i64
  %call183 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %conv180)
          to label %invoke.cont182 unwind label %lpad181

invoke.cont182:                                   ; preds = %lor.lhs.false177
  %40 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp178, i32 0, i32 0
  %41 = extractvalue { ptr, i64 } %call183, 0
  store ptr %41, ptr %40, align 8
  %42 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp178, i32 0, i32 1
  %43 = extractvalue { ptr, i64 } %call183, 1
  store i64 %43, ptr %42, align 8
  %call184 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp178) #17
  br i1 %call184, label %lor.rhs185, label %lor.end192

lor.rhs185:                                       ; preds = %invoke.cont182
  %pool_186 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %slot187 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call169, i32 0, i32 1
  %44 = load i32, ptr %slot187, align 8
  %call188 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_186, i32 noundef %44) #17
  %id189 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call188, i32 0, i32 0
  %45 = load i64, ptr %id189, align 8
  %id190 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call169, i32 0, i32 0
  %46 = load i64, ptr %id190, align 8
  %cmp191 = icmp ne i64 %45, %46
  br label %lor.end192

lor.end192:                                       ; preds = %lor.rhs185, %invoke.cont182, %land.rhs
  %47 = phi i1 [ true, %invoke.cont182 ], [ true, %land.rhs ], [ %cmp191, %lor.rhs185 ]
  br label %land.end

land.end:                                         ; preds = %lor.end192, %for.body167
  %48 = phi i1 [ false, %for.body167 ], [ %47, %lor.end192 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp178) #17
  br i1 %48, label %if.then194, label %if.end195

if.then194:                                       ; preds = %land.end
  br label %cleanup196

lpad181:                                          ; preds = %lor.lhs.false177
  %49 = landingpad { ptr, i32 }
          cleanup
  %50 = extractvalue { ptr, i32 } %49, 0
  %51 = extractvalue { ptr, i32 } %49, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp178) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__end1161) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__begin1159) #17
  br label %ehcleanup264

if.end195:                                        ; preds = %land.end
  br label %cleanup196

cleanup196:                                       ; preds = %if.end195, %if.then194
  %cleanup.dest.slot.8 = phi i32 [ 1, %if.then194 ], [ 0, %if.end195 ]
  %retval.11 = phi i1 [ false, %if.then194 ], [ %retval.10, %if.end195 ]
  switch i32 %cleanup.dest.slot.8, label %cleanup202 [
    i32 0, label %cleanup.cont198
  ]

cleanup.cont198:                                  ; preds = %cleanup196
  br label %for.inc200

for.inc200:                                       ; preds = %cleanup.cont198
  %call201 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %__begin1159) #17
  br label %for.cond164, !llvm.loop !28

cleanup202:                                       ; preds = %cleanup196, %for.cond.cleanup166
  %cleanup.dest.slot.9 = phi i32 [ %cleanup.dest.slot.8, %cleanup196 ], [ 10, %for.cond.cleanup166 ]
  %retval.12 = phi i1 [ %retval.11, %cleanup196 ], [ %retval.10, %for.cond.cleanup166 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %__end1161) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__begin1159) #17
  switch i32 %cleanup.dest.slot.9, label %cleanup263 [
    i32 10, label %for.end209
  ]

for.end209:                                       ; preds = %cleanup202
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc233, %for.end209
  %i210.0 = phi i64 [ 0, %for.end209 ], [ %inc234, %for.inc233 ]
  %pool_212 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call213 = call noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_212) #17
  %cmp214 = icmp ult i64 %i210.0, %call213
  br i1 %cmp214, label %for.body216, label %for.cond.cleanup215

for.cond.cleanup215:                              ; preds = %for.cond211
  br label %cleanup235

for.body216:                                      ; preds = %for.cond211
  %pool_217 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %conv218 = trunc i64 %i210.0 to i32
  %call219 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %pool_217, i32 noundef %conv218) #17
  %live220 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call219, i32 0, i32 7
  %52 = load i8, ptr %live220, align 8, !range !8, !noundef !9
  %tobool221 = trunc i8 %52 to i1
  %conv222 = zext i1 %tobool221 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp223) #17
  %call226 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %seen, i64 noundef %i210.0)
          to label %invoke.cont225 unwind label %lpad224

invoke.cont225:                                   ; preds = %for.body216
  %53 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp223, i32 0, i32 0
  %54 = extractvalue { ptr, i64 } %call226, 0
  store ptr %54, ptr %53, align 8
  %55 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp223, i32 0, i32 1
  %56 = extractvalue { ptr, i64 } %call226, 1
  store i64 %56, ptr %55, align 8
  %call227 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp223) #17
  %conv228 = zext i1 %call227 to i32
  %cmp229 = icmp ne i32 %conv222, %conv228
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp223) #17
  br i1 %cmp229, label %if.then231, label %if.end232

if.then231:                                       ; preds = %invoke.cont225
  br label %cleanup235

lpad224:                                          ; preds = %for.body216
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = extractvalue { ptr, i32 } %57, 0
  %59 = extractvalue { ptr, i32 } %57, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp223) #17
  br label %ehcleanup264

if.end232:                                        ; preds = %invoke.cont225
  br label %for.inc233

for.inc233:                                       ; preds = %if.end232
  %inc234 = add i64 %i210.0, 1
  br label %for.cond211, !llvm.loop !29

cleanup235:                                       ; preds = %if.then231, %for.cond.cleanup215
  %cleanup.dest.slot.10 = phi i32 [ 1, %if.then231 ], [ 12, %for.cond.cleanup215 ]
  %retval.13 = phi i1 [ false, %if.then231 ], [ %retval.12, %for.cond.cleanup215 ]
  switch i32 %cleanup.dest.slot.10, label %cleanup263 [
    i32 12, label %for.end238
  ]

for.end238:                                       ; preds = %cleanup235
  %pool_239 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 3
  %call240 = call noundef i64 @_ZNK6ledger6detail9OrderPool4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %pool_239) #17
  %cmp241 = icmp ne i64 %order_count.5, %call240
  br i1 %cmp241, label %if.then244, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %for.end238
  %resting_quantity_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 11
  %60 = load i64, ptr %resting_quantity_, align 8
  %cmp243 = icmp ne i64 %total_quantity.5, %60
  br i1 %cmp243, label %if.then244, label %if.end245

if.then244:                                       ; preds = %lor.lhs.false242, %for.end238
  br label %cleanup263

if.end245:                                        ; preds = %lor.lhs.false242
  %best_bid_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 9
  %61 = load i64, ptr %best_bid_, align 8
  %cmp246 = icmp ne i64 %61, -1
  br i1 %cmp246, label %land.lhs.true247, label %if.end254

land.lhs.true247:                                 ; preds = %if.end245
  %best_ask_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 10
  %62 = load i64, ptr %best_ask_, align 8
  %cmp248 = icmp ne i64 %62, -1
  br i1 %cmp248, label %land.lhs.true249, label %if.end254

land.lhs.true249:                                 ; preds = %land.lhs.true247
  %best_bid_250 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 9
  %63 = load i64, ptr %best_bid_250, align 8
  %best_ask_251 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 10
  %64 = load i64, ptr %best_ask_251, align 8
  %cmp252 = icmp uge i64 %63, %64
  br i1 %cmp252, label %if.then253, label %if.end254

if.then253:                                       ; preds = %land.lhs.true249
  br label %cleanup263

if.end254:                                        ; preds = %land.lhs.true249, %land.lhs.true247, %if.end245
  %statistics_ = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %submitted = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_, i32 0, i32 0
  %65 = load i64, ptr %submitted, align 8
  %statistics_255 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %executed = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_255, i32 0, i32 1
  %66 = load i64, ptr %executed, align 8
  %mul = mul i64 2, %66
  %statistics_256 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %cancelled = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_256, i32 0, i32 2
  %67 = load i64, ptr %cancelled, align 8
  %add257 = add i64 %mul, %67
  %statistics_258 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 12
  %expired = getelementptr inbounds %"struct.ledger::Statistics", ptr %statistics_258, i32 0, i32 3
  %68 = load i64, ptr %expired, align 8
  %add259 = add i64 %add257, %68
  %resting_quantity_260 = getelementptr inbounds %"class.ledger::FastBook", ptr %this, i32 0, i32 11
  %69 = load i64, ptr %resting_quantity_260, align 8
  %add261 = add i64 %add259, %69
  %cmp262 = icmp eq i64 %65, %add261
  br label %cleanup263

cleanup263:                                       ; preds = %if.end254, %if.then253, %if.then244, %cleanup235, %cleanup202, %cleanup144
  %retval.14 = phi i1 [ %retval.9, %cleanup144 ], [ %retval.12, %cleanup202 ], [ %retval.13, %cleanup235 ], [ false, %if.then244 ], [ false, %if.then253 ], [ %cmp262, %if.end254 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %seen) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr %seen) #17
  br label %return

ehcleanup264:                                     ; preds = %lpad224, %lpad181, %ehcleanup
  %ehselector.slot.1 = phi i32 [ %59, %lpad224 ], [ %51, %lpad181 ], [ %ehselector.slot.0, %ehcleanup ]
  %exn.slot.1 = phi ptr [ %58, %lpad224 ], [ %50, %lpad181 ], [ %exn.slot.0, %ehcleanup ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %seen) #17
  br label %ehcleanup270

ehcleanup270:                                     ; preds = %ehcleanup264, %lpad
  %ehselector.slot.2 = phi i32 [ %ehselector.slot.1, %ehcleanup264 ], [ %2, %lpad ]
  %exn.slot.2 = phi ptr [ %exn.slot.1, %ehcleanup264 ], [ %1, %lpad ]
  call void @llvm.lifetime.end.p0(i64 40, ptr %seen) #17
  br label %eh.resume

return:                                           ; preds = %cleanup263, %if.then
  %retval.15 = phi i1 [ false, %if.then ], [ %retval.14, %cleanup263 ]
  ret i1 %retval.15

eh.resume:                                        ; preds = %ehcleanup270
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn.slot.2, 0
  %lpad.val271 = insertvalue { ptr, i32 } %lpad.val, i32 %ehselector.slot.2, 1
  resume { ptr, i32 } %lpad.val271
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6ledger6detail9OrderPool16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %free = alloca %"class.std::vector.25", align 8
  %ref.tmp = alloca i8, align 1
  %ref.tmp2 = alloca %"class.std::allocator.26", align 1
  %ref.tmp6 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp15 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp35 = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp44 = alloca %"struct.std::_Bit_reference", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %free) #17
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  store i8 0, ptr %ref.tmp, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp2) #17
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2) #17
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSaIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  %free_head_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 1
  %0 = load i32, ptr %free_head_, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont
  %slot.0 = phi i32 [ %0, %invoke.cont ], [ %17, %for.inc ]
  %free_count.0 = phi i64 [ 0, %invoke.cont ], [ %inc, %for.inc ]
  %cmp = icmp ne i32 %slot.0, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %cleanup

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZNSaIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br label %ehcleanup70

for.body:                                         ; preds = %for.cond
  %conv = zext i32 %slot.0 to i64
  %nodes_3 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %call4 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_3) #17
  %cmp5 = icmp uge i64 %conv, %call4
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp6) #17
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %conv7 = zext i32 %slot.0 to i64
  %call10 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %conv7)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %lor.lhs.false
  %4 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp6, i32 0, i32 0
  %5 = extractvalue { ptr, i64 } %call10, 0
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp6, i32 0, i32 1
  %7 = extractvalue { ptr, i64 } %call10, 1
  store i64 %7, ptr %6, align 8
  %call11 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp6) #17
  br i1 %call11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %invoke.cont9
  %nodes_12 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv13 = zext i32 %slot.0 to i64
  %call14 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_12, i64 noundef %conv13) #17
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call14, i32 0, i32 7
  %8 = load i8, ptr %live, align 8, !range !8, !noundef !9
  %tobool = trunc i8 %8 to i1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %invoke.cont9, %for.body
  %9 = phi i1 [ true, %invoke.cont9 ], [ true, %for.body ], [ %tobool, %lor.rhs ]
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp6) #17
  br i1 %9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  br label %cleanup

lpad8:                                            ; preds = %lor.lhs.false
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp6) #17
  br label %ehcleanup

if.end:                                           ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp15) #17
  %conv16 = zext i32 %slot.0 to i64
  %call19 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %conv16)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %if.end
  %13 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp15, i32 0, i32 0
  %14 = extractvalue { ptr, i64 } %call19, 0
  store ptr %14, ptr %13, align 8
  %15 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp15, i32 0, i32 1
  %16 = extractvalue { ptr, i64 } %call19, 1
  store i64 %16, ptr %15, align 8
  %call20 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp15, i1 noundef zeroext true) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp15) #17
  %inc = add i64 %free_count.0, 1
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont18
  %nodes_21 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv22 = zext i32 %slot.0 to i64
  %call23 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_21, i64 noundef %conv22) #17
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call23, i32 0, i32 6
  %17 = load i32, ptr %next, align 4
  br label %for.cond, !llvm.loop !30

lpad17:                                           ; preds = %if.end
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp15) #17
  br label %ehcleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then ], [ 2, %for.cond.cleanup ]
  switch i32 %cleanup.dest.slot.0, label %cleanup65 [
    i32 2, label %for.end
  ]

ehcleanup:                                        ; preds = %lpad17, %lpad8
  %ehselector.slot.0 = phi i32 [ %20, %lpad17 ], [ %12, %lpad8 ]
  %exn.slot.0 = phi ptr [ %19, %lpad17 ], [ %11, %lpad8 ]
  br label %ehcleanup66

for.end:                                          ; preds = %cleanup
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc53, %for.end
  %live_count.0 = phi i64 [ 0, %for.end ], [ %live_count.1, %for.inc53 ]
  %i.0 = phi i64 [ 0, %for.end ], [ %inc54, %for.inc53 ]
  %nodes_25 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %call26 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_25) #17
  %cmp27 = icmp ult i64 %i.0, %call26
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond24
  br label %cleanup55

for.body29:                                       ; preds = %for.cond24
  %nodes_30 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %call31 = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_30, i64 noundef %i.0) #17
  %live32 = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %call31, i32 0, i32 7
  %21 = load i8, ptr %live32, align 8, !range !8, !noundef !9
  %tobool33 = trunc i8 %21 to i1
  br i1 %tobool33, label %if.then34, label %if.else

if.then34:                                        ; preds = %for.body29
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp35) #17
  %call38 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %i.0)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %if.then34
  %22 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp35, i32 0, i32 0
  %23 = extractvalue { ptr, i64 } %call38, 0
  store ptr %23, ptr %22, align 8
  %24 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp35, i32 0, i32 1
  %25 = extractvalue { ptr, i64 } %call38, 1
  store i64 %25, ptr %24, align 8
  %call39 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp35) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp35) #17
  br i1 %call39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %invoke.cont37
  br label %cleanup55

lpad36:                                           ; preds = %if.then34
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp35) #17
  br label %ehcleanup57

if.end42:                                         ; preds = %invoke.cont37
  %inc43 = add i64 %live_count.0, 1
  br label %if.end52

if.else:                                          ; preds = %for.body29
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp44) #17
  %call47 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %free, i64 noundef %i.0)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %if.else
  %29 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp44, i32 0, i32 0
  %30 = extractvalue { ptr, i64 } %call47, 0
  store ptr %30, ptr %29, align 8
  %31 = getelementptr inbounds { ptr, i64 }, ptr %ref.tmp44, i32 0, i32 1
  %32 = extractvalue { ptr, i64 } %call47, 1
  store i64 %32, ptr %31, align 8
  %call48 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %ref.tmp44) #17
  %lnot = xor i1 %call48, true
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp44) #17
  br i1 %lnot, label %if.then50, label %if.end51

if.then50:                                        ; preds = %invoke.cont46
  br label %cleanup55

lpad45:                                           ; preds = %if.else
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = extractvalue { ptr, i32 } %33, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp44) #17
  br label %ehcleanup57

if.end51:                                         ; preds = %invoke.cont46
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end42
  %live_count.1 = phi i64 [ %inc43, %if.end42 ], [ %live_count.0, %if.end51 ]
  br label %for.inc53

for.inc53:                                        ; preds = %if.end52
  %inc54 = add i64 %i.0, 1
  br label %for.cond24, !llvm.loop !31

cleanup55:                                        ; preds = %if.then50, %if.then41, %for.cond.cleanup28
  %cleanup.dest.slot.1 = phi i32 [ 1, %if.then41 ], [ 1, %if.then50 ], [ 5, %for.cond.cleanup28 ]
  switch i32 %cleanup.dest.slot.1, label %cleanup63 [
    i32 5, label %for.end58
  ]

ehcleanup57:                                      ; preds = %lpad45, %lpad36
  %ehselector.slot.1 = phi i32 [ %28, %lpad36 ], [ %35, %lpad45 ]
  %exn.slot.1 = phi ptr [ %27, %lpad36 ], [ %34, %lpad45 ]
  br label %ehcleanup66

for.end58:                                        ; preds = %cleanup55
  %size_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 2
  %36 = load i64, ptr %size_, align 8
  %cmp59 = icmp eq i64 %live_count.0, %36
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end58
  %add = add i64 %live_count.0, %free_count.0
  %nodes_60 = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %call61 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_60) #17
  %cmp62 = icmp eq i64 %add, %call61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end58
  %37 = phi i1 [ false, %for.end58 ], [ %cmp62, %land.rhs ]
  br label %cleanup63

cleanup63:                                        ; preds = %land.end, %cleanup55
  %retval.2 = phi i1 [ false, %cleanup55 ], [ %37, %land.end ]
  br label %cleanup65

cleanup65:                                        ; preds = %cleanup63, %cleanup
  %retval.3 = phi i1 [ false, %cleanup ], [ %retval.2, %cleanup63 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %free) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr %free) #17
  ret i1 %retval.3

ehcleanup66:                                      ; preds = %ehcleanup57, %ehcleanup
  %ehselector.slot.2 = phi i32 [ %ehselector.slot.1, %ehcleanup57 ], [ %ehselector.slot.0, %ehcleanup ]
  %exn.slot.2 = phi ptr [ %exn.slot.1, %ehcleanup57 ], [ %exn.slot.0, %ehcleanup ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %free) #17
  br label %ehcleanup70

ehcleanup70:                                      ; preds = %ehcleanup66, %lpad
  %ehselector.slot.3 = phi i32 [ %ehselector.slot.2, %ehcleanup66 ], [ %3, %lpad ]
  %exn.slot.3 = phi ptr [ %exn.slot.2, %ehcleanup66 ], [ %2, %lpad ]
  call void @llvm.lifetime.end.p0(i64 40, ptr %free) #17
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup70
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %exn.slot.3, 0
  %lpad.val71 = insertvalue { ptr, i32 } %lpad.val, i32 %ehselector.slot.3, 1
  resume { ptr, i32 } %lpad.val71
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK6ledger6detail7IdIndex16check_invariantsEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %__begin2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %__end2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  call void @llvm.lifetime.start.p0(i64 8, ptr %__begin2) #17
  %call = call ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %entries_) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %__begin2, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__end2) #17
  %call2 = call ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %entries_) #17
  %coerce.dive3 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %__end2, i32 0, i32 0
  store ptr %call2, ptr %coerce.dive3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %occupied.0 = phi i64 [ 0, %entry ], [ %occupied.2, %for.inc ]
  %retval.0 = phi i1 [ undef, %entry ], [ %retval.1, %for.inc ]
  %call4 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_QrqXeqcldtfp_4baseEcldtfp0_4baseERSt14convertible_toIbEE(ptr noundef nonnull align 8 dereferenceable(8) %__begin2, ptr noundef nonnull align 8 dereferenceable(8) %__end2) #17
  %lnot = xor i1 %call4, true
  br i1 %lnot, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %cleanup18

for.body:                                         ; preds = %for.cond
  %call6 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %__begin2) #17
  %id = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 0
  %0 = load i64, ptr %id, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 1
  %1 = load i32, ptr %slot, align 8
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %id7 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 0
  %2 = load i64, ptr %id7, align 8
  %call8 = call noundef i32 @_ZNK6ledger6detail7IdIndex4findEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %2) #17
  %slot9 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 1
  %3 = load i32, ptr %slot9, align 8
  %cmp10 = icmp ne i32 %call8, %3
  br i1 %cmp10, label %if.then11, label %if.end

if.then11:                                        ; preds = %lor.lhs.false, %if.then
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %inc = add i64 %occupied.0, 1
  br label %if.end16

if.else:                                          ; preds = %for.body
  %slot12 = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %call6, i32 0, i32 1
  %4 = load i32, ptr %slot12, align 8
  %cmp13 = icmp ne i32 %4, -1
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  br label %cleanup

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  %occupied.1 = phi i64 [ %inc, %if.end ], [ %occupied.0, %if.end15 ]
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then11
  %occupied.2 = phi i64 [ %occupied.0, %if.then11 ], [ %occupied.1, %if.end16 ], [ %occupied.0, %if.then14 ]
  %cleanup.dest.slot.0 = phi i32 [ 1, %if.then11 ], [ 0, %if.end16 ], [ 1, %if.then14 ]
  %retval.1 = phi i1 [ false, %if.then11 ], [ %retval.0, %if.end16 ], [ false, %if.then14 ]
  switch i32 %cleanup.dest.slot.0, label %cleanup18 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc

for.inc:                                          ; preds = %cleanup.cont
  %call17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %__begin2) #17
  br label %for.cond, !llvm.loop !32

cleanup18:                                        ; preds = %cleanup, %for.cond.cleanup
  %occupied.3 = phi i64 [ %occupied.2, %cleanup ], [ %occupied.0, %for.cond.cleanup ]
  %cleanup.dest.slot.1 = phi i32 [ %cleanup.dest.slot.0, %cleanup ], [ 2, %for.cond.cleanup ]
  %retval.2 = phi i1 [ %retval.1, %cleanup ], [ %retval.0, %for.cond.cleanup ]
  call void @llvm.lifetime.end.p0(i64 8, ptr %__end2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__begin2) #17
  switch i32 %cleanup.dest.slot.1, label %cleanup26 [
    i32 2, label %for.end
  ]

for.end:                                          ; preds = %cleanup18
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 2
  %5 = load i64, ptr %size_, align 8
  %cmp22 = icmp eq i64 %occupied.3, %5
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.end
  %entries_23 = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  %call24 = call noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %entries_23) #17
  %div = udiv i64 %call24, 2
  %cmp25 = icmp ule i64 %occupied.3, %div
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %6 = phi i1 [ false, %for.end ], [ %cmp25, %land.rhs ]
  br label %cleanup26

cleanup26:                                        ; preds = %land.end, %cleanup18
  %retval.3 = phi i1 [ %retval.2, %cleanup18 ], [ %6, %land.end ]
  ret i1 %retval.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger6detail7IdIndex4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %size_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %size_, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger6detail9OrderPool8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %nodes_) #17
  ret i64 %call
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__value, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i8, ptr %__value, align 1, !range !8, !noundef !9
  %tobool = trunc i8 %0 to i1
  call void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %this, i1 noundef zeroext %tobool) #17
  ret void

lpad:                                             ; preds = %entry
  %1 = landingpad { ptr, i32 }
          cleanup
  %2 = extractvalue { ptr, i32 } %1, 0
  %3 = extractvalue { ptr, i32 } %1, 1
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %2, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %3, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE5beginEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %_M_array = getelementptr inbounds %"class.std::initializer_list", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_array, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE3endEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNKSt16initializer_listIN6ledger4SideEE5beginEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #17
  %call2 = call noundef i64 @_ZNKSt16initializer_listIN6ledger4SideEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #17
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %call2
  ret ptr %add.ptr
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %call = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  %0 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 0
  %1 = extractvalue { ptr, i32 } %call, 0
  store ptr %1, ptr %0, align 8
  %2 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 1
  %3 = extractvalue { ptr, i32 } %call, 1
  store i32 %3, ptr %2, align 8
  %call2 = call { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %ref.tmp, i64 noundef %__n)
  %4 = getelementptr inbounds { ptr, i64 }, ptr %retval, i32 0, i32 0
  %5 = extractvalue { ptr, i64 } %call2, 0
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %retval, i32 0, i32 1
  %7 = extractvalue { ptr, i64 } %call2, 1
  store i64 %7, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  %8 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  %1 = load i64, ptr %0, align 8
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this, i32 0, i32 1
  %2 = load i64, ptr %_M_mask, align 8
  %and = and i64 %1, %2
  %tobool = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot2 = xor i1 %lnot, true
  ret i1 %lnot2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) ptr @_ZNK6ledger6detail9OrderPoolixEj(ptr noundef nonnull align 8 dereferenceable(40) %this, i32 noundef %slot) #6 comdat align 2 {
entry:
  %nodes_ = getelementptr inbounds %"class.ledger::detail::OrderPool", ptr %this, i32 0, i32 0
  %conv = zext i32 %slot to i64
  %call = call noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %nodes_, i64 noundef %conv) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %this, i1 noundef zeroext %__x) #6 comdat align 2 {
entry:
  %frombool = zext i1 %__x to i8
  %tobool = trunc i8 %frombool to i1
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this, i32 0, i32 1
  %0 = load i64, ptr %_M_mask, align 8
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this, i32 0, i32 0
  %1 = load ptr, ptr %_M_p, align 8
  %2 = load i64, ptr %1, align 8
  %or = or i64 %2, %0
  store i64 %or, ptr %1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %_M_mask2 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this, i32 0, i32 1
  %3 = load i64, ptr %_M_mask2, align 8
  %not = xor i64 %3, -1
  %_M_p3 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this, i32 0, i32 0
  %4 = load ptr, ptr %_M_p3, align 8
  %5 = load i64, ptr %4, align 8
  %and = and i64 %5, %not
  store i64 %and, ptr %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret ptr %this
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt6vectorImSaImEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp2) #17
  %call = call ptr @_ZNKSt6vectorImSaImEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %ref.tmp2, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  %call3 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp2, i64 noundef 1) #17
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %ref.tmp, i32 0, i32 0
  store ptr %call3, ptr %coerce.dive4, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  ret ptr %call5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6ledger6detail7IdIndex7entriesEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %entries_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 0
  ret ptr %entries_
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_start) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_finish) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEEbRKNS_17__normal_iteratorIT_T0_EESF_QrqXeqcldtfp_4baseEcldtfp0_4baseERSt14convertible_toIbEE(ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #6 comdat {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__lhs) #17
  %0 = load ptr, ptr %call, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #17
  %1 = load ptr, ptr %call1, align 8
  %cmp = icmp eq ptr %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i32 1
  store ptr %incdec.ptr, ptr %_M_current, align 8
  ret ptr %this
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %this)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS8_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS8_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %this, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %this, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %this, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 384307168202282325, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %0 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %0

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { ptr, i32 }
          catch ptr null
  %2 = extractvalue { ptr, i32 } %1, 0
  call void @__clang_call_terminate(ptr %2) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  ret i64 768614336404564650
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #8 comdat {
entry:
  %0 = load i64, ptr %__b, align 8
  %1 = load i64, ptr %__a, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %__b, %if.then ], [ %__a, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger8FastBook5LevelES2_EvT_S4_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  call void @_ZSt8_DestroyIPN6ledger8FastBook5LevelEEvT_S4_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  invoke void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl5) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger8FastBook5LevelEEvT_S4_(ptr noundef %__first, ptr noundef %__last) #10 comdat {
entry:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger8FastBook5LevelEEEvT_S6_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger8FastBook5LevelEEEvT_S6_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE13_M_deallocateEPS2_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %tobool = icmp ne ptr %__p, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  call void @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %__p, i64 noundef %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger8FastBook5LevelEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger8FastBook5LevelEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  call void @_ZdlPv(ptr noundef %__p) #20
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #12

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = call noundef i64 @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  invoke void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) ptr @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %0, i64 %__n
  ret ptr %add.ptr
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.std::allocator.2", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  %call = call noundef i64 @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  %cmp = icmp ugt i64 %__n, %call
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  ret i64 %__n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  invoke void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger6detail9OrderPool4NodeEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %0, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 1
  store ptr %call2, ptr %_M_finish, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  invoke void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl5) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 230584300921369395, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %0 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) #13

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  ret i64 461168601842738790
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  store ptr %call, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %0 = load ptr, ptr %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  store ptr %0, ptr %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl5, i32 0, i32 0
  %1 = load ptr, ptr %_M_start6, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %1, i64 %__n
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %this, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %this, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %this, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %__n)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSaIN6ledger6detail9OrderPool4NodeEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger6detail9OrderPool4NodeEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  %cmp = icmp ugt i64 %__n, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp2 = icmp ugt i64 %__n, 461168601842738790
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %mul = mul i64 %__n, 40
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  ret i64 230584300921369395
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger6detail9OrderPool4NodeEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %0) #10 comdat {
entry:
  %call = call noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger6detail9OrderPool4NodeEmET_S5_T0_(ptr noundef %__first, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger6detail9OrderPool4NodeEmET_S5_T0_(ptr noundef %__first, i64 noundef %__n) #10 comdat {
entry:
  %call = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail9OrderPool4NodeEmEET_S7_T0_(ptr noundef %__first, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail9OrderPool4NodeEmEET_S7_T0_(ptr noundef %__first, i64 noundef %__n) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__cur.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %__n.addr.0 = phi i64 [ %__n, %entry ], [ %dec, %for.inc ]
  %cmp = icmp ugt i64 %__n.addr.0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  invoke void @_ZSt10_ConstructIN6ledger6detail9OrderPool4NodeEJEEvPT_DpOT0_(ptr noundef %__cur.0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %dec = add i64 %__n.addr.0, -1
  %incdec.ptr = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %__cur.0, i32 1
  br label %for.cond, !llvm.loop !33

lpad:                                             ; preds = %for.body
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  br label %catch

catch:                                            ; preds = %lpad
  %3 = call ptr @__cxa_begin_catch(ptr %1) #17
  invoke void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeEEvT_S5_(ptr noundef %__first, ptr noundef %__cur.0)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad1

for.end:                                          ; preds = %for.cond
  ret ptr %__cur.0

lpad1:                                            ; preds = %invoke.cont2, %catch
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  br label %eh.resume

try.cont:                                         ; No predecessors!
  unreachable

eh.resume:                                        ; preds = %invoke.cont3
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %5, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %6, 1
  resume { ptr, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #19
  unreachable

unreachable:                                      ; preds = %invoke.cont2
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6ledger6detail9OrderPool4NodeEJEEvPT_DpOT0_(ptr noundef %__p) #8 comdat {
entry:
  call void @llvm.memset.p0.i64(ptr align 8 %__p, i8 0, i64 40, i1 false)
  call void @_ZN6ledger6detail9OrderPool4NodeC2Ev(ptr noundef nonnull align 8 dereferenceable(33) %__p) #17
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeEEvT_S5_(ptr noundef %__first, ptr noundef %__last) #10 comdat {
entry:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail9OrderPool4NodeEEEvT_S7_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

declare void @__cxa_rethrow()

declare void @__cxa_end_catch()

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail9OrderPool4NodeC2Ev(ptr noundef nonnull align 8 dereferenceable(33) %this) unnamed_addr #8 comdat align 2 {
entry:
  %id = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this, i32 0, i32 0
  store i64 0, ptr %id, align 8
  %price = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this, i32 0, i32 1
  store i64 0, ptr %price, align 8
  %quantity = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this, i32 0, i32 2
  store i32 0, ptr %quantity, align 8
  %side = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this, i32 0, i32 3
  store i8 0, ptr %side, align 4
  %previous = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this, i32 0, i32 5
  store i32 -1, ptr %previous, align 8
  %next = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this, i32 0, i32 6
  store i32 -1, ptr %next, align 4
  %live = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %this, i32 0, i32 7
  store i8 0, ptr %live, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail9OrderPool4NodeEEEvT_S7_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %tobool = icmp ne ptr %__p, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  call void @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %__p, i64 noundef %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger6detail9OrderPool4NodeEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger6detail9OrderPool4NodeEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail9OrderPool4NodeEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail9OrderPool4NodeEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  call void @_ZdlPv(ptr noundef %__p) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN6ledger6detail7IdIndex14table_capacityEj(i32 noundef %orders) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %ref.tmp = alloca %"class.std::vector.5", align 8
  %conv = zext i32 %orders to i64
  %mul = mul i64 %conv, 2
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %capacity.0 = phi i64 [ 2, %entry ], [ %shl, %while.body ]
  %cmp = icmp ult i64 %capacity.0, %mul
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %shl = shl i64 %capacity.0, 1
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 24, ptr %ref.tmp) #17
  call void @llvm.memset.p0.i64(ptr align 8 %ref.tmp, i8 0, i64 24, i1 false)
  call void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  %cmp1 = icmp ugt i64 %capacity.0, %call
  call void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr %ref.tmp) #17
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %exception = call ptr @__cxa_allocate_exception(i64 16) #17
  invoke void @_ZNSt12length_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %exception, ptr noundef @.str.3)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.then
  call void @__cxa_throw(ptr %exception, ptr @_ZTISt12length_error, ptr @_ZNSt12length_errorD1Ev) #18
  unreachable

lpad:                                             ; preds = %if.then
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @__cxa_free_exception(ptr %exception) #17
  br label %eh.resume

if.end:                                           ; preds = %while.end
  ret i64 %capacity.0

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %call = call noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call, ptr noundef nonnull align 1 dereferenceable(1) %__a)
  invoke void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  invoke void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryES3_EvT_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS9_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS9_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %this, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 576460752303423487, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %0 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  ret i64 1152921504606846975
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryES3_EvT_S5_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  call void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryEEvT_S5_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 16
  invoke void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl5) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryEEvT_S5_(ptr noundef %__first, ptr noundef %__last) #10 comdat {
entry:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail7IdIndex5EntryEEEvT_S7_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger6detail7IdIndex5EntryEEEvT_S7_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE13_M_deallocateEPS3_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %tobool = icmp ne ptr %__p, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  call void @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %__p, i64 noundef %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE10deallocateERS4_PS3_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail7IdIndex5EntryEE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE10deallocateEPS3_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  call void @_ZdlPv(ptr noundef %__p) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE17_S_check_init_lenEmRKS4_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  %call = call noundef i64 @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE11_S_max_sizeERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  %cmp = icmp ugt i64 %__n, %call
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  ret i64 %__n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EEC2EmRKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  invoke void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger6detail7IdIndex5EntryEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %0, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 1
  store ptr %call2, ptr %_M_finish, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEEC2ERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE12_Vector_implC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger6detail7IdIndex5EntryEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  call void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  store ptr %call, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %0 = load ptr, ptr %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  store ptr %0, ptr %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl5, i32 0, i32 0
  %1 = load ptr, ptr %_M_start6, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %1, i64 %__n
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger6detail7IdIndex5EntryESaIS3_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %__n)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6ledger6detail7IdIndex5EntryEEE8allocateERS4_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSaIN6ledger6detail7IdIndex5EntryEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger6detail7IdIndex5EntryEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  %cmp = icmp ugt i64 %__n, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp2 = icmp ugt i64 %__n, 1152921504606846975
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %mul = mul i64 %__n, 16
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger6detail7IdIndex5EntryEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  ret i64 576460752303423487
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger6detail7IdIndex5EntryEmS3_ET_S5_T0_RSaIT1_E(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %0) #10 comdat {
entry:
  %call = call noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger6detail7IdIndex5EntryEmET_S5_T0_(ptr noundef %__first, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger6detail7IdIndex5EntryEmET_S5_T0_(ptr noundef %__first, i64 noundef %__n) #10 comdat {
entry:
  %call = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail7IdIndex5EntryEmEET_S7_T0_(ptr noundef %__first, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger6detail7IdIndex5EntryEmEET_S7_T0_(ptr noundef %__first, i64 noundef %__n) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__cur.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %__n.addr.0 = phi i64 [ %__n, %entry ], [ %dec, %for.inc ]
  %cmp = icmp ugt i64 %__n.addr.0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  invoke void @_ZSt10_ConstructIN6ledger6detail7IdIndex5EntryEJEEvPT_DpOT0_(ptr noundef %__cur.0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %dec = add i64 %__n.addr.0, -1
  %incdec.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %__cur.0, i32 1
  br label %for.cond, !llvm.loop !35

lpad:                                             ; preds = %for.body
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  br label %catch

catch:                                            ; preds = %lpad
  %3 = call ptr @__cxa_begin_catch(ptr %1) #17
  invoke void @_ZSt8_DestroyIPN6ledger6detail7IdIndex5EntryEEvT_S5_(ptr noundef %__first, ptr noundef %__cur.0)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad1

for.end:                                          ; preds = %for.cond
  ret ptr %__cur.0

lpad1:                                            ; preds = %invoke.cont2, %catch
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  br label %eh.resume

try.cont:                                         ; No predecessors!
  unreachable

eh.resume:                                        ; preds = %invoke.cont3
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %5, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %6, 1
  resume { ptr, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #19
  unreachable

unreachable:                                      ; preds = %invoke.cont2
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6ledger6detail7IdIndex5EntryEJEEvPT_DpOT0_(ptr noundef %__p) #8 comdat {
entry:
  call void @llvm.memset.p0.i64(ptr align 8 %__p, i8 0, i64 16, i1 false)
  call void @_ZN6ledger6detail7IdIndex5EntryC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %__p) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger6detail7IdIndex5EntryC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #8 comdat align 2 {
entry:
  %id = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %this, i32 0, i32 0
  store i64 0, ptr %id, align 8
  %slot = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %this, i32 0, i32 1
  store i32 -1, ptr %slot, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE17_S_check_init_lenEmRKS3_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  %call = call noundef i64 @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE11_S_max_sizeERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  %cmp = icmp ugt i64 %__n, %call
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  ret i64 %__n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EEC2EmRKS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  invoke void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSaIN6ledger8FastBook5LevelEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger8FastBook5LevelESaIS2_EE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger8FastBook5LevelEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %0, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 1
  store ptr %call2, ptr %_M_finish, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger8FastBook5LevelEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEEC2ERKS3_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE12_Vector_implC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger8FastBook5LevelEEC2ERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  call void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  store ptr %call, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %0 = load ptr, ptr %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  store ptr %0, ptr %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl5, i32 0, i32 0
  %1 = load ptr, ptr %_M_start6, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %1, i64 %__n
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::FastBook::Level, std::allocator<ledger::FastBook::Level>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger8FastBook5LevelESaIS2_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", ptr %this, i32 0, i32 0
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %__n)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6ledger8FastBook5LevelEEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSaIN6ledger8FastBook5LevelEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger8FastBook5LevelEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger8FastBook5LevelEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger8FastBook5LevelEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  %cmp = icmp ugt i64 %__n, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp2 = icmp ugt i64 %__n, 768614336404564650
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %mul = mul i64 %__n, 24
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger8FastBook5LevelEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  ret i64 384307168202282325
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPN6ledger8FastBook5LevelEmS2_ET_S4_T0_RSaIT1_E(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %0) #10 comdat {
entry:
  %call = call noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger8FastBook5LevelEmET_S4_T0_(ptr noundef %__first, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPN6ledger8FastBook5LevelEmET_S4_T0_(ptr noundef %__first, i64 noundef %__n) #10 comdat {
entry:
  %call = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger8FastBook5LevelEmEET_S6_T0_(ptr noundef %__first, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIPN6ledger8FastBook5LevelEmEET_S6_T0_(ptr noundef %__first, i64 noundef %__n) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__cur.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %__n.addr.0 = phi i64 [ %__n, %entry ], [ %dec, %for.inc ]
  %cmp = icmp ugt i64 %__n.addr.0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  invoke void @_ZSt10_ConstructIN6ledger8FastBook5LevelEJEEvPT_DpOT0_(ptr noundef %__cur.0)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont
  %dec = add i64 %__n.addr.0, -1
  %incdec.ptr = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %__cur.0, i32 1
  br label %for.cond, !llvm.loop !36

lpad:                                             ; preds = %for.body
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  br label %catch

catch:                                            ; preds = %lpad
  %3 = call ptr @__cxa_begin_catch(ptr %1) #17
  invoke void @_ZSt8_DestroyIPN6ledger8FastBook5LevelEEvT_S4_(ptr noundef %__first, ptr noundef %__cur.0)
          to label %invoke.cont2 unwind label %lpad1

invoke.cont2:                                     ; preds = %catch
  invoke void @__cxa_rethrow() #18
          to label %unreachable unwind label %lpad1

for.end:                                          ; preds = %for.cond
  ret ptr %__cur.0

lpad1:                                            ; preds = %invoke.cont2, %catch
  %4 = landingpad { ptr, i32 }
          cleanup
  %5 = extractvalue { ptr, i32 } %4, 0
  %6 = extractvalue { ptr, i32 } %4, 1
  invoke void @__cxa_end_catch()
          to label %invoke.cont3 unwind label %terminate.lpad

invoke.cont3:                                     ; preds = %lpad1
  br label %eh.resume

try.cont:                                         ; No predecessors!
  unreachable

eh.resume:                                        ; preds = %invoke.cont3
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %5, 0
  %lpad.val5 = insertvalue { ptr, i32 } %lpad.val, i32 %6, 1
  resume { ptr, i32 } %lpad.val5

terminate.lpad:                                   ; preds = %lpad1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #19
  unreachable

unreachable:                                      ; preds = %invoke.cont2
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIN6ledger8FastBook5LevelEJEEvPT_DpOT0_(ptr noundef %__p) #8 comdat {
entry:
  call void @llvm.memset.p0.i64(ptr align 8 %__p, i8 0, i64 24, i1 false)
  call void @_ZN6ledger8FastBook5LevelC2Ev(ptr noundef nonnull align 8 dereferenceable(20) %__p) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger8FastBook5LevelC2Ev(ptr noundef nonnull align 8 dereferenceable(20) %this) unnamed_addr #8 comdat align 2 {
entry:
  %head = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %this, i32 0, i32 0
  store i32 -1, ptr %head, align 8
  %tail = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %this, i32 0, i32 1
  store i32 -1, ptr %tail, align 4
  %quantity = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %this, i32 0, i32 2
  store i64 0, ptr %quantity, align 8
  %orders = getelementptr inbounds %"struct.ledger::FastBook::Level", ptr %this, i32 0, i32 3
  store i32 0, ptr %orders, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_(i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) #0 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.std::allocator.12", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  %call = call noundef i64 @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  %cmp = icmp ugt i64 %__n, %call
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef @.str.2) #18
  unreachable

if.end:                                           ; preds = %entry
  ret i64 %__n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  invoke void @_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { ptr, i32 }
          cleanup
  %1 = extractvalue { ptr, i32 } %0, 0
  %2 = extractvalue { ptr, i32 } %0, 1
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  br label %eh.resume

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { ptr, i32 } poison, ptr %1, 0
  %lpad.val2 = insertvalue { ptr, i32 } %lpad.val, i32 %2, 1
  resume { ptr, i32 } %lpad.val2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorImSaImEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef ptr @_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %call)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 1
  store ptr %call2, ptr %_M_finish, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl5) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 1152921504606846975, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %call = call noundef i64 @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %0 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %0
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  ret i64 2305843009213693951
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  call void @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  store ptr %call, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %0 = load ptr, ptr %_M_start3, align 8
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  store ptr %0, ptr %_M_finish, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_start6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl5, i32 0, i32 0
  %1 = load ptr, ptr %_M_start6, align 8
  %add.ptr = getelementptr inbounds i64, ptr %1, i64 %__n
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl7, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %this, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %this, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %this, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %call = call noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %__n)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSaImE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaImE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %call = call noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  %cmp = icmp ugt i64 %__n, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp2 = icmp ugt i64 %__n, 2305843009213693951
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %mul = mul i64 %__n, 8
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  ret i64 1152921504606846975
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPmmmET_S1_T0_RSaIT1_E(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 1 dereferenceable(1) %0) #10 comdat {
entry:
  %call = call noundef ptr @_ZSt25__uninitialized_default_nIPmmET_S1_T0_(ptr noundef %__first, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPmmET_S1_T0_(ptr noundef %__first, i64 noundef %__n) #10 comdat {
entry:
  %call = call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPmmEET_S3_T0_(ptr noundef %__first, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPmmEET_S3_T0_(ptr noundef %__first, i64 noundef %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ugt i64 %__n, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt10_ConstructImJEEvPT_DpOT0_(ptr noundef %__first)
  %incdec.ptr = getelementptr inbounds i64, ptr %__first, i32 1
  %sub = sub i64 %__n, 1
  %call = call noundef ptr @_ZSt6fill_nIPmmmET_S1_T0_RKT1_(ptr noundef %incdec.ptr, i64 noundef %sub, ptr noundef nonnull align 8 dereferenceable(8) %__first)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__first.addr.0 = phi ptr [ %call, %if.then ], [ %__first, %entry ]
  ret ptr %__first.addr.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructImJEEvPT_DpOT0_(ptr noundef %__p) #8 comdat {
entry:
  store i64 0, ptr %__p, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPmmmET_S1_T0_RKT1_(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 8 dereferenceable(8) %__value) #10 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8
  %0 = load ptr, ptr %__first.addr, align 8
  %call = call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %__n)
  call void @_ZSt19__iterator_categoryIPmENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %__first.addr)
  %call1 = call noundef ptr @_ZSt10__fill_n_aIPmmmET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %call, ptr noundef nonnull align 8 dereferenceable(8) %__value)
  ret ptr %call1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPmmmET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %__first, i64 noundef %__n, ptr noundef nonnull align 8 dereferenceable(8) %__value) #10 comdat {
entry:
  %cmp = icmp ule i64 %__n, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i64, ptr %__first, i64 %__n
  call void @_ZSt8__fill_aIPmmEvT_S1_RKT0_(ptr noundef %__first, ptr noundef %add.ptr, ptr noundef nonnull align 8 dereferenceable(8) %__value)
  %add.ptr1 = getelementptr inbounds i64, ptr %__first, i64 %__n
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %__first, %if.then ], [ %add.ptr1, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %__n) #8 comdat {
entry:
  ret i64 %__n
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPmENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) #7 comdat {
entry:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPmmEvT_S1_RKT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 8 dereferenceable(8) %__value) #10 comdat {
entry:
  call void @_ZSt9__fill_a1IPmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 8 dereferenceable(8) %__value)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPmmEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 8 dereferenceable(8) %__value) #8 comdat {
entry:
  %0 = load i64, ptr %__value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__first.addr.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ne ptr %__first.addr.0, %__last
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i64 %0, ptr %__first.addr.0, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds i64, ptr %__first.addr.0, i32 1
  br label %for.cond, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %tobool = icmp ne ptr %__p, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %__p, i64 noundef %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSaImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  call void @_ZdlPv(ptr noundef %__p) #20
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  call void @_ZSt8_DestroyIPmEvT_S1_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPmEvT_S1_(ptr noundef %__first, ptr noundef %__last) #10 comdat {
entry:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  invoke void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeES3_EvT_S5_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger6detail9OrderPool4NodeESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #19
  unreachable
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeES3_EvT_S5_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  call void @_ZSt8_DestroyIPN6ledger6detail9OrderPool4NodeEEvT_S5_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %__x) #6 comdat {
entry:
  %cmp = icmp eq i64 %__x, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.ctlz.i64(i64 %__x, i1 true)
  %cast = trunc i64 %0 to i32
  %sub = sub nsw i32 %cast, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 64, %if.then ], [ %sub, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countr_zeroImEiT_(i64 noundef %__x) #6 comdat {
entry:
  %cmp = icmp eq i64 %__x, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.cttz.i64(i64 %__x, i1 true)
  %cast = trunc i64 %0 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 64, %if.then ], [ %cast, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNK6ledger6detail7IdIndex6bucketEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %id) #6 comdat align 2 {
entry:
  %shr = lshr i64 %id, 30
  %xor = xor i64 %id, %shr
  %mul = mul i64 %xor, -4658895280553007687
  %shr2 = lshr i64 %mul, 27
  %xor3 = xor i64 %mul, %shr2
  %mul4 = mul i64 %xor3, -7723592293110705685
  %shr5 = lshr i64 %mul4, 31
  %xor6 = xor i64 %mul4, %shr5
  %mask_ = getelementptr inbounds %"class.ledger::detail::IdIndex", ptr %this, i32 0, i32 1
  %0 = load i64, ptr %mask_, align 8
  %and = and i64 %xor6, %0
  ret i64 %and
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %__n
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %_M_extent = getelementptr inbounds %"class.std::span", ptr %this, i32 0, i32 1
  %call = call noundef i64 @_ZNKSt8__detail16__extent_storageILm18446744073709551615EE9_M_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %_M_extent) #17
  ret i64 %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZNKSt4spanIN6ledger5EventELm18446744073709551615EEixEm(ptr noundef nonnull align 8 dereferenceable(16) %this, i64 noundef %__idx) #6 comdat align 2 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  br label %do.cond

do.cond:                                          ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %do.cond
  %_M_ptr = getelementptr inbounds %"class.std::span", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_ptr, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::Event", ptr %0, i64 %__idx
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8__detail16__extent_storageILm18446744073709551615EE9_M_extentEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_extent_value = getelementptr inbounds %"class.std::__detail::__extent_storage", ptr %this, i32 0, i32 0
  %0 = load i64, ptr %_M_extent_value, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNKSt6vectorIN6ledger6detail7IdIndex5EntryESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.6", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::IdIndex::Entry, std::allocator<ledger::detail::IdIndex::Entry>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::IdIndex::Entry", ptr %0, i64 %__n
  ret ptr %add.ptr
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6ledger10StatisticsC2Ev(ptr noundef nonnull align 8 dereferenceable(48) %this) unnamed_addr #8 comdat align 2 {
entry:
  %submitted = getelementptr inbounds %"struct.ledger::Statistics", ptr %this, i32 0, i32 0
  store i64 0, ptr %submitted, align 8
  %executed = getelementptr inbounds %"struct.ledger::Statistics", ptr %this, i32 0, i32 1
  store i64 0, ptr %executed, align 8
  %cancelled = getelementptr inbounds %"struct.ledger::Statistics", ptr %this, i32 0, i32 2
  store i64 0, ptr %cancelled, align 8
  %expired = getelementptr inbounds %"struct.ledger::Statistics", ptr %this, i32 0, i32 3
  store i64 0, ptr %expired, align 8
  %rejected = getelementptr inbounds %"struct.ledger::Statistics", ptr %this, i32 0, i32 4
  store i64 0, ptr %rejected, align 8
  %trade_count = getelementptr inbounds %"struct.ledger::Statistics", ptr %this, i32 0, i32 5
  store i64 0, ptr %trade_count, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger12RestingOrderEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger12RestingOrderEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger12RestingOrderEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %this, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger12RestingOrderEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE12_Vector_implC2EvQ26is_default_constructible_vIN9__gnu_cxx14__alloc_traitsIT0_NS7_10value_typeEE6rebindIT_E5otherEE(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger13LevelSnapshotEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger13LevelSnapshotEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 {
entry:
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this, i32 0, i32 0
  store ptr null, ptr %_M_start, align 8
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this, i32 0, i32 1
  store ptr null, ptr %_M_finish, align 8
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %this, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef i64 @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 2
  %0 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %__n)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #6 comdat align 2 {
entry:
  %call = call noundef ptr @_ZSt12__relocate_aIPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %tobool = icmp ne ptr %__p, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %__p, i64 noundef %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 288230376151711743, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %0 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  ret i64 576460752303423487
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSaIN6ledger12RestingOrderEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger12RestingOrderEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger12RestingOrderEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger12RestingOrderEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger12RestingOrderEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  %cmp = icmp ugt i64 %__n, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp2 = icmp ugt i64 %__n, 576460752303423487
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %mul = mul i64 %__n, 32
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger12RestingOrderEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  ret i64 288230376151711743
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  %call = call noundef ptr @_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_(ptr noundef %__first) #17
  %call1 = call noundef ptr @_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_(ptr noundef %__last) #17
  %call2 = call noundef ptr @_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_(ptr noundef %__result) #17
  %call3 = call noundef ptr @_ZSt14__relocate_a_1IPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #17
  ret ptr %call3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN6ledger12RestingOrderES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__cur.0 = phi ptr [ %__result, %entry ], [ %incdec.ptr1, %for.inc ]
  %__first.addr.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ne ptr %__first.addr.0, %__last
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef %__cur.0, ptr noundef %__first.addr.0, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__first.addr.0, i32 1
  %incdec.ptr1 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %__cur.0, i32 1
  br label %for.cond, !llvm.loop !38

for.end:                                          ; preds = %for.cond
  ret ptr %__cur.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN6ledger12RestingOrderEET_S3_(ptr noundef %__it) #8 comdat {
entry:
  ret ptr %__it
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN6ledger12RestingOrderES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %__dest, ptr noalias noundef %__orig, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__dest, ptr noundef nonnull align 8 dereferenceable(28) %__orig) #17
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__orig) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(28) %__args) #7 comdat align 2 {
entry:
  %call = call noundef ptr @_ZSt12construct_atIN6ledger12RestingOrderEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_(ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(28) %__args) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  invoke void @_ZSt10destroy_atIN6ledger12RestingOrderEEvPT_(ptr noundef %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12construct_atIN6ledger12RestingOrderEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_(ptr noundef %__location, ptr noundef nonnull align 8 dereferenceable(28) %__args) #6 comdat {
entry:
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__location, ptr align 8 %__args, i64 32, i1 false)
  ret ptr %__location
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10destroy_atIN6ledger12RestingOrderEEvPT_(ptr noundef %__location) #8 comdat {
entry:
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger12RestingOrderEE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger12RestingOrderEE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger12RestingOrderEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger12RestingOrderEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  call void @_ZdlPv(ptr noundef %__p) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__x) #0 comdat align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__x)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE9push_backEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__x) #0 comdat align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__x)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__args) #0 comdat align 2 {
entry:
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  %2 = load ptr, ptr %_M_finish5, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %__args) #17
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl6, i32 0, i32 1
  %3 = load ptr, ptr %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %3, i32 1
  store ptr %incdec.ptr, ptr %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %agg.tmp, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %agg.tmp, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive8, align 8
  call void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr %4, ptr noundef nonnull align 8 dereferenceable(28) %__args)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call9 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret ptr %call9
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(28) %__args) #7 comdat align 2 {
entry:
  %call = call noundef ptr @_ZSt12construct_atIN6ledger13LevelSnapshotEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_(ptr noundef %__p, ptr noundef nonnull align 8 dereferenceable(28) %__args) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr %__position.coerce, ptr noundef nonnull align 8 dereferenceable(28) %__args) #0 comdat align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %__position, i32 0, i32 0
  store ptr %__position.coerce, ptr %coerce.dive, align 8
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 1, ptr noundef @.str.5)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %call3 = call ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %ref.tmp, i32 0, i32 0
  store ptr %call3, ptr %coerce.dive4, align 8
  %call5 = call noundef i64 @_ZN9__gnu_cxxmiIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %__position, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %call6 = call noundef ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call)
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %add.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %call6, i64 %call5
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl7, ptr noundef %add.ptr, ptr noundef nonnull align 8 dereferenceable(28) %__args) #17
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__position) #17
  %2 = load ptr, ptr %call8, align 8
  %call9 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call10 = call noundef ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %2, ptr noundef %call6, ptr noundef nonnull align 1 dereferenceable(1) %call9) #17
  %incdec.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %call10, i32 1
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__position) #17
  %3 = load ptr, ptr %call11, align 8
  %call12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call13 = call noundef ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %3, ptr noundef %1, ptr noundef %incdec.ptr, ptr noundef nonnull align 1 dereferenceable(1) %call12) #17
  %_M_impl14 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl14, i32 0, i32 2
  %4 = load ptr, ptr %_M_end_of_storage, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, i64 noundef %sub.ptr.div)
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl15, i32 0, i32 0
  store ptr %call6, ptr %_M_start16, align 8
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl17, i32 0, i32 1
  store ptr %call13, ptr %_M_finish18, align 8
  %add.ptr19 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %call6, i64 %call
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_end_of_storage21 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl20, i32 0, i32 2
  store ptr %add.ptr19, ptr %_M_end_of_storage21, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_finish) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp2) #17
  %call = call ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %ref.tmp2, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  %call3 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp2, i64 noundef 1) #17
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %ref.tmp, i32 0, i32 0
  store ptr %call3, ptr %coerce.dive4, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  ret ptr %call5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12construct_atIN6ledger13LevelSnapshotEJS1_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS3_DpOS4_(ptr noundef %__location, ptr noundef nonnull align 8 dereferenceable(28) %__args) #6 comdat {
entry:
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %__location, ptr align 8 %__args, i64 32, i1 false)
  ret ptr %__location
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef %__s) #0 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %sub = sub i64 %call, %call2
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %__s) #18
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %call4 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  store i64 %call4, ptr %ref.tmp, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__n.addr)
  %1 = load i64, ptr %call5, align 8
  %add = add i64 %call3, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %call6 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %cmp7 = icmp ult i64 %add, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call8 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %cmp9 = icmp ugt i64 %add, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #8 comdat {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__lhs) #17
  %0 = load ptr, ptr %call, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #17
  %1 = load ptr, ptr %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_start) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %call = call noundef ptr @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %__n)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ null, %cond.false ]
  ret ptr %cond
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #6 comdat align 2 {
entry:
  %call = call noundef ptr @_ZSt12__relocate_aIPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #17
  ret ptr %call
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %this, i32 0, i32 0
  ret ptr %_M_current
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %__p, i64 noundef %__n) #0 comdat align 2 {
entry:
  %tobool = icmp ne ptr %__p, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, ptr noundef %__p, i64 noundef %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef i64 @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %call) #17
  ret i64 %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger13LevelSnapshotESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__a, ptr noundef nonnull align 8 dereferenceable(8) %__b) #8 comdat {
entry:
  %0 = load i64, ptr %__a, align 8
  %1 = load i64, ptr %__b, align 8
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %__b, %if.then ], [ %__a, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #6 comdat align 2 {
entry:
  %__diffmax = alloca i64, align 8
  %__allocmax = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__diffmax) #17
  store i64 288230376151711743, ptr %__diffmax, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__allocmax) #17
  %call = call noundef i64 @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  store i64 %call, ptr %__allocmax, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %__diffmax, ptr noundef nonnull align 8 dereferenceable(8) %__allocmax)
  %0 = load i64, ptr %call1, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr %__allocmax) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %__diffmax) #17
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  ret ptr %_M_impl
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %__a) #7 comdat align 2 {
entry:
  ret i64 576460752303423487
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  store ptr %0, ptr %_M_current, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSaIN6ledger13LevelSnapshotEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %__a, i64 noundef %__n)
  ret ptr %call
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSaIN6ledger13LevelSnapshotEE8allocateEm(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n) #11 comdat align 2 {
entry:
  %call = call noundef ptr @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef null)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %this, i64 noundef %__n, ptr noundef %0) #0 comdat align 2 {
entry:
  %call = call noundef i64 @_ZNKSt15__new_allocatorIN6ledger13LevelSnapshotEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  %cmp = icmp ugt i64 %__n, %call
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %cmp2 = icmp ugt i64 %__n, 576460752303423487
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

if.end:                                           ; preds = %if.then
  call void @_ZSt17__throw_bad_allocv() #18
  unreachable

if.end4:                                          ; preds = %entry
  %mul = mul i64 %__n, 32
  %call5 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %mul) #21
  ret ptr %call5
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIN6ledger13LevelSnapshotEE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %this) #7 comdat align 2 {
entry:
  ret i64 288230376151711743
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  %call = call noundef ptr @_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_(ptr noundef %__first) #17
  %call1 = call noundef ptr @_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_(ptr noundef %__last) #17
  %call2 = call noundef ptr @_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_(ptr noundef %__result) #17
  %call3 = call noundef ptr @_ZSt14__relocate_a_1IPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #17
  ret ptr %call3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IPN6ledger13LevelSnapshotES2_SaIS1_EET0_T_S5_S4_RT1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__cur.0 = phi ptr [ %__result, %entry ], [ %incdec.ptr1, %for.inc ]
  %__first.addr.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ne ptr %__first.addr.0, %__last
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_(ptr noundef %__cur.0, ptr noundef %__first.addr.0, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #17
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__first.addr.0, i32 1
  %incdec.ptr1 = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %__cur.0, i32 1
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  ret ptr %__cur.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPN6ledger13LevelSnapshotEET_S3_(ptr noundef %__it) #8 comdat {
entry:
  ret ptr %__it
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aIN6ledger13LevelSnapshotES1_SaIS1_EEvPT_PT0_RT1_(ptr noalias noundef %__dest, ptr noalias noundef %__orig, ptr noundef nonnull align 1 dereferenceable(1) %__alloc) #8 comdat {
entry:
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__dest, ptr noundef nonnull align 8 dereferenceable(28) %__orig) #17
  call void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__alloc, ptr noundef %__orig) #17
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p) #7 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  invoke void @_ZSt10destroy_atIN6ledger13LevelSnapshotEEvPT_(ptr noundef %__p)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt10destroy_atIN6ledger13LevelSnapshotEEvPT_(ptr noundef %__location) #8 comdat {
entry:
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIN6ledger13LevelSnapshotEEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSaIN6ledger13LevelSnapshotEE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %__a, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger13LevelSnapshotEE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #11 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIN6ledger13LevelSnapshotEE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__p, i64 noundef %__n) #6 comdat align 2 {
entry:
  call void @_ZdlPv(ptr noundef %__p) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.29", align 8
  %ref.tmp = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  %idx.neg = sub i64 0, %__n
  %add.ptr = getelementptr inbounds %"struct.ledger::LevelSnapshot", ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger13LevelSnapshotESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.29", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef nonnull align 8 dereferenceable(28) %__args) #0 comdat align 2 {
entry:
  %agg.tmp = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_impl4 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish5 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl4, i32 0, i32 1
  %2 = load ptr, ptr %_M_finish5, align 8
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(28) %__args) #17
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish7 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl6, i32 0, i32 1
  %3 = load ptr, ptr %_M_finish7, align 8
  %incdec.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %3, i32 1
  store ptr %incdec.ptr, ptr %_M_finish7, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %agg.tmp, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  %coerce.dive8 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %agg.tmp, i32 0, i32 0
  %4 = load ptr, ptr %coerce.dive8, align 8
  call void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr %4, ptr noundef nonnull align 8 dereferenceable(28) %__args)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call9 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret ptr %call9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr %__position.coerce, ptr noundef nonnull align 8 dereferenceable(28) %__args) #0 comdat align 2 {
entry:
  %__position = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %__position, i32 0, i32 0
  store ptr %__position.coerce, ptr %coerce.dive, align 8
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef 1, ptr noundef @.str.5)
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %call3 = call ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %ref.tmp, i32 0, i32 0
  store ptr %call3, ptr %coerce.dive4, align 8
  %call5 = call noundef i64 @_ZN9__gnu_cxxmiIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %__position, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %call6 = call noundef ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %call)
  %_M_impl7 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %add.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %call6, i64 %call5
  call void @_ZNSt16allocator_traitsISaIN6ledger12RestingOrderEEE9constructIS1_JS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl7, ptr noundef %add.ptr, ptr noundef nonnull align 8 dereferenceable(28) %__args) #17
  %call8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__position) #17
  %2 = load ptr, ptr %call8, align 8
  %call9 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call10 = call noundef ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %0, ptr noundef %2, ptr noundef %call6, ptr noundef nonnull align 1 dereferenceable(1) %call9) #17
  %incdec.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %call10, i32 1
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__position) #17
  %3 = load ptr, ptr %call11, align 8
  %call12 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call13 = call noundef ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_(ptr noundef %3, ptr noundef %1, ptr noundef %incdec.ptr, ptr noundef nonnull align 1 dereferenceable(1) %call12) #17
  %_M_impl14 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl14, i32 0, i32 2
  %4 = load ptr, ptr %_M_end_of_storage, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, i64 noundef %sub.ptr.div)
  %_M_impl15 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start16 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl15, i32 0, i32 0
  store ptr %call6, ptr %_M_start16, align 8
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl17, i32 0, i32 1
  store ptr %call13, ptr %_M_finish18, align 8
  %add.ptr19 = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %call6, i64 %call
  %_M_impl20 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_end_of_storage21 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl20, i32 0, i32 2
  store ptr %add.ptr19, ptr %_M_end_of_storage21, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_finish) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %ref.tmp2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp2) #17
  %call = call ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %ref.tmp2, i32 0, i32 0
  store ptr %call, ptr %coerce.dive, align 8
  %call3 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp2, i64 noundef 1) #17
  %coerce.dive4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %ref.tmp, i32 0, i32 0
  store ptr %call3, ptr %coerce.dive4, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(28) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  ret ptr %call5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n, ptr noundef %__s) #0 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8
  %call = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %call2 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %sub = sub i64 %call, %call2
  %0 = load i64, ptr %__n.addr, align 8
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(ptr noundef %__s) #18
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %call4 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  store i64 %call4, ptr %ref.tmp, align 8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp, ptr noundef nonnull align 8 dereferenceable(8) %__n.addr)
  %1 = load i64, ptr %call5, align 8
  %add = add i64 %call3, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %call6 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %cmp7 = icmp ult i64 %add, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call8 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  %cmp9 = icmp ugt i64 %add, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call noundef i64 @_ZNKSt6vectorIN6ledger12RestingOrderESaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKSA_SD_(ptr noundef nonnull align 8 dereferenceable(8) %__lhs, ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #8 comdat {
entry:
  %call = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__lhs) #17
  %0 = load ptr, ptr %call, align 8
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %__rhs) #17
  %1 = load ptr, ptr %call1, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_start) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %this, i32 0, i32 0
  ret ptr %_M_current
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  store ptr %0, ptr %_M_current, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8
  %ref.tmp = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  %idx.neg = sub i64 0, %__n
  %add.ptr = getelementptr inbounds %"struct.ledger::RestingOrder", ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(28) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPN6ledger12RestingOrderESt6vectorIS2_SaIS2_EEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.30", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger13LevelSnapshotESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  invoke void @_ZSt8_DestroyIPN6ledger13LevelSnapshotES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN6ledger12RestingOrderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 1
  %1 = load ptr, ptr %_M_finish, align 8
  %call = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  invoke void @_ZSt8_DestroyIPN6ledger12RestingOrderES1_EvT_S3_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  call void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #19
  unreachable
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger13LevelSnapshotES1_EvT_S3_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  call void @_ZSt8_DestroyIPN6ledger13LevelSnapshotEEvT_S3_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::LevelSnapshot, std::allocator<ledger::LevelSnapshot>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  invoke void @_ZNSt12_Vector_baseIN6ledger13LevelSnapshotESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.21", ptr %this, i32 0, i32 0
  call void @_ZNSaIN6ledger13LevelSnapshotEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl5) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger13LevelSnapshotEEvT_S3_(ptr noundef %__first, ptr noundef %__last) #10 comdat {
entry:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger13LevelSnapshotEEEvT_S5_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger13LevelSnapshotEEEvT_S5_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger13LevelSnapshotEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger12RestingOrderES1_EvT_S3_RSaIT0_E(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %0) #11 comdat {
entry:
  call void @_ZSt8_DestroyIPN6ledger12RestingOrderEEvT_S3_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage, align 8
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<ledger::RestingOrder, std::allocator<ledger::RestingOrder>>::_Vector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %2 = load ptr, ptr %_M_start4, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 32
  invoke void @_ZNSt12_Vector_baseIN6ledger12RestingOrderESaIS1_EE13_M_deallocateEPS1_m(ptr noundef nonnull align 8 dereferenceable(24) %this, ptr noundef %0, i64 noundef %sub.ptr.div)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.16", ptr %this, i32 0, i32 0
  call void @_ZNSaIN6ledger12RestingOrderEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %_M_impl5) #17
  ret void

terminate.lpad:                                   ; preds = %entry
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  call void @__clang_call_terminate(ptr %4) #19
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN6ledger12RestingOrderEEvT_S3_(ptr noundef %__first, ptr noundef %__last) #10 comdat {
entry:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger12RestingOrderEEEvT_S5_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPN6ledger12RestingOrderEEEvT_S5_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIN6ledger12RestingOrderEED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  %0 = load ptr, ptr %_M_finish, align 8
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl2, i32 0, i32 0
  %1 = load ptr, ptr %_M_start, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 40
  ret i64 %sub.ptr.div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(33) ptr @_ZNKSt6vectorIN6ledger6detail9OrderPool4NodeESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<ledger::detail::OrderPool::Node, std::allocator<ledger::detail::OrderPool::Node>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 0
  %0 = load ptr, ptr %_M_start, align 8
  %add.ptr = getelementptr inbounds %"struct.ledger::detail::OrderPool::Node", ptr %0, i64 %__n
  ret ptr %add.ptr
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.std::allocator.12", align 1
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  call void @llvm.lifetime.start.p0(i64 1, ptr %ref.tmp) #17
  call void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl, ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr %ref.tmp) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %__start = alloca %"struct.std::_Bit_iterator", align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  %tobool = icmp ne i64 %__n, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n)
  %call2 = call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %__n)
  %add.ptr = getelementptr inbounds i64, ptr %call, i64 %call2
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl, i32 0, i32 2
  store ptr %add.ptr, ptr %_M_end_of_storage, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %__start) #17
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %__start, ptr noundef %call, i32 noundef 0)
  %_M_impl3 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl3, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_M_start, ptr align 8 %__start, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %call4 = call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %__start, i64 noundef %__n)
  %0 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 0
  %1 = extractvalue { ptr, i32 } %call4, 0
  store ptr %1, ptr %0, align 8
  %2 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 1
  %3 = extractvalue { ptr, i32 } %call4, 1
  store i32 %3, ptr %2, align 8
  %_M_impl5 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl5, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_M_finish, ptr align 8 %ref.tmp, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr %__start) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %this, i1 noundef zeroext %__x) #6 comdat align 2 {
entry:
  %frombool = zext i1 %__x to i8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl, i32 0, i32 0
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %_M_start, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %call = call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl2) #17
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %tobool3 = trunc i8 %frombool to i1
  call void @_ZSt16__fill_bvector_nPmmb(ptr noundef %0, i64 noundef %sub.ptr.div, i1 noundef zeroext %tobool3) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #7 comdat align 2 {
entry:
  call void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 1 dereferenceable(1) %__a) #17
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %this) unnamed_addr #0 comdat align 2 {
entry:
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %this, ptr noundef null, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %this, ptr noundef %__x, i32 noundef %__y) unnamed_addr #6 comdat align 2 {
entry:
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this, i32 0, i32 0
  store ptr %__x, ptr %_M_p, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this, i32 0, i32 1
  store i32 %__y, ptr %_M_offset, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %this, i64 noundef %__n) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %call = call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %__n)
  %call2 = call noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl, i64 noundef %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %__n) #6 comdat align 2 {
entry:
  %add = add i64 %__n, 64
  %sub = sub i64 %add, 1
  %div = udiv i64 %sub, 64
  ret i64 %div
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %this, ptr noundef %__x, i32 noundef %__y) unnamed_addr #6 comdat align 2 {
entry:
  call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %this, ptr noundef %__x, i32 noundef %__y)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %__x, i64 noundef %__n) #0 comdat {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %__x, i64 16, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %retval, i64 noundef %__n)
  %0 = load { ptr, i32 }, ptr %retval, align 8
  ret { ptr, i32 } %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %this, i64 noundef %__i) #0 comdat align 2 {
entry:
  call void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %this, i64 noundef %__i)
  ret ptr %this
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %this, i64 noundef %__i) #0 comdat align 2 {
entry:
  call void @_ZNKSt18_Bit_iterator_base20_M_assume_normalizedEv(ptr noundef nonnull align 8 dereferenceable(12) %this)
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this, i32 0, i32 1
  %0 = load i32, ptr %_M_offset, align 8
  %conv = zext i32 %0 to i64
  %add = add nsw i64 %__i, %conv
  %div = sdiv i64 %add, 64
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this, i32 0, i32 0
  %1 = load ptr, ptr %_M_p, align 8
  %add.ptr = getelementptr inbounds i64, ptr %1, i64 %div
  store ptr %add.ptr, ptr %_M_p, align 8
  %rem = srem i64 %add, 64
  %cmp = icmp slt i64 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add2 = add nsw i64 %rem, 64
  %_M_p3 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this, i32 0, i32 0
  %2 = load ptr, ptr %_M_p3, align 8
  %incdec.ptr = getelementptr inbounds i64, ptr %2, i32 -1
  store ptr %incdec.ptr, ptr %_M_p3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %__n.0 = phi i64 [ %add2, %if.then ], [ %rem, %entry ]
  %conv4 = trunc i64 %__n.0 to i32
  %_M_offset5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this, i32 0, i32 1
  store i32 %conv4, ptr %_M_offset5, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNKSt18_Bit_iterator_base20_M_assume_normalizedEv(ptr noundef nonnull align 8 dereferenceable(12) %this) #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt16__fill_bvector_nPmmb(ptr noundef nonnull %__p, i64 noundef %__n, i1 noundef zeroext %__x) #8 comdat {
entry:
  %frombool = zext i1 %__x to i8
  %tobool = trunc i8 %frombool to i1
  %0 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 -1, i32 0
  %1 = trunc i32 %cond to i8
  %mul = mul i64 %__n, 8
  call void @llvm.memset.p0.i64(ptr align 8 %__p, i8 %1, i64 %mul, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this, i32 0, i32 2
  %0 = load ptr, ptr %_M_end_of_storage, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_end_of_storage2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this, i32 0, i32 2
  %1 = load ptr, ptr %_M_end_of_storage2, align 8
  %arrayidx = getelementptr inbounds i64, ptr %1, i64 -1
  %add.ptr = getelementptr inbounds i64, ptr %arrayidx, i64 1
  br label %return

if.end:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %add.ptr, %if.then ], [ null, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl, i32 0, i32 0
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %_M_start, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl2 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %call = call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl2) #17
  %_M_impl3 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl3, i32 0, i32 0
  %_M_p5 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %_M_start4, i32 0, i32 0
  %1 = load ptr, ptr %_M_p5, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %_M_impl6 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_impl7 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl7, i32 0, i32 2
  %2 = load ptr, ptr %_M_end_of_storage, align 8
  %idx.neg = sub i64 0, %sub.ptr.div
  %add.ptr = getelementptr inbounds i64, ptr %2, i64 %idx.neg
  call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %_M_impl6, ptr noundef %add.ptr, i64 noundef %sub.ptr.div)
  %_M_impl8 = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %_M_impl8) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSaImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 {
entry:
  %ref.tmp = alloca %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr %ref.tmp) #17
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %ref.tmp) #17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %this, ptr align 8 %ref.tmp, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr %ref.tmp) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %this) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this, i32 0, i32 0
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %_M_start)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %_M_finish = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this, i32 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %_M_finish)
          to label %invoke.cont2 unwind label %terminate.lpad

invoke.cont2:                                     ; preds = %invoke.cont
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %this, i32 0, i32 2
  store ptr null, ptr %_M_end_of_storage, align 8
  ret void

terminate.lpad:                                   ; preds = %invoke.cont, %entry
  %0 = landingpad { ptr, i32 }
          catch ptr null
  %1 = extractvalue { ptr, i32 } %0, 0
  call void @__clang_call_terminate(ptr %1) #19
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt16initializer_listIN6ledger4SideEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(16) %this) #6 comdat align 2 {
entry:
  %_M_len = getelementptr inbounds %"class.std::initializer_list", ptr %this, i32 0, i32 1
  %0 = load i64, ptr %_M_len, align 8
  ret i64 %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %this) #6 comdat align 2 personality ptr @__gxx_personality_v0 {
entry:
  %retval = alloca %"struct.std::_Bit_iterator", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Bvector_base", ptr %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %_M_impl, i32 0, i32 0
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %_M_start, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  invoke void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %retval, ptr noundef %0, i32 noundef 0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %1 = load { ptr, i32 }, ptr %retval, align 8
  ret { ptr, i32 } %1

terminate.lpad:                                   ; preds = %entry
  %2 = landingpad { ptr, i32 }
          catch ptr null
  %3 = extractvalue { ptr, i32 } %2, 0
  call void @__clang_call_terminate(ptr %3) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %this, i64 noundef %__i) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_reference", align 8
  %ref.tmp = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr %ref.tmp) #17
  %call = call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %this, i64 noundef %__i)
  %0 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 0
  %1 = extractvalue { ptr, i32 } %call, 0
  store ptr %1, ptr %0, align 8
  %2 = getelementptr inbounds { ptr, i32 }, ptr %ref.tmp, i32 0, i32 1
  %3 = extractvalue { ptr, i32 } %call, 1
  store i32 %3, ptr %2, align 8
  %call2 = call { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %ref.tmp)
  %4 = getelementptr inbounds { ptr, i64 }, ptr %retval, i32 0, i32 0
  %5 = extractvalue { ptr, i64 } %call2, 0
  store ptr %5, ptr %4, align 8
  %6 = getelementptr inbounds { ptr, i64 }, ptr %retval, i32 0, i32 1
  %7 = extractvalue { ptr, i64 } %call2, 1
  store i64 %7, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr %ref.tmp) #17
  %8 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %this) #0 comdat align 2 {
entry:
  %retval = alloca %"struct.std::_Bit_reference", align 8
  call void @_ZNKSt18_Bit_iterator_base20_M_assume_normalizedEv(ptr noundef nonnull align 8 dereferenceable(12) %this)
  %_M_p = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_p, align 8
  %_M_offset = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %this, i32 0, i32 1
  %1 = load i32, ptr %_M_offset, align 8
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 1, %sh_prom
  call void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %retval, ptr noundef %0, i64 noundef %shl)
  %2 = load { ptr, i64 }, ptr %retval, align 8
  ret { ptr, i64 } %2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__x, i64 noundef %__y) unnamed_addr #6 comdat align 2 {
entry:
  %_M_p = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this, i32 0, i32 0
  store ptr %__x, ptr %_M_p, align 8
  %_M_mask = getelementptr inbounds %"struct.std::_Bit_reference", ptr %this, i32 0, i32 1
  store i64 %__y, ptr %_M_mask, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorImSaImEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %this) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.11", ptr %this, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %_M_finish) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %retval, i32 0, i32 0
  %0 = load ptr, ptr %coerce.dive, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %this, i64 noundef %__n) #6 comdat align 2 {
entry:
  %retval = alloca %"class.__gnu_cxx::__normal_iterator.31", align 8
  %ref.tmp = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref.tmp) #17
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  %idx.neg = sub i64 0, %__n
  %add.ptr = getelementptr inbounds i64, ptr %0, i64 %idx.neg
  store ptr %add.ptr, ptr %ref.tmp, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %retval, ptr noundef nonnull align 8 dereferenceable(8) %ref.tmp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref.tmp) #17
  %coerce.dive = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %retval, i32 0, i32 0
  %1 = load ptr, ptr %coerce.dive, align 8
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %_M_current, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKmSt6vectorImSaImEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator.31", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  store ptr %0, ptr %_M_current, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %this, ptr noundef nonnull align 8 dereferenceable(8) %__i) unnamed_addr #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %this, i32 0, i32 0
  %0 = load ptr, ptr %__i, align 8
  store ptr %0, ptr %_M_current, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKN6ledger6detail7IdIndex5EntryESt6vectorIS4_SaIS4_EEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %this) #6 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", ptr %this, i32 0, i32 0
  ret ptr %_M_current
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { alwaysinline mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { builtin allocsize(0) }

!llvm.linker.options = !{}
!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = distinct !{!10, !6, !7}
!11 = distinct !{!11, !6, !7}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
!16 = distinct !{!16, !6, !7}
!17 = distinct !{!17, !6, !7}
!18 = distinct !{!18, !6, !7}
!19 = distinct !{!19, !6, !7}
!20 = distinct !{!20, !6, !7}
!21 = distinct !{!21, !6, !7}
!22 = distinct !{!22, !6, !7}
!23 = distinct !{!23, !6, !7}
!24 = distinct !{!24, !6, !7}
!25 = distinct !{!25, !6, !7}
!26 = distinct !{!26, !6, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !6, !7}
!30 = distinct !{!30, !6, !7}
!31 = distinct !{!31, !6, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !6, !7}
!34 = distinct !{!34, !6, !7}
!35 = distinct !{!35, !6, !7}
!36 = distinct !{!36, !6, !7}
!37 = distinct !{!37, !6, !7}
!38 = distinct !{!38, !6, !7}
!39 = distinct !{!39, !6, !7}
